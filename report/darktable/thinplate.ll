Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thinplate?download=true
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
  %i.a = add nsw i32 %2, 4                        ; 22 uses
  %i.b = sext i32 %i.a to i64                     ; 32 uses
  %i.c = shl nsw i64 %i.b, 3                      ; 7 uses
  %i.d = mul i64 %i.c, %i.b
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 24 uses
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
  %.idx713 = mul nuw nsw i64 %indvars.iv, 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.idx713 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !12 ; 3 uses
  %i.n = mul nuw nsw i64 %indvars.iv, %i.g
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %invariant.gep745 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader458
  %.idx714.prol = mul nuw nsw i64 %indvars.iv, 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx714.prol ; 2 uses
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
  %gep746.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep745, i64 %indvars.iv
  store double %i.ah, ptr %gep746.prol, align 8, !tbaa !12
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
  %invariant.gep747 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.al ; 9 uses
  %invariant.gep749 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.an ; 9 uses
  %i.ao = add nsw i64 %wide.trip.count582, -1     ; 4 uses
  %xtraiter2014 = and i64 %wide.trip.count582, 7  ; 3 uses
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
  %.idx714 = mul nuw nsw i64 %indvars.iv578, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx714 ; 2 uses
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
  %gep746 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep745, i64 %indvars.iv578
  store double %i.bj, ptr %gep746, align 8, !tbaa !12
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 3 uses
  %.idx714.1 = mul nuw nsw i64 %indvars.iv.next579, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx714.1 ; 2 uses
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
  %gep746.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep745, i64 %indvars.iv.next579
  store double %i.ce, ptr %gep746.1, align 8, !tbaa !12
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next579.1, %wide.trip.count582
  br i1 %exitcond.not.1, label %.unr-lcssa, label %.preheader458.new

.lr.ph482.unr-lcssa:                              ; preds = %bb.g
  %lcmp.mod2015.not = icmp eq i64 %xtraiter2014, 0
  br i1 %lcmp.mod2015.not, label %.lr.ph482, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph482.unr-lcssa, %.lr.ph
  %indvars.iv584.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next585.7, %.lr.ph482.unr-lcssa ]
  %lcmp.mod2016 = icmp ne i64 %xtraiter2014, 0
  tail call void @llvm.assume(i1 %lcmp.mod2016)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv584.epil = phi i64 [ %indvars.iv584.epil.init, %.epil.preheader ], [ %indvars.iv.next585.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep748.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep747, i64 %indvars.iv584.epil
  store double 1.000000e+00, ptr %gep748.epil, align 8, !tbaa !12
  %i.cg = mul nuw nsw i64 %indvars.iv584.epil, %i.am
  %gep750.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749, i64 %i.cg
  store double 1.000000e+00, ptr %gep750.epil, align 8, !tbaa !12
  %indvars.iv.next585.epil = add nuw nsw i64 %indvars.iv584.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2014
  br i1 %epil.iter.cmp.not, label %.lr.ph482, label %bb.f, !llvm.loop !14

.lr.ph482:                                        ; preds = %bb.f, %.lr.ph482.unr-lcssa
  %i.ch = add nuw nsw i32 %2, 1
  %i.ci = mul nuw nsw i32 %i.ch, %i.a
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = zext nneg i32 %i.a to i64               ; 5 uses
  %i.cl = zext nneg i32 %2 to i64
  %invariant.gep751 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cj ; 5 uses
  %invariant.gep753 = getelementptr [8 x i8], ptr %i.e, i64 %i.cl ; 5 uses
  %xtraiter2018 = and i64 %wide.trip.count582, 3  ; 3 uses
  %i.cm = icmp ult i64 %i.ao, 3
  br i1 %i.cm, label %.epil.preheader2017, label %.lr.ph482.new

.lr.ph482.new:                                    ; preds = %.lr.ph482
  %unroll_iter2022 = and i64 %wide.trip.count582, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv584 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next585.7, %bb.g ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.g ]
  %gep748 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep747, i64 %indvars.iv584
  store double 1.000000e+00, ptr %gep748, align 8, !tbaa !12
  %i.cn = mul nuw nsw i64 %indvars.iv584, %i.am
  %gep750 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749, i64 %i.cn
  store double 1.000000e+00, ptr %gep750, align 8, !tbaa !12
  %indvars.iv.next585 = or disjoint i64 %indvars.iv584, 1 ; 2 uses
  %gep748.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep747, i64 %indvars.iv.next585
  store double 1.000000e+00, ptr %gep748.1, align 8, !tbaa !12
  %i.co = mul nuw nsw i64 %indvars.iv.next585, %i.am
  %gep750.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749, i64 %i.co
  store double 1.000000e+00, ptr %gep750.1, align 8, !tbaa !12
  %indvars.iv.next585.1 = or disjoint i64 %indvars.iv584, 2 ; 2 uses
  %gep748.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep747, i64 %indvars.iv.next585.1
  store double 1.000000e+00, ptr %gep748.2, align 8, !tbaa !12
  %i.cp = mul nuw nsw i64 %indvars.iv.next585.1, %i.am
  %gep750.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749, i64 %i.cp
  store double 1.000000e+00, ptr %gep750.2, align 8, !tbaa !12
  %indvars.iv.next585.2 = or disjoint i64 %indvars.iv584, 3 ; 2 uses
  %gep748.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep747, i64 %indvars.iv.next585.2
end_hunk_0
begin_hunk_1_@thinplate_match:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx716
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !12 ; 2 uses
  %gep756 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep755, i64 %indvars.iv594
  store double %i.ei, ptr %gep756, align 8, !tbaa !12
  %i.ej = mul nuw nsw i64 %indvars.iv594, %i.dc
  %gep758 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %i.ej
  %i.ek = getelementptr i8, ptr %gep758, i64 16
  store double %i.ei, ptr %i.ek, align 8, !tbaa !12
  %indvars.iv.next595 = or disjoint i64 %indvars.iv594, 1 ; 3 uses
  %.idx716.1 = mul nuw nsw i64 %indvars.iv.next595, 24
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 %.idx716.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !12 ; 2 uses
  %gep756.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep755, i64 %indvars.iv.next595
  store double %i.en, ptr %gep756.1, align 8, !tbaa !12
  %i.eo = mul nuw nsw i64 %indvars.iv.next595, %i.dc
  %gep758.1 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %i.eo
  %i.ep = getelementptr i8, ptr %gep758.1, i64 16
  store double %i.en, ptr %i.ep, align 8, !tbaa !12
  %indvars.iv.next595.1 = or disjoint i64 %indvars.iv594, 2 ; 3 uses
  %.idx716.2 = mul nuw nsw i64 %indvars.iv.next595.1, 24
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx716.2
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !12 ; 2 uses
  %gep756.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep755, i64 %indvars.iv.next595.1
  store double %i.es, ptr %gep756.2, align 8, !tbaa !12
  %i.et = mul nuw nsw i64 %indvars.iv.next595.1, %i.dc
  %gep758.2 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %i.et
  %i.eu = getelementptr i8, ptr %gep758.2, i64 16
  store double %i.es, ptr %i.eu, align 8, !tbaa !12
  %indvars.iv.next595.2 = or disjoint i64 %indvars.iv594, 3 ; 3 uses
  %.idx716.3 = mul nuw nsw i64 %indvars.iv.next595.2, 24
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 %.idx716.3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !12 ; 2 uses
  %gep756.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep755, i64 %indvars.iv.next595.2
  store double %i.ex, ptr %gep756.3, align 8, !tbaa !12
  %i.ey = mul nuw nsw i64 %indvars.iv.next595.2, %i.dc
  %gep758.3 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %i.ey
  %i.ez = getelementptr i8, ptr %gep758.3, i64 16
  store double %i.ex, ptr %i.ez, align 8, !tbaa !12
  %indvars.iv.next595.3 = add nuw nsw i64 %indvars.iv594, 4 ; 2 uses
  %niter2030.next.3 = add i64 %niter2030, 4       ; 2 uses
  %niter2030.ncmp.3 = icmp eq i64 %niter2030.next.3, %unroll_iter2029
  br i1 %niter2030.ncmp.3, label %.lr.ph486.unr-lcssa, label %bb.k

bb.l:                                             ; preds = %bb.l, %.lr.ph486.new
  %indvars.iv599 = phi i64 [ 0, %.lr.ph486.new ], [ %indvars.iv.next600.3, %bb.l ] ; 7 uses
  %niter2037 = phi i64 [ 0, %.lr.ph486.new ], [ %niter2037.next.3, %bb.l ]
  %.idx717 = mul nuw nsw i64 %indvars.iv599, 24
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 %.idx717
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !12 ; 2 uses
  %gep760 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep759, i64 %indvars.iv599
  store double %i.fc, ptr %gep760, align 8, !tbaa !12
  %i.fd = mul nuw nsw i64 %indvars.iv599, %i.ed
  %gep762 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %i.fd
  %i.fe = getelementptr i8, ptr %gep762, i64 24
  store double %i.fc, ptr %i.fe, align 8, !tbaa !12
  %indvars.iv.next600 = or disjoint i64 %indvars.iv599, 1 ; 3 uses
  %.idx717.1 = mul nuw nsw i64 %indvars.iv.next600, 24
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %.idx717.1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !12 ; 2 uses
  %gep760.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep759, i64 %indvars.iv.next600
  store double %i.fh, ptr %gep760.1, align 8, !tbaa !12
  %i.fi = mul nuw nsw i64 %indvars.iv.next600, %i.ed
  %gep762.1 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %i.fi
  %i.fj = getelementptr i8, ptr %gep762.1, i64 24
  store double %i.fh, ptr %i.fj, align 8, !tbaa !12
  %indvars.iv.next600.1 = or disjoint i64 %indvars.iv599, 2 ; 3 uses
  %.idx717.2 = mul nuw nsw i64 %indvars.iv.next600.1, 24
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx717.2
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !12 ; 2 uses
  %gep760.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep759, i64 %indvars.iv.next600.1
  store double %i.fm, ptr %gep760.2, align 8, !tbaa !12
  %i.fn = mul nuw nsw i64 %indvars.iv.next600.1, %i.ed
  %gep762.2 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %i.fn
  %i.fo = getelementptr i8, ptr %gep762.2, i64 24
  store double %i.fm, ptr %i.fo, align 8, !tbaa !12
  %indvars.iv.next600.2 = or disjoint i64 %indvars.iv599, 3 ; 3 uses
  %.idx717.3 = mul nuw nsw i64 %indvars.iv.next600.2, 24
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx717.3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !12 ; 2 uses
  %gep760.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep759, i64 %indvars.iv.next600.2
  store double %i.fr, ptr %gep760.3, align 8, !tbaa !12
  %i.fs = mul nuw nsw i64 %indvars.iv.next600.2, %i.ed
  %gep762.3 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %i.fs
  %i.ft = getelementptr i8, ptr %gep762.3, i64 24
  store double %i.fr, ptr %i.ft, align 8, !tbaa !12
  %indvars.iv.next600.3 = add nuw nsw i64 %indvars.iv599, 4 ; 2 uses
  %niter2037.next.3 = add i64 %niter2037, 4       ; 2 uses
  %niter2037.ncmp.3 = icmp eq i64 %niter2037.next.3, %unroll_iter2036
  br i1 %niter2037.ncmp.3, label %.preheader454.thread.loopexit.unr-lcssa, label %bb.l

.preheader454.thread.loopexit.unr-lcssa:          ; preds = %bb.l
  %lcmp.mod2034.not = icmp eq i64 %xtraiter2032, 0
  br i1 %lcmp.mod2034.not, label %.preheader454.thread, label %.epil.preheader2031

.epil.preheader2031:                              ; preds = %.preheader454.thread.loopexit.unr-lcssa, %.lr.ph486
  %indvars.iv599.epil.init = phi i64 [ 0, %.lr.ph486 ], [ %indvars.iv.next600.3, %.preheader454.thread.loopexit.unr-lcssa ]
  %lcmp.mod2035 = icmp ne i64 %xtraiter2032, 0
  tail call void @llvm.assume(i1 %lcmp.mod2035)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader2031
  %indvars.iv599.epil = phi i64 [ %indvars.iv599.epil.init, %.epil.preheader2031 ], [ %indvars.iv.next600.epil, %bb.m ] ; 4 uses
  %epil.iter2033 = phi i64 [ 0, %.epil.preheader2031 ], [ %epil.iter2033.next, %bb.m ]
  %.idx717.epil = mul nuw nsw i64 %indvars.iv599.epil, 24
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx717.epil
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !12 ; 2 uses
  %gep760.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep759, i64 %indvars.iv599.epil
  store double %i.fw, ptr %gep760.epil, align 8, !tbaa !12
  %i.fx = mul nuw nsw i64 %indvars.iv599.epil, %i.ed
  %gep762.epil = getelementptr [8 x i8], ptr %invariant.gep761, i64 %i.fx
  %i.fy = getelementptr i8, ptr %gep762.epil, i64 24
  store double %i.fw, ptr %i.fy, align 8, !tbaa !12
  %indvars.iv.next600.epil = add nuw nsw i64 %indvars.iv599.epil, 1
  %epil.iter2033.next = add i64 %epil.iter2033, 1 ; 2 uses
  %epil.iter2033.cmp.not = icmp eq i64 %epil.iter2033.next, %xtraiter2032
  br i1 %epil.iter2033.cmp.not, label %.preheader454.thread, label %bb.m, !llvm.loop !18

.preheader454.thread:                             ; preds = %.preheader454.thread.loopexit.unr-lcssa, %bb.m, %bb.e
  %i.fz = add i32 %2, 5
  %i.ga = mul i32 %2, %i.fz                       ; 4 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 3
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.gc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep, i8 0, i64 32, i1 false), !tbaa !12
  %i.gd = add i32 %i.ga, %i.a
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3
  %scevgep.1 = getelementptr i8, ptr %i.e, i64 %i.gf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.1, i8 0, i64 32, i1 false), !tbaa !12
  %i.gg = shl i32 %i.a, 1
  %i.gh = add i32 %i.ga, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = shl nsw i64 %i.gi, 3
  %scevgep.2 = getelementptr i8, ptr %i.e, i64 %i.gj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.2, i8 0, i64 32, i1 false), !tbaa !12
  %i.gk = mul i32 %i.a, 3
  %i.gl = add i32 %i.ga, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = shl nsw i64 %i.gm, 3
  %scevgep.3 = getelementptr i8, ptr %i.e, i64 %i.gn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.3, i8 0, i64 32, i1 false), !tbaa !12
  %i.go = tail call noalias ptr @malloc(i64 noundef %i.c) #15 ; 9 uses
  %i.gp = icmp sgt i32 %2, -4                     ; 2 uses
  br i1 %i.gp, label %.lr.ph494, label %._crit_edge495

.lr.ph494:                                        ; preds = %.preheader454.thread
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count619 = zext nneg i32 %smax to i64 ; 7 uses
  %min.iters.check = icmp slt i32 %2, 0
  %min.iters.check798 = icmp slt i32 %2, 12
  %i.gq = and i64 %wide.trip.count619, 12
  %n.vec = and i64 %wide.trip.count619, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count619
  %min.epilog.iters.check = icmp eq i64 %i.gq, 0
  %n.vec810 = and i64 %wide.trip.count619, 2147483644 ; 3 uses
  %broadcast.splatinsert811 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat812 = shufflevector <4 x i64> %broadcast.splatinsert811, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n822 = icmp eq i64 %n.vec810, %wide.trip.count619
  br label %iter.check

._crit_edge495:                                   ; preds = %.loopexit, %.preheader454.thread
  %i.gr = zext i32 %i.a to i64                    ; 48 uses
  %i.gs = sext i32 %1 to i64
  %i.gt = shl nsw i64 %i.gs, 3                    ; 2 uses
  %i.gu = mul i64 %i.gt, %i.b
  %i.gv = tail call noalias ptr @malloc(i64 noundef %i.gu) #15 ; 13 uses
  %i.gw = tail call noalias ptr @malloc(i64 noundef %i.gt) #15 ; 8 uses
  %i.gx = icmp sgt i32 %1, 0                      ; 3 uses
  br i1 %i.gx, label %.lr.ph500.preheader, label %._crit_edge501

iter.check:                                       ; preds = %.loopexit, %.lr.ph494
  %indvars.iv615 = phi i64 [ 0, %.lr.ph494 ], [ %indvars.iv.next616, %.loopexit ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv615
  %invariant.gep763 = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv615 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check798, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check ] ; 5 uses
  %vec.phi = phi <4 x double> [ %i.hh, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi799 = phi <4 x double> [ %i.hi, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi800 = phi <4 x double> [ %i.hj, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi801 = phi <4 x double> [ %i.hk, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.gz = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.ha = mul nuw nsw <4 x i64> %step.add, %broadcast.splat
  %i.hb = mul nuw nsw <4 x i64> %step.add.2, %broadcast.splat
  %i.hc = mul nuw nsw <4 x i64> %step.add.3, %broadcast.splat
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep763, <4 x i64> %i.gz
  %wide.gep802 = getelementptr [8 x i8], ptr %invariant.gep763, <4 x i64> %i.ha
  %wide.gep803 = getelementptr [8 x i8], ptr %invariant.gep763, <4 x i64> %i.hb
  %wide.gep804 = getelementptr [8 x i8], ptr %invariant.gep763, <4 x i64> %i.hc
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %wide.masked.gather805 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep802, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %wide.masked.gather806 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep803, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %wide.masked.gather807 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep804, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %i.hd = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather, %wide.masked.gather
  %i.he = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather805, %wide.masked.gather805
  %i.hf = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather806, %wide.masked.gather806
  %i.hg = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather807, %wide.masked.gather807
  %i.hh = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi, %i.hd ; 2 uses
  %i.hi = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi799, %i.he ; 2 uses
  %i.hj = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi800, %i.hf ; 2 uses
  %i.hk = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi801, %i.hg ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x double> %i.hi, %i.hh
  %bin.rdx808 = fadd reassoc nsz arcp contract afn <4 x double> %i.hj, %bin.rdx
  %bin.rdx809 = fadd reassoc nsz arcp contract afn <4 x double> %i.hk, %bin.rdx808
  %i.hm = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx809) ; 3 uses
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi double [ %i.hm, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.hn = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx, i64 0
  %broadcast.splatinsert813 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat814 = shufflevector <4 x i64> %broadcast.splatinsert813, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat814, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index815 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next820, %vec.epilog.vector.body ]
  %vec.ind816 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next821, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi817 = phi <4 x double> [ %i.hn, %vec.epilog.ph ], [ %i.hq, %vec.epilog.vector.body ]
  %i.ho = mul nuw nsw <4 x i64> %vec.ind816, %broadcast.splat812
  %wide.gep818 = getelementptr [8 x i8], ptr %invariant.gep763, <4 x i64> %i.ho
  %wide.masked.gather819 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep818, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %i.hp = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather819, %wide.masked.gather819
  %i.hq = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi817, %i.hp ; 2 uses
  %index.next820 = add nuw i64 %index815, 4       ; 2 uses
  %vec.ind.next821 = add nuw nsw <4 x i64> %vec.ind816, splat (i64 4)
  %i.hr = icmp eq i64 %index.next820, %n.vec810
  br i1 %i.hr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hs = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.hq) ; 2 uses
  br i1 %cmp.n822, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv610.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec810, %vec.epilog.middle.block ]
  %.ph2007 = phi double [ 0.000000e+00, %iter.check ], [ %i.hm, %vec.epilog.iter.check ], [ %i.hs, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa797 = phi double [ %i.hs, %vec.epilog.middle.block ], [ %i.hm, %middle.block ], [ %i.hz, %vec.epilog.scalar.ph ]
  %i.ht = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %.lcssa797)
  %i.hu = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ht
  store double %i.hu, ptr %i.gy, align 8, !tbaa !12
  %indvars.iv.next616 = add nuw nsw i64 %indvars.iv615, 1 ; 2 uses
  %exitcond620.not = icmp eq i64 %indvars.iv.next616, %wide.trip.count619
  br i1 %exitcond620.not, label %._crit_edge495, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv610 = phi i64 [ %indvars.iv.next611, %vec.epilog.scalar.ph ], [ %indvars.iv610.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hv = phi double [ %i.hz, %vec.epilog.scalar.ph ], [ %.ph2007, %vec.epilog.scalar.ph.preheader ]
  %i.hw = mul nuw nsw i64 %indvars.iv610, %i.b
  %gep764 = getelementptr [8 x i8], ptr %invariant.gep763, i64 %i.hw
  %i.hx = load double, ptr %gep764, align 8, !tbaa !12 ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn double %i.hx, %i.hx
  %i.hz = fadd reassoc nsz arcp contract afn double %i.hv, %i.hy ; 2 uses
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %exitcond614.not = icmp eq i64 %indvars.iv.next611, %wide.trip.count619
  br i1 %exitcond614.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !24

.lr.ph500.preheader:                              ; preds = %._crit_edge495
  %i.ia = zext nneg i32 %1 to i64
  %i.ib = shl nuw nsw i64 %i.ia, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gw, ptr align 8 %4, i64 %i.ib, i1 false), !tbaa !25
  %wide.trip.count627 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter2038 = and i64 %wide.trip.count627, 3  ; 3 uses
  %i.ic = icmp ult i32 %1, 4
  br i1 %i.ic, label %.lr.ph500.epil.preheader, label %.lr.ph500.preheader.new

.lr.ph500.preheader.new:                          ; preds = %.lr.ph500.preheader
  %unroll_iter2042 = and i64 %wide.trip.count627, 2147483644
  br label %.lr.ph500

._crit_edge501.loopexit.unr-lcssa:                ; preds = %.lr.ph500
  %lcmp.mod2040.not = icmp eq i64 %xtraiter2038, 0
  br i1 %lcmp.mod2040.not, label %._crit_edge501, label %.lr.ph500.epil.preheader

.lr.ph500.epil.preheader:                         ; preds = %._crit_edge501.loopexit.unr-lcssa, %.lr.ph500.preheader
  %indvars.iv624.epil.init = phi i64 [ 0, %.lr.ph500.preheader ], [ %indvars.iv.next625.3, %._crit_edge501.loopexit.unr-lcssa ]
  %lcmp.mod2041 = icmp ne i64 %xtraiter2038, 0
  tail call void @llvm.assume(i1 %lcmp.mod2041)
  br label %.lr.ph500.epil

.lr.ph500.epil:                                   ; preds = %.lr.ph500.epil, %.lr.ph500.epil.preheader
  %indvars.iv624.epil = phi i64 [ %indvars.iv624.epil.init, %.lr.ph500.epil.preheader ], [ %indvars.iv.next625.epil, %.lr.ph500.epil ] ; 3 uses
  %epil.iter2039 = phi i64 [ 0, %.lr.ph500.epil.preheader ], [ %epil.iter2039.next, %.lr.ph500.epil ]
  %i.id = mul nuw nsw i64 %indvars.iv624.epil, %i.gr
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv624.epil
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ie, ptr align 8 %i.ig, i64 %i.c, i1 false)
  %indvars.iv.next625.epil = add nuw nsw i64 %indvars.iv624.epil, 1
  %epil.iter2039.next = add i64 %epil.iter2039, 1 ; 2 uses
  %epil.iter2039.cmp.not = icmp eq i64 %epil.iter2039.next, %xtraiter2038
  br i1 %epil.iter2039.cmp.not, label %._crit_edge501, label %.lr.ph500.epil, !llvm.loop !28

._crit_edge501:                                   ; preds = %._crit_edge501.loopexit.unr-lcssa, %.lr.ph500.epil, %._crit_edge495
  %i.ih = sext i32 %5 to i64                      ; 105 uses
  %i.ii = shl nsw i64 %i.ih, 3                    ; 3 uses
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ii) #15 ; 15 uses
  %i.ik = mul i64 %i.ii, %i.ih
  %i.il = tail call noalias ptr @malloc(i64 noundef %i.ik) #15 ; 10 uses
  %i.im = mul nsw i64 %i.ih, %i.b
  %i.in = tail call noalias ptr @calloc(i64 noundef %i.im, i64 noundef 8) #16 ; 31 uses
  br i1 %i.gp, label %.lr.ph548, label %._crit_edge549

.lr.ph548:                                        ; preds = %._crit_edge501
  %i.io = add nsw i32 %5, -4                      ; 3 uses
  %i.ip = add i32 %5, -1                          ; 8 uses
  %.0661700.i.i = add i32 %5, 1                   ; 3 uses
  %i.iq = xor i32 %5, -1
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gr ; 3 uses
  %.idx = shl nuw nsw i64 %i.gr, 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx ; 3 uses
  %i.it = uitofp nneg i32 %i.a to double          ; 3 uses
  %smax632 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count675 = zext nneg i32 %smax632 to i64 ; 19 uses
  %wide.trip.count644 = zext nneg i32 %1 to i64
  %wide.trip.count670 = zext nneg i32 %1 to i64
  %i.iu = shl nuw nsw i64 %i.gr, 3                ; 2 uses
  %scevgep997 = getelementptr i8, ptr %i.in, i64 %i.iu
  %scevgep1000 = getelementptr i8, ptr %i.in, i64 %i.iu
  %i.iv = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.iw = add nsw i64 %i.iv, 8
  %i.ix = sext i32 %i.ip to i64
  %i.iy = add i32 %2, 2
  %i.iz = sext i32 %i.ip to i64
  %i.ja = shl nuw nsw i64 %i.gr, 3
  %i.jb = getelementptr i8, ptr %i.in, i64 %i.ja
  %scevgep1603 = getelementptr i8, ptr %i.jb, i64 -8
  %i.jc = add nsw i64 %i.gr, -1                   ; 4 uses
  %i.jd = xor i32 %2, 4
  %i.je = add i32 %2, 3
  %xtraiter2044 = and i64 %wide.trip.count675, 3  ; 3 uses
  %i.jf = icmp slt i32 %2, 0
  %unroll_iter2049 = and i64 %wide.trip.count675, 2147483644
  %lcmp.mod2046.not = icmp eq i64 %xtraiter2044, 0
  %lcmp.mod2048 = icmp ne i64 %xtraiter2044, 0
  %min.iters.check1841 = icmp slt i32 %2, 0
  %min.iters.check1843 = icmp slt i32 %2, 12
  %i.jg = and i64 %wide.trip.count675, 12
  %n.vec1845 = and i64 %wide.trip.count675, 2147483632 ; 4 uses
  %broadcast.splatinsert1846 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1847 = shufflevector <4 x i64> %broadcast.splatinsert1846, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n1876 = icmp eq i64 %n.vec1845, %wide.trip.count675
  %min.epilog.iters.check1882 = icmp eq i64 %i.jg, 0
  %n.vec1884 = and i64 %wide.trip.count675, 2147483644 ; 3 uses
  %broadcast.splatinsert1885 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1886 = shufflevector <4 x i64> %broadcast.splatinsert1885, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1900 = icmp eq i64 %n.vec1884, %wide.trip.count675
  %min.iters.check1793 = icmp sgt i32 %2, -1
  %ident.check1791.not = icmp eq i32 %5, 1
  %or.cond1905 = and i1 %min.iters.check1793, %ident.check1791.not
  %min.iters.check1795 = icmp slt i32 %2, 12
  %i.jh = and i64 %wide.trip.count675, 12
  %n.vec1797 = and i64 %wide.trip.count675, 2147483632 ; 4 uses
  %broadcast.splatinsert1798 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1799 = shufflevector <4 x i64> %broadcast.splatinsert1798, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n1817 = icmp eq i64 %n.vec1797, %wide.trip.count675
  %min.epilog.iters.check1822 = icmp eq i64 %i.jh, 0
  %n.vec1824 = and i64 %wide.trip.count675, 2147483644 ; 3 uses
  %broadcast.splatinsert1825 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1826 = shufflevector <4 x i64> %broadcast.splatinsert1825, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1838 = icmp eq i64 %n.vec1824, %wide.trip.count675
  %ident.check1749.not = icmp eq i32 %5, 1
  %ident.check1703.not = icmp eq i32 %5, 1
  %ident.check1656.not = icmp eq i32 %5, 1
  %ident.check1600.not = icmp eq i32 %5, 1
  %ident.check1564.not = icmp eq i32 %5, 1
  %ident.check1160.not = icmp eq i32 %5, 1
  %ident.check1113.not = icmp eq i32 %5, 1
  %ident.check1056.not = icmp eq i32 %5, 1
  %ident.check1020.not = icmp eq i32 %5, 1
  %min.iters.check1002 = icmp ugt i32 %i.a, 7
  %ident.check996.not = icmp eq i32 %5, 1
  %or.cond1915.a = and i1 %min.iters.check1002, %ident.check996.not
  %n.vec1004 = and i64 %i.gr, 4294967288          ; 3 uses
  %cmp.n1017 = icmp eq i64 %n.vec1004, %i.gr
  %xtraiter2083 = and i64 %i.gr, 1
  %lcmp.mod2084.not = icmp eq i64 %xtraiter2083, 0
  %i.ji = add nsw i64 %i.gr, -1
  %ident.check1903.not = icmp eq i32 %5, 1
  %xtraiter2094 = and i64 %i.gr, 1
  %i.jj = icmp eq i64 %i.jc, 0
  %unroll_iter2098 = and i64 %i.gr, 4294967294
  %lcmp.mod2096.not = icmp eq i64 %xtraiter2094, 0
  %lcmp.mod2097 = trunc i32 %2 to i1
  %xtraiter2100 = and i64 %i.gr, 1
  %i.jk = icmp eq i64 %i.jc, 0
  %unroll_iter2104 = and i64 %i.gr, 4294967294
  %lcmp.mod2102.not = icmp eq i64 %xtraiter2100, 0
  %lcmp.mod2103 = trunc i32 %2 to i1
  %min.iters.check952 = icmp ult i32 %2, -4
  %ident.check.not = icmp eq i32 %5, 1
  %or.cond1916.a = and i1 %min.iters.check952, %ident.check.not
  %min.iters.check954 = icmp ult i32 %i.a, 16
  %i.jl = and i64 %i.gr, 12
  %n.vec956 = and i64 %i.gr, 4294967280           ; 4 uses
  %cmp.n976 = icmp eq i64 %n.vec956, %i.gr
  %min.epilog.iters.check982 = icmp eq i64 %i.jl, 0
  %n.vec984 = and i64 %i.gr, 4294967292           ; 3 uses
  %cmp.n992 = icmp eq i64 %n.vec984, %i.gr
  %xtraiter2117 = and i64 %i.gr, 1
  %i.jm = icmp eq i64 %i.jc, 0
  %unroll_iter2123 = and i64 %i.gr, 4294967294
  %i.jn = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  %i.jo = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  %lcmp.mod2119.not.a = icmp eq i64 %xtraiter2117, 0
  %lcmp.mod2122 = trunc i32 %2 to i1
  %i.jp = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  br label %bb.n

.lr.ph500:                                        ; preds = %.lr.ph500, %.lr.ph500.preheader.new
  %indvars.iv624 = phi i64 [ 0, %.lr.ph500.preheader.new ], [ %indvars.iv.next625.3, %.lr.ph500 ] ; 6 uses
  %niter2043 = phi i64 [ 0, %.lr.ph500.preheader.new ], [ %niter2043.next.3, %.lr.ph500 ]
  %i.jq = mul nuw nsw i64 %indvars.iv624, %i.gr
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv624
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jr, ptr align 8 %i.jt, i64 %i.c, i1 false)
  %indvars.iv.next625 = or disjoint i64 %indvars.iv624, 1 ; 2 uses
  %i.ju = mul nuw nsw i64 %indvars.iv.next625, %i.gr
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ju
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next625
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jv, ptr align 8 %i.jx, i64 %i.c, i1 false)
  %indvars.iv.next625.1 = or disjoint i64 %indvars.iv624, 2 ; 2 uses
  %i.jy = mul nuw nsw i64 %indvars.iv.next625.1, %i.gr
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next625.1
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jz, ptr align 8 %i.kb, i64 %i.c, i1 false)
  %indvars.iv.next625.2 = or disjoint i64 %indvars.iv624, 3 ; 2 uses
  %i.kc = mul nuw nsw i64 %indvars.iv.next625.2, %i.gr
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.kc
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next625.2
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.kd, ptr align 8 %i.kf, i64 %i.c, i1 false)
  %indvars.iv.next625.3 = add nuw nsw i64 %indvars.iv624, 4 ; 2 uses
  %niter2043.next.3 = add i64 %niter2043, 4       ; 2 uses
  %niter2043.ncmp.3 = icmp eq i64 %niter2043.next.3, %unroll_iter2042
  br i1 %niter2043.ncmp.3, label %._crit_edge501.loopexit.unr-lcssa, label %.lr.ph500

bb.n:                                             ; preds = %.lr.ph548, %bb.at
  %indvars.iv672 = phi i64 [ 0, %.lr.ph548 ], [ %indvars.iv.next673, %bb.at ] ; 11 uses
  %.0383546 = phi double [ f0x47EFFFFFE0000000, %.lr.ph548 ], [ %.lcssa2004, %bb.at ]
  %.0385545 = phi i32 [ 0, %.lr.ph548 ], [ %spec.select, %bb.at ] ; 2 uses
  %i.kg = trunc i64 %indvars.iv672 to i32
  %smin2106 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kg)
  %smin2107 = tail call i32 @llvm.smin.i32(i32 %smin2106, i32 %i.ip)
  %i.kh = trunc i64 %indvars.iv672 to i32
  %smin2086 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kh)
  %smin2087 = tail call i32 @llvm.smin.i32(i32 %smin2086, i32 %i.ip)
  %i.ki = trunc i64 %indvars.iv672 to i32
  %smin1604 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.ki)
  %smin1605 = tail call i32 @llvm.smin.i32(i32 %smin1604, i32 %i.ip)
  %i.kj = add nsw i32 %smin1605, 1
  %i.kk = zext i32 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.kk, 3
  %scevgep1606.a = getelementptr i8, ptr %scevgep1603, i64 %i.kl
  %i.km = trunc i64 %indvars.iv672 to i32
  %smin1325 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.km)
  %smin1326 = tail call i32 @llvm.smin.i32(i32 %smin1325, i32 %i.ip)
  %i.kn = add nsw i32 %smin1326, 1
  %i.ko = zext i32 %i.kn to i64
  %smin1186 = tail call i64 @llvm.smin.i64(i64 %indvars.iv672, i64 %i.ih)
  %smin1187 = tail call i64 @llvm.smin.i64(i64 %smin1186, i64 %i.iz) ; 2 uses
  %i.kp = trunc i64 %smin1187 to i32
  %i.kq = add nsw i32 %i.kp, 1                    ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv672, i64 %i.ih)
  %smin1059 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %i.ix) ; 2 uses
  %i.kr = shl nsw i64 %smin1059, 3                ; 2 uses
  %i.ks = sub i64 %i.iw, %i.kr
  %i.kt = trunc i64 %indvars.iv672 to i32
  %smin1061 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kt)
  %smin1062 = tail call i32 @llvm.smin.i32(i32 %smin1061, i32 %i.ip)
  %i.ku = trunc i64 %smin1059 to i32
  %i.kv = xor i32 %i.ku, -1
  %i.kw = add i32 %smin1062, %i.kv
  %i.kx = sub i64 %i.iv, %i.kr
  %i.ky = trunc i64 %indvars.iv672 to i32
  %i.kz = tail call i32 @llvm.smin.i32(i32 %i.ky, i32 %5) ; 3 uses
  %.not421 = icmp slt i32 %.0385545, %i.io
  br i1 %.not421, label %.lr.ph515, label %._crit_edge549

.lr.ph515:                                        ; preds = %bb.n
  br i1 %i.gx, label %.lr.ph515.split.us.split.us, label %.lr.ph515.split.preheader

.lr.ph515.split.preheader:                        ; preds = %.lr.ph515
  br i1 %i.jf, label %.lr.ph515.split.epil.preheader, label %.lr.ph515.split

.lr.ph515.split.us.split.us:                      ; preds = %.lr.ph515, %bb.o
  %indvars.iv646 = phi i64 [ %indvars.iv.next647, %bb.o ], [ 0, %.lr.ph515 ] ; 4 uses
  %.0379511.us.us = phi i32 [ %.1380.us.us, %bb.o ], [ 0, %.lr.ph515 ]
  %.0381510.us.us = phi double [ %.1382.us.us, %bb.o ], [ 0.000000e+00, %.lr.ph515 ] ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv646
  %i.lb = load double, ptr %i.la, align 8, !tbaa !12 ; 2 uses
  %i.lc = fcmp reassoc nsz arcp contract afn ogt double %i.lb, 0.000000e+00
  br i1 %i.lc, label %.preheader447.us.us.us.preheader, label %bb.o

.preheader447.us.us.us.preheader:                 ; preds = %.lr.ph515.split.us.split.us
  %invariant.gep765 = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv646 ; 6 uses
  br label %iter.check1879

bb.o:                                             ; preds = %._crit_edge508.split.us.us.us, %.lr.ph515.split.us.split.us
  %.1377.us.us = phi nsz double [ %i.mo, %._crit_edge508.split.us.us.us ], [ 0.000000e+00, %.lr.ph515.split.us.split.us ] ; 2 uses
  %i.ld = fcmp reassoc nsz arcp contract afn ogt double %.1377.us.us, %.0381510.us.us ; 2 uses
  %.1382.us.us = select nsz i1 %i.ld, double %.1377.us.us, double %.0381510.us.us
  %i.le = trunc nuw nsw i64 %indvars.iv646 to i32
  %.1380.us.us = select i1 %i.ld, i32 %i.le, i32 %.0379511.us.us ; 2 uses
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %exitcond650.not = icmp eq i64 %indvars.iv.next647, %wide.trip.count675
  br i1 %exitcond650.not, label %._crit_edge516, label %.lr.ph515.split.us.split.us

iter.check1879:                                   ; preds = %.preheader447.us.us.us.preheader, %._crit_edge505.us.us.us
  %indvars.iv641 = phi i64 [ 0, %.preheader447.us.us.us.preheader ], [ %indvars.iv.next642, %._crit_edge505.us.us.us ] ; 2 uses
  %.0376506.us.us.us = phi double [ 0.000000e+00, %.preheader447.us.us.us.preheader ], [ %i.mn, %._crit_edge505.us.us.us ]
  %i.lf = mul nuw nsw i64 %indvars.iv641, %i.gr
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.lf ; 3 uses
  br i1 %min.iters.check1841, label %vec.epilog.scalar.ph1880.preheader, label %vector.main.loop.iter.check1842

vector.main.loop.iter.check1842:                  ; preds = %iter.check1879
  br i1 %min.iters.check1843, label %vec.epilog.ph1883, label %vector.body1848

vector.body1848:                                  ; preds = %vector.main.loop.iter.check1842, %vector.body1848
  %index1849 = phi i64 [ %index.next1870, %vector.body1848 ], [ 0, %vector.main.loop.iter.check1842 ] ; 2 uses
  %vec.ind1850 = phi <4 x i64> [ %vec.ind.next1871, %vector.body1848 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check1842 ] ; 5 uses
  %vec.phi1851 = phi <4 x double> [ %i.lt, %vector.body1848 ], [ zeroinitializer, %vector.main.loop.iter.check1842 ]
  %vec.phi1852 = phi <4 x double> [ %i.lu, %vector.body1848 ], [ zeroinitializer, %vector.main.loop.iter.check1842 ]
  %vec.phi1853 = phi <4 x double> [ %i.lv, %vector.body1848 ], [ zeroinitializer, %vector.main.loop.iter.check1842 ]
  %vec.phi1854 = phi <4 x double> [ %i.lw, %vector.body1848 ], [ zeroinitializer, %vector.main.loop.iter.check1842 ]
  %step.add1855 = add nuw <4 x i64> %vec.ind1850, splat (i64 4)
  %step.add.21856 = add nuw <4 x i64> %vec.ind1850, splat (i64 8)
  %step.add.31857 = add nuw <4 x i64> %vec.ind1850, splat (i64 12)
  %i.lh = mul nuw nsw <4 x i64> %vec.ind1850, %broadcast.splat1847
  %i.li = mul nuw nsw <4 x i64> %step.add1855, %broadcast.splat1847
  %i.lj = mul nuw nsw <4 x i64> %step.add.21856, %broadcast.splat1847
  %i.lk = mul nuw nsw <4 x i64> %step.add.31857, %broadcast.splat1847
  %wide.gep1858 = getelementptr [8 x i8], ptr %invariant.gep765, <4 x i64> %i.lh
  %wide.gep1859 = getelementptr [8 x i8], ptr %invariant.gep765, <4 x i64> %i.li
  %wide.gep1860 = getelementptr [8 x i8], ptr %invariant.gep765, <4 x i64> %i.lj
  %wide.gep1861 = getelementptr [8 x i8], ptr %invariant.gep765, <4 x i64> %i.lk
  %wide.masked.gather1862 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1858, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1863 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1859, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1864 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1860, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1865 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1861, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %index1849 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 96
  %wide.load1866 = load <4 x double>, ptr %i.ll, align 8, !tbaa !12
  %wide.load1867 = load <4 x double>, ptr %i.lm, align 8, !tbaa !12
  %wide.load1868 = load <4 x double>, ptr %i.ln, align 8, !tbaa !12
  %wide.load1869 = load <4 x double>, ptr %i.lo, align 8, !tbaa !12
  %i.lp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1866, %wide.masked.gather1862
  %i.lq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1867, %wide.masked.gather1863
  %i.lr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1868, %wide.masked.gather1864
  %i.ls = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1869, %wide.masked.gather1865
  %i.lt = fadd reassoc nsz arcp contract afn <4 x double> %i.lp, %vec.phi1851 ; 2 uses
  %i.lu = fadd reassoc nsz arcp contract afn <4 x double> %i.lq, %vec.phi1852 ; 2 uses
  %i.lv = fadd reassoc nsz arcp contract afn <4 x double> %i.lr, %vec.phi1853 ; 2 uses
  %i.lw = fadd reassoc nsz arcp contract afn <4 x double> %i.ls, %vec.phi1854 ; 2 uses
  %index.next1870 = add nuw i64 %index1849, 16    ; 2 uses
  %vec.ind.next1871 = add nuw <4 x i64> %vec.ind1850, splat (i64 16)
  %i.lx = icmp eq i64 %index.next1870, %n.vec1845
  br i1 %i.lx, label %middle.block1872, label %vector.body1848, !llvm.loop !29

middle.block1872:                                 ; preds = %vector.body1848
  %bin.rdx1873 = fadd reassoc nsz arcp contract afn <4 x double> %i.lu, %i.lt
  %bin.rdx1874 = fadd reassoc nsz arcp contract afn <4 x double> %i.lv, %bin.rdx1873
  %bin.rdx1875 = fadd reassoc nsz arcp contract afn <4 x double> %i.lw, %bin.rdx1874
  %i.ly = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1875) ; 3 uses
  br i1 %cmp.n1876, label %._crit_edge505.us.us.us, label %vec.epilog.iter.check1881

vec.epilog.iter.check1881:                        ; preds = %middle.block1872
  br i1 %min.epilog.iters.check1882, label %vec.epilog.scalar.ph1880.preheader, label %vec.epilog.ph1883, !prof !22

vec.epilog.ph1883:                                ; preds = %vector.main.loop.iter.check1842, %vec.epilog.iter.check1881
  %vec.epilog.resume.val1877 = phi i64 [ %n.vec1845, %vec.epilog.iter.check1881 ], [ 0, %vector.main.loop.iter.check1842 ] ; 2 uses
  %bc.merge.rdx1878 = phi double [ %i.ly, %vec.epilog.iter.check1881 ], [ 0.000000e+00, %vector.main.loop.iter.check1842 ]
  %i.lz = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1878, i64 0
  %broadcast.splatinsert1887 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1877, i64 0
  %broadcast.splat1888 = shufflevector <4 x i64> %broadcast.splatinsert1887, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1889 = or disjoint <4 x i64> %broadcast.splat1888, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1890

vec.epilog.vector.body1890:                       ; preds = %vec.epilog.vector.body1890, %vec.epilog.ph1883
  %index1891 = phi i64 [ %vec.epilog.resume.val1877, %vec.epilog.ph1883 ], [ %index.next1897, %vec.epilog.vector.body1890 ] ; 2 uses
  %vec.ind1892 = phi <4 x i64> [ %induction1889, %vec.epilog.ph1883 ], [ %vec.ind.next1898, %vec.epilog.vector.body1890 ] ; 2 uses
  %vec.phi1893 = phi <4 x double> [ %i.lz, %vec.epilog.ph1883 ], [ %i.md, %vec.epilog.vector.body1890 ]
  %i.ma = mul nuw nsw <4 x i64> %vec.ind1892, %broadcast.splat1886
  %wide.gep1894 = getelementptr [8 x i8], ptr %invariant.gep765, <4 x i64> %i.ma
  %wide.masked.gather1895 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1894, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %index1891
  %wide.load1896 = load <4 x double>, ptr %i.mb, align 8, !tbaa !12
  %i.mc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1896, %wide.masked.gather1895
  %i.md = fadd reassoc nsz arcp contract afn <4 x double> %i.mc, %vec.phi1893 ; 2 uses
  %index.next1897 = add nuw i64 %index1891, 4     ; 2 uses
  %vec.ind.next1898 = add nuw nsw <4 x i64> %vec.ind1892, splat (i64 4)
  %i.me = icmp eq i64 %index.next1897, %n.vec1884
  br i1 %i.me, label %vec.epilog.middle.block1899, label %vec.epilog.vector.body1890, !llvm.loop !30

vec.epilog.middle.block1899:                      ; preds = %vec.epilog.vector.body1890
  %i.mf = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.md) ; 2 uses
  br i1 %cmp.n1900, label %._crit_edge505.us.us.us, label %vec.epilog.scalar.ph1880.preheader

vec.epilog.scalar.ph1880.preheader:               ; preds = %iter.check1879, %vec.epilog.iter.check1881, %vec.epilog.middle.block1899
  %indvars.iv635.ph = phi i64 [ 0, %iter.check1879 ], [ %n.vec1845, %vec.epilog.iter.check1881 ], [ %n.vec1884, %vec.epilog.middle.block1899 ]
  %.0374502.us.us.us.ph = phi double [ 0.000000e+00, %iter.check1879 ], [ %i.ly, %vec.epilog.iter.check1881 ], [ %i.mf, %vec.epilog.middle.block1899 ]
  br label %vec.epilog.scalar.ph1880

vec.epilog.scalar.ph1880:                         ; preds = %vec.epilog.scalar.ph1880.preheader, %vec.epilog.scalar.ph1880
  %indvars.iv635 = phi i64 [ %indvars.iv.next636, %vec.epilog.scalar.ph1880 ], [ %indvars.iv635.ph, %vec.epilog.scalar.ph1880.preheader ] ; 3 uses
  %.0374502.us.us.us = phi double [ %i.ml, %vec.epilog.scalar.ph1880 ], [ %.0374502.us.us.us.ph, %vec.epilog.scalar.ph1880.preheader ]
  %i.mg = mul nuw nsw i64 %indvars.iv635, %i.b
  %gep766 = getelementptr [8 x i8], ptr %invariant.gep765, i64 %i.mg
  %i.mh = load double, ptr %gep766, align 8, !tbaa !12
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv635
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !12
  %i.mk = fmul reassoc nsz arcp contract afn double %i.mj, %i.mh
  %i.ml = fadd reassoc nsz arcp contract afn double %i.mk, %.0374502.us.us.us ; 2 uses
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %exitcond640.not = icmp eq i64 %indvars.iv.next636, %wide.trip.count675
  br i1 %exitcond640.not, label %._crit_edge505.us.us.us, label %vec.epilog.scalar.ph1880, !llvm.loop !31

._crit_edge505.us.us.us:                          ; preds = %vec.epilog.scalar.ph1880, %vec.epilog.middle.block1899, %middle.block1872
  %.lcssa = phi double [ %i.mf, %vec.epilog.middle.block1899 ], [ %i.ly, %middle.block1872 ], [ %i.ml, %vec.epilog.scalar.ph1880 ]
  %i.mm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.lcssa)
  %i.mn = fadd reassoc nsz arcp contract afn double %i.mm, %.0376506.us.us.us ; 2 uses
  %indvars.iv.next642 = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %exitcond645.not = icmp eq i64 %indvars.iv.next642, %wide.trip.count644
  br i1 %exitcond645.not, label %._crit_edge508.split.us.us.us, label %iter.check1879

._crit_edge508.split.us.us.us:                    ; preds = %._crit_edge505.us.us.us
  %i.mo = fmul reassoc nsz arcp contract afn double %i.mn, %i.lb
  br label %bb.o

.lr.ph515.split:                                  ; preds = %.lr.ph515.split.preheader, %.lr.ph515.split
  %indvars.iv629 = phi i64 [ %indvars.iv.next630.3, %.lr.ph515.split ], [ 0, %.lr.ph515.split.preheader ] ; 6 uses
  %.0379511 = phi i32 [ %.1380.3, %.lr.ph515.split ], [ 0, %.lr.ph515.split.preheader ]
  %.0381510 = phi double [ %.1382.3, %.lr.ph515.split ], [ 0.000000e+00, %.lr.ph515.split.preheader ] ; 2 uses
  %niter2050 = phi i64 [ %niter2050.next.3, %.lr.ph515.split ], [ 0, %.lr.ph515.split.preheader ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv629
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !12 ; 2 uses
  %i.mr = fcmp reassoc nsz arcp contract afn ogt double %i.mq, 0.000000e+00
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mq, 0.000000e+00
  %.1377 = select nsz i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mt = fcmp reassoc nsz arcp contract afn ogt double %.1377, %.0381510 ; 2 uses
  %.1382 = select nsz i1 %i.mt, double %.1377, double %.0381510 ; 2 uses
  %i.mu = trunc nuw nsw i64 %indvars.iv629 to i32
  %.1380 = select i1 %i.mt, i32 %i.mu, i32 %.0379511
  %indvars.iv.next630 = or disjoint i64 %indvars.iv629, 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next630
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !12 ; 2 uses
  %i.mx = fcmp reassoc nsz arcp contract afn ogt double %i.mw, 0.000000e+00
  %i.my = fmul reassoc nsz arcp contract afn double %i.mw, 0.000000e+00
  %.1377.1 = select nsz i1 %i.mx, double %i.my, double 0.000000e+00 ; 2 uses
  %i.mz = fcmp reassoc nsz arcp contract afn ogt double %.1377.1, %.1382 ; 2 uses
  %.1382.1 = select nsz i1 %i.mz, double %.1377.1, double %.1382 ; 2 uses
  %i.na = trunc nuw nsw i64 %indvars.iv.next630 to i32
  %.1380.1 = select i1 %i.mz, i32 %i.na, i32 %.1380
  %indvars.iv.next630.1 = or disjoint i64 %indvars.iv629, 2 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next630.1
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !12 ; 2 uses
  %i.nd = fcmp reassoc nsz arcp contract afn ogt double %i.nc, 0.000000e+00
  %i.ne = fmul reassoc nsz arcp contract afn double %i.nc, 0.000000e+00
  %.1377.2 = select nsz i1 %i.nd, double %i.ne, double 0.000000e+00 ; 2 uses
  %i.nf = fcmp reassoc nsz arcp contract afn ogt double %.1377.2, %.1382.1 ; 2 uses
  %.1382.2 = select nsz i1 %i.nf, double %.1377.2, double %.1382.1 ; 2 uses
  %i.ng = trunc nuw nsw i64 %indvars.iv.next630.1 to i32
  %.1380.2 = select i1 %i.nf, i32 %i.ng, i32 %.1380.1
  %indvars.iv.next630.2 = or disjoint i64 %indvars.iv629, 3 ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next630.2
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !12 ; 2 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ogt double %i.ni, 0.000000e+00
  %i.nk = fmul reassoc nsz arcp contract afn double %i.ni, 0.000000e+00
  %.1377.3 = select nsz i1 %i.nj, double %i.nk, double 0.000000e+00 ; 2 uses
  %i.nl = fcmp reassoc nsz arcp contract afn ogt double %.1377.3, %.1382.2 ; 2 uses
  %.1382.3 = select nsz i1 %i.nl, double %.1377.3, double %.1382.2 ; 2 uses
  %i.nm = trunc nuw nsw i64 %indvars.iv.next630.2 to i32
  %.1380.3 = select i1 %i.nl, i32 %i.nm, i32 %.1380.2 ; 3 uses
  %indvars.iv.next630.3 = add nuw nsw i64 %indvars.iv629, 4 ; 2 uses
  %niter2050.next.3 = add i64 %niter2050, 4       ; 2 uses
  %niter2050.ncmp.3 = icmp eq i64 %niter2050.next.3, %unroll_iter2049
  br i1 %niter2050.ncmp.3, label %._crit_edge516.loopexit1921.unr-lcssa, label %.lr.ph515.split

._crit_edge516.loopexit1921.unr-lcssa:            ; preds = %.lr.ph515.split
  br i1 %lcmp.mod2046.not, label %._crit_edge516, label %.lr.ph515.split.epil.preheader

.lr.ph515.split.epil.preheader:                   ; preds = %._crit_edge516.loopexit1921.unr-lcssa, %.lr.ph515.split.preheader
  %indvars.iv629.epil.init = phi i64 [ 0, %.lr.ph515.split.preheader ], [ %indvars.iv.next630.3, %._crit_edge516.loopexit1921.unr-lcssa ]
  %.0379511.epil.init = phi i32 [ 0, %.lr.ph515.split.preheader ], [ %.1380.3, %._crit_edge516.loopexit1921.unr-lcssa ]
  %.0381510.epil.init = phi double [ 0.000000e+00, %.lr.ph515.split.preheader ], [ %.1382.3, %._crit_edge516.loopexit1921.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2048)
  br label %.lr.ph515.split.epil

.lr.ph515.split.epil:                             ; preds = %.lr.ph515.split.epil, %.lr.ph515.split.epil.preheader
  %indvars.iv629.epil = phi i64 [ %indvars.iv.next630.epil, %.lr.ph515.split.epil ], [ %indvars.iv629.epil.init, %.lr.ph515.split.epil.preheader ] ; 3 uses
  %.0379511.epil = phi i32 [ %.1380.epil, %.lr.ph515.split.epil ], [ %.0379511.epil.init, %.lr.ph515.split.epil.preheader ]
  %.0381510.epil = phi double [ %.1382.epil, %.lr.ph515.split.epil ], [ %.0381510.epil.init, %.lr.ph515.split.epil.preheader ] ; 2 uses
  %epil.iter2045 = phi i64 [ %epil.iter2045.next, %.lr.ph515.split.epil ], [ 0, %.lr.ph515.split.epil.preheader ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv629.epil
  %i.no = load double, ptr %i.nn, align 8, !tbaa !12 ; 2 uses
  %i.np = fcmp reassoc nsz arcp contract afn ogt double %i.no, 0.000000e+00
  %i.nq = fmul reassoc nsz arcp contract afn double %i.no, 0.000000e+00
  %.1377.epil = select nsz i1 %i.np, double %i.nq, double 0.000000e+00 ; 2 uses
  %i.nr = fcmp reassoc nsz arcp contract afn ogt double %.1377.epil, %.0381510.epil ; 2 uses
  %.1382.epil = select nsz i1 %i.nr, double %.1377.epil, double %.0381510.epil
  %i.ns = trunc nuw nsw i64 %indvars.iv629.epil to i32
  %.1380.epil = select i1 %i.nr, i32 %i.ns, i32 %.0379511.epil ; 2 uses
  %indvars.iv.next630.epil = add nuw nsw i64 %indvars.iv629.epil, 1
  %epil.iter2045.next = add i64 %epil.iter2045, 1 ; 2 uses
  %epil.iter2045.cmp.not = icmp eq i64 %epil.iter2045.next, %xtraiter2044
  br i1 %epil.iter2045.cmp.not, label %._crit_edge516, label %.lr.ph515.split.epil, !llvm.loop !32

._crit_edge516:                                   ; preds = %._crit_edge516.loopexit1921.unr-lcssa, %.lr.ph515.split.epil, %bb.o
  %.0379.lcssa = phi i32 [ %.1380.us.us, %bb.o ], [ %.1380.3, %._crit_edge516.loopexit1921.unr-lcssa ], [ %.1380.epil, %.lr.ph515.split.epil ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv672
  store i32 %.0379.lcssa, ptr %i.nt, align 4, !tbaa !33
  %i.nu = icmp slt i32 %.0379.lcssa, %2
  %i.nv = zext i1 %i.nu to i32
  %spec.select = add nuw nsw i32 %.0385545, %i.nv ; 2 uses
  %i.nw = zext nneg i32 %.0379.lcssa to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.nw
  store double 0.000000e+00, ptr %i.nx, align 8, !tbaa !12
  %i.ny = tail call i32 @llvm.smin.i32(i32 %i.kz, i32 %i.ip) ; 12 uses
  br i1 %i.gx, label %.preheader448.lr.ph, label %.lr.ph.i428.preheader

.lr.ph.i428.preheader:                            ; preds = %._crit_edge541, %._crit_edge516
  br i1 %i.jm, label %.lr.ph.i428.epil.preheader, label %.lr.ph.i428

.preheader448.lr.ph:                              ; preds = %._crit_edge516
  %.not422526 = icmp slt i32 %i.ny, 0             ; 3 uses
  %i.nz = add nsw i32 %i.ny, 1                    ; 14 uses
  %.not59.i = icmp sgt i32 %i.a, %i.ny
  %i.oa = sext i32 %i.nz to i64                   ; 39 uses
  %i.ob = shl nsw i64 %i.oa, 3
  %i.oc = icmp sgt i32 %i.ny, -1
  %i.od = zext nneg i32 %i.ny to i64              ; 4 uses
  %wide.trip.count990.i.i = zext i32 %i.nz to i64 ; 28 uses
  %.0645699.i.i = add nuw i32 %i.ny, 2
  %i.oe = mul i32 %i.ny, %5
  %i.of = add i32 %i.oe, %i.nz
  %i.og = add nsw i64 %i.oa, -1
  %i.oh = sext i32 %i.ny to i64                   ; 4 uses
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.oh
  %i.oj = add nsw i64 %i.oh, 1
  %broadcast.splatinsert1310 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1311 = shufflevector <4 x i64> %broadcast.splatinsert1310, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1243 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1244 = shufflevector <4 x i64> %broadcast.splatinsert1243, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1286 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1287 = shufflevector <4 x i64> %broadcast.splatinsert1286, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1196 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1197 = shufflevector <4 x i64> %broadcast.splatinsert1196, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1223 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1224 = shufflevector <4 x i64> %broadcast.splatinsert1223, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ok = getelementptr i8, ptr %i.in, i64 %i.ks
  %i.ol = getelementptr i8, ptr %i.in, i64 %i.kx
  %xtraiter2088 = and i64 %wide.trip.count990.i.i, 1
  %i.om = icmp eq i32 %smin2087, 0
  %unroll_iter2092 = and i64 %wide.trip.count990.i.i, 2147483646
  %lcmp.mod2090.not = icmp eq i64 %xtraiter2088, 0
  %lcmp.mod2091 = trunc i32 %i.nz to i1
  %xtraiter2108 = and i64 %wide.trip.count990.i.i, 7 ; 3 uses
  %i.on = icmp ult i32 %smin2107, 7
  %unroll_iter2112 = and i64 %wide.trip.count990.i.i, 2147483640
  %lcmp.mod2110.not = icmp eq i64 %xtraiter2108, 0
  %lcmp.mod2111 = icmp ne i64 %xtraiter2108, 0
  %min.iters.check919 = icmp ult i32 %i.nz, 4
  %min.iters.check921 = icmp ult i32 %i.nz, 16
  %i.oo = and i64 %wide.trip.count990.i.i, 12
  %n.vec923 = and i64 %wide.trip.count990.i.i, 2147483632 ; 4 uses
  %cmp.n936 = icmp eq i64 %n.vec923, %wide.trip.count990.i.i
  %min.epilog.iters.check941 = icmp eq i64 %i.oo, 0
  %n.vec943 = and i64 %wide.trip.count990.i.i, 2147483644 ; 3 uses
  %cmp.n950 = icmp eq i64 %n.vec943, %wide.trip.count990.i.i
  %min.iters.check876 = icmp ult i32 %i.nz, 4
  %min.iters.check878 = icmp ult i32 %i.nz, 16
  %i.op = and i64 %wide.trip.count990.i.i, 12
  %n.vec880 = and i64 %wide.trip.count990.i.i, 2147483632 ; 4 uses
  %cmp.n900 = icmp eq i64 %n.vec880, %wide.trip.count990.i.i
  %min.epilog.iters.check906 = icmp eq i64 %i.op, 0
  %n.vec908 = and i64 %wide.trip.count990.i.i, 2147483644 ; 3 uses
  %cmp.n916 = icmp eq i64 %n.vec908, %wide.trip.count990.i.i
  %min.iters.check824 = icmp ult i32 %i.nz, 4
  %min.iters.check826 = icmp ult i32 %i.nz, 16
  %n.vec828 = and i64 %i.oa, 2147483632           ; 4 uses
  %cmp.n855 = icmp eq i64 %n.vec828, %i.oa
  %i.oq = and i32 %i.nz, 12
  %min.epilog.iters.check861 = icmp eq i32 %i.oq, 0
  %n.vec863 = and i64 %i.oa, 2147483644           ; 3 uses
  %cmp.n873 = icmp eq i64 %n.vec863, %i.oa
  br label %.preheader448

.preheader448:                                    ; preds = %.preheader448.lr.ph, %._crit_edge541
  %indvars.iv667 = phi i64 [ 0, %.preheader448.lr.ph ], [ %indvars.iv.next668, %._crit_edge541 ] ; 4 uses
  br i1 %.not422526, label %._crit_edge528.split, label %iter.check1819

iter.check1819:                                   ; preds = %.preheader448, %._crit_edge525
  %indvars.iv656 = phi i64 [ %indvars.iv.next657, %._crit_edge525 ], [ 0, %.preheader448 ] ; 4 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv656
  %i.os = load i32, ptr %i.or, align 4, !tbaa !33
  %i.ot = sext i32 %i.os to i64
  %invariant.gep767 = getelementptr [8 x i8], ptr %i.e, i64 %i.ot ; 14 uses
  %invariant.gep769 = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv656 ; 11 uses
  br i1 %or.cond1905, label %vector.main.loop.iter.check1794, label %vec.epilog.scalar.ph1820.preheader

vector.main.loop.iter.check1794:                  ; preds = %iter.check1819
  br i1 %min.iters.check1795, label %vec.epilog.ph1823, label %vector.body1800

vector.body1800:                                  ; preds = %vector.main.loop.iter.check1794, %vector.body1800
  %index1801 = phi i64 [ %index.next1814, %vector.body1800 ], [ 0, %vector.main.loop.iter.check1794 ] ; 2 uses
  %vec.ind1802 = phi <4 x i64> [ %vec.ind.next1815, %vector.body1800 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check1794 ] ; 5 uses
  %step.add1803 = add nuw <4 x i64> %vec.ind1802, splat (i64 4)
  %step.add.21804 = add nuw <4 x i64> %vec.ind1802, splat (i64 8)
  %step.add.31805 = add nuw <4 x i64> %vec.ind1802, splat (i64 12)
  %i.ou = mul nuw nsw <4 x i64> %vec.ind1802, %broadcast.splat1799
  %i.ov = mul nuw nsw <4 x i64> %step.add1803, %broadcast.splat1799
  %i.ow = mul nuw nsw <4 x i64> %step.add.21804, %broadcast.splat1799
  %i.ox = mul nuw nsw <4 x i64> %step.add.31805, %broadcast.splat1799
  %wide.gep1806 = getelementptr [8 x i8], ptr %invariant.gep767, <4 x i64> %i.ou
  %wide.gep1807 = getelementptr [8 x i8], ptr %invariant.gep767, <4 x i64> %i.ov
  %wide.gep1808 = getelementptr [8 x i8], ptr %invariant.gep767, <4 x i64> %i.ow
  %wide.gep1809 = getelementptr [8 x i8], ptr %invariant.gep767, <4 x i64> %i.ox
  %wide.masked.gather1810 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1806, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1811 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1807, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1812 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1808, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1813 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1809, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.oy = getelementptr [8 x i8], ptr %invariant.gep769, i64 %index1801 ; 4 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 32
  %i.pa = getelementptr i8, ptr %i.oy, i64 64
  %i.pb = getelementptr i8, ptr %i.oy, i64 96
  store <4 x double> %wide.masked.gather1810, ptr %i.oy, align 8, !tbaa !12
  store <4 x double> %wide.masked.gather1811, ptr %i.oz, align 8, !tbaa !12
  store <4 x double> %wide.masked.gather1812, ptr %i.pa, align 8, !tbaa !12
  store <4 x double> %wide.masked.gather1813, ptr %i.pb, align 8, !tbaa !12
  %index.next1814 = add nuw i64 %index1801, 16    ; 2 uses
  %vec.ind.next1815 = add nuw <4 x i64> %vec.ind1802, splat (i64 16)
  %i.pc = icmp eq i64 %index.next1814, %n.vec1797
  br i1 %i.pc, label %middle.block1816, label %vector.body1800, !llvm.loop !34

middle.block1816:                                 ; preds = %vector.body1800
  br i1 %cmp.n1817, label %._crit_edge525, label %vec.epilog.iter.check1821

vec.epilog.iter.check1821:                        ; preds = %middle.block1816
  br i1 %min.epilog.iters.check1822, label %vec.epilog.scalar.ph1820.preheader, label %vec.epilog.ph1823, !prof !22

vec.epilog.ph1823:                                ; preds = %vector.main.loop.iter.check1794, %vec.epilog.iter.check1821
  %vec.epilog.resume.val1818 = phi i64 [ %n.vec1797, %vec.epilog.iter.check1821 ], [ 0, %vector.main.loop.iter.check1794 ] ; 2 uses
  %broadcast.splatinsert1827 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1818, i64 0
  %broadcast.splat1828 = shufflevector <4 x i64> %broadcast.splatinsert1827, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1829 = or disjoint <4 x i64> %broadcast.splat1828, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1830

vec.epilog.vector.body1830:                       ; preds = %vec.epilog.vector.body1830, %vec.epilog.ph1823
  %index1831 = phi i64 [ %vec.epilog.resume.val1818, %vec.epilog.ph1823 ], [ %index.next1835, %vec.epilog.vector.body1830 ] ; 2 uses
  %vec.ind1832 = phi <4 x i64> [ %induction1829, %vec.epilog.ph1823 ], [ %vec.ind.next1836, %vec.epilog.vector.body1830 ] ; 2 uses
  %i.pd = mul nuw nsw <4 x i64> %vec.ind1832, %broadcast.splat1826
  %wide.gep1833 = getelementptr [8 x i8], ptr %invariant.gep767, <4 x i64> %i.pd
  %wide.masked.gather1834 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1833, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.pe = getelementptr [8 x i8], ptr %invariant.gep769, i64 %index1831
  store <4 x double> %wide.masked.gather1834, ptr %i.pe, align 8, !tbaa !12
  %index.next1835 = add nuw i64 %index1831, 4     ; 2 uses
  %vec.ind.next1836 = add nuw nsw <4 x i64> %vec.ind1832, splat (i64 4)
  %i.pf = icmp eq i64 %index.next1835, %n.vec1824
  br i1 %i.pf, label %vec.epilog.middle.block1837, label %vec.epilog.vector.body1830, !llvm.loop !35

vec.epilog.middle.block1837:                      ; preds = %vec.epilog.vector.body1830
  br i1 %cmp.n1838, label %._crit_edge525, label %vec.epilog.scalar.ph1820.preheader

vec.epilog.scalar.ph1820.preheader:               ; preds = %iter.check1819, %vec.epilog.iter.check1821, %vec.epilog.middle.block1837
  %indvars.iv651.ph = phi i64 [ 0, %iter.check1819 ], [ %n.vec1797, %vec.epilog.iter.check1821 ], [ %n.vec1824, %vec.epilog.middle.block1837 ] ; 4 uses
  %i.pg = sub nsw i64 %wide.trip.count675, %indvars.iv651.ph
  %xtraiter2051 = and i64 %i.pg, 7                ; 2 uses
  %lcmp.mod2052.not = icmp eq i64 %xtraiter2051, 0
  br i1 %lcmp.mod2052.not, label %vec.epilog.scalar.ph1820.prol.loopexit, label %vec.epilog.scalar.ph1820.prol

vec.epilog.scalar.ph1820.prol:                    ; preds = %vec.epilog.scalar.ph1820.preheader, %vec.epilog.scalar.ph1820.prol
  %indvars.iv651.prol = phi i64 [ %indvars.iv.next652.prol, %vec.epilog.scalar.ph1820.prol ], [ %indvars.iv651.ph, %vec.epilog.scalar.ph1820.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph1820.prol ], [ 0, %vec.epilog.scalar.ph1820.preheader ]
  %i.ph = mul nuw nsw i64 %indvars.iv651.prol, %i.b
  %gep768.prol = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.ph
  %i.pi = load double, ptr %gep768.prol, align 8, !tbaa !12
  %i.pj = mul nsw i64 %indvars.iv651.prol, %i.ih
  %gep770.prol = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.pj
  store double %i.pi, ptr %gep770.prol, align 8, !tbaa !12
  %indvars.iv.next652.prol = add nuw nsw i64 %indvars.iv651.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2051
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1820.prol.loopexit, label %vec.epilog.scalar.ph1820.prol, !llvm.loop !36

vec.epilog.scalar.ph1820.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1820.prol, %vec.epilog.scalar.ph1820.preheader
  %indvars.iv651.unr = phi i64 [ %indvars.iv651.ph, %vec.epilog.scalar.ph1820.preheader ], [ %indvars.iv.next652.prol, %vec.epilog.scalar.ph1820.prol ]
  %i.pk = sub nsw i64 %indvars.iv651.ph, %wide.trip.count675
  %i.pl = icmp ugt i64 %i.pk, -8
  br i1 %i.pl, label %._crit_edge525, label %vec.epilog.scalar.ph1820

._crit_edge528.split:                             ; preds = %._crit_edge525, %.preheader448
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv667
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !25 ; 12 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv667 ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !25
  br i1 %.not59.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge528.split
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3) #17
  br label %dsvd.exit.i

bb.q:                                             ; preds = %._crit_edge528.split
  %i.pq = tail call noalias ptr @malloc(i64 noundef %i.ob) #15 ; 17 uses
  br i1 %i.oc, label %iter.check1775, label %.critedge.i.i

iter.check1775:                                   ; preds = %bb.q, %.loopexit753.i.i
  %indvars.iv942.i.i = phi i64 [ %indvars.iv.next943.i.i, %.loopexit753.i.i ], [ 1, %bb.q ] ; 33 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit753.i.i ], [ 0, %bb.q ] ; 37 uses
  %.0665815.i.i = phi double [ %.4.i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ]
  %.0668814.i.i = phi double [ %.2670.i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ]
  %.0672813.i.i = phi double [ %.0672..i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.pr = shl nuw nsw i64 %indvars.iv.i.i, 4      ; 2 uses
  %i.ps = getelementptr i8, ptr %i.in, i64 %i.pr
  %scevgep1602 = getelementptr i8, ptr %i.ps, i64 8
  %scevgep1607 = getelementptr i8, ptr %i.in, i64 %i.pr
  %i.pt = add nuw i64 %indvars.iv.i.i, %i.gr
  %i.pu = shl i64 %i.pt, 3
  %scevgep1608 = getelementptr i8, ptr %i.in, i64 %i.pu
  %i.pv = sub nsw i64 %i.gr, %indvars.iv.i.i      ; 35 uses
  %i.pw = xor i64 %indvars.iv.i.i, -1
  %i.px = add nsw i64 %i.pw, %i.ko                ; 42 uses
  %i.py = fmul reassoc nsz arcp contract afn double %.0668814.i.i, %.0665815.i.i ; 3 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv.i.i ; 2 uses
  store double %i.py, ptr %i.pz, align 8, !tbaa !12
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv.i.i ; 47 uses
  %min.iters.check1751 = icmp ugt i64 %i.pv, 3
  %or.cond1906 = and i1 %min.iters.check1751, %ident.check1749.not
  br i1 %or.cond1906, label %vector.main.loop.iter.check1752, label %.lr.ph.i.i.preheader

vector.main.loop.iter.check1752:                  ; preds = %iter.check1775
  %min.iters.check1753 = icmp ult i64 %i.pv, 16
  br i1 %min.iters.check1753, label %vec.epilog.ph1779, label %vector.ph1754

vector.ph1754:                                    ; preds = %vector.main.loop.iter.check1752
  %i.qa = and i64 %i.pv, 12
  %n.vec1755 = and i64 %i.pv, -16                 ; 4 uses
  %i.qb = add i64 %indvars.iv.i.i, %n.vec1755
  %i.qc = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  br label %vector.body1756

vector.body1756:                                  ; preds = %vector.body1756, %vector.ph1754
  %index1757 = phi i64 [ 0, %vector.ph1754 ], [ %index.next1766, %vector.body1756 ] ; 2 uses
  %vec.phi1758 = phi <4 x double> [ zeroinitializer, %vector.ph1754 ], [ %i.ql, %vector.body1756 ]
  %vec.phi1759 = phi <4 x double> [ zeroinitializer, %vector.ph1754 ], [ %i.qm, %vector.body1756 ]
  %vec.phi1760 = phi <4 x double> [ zeroinitializer, %vector.ph1754 ], [ %i.qn, %vector.body1756 ]
  %vec.phi1761 = phi <4 x double> [ zeroinitializer, %vector.ph1754 ], [ %i.qo, %vector.body1756 ]
  %i.qd = getelementptr [8 x i8], ptr %i.qc, i64 %index1757 ; 4 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 32
  %i.qf = getelementptr i8, ptr %i.qd, i64 64
  %i.qg = getelementptr i8, ptr %i.qd, i64 96
  %wide.load1762 = load <4 x double>, ptr %i.qd, align 8, !tbaa !12
  %wide.load1763 = load <4 x double>, ptr %i.qe, align 8, !tbaa !12
  %wide.load1764 = load <4 x double>, ptr %i.qf, align 8, !tbaa !12
  %wide.load1765 = load <4 x double>, ptr %i.qg, align 8, !tbaa !12
  %i.qh = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1762)
  %i.qi = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1763)
  %i.qj = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1764)
  %i.qk = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1765)
  %i.ql = fadd reassoc nsz arcp contract afn <4 x double> %i.qh, %vec.phi1758 ; 2 uses
  %i.qm = fadd reassoc nsz arcp contract afn <4 x double> %i.qi, %vec.phi1759 ; 2 uses
  %i.qn = fadd reassoc nsz arcp contract afn <4 x double> %i.qj, %vec.phi1760 ; 2 uses
  %i.qo = fadd reassoc nsz arcp contract afn <4 x double> %i.qk, %vec.phi1761 ; 2 uses
  %index.next1766 = add nuw i64 %index1757, 16    ; 2 uses
  %i.qp = icmp eq i64 %index.next1766, %n.vec1755
  br i1 %i.qp, label %middle.block1767, label %vector.body1756, !llvm.loop !37

middle.block1767:                                 ; preds = %vector.body1756
  %bin.rdx1768 = fadd reassoc nsz arcp contract afn <4 x double> %i.qm, %i.ql
  %bin.rdx1769 = fadd reassoc nsz arcp contract afn <4 x double> %i.qn, %bin.rdx1768
  %bin.rdx1770 = fadd reassoc nsz arcp contract afn <4 x double> %i.qo, %bin.rdx1769
  %i.qq = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1770) ; 3 uses
  %cmp.n1771 = icmp eq i64 %i.pv, %n.vec1755
  br i1 %cmp.n1771, label %._crit_edge.i.i, label %vec.epilog.iter.check1777

vec.epilog.iter.check1777:                        ; preds = %middle.block1767
  %min.epilog.iters.check1778 = icmp eq i64 %i.qa, 0
  br i1 %min.epilog.iters.check1778, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1779, !prof !22

vec.epilog.ph1779:                                ; preds = %vector.main.loop.iter.check1752, %vec.epilog.iter.check1777
  %vec.epilog.resume.val1772 = phi i64 [ %n.vec1755, %vec.epilog.iter.check1777 ], [ 0, %vector.main.loop.iter.check1752 ]
  %bc.merge.rdx1774 = phi double [ %i.qq, %vec.epilog.iter.check1777 ], [ 0.000000e+00, %vector.main.loop.iter.check1752 ]
  %n.vec1780 = and i64 %i.pv, -4                  ; 3 uses
  %i.qr = add i64 %indvars.iv.i.i, %n.vec1780
  %i.qs = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1774, i64 0
  %i.qt = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  br label %vec.epilog.vector.body1781

vec.epilog.vector.body1781:                       ; preds = %vec.epilog.vector.body1781, %vec.epilog.ph1779
  %index1782 = phi i64 [ %vec.epilog.resume.val1772, %vec.epilog.ph1779 ], [ %index.next1785, %vec.epilog.vector.body1781 ] ; 2 uses
  %vec.phi1783 = phi <4 x double> [ %i.qs, %vec.epilog.ph1779 ], [ %i.qw, %vec.epilog.vector.body1781 ]
  %i.qu = getelementptr [8 x i8], ptr %i.qt, i64 %index1782
  %wide.load1784 = load <4 x double>, ptr %i.qu, align 8, !tbaa !12
  %i.qv = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1784)
  %i.qw = fadd reassoc nsz arcp contract afn <4 x double> %i.qv, %vec.phi1783 ; 2 uses
  %index.next1785 = add nuw i64 %index1782, 4     ; 2 uses
  %i.qx = icmp eq i64 %index.next1785, %n.vec1780
  br i1 %i.qx, label %vec.epilog.middle.block1786, label %vec.epilog.vector.body1781, !llvm.loop !38

vec.epilog.middle.block1786:                      ; preds = %vec.epilog.vector.body1781
  %i.qy = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.qw) ; 2 uses
  %cmp.n1787 = icmp eq i64 %i.pv, %n.vec1780
  br i1 %cmp.n1787, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1775, %vec.epilog.iter.check1777, %vec.epilog.middle.block1786
  %indvars.iv924.i.i.ph = phi i64 [ %indvars.iv.i.i, %iter.check1775 ], [ %i.qb, %vec.epilog.iter.check1777 ], [ %i.qr, %vec.epilog.middle.block1786 ] ; 4 uses
  %.1666770.i.i.ph = phi double [ 0.000000e+00, %iter.check1775 ], [ %i.qq, %vec.epilog.iter.check1777 ], [ %i.qy, %vec.epilog.middle.block1786 ] ; 2 uses
  %i.qz = sub i64 %i.gr, %indvars.iv924.i.i.ph
  %i.ra = sub i64 %i.jc, %indvars.iv924.i.i.ph
  %xtraiter2053 = and i64 %i.qz, 7                ; 2 uses
  %lcmp.mod2054.not = icmp eq i64 %xtraiter2053, 0
  br i1 %lcmp.mod2054.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv924.i.i.prol = phi i64 [ %indvars.iv.next925.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv924.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.1666770.i.i.prol = phi double [ %i.re, %.lr.ph.i.i.prol ], [ %.1666770.i.i.ph, %.lr.ph.i.i.preheader ]
  %prol.iter2055 = phi i64 [ %prol.iter2055.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.rb = mul nsw i64 %indvars.iv924.i.i.prol, %i.ih
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.rb
  %i.rc = load double, ptr %gep.i.i.prol, align 8, !tbaa !12
  %i.rd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.rc)
  %i.re = fadd reassoc nsz arcp contract afn double %i.rd, %.1666770.i.i.prol ; 3 uses
  %indvars.iv.next925.i.i.prol = add nuw nsw i64 %indvars.iv924.i.i.prol, 1 ; 2 uses
  %prol.iter2055.next = add i64 %prol.iter2055, 1 ; 2 uses
  %prol.iter2055.cmp.not = icmp eq i64 %prol.iter2055.next, %xtraiter2053
  br i1 %prol.iter2055.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !39

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa1935.unr = phi double [ poison, %.lr.ph.i.i.preheader ], [ %i.re, %.lr.ph.i.i.prol ]
  %indvars.iv924.i.i.unr = phi i64 [ %indvars.iv924.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next925.i.i.prol, %.lr.ph.i.i.prol ]
  %.1666770.i.i.unr = phi double [ %.1666770.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.re, %.lr.ph.i.i.prol ]
  %i.rf = icmp ult i64 %i.ra, 7
  br i1 %i.rf, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block1786, %middle.block1767
  %.lcssa775 = phi double [ %i.qy, %vec.epilog.middle.block1786 ], [ %i.qq, %middle.block1767 ], [ %.lcssa1935.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ui, %.lr.ph.i.i ] ; 20 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.rg = fcmp reassoc nsz arcp contract afn une double %.lcssa775, 0.000000e+00
  br i1 %i.rg, label %iter.check1731, label %.loopexit758.i.i

iter.check1731:                                   ; preds = %._crit_edge.i.i
  %min.iters.check1705 = icmp ugt i64 %i.pv, 3
  %or.cond1907 = and i1 %min.iters.check1705, %ident.check1703.not
  br i1 %or.cond1907, label %vector.main.loop.iter.check1706, label %.lr.ph774.i.i.preheader

vector.main.loop.iter.check1706:                  ; preds = %iter.check1731
  %min.iters.check1707 = icmp ult i64 %i.pv, 16
  br i1 %min.iters.check1707, label %vec.epilog.ph1735, label %vector.ph1708

vector.ph1708:                                    ; preds = %vector.main.loop.iter.check1706
  %i.rh = and i64 %i.pv, 12
  %n.vec1709 = and i64 %i.pv, -16                 ; 4 uses
  %i.ri = add i64 %indvars.iv.i.i, %n.vec1709
  %broadcast.splatinsert1710 = insertelement <4 x double> poison, double %.lcssa775, i64 0
  %broadcast.splat1711 = shufflevector <4 x double> %broadcast.splatinsert1710, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.rj = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.rk = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1711
  %i.rl = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1711
  %i.rm = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1711
  %i.rn = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1711
  br label %vector.body1712

vector.body1712:                                  ; preds = %vector.body1712, %vector.ph1708
  %index1713 = phi i64 [ 0, %vector.ph1708 ], [ %index.next1722, %vector.body1712 ] ; 2 uses
  %vec.phi1714 = phi <4 x double> [ zeroinitializer, %vector.ph1708 ], [ %i.sa, %vector.body1712 ]
  %vec.phi1715 = phi <4 x double> [ zeroinitializer, %vector.ph1708 ], [ %i.sb, %vector.body1712 ]
  %vec.phi1716 = phi <4 x double> [ zeroinitializer, %vector.ph1708 ], [ %i.sc, %vector.body1712 ]
  %vec.phi1717 = phi <4 x double> [ zeroinitializer, %vector.ph1708 ], [ %i.sd, %vector.body1712 ]
  %i.ro = getelementptr [8 x i8], ptr %i.rj, i64 %index1713 ; 5 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 32     ; 2 uses
  %i.rq = getelementptr i8, ptr %i.ro, i64 64     ; 2 uses
  %i.rr = getelementptr i8, ptr %i.ro, i64 96     ; 2 uses
  %wide.load1718 = load <4 x double>, ptr %i.ro, align 8, !tbaa !12
  %wide.load1719 = load <4 x double>, ptr %i.rp, align 8, !tbaa !12
  %wide.load1720 = load <4 x double>, ptr %i.rq, align 8, !tbaa !12
end_hunk_1
begin_hunk_2_@thinplate_match:bb.a
  store double %.lcssa790, ptr %i.bpo, align 8, !tbaa !12
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next124.i, %wide.trip.count990.i.i
  br i1 %exitcond128.not.i, label %iter.check938, label %iter.check979

iter.check938:                                    ; preds = %._crit_edge.us.i
  br i1 %min.iters.check919, label %.lr.ph92.i.preheader, label %vector.main.loop.iter.check920

vector.main.loop.iter.check920:                   ; preds = %iter.check938
  br i1 %min.iters.check921, label %vec.epilog.ph942, label %vector.body924

vector.body924:                                   ; preds = %vector.main.loop.iter.check920, %vector.body924
  %index925 = phi i64 [ %index.next934, %vector.body924 ], [ 0, %vector.main.loop.iter.check920 ] ; 3 uses
  %i.bpp = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index925 ; 4 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 32
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpp, i64 64
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpp, i64 96
  %wide.load926 = load <4 x double>, ptr %i.bpp, align 8, !tbaa !12
  %wide.load927 = load <4 x double>, ptr %i.bpq, align 8, !tbaa !12
  %wide.load928 = load <4 x double>, ptr %i.bpr, align 8, !tbaa !12
  %wide.load929 = load <4 x double>, ptr %i.bps, align 8, !tbaa !12
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %index925 ; 5 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 32 ; 2 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpt, i64 64 ; 2 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpt, i64 96 ; 2 uses
  %wide.load930 = load <4 x double>, ptr %i.bpt, align 8, !tbaa !12
  %wide.load931 = load <4 x double>, ptr %i.bpu, align 8, !tbaa !12
  %wide.load932 = load <4 x double>, ptr %i.bpv, align 8, !tbaa !12
  %wide.load933 = load <4 x double>, ptr %i.bpw, align 8, !tbaa !12
  %i.bpx = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load930, %wide.load926
  %i.bpy = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load931, %wide.load927
  %i.bpz = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load932, %wide.load928
  %i.bqa = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load933, %wide.load929
  store <4 x double> %i.bpx, ptr %i.bpt, align 8, !tbaa !12
  store <4 x double> %i.bpy, ptr %i.bpu, align 8, !tbaa !12
  store <4 x double> %i.bpz, ptr %i.bpv, align 8, !tbaa !12
  store <4 x double> %i.bqa, ptr %i.bpw, align 8, !tbaa !12
  %index.next934 = add nuw i64 %index925, 16      ; 2 uses
  %i.bqb = icmp eq i64 %index.next934, %n.vec923
  br i1 %i.bqb, label %middle.block935, label %vector.body924, !llvm.loop !122

middle.block935:                                  ; preds = %vector.body924
  br i1 %cmp.n936, label %iter.check903.preheader, label %vec.epilog.iter.check940

vec.epilog.iter.check940:                         ; preds = %middle.block935
  br i1 %min.epilog.iters.check941, label %.lr.ph92.i.preheader, label %vec.epilog.ph942, !prof !22

vec.epilog.ph942:                                 ; preds = %vector.main.loop.iter.check920, %vec.epilog.iter.check940
  %vec.epilog.resume.val937 = phi i64 [ %n.vec923, %vec.epilog.iter.check940 ], [ 0, %vector.main.loop.iter.check920 ]
  br label %vec.epilog.vector.body944

vec.epilog.vector.body944:                        ; preds = %vec.epilog.vector.body944, %vec.epilog.ph942
  %index945 = phi i64 [ %vec.epilog.resume.val937, %vec.epilog.ph942 ], [ %index.next948, %vec.epilog.vector.body944 ] ; 3 uses
  %i.bqc = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index945
  %wide.load946 = load <4 x double>, ptr %i.bqc, align 8, !tbaa !12
  %i.bqd = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %index945 ; 2 uses
  %wide.load947 = load <4 x double>, ptr %i.bqd, align 8, !tbaa !12
  %i.bqe = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load947, %wide.load946
  store <4 x double> %i.bqe, ptr %i.bqd, align 8, !tbaa !12
  %index.next948 = add nuw i64 %index945, 4       ; 2 uses
  %i.bqf = icmp eq i64 %index.next948, %n.vec943
  br i1 %i.bqf, label %vec.epilog.middle.block949, label %vec.epilog.vector.body944, !llvm.loop !123

vec.epilog.middle.block949:                       ; preds = %vec.epilog.vector.body944
  br i1 %cmp.n950, label %iter.check903.preheader, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %iter.check938, %vec.epilog.iter.check940, %vec.epilog.middle.block949
  %indvars.iv129.i.ph = phi i64 [ 0, %iter.check938 ], [ %n.vec923, %vec.epilog.iter.check940 ], [ %n.vec943, %vec.epilog.middle.block949 ]
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %.lr.ph92.i ], [ %indvars.iv129.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %i.bqg = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv129.i
  %i.bqh = load double, ptr %i.bqg, align 8, !tbaa !12
  %i.bqi = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %indvars.iv129.i ; 2 uses
  %i.bqj = load double, ptr %i.bqi, align 8, !tbaa !12
  %i.bqk = fdiv reassoc nsz arcp contract afn double %i.bqj, %i.bqh
  store double %i.bqk, ptr %i.bqi, align 8, !tbaa !12
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next130.i, %wide.trip.count990.i.i
  br i1 %exitcond134.not.i, label %iter.check903.preheader, label %.lr.ph92.i, !llvm.loop !124

iter.check903.preheader:                          ; preds = %.lr.ph92.i, %vec.epilog.middle.block949, %middle.block935
  br label %iter.check903

iter.check903:                                    ; preds = %iter.check903.preheader, %._crit_edge.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.i ], [ 0, %iter.check903.preheader ] ; 3 uses
  %i.bql = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv141.i
  %i.bqm = mul nuw nsw i64 %indvars.iv141.i, %wide.trip.count990.i.i
  %invariant.gep190.i = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.bqm ; 3 uses
  br i1 %min.iters.check876, label %vec.epilog.scalar.ph904.preheader, label %vector.main.loop.iter.check877

vector.main.loop.iter.check877:                   ; preds = %iter.check903
  br i1 %min.iters.check878, label %vec.epilog.ph907, label %vector.body881

vector.body881:                                   ; preds = %vector.main.loop.iter.check877, %vector.body881
  %index882 = phi i64 [ %index.next895, %vector.body881 ], [ 0, %vector.main.loop.iter.check877 ] ; 3 uses
  %vec.phi883 = phi <4 x double> [ %i.bqz, %vector.body881 ], [ zeroinitializer, %vector.main.loop.iter.check877 ]
  %vec.phi884 = phi <4 x double> [ %i.bra, %vector.body881 ], [ zeroinitializer, %vector.main.loop.iter.check877 ]
  %vec.phi885 = phi <4 x double> [ %i.brb, %vector.body881 ], [ zeroinitializer, %vector.main.loop.iter.check877 ]
  %vec.phi886 = phi <4 x double> [ %i.brc, %vector.body881 ], [ zeroinitializer, %vector.main.loop.iter.check877 ]
  %i.bqn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %index882 ; 4 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 32
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqn, i64 64
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqn, i64 96
  %wide.load887 = load <4 x double>, ptr %i.bqn, align 8, !tbaa !12
  %wide.load888 = load <4 x double>, ptr %i.bqo, align 8, !tbaa !12
  %wide.load889 = load <4 x double>, ptr %i.bqp, align 8, !tbaa !12
  %wide.load890 = load <4 x double>, ptr %i.bqq, align 8, !tbaa !12
  %i.bqr = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %index882 ; 4 uses
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 32
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqr, i64 64
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqr, i64 96
  %wide.load891 = load <4 x double>, ptr %i.bqr, align 8, !tbaa !12
  %wide.load892 = load <4 x double>, ptr %i.bqs, align 8, !tbaa !12
  %wide.load893 = load <4 x double>, ptr %i.bqt, align 8, !tbaa !12
  %wide.load894 = load <4 x double>, ptr %i.bqu, align 8, !tbaa !12
  %i.bqv = fmul reassoc nsz arcp contract afn <4 x double> %wide.load891, %wide.load887
  %i.bqw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load892, %wide.load888
  %i.bqx = fmul reassoc nsz arcp contract afn <4 x double> %wide.load893, %wide.load889
  %i.bqy = fmul reassoc nsz arcp contract afn <4 x double> %wide.load894, %wide.load890
  %i.bqz = fadd reassoc nsz arcp contract afn <4 x double> %i.bqv, %vec.phi883 ; 2 uses
  %i.bra = fadd reassoc nsz arcp contract afn <4 x double> %i.bqw, %vec.phi884 ; 2 uses
  %i.brb = fadd reassoc nsz arcp contract afn <4 x double> %i.bqx, %vec.phi885 ; 2 uses
  %i.brc = fadd reassoc nsz arcp contract afn <4 x double> %i.bqy, %vec.phi886 ; 2 uses
  %index.next895 = add nuw i64 %index882, 16      ; 2 uses
  %i.brd = icmp eq i64 %index.next895, %n.vec880
  br i1 %i.brd, label %middle.block896, label %vector.body881, !llvm.loop !125

middle.block896:                                  ; preds = %vector.body881
  %bin.rdx897 = fadd reassoc nsz arcp contract afn <4 x double> %i.bra, %i.bqz
  %bin.rdx898 = fadd reassoc nsz arcp contract afn <4 x double> %i.brb, %bin.rdx897
  %bin.rdx899 = fadd reassoc nsz arcp contract afn <4 x double> %i.brc, %bin.rdx898
  %i.bre = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx899) ; 3 uses
  br i1 %cmp.n900, label %._crit_edge.i, label %vec.epilog.iter.check905

vec.epilog.iter.check905:                         ; preds = %middle.block896
  br i1 %min.epilog.iters.check906, label %vec.epilog.scalar.ph904.preheader, label %vec.epilog.ph907, !prof !22

vec.epilog.ph907:                                 ; preds = %vector.main.loop.iter.check877, %vec.epilog.iter.check905
  %vec.epilog.resume.val901 = phi i64 [ %n.vec880, %vec.epilog.iter.check905 ], [ 0, %vector.main.loop.iter.check877 ]
  %bc.merge.rdx902 = phi double [ %i.bre, %vec.epilog.iter.check905 ], [ 0.000000e+00, %vector.main.loop.iter.check877 ]
  %i.brf = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx902, i64 0
  br label %vec.epilog.vector.body909

vec.epilog.vector.body909:                        ; preds = %vec.epilog.vector.body909, %vec.epilog.ph907
  %index910 = phi i64 [ %vec.epilog.resume.val901, %vec.epilog.ph907 ], [ %index.next914, %vec.epilog.vector.body909 ] ; 3 uses
  %vec.phi911 = phi <4 x double> [ %i.brf, %vec.epilog.ph907 ], [ %i.brj, %vec.epilog.vector.body909 ]
  %i.brg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %index910
  %wide.load912 = load <4 x double>, ptr %i.brg, align 8, !tbaa !12
  %i.brh = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %index910
  %wide.load913 = load <4 x double>, ptr %i.brh, align 8, !tbaa !12
  %i.bri = fmul reassoc nsz arcp contract afn <4 x double> %wide.load913, %wide.load912
  %i.brj = fadd reassoc nsz arcp contract afn <4 x double> %i.bri, %vec.phi911 ; 2 uses
  %index.next914 = add nuw i64 %index910, 4       ; 2 uses
  %i.brk = icmp eq i64 %index.next914, %n.vec908
  br i1 %i.brk, label %vec.epilog.middle.block915, label %vec.epilog.vector.body909, !llvm.loop !126

vec.epilog.middle.block915:                       ; preds = %vec.epilog.vector.body909
  %i.brl = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.brj) ; 2 uses
  br i1 %cmp.n916, label %._crit_edge.i, label %vec.epilog.scalar.ph904.preheader

vec.epilog.scalar.ph904.preheader:                ; preds = %iter.check903, %vec.epilog.iter.check905, %vec.epilog.middle.block915
  %indvars.iv135.i.ph = phi i64 [ 0, %iter.check903 ], [ %n.vec880, %vec.epilog.iter.check905 ], [ %n.vec908, %vec.epilog.middle.block915 ]
  %.ph1918 = phi double [ 0.000000e+00, %iter.check903 ], [ %i.bre, %vec.epilog.iter.check905 ], [ %i.brl, %vec.epilog.middle.block915 ]
  br label %vec.epilog.scalar.ph904

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph904, %vec.epilog.middle.block915, %middle.block896
  %.lcssa791 = phi double [ %i.brl, %vec.epilog.middle.block915 ], [ %i.bre, %middle.block896 ], [ %i.brr, %vec.epilog.scalar.ph904 ]
  store double %.lcssa791, ptr %i.bql, align 8, !tbaa !12
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count990.i.i
  br i1 %exitcond146.not.i, label %.lr.ph540, label %iter.check903

vec.epilog.scalar.ph904:                          ; preds = %vec.epilog.scalar.ph904.preheader, %vec.epilog.scalar.ph904
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %vec.epilog.scalar.ph904 ], [ %indvars.iv135.i.ph, %vec.epilog.scalar.ph904.preheader ] ; 3 uses
  %i.brm = phi double [ %i.brr, %vec.epilog.scalar.ph904 ], [ %.ph1918, %vec.epilog.scalar.ph904.preheader ]
  %gep191.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %indvars.iv135.i
  %i.brn = load double, ptr %gep191.i, align 8, !tbaa !12
  %i.bro = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %indvars.iv135.i
  %i.brp = load double, ptr %i.bro, align 8, !tbaa !12
  %i.brq = fmul reassoc nsz arcp contract afn double %i.brp, %i.brn
  %i.brr = fadd reassoc nsz arcp contract afn double %i.brq, %i.brm ; 2 uses
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count990.i.i
  br i1 %exitcond140.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph904, !llvm.loop !127

.lr.ph540:                                        ; preds = %._crit_edge.i, %bb.aj
  tail call void @free(ptr noundef %i.bmh) #17
  %i.brs = mul nuw nsw i64 %indvars.iv667, %i.gr
  %i.brt = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.brs
  br label %bb.ak

._crit_edge525:                                   ; preds = %vec.epilog.scalar.ph1820.prol.loopexit, %vec.epilog.scalar.ph1820, %vec.epilog.middle.block1837, %middle.block1816
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1
  %.not422.not = icmp slt i64 %indvars.iv656, %i.oh
  br i1 %.not422.not, label %iter.check1819, label %._crit_edge528.split

vec.epilog.scalar.ph1820:                         ; preds = %vec.epilog.scalar.ph1820.prol.loopexit, %vec.epilog.scalar.ph1820
  %indvars.iv651 = phi i64 [ %indvars.iv.next652.7, %vec.epilog.scalar.ph1820 ], [ %indvars.iv651.unr, %vec.epilog.scalar.ph1820.prol.loopexit ] ; 10 uses
  %i.bru = mul nuw nsw i64 %indvars.iv651, %i.b
  %gep768 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.bru
  %i.brv = load double, ptr %gep768, align 8, !tbaa !12
  %i.brw = mul nsw i64 %indvars.iv651, %i.ih
  %gep770 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.brw
  store double %i.brv, ptr %gep770, align 8, !tbaa !12
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %i.brx = mul nuw nsw i64 %indvars.iv.next652, %i.b
  %gep768.1 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.brx
  %i.bry = load double, ptr %gep768.1, align 8, !tbaa !12
  %i.brz = mul nsw i64 %indvars.iv.next652, %i.ih
  %gep770.1 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.brz
  store double %i.bry, ptr %gep770.1, align 8, !tbaa !12
  %indvars.iv.next652.1 = add nuw nsw i64 %indvars.iv651, 2 ; 2 uses
  %i.bsa = mul nuw nsw i64 %indvars.iv.next652.1, %i.b
  %gep768.2 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.bsa
  %i.bsb = load double, ptr %gep768.2, align 8, !tbaa !12
  %i.bsc = mul nsw i64 %indvars.iv.next652.1, %i.ih
  %gep770.2 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.bsc
  store double %i.bsb, ptr %gep770.2, align 8, !tbaa !12
  %indvars.iv.next652.2 = add nuw nsw i64 %indvars.iv651, 3 ; 2 uses
  %i.bsd = mul nuw nsw i64 %indvars.iv.next652.2, %i.b
  %gep768.3 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.bsd
  %i.bse = load double, ptr %gep768.3, align 8, !tbaa !12
  %i.bsf = mul nsw i64 %indvars.iv.next652.2, %i.ih
  %gep770.3 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.bsf
  store double %i.bse, ptr %gep770.3, align 8, !tbaa !12
  %indvars.iv.next652.3 = add nuw nsw i64 %indvars.iv651, 4 ; 2 uses
  %i.bsg = mul nuw nsw i64 %indvars.iv.next652.3, %i.b
  %gep768.4 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.bsg
  %i.bsh = load double, ptr %gep768.4, align 8, !tbaa !12
  %i.bsi = mul nsw i64 %indvars.iv.next652.3, %i.ih
  %gep770.4 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.bsi
  store double %i.bsh, ptr %gep770.4, align 8, !tbaa !12
  %indvars.iv.next652.4 = add nuw nsw i64 %indvars.iv651, 5 ; 2 uses
  %i.bsj = mul nuw nsw i64 %indvars.iv.next652.4, %i.b
  %gep768.5 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.bsj
  %i.bsk = load double, ptr %gep768.5, align 8, !tbaa !12
  %i.bsl = mul nsw i64 %indvars.iv.next652.4, %i.ih
  %gep770.5 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.bsl
  store double %i.bsk, ptr %gep770.5, align 8, !tbaa !12
  %indvars.iv.next652.5 = add nuw nsw i64 %indvars.iv651, 6 ; 2 uses
  %i.bsm = mul nuw nsw i64 %indvars.iv.next652.5, %i.b
  %gep768.6 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.bsm
  %i.bsn = load double, ptr %gep768.6, align 8, !tbaa !12
  %i.bso = mul nsw i64 %indvars.iv.next652.5, %i.ih
  %gep770.6 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.bso
  store double %i.bsn, ptr %gep770.6, align 8, !tbaa !12
  %indvars.iv.next652.6 = add nuw nsw i64 %indvars.iv651, 7 ; 2 uses
  %i.bsp = mul nuw nsw i64 %indvars.iv.next652.6, %i.b
  %gep768.7 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.bsp
  %i.bsq = load double, ptr %gep768.7, align 8, !tbaa !12
  %i.bsr = mul nsw i64 %indvars.iv.next652.6, %i.ih
  %gep770.7 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %i.bsr
  store double %i.bsq, ptr %gep770.7, align 8, !tbaa !12
  %indvars.iv.next652.7 = add nuw nsw i64 %indvars.iv651, 8 ; 2 uses
  %exitcond655.not.7 = icmp eq i64 %indvars.iv.next652.7, %wide.trip.count675
  br i1 %exitcond655.not.7, label %._crit_edge525, label %vec.epilog.scalar.ph1820, !llvm.loop !128

._crit_edge541:                                   ; preds = %bb.al
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond671.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count670
  br i1 %exitcond671.not, label %.lr.ph.i428.preheader, label %.preheader448

bb.ak:                                            ; preds = %.lr.ph540, %bb.al
  %indvars.iv662 = phi i64 [ 0, %.lr.ph540 ], [ %indvars.iv.next663, %bb.al ] ; 4 uses
  %i.bss = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv662
  %i.bst = load double, ptr %i.bss, align 8, !tbaa !12 ; 4 uses
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %i.brt, i64 %indvars.iv662 ; 2 uses
  store double %i.bst, ptr %i.bsu, align 8, !tbaa !12
  br i1 %.not422526, label %bb.al, label %iter.check858

iter.check858:                                    ; preds = %bb.ak
  %10 = load ptr, ptr %i.po, align 8, !tbaa !25   ; 3 uses
  %11 = trunc i64 %indvars.iv662 to i32
  %12 = mul i32 %i.a, %11                         ; 3 uses
  br i1 %min.iters.check824, label %vec.epilog.scalar.ph859.preheader, label %vector.main.loop.iter.check825

vector.main.loop.iter.check825:                   ; preds = %iter.check858
  br i1 %min.iters.check826, label %vec.epilog.ph862, label %vector.ph827

vector.ph827:                                     ; preds = %vector.main.loop.iter.check825
  %i.bsv = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.bst, i64 0
  %broadcast.splatinsert829 = insertelement <4 x i32> poison, i32 %12, i64 0
  %broadcast.splat830 = shufflevector <4 x i32> %broadcast.splatinsert829, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph827
  %index830 = phi i64 [ 0, %vector.ph827 ], [ %index.next850, %vector.body829 ] ; 3 uses
  %vec.phi831 = phi <4 x double> [ %i.bsv, %vector.ph827 ], [ %i.btm, %vector.body829 ]
  %vec.phi832 = phi <4 x double> [ zeroinitializer, %vector.ph827 ], [ %i.btn, %vector.body829 ]
  %vec.phi833 = phi <4 x double> [ zeroinitializer, %vector.ph827 ], [ %i.bto, %vector.body829 ]
  %vec.phi834 = phi <4 x double> [ zeroinitializer, %vector.ph827 ], [ %i.btp, %vector.body829 ]
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index830 ; 4 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 16
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsw, i64 32
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsw, i64 48
  %wide.load = load <4 x i32>, ptr %i.bsw, align 4, !tbaa !33
  %wide.load835 = load <4 x i32>, ptr %i.bsx, align 4, !tbaa !33
  %wide.load836 = load <4 x i32>, ptr %i.bsy, align 4, !tbaa !33
  %wide.load837 = load <4 x i32>, ptr %i.bsz, align 4, !tbaa !33
  %13 = add nsw <4 x i32> %wide.load, %broadcast.splat830
  %14 = add nsw <4 x i32> %wide.load835, %broadcast.splat830
  %15 = add nsw <4 x i32> %wide.load836, %broadcast.splat830
  %16 = add nsw <4 x i32> %wide.load837, %broadcast.splat830
  %i.bta = sext <4 x i32> %13 to <4 x i64>
  %i.btb = sext <4 x i32> %14 to <4 x i64>
  %i.btc = sext <4 x i32> %15 to <4 x i64>
  %i.btd = sext <4 x i32> %16 to <4 x i64>
  %wide.gep838 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.bta
  %wide.gep839 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.btb
  %wide.gep840 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.btc
  %wide.gep841 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.btd
  %wide.masked.gather842 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep838, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather843 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep839, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather844 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep840, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather845 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep841, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.bte = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index830 ; 4 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 32
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bte, i64 64
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bte, i64 96
  %wide.load846 = load <4 x double>, ptr %i.bte, align 8, !tbaa !12
  %wide.load847 = load <4 x double>, ptr %i.btf, align 8, !tbaa !12
  %wide.load848 = load <4 x double>, ptr %i.btg, align 8, !tbaa !12
  %wide.load849 = load <4 x double>, ptr %i.bth, align 8, !tbaa !12
  %i.bti = fmul reassoc nsz arcp contract afn <4 x double> %wide.load846, %wide.masked.gather842
  %i.btj = fmul reassoc nsz arcp contract afn <4 x double> %wide.load847, %wide.masked.gather843
  %i.btk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load848, %wide.masked.gather844
  %i.btl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load849, %wide.masked.gather845
  %i.btm = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi831, %i.bti ; 2 uses
  %i.btn = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi832, %i.btj ; 2 uses
  %i.bto = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi833, %i.btk ; 2 uses
  %i.btp = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi834, %i.btl ; 2 uses
  %index.next850 = add nuw i64 %index830, 16      ; 2 uses
  %i.btq = icmp eq i64 %index.next850, %n.vec828
  br i1 %i.btq, label %middle.block851, label %vector.body829, !llvm.loop !129

middle.block851:                                  ; preds = %vector.body829
  %bin.rdx852 = fadd reassoc nsz arcp contract afn <4 x double> %i.btn, %i.btm
  %bin.rdx853 = fadd reassoc nsz arcp contract afn <4 x double> %i.bto, %bin.rdx852
  %bin.rdx854 = fadd reassoc nsz arcp contract afn <4 x double> %i.btp, %bin.rdx853
  %i.btr = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx854) ; 3 uses
  br i1 %cmp.n855, label %._crit_edge536, label %vec.epilog.iter.check860

vec.epilog.iter.check860:                         ; preds = %middle.block851
  br i1 %min.epilog.iters.check861, label %vec.epilog.scalar.ph859.preheader, label %vec.epilog.ph862, !prof !22

vec.epilog.ph862:                                 ; preds = %vector.main.loop.iter.check825, %vec.epilog.iter.check860
  %vec.epilog.resume.val856 = phi i64 [ %n.vec828, %vec.epilog.iter.check860 ], [ 0, %vector.main.loop.iter.check825 ]
  %bc.merge.rdx857 = phi double [ %i.btr, %vec.epilog.iter.check860 ], [ %i.bst, %vector.main.loop.iter.check825 ]
  %i.bts = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx857, i64 0
  %broadcast.splatinsert866 = insertelement <4 x i32> poison, i32 %12, i64 0
  %broadcast.splat867 = shufflevector <4 x i32> %broadcast.splatinsert866, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body864

vec.epilog.vector.body864:                        ; preds = %vec.epilog.vector.body864, %vec.epilog.ph862
  %index865 = phi i64 [ %vec.epilog.resume.val856, %vec.epilog.ph862 ], [ %index.next871, %vec.epilog.vector.body864 ] ; 3 uses
  %vec.phi866 = phi <4 x double> [ %i.bts, %vec.epilog.ph862 ], [ %i.btx, %vec.epilog.vector.body864 ]
  %i.btt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index865
  %wide.load867 = load <4 x i32>, ptr %i.btt, align 4, !tbaa !33
  %17 = add nsw <4 x i32> %wide.load867, %broadcast.splat867
  %i.btu = sext <4 x i32> %17 to <4 x i64>
  %wide.gep868 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.btu
  %wide.masked.gather869 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep868, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.btv = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %index865
  %wide.load870 = load <4 x double>, ptr %i.btv, align 8, !tbaa !12
  %i.btw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load870, %wide.masked.gather869
  %i.btx = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi866, %i.btw ; 2 uses
  %index.next871 = add nuw i64 %index865, 4       ; 2 uses
  %i.bty = icmp eq i64 %index.next871, %n.vec863
  br i1 %i.bty, label %vec.epilog.middle.block872, label %vec.epilog.vector.body864, !llvm.loop !130

vec.epilog.middle.block872:                       ; preds = %vec.epilog.vector.body864
  %i.btz = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.btx) ; 2 uses
  br i1 %cmp.n873, label %._crit_edge536, label %vec.epilog.scalar.ph859.preheader

vec.epilog.scalar.ph859.preheader:                ; preds = %iter.check858, %vec.epilog.iter.check860, %vec.epilog.middle.block872
  %indvars.iv659.ph = phi i64 [ 0, %iter.check858 ], [ %n.vec828, %vec.epilog.iter.check860 ], [ %n.vec863, %vec.epilog.middle.block872 ]
  %.ph = phi double [ %i.bst, %iter.check858 ], [ %i.btr, %vec.epilog.iter.check860 ], [ %i.btz, %vec.epilog.middle.block872 ]
  br label %vec.epilog.scalar.ph859

._crit_edge536:                                   ; preds = %vec.epilog.scalar.ph859, %vec.epilog.middle.block872, %middle.block851
  %.lcssa792 = phi double [ %i.btz, %vec.epilog.middle.block872 ], [ %i.btr, %middle.block851 ], [ %i.buj, %vec.epilog.scalar.ph859 ]
  store double %.lcssa792, ptr %i.bsu, align 8, !tbaa !12
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge536, %bb.ak
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1 ; 2 uses
  %exitcond666.not = icmp eq i64 %indvars.iv.next663, %wide.trip.count675
  br i1 %exitcond666.not, label %._crit_edge541, label %bb.ak

vec.epilog.scalar.ph859:                          ; preds = %vec.epilog.scalar.ph859.preheader, %vec.epilog.scalar.ph859
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %vec.epilog.scalar.ph859 ], [ %indvars.iv659.ph, %vec.epilog.scalar.ph859.preheader ] ; 4 uses
  %i.bua = phi double [ %i.buj, %vec.epilog.scalar.ph859 ], [ %.ph, %vec.epilog.scalar.ph859.preheader ]
  %i.bub = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv659
  %i.buc = load i32, ptr %i.bub, align 4, !tbaa !33
  %18 = add nsw i32 %i.buc, %12
  %i.bud = sext i32 %18 to i64
  %i.bue = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bud
  %i.buf = load double, ptr %i.bue, align 8, !tbaa !12
  %i.bug = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv659
  %i.buh = load double, ptr %i.bug, align 8, !tbaa !12
  %i.bui = fmul reassoc nsz arcp contract afn double %i.buh, %i.buf
  %i.buj = fsub reassoc nsz arcp contract afn double %i.bua, %i.bui ; 2 uses
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1
  %.not424.not = icmp slt i64 %indvars.iv659, %i.oh
  br i1 %.not424.not, label %vec.epilog.scalar.ph859, label %._crit_edge536, !llvm.loop !131

.lr.ph.i428:                                      ; preds = %.lr.ph.i428.preheader, %.lr.ph.i428
  %indvars.iv.i430 = phi i64 [ %indvars.iv.next.i431.1, %.lr.ph.i428 ], [ 0, %.lr.ph.i428.preheader ] ; 5 uses
  %.03.i = phi double [ %i.bvn, %.lr.ph.i428 ], [ 0.000000e+00, %.lr.ph.i428.preheader ]
  %.0261.i = phi double [ %i.bvp, %.lr.ph.i428 ], [ 0.000000e+00, %.lr.ph.i428.preheader ] ; 2 uses
  %niter2124 = phi i64 [ %niter2124.next.1, %.lr.ph.i428 ], [ 0, %.lr.ph.i428.preheader ]
  %i.buk = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i430
  %i.bul = load double, ptr %i.buk, align 8, !tbaa !12 ; 2 uses
  %i.bum = fmul reassoc nsz arcp contract afn double %i.bul, %i.bul
  %i.bun = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i430
  %i.buo = load double, ptr %i.bun, align 8, !tbaa !12 ; 2 uses
  %i.bup = fmul reassoc nsz arcp contract afn double %i.buo, %i.buo
  %i.buq = fadd reassoc nsz arcp contract afn double %i.bup, %i.bum
  %i.bur = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i430
  %i.bus = load double, ptr %i.bur, align 8, !tbaa !12 ; 2 uses
  %i.but = fmul reassoc nsz arcp contract afn double %i.bus, %i.bus
  %i.buu = fadd reassoc nsz arcp contract afn double %i.buq, %i.but
  %i.buv = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.buu) ; 3 uses
  %i.buw = fmul reassoc nsz arcp contract afn double %i.buv, %i.jn
  %i.bux = fadd reassoc nsz arcp contract afn double %i.buw, %.03.i
  %i.buy = fcmp reassoc nsz arcp contract afn ogt double %.0261.i, %i.buv
  %i.buz = select reassoc nsz arcp contract afn i1 %i.buy, double %.0261.i, double %i.buv ; 2 uses
  %indvars.iv.next.i431 = or disjoint i64 %indvars.iv.i430, 1 ; 3 uses
  %i.bva = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next.i431
  %i.bvb = load double, ptr %i.bva, align 8, !tbaa !12 ; 2 uses
  %i.bvc = fmul reassoc nsz arcp contract afn double %i.bvb, %i.bvb
  %i.bvd = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i431
  %i.bve = load double, ptr %i.bvd, align 8, !tbaa !12 ; 2 uses
  %i.bvf = fmul reassoc nsz arcp contract afn double %i.bve, %i.bve
  %i.bvg = fadd reassoc nsz arcp contract afn double %i.bvf, %i.bvc
  %i.bvh = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next.i431
  %i.bvi = load double, ptr %i.bvh, align 8, !tbaa !12 ; 2 uses
  %i.bvj = fmul reassoc nsz arcp contract afn double %i.bvi, %i.bvi
  %i.bvk = fadd reassoc nsz arcp contract afn double %i.bvg, %i.bvj
  %i.bvl = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bvk) ; 3 uses
  %i.bvm = fmul reassoc nsz arcp contract afn double %i.bvl, %i.jo
  %i.bvn = fadd reassoc nsz arcp contract afn double %i.bvm, %i.bux ; 3 uses
  %i.bvo = fcmp reassoc nsz arcp contract afn ogt double %i.buz, %i.bvl
  %i.bvp = select reassoc nsz arcp contract afn i1 %i.bvo, double %i.buz, double %i.bvl ; 3 uses
  %indvars.iv.next.i431.1 = add nuw nsw i64 %indvars.iv.i430, 2 ; 2 uses
  %niter2124.next.1 = add i64 %niter2124, 2       ; 2 uses
  %niter2124.ncmp.1 = icmp eq i64 %niter2124.next.1, %unroll_iter2123
  br i1 %niter2124.ncmp.1, label %compute_error.exit.unr-lcssa, label %.lr.ph.i428

compute_error.exit.unr-lcssa:                     ; preds = %.lr.ph.i428
  br i1 %lcmp.mod2119.not.a, label %compute_error.exit, label %.lr.ph.i428.epil.preheader

.lr.ph.i428.epil.preheader:                       ; preds = %compute_error.exit.unr-lcssa, %.lr.ph.i428.preheader
  %indvars.iv.i430.epil.init = phi i64 [ 0, %.lr.ph.i428.preheader ], [ %indvars.iv.next.i431.1, %compute_error.exit.unr-lcssa ] ; 3 uses
  %.03.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i428.preheader ], [ %i.bvn, %compute_error.exit.unr-lcssa ]
  %.0261.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i428.preheader ], [ %i.bvp, %compute_error.exit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod2122)
  %i.bvq = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i430.epil.init
  %i.bvr = load double, ptr %i.bvq, align 8, !tbaa !12 ; 2 uses
  %i.bvs = fmul reassoc nsz arcp contract afn double %i.bvr, %i.bvr
  %i.bvt = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i430.epil.init
  %i.bvu = load double, ptr %i.bvt, align 8, !tbaa !12 ; 2 uses
  %i.bvv = fmul reassoc nsz arcp contract afn double %i.bvu, %i.bvu
  %i.bvw = fadd reassoc nsz arcp contract afn double %i.bvv, %i.bvs
  %i.bvx = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i430.epil.init
  %i.bvy = load double, ptr %i.bvx, align 8, !tbaa !12 ; 2 uses
  %i.bvz = fmul reassoc nsz arcp contract afn double %i.bvy, %i.bvy
  %i.bwa = fadd reassoc nsz arcp contract afn double %i.bvw, %i.bvz
  %i.bwb = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bwa) ; 3 uses
  %i.bwc = fmul reassoc nsz arcp contract afn double %i.bwb, %i.jp
  %i.bwd = fadd reassoc nsz arcp contract afn double %i.bwc, %.03.i.epil.init
  %i.bwe = fcmp reassoc nsz arcp contract afn ogt double %.0261.i.epil.init, %i.bwb
  %i.bwf = select reassoc nsz arcp contract afn i1 %i.bwe, double %.0261.i.epil.init, double %i.bwb
  br label %compute_error.exit

compute_error.exit:                               ; preds = %compute_error.exit.unr-lcssa, %.lr.ph.i428.epil.preheader
  %.lcssa2004 = phi double [ %i.bvn, %compute_error.exit.unr-lcssa ], [ %i.bwd, %.lr.ph.i428.epil.preheader ] ; 4 uses
  %.lcssa2003 = phi double [ %i.bvp, %compute_error.exit.unr-lcssa ], [ %i.bwf, %.lr.ph.i428.epil.preheader ] ; 2 uses
  %i.bwg = icmp eq i32 %spec.select, %i.io
  br i1 %i.bwg, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %compute_error.exit
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store double %.lcssa2004, ptr %8, align 8, !tbaa !12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %.not420, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store double %.lcssa2003, ptr %9, align 8, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bwh = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.bwi = add nsw i32 %i.ny, 1
  %i.bwj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bwh, ptr noundef nonnull @.str.1, i32 noundef %i.bwi, i32 noundef %i.io, double noundef %.lcssa2004, double noundef %.lcssa2003) #18 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %compute_error.exit
  %.not426 = icmp slt i64 %indvars.iv672, %i.ih
  %i.bwk = fcmp reassoc nsz arcp contract afn ult double %.lcssa2004, %.0383546
  %or.cond = select i1 %.not426, i1 true, i1 %i.bwk
  br i1 %or.cond, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bwl = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.bwm = tail call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %i.bwl) #19 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %._crit_edge549, label %bb.n

._crit_edge549:                                   ; preds = %bb.at, %bb.n, %dsvd.exit.i, %._crit_edge501
  %.3407 = phi i32 [ -1, %._crit_edge501 ], [ %i.kz, %dsvd.exit.i ], [ -1, %bb.at ], [ %i.kz, %bb.n ]
  tail call void @free(ptr noundef %i.gv) #17
  tail call void @free(ptr noundef %i.gw) #17
  tail call void @free(ptr noundef %i.ij) #17
  tail call void @free(ptr noundef %i.il) #17
  tail call void @free(ptr noundef %i.in) #17
  tail call void @free(ptr noundef %i.go) #17
  tail call void @free(ptr noundef %i.e) #17
  ret i32 %.3407
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @thinplate_color_pos(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %2, float %1)
  %i.b = fmul reassoc nsz arcp contract afn float %i.a, f0x3F22F983
  %i.c = fadd reassoc nsz arcp contract afn float %i.b, 2.000000e+00
  %i.d = fptosi float %i.c to i32
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.d to double
  %i.f = fmul reassoc nnan nsz arcp contract afn double %i.e, 2.560000e+02
  %i.g = fpext reassoc nsz arcp contract afn float %0 to double
  %i.h = fadd reassoc nsz arcp contract afn double %i.f, %i.g
  %i.i = fptrunc reassoc nsz arcp contract afn double %i.h to float
  ret float %i.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #2

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #13
end_hunk_2
