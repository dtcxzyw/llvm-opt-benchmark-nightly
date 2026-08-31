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
  %i.a = add nsw i32 %2, 4                        ; 21 uses
  %i.b = sext i32 %i.a to i64                     ; 33 uses
  %i.c = shl nsw i64 %i.b, 3                      ; 7 uses
  %i.d = mul i64 %i.c, %i.b
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 19 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.preheader462.preheader, label %.preheader458.thread

.preheader462.preheader:                          ; preds = %bb.e
  %i.g = zext nneg i32 %i.a to i64                ; 4 uses
  %wide.trip.count587 = zext nneg i32 %2 to i64   ; 13 uses
  %i.h = add nsw i64 %wide.trip.count587, -1
  br label %.preheader462

.preheader462:                                    ; preds = %.preheader462.preheader, %.unr-lcssa
  %indvars.iv = phi i64 [ 0, %.preheader462.preheader ], [ %indvars.iv.next, %.unr-lcssa ] ; 11 uses
  %i.i = sub nsw i64 %wide.trip.count587, %indvars.iv
  %.idx718 = mul nuw nsw i64 %indvars.iv, 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.idx718 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !12 ; 3 uses
  %i.n = mul nuw nsw i64 %indvars.iv, %i.g
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %invariant.gep750 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader462
  %.idx719.prol = mul nuw nsw i64 %indvars.iv, 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx719.prol ; 2 uses
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
  %gep751.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep750, i64 %indvars.iv
  store double %i.ah, ptr %gep751.prol, align 8, !tbaa !12
  %indvars.iv.next584.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader462
  %indvars.iv583.unr = phi i64 [ %indvars.iv, %.preheader462 ], [ %indvars.iv.next584.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %indvars.iv, %i.h
  br i1 %i.aj, label %.unr-lcssa, label %.preheader462.new

.lr.ph:                                           ; preds = %.unr-lcssa
  %i.ak = mul nuw nsw i32 %i.a, %2
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = zext nneg i32 %i.a to i64               ; 9 uses
  %i.an = zext nneg i32 %2 to i64
  %invariant.gep752 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.al ; 9 uses
  %invariant.gep754 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.an ; 9 uses
  %i.ao = add nsw i64 %wide.trip.count587, -1     ; 4 uses
  %xtraiter2019 = and i64 %wide.trip.count587, 7  ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 7
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count587, 2147483640
  br label %bb.g

.unr-lcssa:                                       ; preds = %.preheader462.new, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond588.not = icmp eq i64 %indvars.iv.next, %wide.trip.count587
  br i1 %exitcond588.not, label %.lr.ph, label %.preheader462

.preheader462.new:                                ; preds = %.prol.loopexit, %.preheader462.new
  %indvars.iv583 = phi i64 [ %indvars.iv.next584.1, %.preheader462.new ], [ %indvars.iv583.unr, %.prol.loopexit ] ; 5 uses
  %.idx719 = mul nuw nsw i64 %indvars.iv583, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx719 ; 2 uses
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
  %i.bk = mul nuw nsw i64 %indvars.iv583, %i.g
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bk
  store double %i.bj, ptr %gep, align 8, !tbaa !12
  %gep751 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep750, i64 %indvars.iv583
  store double %i.bj, ptr %gep751, align 8, !tbaa !12
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 3 uses
  %.idx719.1 = mul nuw nsw i64 %indvars.iv.next584, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx719.1 ; 2 uses
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
  %i.cf = mul nuw nsw i64 %indvars.iv.next584, %i.g
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.cf
  store double %i.ce, ptr %gep.1, align 8, !tbaa !12
  %gep751.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep750, i64 %indvars.iv.next584
  store double %i.ce, ptr %gep751.1, align 8, !tbaa !12
  %indvars.iv.next584.1 = add nuw nsw i64 %indvars.iv583, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next584.1, %wide.trip.count587
  br i1 %exitcond.not.1, label %.unr-lcssa, label %.preheader462.new

.lr.ph486.unr-lcssa:                              ; preds = %bb.g
  %lcmp.mod2020.not = icmp eq i64 %xtraiter2019, 0
  br i1 %lcmp.mod2020.not, label %.lr.ph486, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph486.unr-lcssa, %.lr.ph
  %indvars.iv589.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next590.7, %.lr.ph486.unr-lcssa ]
  %lcmp.mod2021 = icmp ne i64 %xtraiter2019, 0
  tail call void @llvm.assume(i1 %lcmp.mod2021)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv589.epil = phi i64 [ %indvars.iv589.epil.init, %.epil.preheader ], [ %indvars.iv.next590.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep753.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv589.epil
  store double 1.000000e+00, ptr %gep753.epil, align 8, !tbaa !12
  %i.cg = mul nuw nsw i64 %indvars.iv589.epil, %i.am
  %gep755.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.cg
  store double 1.000000e+00, ptr %gep755.epil, align 8, !tbaa !12
  %indvars.iv.next590.epil = add nuw nsw i64 %indvars.iv589.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2019
  br i1 %epil.iter.cmp.not, label %.lr.ph486, label %bb.f, !llvm.loop !14

.lr.ph486:                                        ; preds = %bb.f, %.lr.ph486.unr-lcssa
  %i.ch = add nuw nsw i32 %2, 1
  %i.ci = mul nuw nsw i32 %i.ch, %i.a
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = zext nneg i32 %i.a to i64               ; 5 uses
  %i.cl = zext nneg i32 %2 to i64
  %invariant.gep756 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cj ; 5 uses
  %invariant.gep758 = getelementptr [8 x i8], ptr %i.e, i64 %i.cl ; 5 uses
  %xtraiter2023 = and i64 %wide.trip.count587, 3  ; 3 uses
  %i.cm = icmp ult i64 %i.ao, 3
  br i1 %i.cm, label %.epil.preheader2022, label %.lr.ph486.new

.lr.ph486.new:                                    ; preds = %.lr.ph486
  %unroll_iter2027 = and i64 %wide.trip.count587, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv589 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next590.7, %bb.g ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.g ]
  %gep753 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv589
  store double 1.000000e+00, ptr %gep753, align 8, !tbaa !12
  %i.cn = mul nuw nsw i64 %indvars.iv589, %i.am
  %gep755 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.cn
  store double 1.000000e+00, ptr %gep755, align 8, !tbaa !12
  %indvars.iv.next590 = or disjoint i64 %indvars.iv589, 1 ; 2 uses
  %gep753.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590
  store double 1.000000e+00, ptr %gep753.1, align 8, !tbaa !12
  %i.co = mul nuw nsw i64 %indvars.iv.next590, %i.am
  %gep755.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.co
  store double 1.000000e+00, ptr %gep755.1, align 8, !tbaa !12
  %indvars.iv.next590.1 = or disjoint i64 %indvars.iv589, 2 ; 2 uses
  %gep753.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.1
  store double 1.000000e+00, ptr %gep753.2, align 8, !tbaa !12
  %i.cp = mul nuw nsw i64 %indvars.iv.next590.1, %i.am
  %gep755.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.cp
  store double 1.000000e+00, ptr %gep755.2, align 8, !tbaa !12
  %indvars.iv.next590.2 = or disjoint i64 %indvars.iv589, 3 ; 2 uses
  %gep753.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.2
end_hunk_0
begin_hunk_1_@thinplate_match:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !12 ; 2 uses
  %gep761 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv599
  store double %i.ei, ptr %gep761, align 8, !tbaa !12
  %i.ej = mul nuw nsw i64 %indvars.iv599, %i.dc
  %gep763 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.ej
  %i.ek = getelementptr i8, ptr %gep763, i64 16
  store double %i.ei, ptr %i.ek, align 8, !tbaa !12
  %indvars.iv.next600 = or disjoint i64 %indvars.iv599, 1 ; 3 uses
  %.idx721.1 = mul nuw nsw i64 %indvars.iv.next600, 24
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !12 ; 2 uses
  %gep761.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600
  store double %i.en, ptr %gep761.1, align 8, !tbaa !12
  %i.eo = mul nuw nsw i64 %indvars.iv.next600, %i.dc
  %gep763.1 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.eo
  %i.ep = getelementptr i8, ptr %gep763.1, i64 16
  store double %i.en, ptr %i.ep, align 8, !tbaa !12
  %indvars.iv.next600.1 = or disjoint i64 %indvars.iv599, 2 ; 3 uses
  %.idx721.2 = mul nuw nsw i64 %indvars.iv.next600.1, 24
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.2
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !12 ; 2 uses
  %gep761.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600.1
  store double %i.es, ptr %gep761.2, align 8, !tbaa !12
  %i.et = mul nuw nsw i64 %indvars.iv.next600.1, %i.dc
  %gep763.2 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.et
  %i.eu = getelementptr i8, ptr %gep763.2, i64 16
  store double %i.es, ptr %i.eu, align 8, !tbaa !12
  %indvars.iv.next600.2 = or disjoint i64 %indvars.iv599, 3 ; 3 uses
  %.idx721.3 = mul nuw nsw i64 %indvars.iv.next600.2, 24
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !12 ; 2 uses
  %gep761.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600.2
  store double %i.ex, ptr %gep761.3, align 8, !tbaa !12
  %i.ey = mul nuw nsw i64 %indvars.iv.next600.2, %i.dc
  %gep763.3 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.ey
  %i.ez = getelementptr i8, ptr %gep763.3, i64 16
  store double %i.ex, ptr %i.ez, align 8, !tbaa !12
  %indvars.iv.next600.3 = add nuw nsw i64 %indvars.iv599, 4 ; 2 uses
  %niter2035.next.3 = add i64 %niter2035, 4       ; 2 uses
  %niter2035.ncmp.3 = icmp eq i64 %niter2035.next.3, %unroll_iter2034
  br i1 %niter2035.ncmp.3, label %.lr.ph490.unr-lcssa, label %bb.k

bb.l:                                             ; preds = %bb.l, %.lr.ph490.new
  %indvars.iv604 = phi i64 [ 0, %.lr.ph490.new ], [ %indvars.iv.next605.3, %bb.l ] ; 7 uses
  %niter2042 = phi i64 [ 0, %.lr.ph490.new ], [ %niter2042.next.3, %bb.l ]
  %.idx722 = mul nuw nsw i64 %indvars.iv604, 24
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !12 ; 2 uses
  %gep765 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv604
  store double %i.fc, ptr %gep765, align 8, !tbaa !12
  %i.fd = mul nuw nsw i64 %indvars.iv604, %i.ed
  %gep767 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fd
  %i.fe = getelementptr i8, ptr %gep767, i64 24
  store double %i.fc, ptr %i.fe, align 8, !tbaa !12
  %indvars.iv.next605 = or disjoint i64 %indvars.iv604, 1 ; 3 uses
  %.idx722.1 = mul nuw nsw i64 %indvars.iv.next605, 24
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !12 ; 2 uses
  %gep765.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605
  store double %i.fh, ptr %gep765.1, align 8, !tbaa !12
  %i.fi = mul nuw nsw i64 %indvars.iv.next605, %i.ed
  %gep767.1 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fi
  %i.fj = getelementptr i8, ptr %gep767.1, i64 24
  store double %i.fh, ptr %i.fj, align 8, !tbaa !12
  %indvars.iv.next605.1 = or disjoint i64 %indvars.iv604, 2 ; 3 uses
  %.idx722.2 = mul nuw nsw i64 %indvars.iv.next605.1, 24
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.2
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !12 ; 2 uses
  %gep765.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605.1
  store double %i.fm, ptr %gep765.2, align 8, !tbaa !12
  %i.fn = mul nuw nsw i64 %indvars.iv.next605.1, %i.ed
  %gep767.2 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fn
  %i.fo = getelementptr i8, ptr %gep767.2, i64 24
  store double %i.fm, ptr %i.fo, align 8, !tbaa !12
  %indvars.iv.next605.2 = or disjoint i64 %indvars.iv604, 3 ; 3 uses
  %.idx722.3 = mul nuw nsw i64 %indvars.iv.next605.2, 24
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !12 ; 2 uses
  %gep765.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605.2
  store double %i.fr, ptr %gep765.3, align 8, !tbaa !12
  %i.fs = mul nuw nsw i64 %indvars.iv.next605.2, %i.ed
  %gep767.3 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fs
  %i.ft = getelementptr i8, ptr %gep767.3, i64 24
  store double %i.fr, ptr %i.ft, align 8, !tbaa !12
  %indvars.iv.next605.3 = add nuw nsw i64 %indvars.iv604, 4 ; 2 uses
  %niter2042.next.3 = add i64 %niter2042, 4       ; 2 uses
  %niter2042.ncmp.3 = icmp eq i64 %niter2042.next.3, %unroll_iter2041
  br i1 %niter2042.ncmp.3, label %.preheader458.thread.loopexit.unr-lcssa, label %bb.l

.preheader458.thread.loopexit.unr-lcssa:          ; preds = %bb.l
  %lcmp.mod2039.not = icmp eq i64 %xtraiter2037, 0
  br i1 %lcmp.mod2039.not, label %.preheader458.thread, label %.epil.preheader2036

.epil.preheader2036:                              ; preds = %.preheader458.thread.loopexit.unr-lcssa, %.lr.ph490
  %indvars.iv604.epil.init = phi i64 [ 0, %.lr.ph490 ], [ %indvars.iv.next605.3, %.preheader458.thread.loopexit.unr-lcssa ]
  %lcmp.mod2040 = icmp ne i64 %xtraiter2037, 0
  tail call void @llvm.assume(i1 %lcmp.mod2040)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader2036
  %indvars.iv604.epil = phi i64 [ %indvars.iv604.epil.init, %.epil.preheader2036 ], [ %indvars.iv.next605.epil, %bb.m ] ; 4 uses
  %epil.iter2038 = phi i64 [ 0, %.epil.preheader2036 ], [ %epil.iter2038.next, %bb.m ]
  %.idx722.epil = mul nuw nsw i64 %indvars.iv604.epil, 24
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.epil
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !12 ; 2 uses
  %gep765.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv604.epil
  store double %i.fw, ptr %gep765.epil, align 8, !tbaa !12
  %i.fx = mul nuw nsw i64 %indvars.iv604.epil, %i.ed
  %gep767.epil = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fx
  %i.fy = getelementptr i8, ptr %gep767.epil, i64 24
  store double %i.fw, ptr %i.fy, align 8, !tbaa !12
  %indvars.iv.next605.epil = add nuw nsw i64 %indvars.iv604.epil, 1
  %epil.iter2038.next = add i64 %epil.iter2038, 1 ; 2 uses
  %epil.iter2038.cmp.not = icmp eq i64 %epil.iter2038.next, %xtraiter2037
  br i1 %epil.iter2038.cmp.not, label %.preheader458.thread, label %bb.m, !llvm.loop !18

.preheader458.thread:                             ; preds = %.preheader458.thread.loopexit.unr-lcssa, %bb.m, %bb.e
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
  br i1 %i.gp, label %.lr.ph498, label %._crit_edge499

.lr.ph498:                                        ; preds = %.preheader458.thread
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count624 = zext nneg i32 %smax to i64 ; 7 uses
  %min.iters.check = icmp slt i32 %2, 0
  %min.iters.check803 = icmp slt i32 %2, 12
  %i.gq = and i64 %wide.trip.count624, 12
  %n.vec = and i64 %wide.trip.count624, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count624
  %min.epilog.iters.check = icmp eq i64 %i.gq, 0
  %n.vec815 = and i64 %wide.trip.count624, 2147483644 ; 3 uses
  %broadcast.splatinsert816 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat817 = shufflevector <4 x i64> %broadcast.splatinsert816, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n827 = icmp eq i64 %n.vec815, %wide.trip.count624
  br label %iter.check

._crit_edge499:                                   ; preds = %.loopexit, %.preheader458.thread
  %i.gr = zext i32 %i.a to i64                    ; 48 uses
  %i.gs = sext i32 %1 to i64
  %i.gt = shl nsw i64 %i.gs, 3                    ; 2 uses
  %i.gu = mul i64 %i.gt, %i.b
  %i.gv = tail call noalias ptr @malloc(i64 noundef %i.gu) #15 ; 13 uses
  %i.gw = tail call noalias ptr @malloc(i64 noundef %i.gt) #15 ; 8 uses
  %i.gx = icmp sgt i32 %1, 0                      ; 3 uses
  br i1 %i.gx, label %.lr.ph504.preheader, label %._crit_edge505

iter.check:                                       ; preds = %.loopexit, %.lr.ph498
  %indvars.iv620 = phi i64 [ 0, %.lr.ph498 ], [ %indvars.iv.next621, %.loopexit ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv620
  %invariant.gep768 = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv620 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check803, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check ] ; 5 uses
  %vec.phi = phi <4 x double> [ %i.hh, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi804 = phi <4 x double> [ %i.hi, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi805 = phi <4 x double> [ %i.hj, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi806 = phi <4 x double> [ %i.hk, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.gz = mul nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.ha = mul nsw <4 x i64> %step.add, %broadcast.splat
  %i.hb = mul nsw <4 x i64> %step.add.2, %broadcast.splat
  %i.hc = mul nsw <4 x i64> %step.add.3, %broadcast.splat
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.gz
  %wide.gep807 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.ha
  %wide.gep808 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.hb
  %wide.gep809 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.hc
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %wide.masked.gather810 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep807, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %wide.masked.gather811 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep808, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %wide.masked.gather812 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep809, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %i.hd = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather, %wide.masked.gather
  %i.he = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather810, %wide.masked.gather810
  %i.hf = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather811, %wide.masked.gather811
  %i.hg = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather812, %wide.masked.gather812
  %i.hh = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi, %i.hd ; 2 uses
  %i.hi = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi804, %i.he ; 2 uses
  %i.hj = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi805, %i.hf ; 2 uses
  %i.hk = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi806, %i.hg ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x double> %i.hi, %i.hh
  %bin.rdx813 = fadd reassoc nsz arcp contract afn <4 x double> %i.hj, %bin.rdx
  %bin.rdx814 = fadd reassoc nsz arcp contract afn <4 x double> %i.hk, %bin.rdx813
  %i.hm = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx814) ; 3 uses
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi double [ %i.hm, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.hn = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx, i64 0
  %broadcast.splatinsert818 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat819 = shufflevector <4 x i64> %broadcast.splatinsert818, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat819, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index820 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next825, %vec.epilog.vector.body ]
  %vec.ind821 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next826, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi822 = phi <4 x double> [ %i.hn, %vec.epilog.ph ], [ %i.hq, %vec.epilog.vector.body ]
  %i.ho = mul nuw nsw <4 x i64> %vec.ind821, %broadcast.splat817
  %wide.gep823 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.ho
  %wide.masked.gather824 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep823, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12 ; 2 uses
  %i.hp = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather824, %wide.masked.gather824
  %i.hq = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi822, %i.hp ; 2 uses
  %index.next825 = add nuw i64 %index820, 4       ; 2 uses
  %vec.ind.next826 = add nuw nsw <4 x i64> %vec.ind821, splat (i64 4)
  %i.hr = icmp eq i64 %index.next825, %n.vec815
  br i1 %i.hr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hs = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.hq) ; 2 uses
  br i1 %cmp.n827, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv615.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec815, %vec.epilog.middle.block ]
  %.ph2012 = phi double [ 0.000000e+00, %iter.check ], [ %i.hm, %vec.epilog.iter.check ], [ %i.hs, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa802 = phi double [ %i.hs, %vec.epilog.middle.block ], [ %i.hm, %middle.block ], [ %i.hz, %vec.epilog.scalar.ph ]
  %i.ht = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %.lcssa802)
  %i.hu = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ht
  store double %i.hu, ptr %i.gy, align 8, !tbaa !12
  %indvars.iv.next621 = add nuw nsw i64 %indvars.iv620, 1 ; 2 uses
  %exitcond625.not = icmp eq i64 %indvars.iv.next621, %wide.trip.count624
  br i1 %exitcond625.not, label %._crit_edge499, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv615 = phi i64 [ %indvars.iv.next616, %vec.epilog.scalar.ph ], [ %indvars.iv615.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hv = phi double [ %i.hz, %vec.epilog.scalar.ph ], [ %.ph2012, %vec.epilog.scalar.ph.preheader ]
  %i.hw = mul nsw i64 %indvars.iv615, %i.b
  %gep769 = getelementptr [8 x i8], ptr %invariant.gep768, i64 %i.hw
  %i.hx = load double, ptr %gep769, align 8, !tbaa !12 ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn double %i.hx, %i.hx
  %i.hz = fadd reassoc nsz arcp contract afn double %i.hv, %i.hy ; 2 uses
  %indvars.iv.next616 = add nuw nsw i64 %indvars.iv615, 1 ; 2 uses
  %exitcond619.not = icmp eq i64 %indvars.iv.next616, %wide.trip.count624
  br i1 %exitcond619.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !24

.lr.ph504.preheader:                              ; preds = %._crit_edge499
  %i.ia = zext nneg i32 %1 to i64
  %i.ib = shl nuw nsw i64 %i.ia, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gw, ptr align 8 %4, i64 %i.ib, i1 false), !tbaa !25
  %wide.trip.count632 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter2043 = and i64 %wide.trip.count632, 3  ; 3 uses
  %i.ic = icmp ult i32 %1, 4
  br i1 %i.ic, label %.lr.ph504.epil.preheader, label %.lr.ph504.preheader.new

.lr.ph504.preheader.new:                          ; preds = %.lr.ph504.preheader
  %unroll_iter2047 = and i64 %wide.trip.count632, 2147483644
  br label %.lr.ph504

._crit_edge505.loopexit.unr-lcssa:                ; preds = %.lr.ph504
  %lcmp.mod2045.not = icmp eq i64 %xtraiter2043, 0
  br i1 %lcmp.mod2045.not, label %._crit_edge505, label %.lr.ph504.epil.preheader

.lr.ph504.epil.preheader:                         ; preds = %._crit_edge505.loopexit.unr-lcssa, %.lr.ph504.preheader
  %indvars.iv629.epil.init = phi i64 [ 0, %.lr.ph504.preheader ], [ %indvars.iv.next630.3, %._crit_edge505.loopexit.unr-lcssa ]
  %lcmp.mod2046 = icmp ne i64 %xtraiter2043, 0
  tail call void @llvm.assume(i1 %lcmp.mod2046)
  br label %.lr.ph504.epil

.lr.ph504.epil:                                   ; preds = %.lr.ph504.epil, %.lr.ph504.epil.preheader
  %indvars.iv629.epil = phi i64 [ %indvars.iv629.epil.init, %.lr.ph504.epil.preheader ], [ %indvars.iv.next630.epil, %.lr.ph504.epil ] ; 3 uses
  %epil.iter2044 = phi i64 [ 0, %.lr.ph504.epil.preheader ], [ %epil.iter2044.next, %.lr.ph504.epil ]
  %i.id = mul nuw nsw i64 %indvars.iv629.epil, %i.gr
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv629.epil
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ie, ptr align 8 %i.ig, i64 %i.c, i1 false)
  %indvars.iv.next630.epil = add nuw nsw i64 %indvars.iv629.epil, 1
  %epil.iter2044.next = add i64 %epil.iter2044, 1 ; 2 uses
  %epil.iter2044.cmp.not = icmp eq i64 %epil.iter2044.next, %xtraiter2043
  br i1 %epil.iter2044.cmp.not, label %._crit_edge505, label %.lr.ph504.epil, !llvm.loop !28

._crit_edge505:                                   ; preds = %._crit_edge505.loopexit.unr-lcssa, %.lr.ph504.epil, %._crit_edge499
  %i.ih = sext i32 %5 to i64                      ; 105 uses
  %i.ii = shl nsw i64 %i.ih, 3                    ; 3 uses
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ii) #15 ; 15 uses
  %i.ik = mul i64 %i.ii, %i.ih
  %i.il = tail call noalias ptr @malloc(i64 noundef %i.ik) #15 ; 10 uses
  %i.im = mul nsw i64 %i.ih, %i.b
  %i.in = tail call noalias ptr @calloc(i64 noundef %i.im, i64 noundef 8) #16 ; 31 uses
  br i1 %i.gp, label %.lr.ph552, label %._crit_edge553

.lr.ph552:                                        ; preds = %._crit_edge505
  %i.io = add nsw i32 %5, -4                      ; 3 uses
  %i.ip = add i32 %5, -1                          ; 8 uses
  %.0661700.i.i = add i32 %5, 1                   ; 3 uses
  %i.iq = xor i32 %5, -1
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gr ; 3 uses
  %.idx = shl nuw nsw i64 %i.gr, 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx ; 3 uses
  %i.it = uitofp nneg i32 %i.a to double          ; 3 uses
  %smax637 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count680 = zext nneg i32 %smax637 to i64 ; 19 uses
  %wide.trip.count649 = zext nneg i32 %1 to i64
  %wide.trip.count675 = zext nneg i32 %1 to i64
  %i.iu = shl nuw nsw i64 %i.gr, 3                ; 2 uses
  %scevgep1002 = getelementptr i8, ptr %i.in, i64 %i.iu
  %scevgep1005 = getelementptr i8, ptr %i.in, i64 %i.iu
  %i.iv = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.iw = add nsw i64 %i.iv, 8
  %i.ix = sext i32 %i.ip to i64
  %i.iy = add i32 %2, 2
  %i.iz = sext i32 %i.ip to i64
  %i.ja = shl nuw nsw i64 %i.gr, 3
  %i.jb = getelementptr i8, ptr %i.in, i64 %i.ja
  %scevgep1608 = getelementptr i8, ptr %i.jb, i64 -8
  %i.jc = add nsw i64 %i.gr, -1                   ; 4 uses
  %i.jd = xor i32 %2, 4
  %i.je = add i32 %2, 3
  %xtraiter2049 = and i64 %wide.trip.count680, 3  ; 3 uses
  %i.jf = icmp slt i32 %2, 0
  %unroll_iter2054 = and i64 %wide.trip.count680, 2147483644
  %lcmp.mod2051.not = icmp eq i64 %xtraiter2049, 0
  %lcmp.mod2053 = icmp ne i64 %xtraiter2049, 0
  %min.iters.check1846 = icmp slt i32 %2, 0
  %min.iters.check1848 = icmp slt i32 %2, 12
  %i.jg = and i64 %wide.trip.count680, 12
  %n.vec1850 = and i64 %wide.trip.count680, 2147483632 ; 4 uses
  %broadcast.splatinsert1851 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1852 = shufflevector <4 x i64> %broadcast.splatinsert1851, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n1881 = icmp eq i64 %n.vec1850, %wide.trip.count680
  %min.epilog.iters.check1887 = icmp eq i64 %i.jg, 0
  %n.vec1889 = and i64 %wide.trip.count680, 2147483644 ; 3 uses
  %broadcast.splatinsert1890 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1891 = shufflevector <4 x i64> %broadcast.splatinsert1890, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1905 = icmp eq i64 %n.vec1889, %wide.trip.count680
  %min.iters.check1798 = icmp sgt i32 %2, -1
  %ident.check1796.not = icmp eq i32 %5, 1
  %or.cond1910 = and i1 %min.iters.check1798, %ident.check1796.not
  %min.iters.check1800 = icmp slt i32 %2, 12
  %i.jh = and i64 %wide.trip.count680, 12
  %n.vec1802 = and i64 %wide.trip.count680, 2147483632 ; 4 uses
  %broadcast.splatinsert1803 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1804 = shufflevector <4 x i64> %broadcast.splatinsert1803, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n1822 = icmp eq i64 %n.vec1802, %wide.trip.count680
  %min.epilog.iters.check1827 = icmp eq i64 %i.jh, 0
  %n.vec1829 = and i64 %wide.trip.count680, 2147483644 ; 3 uses
  %broadcast.splatinsert1830 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1831 = shufflevector <4 x i64> %broadcast.splatinsert1830, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1843 = icmp eq i64 %n.vec1829, %wide.trip.count680
  %ident.check1754.not = icmp eq i32 %5, 1
  %ident.check1708.not = icmp eq i32 %5, 1
  %ident.check1661.not = icmp eq i32 %5, 1
  %ident.check1605.not = icmp eq i32 %5, 1
  %ident.check1569.not = icmp eq i32 %5, 1
  %ident.check1165.not = icmp eq i32 %5, 1
  %ident.check1118.not = icmp eq i32 %5, 1
  %ident.check1061.not = icmp eq i32 %5, 1
  %ident.check1025.not = icmp eq i32 %5, 1
  %min.iters.check1007 = icmp ugt i32 %i.a, 7
  %ident.check1001.not = icmp eq i32 %5, 1
  %or.cond1920.a = and i1 %min.iters.check1007, %ident.check1001.not
  %n.vec1009 = and i64 %i.gr, 4294967288          ; 3 uses
  %cmp.n1022 = icmp eq i64 %n.vec1009, %i.gr
  %xtraiter2088 = and i64 %i.gr, 1
  %lcmp.mod2089.not = icmp eq i64 %xtraiter2088, 0
  %i.ji = add nsw i64 %i.gr, -1
  %ident.check1908.not = icmp eq i32 %5, 1
  %xtraiter2099 = and i64 %i.gr, 1
  %i.jj = icmp eq i64 %i.jc, 0
  %unroll_iter2103 = and i64 %i.gr, 4294967294
  %lcmp.mod2101.not = icmp eq i64 %xtraiter2099, 0
  %lcmp.mod2102 = trunc i32 %2 to i1
  %xtraiter2105 = and i64 %i.gr, 1
  %i.jk = icmp eq i64 %i.jc, 0
  %unroll_iter2109 = and i64 %i.gr, 4294967294
  %lcmp.mod2107.not = icmp eq i64 %xtraiter2105, 0
  %lcmp.mod2108 = trunc i32 %2 to i1
  %min.iters.check957 = icmp ult i32 %2, -4
  %ident.check.not = icmp eq i32 %5, 1
  %or.cond1921.a = and i1 %min.iters.check957, %ident.check.not
  %min.iters.check959 = icmp ult i32 %i.a, 16
  %i.jl = and i64 %i.gr, 12
  %n.vec961 = and i64 %i.gr, 4294967280           ; 4 uses
  %cmp.n981 = icmp eq i64 %n.vec961, %i.gr
  %min.epilog.iters.check987 = icmp eq i64 %i.jl, 0
  %n.vec989 = and i64 %i.gr, 4294967292           ; 3 uses
  %cmp.n997 = icmp eq i64 %n.vec989, %i.gr
  %xtraiter2122 = and i64 %i.gr, 1
  %i.jm = icmp eq i64 %i.jc, 0
  %unroll_iter2128 = and i64 %i.gr, 4294967294
  %i.jn = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  %i.jo = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  %lcmp.mod2124.not.a = icmp eq i64 %xtraiter2122, 0
  %lcmp.mod2127 = trunc i32 %2 to i1
  %i.jp = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  br label %bb.n

.lr.ph504:                                        ; preds = %.lr.ph504, %.lr.ph504.preheader.new
  %indvars.iv629 = phi i64 [ 0, %.lr.ph504.preheader.new ], [ %indvars.iv.next630.3, %.lr.ph504 ] ; 6 uses
  %niter2048 = phi i64 [ 0, %.lr.ph504.preheader.new ], [ %niter2048.next.3, %.lr.ph504 ]
  %i.jq = mul nuw nsw i64 %indvars.iv629, %i.gr
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv629
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jr, ptr align 8 %i.jt, i64 %i.c, i1 false)
  %indvars.iv.next630 = or disjoint i64 %indvars.iv629, 1 ; 2 uses
  %i.ju = mul nuw nsw i64 %indvars.iv.next630, %i.gr
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ju
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next630
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jv, ptr align 8 %i.jx, i64 %i.c, i1 false)
  %indvars.iv.next630.1 = or disjoint i64 %indvars.iv629, 2 ; 2 uses
  %i.jy = mul nuw nsw i64 %indvars.iv.next630.1, %i.gr
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next630.1
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jz, ptr align 8 %i.kb, i64 %i.c, i1 false)
  %indvars.iv.next630.2 = or disjoint i64 %indvars.iv629, 3 ; 2 uses
  %i.kc = mul nuw nsw i64 %indvars.iv.next630.2, %i.gr
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.kc
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next630.2
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.kd, ptr align 8 %i.kf, i64 %i.c, i1 false)
  %indvars.iv.next630.3 = add nuw nsw i64 %indvars.iv629, 4 ; 2 uses
  %niter2048.next.3 = add i64 %niter2048, 4       ; 2 uses
  %niter2048.ncmp.3 = icmp eq i64 %niter2048.next.3, %unroll_iter2047
  br i1 %niter2048.ncmp.3, label %._crit_edge505.loopexit.unr-lcssa, label %.lr.ph504

bb.n:                                             ; preds = %.lr.ph552, %bb.at
  %indvars.iv677 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next678, %bb.at ] ; 11 uses
  %.0383550 = phi double [ f0x47EFFFFFE0000000, %.lr.ph552 ], [ %.lcssa2009, %bb.at ]
  %.0385549 = phi i32 [ 0, %.lr.ph552 ], [ %spec.select428, %bb.at ] ; 2 uses
  %i.kg = trunc i64 %indvars.iv677 to i32
  %smin2111 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kg)
  %smin2112 = tail call i32 @llvm.smin.i32(i32 %smin2111, i32 %i.ip)
  %i.kh = trunc i64 %indvars.iv677 to i32
  %smin2091 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kh)
  %smin2092 = tail call i32 @llvm.smin.i32(i32 %smin2091, i32 %i.ip)
  %i.ki = trunc i64 %indvars.iv677 to i32
  %smin1609 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.ki)
  %smin1610 = tail call i32 @llvm.smin.i32(i32 %smin1609, i32 %i.ip)
  %i.kj = add nsw i32 %smin1610, 1
  %i.kk = zext i32 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.kk, 3
  %scevgep1611.a = getelementptr i8, ptr %scevgep1608, i64 %i.kl
  %i.km = trunc i64 %indvars.iv677 to i32
  %smin1330 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.km)
  %smin1331 = tail call i32 @llvm.smin.i32(i32 %smin1330, i32 %i.ip)
  %i.kn = add nsw i32 %smin1331, 1
  %i.ko = zext i32 %i.kn to i64
  %smin1191 = tail call i64 @llvm.smin.i64(i64 %indvars.iv677, i64 %i.ih)
  %smin1192 = tail call i64 @llvm.smin.i64(i64 %smin1191, i64 %i.iz) ; 2 uses
  %i.kp = trunc i64 %smin1192 to i32
  %i.kq = add nsw i32 %i.kp, 1                    ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv677, i64 %i.ih)
  %smin1064 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %i.ix) ; 2 uses
  %i.kr = shl nsw i64 %smin1064, 3                ; 2 uses
  %i.ks = sub i64 %i.iw, %i.kr
  %i.kt = trunc i64 %indvars.iv677 to i32
  %smin1066 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kt)
  %smin1067 = tail call i32 @llvm.smin.i32(i32 %smin1066, i32 %i.ip)
  %i.ku = trunc i64 %smin1064 to i32
  %i.kv = xor i32 %i.ku, -1
  %i.kw = add i32 %smin1067, %i.kv
  %i.kx = sub i64 %i.iv, %i.kr
  %i.ky = trunc i64 %indvars.iv677 to i32
  %i.kz = tail call i32 @llvm.smin.i32(i32 %i.ky, i32 %5) ; 3 uses
  %.not421 = icmp slt i32 %.0385549, %i.io
  br i1 %.not421, label %.lr.ph519, label %._crit_edge553

.lr.ph519:                                        ; preds = %bb.n
  br i1 %i.gx, label %.lr.ph519.split.us.split.us, label %.lr.ph519.split.preheader

.lr.ph519.split.preheader:                        ; preds = %.lr.ph519
  br i1 %i.jf, label %.lr.ph519.split.epil.preheader, label %.lr.ph519.split

.lr.ph519.split.us.split.us:                      ; preds = %.lr.ph519, %bb.o
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %bb.o ], [ 0, %.lr.ph519 ] ; 4 uses
  %.0379515.us.us = phi i32 [ %spec.select427.us.us, %bb.o ], [ 0, %.lr.ph519 ]
  %.0381514.us.us = phi double [ %spec.select.us.us, %bb.o ], [ 0.000000e+00, %.lr.ph519 ] ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv651
  %i.lb = load double, ptr %i.la, align 8, !tbaa !12 ; 2 uses
  %i.lc = fcmp reassoc nsz arcp contract afn ogt double %i.lb, 0.000000e+00
  br i1 %i.lc, label %.preheader451.us.us.us.preheader, label %bb.o

.preheader451.us.us.us.preheader:                 ; preds = %.lr.ph519.split.us.split.us
  %invariant.gep770 = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv651 ; 6 uses
  br label %iter.check1884

bb.o:                                             ; preds = %._crit_edge512.split.us.us.us, %.lr.ph519.split.us.split.us
  %.1377.us.us = phi nsz double [ %i.mo, %._crit_edge512.split.us.us.us ], [ 0.000000e+00, %.lr.ph519.split.us.split.us ] ; 2 uses
  %i.ld = fcmp reassoc nsz arcp contract afn ogt double %.1377.us.us, %.0381514.us.us ; 2 uses
  %spec.select.us.us = select nsz i1 %i.ld, double %.1377.us.us, double %.0381514.us.us
  %i.le = trunc nuw nsw i64 %indvars.iv651 to i32
  %spec.select427.us.us = select i1 %i.ld, i32 %i.le, i32 %.0379515.us.us ; 2 uses
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond655.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count680
  br i1 %exitcond655.not, label %._crit_edge520, label %.lr.ph519.split.us.split.us

iter.check1884:                                   ; preds = %.preheader451.us.us.us.preheader, %._crit_edge509.us.us.us
  %indvars.iv646 = phi i64 [ 0, %.preheader451.us.us.us.preheader ], [ %indvars.iv.next647, %._crit_edge509.us.us.us ] ; 2 uses
  %.0376510.us.us.us = phi double [ 0.000000e+00, %.preheader451.us.us.us.preheader ], [ %i.mn, %._crit_edge509.us.us.us ]
  %i.lf = mul nuw nsw i64 %indvars.iv646, %i.gr
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.lf ; 3 uses
  br i1 %min.iters.check1846, label %vec.epilog.scalar.ph1885.preheader, label %vector.main.loop.iter.check1847

vector.main.loop.iter.check1847:                  ; preds = %iter.check1884
  br i1 %min.iters.check1848, label %vec.epilog.ph1888, label %vector.body1853

vector.body1853:                                  ; preds = %vector.main.loop.iter.check1847, %vector.body1853
  %index1854 = phi i64 [ %index.next1875, %vector.body1853 ], [ 0, %vector.main.loop.iter.check1847 ] ; 2 uses
  %vec.ind1855 = phi <4 x i64> [ %vec.ind.next1876, %vector.body1853 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check1847 ] ; 5 uses
  %vec.phi1856 = phi <4 x double> [ %i.lt, %vector.body1853 ], [ zeroinitializer, %vector.main.loop.iter.check1847 ]
  %vec.phi1857 = phi <4 x double> [ %i.lu, %vector.body1853 ], [ zeroinitializer, %vector.main.loop.iter.check1847 ]
  %vec.phi1858 = phi <4 x double> [ %i.lv, %vector.body1853 ], [ zeroinitializer, %vector.main.loop.iter.check1847 ]
  %vec.phi1859 = phi <4 x double> [ %i.lw, %vector.body1853 ], [ zeroinitializer, %vector.main.loop.iter.check1847 ]
  %step.add1860 = add nuw <4 x i64> %vec.ind1855, splat (i64 4)
  %step.add.21861 = add nuw <4 x i64> %vec.ind1855, splat (i64 8)
  %step.add.31862 = add nuw <4 x i64> %vec.ind1855, splat (i64 12)
  %i.lh = mul nsw <4 x i64> %vec.ind1855, %broadcast.splat1852
  %i.li = mul nsw <4 x i64> %step.add1860, %broadcast.splat1852
  %i.lj = mul nsw <4 x i64> %step.add.21861, %broadcast.splat1852
  %i.lk = mul nsw <4 x i64> %step.add.31862, %broadcast.splat1852
  %wide.gep1863 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.lh
  %wide.gep1864 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.li
  %wide.gep1865 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.lj
  %wide.gep1866 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.lk
  %wide.masked.gather1867 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1863, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1868 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1864, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1869 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1865, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1870 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1866, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %index1854 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 96
  %wide.load1871 = load <4 x double>, ptr %i.ll, align 8, !tbaa !12
  %wide.load1872 = load <4 x double>, ptr %i.lm, align 8, !tbaa !12
  %wide.load1873 = load <4 x double>, ptr %i.ln, align 8, !tbaa !12
  %wide.load1874 = load <4 x double>, ptr %i.lo, align 8, !tbaa !12
  %i.lp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1871, %wide.masked.gather1867
  %i.lq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1872, %wide.masked.gather1868
  %i.lr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1873, %wide.masked.gather1869
  %i.ls = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1874, %wide.masked.gather1870
  %i.lt = fadd reassoc nsz arcp contract afn <4 x double> %i.lp, %vec.phi1856 ; 2 uses
  %i.lu = fadd reassoc nsz arcp contract afn <4 x double> %i.lq, %vec.phi1857 ; 2 uses
  %i.lv = fadd reassoc nsz arcp contract afn <4 x double> %i.lr, %vec.phi1858 ; 2 uses
  %i.lw = fadd reassoc nsz arcp contract afn <4 x double> %i.ls, %vec.phi1859 ; 2 uses
  %index.next1875 = add nuw i64 %index1854, 16    ; 2 uses
  %vec.ind.next1876 = add nuw <4 x i64> %vec.ind1855, splat (i64 16)
  %i.lx = icmp eq i64 %index.next1875, %n.vec1850
  br i1 %i.lx, label %middle.block1877, label %vector.body1853, !llvm.loop !29

middle.block1877:                                 ; preds = %vector.body1853
  %bin.rdx1878 = fadd reassoc nsz arcp contract afn <4 x double> %i.lu, %i.lt
  %bin.rdx1879 = fadd reassoc nsz arcp contract afn <4 x double> %i.lv, %bin.rdx1878
  %bin.rdx1880 = fadd reassoc nsz arcp contract afn <4 x double> %i.lw, %bin.rdx1879
  %i.ly = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1880) ; 3 uses
  br i1 %cmp.n1881, label %._crit_edge509.us.us.us, label %vec.epilog.iter.check1886

vec.epilog.iter.check1886:                        ; preds = %middle.block1877
  br i1 %min.epilog.iters.check1887, label %vec.epilog.scalar.ph1885.preheader, label %vec.epilog.ph1888, !prof !22

vec.epilog.ph1888:                                ; preds = %vector.main.loop.iter.check1847, %vec.epilog.iter.check1886
  %vec.epilog.resume.val1882 = phi i64 [ %n.vec1850, %vec.epilog.iter.check1886 ], [ 0, %vector.main.loop.iter.check1847 ] ; 2 uses
  %bc.merge.rdx1883 = phi double [ %i.ly, %vec.epilog.iter.check1886 ], [ 0.000000e+00, %vector.main.loop.iter.check1847 ]
  %i.lz = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1883, i64 0
  %broadcast.splatinsert1892 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1882, i64 0
  %broadcast.splat1893 = shufflevector <4 x i64> %broadcast.splatinsert1892, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1894 = or disjoint <4 x i64> %broadcast.splat1893, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1895

vec.epilog.vector.body1895:                       ; preds = %vec.epilog.vector.body1895, %vec.epilog.ph1888
  %index1896 = phi i64 [ %vec.epilog.resume.val1882, %vec.epilog.ph1888 ], [ %index.next1902, %vec.epilog.vector.body1895 ] ; 2 uses
  %vec.ind1897 = phi <4 x i64> [ %induction1894, %vec.epilog.ph1888 ], [ %vec.ind.next1903, %vec.epilog.vector.body1895 ] ; 2 uses
  %vec.phi1898 = phi <4 x double> [ %i.lz, %vec.epilog.ph1888 ], [ %i.md, %vec.epilog.vector.body1895 ]
  %i.ma = mul nuw nsw <4 x i64> %vec.ind1897, %broadcast.splat1891
  %wide.gep1899 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.ma
  %wide.masked.gather1900 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1899, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %index1896
  %wide.load1901 = load <4 x double>, ptr %i.mb, align 8, !tbaa !12
  %i.mc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1901, %wide.masked.gather1900
  %i.md = fadd reassoc nsz arcp contract afn <4 x double> %i.mc, %vec.phi1898 ; 2 uses
  %index.next1902 = add nuw i64 %index1896, 4     ; 2 uses
  %vec.ind.next1903 = add nuw nsw <4 x i64> %vec.ind1897, splat (i64 4)
  %i.me = icmp eq i64 %index.next1902, %n.vec1889
  br i1 %i.me, label %vec.epilog.middle.block1904, label %vec.epilog.vector.body1895, !llvm.loop !30

vec.epilog.middle.block1904:                      ; preds = %vec.epilog.vector.body1895
  %i.mf = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.md) ; 2 uses
  br i1 %cmp.n1905, label %._crit_edge509.us.us.us, label %vec.epilog.scalar.ph1885.preheader

vec.epilog.scalar.ph1885.preheader:               ; preds = %iter.check1884, %vec.epilog.iter.check1886, %vec.epilog.middle.block1904
  %indvars.iv640.ph = phi i64 [ 0, %iter.check1884 ], [ %n.vec1850, %vec.epilog.iter.check1886 ], [ %n.vec1889, %vec.epilog.middle.block1904 ]
  %.0374506.us.us.us.ph = phi double [ 0.000000e+00, %iter.check1884 ], [ %i.ly, %vec.epilog.iter.check1886 ], [ %i.mf, %vec.epilog.middle.block1904 ]
  br label %vec.epilog.scalar.ph1885

vec.epilog.scalar.ph1885:                         ; preds = %vec.epilog.scalar.ph1885.preheader, %vec.epilog.scalar.ph1885
  %indvars.iv640 = phi i64 [ %indvars.iv.next641, %vec.epilog.scalar.ph1885 ], [ %indvars.iv640.ph, %vec.epilog.scalar.ph1885.preheader ] ; 3 uses
  %.0374506.us.us.us = phi double [ %i.ml, %vec.epilog.scalar.ph1885 ], [ %.0374506.us.us.us.ph, %vec.epilog.scalar.ph1885.preheader ]
  %i.mg = mul nsw i64 %indvars.iv640, %i.b
  %gep771 = getelementptr [8 x i8], ptr %invariant.gep770, i64 %i.mg
  %i.mh = load double, ptr %gep771, align 8, !tbaa !12
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv640
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !12
  %i.mk = fmul reassoc nsz arcp contract afn double %i.mj, %i.mh
  %i.ml = fadd reassoc nsz arcp contract afn double %i.mk, %.0374506.us.us.us ; 2 uses
  %indvars.iv.next641 = add nuw nsw i64 %indvars.iv640, 1 ; 2 uses
  %exitcond645.not = icmp eq i64 %indvars.iv.next641, %wide.trip.count680
  br i1 %exitcond645.not, label %._crit_edge509.us.us.us, label %vec.epilog.scalar.ph1885, !llvm.loop !31

._crit_edge509.us.us.us:                          ; preds = %vec.epilog.scalar.ph1885, %vec.epilog.middle.block1904, %middle.block1877
  %.lcssa = phi double [ %i.mf, %vec.epilog.middle.block1904 ], [ %i.ly, %middle.block1877 ], [ %i.ml, %vec.epilog.scalar.ph1885 ]
  %i.mm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.lcssa)
  %i.mn = fadd reassoc nsz arcp contract afn double %i.mm, %.0376510.us.us.us ; 2 uses
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %exitcond650.not = icmp eq i64 %indvars.iv.next647, %wide.trip.count649
  br i1 %exitcond650.not, label %._crit_edge512.split.us.us.us, label %iter.check1884

._crit_edge512.split.us.us.us:                    ; preds = %._crit_edge509.us.us.us
  %i.mo = fmul reassoc nsz arcp contract afn double %i.mn, %i.lb
  br label %bb.o

.lr.ph519.split:                                  ; preds = %.lr.ph519.split.preheader, %.lr.ph519.split
  %indvars.iv634 = phi i64 [ %indvars.iv.next635.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ] ; 6 uses
  %.0379515 = phi i32 [ %spec.select427.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ]
  %.0381514 = phi double [ %spec.select.3, %.lr.ph519.split ], [ 0.000000e+00, %.lr.ph519.split.preheader ] ; 2 uses
  %niter2055 = phi i64 [ %niter2055.next.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv634
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !12 ; 2 uses
  %i.mr = fcmp reassoc nsz arcp contract afn ogt double %i.mq, 0.000000e+00
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mq, 0.000000e+00
  %spec.select554 = select nsz i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mt = fcmp reassoc nsz arcp contract afn ogt double %spec.select554, %.0381514 ; 2 uses
  %spec.select = select nsz i1 %i.mt, double %spec.select554, double %.0381514 ; 2 uses
  %i.mu = trunc nuw nsw i64 %indvars.iv634 to i32
  %spec.select427 = select i1 %i.mt, i32 %i.mu, i32 %.0379515
  %indvars.iv.next635 = or disjoint i64 %indvars.iv634, 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next635
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !12 ; 2 uses
  %i.mx = fcmp reassoc nsz arcp contract afn ogt double %i.mw, 0.000000e+00
  %i.my = fmul reassoc nsz arcp contract afn double %i.mw, 0.000000e+00
  %spec.select554.1 = select nsz i1 %i.mx, double %i.my, double 0.000000e+00 ; 2 uses
  %i.mz = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.1, %spec.select ; 2 uses
  %spec.select.1 = select nsz i1 %i.mz, double %spec.select554.1, double %spec.select ; 2 uses
  %i.na = trunc nuw nsw i64 %indvars.iv.next635 to i32
  %spec.select427.1 = select i1 %i.mz, i32 %i.na, i32 %spec.select427
  %indvars.iv.next635.1 = or disjoint i64 %indvars.iv634, 2 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next635.1
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !12 ; 2 uses
  %i.nd = fcmp reassoc nsz arcp contract afn ogt double %i.nc, 0.000000e+00
  %i.ne = fmul reassoc nsz arcp contract afn double %i.nc, 0.000000e+00
  %spec.select554.2 = select nsz i1 %i.nd, double %i.ne, double 0.000000e+00 ; 2 uses
  %i.nf = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.2, %spec.select.1 ; 2 uses
  %spec.select.2 = select nsz i1 %i.nf, double %spec.select554.2, double %spec.select.1 ; 2 uses
  %i.ng = trunc nuw nsw i64 %indvars.iv.next635.1 to i32
  %spec.select427.2 = select i1 %i.nf, i32 %i.ng, i32 %spec.select427.1
  %indvars.iv.next635.2 = or disjoint i64 %indvars.iv634, 3 ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next635.2
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !12 ; 2 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ogt double %i.ni, 0.000000e+00
  %i.nk = fmul reassoc nsz arcp contract afn double %i.ni, 0.000000e+00
  %spec.select554.3 = select nsz i1 %i.nj, double %i.nk, double 0.000000e+00 ; 2 uses
  %i.nl = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.3, %spec.select.2 ; 2 uses
  %spec.select.3 = select nsz i1 %i.nl, double %spec.select554.3, double %spec.select.2 ; 2 uses
  %i.nm = trunc nuw nsw i64 %indvars.iv.next635.2 to i32
  %spec.select427.3 = select i1 %i.nl, i32 %i.nm, i32 %spec.select427.2 ; 3 uses
  %indvars.iv.next635.3 = add nuw nsw i64 %indvars.iv634, 4 ; 2 uses
  %niter2055.next.3 = add i64 %niter2055, 4       ; 2 uses
  %niter2055.ncmp.3 = icmp eq i64 %niter2055.next.3, %unroll_iter2054
  br i1 %niter2055.ncmp.3, label %._crit_edge520.loopexit1926.unr-lcssa, label %.lr.ph519.split

._crit_edge520.loopexit1926.unr-lcssa:            ; preds = %.lr.ph519.split
  br i1 %lcmp.mod2051.not, label %._crit_edge520, label %.lr.ph519.split.epil.preheader

.lr.ph519.split.epil.preheader:                   ; preds = %._crit_edge520.loopexit1926.unr-lcssa, %.lr.ph519.split.preheader
  %indvars.iv634.epil.init = phi i64 [ 0, %.lr.ph519.split.preheader ], [ %indvars.iv.next635.3, %._crit_edge520.loopexit1926.unr-lcssa ]
  %.0379515.epil.init = phi i32 [ 0, %.lr.ph519.split.preheader ], [ %spec.select427.3, %._crit_edge520.loopexit1926.unr-lcssa ]
  %.0381514.epil.init = phi double [ 0.000000e+00, %.lr.ph519.split.preheader ], [ %spec.select.3, %._crit_edge520.loopexit1926.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2053)
  br label %.lr.ph519.split.epil

.lr.ph519.split.epil:                             ; preds = %.lr.ph519.split.epil, %.lr.ph519.split.epil.preheader
  %indvars.iv634.epil = phi i64 [ %indvars.iv.next635.epil, %.lr.ph519.split.epil ], [ %indvars.iv634.epil.init, %.lr.ph519.split.epil.preheader ] ; 3 uses
  %.0379515.epil = phi i32 [ %spec.select427.epil, %.lr.ph519.split.epil ], [ %.0379515.epil.init, %.lr.ph519.split.epil.preheader ]
  %.0381514.epil = phi double [ %spec.select.epil, %.lr.ph519.split.epil ], [ %.0381514.epil.init, %.lr.ph519.split.epil.preheader ] ; 2 uses
  %epil.iter2050 = phi i64 [ %epil.iter2050.next, %.lr.ph519.split.epil ], [ 0, %.lr.ph519.split.epil.preheader ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv634.epil
  %i.no = load double, ptr %i.nn, align 8, !tbaa !12 ; 2 uses
  %i.np = fcmp reassoc nsz arcp contract afn ogt double %i.no, 0.000000e+00
  %i.nq = fmul reassoc nsz arcp contract afn double %i.no, 0.000000e+00
  %spec.select554.epil = select nsz i1 %i.np, double %i.nq, double 0.000000e+00 ; 2 uses
  %i.nr = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.epil, %.0381514.epil ; 2 uses
  %spec.select.epil = select nsz i1 %i.nr, double %spec.select554.epil, double %.0381514.epil
  %i.ns = trunc nuw nsw i64 %indvars.iv634.epil to i32
  %spec.select427.epil = select i1 %i.nr, i32 %i.ns, i32 %.0379515.epil ; 2 uses
  %indvars.iv.next635.epil = add nuw nsw i64 %indvars.iv634.epil, 1
  %epil.iter2050.next = add i64 %epil.iter2050, 1 ; 2 uses
  %epil.iter2050.cmp.not = icmp eq i64 %epil.iter2050.next, %xtraiter2049
  br i1 %epil.iter2050.cmp.not, label %._crit_edge520, label %.lr.ph519.split.epil, !llvm.loop !32

._crit_edge520:                                   ; preds = %._crit_edge520.loopexit1926.unr-lcssa, %.lr.ph519.split.epil, %bb.o
  %.0379.lcssa = phi i32 [ %spec.select427.us.us, %bb.o ], [ %spec.select427.3, %._crit_edge520.loopexit1926.unr-lcssa ], [ %spec.select427.epil, %.lr.ph519.split.epil ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv677
  store i32 %.0379.lcssa, ptr %i.nt, align 4, !tbaa !33
  %i.nu = icmp slt i32 %.0379.lcssa, %2
  %i.nv = zext i1 %i.nu to i32
  %spec.select428 = add nuw nsw i32 %.0385549, %i.nv ; 2 uses
  %i.nw = zext nneg i32 %.0379.lcssa to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.nw
  store double 0.000000e+00, ptr %i.nx, align 8, !tbaa !12
  %i.ny = tail call i32 @llvm.smin.i32(i32 %i.kz, i32 %i.ip) ; 12 uses
  br i1 %i.gx, label %.preheader452.lr.ph, label %.lr.ph.i432.preheader

.lr.ph.i432.preheader:                            ; preds = %._crit_edge545, %._crit_edge520
  br i1 %i.jm, label %.lr.ph.i432.epil.preheader, label %.lr.ph.i432

.preheader452.lr.ph:                              ; preds = %._crit_edge520
  %.not422530 = icmp slt i32 %i.ny, 0             ; 3 uses
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
  %broadcast.splatinsert1315 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1316 = shufflevector <4 x i64> %broadcast.splatinsert1315, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1248 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1249 = shufflevector <4 x i64> %broadcast.splatinsert1248, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1291 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1292 = shufflevector <4 x i64> %broadcast.splatinsert1291, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1201 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1202 = shufflevector <4 x i64> %broadcast.splatinsert1201, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1228 = insertelement <4 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat1229 = shufflevector <4 x i64> %broadcast.splatinsert1228, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ok = getelementptr i8, ptr %i.in, i64 %i.ks
  %i.ol = getelementptr i8, ptr %i.in, i64 %i.kx
  %xtraiter2093 = and i64 %wide.trip.count990.i.i, 1
  %i.om = icmp eq i32 %smin2092, 0
  %unroll_iter2097 = and i64 %wide.trip.count990.i.i, 2147483646
  %lcmp.mod2095.not = icmp eq i64 %xtraiter2093, 0
  %lcmp.mod2096 = trunc i32 %i.nz to i1
  %xtraiter2113 = and i64 %wide.trip.count990.i.i, 7 ; 3 uses
  %i.on = icmp ult i32 %smin2112, 7
  %unroll_iter2117 = and i64 %wide.trip.count990.i.i, 2147483640
  %lcmp.mod2115.not = icmp eq i64 %xtraiter2113, 0
  %lcmp.mod2116 = icmp ne i64 %xtraiter2113, 0
  %min.iters.check924 = icmp ult i32 %i.nz, 4
  %min.iters.check926 = icmp ult i32 %i.nz, 16
  %i.oo = and i64 %wide.trip.count990.i.i, 12
  %n.vec928 = and i64 %wide.trip.count990.i.i, 2147483632 ; 4 uses
  %cmp.n941 = icmp eq i64 %n.vec928, %wide.trip.count990.i.i
  %min.epilog.iters.check946 = icmp eq i64 %i.oo, 0
  %n.vec948 = and i64 %wide.trip.count990.i.i, 2147483644 ; 3 uses
  %cmp.n955 = icmp eq i64 %n.vec948, %wide.trip.count990.i.i
  %min.iters.check881 = icmp ult i32 %i.nz, 4
  %min.iters.check883 = icmp ult i32 %i.nz, 16
  %i.op = and i64 %wide.trip.count990.i.i, 12
  %n.vec885 = and i64 %wide.trip.count990.i.i, 2147483632 ; 4 uses
  %cmp.n905 = icmp eq i64 %n.vec885, %wide.trip.count990.i.i
  %min.epilog.iters.check911 = icmp eq i64 %i.op, 0
  %n.vec913 = and i64 %wide.trip.count990.i.i, 2147483644 ; 3 uses
  %cmp.n921 = icmp eq i64 %n.vec913, %wide.trip.count990.i.i
  %min.iters.check829 = icmp ult i32 %i.nz, 4
  %min.iters.check831 = icmp ult i32 %i.nz, 16
  %n.vec833 = and i64 %i.oa, 2147483632           ; 4 uses
  %cmp.n860 = icmp eq i64 %n.vec833, %i.oa
  %i.oq = and i32 %i.nz, 12
  %min.epilog.iters.check866 = icmp eq i32 %i.oq, 0
  %n.vec868 = and i64 %i.oa, 2147483644           ; 3 uses
  %cmp.n878 = icmp eq i64 %n.vec868, %i.oa
  br label %.preheader452

.preheader452:                                    ; preds = %.preheader452.lr.ph, %._crit_edge545
  %indvars.iv672 = phi i64 [ 0, %.preheader452.lr.ph ], [ %indvars.iv.next673, %._crit_edge545 ] ; 4 uses
  br i1 %.not422530, label %._crit_edge532.split, label %iter.check1824

iter.check1824:                                   ; preds = %.preheader452, %._crit_edge529
  %indvars.iv661 = phi i64 [ %indvars.iv.next662, %._crit_edge529 ], [ 0, %.preheader452 ] ; 4 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv661
  %i.os = load i32, ptr %i.or, align 4, !tbaa !33
  %i.ot = sext i32 %i.os to i64
  %invariant.gep772 = getelementptr [8 x i8], ptr %i.e, i64 %i.ot ; 14 uses
  %invariant.gep774 = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv661 ; 11 uses
  br i1 %or.cond1910, label %vector.main.loop.iter.check1799, label %vec.epilog.scalar.ph1825.preheader

vector.main.loop.iter.check1799:                  ; preds = %iter.check1824
  br i1 %min.iters.check1800, label %vec.epilog.ph1828, label %vector.body1805

vector.body1805:                                  ; preds = %vector.main.loop.iter.check1799, %vector.body1805
  %index1806 = phi i64 [ %index.next1819, %vector.body1805 ], [ 0, %vector.main.loop.iter.check1799 ] ; 2 uses
  %vec.ind1807 = phi <4 x i64> [ %vec.ind.next1820, %vector.body1805 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check1799 ] ; 5 uses
  %step.add1808 = add nuw <4 x i64> %vec.ind1807, splat (i64 4)
  %step.add.21809 = add nuw <4 x i64> %vec.ind1807, splat (i64 8)
  %step.add.31810 = add nuw <4 x i64> %vec.ind1807, splat (i64 12)
  %i.ou = mul nsw <4 x i64> %vec.ind1807, %broadcast.splat1804
  %i.ov = mul nsw <4 x i64> %step.add1808, %broadcast.splat1804
  %i.ow = mul nsw <4 x i64> %step.add.21809, %broadcast.splat1804
  %i.ox = mul nsw <4 x i64> %step.add.31810, %broadcast.splat1804
  %wide.gep1811 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.ou
  %wide.gep1812 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.ov
  %wide.gep1813 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.ow
  %wide.gep1814 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.ox
  %wide.masked.gather1815 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1811, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1816 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1812, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1817 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1813, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather1818 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1814, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.oy = getelementptr [8 x i8], ptr %invariant.gep774, i64 %index1806 ; 4 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 32
  %i.pa = getelementptr i8, ptr %i.oy, i64 64
  %i.pb = getelementptr i8, ptr %i.oy, i64 96
  store <4 x double> %wide.masked.gather1815, ptr %i.oy, align 8, !tbaa !12
  store <4 x double> %wide.masked.gather1816, ptr %i.oz, align 8, !tbaa !12
  store <4 x double> %wide.masked.gather1817, ptr %i.pa, align 8, !tbaa !12
  store <4 x double> %wide.masked.gather1818, ptr %i.pb, align 8, !tbaa !12
  %index.next1819 = add nuw i64 %index1806, 16    ; 2 uses
  %vec.ind.next1820 = add nuw <4 x i64> %vec.ind1807, splat (i64 16)
  %i.pc = icmp eq i64 %index.next1819, %n.vec1802
  br i1 %i.pc, label %middle.block1821, label %vector.body1805, !llvm.loop !34

middle.block1821:                                 ; preds = %vector.body1805
  br i1 %cmp.n1822, label %._crit_edge529, label %vec.epilog.iter.check1826

vec.epilog.iter.check1826:                        ; preds = %middle.block1821
  br i1 %min.epilog.iters.check1827, label %vec.epilog.scalar.ph1825.preheader, label %vec.epilog.ph1828, !prof !22

vec.epilog.ph1828:                                ; preds = %vector.main.loop.iter.check1799, %vec.epilog.iter.check1826
  %vec.epilog.resume.val1823 = phi i64 [ %n.vec1802, %vec.epilog.iter.check1826 ], [ 0, %vector.main.loop.iter.check1799 ] ; 2 uses
  %broadcast.splatinsert1832 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1823, i64 0
  %broadcast.splat1833 = shufflevector <4 x i64> %broadcast.splatinsert1832, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1834 = or disjoint <4 x i64> %broadcast.splat1833, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1835

vec.epilog.vector.body1835:                       ; preds = %vec.epilog.vector.body1835, %vec.epilog.ph1828
  %index1836 = phi i64 [ %vec.epilog.resume.val1823, %vec.epilog.ph1828 ], [ %index.next1840, %vec.epilog.vector.body1835 ] ; 2 uses
  %vec.ind1837 = phi <4 x i64> [ %induction1834, %vec.epilog.ph1828 ], [ %vec.ind.next1841, %vec.epilog.vector.body1835 ] ; 2 uses
  %i.pd = mul nuw nsw <4 x i64> %vec.ind1837, %broadcast.splat1831
  %wide.gep1838 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.pd
  %wide.masked.gather1839 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1838, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.pe = getelementptr [8 x i8], ptr %invariant.gep774, i64 %index1836
  store <4 x double> %wide.masked.gather1839, ptr %i.pe, align 8, !tbaa !12
  %index.next1840 = add nuw i64 %index1836, 4     ; 2 uses
  %vec.ind.next1841 = add nuw nsw <4 x i64> %vec.ind1837, splat (i64 4)
  %i.pf = icmp eq i64 %index.next1840, %n.vec1829
  br i1 %i.pf, label %vec.epilog.middle.block1842, label %vec.epilog.vector.body1835, !llvm.loop !35

vec.epilog.middle.block1842:                      ; preds = %vec.epilog.vector.body1835
  br i1 %cmp.n1843, label %._crit_edge529, label %vec.epilog.scalar.ph1825.preheader

vec.epilog.scalar.ph1825.preheader:               ; preds = %iter.check1824, %vec.epilog.iter.check1826, %vec.epilog.middle.block1842
  %indvars.iv656.ph = phi i64 [ 0, %iter.check1824 ], [ %n.vec1802, %vec.epilog.iter.check1826 ], [ %n.vec1829, %vec.epilog.middle.block1842 ] ; 4 uses
  %i.pg = sub nsw i64 %wide.trip.count680, %indvars.iv656.ph
  %xtraiter2056 = and i64 %i.pg, 7                ; 2 uses
  %lcmp.mod2057.not = icmp eq i64 %xtraiter2056, 0
  br i1 %lcmp.mod2057.not, label %vec.epilog.scalar.ph1825.prol.loopexit, label %vec.epilog.scalar.ph1825.prol

vec.epilog.scalar.ph1825.prol:                    ; preds = %vec.epilog.scalar.ph1825.preheader, %vec.epilog.scalar.ph1825.prol
  %indvars.iv656.prol = phi i64 [ %indvars.iv.next657.prol, %vec.epilog.scalar.ph1825.prol ], [ %indvars.iv656.ph, %vec.epilog.scalar.ph1825.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph1825.prol ], [ 0, %vec.epilog.scalar.ph1825.preheader ]
  %i.ph = mul nsw i64 %indvars.iv656.prol, %i.b
  %gep773.prol = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.ph
  %i.pi = load double, ptr %gep773.prol, align 8, !tbaa !12
  %i.pj = mul nsw i64 %indvars.iv656.prol, %i.ih
  %gep775.prol = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.pj
  store double %i.pi, ptr %gep775.prol, align 8, !tbaa !12
  %indvars.iv.next657.prol = add nuw nsw i64 %indvars.iv656.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2056
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1825.prol.loopexit, label %vec.epilog.scalar.ph1825.prol, !llvm.loop !36

vec.epilog.scalar.ph1825.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1825.prol, %vec.epilog.scalar.ph1825.preheader
  %indvars.iv656.unr = phi i64 [ %indvars.iv656.ph, %vec.epilog.scalar.ph1825.preheader ], [ %indvars.iv.next657.prol, %vec.epilog.scalar.ph1825.prol ]
  %i.pk = sub nsw i64 %indvars.iv656.ph, %wide.trip.count680
  %i.pl = icmp ugt i64 %i.pk, -8
  br i1 %i.pl, label %._crit_edge529, label %vec.epilog.scalar.ph1825

._crit_edge532.split:                             ; preds = %._crit_edge529, %.preheader452
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv672
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !25 ; 12 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv672 ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !25
  br i1 %.not59.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge532.split
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3) #17
  br label %dsvd.exit.i

bb.q:                                             ; preds = %._crit_edge532.split
  %i.pq = tail call noalias ptr @malloc(i64 noundef %i.ob) #15 ; 17 uses
  br i1 %i.oc, label %iter.check1780, label %.critedge.i.i

iter.check1780:                                   ; preds = %bb.q, %.loopexit753.i.i
  %indvars.iv942.i.i = phi i64 [ %indvars.iv.next943.i.i, %.loopexit753.i.i ], [ 1, %bb.q ] ; 33 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit753.i.i ], [ 0, %bb.q ] ; 37 uses
  %.0665815.i.i = phi double [ %.4.i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ]
  %.0668814.i.i = phi double [ %.2670.i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ]
  %.0672813.i.i = phi double [ %.0672..i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.pr = shl nuw nsw i64 %indvars.iv.i.i, 4      ; 2 uses
  %i.ps = getelementptr i8, ptr %i.in, i64 %i.pr
  %scevgep1607 = getelementptr i8, ptr %i.ps, i64 8
  %scevgep1612 = getelementptr i8, ptr %i.in, i64 %i.pr
  %i.pt = add nuw i64 %indvars.iv.i.i, %i.gr
  %i.pu = shl i64 %i.pt, 3
  %scevgep1613 = getelementptr i8, ptr %i.in, i64 %i.pu
  %i.pv = sub nsw i64 %i.gr, %indvars.iv.i.i      ; 35 uses
  %i.pw = xor i64 %indvars.iv.i.i, -1
  %i.px = add nsw i64 %i.pw, %i.ko                ; 42 uses
  %i.py = fmul reassoc nsz arcp contract afn double %.0668814.i.i, %.0665815.i.i ; 3 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv.i.i ; 2 uses
  store double %i.py, ptr %i.pz, align 8, !tbaa !12
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv.i.i ; 47 uses
  %min.iters.check1756 = icmp ugt i64 %i.pv, 3
  %or.cond1911 = and i1 %min.iters.check1756, %ident.check1754.not
  br i1 %or.cond1911, label %vector.main.loop.iter.check1757, label %.lr.ph.i.i.preheader

vector.main.loop.iter.check1757:                  ; preds = %iter.check1780
  %min.iters.check1758 = icmp ult i64 %i.pv, 16
  br i1 %min.iters.check1758, label %vec.epilog.ph1784, label %vector.ph1759

vector.ph1759:                                    ; preds = %vector.main.loop.iter.check1757
  %i.qa = and i64 %i.pv, 12
  %n.vec1760 = and i64 %i.pv, -16                 ; 4 uses
  %i.qb = add i64 %indvars.iv.i.i, %n.vec1760
  %i.qc = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  br label %vector.body1761

vector.body1761:                                  ; preds = %vector.body1761, %vector.ph1759
  %index1762 = phi i64 [ 0, %vector.ph1759 ], [ %index.next1771, %vector.body1761 ] ; 2 uses
  %vec.phi1763 = phi <4 x double> [ zeroinitializer, %vector.ph1759 ], [ %i.ql, %vector.body1761 ]
  %vec.phi1764 = phi <4 x double> [ zeroinitializer, %vector.ph1759 ], [ %i.qm, %vector.body1761 ]
  %vec.phi1765 = phi <4 x double> [ zeroinitializer, %vector.ph1759 ], [ %i.qn, %vector.body1761 ]
  %vec.phi1766 = phi <4 x double> [ zeroinitializer, %vector.ph1759 ], [ %i.qo, %vector.body1761 ]
  %i.qd = getelementptr [8 x i8], ptr %i.qc, i64 %index1762 ; 4 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 32
  %i.qf = getelementptr i8, ptr %i.qd, i64 64
  %i.qg = getelementptr i8, ptr %i.qd, i64 96
  %wide.load1767 = load <4 x double>, ptr %i.qd, align 8, !tbaa !12
  %wide.load1768 = load <4 x double>, ptr %i.qe, align 8, !tbaa !12
  %wide.load1769 = load <4 x double>, ptr %i.qf, align 8, !tbaa !12
  %wide.load1770 = load <4 x double>, ptr %i.qg, align 8, !tbaa !12
  %i.qh = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1767)
  %i.qi = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1768)
  %i.qj = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1769)
  %i.qk = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1770)
  %i.ql = fadd reassoc nsz arcp contract afn <4 x double> %i.qh, %vec.phi1763 ; 2 uses
  %i.qm = fadd reassoc nsz arcp contract afn <4 x double> %i.qi, %vec.phi1764 ; 2 uses
  %i.qn = fadd reassoc nsz arcp contract afn <4 x double> %i.qj, %vec.phi1765 ; 2 uses
  %i.qo = fadd reassoc nsz arcp contract afn <4 x double> %i.qk, %vec.phi1766 ; 2 uses
  %index.next1771 = add nuw i64 %index1762, 16    ; 2 uses
  %i.qp = icmp eq i64 %index.next1771, %n.vec1760
  br i1 %i.qp, label %middle.block1772, label %vector.body1761, !llvm.loop !37

middle.block1772:                                 ; preds = %vector.body1761
  %bin.rdx1773 = fadd reassoc nsz arcp contract afn <4 x double> %i.qm, %i.ql
  %bin.rdx1774 = fadd reassoc nsz arcp contract afn <4 x double> %i.qn, %bin.rdx1773
  %bin.rdx1775 = fadd reassoc nsz arcp contract afn <4 x double> %i.qo, %bin.rdx1774
  %i.qq = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1775) ; 3 uses
  %cmp.n1776 = icmp eq i64 %i.pv, %n.vec1760
  br i1 %cmp.n1776, label %._crit_edge.i.i, label %vec.epilog.iter.check1782

vec.epilog.iter.check1782:                        ; preds = %middle.block1772
  %min.epilog.iters.check1783 = icmp eq i64 %i.qa, 0
  br i1 %min.epilog.iters.check1783, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1784, !prof !22

vec.epilog.ph1784:                                ; preds = %vector.main.loop.iter.check1757, %vec.epilog.iter.check1782
  %vec.epilog.resume.val1777 = phi i64 [ %n.vec1760, %vec.epilog.iter.check1782 ], [ 0, %vector.main.loop.iter.check1757 ]
  %bc.merge.rdx1779 = phi double [ %i.qq, %vec.epilog.iter.check1782 ], [ 0.000000e+00, %vector.main.loop.iter.check1757 ]
  %n.vec1785 = and i64 %i.pv, -4                  ; 3 uses
  %i.qr = add i64 %indvars.iv.i.i, %n.vec1785
  %i.qs = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1779, i64 0
  %i.qt = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  br label %vec.epilog.vector.body1786

vec.epilog.vector.body1786:                       ; preds = %vec.epilog.vector.body1786, %vec.epilog.ph1784
  %index1787 = phi i64 [ %vec.epilog.resume.val1777, %vec.epilog.ph1784 ], [ %index.next1790, %vec.epilog.vector.body1786 ] ; 2 uses
  %vec.phi1788 = phi <4 x double> [ %i.qs, %vec.epilog.ph1784 ], [ %i.qw, %vec.epilog.vector.body1786 ]
  %i.qu = getelementptr [8 x i8], ptr %i.qt, i64 %index1787
  %wide.load1789 = load <4 x double>, ptr %i.qu, align 8, !tbaa !12
  %i.qv = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1789)
  %i.qw = fadd reassoc nsz arcp contract afn <4 x double> %i.qv, %vec.phi1788 ; 2 uses
  %index.next1790 = add nuw i64 %index1787, 4     ; 2 uses
  %i.qx = icmp eq i64 %index.next1790, %n.vec1785
  br i1 %i.qx, label %vec.epilog.middle.block1791, label %vec.epilog.vector.body1786, !llvm.loop !38

vec.epilog.middle.block1791:                      ; preds = %vec.epilog.vector.body1786
  %i.qy = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.qw) ; 2 uses
  %cmp.n1792 = icmp eq i64 %i.pv, %n.vec1785
  br i1 %cmp.n1792, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1780, %vec.epilog.iter.check1782, %vec.epilog.middle.block1791
  %indvars.iv924.i.i.ph = phi i64 [ %indvars.iv.i.i, %iter.check1780 ], [ %i.qb, %vec.epilog.iter.check1782 ], [ %i.qr, %vec.epilog.middle.block1791 ] ; 4 uses
  %.1666770.i.i.ph = phi double [ 0.000000e+00, %iter.check1780 ], [ %i.qq, %vec.epilog.iter.check1782 ], [ %i.qy, %vec.epilog.middle.block1791 ] ; 2 uses
  %i.qz = sub i64 %i.gr, %indvars.iv924.i.i.ph
  %i.ra = sub i64 %i.jc, %indvars.iv924.i.i.ph
  %xtraiter2058 = and i64 %i.qz, 7                ; 2 uses
  %lcmp.mod2059.not = icmp eq i64 %xtraiter2058, 0
  br i1 %lcmp.mod2059.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv924.i.i.prol = phi i64 [ %indvars.iv.next925.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv924.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.1666770.i.i.prol = phi double [ %i.re, %.lr.ph.i.i.prol ], [ %.1666770.i.i.ph, %.lr.ph.i.i.preheader ]
  %prol.iter2060 = phi i64 [ %prol.iter2060.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.rb = mul nsw i64 %indvars.iv924.i.i.prol, %i.ih
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.rb
  %i.rc = load double, ptr %gep.i.i.prol, align 8, !tbaa !12
  %i.rd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.rc)
  %i.re = fadd reassoc nsz arcp contract afn double %i.rd, %.1666770.i.i.prol ; 3 uses
  %indvars.iv.next925.i.i.prol = add nuw nsw i64 %indvars.iv924.i.i.prol, 1 ; 2 uses
  %prol.iter2060.next = add i64 %prol.iter2060, 1 ; 2 uses
  %prol.iter2060.cmp.not = icmp eq i64 %prol.iter2060.next, %xtraiter2058
  br i1 %prol.iter2060.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !39

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa1940.unr = phi double [ poison, %.lr.ph.i.i.preheader ], [ %i.re, %.lr.ph.i.i.prol ]
  %indvars.iv924.i.i.unr = phi i64 [ %indvars.iv924.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next925.i.i.prol, %.lr.ph.i.i.prol ]
  %.1666770.i.i.unr = phi double [ %.1666770.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.re, %.lr.ph.i.i.prol ]
  %i.rf = icmp ult i64 %i.ra, 7
  br i1 %i.rf, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block1791, %middle.block1772
  %.lcssa780 = phi double [ %i.qy, %vec.epilog.middle.block1791 ], [ %i.qq, %middle.block1772 ], [ %.lcssa1940.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ui, %.lr.ph.i.i ] ; 20 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.rg = fcmp reassoc nsz arcp contract afn une double %.lcssa780, 0.000000e+00
  br i1 %i.rg, label %iter.check1736, label %.loopexit758.i.i

iter.check1736:                                   ; preds = %._crit_edge.i.i
  %min.iters.check1710 = icmp ugt i64 %i.pv, 3
  %or.cond1912 = and i1 %min.iters.check1710, %ident.check1708.not
  br i1 %or.cond1912, label %vector.main.loop.iter.check1711, label %.lr.ph774.i.i.preheader

vector.main.loop.iter.check1711:                  ; preds = %iter.check1736
  %min.iters.check1712 = icmp ult i64 %i.pv, 16
  br i1 %min.iters.check1712, label %vec.epilog.ph1740, label %vector.ph1713

vector.ph1713:                                    ; preds = %vector.main.loop.iter.check1711
  %i.rh = and i64 %i.pv, 12
  %n.vec1714 = and i64 %i.pv, -16                 ; 4 uses
  %i.ri = add i64 %indvars.iv.i.i, %n.vec1714
  %broadcast.splatinsert1715 = insertelement <4 x double> poison, double %.lcssa780, i64 0
  %broadcast.splat1716 = shufflevector <4 x double> %broadcast.splatinsert1715, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.rj = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.rk = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1716
  %i.rl = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1716
  %i.rm = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1716
  %i.rn = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1716
  br label %vector.body1717

vector.body1717:                                  ; preds = %vector.body1717, %vector.ph1713
  %index1718 = phi i64 [ 0, %vector.ph1713 ], [ %index.next1727, %vector.body1717 ] ; 2 uses
  %vec.phi1719 = phi <4 x double> [ zeroinitializer, %vector.ph1713 ], [ %i.sa, %vector.body1717 ]
  %vec.phi1720 = phi <4 x double> [ zeroinitializer, %vector.ph1713 ], [ %i.sb, %vector.body1717 ]
  %vec.phi1721 = phi <4 x double> [ zeroinitializer, %vector.ph1713 ], [ %i.sc, %vector.body1717 ]
  %vec.phi1722 = phi <4 x double> [ zeroinitializer, %vector.ph1713 ], [ %i.sd, %vector.body1717 ]
  %i.ro = getelementptr [8 x i8], ptr %i.rj, i64 %index1718 ; 5 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 32     ; 2 uses
  %i.rq = getelementptr i8, ptr %i.ro, i64 64     ; 2 uses
  %i.rr = getelementptr i8, ptr %i.ro, i64 96     ; 2 uses
  %wide.load1723 = load <4 x double>, ptr %i.ro, align 8, !tbaa !12
  %wide.load1724 = load <4 x double>, ptr %i.rp, align 8, !tbaa !12
  %wide.load1725 = load <4 x double>, ptr %i.rq, align 8, !tbaa !12
end_hunk_1
begin_hunk_2_@thinplate_match:bb.a
  store double %.lcssa795, ptr %i.bpo, align 8, !tbaa !12
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next124.i, %wide.trip.count990.i.i
  br i1 %exitcond128.not.i, label %iter.check943, label %iter.check984

iter.check943:                                    ; preds = %._crit_edge.us.i
  br i1 %min.iters.check924, label %.lr.ph92.i.preheader, label %vector.main.loop.iter.check925

vector.main.loop.iter.check925:                   ; preds = %iter.check943
  br i1 %min.iters.check926, label %vec.epilog.ph947, label %vector.body929

vector.body929:                                   ; preds = %vector.main.loop.iter.check925, %vector.body929
  %index930 = phi i64 [ %index.next939, %vector.body929 ], [ 0, %vector.main.loop.iter.check925 ] ; 3 uses
  %i.bpp = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index930 ; 4 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 32
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpp, i64 64
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpp, i64 96
  %wide.load931 = load <4 x double>, ptr %i.bpp, align 8, !tbaa !12
  %wide.load932 = load <4 x double>, ptr %i.bpq, align 8, !tbaa !12
  %wide.load933 = load <4 x double>, ptr %i.bpr, align 8, !tbaa !12
  %wide.load934 = load <4 x double>, ptr %i.bps, align 8, !tbaa !12
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %index930 ; 5 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 32 ; 2 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpt, i64 64 ; 2 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpt, i64 96 ; 2 uses
  %wide.load935 = load <4 x double>, ptr %i.bpt, align 8, !tbaa !12
  %wide.load936 = load <4 x double>, ptr %i.bpu, align 8, !tbaa !12
  %wide.load937 = load <4 x double>, ptr %i.bpv, align 8, !tbaa !12
  %wide.load938 = load <4 x double>, ptr %i.bpw, align 8, !tbaa !12
  %i.bpx = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load935, %wide.load931
  %i.bpy = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load936, %wide.load932
  %i.bpz = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load937, %wide.load933
  %i.bqa = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load938, %wide.load934
  store <4 x double> %i.bpx, ptr %i.bpt, align 8, !tbaa !12
  store <4 x double> %i.bpy, ptr %i.bpu, align 8, !tbaa !12
  store <4 x double> %i.bpz, ptr %i.bpv, align 8, !tbaa !12
  store <4 x double> %i.bqa, ptr %i.bpw, align 8, !tbaa !12
  %index.next939 = add nuw i64 %index930, 16      ; 2 uses
  %i.bqb = icmp eq i64 %index.next939, %n.vec928
  br i1 %i.bqb, label %middle.block940, label %vector.body929, !llvm.loop !122

middle.block940:                                  ; preds = %vector.body929
  br i1 %cmp.n941, label %iter.check908.preheader, label %vec.epilog.iter.check945

vec.epilog.iter.check945:                         ; preds = %middle.block940
  br i1 %min.epilog.iters.check946, label %.lr.ph92.i.preheader, label %vec.epilog.ph947, !prof !22

vec.epilog.ph947:                                 ; preds = %vector.main.loop.iter.check925, %vec.epilog.iter.check945
  %vec.epilog.resume.val942 = phi i64 [ %n.vec928, %vec.epilog.iter.check945 ], [ 0, %vector.main.loop.iter.check925 ]
  br label %vec.epilog.vector.body949

vec.epilog.vector.body949:                        ; preds = %vec.epilog.vector.body949, %vec.epilog.ph947
  %index950 = phi i64 [ %vec.epilog.resume.val942, %vec.epilog.ph947 ], [ %index.next953, %vec.epilog.vector.body949 ] ; 3 uses
  %i.bqc = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index950
  %wide.load951 = load <4 x double>, ptr %i.bqc, align 8, !tbaa !12
  %i.bqd = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %index950 ; 2 uses
  %wide.load952 = load <4 x double>, ptr %i.bqd, align 8, !tbaa !12
  %i.bqe = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load952, %wide.load951
  store <4 x double> %i.bqe, ptr %i.bqd, align 8, !tbaa !12
  %index.next953 = add nuw i64 %index950, 4       ; 2 uses
  %i.bqf = icmp eq i64 %index.next953, %n.vec948
  br i1 %i.bqf, label %vec.epilog.middle.block954, label %vec.epilog.vector.body949, !llvm.loop !123

vec.epilog.middle.block954:                       ; preds = %vec.epilog.vector.body949
  br i1 %cmp.n955, label %iter.check908.preheader, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %iter.check943, %vec.epilog.iter.check945, %vec.epilog.middle.block954
  %indvars.iv129.i.ph = phi i64 [ 0, %iter.check943 ], [ %n.vec928, %vec.epilog.iter.check945 ], [ %n.vec948, %vec.epilog.middle.block954 ]
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
  br i1 %exitcond134.not.i, label %iter.check908.preheader, label %.lr.ph92.i, !llvm.loop !124

iter.check908.preheader:                          ; preds = %.lr.ph92.i, %vec.epilog.middle.block954, %middle.block940
  br label %iter.check908

iter.check908:                                    ; preds = %iter.check908.preheader, %._crit_edge.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.i ], [ 0, %iter.check908.preheader ] ; 3 uses
  %i.bql = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv141.i
  %i.bqm = mul nuw nsw i64 %indvars.iv141.i, %wide.trip.count990.i.i
  %invariant.gep190.i = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.bqm ; 3 uses
  br i1 %min.iters.check881, label %vec.epilog.scalar.ph909.preheader, label %vector.main.loop.iter.check882

vector.main.loop.iter.check882:                   ; preds = %iter.check908
  br i1 %min.iters.check883, label %vec.epilog.ph912, label %vector.body886

vector.body886:                                   ; preds = %vector.main.loop.iter.check882, %vector.body886
  %index887 = phi i64 [ %index.next900, %vector.body886 ], [ 0, %vector.main.loop.iter.check882 ] ; 3 uses
  %vec.phi888 = phi <4 x double> [ %i.bqz, %vector.body886 ], [ zeroinitializer, %vector.main.loop.iter.check882 ]
  %vec.phi889 = phi <4 x double> [ %i.bra, %vector.body886 ], [ zeroinitializer, %vector.main.loop.iter.check882 ]
  %vec.phi890 = phi <4 x double> [ %i.brb, %vector.body886 ], [ zeroinitializer, %vector.main.loop.iter.check882 ]
  %vec.phi891 = phi <4 x double> [ %i.brc, %vector.body886 ], [ zeroinitializer, %vector.main.loop.iter.check882 ]
  %i.bqn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %index887 ; 4 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 32
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqn, i64 64
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqn, i64 96
  %wide.load892 = load <4 x double>, ptr %i.bqn, align 8, !tbaa !12
  %wide.load893 = load <4 x double>, ptr %i.bqo, align 8, !tbaa !12
  %wide.load894 = load <4 x double>, ptr %i.bqp, align 8, !tbaa !12
  %wide.load895 = load <4 x double>, ptr %i.bqq, align 8, !tbaa !12
  %i.bqr = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %index887 ; 4 uses
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 32
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqr, i64 64
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqr, i64 96
  %wide.load896 = load <4 x double>, ptr %i.bqr, align 8, !tbaa !12
  %wide.load897 = load <4 x double>, ptr %i.bqs, align 8, !tbaa !12
  %wide.load898 = load <4 x double>, ptr %i.bqt, align 8, !tbaa !12
  %wide.load899 = load <4 x double>, ptr %i.bqu, align 8, !tbaa !12
  %i.bqv = fmul reassoc nsz arcp contract afn <4 x double> %wide.load896, %wide.load892
  %i.bqw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load897, %wide.load893
  %i.bqx = fmul reassoc nsz arcp contract afn <4 x double> %wide.load898, %wide.load894
  %i.bqy = fmul reassoc nsz arcp contract afn <4 x double> %wide.load899, %wide.load895
  %i.bqz = fadd reassoc nsz arcp contract afn <4 x double> %i.bqv, %vec.phi888 ; 2 uses
  %i.bra = fadd reassoc nsz arcp contract afn <4 x double> %i.bqw, %vec.phi889 ; 2 uses
  %i.brb = fadd reassoc nsz arcp contract afn <4 x double> %i.bqx, %vec.phi890 ; 2 uses
  %i.brc = fadd reassoc nsz arcp contract afn <4 x double> %i.bqy, %vec.phi891 ; 2 uses
  %index.next900 = add nuw i64 %index887, 16      ; 2 uses
  %i.brd = icmp eq i64 %index.next900, %n.vec885
  br i1 %i.brd, label %middle.block901, label %vector.body886, !llvm.loop !125

middle.block901:                                  ; preds = %vector.body886
  %bin.rdx902 = fadd reassoc nsz arcp contract afn <4 x double> %i.bra, %i.bqz
  %bin.rdx903 = fadd reassoc nsz arcp contract afn <4 x double> %i.brb, %bin.rdx902
  %bin.rdx904 = fadd reassoc nsz arcp contract afn <4 x double> %i.brc, %bin.rdx903
  %i.bre = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx904) ; 3 uses
  br i1 %cmp.n905, label %._crit_edge.i, label %vec.epilog.iter.check910

vec.epilog.iter.check910:                         ; preds = %middle.block901
  br i1 %min.epilog.iters.check911, label %vec.epilog.scalar.ph909.preheader, label %vec.epilog.ph912, !prof !22

vec.epilog.ph912:                                 ; preds = %vector.main.loop.iter.check882, %vec.epilog.iter.check910
  %vec.epilog.resume.val906 = phi i64 [ %n.vec885, %vec.epilog.iter.check910 ], [ 0, %vector.main.loop.iter.check882 ]
  %bc.merge.rdx907 = phi double [ %i.bre, %vec.epilog.iter.check910 ], [ 0.000000e+00, %vector.main.loop.iter.check882 ]
  %i.brf = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx907, i64 0
  br label %vec.epilog.vector.body914

vec.epilog.vector.body914:                        ; preds = %vec.epilog.vector.body914, %vec.epilog.ph912
  %index915 = phi i64 [ %vec.epilog.resume.val906, %vec.epilog.ph912 ], [ %index.next919, %vec.epilog.vector.body914 ] ; 3 uses
  %vec.phi916 = phi <4 x double> [ %i.brf, %vec.epilog.ph912 ], [ %i.brj, %vec.epilog.vector.body914 ]
  %i.brg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %index915
  %wide.load917 = load <4 x double>, ptr %i.brg, align 8, !tbaa !12
  %i.brh = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %index915
  %wide.load918 = load <4 x double>, ptr %i.brh, align 8, !tbaa !12
  %i.bri = fmul reassoc nsz arcp contract afn <4 x double> %wide.load918, %wide.load917
  %i.brj = fadd reassoc nsz arcp contract afn <4 x double> %i.bri, %vec.phi916 ; 2 uses
  %index.next919 = add nuw i64 %index915, 4       ; 2 uses
  %i.brk = icmp eq i64 %index.next919, %n.vec913
  br i1 %i.brk, label %vec.epilog.middle.block920, label %vec.epilog.vector.body914, !llvm.loop !126

vec.epilog.middle.block920:                       ; preds = %vec.epilog.vector.body914
  %i.brl = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.brj) ; 2 uses
  br i1 %cmp.n921, label %._crit_edge.i, label %vec.epilog.scalar.ph909.preheader

vec.epilog.scalar.ph909.preheader:                ; preds = %iter.check908, %vec.epilog.iter.check910, %vec.epilog.middle.block920
  %indvars.iv135.i.ph = phi i64 [ 0, %iter.check908 ], [ %n.vec885, %vec.epilog.iter.check910 ], [ %n.vec913, %vec.epilog.middle.block920 ]
  %.ph1923 = phi double [ 0.000000e+00, %iter.check908 ], [ %i.bre, %vec.epilog.iter.check910 ], [ %i.brl, %vec.epilog.middle.block920 ]
  br label %vec.epilog.scalar.ph909

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph909, %vec.epilog.middle.block920, %middle.block901
  %.lcssa796 = phi double [ %i.brl, %vec.epilog.middle.block920 ], [ %i.bre, %middle.block901 ], [ %i.brr, %vec.epilog.scalar.ph909 ]
  store double %.lcssa796, ptr %i.bql, align 8, !tbaa !12
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count990.i.i
  br i1 %exitcond146.not.i, label %.lr.ph544, label %iter.check908

vec.epilog.scalar.ph909:                          ; preds = %vec.epilog.scalar.ph909.preheader, %vec.epilog.scalar.ph909
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %vec.epilog.scalar.ph909 ], [ %indvars.iv135.i.ph, %vec.epilog.scalar.ph909.preheader ] ; 3 uses
  %i.brm = phi double [ %i.brr, %vec.epilog.scalar.ph909 ], [ %.ph1923, %vec.epilog.scalar.ph909.preheader ]
  %gep191.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %indvars.iv135.i
  %i.brn = load double, ptr %gep191.i, align 8, !tbaa !12
  %i.bro = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %indvars.iv135.i
  %i.brp = load double, ptr %i.bro, align 8, !tbaa !12
  %i.brq = fmul reassoc nsz arcp contract afn double %i.brp, %i.brn
  %i.brr = fadd reassoc nsz arcp contract afn double %i.brq, %i.brm ; 2 uses
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count990.i.i
  br i1 %exitcond140.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph909, !llvm.loop !127

.lr.ph544:                                        ; preds = %._crit_edge.i, %bb.aj
  tail call void @free(ptr noundef %i.bmh) #17
  %i.brs = mul nuw nsw i64 %indvars.iv672, %i.gr
  %i.brt = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.brs
  br label %bb.ak

._crit_edge529:                                   ; preds = %vec.epilog.scalar.ph1825.prol.loopexit, %vec.epilog.scalar.ph1825, %vec.epilog.middle.block1842, %middle.block1821
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1
  %.not422.not = icmp slt i64 %indvars.iv661, %i.oh
  br i1 %.not422.not, label %iter.check1824, label %._crit_edge532.split

vec.epilog.scalar.ph1825:                         ; preds = %vec.epilog.scalar.ph1825.prol.loopexit, %vec.epilog.scalar.ph1825
  %indvars.iv656 = phi i64 [ %indvars.iv.next657.7, %vec.epilog.scalar.ph1825 ], [ %indvars.iv656.unr, %vec.epilog.scalar.ph1825.prol.loopexit ] ; 10 uses
  %i.bru = mul nsw i64 %indvars.iv656, %i.b
  %gep773 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bru
  %i.brv = load double, ptr %gep773, align 8, !tbaa !12
  %i.brw = mul nsw i64 %indvars.iv656, %i.ih
  %gep775 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.brw
  store double %i.brv, ptr %gep775, align 8, !tbaa !12
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %i.brx = mul nsw i64 %indvars.iv.next657, %i.b
  %gep773.1 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.brx
  %i.bry = load double, ptr %gep773.1, align 8, !tbaa !12
  %i.brz = mul nsw i64 %indvars.iv.next657, %i.ih
  %gep775.1 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.brz
  store double %i.bry, ptr %gep775.1, align 8, !tbaa !12
  %indvars.iv.next657.1 = add nuw nsw i64 %indvars.iv656, 2 ; 2 uses
  %i.bsa = mul nsw i64 %indvars.iv.next657.1, %i.b
  %gep773.2 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bsa
  %i.bsb = load double, ptr %gep773.2, align 8, !tbaa !12
  %i.bsc = mul nsw i64 %indvars.iv.next657.1, %i.ih
  %gep775.2 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bsc
  store double %i.bsb, ptr %gep775.2, align 8, !tbaa !12
  %indvars.iv.next657.2 = add nuw nsw i64 %indvars.iv656, 3 ; 2 uses
  %i.bsd = mul nsw i64 %indvars.iv.next657.2, %i.b
  %gep773.3 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bsd
  %i.bse = load double, ptr %gep773.3, align 8, !tbaa !12
  %i.bsf = mul nsw i64 %indvars.iv.next657.2, %i.ih
  %gep775.3 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bsf
  store double %i.bse, ptr %gep775.3, align 8, !tbaa !12
  %indvars.iv.next657.3 = add nuw nsw i64 %indvars.iv656, 4 ; 2 uses
  %i.bsg = mul nsw i64 %indvars.iv.next657.3, %i.b
  %gep773.4 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bsg
  %i.bsh = load double, ptr %gep773.4, align 8, !tbaa !12
  %i.bsi = mul nsw i64 %indvars.iv.next657.3, %i.ih
  %gep775.4 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bsi
  store double %i.bsh, ptr %gep775.4, align 8, !tbaa !12
  %indvars.iv.next657.4 = add nuw nsw i64 %indvars.iv656, 5 ; 2 uses
  %i.bsj = mul nsw i64 %indvars.iv.next657.4, %i.b
  %gep773.5 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bsj
  %i.bsk = load double, ptr %gep773.5, align 8, !tbaa !12
  %i.bsl = mul nsw i64 %indvars.iv.next657.4, %i.ih
  %gep775.5 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bsl
  store double %i.bsk, ptr %gep775.5, align 8, !tbaa !12
  %indvars.iv.next657.5 = add nuw nsw i64 %indvars.iv656, 6 ; 2 uses
  %i.bsm = mul nsw i64 %indvars.iv.next657.5, %i.b
  %gep773.6 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bsm
  %i.bsn = load double, ptr %gep773.6, align 8, !tbaa !12
  %i.bso = mul nsw i64 %indvars.iv.next657.5, %i.ih
  %gep775.6 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bso
  store double %i.bsn, ptr %gep775.6, align 8, !tbaa !12
  %indvars.iv.next657.6 = add nuw nsw i64 %indvars.iv656, 7 ; 2 uses
  %i.bsp = mul nsw i64 %indvars.iv.next657.6, %i.b
  %gep773.7 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bsp
  %i.bsq = load double, ptr %gep773.7, align 8, !tbaa !12
  %i.bsr = mul nsw i64 %indvars.iv.next657.6, %i.ih
  %gep775.7 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bsr
  store double %i.bsq, ptr %gep775.7, align 8, !tbaa !12
  %indvars.iv.next657.7 = add nuw nsw i64 %indvars.iv656, 8 ; 2 uses
  %exitcond660.not.7 = icmp eq i64 %indvars.iv.next657.7, %wide.trip.count680
  br i1 %exitcond660.not.7, label %._crit_edge529, label %vec.epilog.scalar.ph1825, !llvm.loop !128

._crit_edge545:                                   ; preds = %bb.al
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %.lr.ph.i432.preheader, label %.preheader452

bb.ak:                                            ; preds = %.lr.ph544, %bb.al
  %indvars.iv667 = phi i64 [ 0, %.lr.ph544 ], [ %indvars.iv.next668, %bb.al ] ; 4 uses
  %i.bss = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv667
  %i.bst = load double, ptr %i.bss, align 8, !tbaa !12 ; 4 uses
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %i.brt, i64 %indvars.iv667 ; 2 uses
  store double %i.bst, ptr %i.bsu, align 8, !tbaa !12
  br i1 %.not422530, label %bb.al, label %iter.check863

iter.check863:                                    ; preds = %bb.ak
  %10 = mul nsw i64 %indvars.iv667, %i.b
  %11 = load ptr, ptr %i.po, align 8, !tbaa !25   ; 3 uses
  %12 = getelementptr [8 x i8], ptr %i.e, i64 %10 ; 6 uses
  br i1 %min.iters.check829, label %vec.epilog.scalar.ph864.preheader, label %vector.main.loop.iter.check830

vector.main.loop.iter.check830:                   ; preds = %iter.check863
  br i1 %min.iters.check831, label %vec.epilog.ph867, label %vector.ph832

vector.ph832:                                     ; preds = %vector.main.loop.iter.check830
  %i.bsv = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.bst, i64 0
  br label %vector.body834

vector.body834:                                   ; preds = %vector.body834, %vector.ph832
  %index835 = phi i64 [ 0, %vector.ph832 ], [ %index.next855, %vector.body834 ] ; 3 uses
  %vec.phi836 = phi <4 x double> [ %i.bsv, %vector.ph832 ], [ %i.btm, %vector.body834 ]
  %vec.phi837 = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.btn, %vector.body834 ]
  %vec.phi838 = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.bto, %vector.body834 ]
  %vec.phi839 = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.btp, %vector.body834 ]
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index835 ; 4 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 16
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsw, i64 32
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsw, i64 48
  %wide.load = load <4 x i32>, ptr %i.bsw, align 4, !tbaa !33
  %wide.load840 = load <4 x i32>, ptr %i.bsx, align 4, !tbaa !33
  %wide.load841 = load <4 x i32>, ptr %i.bsy, align 4, !tbaa !33
  %wide.load842 = load <4 x i32>, ptr %i.bsz, align 4, !tbaa !33
  %i.bta = sext <4 x i32> %wide.load to <4 x i64>
  %i.btb = sext <4 x i32> %wide.load840 to <4 x i64>
  %i.btc = sext <4 x i32> %wide.load841 to <4 x i64>
  %i.btd = sext <4 x i32> %wide.load842 to <4 x i64>
  %wide.gep843 = getelementptr [8 x i8], ptr %12, <4 x i64> %i.bta
  %wide.gep844 = getelementptr [8 x i8], ptr %12, <4 x i64> %i.btb
  %wide.gep845 = getelementptr [8 x i8], ptr %12, <4 x i64> %i.btc
  %wide.gep846 = getelementptr [8 x i8], ptr %12, <4 x i64> %i.btd
  %wide.masked.gather847 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep843, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather848 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep844, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather849 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep845, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %wide.masked.gather850 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep846, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.bte = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index835 ; 4 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 32
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bte, i64 64
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bte, i64 96
  %wide.load851 = load <4 x double>, ptr %i.bte, align 8, !tbaa !12
  %wide.load852 = load <4 x double>, ptr %i.btf, align 8, !tbaa !12
  %wide.load853 = load <4 x double>, ptr %i.btg, align 8, !tbaa !12
  %wide.load854 = load <4 x double>, ptr %i.bth, align 8, !tbaa !12
  %i.bti = fmul reassoc nsz arcp contract afn <4 x double> %wide.load851, %wide.masked.gather847
  %i.btj = fmul reassoc nsz arcp contract afn <4 x double> %wide.load852, %wide.masked.gather848
  %i.btk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load853, %wide.masked.gather849
  %i.btl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load854, %wide.masked.gather850
  %i.btm = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi836, %i.bti ; 2 uses
  %i.btn = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi837, %i.btj ; 2 uses
  %i.bto = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi838, %i.btk ; 2 uses
  %i.btp = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi839, %i.btl ; 2 uses
  %index.next855 = add nuw i64 %index835, 16      ; 2 uses
  %i.btq = icmp eq i64 %index.next855, %n.vec833
  br i1 %i.btq, label %middle.block856, label %vector.body834, !llvm.loop !129

middle.block856:                                  ; preds = %vector.body834
  %bin.rdx857 = fadd reassoc nsz arcp contract afn <4 x double> %i.btn, %i.btm
  %bin.rdx858 = fadd reassoc nsz arcp contract afn <4 x double> %i.bto, %bin.rdx857
  %bin.rdx859 = fadd reassoc nsz arcp contract afn <4 x double> %i.btp, %bin.rdx858
  %i.btr = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx859) ; 3 uses
  br i1 %cmp.n860, label %._crit_edge540, label %vec.epilog.iter.check865

vec.epilog.iter.check865:                         ; preds = %middle.block856
  br i1 %min.epilog.iters.check866, label %vec.epilog.scalar.ph864.preheader, label %vec.epilog.ph867, !prof !22

vec.epilog.ph867:                                 ; preds = %vector.main.loop.iter.check830, %vec.epilog.iter.check865
  %vec.epilog.resume.val861 = phi i64 [ %n.vec833, %vec.epilog.iter.check865 ], [ 0, %vector.main.loop.iter.check830 ]
  %bc.merge.rdx862 = phi double [ %i.btr, %vec.epilog.iter.check865 ], [ %i.bst, %vector.main.loop.iter.check830 ]
  %i.bts = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx862, i64 0
  br label %vec.epilog.vector.body869

vec.epilog.vector.body869:                        ; preds = %vec.epilog.vector.body869, %vec.epilog.ph867
  %index870 = phi i64 [ %vec.epilog.resume.val861, %vec.epilog.ph867 ], [ %index.next876, %vec.epilog.vector.body869 ] ; 3 uses
  %vec.phi871 = phi <4 x double> [ %i.bts, %vec.epilog.ph867 ], [ %i.btx, %vec.epilog.vector.body869 ]
  %i.btt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index870
  %wide.load872 = load <4 x i32>, ptr %i.btt, align 4, !tbaa !33
  %i.btu = sext <4 x i32> %wide.load872 to <4 x i64>
  %wide.gep873 = getelementptr [8 x i8], ptr %12, <4 x i64> %i.btu
  %wide.masked.gather874 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep873, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12
  %i.btv = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index870
  %wide.load875 = load <4 x double>, ptr %i.btv, align 8, !tbaa !12
  %i.btw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load875, %wide.masked.gather874
  %i.btx = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi871, %i.btw ; 2 uses
  %index.next876 = add nuw i64 %index870, 4       ; 2 uses
  %i.bty = icmp eq i64 %index.next876, %n.vec868
  br i1 %i.bty, label %vec.epilog.middle.block877, label %vec.epilog.vector.body869, !llvm.loop !130

vec.epilog.middle.block877:                       ; preds = %vec.epilog.vector.body869
  %i.btz = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.btx) ; 2 uses
  br i1 %cmp.n878, label %._crit_edge540, label %vec.epilog.scalar.ph864.preheader

vec.epilog.scalar.ph864.preheader:                ; preds = %iter.check863, %vec.epilog.iter.check865, %vec.epilog.middle.block877
  %indvars.iv664.ph = phi i64 [ 0, %iter.check863 ], [ %n.vec833, %vec.epilog.iter.check865 ], [ %n.vec868, %vec.epilog.middle.block877 ]
  %.ph = phi double [ %i.bst, %iter.check863 ], [ %i.btr, %vec.epilog.iter.check865 ], [ %i.btz, %vec.epilog.middle.block877 ]
  br label %vec.epilog.scalar.ph864

._crit_edge540:                                   ; preds = %vec.epilog.scalar.ph864, %vec.epilog.middle.block877, %middle.block856
  %.lcssa797 = phi double [ %i.btz, %vec.epilog.middle.block877 ], [ %i.btr, %middle.block856 ], [ %i.buj, %vec.epilog.scalar.ph864 ]
  store double %.lcssa797, ptr %i.bsu, align 8, !tbaa !12
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge540, %bb.ak
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond671.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count680
  br i1 %exitcond671.not, label %._crit_edge545, label %bb.ak

vec.epilog.scalar.ph864:                          ; preds = %vec.epilog.scalar.ph864.preheader, %vec.epilog.scalar.ph864
  %indvars.iv664 = phi i64 [ %indvars.iv.next665, %vec.epilog.scalar.ph864 ], [ %indvars.iv664.ph, %vec.epilog.scalar.ph864.preheader ] ; 4 uses
  %i.bua = phi double [ %i.buj, %vec.epilog.scalar.ph864 ], [ %.ph, %vec.epilog.scalar.ph864.preheader ]
  %i.bub = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv664
  %i.buc = load i32, ptr %i.bub, align 4, !tbaa !33
  %i.bud = sext i32 %i.buc to i64
  %i.bue = getelementptr [8 x i8], ptr %12, i64 %i.bud
  %i.buf = load double, ptr %i.bue, align 8, !tbaa !12
  %i.bug = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv664
  %i.buh = load double, ptr %i.bug, align 8, !tbaa !12
  %i.bui = fmul reassoc nsz arcp contract afn double %i.buh, %i.buf
  %i.buj = fsub reassoc nsz arcp contract afn double %i.bua, %i.bui ; 2 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1
  %.not424.not = icmp slt i64 %indvars.iv664, %i.oh
  br i1 %.not424.not, label %vec.epilog.scalar.ph864, label %._crit_edge540, !llvm.loop !131

.lr.ph.i432:                                      ; preds = %.lr.ph.i432.preheader, %.lr.ph.i432
  %indvars.iv.i434 = phi i64 [ %indvars.iv.next.i435.1, %.lr.ph.i432 ], [ 0, %.lr.ph.i432.preheader ] ; 5 uses
  %.03.i = phi double [ %i.bvn, %.lr.ph.i432 ], [ 0.000000e+00, %.lr.ph.i432.preheader ]
  %.0261.i = phi double [ %i.bvp, %.lr.ph.i432 ], [ 0.000000e+00, %.lr.ph.i432.preheader ] ; 2 uses
  %niter2129 = phi i64 [ %niter2129.next.1, %.lr.ph.i432 ], [ 0, %.lr.ph.i432.preheader ]
  %i.buk = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i434
  %i.bul = load double, ptr %i.buk, align 8, !tbaa !12 ; 2 uses
  %i.bum = fmul reassoc nsz arcp contract afn double %i.bul, %i.bul
  %i.bun = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i434
  %i.buo = load double, ptr %i.bun, align 8, !tbaa !12 ; 2 uses
  %i.bup = fmul reassoc nsz arcp contract afn double %i.buo, %i.buo
  %i.buq = fadd reassoc nsz arcp contract afn double %i.bup, %i.bum
  %i.bur = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i434
  %i.bus = load double, ptr %i.bur, align 8, !tbaa !12 ; 2 uses
  %i.but = fmul reassoc nsz arcp contract afn double %i.bus, %i.bus
  %i.buu = fadd reassoc nsz arcp contract afn double %i.buq, %i.but
  %i.buv = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.buu) ; 3 uses
  %i.buw = fmul reassoc nsz arcp contract afn double %i.buv, %i.jn
  %i.bux = fadd reassoc nsz arcp contract afn double %i.buw, %.03.i
  %i.buy = fcmp reassoc nsz arcp contract afn ogt double %.0261.i, %i.buv
  %i.buz = select reassoc nsz arcp contract afn i1 %i.buy, double %.0261.i, double %i.buv ; 2 uses
  %indvars.iv.next.i435 = or disjoint i64 %indvars.iv.i434, 1 ; 3 uses
  %i.bva = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next.i435
  %i.bvb = load double, ptr %i.bva, align 8, !tbaa !12 ; 2 uses
  %i.bvc = fmul reassoc nsz arcp contract afn double %i.bvb, %i.bvb
  %i.bvd = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i435
  %i.bve = load double, ptr %i.bvd, align 8, !tbaa !12 ; 2 uses
  %i.bvf = fmul reassoc nsz arcp contract afn double %i.bve, %i.bve
  %i.bvg = fadd reassoc nsz arcp contract afn double %i.bvf, %i.bvc
  %i.bvh = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next.i435
  %i.bvi = load double, ptr %i.bvh, align 8, !tbaa !12 ; 2 uses
  %i.bvj = fmul reassoc nsz arcp contract afn double %i.bvi, %i.bvi
  %i.bvk = fadd reassoc nsz arcp contract afn double %i.bvg, %i.bvj
  %i.bvl = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bvk) ; 3 uses
  %i.bvm = fmul reassoc nsz arcp contract afn double %i.bvl, %i.jo
  %i.bvn = fadd reassoc nsz arcp contract afn double %i.bvm, %i.bux ; 3 uses
  %i.bvo = fcmp reassoc nsz arcp contract afn ogt double %i.buz, %i.bvl
  %i.bvp = select reassoc nsz arcp contract afn i1 %i.bvo, double %i.buz, double %i.bvl ; 3 uses
  %indvars.iv.next.i435.1 = add nuw nsw i64 %indvars.iv.i434, 2 ; 2 uses
  %niter2129.next.1 = add i64 %niter2129, 2       ; 2 uses
  %niter2129.ncmp.1 = icmp eq i64 %niter2129.next.1, %unroll_iter2128
  br i1 %niter2129.ncmp.1, label %compute_error.exit.unr-lcssa, label %.lr.ph.i432

compute_error.exit.unr-lcssa:                     ; preds = %.lr.ph.i432
  br i1 %lcmp.mod2124.not.a, label %compute_error.exit, label %.lr.ph.i432.epil.preheader

.lr.ph.i432.epil.preheader:                       ; preds = %compute_error.exit.unr-lcssa, %.lr.ph.i432.preheader
  %indvars.iv.i434.epil.init = phi i64 [ 0, %.lr.ph.i432.preheader ], [ %indvars.iv.next.i435.1, %compute_error.exit.unr-lcssa ] ; 3 uses
  %.03.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i432.preheader ], [ %i.bvn, %compute_error.exit.unr-lcssa ]
  %.0261.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i432.preheader ], [ %i.bvp, %compute_error.exit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod2127)
  %i.bvq = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i434.epil.init
  %i.bvr = load double, ptr %i.bvq, align 8, !tbaa !12 ; 2 uses
  %i.bvs = fmul reassoc nsz arcp contract afn double %i.bvr, %i.bvr
  %i.bvt = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i434.epil.init
  %i.bvu = load double, ptr %i.bvt, align 8, !tbaa !12 ; 2 uses
  %i.bvv = fmul reassoc nsz arcp contract afn double %i.bvu, %i.bvu
  %i.bvw = fadd reassoc nsz arcp contract afn double %i.bvv, %i.bvs
  %i.bvx = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i434.epil.init
  %i.bvy = load double, ptr %i.bvx, align 8, !tbaa !12 ; 2 uses
  %i.bvz = fmul reassoc nsz arcp contract afn double %i.bvy, %i.bvy
  %i.bwa = fadd reassoc nsz arcp contract afn double %i.bvw, %i.bvz
  %i.bwb = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bwa) ; 3 uses
  %i.bwc = fmul reassoc nsz arcp contract afn double %i.bwb, %i.jp
  %i.bwd = fadd reassoc nsz arcp contract afn double %i.bwc, %.03.i.epil.init
  %i.bwe = fcmp reassoc nsz arcp contract afn ogt double %.0261.i.epil.init, %i.bwb
  %i.bwf = select reassoc nsz arcp contract afn i1 %i.bwe, double %.0261.i.epil.init, double %i.bwb
  br label %compute_error.exit

compute_error.exit:                               ; preds = %compute_error.exit.unr-lcssa, %.lr.ph.i432.epil.preheader
  %.lcssa2009 = phi double [ %i.bvn, %compute_error.exit.unr-lcssa ], [ %i.bwd, %.lr.ph.i432.epil.preheader ] ; 4 uses
  %.lcssa2008 = phi double [ %i.bvp, %compute_error.exit.unr-lcssa ], [ %i.bwf, %.lr.ph.i432.epil.preheader ] ; 2 uses
  %i.bwg = icmp eq i32 %spec.select428, %i.io
  br i1 %i.bwg, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %compute_error.exit
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store double %.lcssa2009, ptr %8, align 8, !tbaa !12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %.not420, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store double %.lcssa2008, ptr %9, align 8, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bwh = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.bwi = add nsw i32 %i.ny, 1
  %i.bwj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bwh, ptr noundef nonnull @.str.1, i32 noundef %i.bwi, i32 noundef %i.io, double noundef %.lcssa2009, double noundef %.lcssa2008) #18 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %compute_error.exit
  %.not426 = icmp slt i64 %indvars.iv677, %i.ih
  %i.bwk = fcmp reassoc nsz arcp contract afn ult double %.lcssa2009, %.0383550
  %or.cond = select i1 %.not426, i1 true, i1 %i.bwk
  br i1 %or.cond, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bwl = load ptr, ptr @stderr, align 8, !tbaa !132
  %i.bwm = tail call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %i.bwl) #19 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge553, label %bb.n

._crit_edge553:                                   ; preds = %bb.at, %bb.n, %dsvd.exit.i, %._crit_edge505
  %.3407 = phi i32 [ -1, %._crit_edge505 ], [ %i.kz, %dsvd.exit.i ], [ -1, %bb.at ], [ %i.kz, %bb.n ]
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
