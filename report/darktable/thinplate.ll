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
  store double 0.000000e+00, ptr %8, align 8, !tbaa !117
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not420 = icmp eq ptr %9, null                 ; 2 uses
  br i1 %.not420, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %9, align 8, !tbaa !117
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = add nsw i32 %2, 4                        ; 25 uses
  %i.b = sext i32 %i.a to i64                     ; 32 uses
  %i.c = shl nsw i64 %i.b, 3                      ; 7 uses
  %i.d = mul i64 %i.c, %i.b
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 24 uses
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
  %i.k = load double, ptr %i.j, align 8, !tbaa !117 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !117 ; 3 uses
  %i.n = mul nuw nsw i64 %indvars.iv, %i.g
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %invariant.gep750 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader462
  %.idx719.prol = mul nuw nsw i64 %indvars.iv, 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx719.prol ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !117
  %i.q = fsub reassoc nsz arcp contract afn double %i.p, %i.k ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !117
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
  store double %i.ah, ptr %gep.prol, align 8, !tbaa !117
  %gep751.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep750, i64 %indvars.iv
  store double %i.ah, ptr %gep751.prol, align 8, !tbaa !117
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
  %xtraiter2023 = and i64 %wide.trip.count587, 7  ; 3 uses
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
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !117
  %i.as = fsub reassoc nsz arcp contract afn double %i.ar, %i.k ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn double %i.as, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !117
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
  store double %i.bj, ptr %gep, align 8, !tbaa !117
  %gep751 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep750, i64 %indvars.iv583
  store double %i.bj, ptr %gep751, align 8, !tbaa !117
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 3 uses
  %.idx719.1 = mul nuw nsw i64 %indvars.iv.next584, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx719.1 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !117
  %i.bn = fsub reassoc nsz arcp contract afn double %i.bm, %i.k ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bn, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !117
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
  store double %i.ce, ptr %gep.1, align 8, !tbaa !117
  %gep751.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep750, i64 %indvars.iv.next584
  store double %i.ce, ptr %gep751.1, align 8, !tbaa !117
  %indvars.iv.next584.1 = add nuw nsw i64 %indvars.iv583, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next584.1, %wide.trip.count587
  br i1 %exitcond.not.1, label %.unr-lcssa, label %.preheader462.new

.lr.ph486.unr-lcssa:                              ; preds = %bb.g
  %lcmp.mod2024.not = icmp eq i64 %xtraiter2023, 0
  br i1 %lcmp.mod2024.not, label %.lr.ph486, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph486.unr-lcssa, %.lr.ph
  %indvars.iv589.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next590.7, %.lr.ph486.unr-lcssa ]
  %lcmp.mod2025 = icmp ne i64 %xtraiter2023, 0
  tail call void @llvm.assume(i1 %lcmp.mod2025)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv589.epil = phi i64 [ %indvars.iv589.epil.init, %.epil.preheader ], [ %indvars.iv.next590.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep753.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv589.epil
  store double 1.000000e+00, ptr %gep753.epil, align 8, !tbaa !117
  %i.cg = mul nuw nsw i64 %indvars.iv589.epil, %i.am
  %gep755.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.cg
  store double 1.000000e+00, ptr %gep755.epil, align 8, !tbaa !117
  %indvars.iv.next590.epil = add nuw nsw i64 %indvars.iv589.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2023
  br i1 %epil.iter.cmp.not, label %.lr.ph486, label %bb.f, !llvm.loop !12

.lr.ph486:                                        ; preds = %bb.f, %.lr.ph486.unr-lcssa
  %i.ch = add nuw nsw i32 %2, 1
  %i.ci = mul nuw nsw i32 %i.ch, %i.a
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = zext nneg i32 %i.a to i64               ; 5 uses
  %i.cl = zext nneg i32 %2 to i64
  %invariant.gep756 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cj ; 5 uses
  %invariant.gep758 = getelementptr [8 x i8], ptr %i.e, i64 %i.cl ; 5 uses
  %xtraiter2027 = and i64 %wide.trip.count587, 3  ; 3 uses
  %i.cm = icmp ult i64 %i.ao, 3
  br i1 %i.cm, label %.epil.preheader2026, label %.lr.ph486.new

.lr.ph486.new:                                    ; preds = %.lr.ph486
  %unroll_iter2031 = and i64 %wide.trip.count587, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv589 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next590.7, %bb.g ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.g ]
  %gep753 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv589
  store double 1.000000e+00, ptr %gep753, align 8, !tbaa !117
  %i.cn = mul nuw nsw i64 %indvars.iv589, %i.am
  %gep755 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.cn
  store double 1.000000e+00, ptr %gep755, align 8, !tbaa !117
  %indvars.iv.next590 = or disjoint i64 %indvars.iv589, 1 ; 2 uses
  %gep753.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590
  store double 1.000000e+00, ptr %gep753.1, align 8, !tbaa !117
  %i.co = mul nuw nsw i64 %indvars.iv.next590, %i.am
  %gep755.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.co
  store double 1.000000e+00, ptr %gep755.1, align 8, !tbaa !117
  %indvars.iv.next590.1 = or disjoint i64 %indvars.iv589, 2 ; 2 uses
  %gep753.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.1
  store double 1.000000e+00, ptr %gep753.2, align 8, !tbaa !117
  %i.cp = mul nuw nsw i64 %indvars.iv.next590.1, %i.am
end_hunk_0
begin_hunk_1_@thinplate_match:bb.a

.epil.preheader2033:                              ; preds = %.lr.ph490.unr-lcssa, %.lr.ph488
  %indvars.iv599.epil.init = phi i64 [ 0, %.lr.ph488 ], [ %indvars.iv.next600.3, %.lr.ph490.unr-lcssa ]
  %lcmp.mod2037 = icmp ne i64 %xtraiter2034, 0
  tail call void @llvm.assume(i1 %lcmp.mod2037)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader2033
  %indvars.iv599.epil = phi i64 [ %indvars.iv599.epil.init, %.epil.preheader2033 ], [ %indvars.iv.next600.epil, %bb.j ] ; 4 uses
  %epil.iter2035 = phi i64 [ 0, %.epil.preheader2033 ], [ %epil.iter2035.next, %bb.j ]
  %.idx721.epil = mul nuw nsw i64 %indvars.iv599.epil, 24
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.epil
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !117 ; 2 uses
  %gep761.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv599.epil
  store double %i.dx, ptr %gep761.epil, align 8, !tbaa !117
  %i.dy = mul nuw nsw i64 %indvars.iv599.epil, %i.dc
  %gep763.epil = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.dy
  %i.dz = getelementptr i8, ptr %gep763.epil, i64 16
  store double %i.dx, ptr %i.dz, align 8, !tbaa !117
  %indvars.iv.next600.epil = add nuw nsw i64 %indvars.iv599.epil, 1
  %epil.iter2035.next = add i64 %epil.iter2035, 1 ; 2 uses
  %epil.iter2035.cmp.not = icmp eq i64 %epil.iter2035.next, %xtraiter2034
  br i1 %epil.iter2035.cmp.not, label %.lr.ph490, label %bb.j, !llvm.loop !14

.lr.ph490:                                        ; preds = %bb.j, %.lr.ph490.unr-lcssa
  %i.ea = add nuw nsw i32 %2, 3
  %i.eb = mul nuw nsw i32 %i.ea, %i.a
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = zext nneg i32 %i.a to i64               ; 5 uses
  %i.ee = zext nneg i32 %2 to i64
  %invariant.gep764 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ec ; 5 uses
  %invariant.gep766 = getelementptr [8 x i8], ptr %i.e, i64 %i.ee ; 5 uses
  %xtraiter2041 = and i64 %wide.trip.count587, 3  ; 3 uses
  %i.ef = icmp ult i64 %i.ao, 3
  br i1 %i.ef, label %.epil.preheader2040, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.lr.ph490
  %unroll_iter2045 = and i64 %wide.trip.count587, 2147483644
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph488.new
  %indvars.iv599 = phi i64 [ 0, %.lr.ph488.new ], [ %indvars.iv.next600.3, %bb.k ] ; 7 uses
  %niter2039 = phi i64 [ 0, %.lr.ph488.new ], [ %niter2039.next.3, %bb.k ]
  %.idx721 = mul nuw nsw i64 %indvars.iv599, 24
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !117 ; 2 uses
  %gep761 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv599
  store double %i.ei, ptr %gep761, align 8, !tbaa !117
  %i.ej = mul nuw nsw i64 %indvars.iv599, %i.dc
  %gep763 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.ej
  %i.ek = getelementptr i8, ptr %gep763, i64 16
  store double %i.ei, ptr %i.ek, align 8, !tbaa !117
  %indvars.iv.next600 = or disjoint i64 %indvars.iv599, 1 ; 3 uses
  %.idx721.1 = mul nuw nsw i64 %indvars.iv.next600, 24
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !117 ; 2 uses
  %gep761.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600
  store double %i.en, ptr %gep761.1, align 8, !tbaa !117
  %i.eo = mul nuw nsw i64 %indvars.iv.next600, %i.dc
  %gep763.1 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.eo
  %i.ep = getelementptr i8, ptr %gep763.1, i64 16
  store double %i.en, ptr %i.ep, align 8, !tbaa !117
  %indvars.iv.next600.1 = or disjoint i64 %indvars.iv599, 2 ; 3 uses
  %.idx721.2 = mul nuw nsw i64 %indvars.iv.next600.1, 24
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.2
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !117 ; 2 uses
  %gep761.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600.1
  store double %i.es, ptr %gep761.2, align 8, !tbaa !117
  %i.et = mul nuw nsw i64 %indvars.iv.next600.1, %i.dc
  %gep763.2 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.et
  %i.eu = getelementptr i8, ptr %gep763.2, i64 16
  store double %i.es, ptr %i.eu, align 8, !tbaa !117
  %indvars.iv.next600.2 = or disjoint i64 %indvars.iv599, 3 ; 3 uses
  %.idx721.3 = mul nuw nsw i64 %indvars.iv.next600.2, 24
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !117 ; 2 uses
  %gep761.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600.2
  store double %i.ex, ptr %gep761.3, align 8, !tbaa !117
  %i.ey = mul nuw nsw i64 %indvars.iv.next600.2, %i.dc
  %gep763.3 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.ey
  %i.ez = getelementptr i8, ptr %gep763.3, i64 16
  store double %i.ex, ptr %i.ez, align 8, !tbaa !117
  %indvars.iv.next600.3 = add nuw nsw i64 %indvars.iv599, 4 ; 2 uses
  %niter2039.next.3 = add i64 %niter2039, 4       ; 2 uses
  %niter2039.ncmp.3 = icmp eq i64 %niter2039.next.3, %unroll_iter2038
  br i1 %niter2039.ncmp.3, label %.lr.ph490.unr-lcssa, label %bb.k

bb.l:                                             ; preds = %bb.l, %.lr.ph490.new
  %indvars.iv604 = phi i64 [ 0, %.lr.ph490.new ], [ %indvars.iv.next605.3, %bb.l ] ; 7 uses
  %niter2046 = phi i64 [ 0, %.lr.ph490.new ], [ %niter2046.next.3, %bb.l ]
  %.idx722 = mul nuw nsw i64 %indvars.iv604, 24
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !117 ; 2 uses
  %gep765 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv604
  store double %i.fc, ptr %gep765, align 8, !tbaa !117
  %i.fd = mul nuw nsw i64 %indvars.iv604, %i.ed
  %gep767 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fd
  %i.fe = getelementptr i8, ptr %gep767, i64 24
  store double %i.fc, ptr %i.fe, align 8, !tbaa !117
  %indvars.iv.next605 = or disjoint i64 %indvars.iv604, 1 ; 3 uses
  %.idx722.1 = mul nuw nsw i64 %indvars.iv.next605, 24
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !117 ; 2 uses
  %gep765.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605
  store double %i.fh, ptr %gep765.1, align 8, !tbaa !117
  %i.fi = mul nuw nsw i64 %indvars.iv.next605, %i.ed
  %gep767.1 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fi
  %i.fj = getelementptr i8, ptr %gep767.1, i64 24
  store double %i.fh, ptr %i.fj, align 8, !tbaa !117
  %indvars.iv.next605.1 = or disjoint i64 %indvars.iv604, 2 ; 3 uses
  %.idx722.2 = mul nuw nsw i64 %indvars.iv.next605.1, 24
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.2
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !117 ; 2 uses
  %gep765.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605.1
  store double %i.fm, ptr %gep765.2, align 8, !tbaa !117
  %i.fn = mul nuw nsw i64 %indvars.iv.next605.1, %i.ed
  %gep767.2 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fn
  %i.fo = getelementptr i8, ptr %gep767.2, i64 24
  store double %i.fm, ptr %i.fo, align 8, !tbaa !117
  %indvars.iv.next605.2 = or disjoint i64 %indvars.iv604, 3 ; 3 uses
  %.idx722.3 = mul nuw nsw i64 %indvars.iv.next605.2, 24
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !117 ; 2 uses
  %gep765.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605.2
  store double %i.fr, ptr %gep765.3, align 8, !tbaa !117
  %i.fs = mul nuw nsw i64 %indvars.iv.next605.2, %i.ed
  %gep767.3 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fs
  %i.ft = getelementptr i8, ptr %gep767.3, i64 24
  store double %i.fr, ptr %i.ft, align 8, !tbaa !117
  %indvars.iv.next605.3 = add nuw nsw i64 %indvars.iv604, 4 ; 2 uses
  %niter2046.next.3 = add i64 %niter2046, 4       ; 2 uses
  %niter2046.ncmp.3 = icmp eq i64 %niter2046.next.3, %unroll_iter2045
  br i1 %niter2046.ncmp.3, label %.preheader458.thread.loopexit.unr-lcssa, label %bb.l

.preheader458.thread.loopexit.unr-lcssa:          ; preds = %bb.l
  %lcmp.mod2043.not = icmp eq i64 %xtraiter2041, 0
  br i1 %lcmp.mod2043.not, label %.preheader458.thread, label %.epil.preheader2040

.epil.preheader2040:                              ; preds = %.preheader458.thread.loopexit.unr-lcssa, %.lr.ph490
  %indvars.iv604.epil.init = phi i64 [ 0, %.lr.ph490 ], [ %indvars.iv.next605.3, %.preheader458.thread.loopexit.unr-lcssa ]
  %lcmp.mod2044 = icmp ne i64 %xtraiter2041, 0
  tail call void @llvm.assume(i1 %lcmp.mod2044)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader2040
  %indvars.iv604.epil = phi i64 [ %indvars.iv604.epil.init, %.epil.preheader2040 ], [ %indvars.iv.next605.epil, %bb.m ] ; 4 uses
  %epil.iter2042 = phi i64 [ 0, %.epil.preheader2040 ], [ %epil.iter2042.next, %bb.m ]
  %.idx722.epil = mul nuw nsw i64 %indvars.iv604.epil, 24
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.epil
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !117 ; 2 uses
  %gep765.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv604.epil
  store double %i.fw, ptr %gep765.epil, align 8, !tbaa !117
  %i.fx = mul nuw nsw i64 %indvars.iv604.epil, %i.ed
  %gep767.epil = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.fx
  %i.fy = getelementptr i8, ptr %gep767.epil, i64 24
  store double %i.fw, ptr %i.fy, align 8, !tbaa !117
  %indvars.iv.next605.epil = add nuw nsw i64 %indvars.iv604.epil, 1
  %epil.iter2042.next = add i64 %epil.iter2042, 1 ; 2 uses
  %epil.iter2042.cmp.not = icmp eq i64 %epil.iter2042.next, %xtraiter2041
  br i1 %epil.iter2042.cmp.not, label %.preheader458.thread, label %bb.m, !llvm.loop !15

.preheader458.thread:                             ; preds = %.preheader458.thread.loopexit.unr-lcssa, %bb.m, %bb.e
  %i.fz = add i32 %2, 5
  %i.ga = mul i32 %2, %i.fz                       ; 4 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 3
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.gc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep, i8 0, i64 32, i1 false), !tbaa !117
  %i.gd = add i32 %i.ga, %i.a
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3
  %scevgep.1 = getelementptr i8, ptr %i.e, i64 %i.gf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.1, i8 0, i64 32, i1 false), !tbaa !117
  %i.gg = shl i32 %i.a, 1
  %i.gh = add i32 %i.ga, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = shl nsw i64 %i.gi, 3
  %scevgep.2 = getelementptr i8, ptr %i.e, i64 %i.gj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.2, i8 0, i64 32, i1 false), !tbaa !117
  %i.gk = mul i32 %i.a, 3
  %i.gl = add i32 %i.ga, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = shl nsw i64 %i.gm, 3
  %scevgep.3 = getelementptr i8, ptr %i.e, i64 %i.gn
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.3, i8 0, i64 32, i1 false), !tbaa !117
  %i.go = tail call noalias ptr @malloc(i64 noundef %i.c) #15 ; 9 uses
  %i.gp = icmp sgt i32 %2, -4                     ; 2 uses
  br i1 %i.gp, label %.lr.ph498, label %._crit_edge499

.lr.ph498:                                        ; preds = %.preheader458.thread
  %wide.trip.count624 = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check = icmp ugt i32 %2, -5
  %min.iters.check803 = icmp ult i32 %i.a, 16
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
  %i.gr = zext i32 %i.a to i64                    ; 42 uses
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
  %i.gz = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.ha = mul nuw nsw <4 x i64> %step.add, %broadcast.splat
  %i.hb = mul nuw nsw <4 x i64> %step.add.2, %broadcast.splat
  %i.hc = mul nuw nsw <4 x i64> %step.add.3, %broadcast.splat
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.gz
  %wide.gep807 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.ha
  %wide.gep808 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.hb
  %wide.gep809 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.hc
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %wide.masked.gather810 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep807, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %wide.masked.gather811 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep808, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %wide.masked.gather812 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep809, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
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
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x double> %i.hi, %i.hh
  %bin.rdx813 = fadd reassoc nsz arcp contract afn <4 x double> %i.hj, %bin.rdx
  %bin.rdx814 = fadd reassoc nsz arcp contract afn <4 x double> %i.hk, %bin.rdx813
  %i.hm = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx814) ; 3 uses
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !121

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
  %wide.masked.gather824 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep823, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %i.hp = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather824, %wide.masked.gather824
  %i.hq = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi822, %i.hp ; 2 uses
  %index.next825 = add nuw i64 %index820, 4       ; 2 uses
  %vec.ind.next826 = add nuw nsw <4 x i64> %vec.ind821, splat (i64 4)
  %i.hr = icmp eq i64 %index.next825, %n.vec815
  br i1 %i.hr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hs = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.hq) ; 2 uses
  br i1 %cmp.n827, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv615.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec815, %vec.epilog.middle.block ]
  %.ph2016 = phi double [ 0.000000e+00, %iter.check ], [ %i.hm, %vec.epilog.iter.check ], [ %i.hs, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa802 = phi double [ %i.hs, %vec.epilog.middle.block ], [ %i.hm, %middle.block ], [ %i.hz, %vec.epilog.scalar.ph ]
  %i.ht = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %.lcssa802)
  %i.hu = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ht
  store double %i.hu, ptr %i.gy, align 8, !tbaa !117
  %indvars.iv.next621 = add nuw nsw i64 %indvars.iv620, 1 ; 2 uses
  %exitcond625.not = icmp eq i64 %indvars.iv.next621, %wide.trip.count624
  br i1 %exitcond625.not, label %._crit_edge499, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv615 = phi i64 [ %indvars.iv.next616, %vec.epilog.scalar.ph ], [ %indvars.iv615.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hv = phi double [ %i.hz, %vec.epilog.scalar.ph ], [ %.ph2016, %vec.epilog.scalar.ph.preheader ]
  %i.hw = mul nuw nsw i64 %indvars.iv615, %i.b
  %gep769 = getelementptr [8 x i8], ptr %invariant.gep768, i64 %i.hw
  %i.hx = load double, ptr %gep769, align 8, !tbaa !117 ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn double %i.hx, %i.hx
  %i.hz = fadd reassoc nsz arcp contract afn double %i.hv, %i.hy ; 2 uses
  %indvars.iv.next616 = add nuw nsw i64 %indvars.iv615, 1 ; 2 uses
  %exitcond619.not = icmp eq i64 %indvars.iv.next616, %wide.trip.count624
  br i1 %exitcond619.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !18

.lr.ph504.preheader:                              ; preds = %._crit_edge499
  %i.ia = zext nneg i32 %1 to i64
  %i.ib = shl nuw nsw i64 %i.ia, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gw, ptr align 8 %4, i64 %i.ib, i1 false), !tbaa !124
  %wide.trip.count632 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter2047 = and i64 %wide.trip.count632, 3  ; 3 uses
  %i.ic = icmp ult i32 %1, 4
  br i1 %i.ic, label %.lr.ph504.epil.preheader, label %.lr.ph504.preheader.new

.lr.ph504.preheader.new:                          ; preds = %.lr.ph504.preheader
  %unroll_iter2051 = and i64 %wide.trip.count632, 2147483644
  br label %.lr.ph504

._crit_edge505.loopexit.unr-lcssa:                ; preds = %.lr.ph504
  %lcmp.mod2049.not = icmp eq i64 %xtraiter2047, 0
  br i1 %lcmp.mod2049.not, label %._crit_edge505, label %.lr.ph504.epil.preheader

.lr.ph504.epil.preheader:                         ; preds = %._crit_edge505.loopexit.unr-lcssa, %.lr.ph504.preheader
  %indvars.iv629.epil.init = phi i64 [ 0, %.lr.ph504.preheader ], [ %indvars.iv.next630.3, %._crit_edge505.loopexit.unr-lcssa ]
  %lcmp.mod2050 = icmp ne i64 %xtraiter2047, 0
  tail call void @llvm.assume(i1 %lcmp.mod2050)
  br label %.lr.ph504.epil

.lr.ph504.epil:                                   ; preds = %.lr.ph504.epil, %.lr.ph504.epil.preheader
  %indvars.iv629.epil = phi i64 [ %indvars.iv629.epil.init, %.lr.ph504.epil.preheader ], [ %indvars.iv.next630.epil, %.lr.ph504.epil ] ; 3 uses
  %epil.iter2048 = phi i64 [ 0, %.lr.ph504.epil.preheader ], [ %epil.iter2048.next, %.lr.ph504.epil ]
  %i.id = mul nuw nsw i64 %indvars.iv629.epil, %i.gr
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv629.epil
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ie, ptr align 8 %i.ig, i64 %i.c, i1 false)
  %indvars.iv.next630.epil = add nuw nsw i64 %indvars.iv629.epil, 1
  %epil.iter2048.next = add i64 %epil.iter2048, 1 ; 2 uses
  %epil.iter2048.cmp.not = icmp eq i64 %epil.iter2048.next, %xtraiter2047
  br i1 %epil.iter2048.cmp.not, label %._crit_edge505, label %.lr.ph504.epil, !llvm.loop !19

._crit_edge505:                                   ; preds = %._crit_edge505.loopexit.unr-lcssa, %.lr.ph504.epil, %._crit_edge499
  %i.ih = sext i32 %5 to i64                      ; 104 uses
  %i.ii = shl nsw i64 %i.ih, 3                    ; 3 uses
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ii) #15 ; 15 uses
  %i.ik = mul i64 %i.ii, %i.ih
  %i.il = tail call noalias ptr @malloc(i64 noundef %i.ik) #15 ; 10 uses
  %i.im = mul nsw i64 %i.ih, %i.b
  %i.in = tail call noalias ptr @calloc(i64 noundef %i.im, i64 noundef 8) #16 ; 31 uses
  br i1 %i.gp, label %.lr.ph552, label %._crit_edge553

.lr.ph552:                                        ; preds = %._crit_edge505
  %i.io = add nsw i32 %5, -4                      ; 3 uses
  %i.ip = add i32 %5, -1                          ; 7 uses
  %.0661700.i.i = add i32 %5, 1                   ; 3 uses
  %i.iq = xor i32 %5, -1
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gr ; 3 uses
  %.idx = shl nuw nsw i64 %i.gr, 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx ; 3 uses
  %i.it = uitofp nneg i32 %i.a to double          ; 3 uses
  %wide.trip.count680 = zext i32 %i.a to i64      ; 26 uses
  %wide.trip.count680.a = zext nneg i32 %1 to i64
  %wide.trip.count649 = zext nneg i32 %1 to i64
  %10 = sext i32 %i.ip to i64
  %i.iu = shl nuw nsw i64 %wide.trip.count680, 3  ; 2 uses
  %scevgep1006 = getelementptr i8, ptr %i.in, i64 %i.iu
  %scevgep1009.a = getelementptr i8, ptr %i.in, i64 %i.iu
  %i.iv = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.iw = add nsw i64 %i.iv, 16
  %11 = add nsw i64 %i.iv, 8
  %i.ix = add i32 %2, 2
  %i.iy = shl nuw nsw i64 %wide.trip.count680, 3
  %i.iz = getelementptr i8, ptr %i.in, i64 %i.iy
  %scevgep1612 = getelementptr i8, ptr %i.iz, i64 -8
  %i.ja = add nsw i64 %i.gr, -1                   ; 4 uses
  %i.jb = xor i32 %2, 4
  %i.jc = add i32 %2, 3
  %xtraiter2053 = and i64 %i.gr, 3                ; 3 uses
  %12 = icmp ult i64 %i.ja, 3
  %unroll_iter2058 = and i64 %i.gr, 4294967292
  %lcmp.mod2055.not = icmp eq i64 %xtraiter2053, 0
  %lcmp.mod2057 = icmp ne i64 %xtraiter2053, 0
  %min.iters.check1849 = icmp ugt i32 %2, -5
  %min.iters.check1851 = icmp ult i32 %i.a, 16
  %i.jd = and i64 %wide.trip.count680, 12
  %n.vec1854 = and i64 %wide.trip.count680, 4294967280 ; 4 uses
  %broadcast.splatinsert1855 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1856 = shufflevector <4 x i64> %broadcast.splatinsert1855, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n1885 = icmp eq i64 %n.vec1854, %wide.trip.count680
  %min.epilog.iters.check1891 = icmp eq i64 %i.jd, 0
  %n.vec1893 = and i64 %wide.trip.count680, 4294967292 ; 3 uses
  %broadcast.splatinsert1894 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1895 = shufflevector <4 x i64> %broadcast.splatinsert1894, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1909 = icmp eq i64 %n.vec1893, %wide.trip.count680
  %min.iters.check1801 = icmp ult i32 %2, -4
  %ident.check1800.not = icmp eq i32 %5, 1
  %or.cond1914 = and i1 %min.iters.check1801, %ident.check1800.not
  %min.iters.check1803 = icmp ult i32 %i.a, 16
  %i.je = and i64 %wide.trip.count680, 12
  %n.vec1806 = and i64 %wide.trip.count680, 4294967280 ; 4 uses
  %broadcast.splatinsert1807 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1808 = shufflevector <4 x i64> %broadcast.splatinsert1807, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n1826 = icmp eq i64 %n.vec1806, %wide.trip.count680
  %min.epilog.iters.check1831 = icmp eq i64 %i.je, 0
  %n.vec1833 = and i64 %wide.trip.count680, 4294967292 ; 3 uses
  %broadcast.splatinsert1834 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1835 = shufflevector <4 x i64> %broadcast.splatinsert1834, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1847 = icmp eq i64 %n.vec1833, %wide.trip.count680
  %ident.check1758.not = icmp eq i32 %5, 1
  %ident.check1712.not = icmp eq i32 %5, 1
  %ident.check1665.not = icmp eq i32 %5, 1
  %ident.check1609.not = icmp eq i32 %5, 1
  %ident.check1573.not = icmp eq i32 %5, 1
  %ident.check1169.not = icmp eq i32 %5, 1
  %ident.check1122.not = icmp eq i32 %5, 1
  %ident.check1065.not = icmp eq i32 %5, 1
  %ident.check1029.not = icmp eq i32 %5, 1
  %min.iters.check1011 = icmp ugt i32 %i.a, 7
  %ident.check1005.not = icmp eq i32 %5, 1
  %or.cond1924.a = and i1 %min.iters.check1011, %ident.check1005.not
  %n.vec1013 = and i64 %wide.trip.count680, 4294967288 ; 3 uses
  %cmp.n1026 = icmp eq i64 %n.vec1013, %wide.trip.count680
  %xtraiter2092 = and i64 %i.gr, 1
  %lcmp.mod2093.not = icmp eq i64 %xtraiter2092, 0
  %i.jf = add nsw i64 %i.gr, -1
  %ident.check1912.not = icmp eq i32 %5, 1
  %xtraiter2103 = and i64 %i.gr, 1
  %i.jg = icmp eq i64 %i.ja, 0
  %unroll_iter2107 = and i64 %i.gr, 4294967294
  %lcmp.mod2105.not = icmp eq i64 %xtraiter2103, 0
  %lcmp.mod2106 = trunc i32 %2 to i1
  %xtraiter2109 = and i64 %i.gr, 1
  %i.jh = icmp eq i64 %i.ja, 0
  %unroll_iter2113 = and i64 %i.gr, 4294967294
  %lcmp.mod2111.not = icmp eq i64 %xtraiter2109, 0
  %lcmp.mod2112 = trunc i32 %2 to i1
  %min.iters.check961 = icmp ult i32 %2, -4
  %ident.check.not = icmp eq i32 %5, 1
  %or.cond1925 = and i1 %min.iters.check961, %ident.check.not
  %min.iters.check963 = icmp ult i32 %i.a, 16
  %i.ji = and i64 %wide.trip.count680, 12
  %n.vec965 = and i64 %wide.trip.count680, 4294967280 ; 4 uses
  %cmp.n985 = icmp eq i64 %n.vec965, %wide.trip.count680
  %min.epilog.iters.check991 = icmp eq i64 %i.ji, 0
  %n.vec993 = and i64 %wide.trip.count680, 4294967292 ; 3 uses
  %cmp.n1001 = icmp eq i64 %n.vec993, %wide.trip.count680
  %xtraiter2126 = and i64 %i.gr, 1
  %i.jj = icmp eq i64 %i.ja, 0
  %unroll_iter2132 = and i64 %i.gr, 4294967294
  %i.jk = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  %i.jl = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  %lcmp.mod2128.not = icmp eq i64 %xtraiter2126, 0
  %lcmp.mod2131 = trunc i32 %2 to i1
  %i.jm = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.it
  br label %bb.n

.lr.ph504:                                        ; preds = %.lr.ph504, %.lr.ph504.preheader.new
  %indvars.iv629 = phi i64 [ 0, %.lr.ph504.preheader.new ], [ %indvars.iv.next630.3, %.lr.ph504 ] ; 6 uses
  %niter2052 = phi i64 [ 0, %.lr.ph504.preheader.new ], [ %niter2052.next.3, %.lr.ph504 ]
  %i.jn = mul nuw nsw i64 %indvars.iv629, %i.gr
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv629
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jo, ptr align 8 %i.jq, i64 %i.c, i1 false)
  %indvars.iv.next630 = or disjoint i64 %indvars.iv629, 1 ; 2 uses
  %i.jr = mul nuw nsw i64 %indvars.iv.next630, %i.gr
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.jr
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next630
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.js, ptr align 8 %i.ju, i64 %i.c, i1 false)
  %indvars.iv.next630.1 = or disjoint i64 %indvars.iv629, 2 ; 2 uses
  %i.jv = mul nuw nsw i64 %indvars.iv.next630.1, %i.gr
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.jv
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next630.1
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jw, ptr align 8 %i.jy, i64 %i.c, i1 false)
  %indvars.iv.next630.2 = or disjoint i64 %indvars.iv629, 3 ; 2 uses
  %i.jz = mul nuw nsw i64 %indvars.iv.next630.2, %i.gr
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.jz
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next630.2
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ka, ptr align 8 %i.kc, i64 %i.c, i1 false)
  %indvars.iv.next630.3 = add nuw nsw i64 %indvars.iv629, 4 ; 2 uses
  %niter2052.next.3 = add i64 %niter2052, 4       ; 2 uses
  %niter2052.ncmp.3 = icmp eq i64 %niter2052.next.3, %unroll_iter2051
  br i1 %niter2052.ncmp.3, label %._crit_edge505.loopexit.unr-lcssa, label %.lr.ph504

bb.n:                                             ; preds = %.lr.ph552, %bb.at
  %indvars.iv677 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next678, %bb.at ] ; 13 uses
  %.0383550 = phi double [ f0x47EFFFFFE0000000, %.lr.ph552 ], [ %.lcssa2013.a, %bb.at ]
  %.0385549 = phi i32 [ 0, %.lr.ph552 ], [ %spec.select428, %bb.at ] ; 2 uses
  %i.kd = trunc i64 %indvars.iv677 to i32
  %smin2115 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kd)
  %smin2116 = tail call i32 @llvm.smin.i32(i32 %smin2115, i32 %i.ip)
  %i.ke = trunc i64 %indvars.iv677 to i32
  %smin2095 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.ke)
  %smin2096 = tail call i32 @llvm.smin.i32(i32 %smin2095, i32 %i.ip)
  %i.kf = trunc i64 %indvars.iv677 to i32
  %smin1613.a = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kf)
  %smin1614 = tail call i32 @llvm.smin.i32(i32 %smin1613.a, i32 %i.ip)
  %i.kg = add i32 %smin1614, 1
  %i.kh = zext i32 %i.kg to i64
  %i.ki = shl nuw nsw i64 %i.kh, 3
  %scevgep1615.a = getelementptr i8, ptr %scevgep1612, i64 %i.ki
  %i.kj = trunc i64 %indvars.iv677 to i32
  %smin1334.a = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.kj)
  %smin1335 = tail call i32 @llvm.smin.i32(i32 %smin1334.a, i32 %i.ip)
  %i.kk = add i32 %smin1335, 1
  %i.kl = zext i32 %i.kk to i64
  %13 = trunc i64 %indvars.iv677 to i32
  %smin1125 = tail call i32 @llvm.smin.i32(i32 %13, i32 0)
  %14 = sub i32 %i.ix, %smin1125
  %i.km = trunc i64 %indvars.iv677 to i32
  %sext = shl i64 %indvars.iv677, 32
  %15 = ashr exact i64 %sext, 32
  %smin1068 = tail call i64 @llvm.smin.i64(i64 %15, i64 0)
  %i.kn = shl nsw i64 %smin1068, 4                ; 4 uses
  %16 = add i64 %i.iw, %i.kn
  %smin1071 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.km)
  %smin1070 = tail call i32 @llvm.smin.i32(i32 %smin1071, i32 %i.ip)
  %17 = add i32 %smin1070, 1
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3                        ; 2 uses
  %20 = sub i64 %16, %19
  %21 = add i64 %11, %i.kn
  %22 = sub i64 %21, %19
  %sext1913 = shl i64 %indvars.iv677, 32
  %23 = ashr exact i64 %sext1913, 32
  %smin1031 = tail call i64 @llvm.smin.i64(i64 %23, i64 0)
  %i.ko = sub i64 %i.b, %smin1031
  %sext1914 = shl i64 %indvars.iv677, 32
  %24 = ashr exact i64 %sext1914, 32
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ih, i64 %24)
  %smin829 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %10)
  %25 = add nsw i64 %smin829, 1                   ; 7 uses
  %i.kp = trunc i64 %indvars.iv677 to i32
  %i.kq = tail call i32 @llvm.smin.i32(i32 %i.kp, i32 %5) ; 3 uses
  %.not421 = icmp slt i32 %.0385549, %i.io
  br i1 %.not421, label %.lr.ph519, label %._crit_edge553

.lr.ph519:                                        ; preds = %bb.n
  br i1 %i.gx, label %.lr.ph519.split.us.split.us, label %.lr.ph519.split.preheader

.lr.ph519.split.preheader:                        ; preds = %.lr.ph519
  br i1 %12, label %.lr.ph519.split.epil.preheader, label %.lr.ph519.split

.lr.ph519.split.us.split.us:                      ; preds = %.lr.ph519, %bb.o
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %bb.o ], [ 0, %.lr.ph519 ] ; 4 uses
  %.0379515.us.us = phi i32 [ %spec.select427.us.us, %bb.o ], [ 0, %.lr.ph519 ]
  %.0381514.us.us = phi double [ %spec.select.us.us, %bb.o ], [ 0.000000e+00, %.lr.ph519 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv651
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !117 ; 2 uses
  %i.kt = fcmp reassoc nsz arcp contract afn ogt double %i.ks, 0.000000e+00
  br i1 %i.kt, label %.preheader451.us.us.us.preheader, label %bb.o

.preheader451.us.us.us.preheader:                 ; preds = %.lr.ph519.split.us.split.us
  %invariant.gep770 = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv651 ; 6 uses
  br label %iter.check1888

iter.check1888:                                   ; preds = %.preheader451.us.us.us.preheader, %._crit_edge509.us.us.us
  %indvars.iv646 = phi i64 [ 0, %.preheader451.us.us.us.preheader ], [ %indvars.iv.next647, %._crit_edge509.us.us.us ] ; 2 uses
  %.0376510.us.us.us = phi double [ 0.000000e+00, %.preheader451.us.us.us.preheader ], [ %i.mc, %._crit_edge509.us.us.us ]
  %i.ku = mul nuw nsw i64 %indvars.iv646, %i.gr
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ku ; 3 uses
  br i1 %min.iters.check1849, label %vec.epilog.scalar.ph1889.preheader, label %vector.main.loop.iter.check1851

vector.main.loop.iter.check1851:                  ; preds = %iter.check1888
  br i1 %min.iters.check1851, label %vec.epilog.ph1892, label %vector.body1857

vector.body1857:                                  ; preds = %vector.main.loop.iter.check1851, %vector.body1857
  %index1858 = phi i64 [ %index.next1879, %vector.body1857 ], [ 0, %vector.main.loop.iter.check1851 ] ; 2 uses
  %vec.ind1859 = phi <4 x i64> [ %vec.ind.next1880, %vector.body1857 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check1851 ] ; 5 uses
  %vec.phi1860.a = phi <4 x double> [ %i.li, %vector.body1857 ], [ zeroinitializer, %vector.main.loop.iter.check1851 ]
  %vec.phi1861.a = phi <4 x double> [ %i.lj, %vector.body1857 ], [ zeroinitializer, %vector.main.loop.iter.check1851 ]
  %vec.phi1862.a = phi <4 x double> [ %i.lk, %vector.body1857 ], [ zeroinitializer, %vector.main.loop.iter.check1851 ]
  %vec.phi1863 = phi <4 x double> [ %i.ll, %vector.body1857 ], [ zeroinitializer, %vector.main.loop.iter.check1851 ]
  %step.add1864 = add nuw <4 x i64> %vec.ind1859, splat (i64 4)
  %step.add.21865 = add nuw <4 x i64> %vec.ind1859, splat (i64 8)
  %step.add.31866 = add nuw <4 x i64> %vec.ind1859, splat (i64 12)
  %i.kw = mul nuw nsw <4 x i64> %vec.ind1859, %broadcast.splat1856
  %i.kx = mul nuw nsw <4 x i64> %step.add1864, %broadcast.splat1856
  %i.ky = mul nuw nsw <4 x i64> %step.add.21865, %broadcast.splat1856
  %i.kz = mul nuw nsw <4 x i64> %step.add.31866, %broadcast.splat1856
  %wide.gep1867.a = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.kw
  %wide.gep1868.a = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.kx
  %wide.gep1869.a = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.ky
  %wide.gep1870 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.kz
  %wide.masked.gather1871.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1867.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1872.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1868.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1873.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1869.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1874 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1870, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %index1858 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 96
  %wide.load1875.a = load <4 x double>, ptr %i.la, align 8, !tbaa !117
  %wide.load1876.a = load <4 x double>, ptr %i.lb, align 8, !tbaa !117
  %wide.load1877.a = load <4 x double>, ptr %i.lc, align 8, !tbaa !117
  %wide.load1878 = load <4 x double>, ptr %i.ld, align 8, !tbaa !117
  %i.le = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1875.a, %wide.masked.gather1871.a
  %i.lf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1876.a, %wide.masked.gather1872.a
  %i.lg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1877.a, %wide.masked.gather1873.a
  %i.lh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1878, %wide.masked.gather1874
  %i.li = fadd reassoc nsz arcp contract afn <4 x double> %i.le, %vec.phi1860.a ; 2 uses
  %i.lj = fadd reassoc nsz arcp contract afn <4 x double> %i.lf, %vec.phi1861.a ; 2 uses
  %i.lk = fadd reassoc nsz arcp contract afn <4 x double> %i.lg, %vec.phi1862.a ; 2 uses
  %i.ll = fadd reassoc nsz arcp contract afn <4 x double> %i.lh, %vec.phi1863 ; 2 uses
  %index.next1879 = add nuw i64 %index1858, 16    ; 2 uses
  %vec.ind.next1880 = add nuw <4 x i64> %vec.ind1859, splat (i64 16)
  %i.lm = icmp eq i64 %index.next1879, %n.vec1854
  br i1 %i.lm, label %middle.block1881, label %vector.body1857, !llvm.loop !20

middle.block1881:                                 ; preds = %vector.body1857
  %bin.rdx1882.a = fadd reassoc nsz arcp contract afn <4 x double> %i.lj, %i.li
  %bin.rdx1883.a = fadd reassoc nsz arcp contract afn <4 x double> %i.lk, %bin.rdx1882.a
  %bin.rdx1884 = fadd reassoc nsz arcp contract afn <4 x double> %i.ll, %bin.rdx1883.a
  %i.ln = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1884) ; 3 uses
  br i1 %cmp.n1885, label %._crit_edge509.us.us.us, label %vec.epilog.iter.check1890

vec.epilog.iter.check1890:                        ; preds = %middle.block1881
  br i1 %min.epilog.iters.check1891, label %vec.epilog.scalar.ph1889.preheader, label %vec.epilog.ph1892, !prof !121

vec.epilog.ph1892:                                ; preds = %vector.main.loop.iter.check1851, %vec.epilog.iter.check1890
  %vec.epilog.resume.val1886 = phi i64 [ %n.vec1854, %vec.epilog.iter.check1890 ], [ 0, %vector.main.loop.iter.check1851 ] ; 2 uses
  %bc.merge.rdx1887 = phi double [ %i.ln, %vec.epilog.iter.check1890 ], [ 0.000000e+00, %vector.main.loop.iter.check1851 ]
  %i.lo = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1887, i64 0
  %broadcast.splatinsert1896 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1886, i64 0
  %broadcast.splat1897 = shufflevector <4 x i64> %broadcast.splatinsert1896, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1898 = or disjoint <4 x i64> %broadcast.splat1897, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1899

vec.epilog.vector.body1899:                       ; preds = %vec.epilog.vector.body1899, %vec.epilog.ph1892
  %index1900 = phi i64 [ %vec.epilog.resume.val1886, %vec.epilog.ph1892 ], [ %index.next1906, %vec.epilog.vector.body1899 ] ; 2 uses
  %vec.ind1901 = phi <4 x i64> [ %induction1898, %vec.epilog.ph1892 ], [ %vec.ind.next1907, %vec.epilog.vector.body1899 ] ; 2 uses
  %vec.phi1902 = phi <4 x double> [ %i.lo, %vec.epilog.ph1892 ], [ %i.ls, %vec.epilog.vector.body1899 ]
  %i.lp = mul nuw nsw <4 x i64> %vec.ind1901, %broadcast.splat1895
  %wide.gep1903 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.lp
  %wide.masked.gather1904 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1903, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %index1900
  %wide.load1905 = load <4 x double>, ptr %i.lq, align 8, !tbaa !117
  %i.lr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1905, %wide.masked.gather1904
  %i.ls = fadd reassoc nsz arcp contract afn <4 x double> %i.lr, %vec.phi1902 ; 2 uses
  %index.next1906 = add nuw i64 %index1900, 4     ; 2 uses
  %vec.ind.next1907 = add nuw nsw <4 x i64> %vec.ind1901, splat (i64 4)
  %i.lt = icmp eq i64 %index.next1906, %n.vec1893
  br i1 %i.lt, label %vec.epilog.middle.block1908, label %vec.epilog.vector.body1899, !llvm.loop !21

vec.epilog.middle.block1908:                      ; preds = %vec.epilog.vector.body1899
  %i.lu = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ls) ; 2 uses
  br i1 %cmp.n1909, label %._crit_edge509.us.us.us, label %vec.epilog.scalar.ph1889.preheader

vec.epilog.scalar.ph1889.preheader:               ; preds = %iter.check1888, %vec.epilog.iter.check1890, %vec.epilog.middle.block1908
  %indvars.iv640.ph = phi i64 [ 0, %iter.check1888 ], [ %n.vec1854, %vec.epilog.iter.check1890 ], [ %n.vec1893, %vec.epilog.middle.block1908 ]
  %.0374506.us.us.us.ph = phi double [ 0.000000e+00, %iter.check1888 ], [ %i.ln, %vec.epilog.iter.check1890 ], [ %i.lu, %vec.epilog.middle.block1908 ]
  br label %vec.epilog.scalar.ph1889

vec.epilog.scalar.ph1889:                         ; preds = %vec.epilog.scalar.ph1889.preheader, %vec.epilog.scalar.ph1889
  %indvars.iv640 = phi i64 [ %indvars.iv.next641, %vec.epilog.scalar.ph1889 ], [ %indvars.iv640.ph, %vec.epilog.scalar.ph1889.preheader ] ; 3 uses
  %.0374506.us.us.us = phi double [ %i.ma, %vec.epilog.scalar.ph1889 ], [ %.0374506.us.us.us.ph, %vec.epilog.scalar.ph1889.preheader ]
  %i.lv = mul nuw nsw i64 %indvars.iv640, %i.b
  %gep771 = getelementptr [8 x i8], ptr %invariant.gep770, i64 %i.lv
  %i.lw = load double, ptr %gep771, align 8, !tbaa !117
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %indvars.iv640
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !117
  %i.lz = fmul reassoc nsz arcp contract afn double %i.ly, %i.lw
  %i.ma = fadd reassoc nsz arcp contract afn double %i.lz, %.0374506.us.us.us ; 2 uses
  %indvars.iv.next641 = add nuw nsw i64 %indvars.iv640, 1 ; 2 uses
  %exitcond645.not = icmp eq i64 %indvars.iv.next641, %wide.trip.count680
  br i1 %exitcond645.not, label %._crit_edge509.us.us.us, label %vec.epilog.scalar.ph1889, !llvm.loop !22

._crit_edge509.us.us.us:                          ; preds = %vec.epilog.scalar.ph1889, %vec.epilog.middle.block1908, %middle.block1881
  %.lcssa = phi double [ %i.lu, %vec.epilog.middle.block1908 ], [ %i.ln, %middle.block1881 ], [ %i.ma, %vec.epilog.scalar.ph1889 ]
  %i.mb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.lcssa)
  %i.mc = fadd reassoc nsz arcp contract afn double %i.mb, %.0376510.us.us.us ; 2 uses
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %exitcond650.not = icmp eq i64 %indvars.iv.next647, %wide.trip.count680.a
  br i1 %exitcond650.not, label %._crit_edge512.split.us.us.us, label %iter.check1888

._crit_edge512.split.us.us.us:                    ; preds = %._crit_edge509.us.us.us
  %i.md = fmul reassoc nsz arcp contract afn double %i.mc, %i.ks
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge512.split.us.us.us, %.lr.ph519.split.us.split.us
  %.1377.us.us = phi nsz double [ %i.md, %._crit_edge512.split.us.us.us ], [ 0.000000e+00, %.lr.ph519.split.us.split.us ] ; 2 uses
  %i.me = fcmp reassoc nsz arcp contract afn ogt double %.1377.us.us, %.0381514.us.us ; 2 uses
  %spec.select.us.us = select nsz i1 %i.me, double %.1377.us.us, double %.0381514.us.us
  %i.mf = trunc nuw nsw i64 %indvars.iv651 to i32
  %spec.select427.us.us = select i1 %i.me, i32 %i.mf, i32 %.0379515.us.us ; 2 uses
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond655.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count680
  br i1 %exitcond655.not, label %._crit_edge520, label %.lr.ph519.split.us.split.us

.lr.ph519.split:                                  ; preds = %.lr.ph519.split.preheader, %.lr.ph519.split
  %indvars.iv634 = phi i64 [ %indvars.iv.next635.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ] ; 6 uses
  %.0379515 = phi i32 [ %spec.select427.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ]
  %.0381514 = phi double [ %spec.select.3, %.lr.ph519.split ], [ 0.000000e+00, %.lr.ph519.split.preheader ] ; 2 uses
  %niter2059 = phi i64 [ %niter2059.next.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ]
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv634
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !117 ; 2 uses
  %i.mi = fcmp reassoc nsz arcp contract afn ogt double %i.mh, 0.000000e+00
  %i.mj = fmul reassoc nsz arcp contract afn double %i.mh, 0.000000e+00
  %spec.select554 = select nsz i1 %i.mi, double %i.mj, double 0.000000e+00 ; 2 uses
  %i.mk = fcmp reassoc nsz arcp contract afn ogt double %spec.select554, %.0381514 ; 2 uses
  %spec.select = select nsz i1 %i.mk, double %spec.select554, double %.0381514 ; 2 uses
  %i.ml = trunc nuw nsw i64 %indvars.iv634 to i32
  %spec.select427 = select i1 %i.mk, i32 %i.ml, i32 %.0379515
  %indvars.iv.next635 = or disjoint i64 %indvars.iv634, 1 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next635
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !117 ; 2 uses
  %i.mo = fcmp reassoc nsz arcp contract afn ogt double %i.mn, 0.000000e+00
  %i.mp = fmul reassoc nsz arcp contract afn double %i.mn, 0.000000e+00
  %spec.select554.1 = select nsz i1 %i.mo, double %i.mp, double 0.000000e+00 ; 2 uses
  %i.mq = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.1, %spec.select ; 2 uses
  %spec.select.1 = select nsz i1 %i.mq, double %spec.select554.1, double %spec.select ; 2 uses
  %i.mr = trunc nuw nsw i64 %indvars.iv.next635 to i32
  %spec.select427.1 = select i1 %i.mq, i32 %i.mr, i32 %spec.select427
  %indvars.iv.next635.1 = or disjoint i64 %indvars.iv634, 2 ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next635.1
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !117 ; 2 uses
  %i.mu = fcmp reassoc nsz arcp contract afn ogt double %i.mt, 0.000000e+00
  %i.mv = fmul reassoc nsz arcp contract afn double %i.mt, 0.000000e+00
  %spec.select554.2 = select nsz i1 %i.mu, double %i.mv, double 0.000000e+00 ; 2 uses
  %i.mw = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.2, %spec.select.1 ; 2 uses
  %spec.select.2 = select nsz i1 %i.mw, double %spec.select554.2, double %spec.select.1 ; 2 uses
  %i.mx = trunc nuw nsw i64 %indvars.iv.next635.1 to i32
  %spec.select427.2 = select i1 %i.mw, i32 %i.mx, i32 %spec.select427.1
  %indvars.iv.next635.2 = or disjoint i64 %indvars.iv634, 3 ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next635.2
  %i.mz = load double, ptr %i.my, align 8, !tbaa !117 ; 2 uses
  %i.na = fcmp reassoc nsz arcp contract afn ogt double %i.mz, 0.000000e+00
  %i.nb = fmul reassoc nsz arcp contract afn double %i.mz, 0.000000e+00
  %spec.select554.3 = select nsz i1 %i.na, double %i.nb, double 0.000000e+00 ; 2 uses
  %i.nc = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.3, %spec.select.2 ; 2 uses
  %spec.select.3 = select nsz i1 %i.nc, double %spec.select554.3, double %spec.select.2 ; 2 uses
  %i.nd = trunc nuw nsw i64 %indvars.iv.next635.2 to i32
  %spec.select427.3 = select i1 %i.nc, i32 %i.nd, i32 %spec.select427.2 ; 3 uses
  %indvars.iv.next635.3 = add nuw nsw i64 %indvars.iv634, 4 ; 2 uses
  %niter2059.next.3 = add i64 %niter2059, 4       ; 2 uses
  %niter2059.ncmp.3 = icmp eq i64 %niter2059.next.3, %unroll_iter2058
  br i1 %niter2059.ncmp.3, label %._crit_edge520.loopexit1930.unr-lcssa, label %.lr.ph519.split

._crit_edge520.loopexit1930.unr-lcssa:            ; preds = %.lr.ph519.split
  br i1 %lcmp.mod2055.not, label %._crit_edge520, label %.lr.ph519.split.epil.preheader

.lr.ph519.split.epil.preheader:                   ; preds = %._crit_edge520.loopexit1930.unr-lcssa, %.lr.ph519.split.preheader
  %indvars.iv634.epil.init = phi i64 [ 0, %.lr.ph519.split.preheader ], [ %indvars.iv.next635.3, %._crit_edge520.loopexit1930.unr-lcssa ]
  %.0379515.epil.init = phi i32 [ 0, %.lr.ph519.split.preheader ], [ %spec.select427.3, %._crit_edge520.loopexit1930.unr-lcssa ]
  %.0381514.epil.init = phi double [ 0.000000e+00, %.lr.ph519.split.preheader ], [ %spec.select.3, %._crit_edge520.loopexit1930.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2057)
  br label %.lr.ph519.split.epil

.lr.ph519.split.epil:                             ; preds = %.lr.ph519.split.epil, %.lr.ph519.split.epil.preheader
  %indvars.iv634.epil = phi i64 [ %indvars.iv.next635.epil, %.lr.ph519.split.epil ], [ %indvars.iv634.epil.init, %.lr.ph519.split.epil.preheader ] ; 3 uses
  %.0379515.epil = phi i32 [ %spec.select427.epil, %.lr.ph519.split.epil ], [ %.0379515.epil.init, %.lr.ph519.split.epil.preheader ]
  %.0381514.epil = phi double [ %spec.select.epil, %.lr.ph519.split.epil ], [ %.0381514.epil.init, %.lr.ph519.split.epil.preheader ] ; 2 uses
  %epil.iter2054 = phi i64 [ %epil.iter2054.next, %.lr.ph519.split.epil ], [ 0, %.lr.ph519.split.epil.preheader ]
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv634.epil
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !117 ; 2 uses
  %i.ng = fcmp reassoc nsz arcp contract afn ogt double %i.nf, 0.000000e+00
  %i.nh = fmul reassoc nsz arcp contract afn double %i.nf, 0.000000e+00
  %spec.select554.epil = select nsz i1 %i.ng, double %i.nh, double 0.000000e+00 ; 2 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.epil, %.0381514.epil ; 2 uses
  %spec.select.epil = select nsz i1 %i.ni, double %spec.select554.epil, double %.0381514.epil
  %i.nj = trunc nuw nsw i64 %indvars.iv634.epil to i32
  %spec.select427.epil = select i1 %i.ni, i32 %i.nj, i32 %.0379515.epil ; 2 uses
  %indvars.iv.next635.epil = add nuw nsw i64 %indvars.iv634.epil, 1
  %epil.iter2054.next = add i64 %epil.iter2054, 1 ; 2 uses
  %epil.iter2054.cmp.not = icmp eq i64 %epil.iter2054.next, %xtraiter2053
  br i1 %epil.iter2054.cmp.not, label %._crit_edge520, label %.lr.ph519.split.epil, !llvm.loop !23

._crit_edge520:                                   ; preds = %._crit_edge520.loopexit1930.unr-lcssa, %.lr.ph519.split.epil, %bb.o
  %.0379.lcssa = phi i32 [ %spec.select427.us.us, %bb.o ], [ %spec.select427.3, %._crit_edge520.loopexit1930.unr-lcssa ], [ %spec.select427.epil, %.lr.ph519.split.epil ] ; 3 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv677
  store i32 %.0379.lcssa, ptr %i.nk, align 4, !tbaa !125
  %i.nl = icmp slt i32 %.0379.lcssa, %2
  %i.nm = zext i1 %i.nl to i32
  %spec.select428 = add nuw nsw i32 %.0385549, %i.nm ; 2 uses
  %i.nn = zext nneg i32 %.0379.lcssa to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.nn
  store double 0.000000e+00, ptr %i.no, align 8, !tbaa !117
  %i.np = tail call i32 @llvm.smin.i32(i32 %i.kq, i32 %i.ip) ; 12 uses
  br i1 %i.gx, label %.preheader452.lr.ph, label %.lr.ph.i432.preheader

.lr.ph.i432.preheader:                            ; preds = %._crit_edge545, %._crit_edge520
  br i1 %i.jj, label %.lr.ph.i432.epil.preheader, label %.lr.ph.i432

.preheader452.lr.ph:                              ; preds = %._crit_edge520
  %.not422530 = icmp slt i32 %i.np, 0             ; 3 uses
  %i.nq = add i32 %i.np, 1                        ; 12 uses
  %.not59.i = icmp sgt i32 %i.a, %i.np
  %i.nr = sext i32 %i.nq to i64                   ; 37 uses
  %i.ns = shl nsw i64 %i.nr, 3
  %i.nt = icmp sgt i32 %i.np, -1
  %i.nu = zext nneg i32 %i.np to i64              ; 4 uses
  %wide.trip.count990.i.i = zext i32 %i.nq to i64 ; 28 uses
  %.0645699.i.i = add nuw i32 %i.np, 2
  %i.nv = mul i32 %i.np, %5
  %i.nw = add i32 %i.nv, %i.nq
  %i.nx = add nsw i64 %i.nr, -1
  %i.ny = sext i32 %i.np to i64                   ; 3 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.ny
  %invariant.op = sub i32 -2, %i.np
  %broadcast.splatinsert1319 = insertelement <4 x i64> poison, i64 %i.nr, i64 0
  %broadcast.splat1320 = shufflevector <4 x i64> %broadcast.splatinsert1319, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1252 = insertelement <4 x i64> poison, i64 %i.nr, i64 0
  %broadcast.splat1253 = shufflevector <4 x i64> %broadcast.splatinsert1252, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1295 = insertelement <4 x i64> poison, i64 %i.nr, i64 0
  %broadcast.splat1296 = shufflevector <4 x i64> %broadcast.splatinsert1295, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1205 = insertelement <4 x i64> poison, i64 %i.nr, i64 0
  %broadcast.splat1206 = shufflevector <4 x i64> %broadcast.splatinsert1205, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1232 = insertelement <4 x i64> poison, i64 %i.nr, i64 0
  %broadcast.splat1233 = shufflevector <4 x i64> %broadcast.splatinsert1232, <4 x i64> poison, <4 x i32> zeroinitializer
  %26 = getelementptr i8, ptr %i.in, i64 %i.kn
  %27 = getelementptr i8, ptr %26, i64 8
  %28 = getelementptr i8, ptr %i.in, i64 %20
  %i.oa = getelementptr i8, ptr %i.in, i64 %i.kn
  %i.ob = getelementptr i8, ptr %i.in, i64 %22
  %xtraiter2097 = and i64 %wide.trip.count990.i.i, 1
  %i.oc = icmp eq i32 %smin2096, 0
  %unroll_iter2101 = and i64 %wide.trip.count990.i.i, 4294967294
  %lcmp.mod2099.not = icmp eq i64 %xtraiter2097, 0
  %lcmp.mod2100 = trunc i32 %i.nq to i1
  %xtraiter2117 = and i64 %wide.trip.count990.i.i, 7 ; 3 uses
  %i.od = icmp ult i32 %smin2116, 7
  %unroll_iter2121 = and i64 %wide.trip.count990.i.i, 4294967288
  %lcmp.mod2119.not = icmp eq i64 %xtraiter2117, 0
  %lcmp.mod2120 = icmp ne i64 %xtraiter2117, 0
  %min.iters.check928 = icmp ult i32 %i.nq, 4
  %min.iters.check930 = icmp ult i32 %i.nq, 16
  %i.oe = and i64 %wide.trip.count990.i.i, 12
  %n.vec932 = and i64 %wide.trip.count990.i.i, 4294967280 ; 4 uses
  %cmp.n945 = icmp eq i64 %n.vec932, %wide.trip.count990.i.i
  %min.epilog.iters.check950 = icmp eq i64 %i.oe, 0
  %n.vec952 = and i64 %wide.trip.count990.i.i, 4294967292 ; 3 uses
  %cmp.n959 = icmp eq i64 %n.vec952, %wide.trip.count990.i.i
  %min.iters.check885 = icmp ult i32 %i.nq, 4
  %min.iters.check887 = icmp ult i32 %i.nq, 16
  %i.of = and i64 %wide.trip.count990.i.i, 12
  %n.vec889 = and i64 %wide.trip.count990.i.i, 4294967280 ; 4 uses
  %cmp.n909 = icmp eq i64 %n.vec889, %wide.trip.count990.i.i
  %min.epilog.iters.check915 = icmp eq i64 %i.of, 0
  %n.vec917 = and i64 %wide.trip.count990.i.i, 4294967292 ; 3 uses
  %cmp.n925 = icmp eq i64 %n.vec917, %wide.trip.count990.i.i
  %min.iters.check829 = icmp ult i64 %25, 4
  %min.iters.check831 = icmp ult i64 %25, 16
  %n.vec833 = and i64 %25, 12
  %n.vec834 = and i64 %25, -16                    ; 4 uses
  %cmp.n863 = icmp eq i64 %25, %n.vec834
  %min.epilog.iters.check868 = icmp eq i64 %n.vec833, 0
  %n.vec870 = and i64 %25, -4                     ; 3 uses
  %cmp.n882 = icmp eq i64 %25, %n.vec870
  br label %.preheader452

.preheader452:                                    ; preds = %.preheader452.lr.ph, %._crit_edge545
  %indvars.iv672 = phi i64 [ 0, %.preheader452.lr.ph ], [ %indvars.iv.next673, %._crit_edge545 ] ; 4 uses
  br i1 %.not422530, label %._crit_edge532.split, label %iter.check1828

iter.check1828:                                   ; preds = %.preheader452, %._crit_edge529
  %indvars.iv661 = phi i64 [ %indvars.iv.next662, %._crit_edge529 ], [ 0, %.preheader452 ] ; 4 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv661
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !125
  %i.oi = sext i32 %i.oh to i64
  %invariant.gep772 = getelementptr [8 x i8], ptr %i.e, i64 %i.oi ; 14 uses
  %invariant.gep774 = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv661 ; 11 uses
  br i1 %or.cond1914, label %vector.main.loop.iter.check1803, label %vec.epilog.scalar.ph1829.preheader

vector.main.loop.iter.check1803:                  ; preds = %iter.check1828
  br i1 %min.iters.check1803, label %vec.epilog.ph1832, label %vector.body1809

vector.body1809:                                  ; preds = %vector.main.loop.iter.check1803, %vector.body1809
  %index1810 = phi i64 [ %index.next1823, %vector.body1809 ], [ 0, %vector.main.loop.iter.check1803 ] ; 2 uses
  %vec.ind1811 = phi <4 x i64> [ %vec.ind.next1824, %vector.body1809 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check1803 ] ; 5 uses
  %step.add1812 = add nuw <4 x i64> %vec.ind1811, splat (i64 4)
  %step.add.21813 = add nuw <4 x i64> %vec.ind1811, splat (i64 8)
  %step.add.31814 = add nuw <4 x i64> %vec.ind1811, splat (i64 12)
  %i.oj = mul nuw nsw <4 x i64> %vec.ind1811, %broadcast.splat1808
  %i.ok = mul nuw nsw <4 x i64> %step.add1812, %broadcast.splat1808
  %i.ol = mul nuw nsw <4 x i64> %step.add.21813, %broadcast.splat1808
  %i.om = mul nuw nsw <4 x i64> %step.add.31814, %broadcast.splat1808
  %wide.gep1815.a = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.oj
  %wide.gep1816.a = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.ok
  %wide.gep1817.a = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.ol
  %wide.gep1818 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.om
  %wide.masked.gather1819.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1815.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1820.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1816.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1821.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1817.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1822 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1818, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.on = getelementptr [8 x i8], ptr %invariant.gep774, i64 %index1810 ; 4 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 32
  %i.op = getelementptr i8, ptr %i.on, i64 64
  %i.oq = getelementptr i8, ptr %i.on, i64 96
  store <4 x double> %wide.masked.gather1819.a, ptr %i.on, align 8, !tbaa !117
  store <4 x double> %wide.masked.gather1820.a, ptr %i.oo, align 8, !tbaa !117
  store <4 x double> %wide.masked.gather1821.a, ptr %i.op, align 8, !tbaa !117
  store <4 x double> %wide.masked.gather1822, ptr %i.oq, align 8, !tbaa !117
  %index.next1823 = add nuw i64 %index1810, 16    ; 2 uses
  %vec.ind.next1824 = add nuw <4 x i64> %vec.ind1811, splat (i64 16)
  %i.or = icmp eq i64 %index.next1823, %n.vec1806
  br i1 %i.or, label %middle.block1825, label %vector.body1809, !llvm.loop !24

middle.block1825:                                 ; preds = %vector.body1809
  br i1 %cmp.n1826, label %._crit_edge529, label %vec.epilog.iter.check1830

vec.epilog.iter.check1830:                        ; preds = %middle.block1825
  br i1 %min.epilog.iters.check1831, label %vec.epilog.scalar.ph1829.preheader, label %vec.epilog.ph1832, !prof !121

vec.epilog.ph1832:                                ; preds = %vector.main.loop.iter.check1803, %vec.epilog.iter.check1830
  %vec.epilog.resume.val1827 = phi i64 [ %n.vec1806, %vec.epilog.iter.check1830 ], [ 0, %vector.main.loop.iter.check1803 ] ; 2 uses
  %broadcast.splatinsert1836 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1827, i64 0
  %broadcast.splat1837 = shufflevector <4 x i64> %broadcast.splatinsert1836, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1838 = or disjoint <4 x i64> %broadcast.splat1837, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1839

vec.epilog.vector.body1839:                       ; preds = %vec.epilog.vector.body1839, %vec.epilog.ph1832
  %index1840 = phi i64 [ %vec.epilog.resume.val1827, %vec.epilog.ph1832 ], [ %index.next1844, %vec.epilog.vector.body1839 ] ; 2 uses
  %vec.ind1841 = phi <4 x i64> [ %induction1838, %vec.epilog.ph1832 ], [ %vec.ind.next1845, %vec.epilog.vector.body1839 ] ; 2 uses
  %i.os = mul nuw nsw <4 x i64> %vec.ind1841, %broadcast.splat1835
  %wide.gep1842 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.os
  %wide.masked.gather1843 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1842, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.ot = getelementptr [8 x i8], ptr %invariant.gep774, i64 %index1840
  store <4 x double> %wide.masked.gather1843, ptr %i.ot, align 8, !tbaa !117
  %index.next1844 = add nuw i64 %index1840, 4     ; 2 uses
  %vec.ind.next1845 = add nuw nsw <4 x i64> %vec.ind1841, splat (i64 4)
  %i.ou = icmp eq i64 %index.next1844, %n.vec1833
  br i1 %i.ou, label %vec.epilog.middle.block1846, label %vec.epilog.vector.body1839, !llvm.loop !25

vec.epilog.middle.block1846:                      ; preds = %vec.epilog.vector.body1839
  br i1 %cmp.n1847, label %._crit_edge529, label %vec.epilog.scalar.ph1829.preheader

vec.epilog.scalar.ph1829.preheader:               ; preds = %iter.check1828, %vec.epilog.iter.check1830, %vec.epilog.middle.block1846
  %indvars.iv656.ph = phi i64 [ 0, %iter.check1828 ], [ %n.vec1806, %vec.epilog.iter.check1830 ], [ %n.vec1833, %vec.epilog.middle.block1846 ] ; 4 uses
  %i.ov = sub nsw i64 %i.gr, %indvars.iv656.ph
  %xtraiter2060 = and i64 %i.ov, 7                ; 2 uses
  %lcmp.mod2061.not = icmp eq i64 %xtraiter2060, 0
  br i1 %lcmp.mod2061.not, label %vec.epilog.scalar.ph1829.prol.loopexit, label %vec.epilog.scalar.ph1829.prol

vec.epilog.scalar.ph1829.prol:                    ; preds = %vec.epilog.scalar.ph1829.preheader, %vec.epilog.scalar.ph1829.prol
  %indvars.iv656.prol = phi i64 [ %indvars.iv.next657.prol, %vec.epilog.scalar.ph1829.prol ], [ %indvars.iv656.ph, %vec.epilog.scalar.ph1829.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph1829.prol ], [ 0, %vec.epilog.scalar.ph1829.preheader ]
  %i.ow = mul nuw nsw i64 %indvars.iv656.prol, %i.b
  %gep773.prol = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.ow
  %i.ox = load double, ptr %gep773.prol, align 8, !tbaa !117
  %i.oy = mul nsw i64 %indvars.iv656.prol, %i.ih
  %gep775.prol = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.oy
  store double %i.ox, ptr %gep775.prol, align 8, !tbaa !117
  %indvars.iv.next657.prol = add nuw nsw i64 %indvars.iv656.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2060
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1829.prol.loopexit, label %vec.epilog.scalar.ph1829.prol, !llvm.loop !26

vec.epilog.scalar.ph1829.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1829.prol, %vec.epilog.scalar.ph1829.preheader
  %indvars.iv656.unr = phi i64 [ %indvars.iv656.ph, %vec.epilog.scalar.ph1829.preheader ], [ %indvars.iv.next657.prol, %vec.epilog.scalar.ph1829.prol ]
  %i.oz = sub nsw i64 %indvars.iv656.ph, %i.gr
  %i.pa = icmp ugt i64 %i.oz, -8
  br i1 %i.pa, label %._crit_edge529, label %vec.epilog.scalar.ph1829

._crit_edge532.split:                             ; preds = %._crit_edge529, %.preheader452
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv672
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !124 ; 12 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv672 ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !124
  br i1 %.not59.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge532.split
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3) #17
  br label %dsvd.exit.i

bb.q:                                             ; preds = %._crit_edge532.split
  %i.pf = tail call noalias ptr @malloc(i64 noundef %i.ns) #15 ; 17 uses
  br i1 %i.nt, label %iter.check1784, label %.critedge.i.i

iter.check1784:                                   ; preds = %bb.q, %.loopexit753.i.i
  %indvars.iv942.i.i = phi i64 [ %indvars.iv.next943.i.i, %.loopexit753.i.i ], [ 1, %bb.q ] ; 33 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit753.i.i ], [ 0, %bb.q ] ; 37 uses
  %.0665815.i.i = phi double [ %.4.i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ]
  %.0668814.i.i = phi double [ %.2670.i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ]
  %.0672813.i.i = phi double [ %.0672..i.i, %.loopexit753.i.i ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.pg = shl nuw nsw i64 %indvars.iv.i.i, 4      ; 2 uses
  %i.ph = getelementptr i8, ptr %i.in, i64 %i.pg
  %scevgep1611 = getelementptr i8, ptr %i.ph, i64 8
  %scevgep1616.a = getelementptr i8, ptr %i.in, i64 %i.pg
  %i.pi = add nuw i64 %indvars.iv.i.i, %wide.trip.count680
  %i.pj = shl i64 %i.pi, 3
  %scevgep1617 = getelementptr i8, ptr %i.in, i64 %i.pj
  %i.pk = sub nsw i64 %wide.trip.count680, %indvars.iv.i.i ; 35 uses
  %i.pl = xor i64 %indvars.iv.i.i, -1
  %i.pm = add nsw i64 %i.pl, %i.kl                ; 42 uses
  %i.pn = fmul reassoc nsz arcp contract afn double %.0668814.i.i, %.0665815.i.i ; 3 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.i.i ; 2 uses
  store double %i.pn, ptr %i.po, align 8, !tbaa !117
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv.i.i ; 47 uses
  %min.iters.check1760 = icmp ugt i64 %i.pk, 3
  %or.cond1915 = and i1 %min.iters.check1760, %ident.check1758.not
  br i1 %or.cond1915, label %vector.main.loop.iter.check1761, label %.lr.ph.i.i.preheader

vector.main.loop.iter.check1761:                  ; preds = %iter.check1784
  %min.iters.check1762 = icmp ult i64 %i.pk, 16
  br i1 %min.iters.check1762, label %vec.epilog.ph1788, label %vector.ph1763

vector.ph1763:                                    ; preds = %vector.main.loop.iter.check1761
  %i.pp = and i64 %i.pk, 12
  %n.vec1764 = and i64 %i.pk, -16                 ; 4 uses
  %i.pq = add i64 %indvars.iv.i.i, %n.vec1764
  %i.pr = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  br label %vector.body1765

vector.body1765:                                  ; preds = %vector.body1765, %vector.ph1763
  %index1766 = phi i64 [ 0, %vector.ph1763 ], [ %index.next1775, %vector.body1765 ] ; 2 uses
  %vec.phi1767.a = phi <4 x double> [ zeroinitializer, %vector.ph1763 ], [ %i.qa, %vector.body1765 ]
  %vec.phi1768.a = phi <4 x double> [ zeroinitializer, %vector.ph1763 ], [ %i.qb, %vector.body1765 ]
  %vec.phi1769.a = phi <4 x double> [ zeroinitializer, %vector.ph1763 ], [ %i.qc, %vector.body1765 ]
  %vec.phi1770 = phi <4 x double> [ zeroinitializer, %vector.ph1763 ], [ %i.qd, %vector.body1765 ]
  %i.ps = getelementptr [8 x i8], ptr %i.pr, i64 %index1766 ; 4 uses
  %i.pt = getelementptr i8, ptr %i.ps, i64 32
  %i.pu = getelementptr i8, ptr %i.ps, i64 64
  %i.pv = getelementptr i8, ptr %i.ps, i64 96
  %wide.load1771.a = load <4 x double>, ptr %i.ps, align 8, !tbaa !117
  %wide.load1772.a = load <4 x double>, ptr %i.pt, align 8, !tbaa !117
  %wide.load1773.a = load <4 x double>, ptr %i.pu, align 8, !tbaa !117
  %wide.load1774 = load <4 x double>, ptr %i.pv, align 8, !tbaa !117
  %i.pw = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1771.a)
  %i.px = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1772.a)
  %i.py = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1773.a)
  %i.pz = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1774)
  %i.qa = fadd reassoc nsz arcp contract afn <4 x double> %i.pw, %vec.phi1767.a ; 2 uses
  %i.qb = fadd reassoc nsz arcp contract afn <4 x double> %i.px, %vec.phi1768.a ; 2 uses
  %i.qc = fadd reassoc nsz arcp contract afn <4 x double> %i.py, %vec.phi1769.a ; 2 uses
  %i.qd = fadd reassoc nsz arcp contract afn <4 x double> %i.pz, %vec.phi1770 ; 2 uses
  %index.next1775 = add nuw i64 %index1766, 16    ; 2 uses
  %i.qe = icmp eq i64 %index.next1775, %n.vec1764
  br i1 %i.qe, label %middle.block1776, label %vector.body1765, !llvm.loop !27

middle.block1776:                                 ; preds = %vector.body1765
  %bin.rdx1777.a = fadd reassoc nsz arcp contract afn <4 x double> %i.qb, %i.qa
  %bin.rdx1778.a = fadd reassoc nsz arcp contract afn <4 x double> %i.qc, %bin.rdx1777.a
  %bin.rdx1779 = fadd reassoc nsz arcp contract afn <4 x double> %i.qd, %bin.rdx1778.a
  %i.qf = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1779) ; 3 uses
  %cmp.n1780 = icmp eq i64 %i.pk, %n.vec1764
  br i1 %cmp.n1780, label %._crit_edge.i.i, label %vec.epilog.iter.check1786

vec.epilog.iter.check1786:                        ; preds = %middle.block1776
  %min.epilog.iters.check1787 = icmp eq i64 %i.pp, 0
  br i1 %min.epilog.iters.check1787, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1788, !prof !121

vec.epilog.ph1788:                                ; preds = %vector.main.loop.iter.check1761, %vec.epilog.iter.check1786
  %vec.epilog.resume.val1781 = phi i64 [ %n.vec1764, %vec.epilog.iter.check1786 ], [ 0, %vector.main.loop.iter.check1761 ]
  %bc.merge.rdx1783 = phi double [ %i.qf, %vec.epilog.iter.check1786 ], [ 0.000000e+00, %vector.main.loop.iter.check1761 ]
  %n.vec1789 = and i64 %i.pk, -4                  ; 3 uses
  %i.qg = add i64 %indvars.iv.i.i, %n.vec1789
  %i.qh = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1783, i64 0
  %i.qi = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  br label %vec.epilog.vector.body1790

vec.epilog.vector.body1790:                       ; preds = %vec.epilog.vector.body1790, %vec.epilog.ph1788
  %index1791 = phi i64 [ %vec.epilog.resume.val1781, %vec.epilog.ph1788 ], [ %index.next1794, %vec.epilog.vector.body1790 ] ; 2 uses
  %vec.phi1792 = phi <4 x double> [ %i.qh, %vec.epilog.ph1788 ], [ %i.ql, %vec.epilog.vector.body1790 ]
  %i.qj = getelementptr [8 x i8], ptr %i.qi, i64 %index1791
  %wide.load1793 = load <4 x double>, ptr %i.qj, align 8, !tbaa !117
  %i.qk = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1793)
  %i.ql = fadd reassoc nsz arcp contract afn <4 x double> %i.qk, %vec.phi1792 ; 2 uses
  %index.next1794 = add nuw i64 %index1791, 4     ; 2 uses
  %i.qm = icmp eq i64 %index.next1794, %n.vec1789
  br i1 %i.qm, label %vec.epilog.middle.block1795, label %vec.epilog.vector.body1790, !llvm.loop !28

vec.epilog.middle.block1795:                      ; preds = %vec.epilog.vector.body1790
  %i.qn = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ql) ; 2 uses
  %cmp.n1796 = icmp eq i64 %i.pk, %n.vec1789
  br i1 %cmp.n1796, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1784, %vec.epilog.iter.check1786, %vec.epilog.middle.block1795
  %indvars.iv924.i.i.ph = phi i64 [ %indvars.iv.i.i, %iter.check1784 ], [ %i.pq, %vec.epilog.iter.check1786 ], [ %i.qg, %vec.epilog.middle.block1795 ] ; 4 uses
  %.1666770.i.i.ph = phi double [ 0.000000e+00, %iter.check1784 ], [ %i.qf, %vec.epilog.iter.check1786 ], [ %i.qn, %vec.epilog.middle.block1795 ] ; 2 uses
  %i.qo = sub i64 %i.gr, %indvars.iv924.i.i.ph
  %xtraiter2062 = and i64 %i.qo, 7                ; 2 uses
  %lcmp.mod2063.not = icmp eq i64 %xtraiter2062, 0
  br i1 %lcmp.mod2063.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv924.i.i.prol = phi i64 [ %indvars.iv.next925.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv924.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.1666770.i.i.prol = phi double [ %i.qs, %.lr.ph.i.i.prol ], [ %.1666770.i.i.ph, %.lr.ph.i.i.preheader ]
  %prol.iter2064 = phi i64 [ %prol.iter2064.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.qp = mul nsw i64 %indvars.iv924.i.i.prol, %i.ih
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.qp
  %i.qq = load double, ptr %gep.i.i.prol, align 8, !tbaa !117
  %i.qr = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.qq)
  %i.qs = fadd reassoc nsz arcp contract afn double %i.qr, %.1666770.i.i.prol ; 3 uses
  %indvars.iv.next925.i.i.prol = add nuw nsw i64 %indvars.iv924.i.i.prol, 1 ; 2 uses
  %prol.iter2064.next = add i64 %prol.iter2064, 1 ; 2 uses
  %prol.iter2064.cmp.not = icmp eq i64 %prol.iter2064.next, %xtraiter2062
  br i1 %prol.iter2064.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !29

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa1944.unr = phi double [ poison, %.lr.ph.i.i.preheader ], [ %i.qs, %.lr.ph.i.i.prol ]
  %indvars.iv924.i.i.unr = phi i64 [ %indvars.iv924.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next925.i.i.prol, %.lr.ph.i.i.prol ]
  %.1666770.i.i.unr = phi double [ %.1666770.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.qs, %.lr.ph.i.i.prol ]
  %29 = sub i64 %indvars.iv924.i.i.ph, %i.gr
  %30 = icmp ugt i64 %29, -8
  br i1 %30, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block1795, %middle.block1776
  %.lcssa780 = phi double [ %i.qn, %vec.epilog.middle.block1795 ], [ %i.qf, %middle.block1776 ], [ %.lcssa1944.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.tv, %.lr.ph.i.i ] ; 20 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.qt = fcmp reassoc nsz arcp contract afn une double %.lcssa780, 0.000000e+00
  br i1 %i.qt, label %iter.check1740, label %.loopexit758.i.i

iter.check1740:                                   ; preds = %._crit_edge.i.i
  %min.iters.check1714 = icmp ugt i64 %i.pk, 3
  %or.cond1916 = and i1 %min.iters.check1714, %ident.check1712.not
  br i1 %or.cond1916, label %vector.main.loop.iter.check1715, label %.lr.ph774.i.i.preheader

vector.main.loop.iter.check1715:                  ; preds = %iter.check1740
  %min.iters.check1716 = icmp ult i64 %i.pk, 16
  br i1 %min.iters.check1716, label %vec.epilog.ph1744, label %vector.ph1717

vector.ph1717:                                    ; preds = %vector.main.loop.iter.check1715
  %i.qu = and i64 %i.pk, 12
  %n.vec1718 = and i64 %i.pk, -16                 ; 4 uses
  %i.qv = add i64 %indvars.iv.i.i, %n.vec1718
  %broadcast.splatinsert1719 = insertelement <4 x double> poison, double %.lcssa780, i64 0
  %broadcast.splat1720 = shufflevector <4 x double> %broadcast.splatinsert1719, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.qw = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.qx = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1720
  %i.qy = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1720
  %i.qz = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1720
  %i.ra = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1720
  br label %vector.body1721

vector.body1721:                                  ; preds = %vector.body1721, %vector.ph1717
  %index1722 = phi i64 [ 0, %vector.ph1717 ], [ %index.next1731, %vector.body1721 ] ; 2 uses
  %vec.phi1723.a = phi <4 x double> [ zeroinitializer, %vector.ph1717 ], [ %i.rn, %vector.body1721 ]
  %vec.phi1724.a = phi <4 x double> [ zeroinitializer, %vector.ph1717 ], [ %i.ro, %vector.body1721 ]
  %vec.phi1725.a = phi <4 x double> [ zeroinitializer, %vector.ph1717 ], [ %i.rp, %vector.body1721 ]
  %vec.phi1726 = phi <4 x double> [ zeroinitializer, %vector.ph1717 ], [ %i.rq, %vector.body1721 ]
  %i.rb = getelementptr [8 x i8], ptr %i.qw, i64 %index1722 ; 5 uses
  %i.rc = getelementptr i8, ptr %i.rb, i64 32     ; 2 uses
  %i.rd = getelementptr i8, ptr %i.rb, i64 64     ; 2 uses
  %i.re = getelementptr i8, ptr %i.rb, i64 96     ; 2 uses
  %wide.load1727.a = load <4 x double>, ptr %i.rb, align 8, !tbaa !117
  %wide.load1728.a = load <4 x double>, ptr %i.rc, align 8, !tbaa !117
  %wide.load1729.a = load <4 x double>, ptr %i.rd, align 8, !tbaa !117
  %wide.load1730 = load <4 x double>, ptr %i.re, align 8, !tbaa !117
  %i.rf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1727.a, %i.qx ; 3 uses
  %i.rg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1728.a, %i.qy ; 3 uses
  %i.rh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1729.a, %i.qz ; 3 uses
  %i.ri = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1730, %i.ra ; 3 uses
  store <4 x double> %i.rf, ptr %i.rb, align 8, !tbaa !117
  store <4 x double> %i.rg, ptr %i.rc, align 8, !tbaa !117
  store <4 x double> %i.rh, ptr %i.rd, align 8, !tbaa !117
  store <4 x double> %i.ri, ptr %i.re, align 8, !tbaa !117
  %i.rj = fmul reassoc nsz arcp contract afn <4 x double> %i.rf, %i.rf
  %i.rk = fmul reassoc nsz arcp contract afn <4 x double> %i.rg, %i.rg
  %i.rl = fmul reassoc nsz arcp contract afn <4 x double> %i.rh, %i.rh
  %i.rm = fmul reassoc nsz arcp contract afn <4 x double> %i.ri, %i.ri
  %i.rn = fadd reassoc nsz arcp contract afn <4 x double> %i.rj, %vec.phi1723.a ; 2 uses
  %i.ro = fadd reassoc nsz arcp contract afn <4 x double> %i.rk, %vec.phi1724.a ; 2 uses
  %i.rp = fadd reassoc nsz arcp contract afn <4 x double> %i.rl, %vec.phi1725.a ; 2 uses
  %i.rq = fadd reassoc nsz arcp contract afn <4 x double> %i.rm, %vec.phi1726 ; 2 uses
  %index.next1731 = add nuw i64 %index1722, 16    ; 2 uses
  %i.rr = icmp eq i64 %index.next1731, %n.vec1718
  br i1 %i.rr, label %middle.block1732, label %vector.body1721, !llvm.loop !30

middle.block1732:                                 ; preds = %vector.body1721
  %bin.rdx1733.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ro, %i.rn
  %bin.rdx1734.a = fadd reassoc nsz arcp contract afn <4 x double> %i.rp, %bin.rdx1733.a
  %bin.rdx1735 = fadd reassoc nsz arcp contract afn <4 x double> %i.rq, %bin.rdx1734.a
  %i.rs = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1735) ; 3 uses
  %cmp.n1736 = icmp eq i64 %i.pk, %n.vec1718
  br i1 %cmp.n1736, label %._crit_edge775.i.i, label %vec.epilog.iter.check1742

vec.epilog.iter.check1742:                        ; preds = %middle.block1732
  %min.epilog.iters.check1743 = icmp eq i64 %i.qu, 0
  br i1 %min.epilog.iters.check1743, label %.lr.ph774.i.i.preheader, label %vec.epilog.ph1744, !prof !121

vec.epilog.ph1744:                                ; preds = %vector.main.loop.iter.check1715, %vec.epilog.iter.check1742
  %vec.epilog.resume.val1737 = phi i64 [ %n.vec1718, %vec.epilog.iter.check1742 ], [ 0, %vector.main.loop.iter.check1715 ]
  %bc.merge.rdx1739 = phi double [ %i.rs, %vec.epilog.iter.check1742 ], [ 0.000000e+00, %vector.main.loop.iter.check1715 ]
  %n.vec1745 = and i64 %i.pk, -4                  ; 3 uses
  %i.rt = add i64 %indvars.iv.i.i, %n.vec1745
  %i.ru = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1739, i64 0
  %broadcast.splatinsert1746 = insertelement <4 x double> poison, double %.lcssa780, i64 0
  %broadcast.splat1747 = shufflevector <4 x double> %broadcast.splatinsert1746, <4 x double> poison, <4 x i32> zeroinitializer
  %i.rv = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.rw = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1747
  br label %vec.epilog.vector.body1748

vec.epilog.vector.body1748:                       ; preds = %vec.epilog.vector.body1748, %vec.epilog.ph1744
  %index1749 = phi i64 [ %vec.epilog.resume.val1737, %vec.epilog.ph1744 ], [ %index.next1752, %vec.epilog.vector.body1748 ] ; 2 uses
  %vec.phi1750 = phi <4 x double> [ %i.ru, %vec.epilog.ph1744 ], [ %i.sa, %vec.epilog.vector.body1748 ]
  %i.rx = getelementptr [8 x i8], ptr %i.rv, i64 %index1749 ; 2 uses
  %wide.load1751 = load <4 x double>, ptr %i.rx, align 8, !tbaa !117
  %i.ry = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1751, %i.rw ; 3 uses
  store <4 x double> %i.ry, ptr %i.rx, align 8, !tbaa !117
  %i.rz = fmul reassoc nsz arcp contract afn <4 x double> %i.ry, %i.ry
  %i.sa = fadd reassoc nsz arcp contract afn <4 x double> %i.rz, %vec.phi1750 ; 2 uses
  %index.next1752 = add nuw i64 %index1749, 4     ; 2 uses
  %i.sb = icmp eq i64 %index.next1752, %n.vec1745
  br i1 %i.sb, label %vec.epilog.middle.block1753, label %vec.epilog.vector.body1748, !llvm.loop !31

vec.epilog.middle.block1753:                      ; preds = %vec.epilog.vector.body1748
  %i.sc = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.sa) ; 2 uses
  %cmp.n1754 = icmp eq i64 %i.pk, %n.vec1745
  br i1 %cmp.n1754, label %._crit_edge775.i.i, label %.lr.ph774.i.i.preheader

.lr.ph774.i.i.preheader:                          ; preds = %iter.check1740, %vec.epilog.iter.check1742, %vec.epilog.middle.block1753
  %indvars.iv927.i.i.ph = phi i64 [ %indvars.iv.i.i, %iter.check1740 ], [ %i.qv, %vec.epilog.iter.check1742 ], [ %i.rt, %vec.epilog.middle.block1753 ] ; 4 uses
  %.0674772.i.i.ph = phi double [ 0.000000e+00, %iter.check1740 ], [ %i.rs, %vec.epilog.iter.check1742 ], [ %i.sc, %vec.epilog.middle.block1753 ] ; 2 uses
  %i.sd = sub i64 %i.gr, %indvars.iv927.i.i.ph
  %xtraiter2065 = and i64 %i.sd, 3                ; 2 uses
  %lcmp.mod2066.not = icmp eq i64 %xtraiter2065, 0
  br i1 %lcmp.mod2066.not, label %.lr.ph774.i.i.prol.loopexit, label %.lr.ph774.i.i.prol.preheader

.lr.ph774.i.i.prol.preheader:                     ; preds = %.lr.ph774.i.i.preheader
  %i.se = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.lcssa780
  br label %.lr.ph774.i.i.prol

.lr.ph774.i.i.prol:                               ; preds = %.lr.ph774.i.i.prol, %.lr.ph774.i.i.prol.preheader
  %indvars.iv927.i.i.prol = phi i64 [ %indvars.iv.next928.i.i.prol, %.lr.ph774.i.i.prol ], [ %indvars.iv927.i.i.ph, %.lr.ph774.i.i.prol.preheader ] ; 2 uses
  %.0674772.i.i.prol = phi double [ %i.sj, %.lr.ph774.i.i.prol ], [ %.0674772.i.i.ph, %.lr.ph774.i.i.prol.preheader ]
  %prol.iter2067 = phi i64 [ %prol.iter2067.next, %.lr.ph774.i.i.prol ], [ 0, %.lr.ph774.i.i.prol.preheader ]
  %i.sf = mul nsw i64 %indvars.iv927.i.i.prol, %i.ih
  %gep1166.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.sf ; 2 uses
  %i.sg = load double, ptr %gep1166.i.i.prol, align 8, !tbaa !117
  %i.sh = fmul reassoc nsz arcp contract afn double %i.sg, %i.se ; 3 uses
  store double %i.sh, ptr %gep1166.i.i.prol, align 8, !tbaa !117
  %i.si = fmul reassoc nsz arcp contract afn double %i.sh, %i.sh
  %i.sj = fadd reassoc nsz arcp contract afn double %i.si, %.0674772.i.i.prol ; 3 uses
  %indvars.iv.next928.i.i.prol = add nuw nsw i64 %indvars.iv927.i.i.prol, 1 ; 2 uses
  %prol.iter2067.next = add i64 %prol.iter2067, 1 ; 2 uses
  %prol.iter2067.cmp.not = icmp eq i64 %prol.iter2067.next, %xtraiter2065
  br i1 %prol.iter2067.cmp.not, label %.lr.ph774.i.i.prol.loopexit, label %.lr.ph774.i.i.prol, !llvm.loop !32

.lr.ph774.i.i.prol.loopexit:                      ; preds = %.lr.ph774.i.i.prol, %.lr.ph774.i.i.preheader
  %.lcssa1950.unr = phi double [ poison, %.lr.ph774.i.i.preheader ], [ %i.sj, %.lr.ph774.i.i.prol ]
  %indvars.iv927.i.i.unr = phi i64 [ %indvars.iv927.i.i.ph, %.lr.ph774.i.i.preheader ], [ %indvars.iv.next928.i.i.prol, %.lr.ph774.i.i.prol ]
  %.0674772.i.i.unr = phi double [ %.0674772.i.i.ph, %.lr.ph774.i.i.preheader ], [ %i.sj, %.lr.ph774.i.i.prol ]
  %i.sk = sub i64 %indvars.iv927.i.i.ph, %i.gr
  %i.sl = icmp ugt i64 %i.sk, -4
  br i1 %i.sl, label %._crit_edge775.i.i, label %.lr.ph774.i.i.preheader.new

.lr.ph774.i.i.preheader.new:                      ; preds = %.lr.ph774.i.i.prol.loopexit
  %i.sm = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.lcssa780
  %i.sn = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.lcssa780
  %i.so = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.lcssa780
  %i.sp = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.lcssa780
  br label %.lr.ph774.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv924.i.i = phi i64 [ %indvars.iv.next925.i.i.7, %.lr.ph.i.i ], [ %indvars.iv924.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.1666770.i.i = phi double [ %i.tv, %.lr.ph.i.i ], [ %.1666770.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.sq = mul nsw i64 %indvars.iv924.i.i, %i.ih
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.sq
  %i.sr = load double, ptr %gep.i.i, align 8, !tbaa !117
  %i.ss = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.sr)
  %i.st = fadd reassoc nsz arcp contract afn double %i.ss, %.1666770.i.i
  %indvars.iv.next925.i.i = add nuw nsw i64 %indvars.iv924.i.i, 1
  %i.su = mul nsw i64 %indvars.iv.next925.i.i, %i.ih
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.su
  %i.sv = load double, ptr %gep.i.i.1, align 8, !tbaa !117
  %i.sw = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.sv)
  %i.sx = fadd reassoc nsz arcp contract afn double %i.sw, %i.st
  %indvars.iv.next925.i.i.1 = add nuw nsw i64 %indvars.iv924.i.i, 2
  %i.sy = mul nsw i64 %indvars.iv.next925.i.i.1, %i.ih
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.sy
  %i.sz = load double, ptr %gep.i.i.2, align 8, !tbaa !117
  %i.ta = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.sz)
  %i.tb = fadd reassoc nsz arcp contract afn double %i.ta, %i.sx
  %indvars.iv.next925.i.i.2 = add nuw nsw i64 %indvars.iv924.i.i, 3
  %i.tc = mul nsw i64 %indvars.iv.next925.i.i.2, %i.ih
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.tc
  %i.td = load double, ptr %gep.i.i.3, align 8, !tbaa !117
  %i.te = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.td)
  %i.tf = fadd reassoc nsz arcp contract afn double %i.te, %i.tb
  %indvars.iv.next925.i.i.3 = add nuw nsw i64 %indvars.iv924.i.i, 4
  %i.tg = mul nsw i64 %indvars.iv.next925.i.i.3, %i.ih
  %gep.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.tg
  %i.th = load double, ptr %gep.i.i.4, align 8, !tbaa !117
  %i.ti = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.th)
  %i.tj = fadd reassoc nsz arcp contract afn double %i.ti, %i.tf
  %indvars.iv.next925.i.i.4 = add nuw nsw i64 %indvars.iv924.i.i, 5
  %i.tk = mul nsw i64 %indvars.iv.next925.i.i.4, %i.ih
  %gep.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.tk
  %i.tl = load double, ptr %gep.i.i.5, align 8, !tbaa !117
  %i.tm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.tl)
  %i.tn = fadd reassoc nsz arcp contract afn double %i.tm, %i.tj
  %indvars.iv.next925.i.i.5 = add nuw nsw i64 %indvars.iv924.i.i, 6
  %i.to = mul nsw i64 %indvars.iv.next925.i.i.5, %i.ih
  %gep.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.to
  %i.tp = load double, ptr %gep.i.i.6, align 8, !tbaa !117
  %i.tq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.tp)
  %i.tr = fadd reassoc nsz arcp contract afn double %i.tq, %i.tn
  %indvars.iv.next925.i.i.6 = add nuw nsw i64 %indvars.iv924.i.i, 7
  %i.ts = mul nsw i64 %indvars.iv.next925.i.i.6, %i.ih
  %gep.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ts
  %i.tt = load double, ptr %gep.i.i.7, align 8, !tbaa !117
  %i.tu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.tt)
  %i.tv = fadd reassoc nsz arcp contract afn double %i.tu, %i.tr ; 2 uses
  %indvars.iv.next925.i.i.7 = add nuw nsw i64 %indvars.iv924.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next925.i.i.7, %i.gr
end_hunk_1
begin_hunk_2_@thinplate_match:bb.a

vector.main.loop.iter.check1372:                  ; preds = %iter.check1393
  br i1 %min.iters.check1373, label %vec.epilog.ph1397, label %vector.ph1374

vector.ph1374:                                    ; preds = %vector.main.loop.iter.check1372
  %broadcast.splatinsert1376 = insertelement <4 x double> poison, double %.lcssa785, i64 0
  %broadcast.splat1377 = shufflevector <4 x double> %broadcast.splatinsert1376, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1374
  %index1379 = phi i64 [ 0, %vector.ph1374 ], [ %index.next1388, %vector.body1378 ] ; 2 uses
  %i.aim = add nuw i64 %indvars.iv942.i.i, %index1379 ; 2 uses
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.aim ; 4 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 32
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ain, i64 64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 96
  %wide.load1380.a = load <4 x double>, ptr %i.ain, align 8, !tbaa !117
  %wide.load1381.a = load <4 x double>, ptr %i.aio, align 8, !tbaa !117
  %wide.load1382.a = load <4 x double>, ptr %i.aip, align 8, !tbaa !117
  %wide.load1383.a = load <4 x double>, ptr %i.aiq, align 8, !tbaa !117
  %i.air = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1380.a, %broadcast.splat1377
  %i.ais = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1381.a, %broadcast.splat1377
  %i.ait = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1382.a, %broadcast.splat1377
  %i.aiu = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1383.a, %broadcast.splat1377
  %i.aiv = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %i.aim ; 5 uses
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 32   ; 2 uses
  %i.aix = getelementptr i8, ptr %i.aiv, i64 64   ; 2 uses
  %i.aiy = getelementptr i8, ptr %i.aiv, i64 96   ; 2 uses
  %wide.load1384.a = load <4 x double>, ptr %i.aiv, align 8, !tbaa !117
  %wide.load1385.a = load <4 x double>, ptr %i.aiw, align 8, !tbaa !117
  %wide.load1386.a = load <4 x double>, ptr %i.aix, align 8, !tbaa !117
  %wide.load1387 = load <4 x double>, ptr %i.aiy, align 8, !tbaa !117
  %i.aiz = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1384.a, %i.air
  %i.aja = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1385.a, %i.ais
  %i.ajb = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1386.a, %i.ait
  %i.ajc = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1387, %i.aiu
  store <4 x double> %i.aiz, ptr %i.aiv, align 8, !tbaa !117
  store <4 x double> %i.aja, ptr %i.aiw, align 8, !tbaa !117
  store <4 x double> %i.ajb, ptr %i.aix, align 8, !tbaa !117
  store <4 x double> %i.ajc, ptr %i.aiy, align 8, !tbaa !117
  %index.next1388 = add nuw i64 %index1379, 16    ; 2 uses
  %i.ajd = icmp eq i64 %index.next1388, %n.vec1375
  br i1 %i.ajd, label %middle.block1389, label %vector.body1378, !llvm.loop !62

middle.block1389:                                 ; preds = %vector.body1378
  br i1 %cmp.n1390, label %._crit_edge808.i.i, label %vec.epilog.iter.check1395

vec.epilog.iter.check1395:                        ; preds = %middle.block1389
  br i1 %min.epilog.iters.check1396, label %.lr.ph807.i.i.preheader, label %vec.epilog.ph1397, !prof !121

vec.epilog.ph1397:                                ; preds = %vector.main.loop.iter.check1372, %vec.epilog.iter.check1395
  %vec.epilog.resume.val1391 = phi i64 [ %n.vec1375, %vec.epilog.iter.check1395 ], [ 0, %vector.main.loop.iter.check1372 ]
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %.lcssa785, i64 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1401

vec.epilog.vector.body1401:                       ; preds = %vec.epilog.vector.body1401, %vec.epilog.ph1397
  %index1402 = phi i64 [ %vec.epilog.resume.val1391, %vec.epilog.ph1397 ], [ %index.next1405, %vec.epilog.vector.body1401 ] ; 2 uses
  %i.aje = add nuw i64 %indvars.iv942.i.i, %index1402 ; 2 uses
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.aje
  %wide.load1403.a = load <4 x double>, ptr %i.ajf, align 8, !tbaa !117
  %i.ajg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1403.a, %broadcast.splat1400
  %i.ajh = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %i.aje ; 2 uses
  %wide.load1404 = load <4 x double>, ptr %i.ajh, align 8, !tbaa !117
  %i.aji = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1404, %i.ajg
  store <4 x double> %i.aji, ptr %i.ajh, align 8, !tbaa !117
  %index.next1405 = add nuw i64 %index1402, 4     ; 2 uses
  %i.ajj = icmp eq i64 %index.next1405, %n.vec1398
  br i1 %i.ajj, label %vec.epilog.middle.block1406, label %vec.epilog.vector.body1401, !llvm.loop !63

vec.epilog.middle.block1406:                      ; preds = %vec.epilog.vector.body1401
  br i1 %cmp.n1407, label %._crit_edge808.i.i, label %.lr.ph807.i.i.preheader

.lr.ph807.i.i.preheader:                          ; preds = %iter.check1393, %vec.epilog.iter.check1395, %vec.epilog.middle.block1406
  %indvars.iv974.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1393 ], [ %i.ahe, %vec.epilog.iter.check1395 ], [ %i.ahf, %vec.epilog.middle.block1406 ]
  br label %.lr.ph807.i.i

._crit_edge808.i.i:                               ; preds = %.lr.ph807.i.i, %vec.epilog.middle.block1406, %middle.block1389
  %indvars.iv.next980.i.i = add nuw nsw i64 %indvars.iv979.i.i, 1 ; 2 uses
  %exitcond983.not.i.i = icmp eq i64 %indvars.iv.next980.i.i, %i.gr
  br i1 %exitcond983.not.i.i, label %iter.check1355, label %iter.check1438

iter.check1355:                                   ; preds = %._crit_edge808.i.i
  %min.iters.check1337 = icmp ult i64 %i.pm, 4
  br i1 %min.iters.check1337, label %.lr.ph812.i.i.preheader, label %vector.main.loop.iter.check1338

vector.main.loop.iter.check1338:                  ; preds = %iter.check1355
  %min.iters.check1339 = icmp ult i64 %i.pm, 16
  br i1 %min.iters.check1339, label %vec.epilog.ph1359, label %vector.ph1340

vector.ph1340:                                    ; preds = %vector.main.loop.iter.check1338
  %i.ajk = and i64 %i.pm, 12
  %n.vec1341 = and i64 %i.pm, -16                 ; 4 uses
  %i.ajl = add i64 %indvars.iv942.i.i, %n.vec1341
  %broadcast.splatinsert1342 = insertelement <4 x double> poison, double %.lcssa783, i64 0
  %broadcast.splat1343 = shufflevector <4 x double> %broadcast.splatinsert1342, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ajm = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv942.i.i
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1340
  %index1345 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1350, %vector.body1344 ] ; 2 uses
  %i.ajn = getelementptr [8 x i8], ptr %i.ajm, i64 %index1345 ; 5 uses
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 32   ; 2 uses
  %i.ajp = getelementptr i8, ptr %i.ajn, i64 64   ; 2 uses
  %i.ajq = getelementptr i8, ptr %i.ajn, i64 96   ; 2 uses
  %wide.load1346.a = load <4 x double>, ptr %i.ajn, align 8, !tbaa !117
  %wide.load1347.a = load <4 x double>, ptr %i.ajo, align 8, !tbaa !117
  %wide.load1348.a = load <4 x double>, ptr %i.ajp, align 8, !tbaa !117
  %wide.load1349 = load <4 x double>, ptr %i.ajq, align 8, !tbaa !117
  %i.ajr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1346.a, %broadcast.splat1343
  %i.ajs = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1347.a, %broadcast.splat1343
  %i.ajt = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1348.a, %broadcast.splat1343
  %i.aju = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1349, %broadcast.splat1343
  store <4 x double> %i.ajr, ptr %i.ajn, align 8, !tbaa !117
  store <4 x double> %i.ajs, ptr %i.ajo, align 8, !tbaa !117
  store <4 x double> %i.ajt, ptr %i.ajp, align 8, !tbaa !117
  store <4 x double> %i.aju, ptr %i.ajq, align 8, !tbaa !117
  %index.next1350 = add nuw i64 %index1345, 16    ; 2 uses
  %i.ajv = icmp eq i64 %index.next1350, %n.vec1341
  br i1 %i.ajv, label %middle.block1351, label %vector.body1344, !llvm.loop !64

middle.block1351:                                 ; preds = %vector.body1344
  %cmp.n1352 = icmp eq i64 %i.pm, %n.vec1341
  br i1 %cmp.n1352, label %.loopexit753.i.loopexit.i, label %vec.epilog.iter.check1357

vec.epilog.iter.check1357:                        ; preds = %middle.block1351
  %min.epilog.iters.check1358 = icmp eq i64 %i.ajk, 0
  br i1 %min.epilog.iters.check1358, label %.lr.ph812.i.i.preheader, label %vec.epilog.ph1359, !prof !121

vec.epilog.ph1359:                                ; preds = %vector.main.loop.iter.check1338, %vec.epilog.iter.check1357
  %vec.epilog.resume.val1353 = phi i64 [ %n.vec1341, %vec.epilog.iter.check1357 ], [ 0, %vector.main.loop.iter.check1338 ]
  %n.vec1360 = and i64 %i.pm, -4                  ; 3 uses
  %i.ajw = add i64 %indvars.iv942.i.i, %n.vec1360
  %broadcast.splatinsert1361 = insertelement <4 x double> poison, double %.lcssa783, i64 0
  %broadcast.splat1362 = shufflevector <4 x double> %broadcast.splatinsert1361, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ajx = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv942.i.i
  br label %vec.epilog.vector.body1363

vec.epilog.vector.body1363:                       ; preds = %vec.epilog.vector.body1363, %vec.epilog.ph1359
  %index1364 = phi i64 [ %vec.epilog.resume.val1353, %vec.epilog.ph1359 ], [ %index.next1366, %vec.epilog.vector.body1363 ] ; 2 uses
  %i.ajy = getelementptr [8 x i8], ptr %i.ajx, i64 %index1364 ; 2 uses
  %wide.load1365 = load <4 x double>, ptr %i.ajy, align 8, !tbaa !117
  %i.ajz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1365, %broadcast.splat1362
  store <4 x double> %i.ajz, ptr %i.ajy, align 8, !tbaa !117
  %index.next1366 = add nuw i64 %index1364, 4     ; 2 uses
  %i.aka = icmp eq i64 %index.next1366, %n.vec1360
  br i1 %i.aka, label %vec.epilog.middle.block1367, label %vec.epilog.vector.body1363, !llvm.loop !65

vec.epilog.middle.block1367:                      ; preds = %vec.epilog.vector.body1363
  %cmp.n1368 = icmp eq i64 %i.pm, %n.vec1360
  br i1 %cmp.n1368, label %.loopexit753.i.loopexit.i, label %.lr.ph812.i.i.preheader

.lr.ph812.i.i.preheader:                          ; preds = %iter.check1355, %vec.epilog.iter.check1357, %vec.epilog.middle.block1367
  %indvars.iv984.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1355 ], [ %i.ajl, %vec.epilog.iter.check1357 ], [ %i.ajw, %vec.epilog.middle.block1367 ]
  br label %.lr.ph812.i.i

.lr.ph807.i.i:                                    ; preds = %.lr.ph807.i.i.preheader, %.lr.ph807.i.i
  %indvars.iv974.i.i = phi i64 [ %indvars.iv.next975.i.i, %.lr.ph807.i.i ], [ %indvars.iv974.i.i.ph, %.lr.ph807.i.i.preheader ] ; 3 uses
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv974.i.i
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !117
  %i.akd = fmul reassoc nsz arcp contract afn double %i.akc, %.lcssa785
  %gep1188.i.i = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %indvars.iv974.i.i ; 2 uses
  %i.ake = load double, ptr %gep1188.i.i, align 8, !tbaa !117
  %i.akf = fadd reassoc nsz arcp contract afn double %i.ake, %i.akd
  store double %i.akf, ptr %gep1188.i.i, align 8, !tbaa !117
  %indvars.iv.next975.i.i = add nuw nsw i64 %indvars.iv974.i.i, 1 ; 2 uses
  %exitcond978.not.i.i = icmp eq i64 %indvars.iv.next975.i.i, %wide.trip.count990.i.i
  br i1 %exitcond978.not.i.i, label %._crit_edge808.i.i, label %.lr.ph807.i.i, !llvm.loop !66

.lr.ph812.i.i:                                    ; preds = %.lr.ph812.i.i.preheader, %.lr.ph812.i.i
  %indvars.iv984.i.i = phi i64 [ %indvars.iv.next985.i.i, %.lr.ph812.i.i ], [ %indvars.iv984.i.i.ph, %.lr.ph812.i.i.preheader ] ; 2 uses
  %gep1190.i.i = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv984.i.i ; 2 uses
  %i.akg = load double, ptr %gep1190.i.i, align 8, !tbaa !117
  %i.akh = fmul reassoc nsz arcp contract afn double %i.akg, %.lcssa783
  store double %i.akh, ptr %gep1190.i.i, align 8, !tbaa !117
  %indvars.iv.next985.i.i = add nuw nsw i64 %indvars.iv984.i.i, 1 ; 2 uses
  %exitcond988.not.i.i = icmp eq i64 %indvars.iv.next985.i.i, %wide.trip.count990.i.i
  br i1 %exitcond988.not.i.i, label %.loopexit753.i.loopexit.i, label %.lr.ph812.i.i, !llvm.loop !67

.loopexit753.i.loopexit.i:                        ; preds = %.lr.ph812.i.i, %vec.epilog.middle.block1367, %middle.block1351
  %.pre147.i = load double, ptr %i.po, align 8, !tbaa !117
  br label %.loopexit753.i.i

.loopexit753.i.i:                                 ; preds = %.loopexit753.i.loopexit.i, %._crit_edge791.i.i, %.loopexit758.i.i
  %i.aki = phi double [ %i.pn, %.loopexit758.i.i ], [ %i.pn, %._crit_edge791.i.i ], [ %.pre147.i, %.loopexit753.i.loopexit.i ]
  %.2670.i.i = phi nsz double [ 0.000000e+00, %.loopexit758.i.i ], [ 0.000000e+00, %._crit_edge791.i.i ], [ %i.afn, %.loopexit753.i.loopexit.i ] ; 2 uses
  %.4.i.i = phi nsz double [ 0.000000e+00, %.loopexit758.i.i ], [ %.lcssa783, %._crit_edge791.i.i ], [ %.lcssa783, %.loopexit753.i.loopexit.i ]
  %i.akj = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.act)
  %i.akk = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aki)
  %i.akl = fadd reassoc nsz arcp contract afn double %i.akk, %i.akj ; 2 uses
  %i.akm = fcmp reassoc nsz arcp contract afn ogt double %.0672813.i.i, %i.akl
  %.0672..i.i = select reassoc nsz arcp contract afn i1 %i.akm, double %.0672813.i.i, double %i.akl ; 11 uses
  %indvars.iv.next943.i.i = add nuw nsw i64 %indvars.iv942.i.i, 1
  %exitcond991.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count990.i.i
  br i1 %exitcond991.not.i.i, label %._crit_edge818.i.i, label %iter.check1784

._crit_edge818.i.i:                               ; preds = %.loopexit753.i.i, %.loopexit745.i.i
  %indvar1197 = phi i32 [ %indvar.next1198, %.loopexit745.i.i ], [ 0, %.loopexit753.i.i ] ; 3 uses
  %indvars.iv1017.in.i.i = phi i64 [ %indvars.iv1017.i.i, %.loopexit745.i.i ], [ %i.nr, %.loopexit753.i.i ] ; 6 uses
  %.3671835.i.i = phi double [ %i.aor, %.loopexit745.i.i ], [ %.2670.i.i, %.loopexit753.i.i ] ; 2 uses
  %.reass = add i32 %indvar1197, %invariant.op
  %i.akn = sext i32 %.reass to i64
  %31 = add nsw i64 %i.akn, %i.nr
  %i.ako = sub i32 %i.nq, %indvar1197
  %i.akp = sext i32 %i.ako to i64
  %i.akq = sub nsw i64 %i.nr, %i.akp              ; 18 uses
  %indvars116.i = trunc i64 %indvars.iv1017.in.i.i to i32 ; 3 uses
  %indvars.iv1017.i.i = add nsw i64 %indvars.iv1017.in.i.i, -1 ; 6 uses
  %indvars.i = trunc i64 %indvars.iv1017.i.i to i32 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv1017.in.i.i, %i.nu
  br i1 %.not.i.i, label %.loopexit745.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge818.i.i
  %i.akr = fcmp reassoc nsz arcp contract afn une double %.3671835.i.i, 0.000000e+00
  %i.aks = icmp sge i32 %i.np, %indvars116.i      ; 2 uses
  %or.cond1231.i.i = and i1 %i.aks, %i.akr
  br i1 %or.cond1231.i.i, label %.lr.ph823.i.i, label %.loopexit747.i.i

.lr.ph823.i.i:                                    ; preds = %bb.r
  %i.akt = mul nsw i64 %indvars.iv1017.i.i, %i.ih
  %sext.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.aku = ashr exact i64 %sext.i, 32             ; 15 uses
  %i.akv = getelementptr [8 x i8], ptr %i.in, i64 %i.akt ; 6 uses
  %i.akw = getelementptr [8 x i8], ptr %i.akv, i64 %i.aku
  %invariant.gep1193.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1017.i.i ; 7 uses
  %i.akx = load double, ptr %i.akw, align 8, !tbaa !117
  %i.aky = fmul reassoc nsz arcp contract afn double %i.akx, %.3671835.i.i ; 2 uses
  %min.iters.check1314 = icmp ult i64 %i.akq, 4
  br i1 %min.iters.check1314, label %scalar.ph1313.preheader, label %vector.ph1315

vector.ph1315:                                    ; preds = %.lr.ph823.i.i
  %n.vec1316 = and i64 %i.akq, -4                 ; 3 uses
  %i.akz = add nsw i64 %i.aku, %n.vec1316
  %broadcast.splatinsert1317 = insertelement <4 x double> poison, double %i.aky, i64 0
  %broadcast.splat1318 = shufflevector <4 x double> %broadcast.splatinsert1317, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1321 = insertelement <4 x i64> poison, i64 %i.aku, i64 0
  %broadcast.splat1322 = shufflevector <4 x i64> %broadcast.splatinsert1321, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1323 = add nuw nsw <4 x i64> %broadcast.splat1322, <i64 0, i64 1, i64 2, i64 3>
  %i.ala = getelementptr [8 x i8], ptr %i.akv, i64 %i.aku
  %i.alb = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1318
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1315
  %index1325 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1329, %vector.body1324 ] ; 2 uses
  %vec.ind1326 = phi <4 x i64> [ %induction1323, %vector.ph1315 ], [ %vec.ind.next1330, %vector.body1324 ] ; 2 uses
  %i.alc = getelementptr [8 x i8], ptr %i.ala, i64 %index1325
  %wide.load1327 = load <4 x double>, ptr %i.alc, align 8, !tbaa !117
  %i.ald = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1327, %i.alb
  %i.ale = mul nsw <4 x i64> %vec.ind1326, %broadcast.splat1320
  %wide.gep1328 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, <4 x i64> %i.ale
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ald, <4 x ptr> align 8 %wide.gep1328, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1329 = add nuw i64 %index1325, 4     ; 2 uses
  %vec.ind.next1330 = add nuw nsw <4 x i64> %vec.ind1326, splat (i64 4)
  %i.alf = icmp eq i64 %index.next1329, %n.vec1316
  br i1 %i.alf, label %middle.block1331, label %vector.body1324, !llvm.loop !68

middle.block1331:                                 ; preds = %vector.body1324
  %cmp.n1332 = icmp eq i64 %i.akq, %n.vec1316
  br i1 %cmp.n1332, label %iter.check1289.preheader, label %scalar.ph1313.preheader

scalar.ph1313.preheader:                          ; preds = %.lr.ph823.i.i, %middle.block1331
  %indvars.iv992.i.i.ph = phi i64 [ %i.aku, %.lr.ph823.i.i ], [ %i.akz, %middle.block1331 ]
  %i.alg = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aky
  br label %scalar.ph1313

scalar.ph1313:                                    ; preds = %scalar.ph1313.preheader, %scalar.ph1313
  %indvars.iv992.i.i = phi i64 [ %indvars.iv.next993.i.i, %scalar.ph1313 ], [ %indvars.iv992.i.i.ph, %scalar.ph1313.preheader ] ; 3 uses
  %gep1192.i.i = getelementptr [8 x i8], ptr %i.akv, i64 %indvars.iv992.i.i
  %i.alh = load double, ptr %gep1192.i.i, align 8, !tbaa !117
  %i.ali = fmul reassoc nsz arcp contract afn double %i.alh, %i.alg
  %i.alj = mul nsw i64 %indvars.iv992.i.i, %i.nr
  %gep1194.i.i = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.alj
  store double %i.ali, ptr %gep1194.i.i, align 8, !tbaa !117
  %indvars.iv.next993.i.i = add nuw nsw i64 %indvars.iv992.i.i, 1 ; 2 uses
  %exitcond996.not.i.i = icmp eq i64 %indvars.iv.next993.i.i, %i.nr
  br i1 %exitcond996.not.i.i, label %iter.check1289.preheader, label %scalar.ph1313, !llvm.loop !69

iter.check1289.preheader:                         ; preds = %scalar.ph1313, %middle.block1331
  %min.iters.check1247 = icmp ult i64 %i.akq, 4
  %min.iters.check1249 = icmp ult i64 %i.akq, 16
  %i.alk = and i64 %i.akq, 12
  %n.vec1251 = and i64 %i.akq, -16                ; 4 uses
  %i.all = add nsw i64 %i.aku, %n.vec1251         ; 2 uses
  %broadcast.splatinsert1254 = insertelement <4 x i64> poison, i64 %i.aku, i64 0
  %broadcast.splat1255 = shufflevector <4 x i64> %broadcast.splatinsert1254, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1256 = add nuw nsw <4 x i64> %broadcast.splat1255, <i64 0, i64 1, i64 2, i64 3>
  %i.alm = getelementptr [8 x i8], ptr %i.akv, i64 %i.aku
  %cmp.n1285 = icmp eq i64 %i.akq, %n.vec1251
  %min.epilog.iters.check1292 = icmp eq i64 %i.alk, 0
  %n.vec1294 = and i64 %i.akq, -4                 ; 3 uses
  %i.aln = add nsw i64 %i.aku, %n.vec1294
  %i.alo = getelementptr [8 x i8], ptr %i.akv, i64 %i.aku
  %cmp.n1310 = icmp eq i64 %i.akq, %n.vec1294
  %xtraiter2077 = and i64 %i.akq, 3               ; 2 uses
  %lcmp.mod2078.not = icmp eq i64 %xtraiter2077, 0
  %i.alp = icmp ult i64 %31, 3
  br label %iter.check1289

iter.check1289:                                   ; preds = %iter.check1289.preheader, %._crit_edge830.i.i
  %indvars.iv1007.i.i = phi i64 [ %indvars.iv.next1008.i.i, %._crit_edge830.i.i ], [ %i.aku, %iter.check1289.preheader ] ; 2 uses
  %invariant.gep1197.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1007.i.i ; 11 uses
  br i1 %min.iters.check1247, label %vec.epilog.scalar.ph1290.preheader, label %vector.main.loop.iter.check1248

vector.main.loop.iter.check1248:                  ; preds = %iter.check1289
  br i1 %min.iters.check1249, label %vec.epilog.ph1293, label %vector.body1257

vector.body1257:                                  ; preds = %vector.main.loop.iter.check1248, %vector.body1257
  %index1258 = phi i64 [ %index.next1279, %vector.body1257 ], [ 0, %vector.main.loop.iter.check1248 ] ; 2 uses
  %vec.ind1259 = phi <4 x i64> [ %vec.ind.next1280, %vector.body1257 ], [ %induction1256, %vector.main.loop.iter.check1248 ] ; 5 uses
  %vec.phi1260.a = phi <4 x double> [ %i.amc, %vector.body1257 ], [ zeroinitializer, %vector.main.loop.iter.check1248 ]
  %vec.phi1261.a = phi <4 x double> [ %i.amd, %vector.body1257 ], [ zeroinitializer, %vector.main.loop.iter.check1248 ]
  %vec.phi1262.a = phi <4 x double> [ %i.ame, %vector.body1257 ], [ zeroinitializer, %vector.main.loop.iter.check1248 ]
  %vec.phi1263 = phi <4 x double> [ %i.amf, %vector.body1257 ], [ zeroinitializer, %vector.main.loop.iter.check1248 ]
  %step.add1264 = add nuw nsw <4 x i64> %vec.ind1259, splat (i64 4)
  %step.add.21265 = add nuw nsw <4 x i64> %vec.ind1259, splat (i64 8)
  %step.add.31266 = add nuw nsw <4 x i64> %vec.ind1259, splat (i64 12)
  %i.alq = getelementptr [8 x i8], ptr %i.alm, i64 %index1258 ; 4 uses
  %i.alr = getelementptr i8, ptr %i.alq, i64 32
  %i.als = getelementptr i8, ptr %i.alq, i64 64
  %i.alt = getelementptr i8, ptr %i.alq, i64 96
  %wide.load1267.a = load <4 x double>, ptr %i.alq, align 8, !tbaa !117
  %wide.load1268.a = load <4 x double>, ptr %i.alr, align 8, !tbaa !117
  %wide.load1269.a = load <4 x double>, ptr %i.als, align 8, !tbaa !117
  %wide.load1270 = load <4 x double>, ptr %i.alt, align 8, !tbaa !117
  %i.alu = mul nuw nsw <4 x i64> %vec.ind1259, %broadcast.splat1253
  %i.alv = mul nuw nsw <4 x i64> %step.add1264, %broadcast.splat1253
  %i.alw = mul nuw nsw <4 x i64> %step.add.21265, %broadcast.splat1253
  %i.alx = mul nuw nsw <4 x i64> %step.add.31266, %broadcast.splat1253
  %wide.gep1271.a = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.alu
  %wide.gep1272.a = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.alv
  %wide.gep1273.a = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.alw
  %wide.gep1274 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.alx
  %wide.masked.gather1275.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1271.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1276.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1272.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1277.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1273.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1278 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1274, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.aly = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1275.a, %wide.load1267.a
  %i.alz = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1276.a, %wide.load1268.a
  %i.ama = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1277.a, %wide.load1269.a
  %i.amb = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1278, %wide.load1270
  %i.amc = fadd reassoc nsz arcp contract afn <4 x double> %i.aly, %vec.phi1260.a ; 2 uses
  %i.amd = fadd reassoc nsz arcp contract afn <4 x double> %i.alz, %vec.phi1261.a ; 2 uses
  %i.ame = fadd reassoc nsz arcp contract afn <4 x double> %i.ama, %vec.phi1262.a ; 2 uses
  %i.amf = fadd reassoc nsz arcp contract afn <4 x double> %i.amb, %vec.phi1263 ; 2 uses
  %index.next1279 = add nuw i64 %index1258, 16    ; 2 uses
  %vec.ind.next1280 = add nuw nsw <4 x i64> %vec.ind1259, splat (i64 16)
  %i.amg = icmp eq i64 %index.next1279, %n.vec1251
  br i1 %i.amg, label %middle.block1281, label %vector.body1257, !llvm.loop !70

middle.block1281:                                 ; preds = %vector.body1257
  %bin.rdx1282.a = fadd reassoc nsz arcp contract afn <4 x double> %i.amd, %i.amc
  %bin.rdx1283.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ame, %bin.rdx1282.a
  %bin.rdx1284 = fadd reassoc nsz arcp contract afn <4 x double> %i.amf, %bin.rdx1283.a
  %i.amh = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1284) ; 3 uses
  br i1 %cmp.n1285, label %.lr.ph829.i.i.preheader, label %vec.epilog.iter.check1291

vec.epilog.iter.check1291:                        ; preds = %middle.block1281
  br i1 %min.epilog.iters.check1292, label %vec.epilog.scalar.ph1290.preheader, label %vec.epilog.ph1293, !prof !121

vec.epilog.ph1293:                                ; preds = %vector.main.loop.iter.check1248, %vec.epilog.iter.check1291
  %vec.epilog.resume.val1286 = phi i64 [ %n.vec1251, %vec.epilog.iter.check1291 ], [ 0, %vector.main.loop.iter.check1248 ]
  %bc.resume.val1287 = phi i64 [ %i.all, %vec.epilog.iter.check1291 ], [ %i.aku, %vector.main.loop.iter.check1248 ]
  %bc.merge.rdx1288 = phi double [ %i.amh, %vec.epilog.iter.check1291 ], [ 0.000000e+00, %vector.main.loop.iter.check1248 ]
  %i.ami = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1288, i64 0
  %broadcast.splatinsert1297 = insertelement <4 x i64> poison, i64 %bc.resume.val1287, i64 0
  %broadcast.splat1298 = shufflevector <4 x i64> %broadcast.splatinsert1297, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1299 = add nuw nsw <4 x i64> %broadcast.splat1298, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1300

vec.epilog.vector.body1300:                       ; preds = %vec.epilog.vector.body1300, %vec.epilog.ph1293
  %index1301 = phi i64 [ %vec.epilog.resume.val1286, %vec.epilog.ph1293 ], [ %index.next1307, %vec.epilog.vector.body1300 ] ; 2 uses
  %vec.ind1302 = phi <4 x i64> [ %induction1299, %vec.epilog.ph1293 ], [ %vec.ind.next1308, %vec.epilog.vector.body1300 ] ; 2 uses
  %vec.phi1303 = phi <4 x double> [ %i.ami, %vec.epilog.ph1293 ], [ %i.amm, %vec.epilog.vector.body1300 ]
  %i.amj = getelementptr [8 x i8], ptr %i.alo, i64 %index1301
  %wide.load1304 = load <4 x double>, ptr %i.amj, align 8, !tbaa !117
  %i.amk = mul nuw nsw <4 x i64> %vec.ind1302, %broadcast.splat1296
  %wide.gep1305 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.amk
  %wide.masked.gather1306 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1305, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.aml = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1306, %wide.load1304
  %i.amm = fadd reassoc nsz arcp contract afn <4 x double> %i.aml, %vec.phi1303 ; 2 uses
  %index.next1307 = add nuw i64 %index1301, 4     ; 2 uses
  %vec.ind.next1308 = add nuw nsw <4 x i64> %vec.ind1302, splat (i64 4)
  %i.amn = icmp eq i64 %index.next1307, %n.vec1294
  br i1 %i.amn, label %vec.epilog.middle.block1309, label %vec.epilog.vector.body1300, !llvm.loop !71

vec.epilog.middle.block1309:                      ; preds = %vec.epilog.vector.body1300
  %i.amo = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.amm) ; 2 uses
  br i1 %cmp.n1310, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1290.preheader

vec.epilog.scalar.ph1290.preheader:               ; preds = %iter.check1289, %vec.epilog.iter.check1291, %vec.epilog.middle.block1309
  %indvars.iv997.i.i.ph = phi i64 [ %i.aku, %iter.check1289 ], [ %i.all, %vec.epilog.iter.check1291 ], [ %i.aln, %vec.epilog.middle.block1309 ]
  %.4678824.i.i.ph = phi double [ 0.000000e+00, %iter.check1289 ], [ %i.amh, %vec.epilog.iter.check1291 ], [ %i.amo, %vec.epilog.middle.block1309 ]
  br label %vec.epilog.scalar.ph1290

vec.epilog.scalar.ph1290:                         ; preds = %vec.epilog.scalar.ph1290.preheader, %vec.epilog.scalar.ph1290
  %indvars.iv997.i.i = phi i64 [ %indvars.iv.next998.i.i, %vec.epilog.scalar.ph1290 ], [ %indvars.iv997.i.i.ph, %vec.epilog.scalar.ph1290.preheader ] ; 3 uses
  %.4678824.i.i = phi double [ %i.amt, %vec.epilog.scalar.ph1290 ], [ %.4678824.i.i.ph, %vec.epilog.scalar.ph1290.preheader ]
  %gep1196.i.i = getelementptr [8 x i8], ptr %i.akv, i64 %indvars.iv997.i.i
  %i.amp = load double, ptr %gep1196.i.i, align 8, !tbaa !117
  %i.amq = mul nuw nsw i64 %indvars.iv997.i.i, %i.nr
  %gep1198.i.i = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.amq
  %i.amr = load double, ptr %gep1198.i.i, align 8, !tbaa !117
  %i.ams = fmul reassoc nsz arcp contract afn double %i.amr, %i.amp
  %i.amt = fadd reassoc nsz arcp contract afn double %i.ams, %.4678824.i.i ; 2 uses
  %indvars.iv.next998.i.i = add nuw nsw i64 %indvars.iv997.i.i, 1 ; 2 uses
  %exitcond1001.not.i.i = icmp eq i64 %indvars.iv.next998.i.i, %i.nr
  br i1 %exitcond1001.not.i.i, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1290, !llvm.loop !72

.lr.ph829.i.i.preheader:                          ; preds = %vec.epilog.scalar.ph1290, %vec.epilog.middle.block1309, %middle.block1281
  %.lcssa786 = phi double [ %i.amo, %vec.epilog.middle.block1309 ], [ %i.amh, %middle.block1281 ], [ %i.amt, %vec.epilog.scalar.ph1290 ] ; 5 uses
  br i1 %lcmp.mod2078.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol

.lr.ph829.i.i.prol:                               ; preds = %.lr.ph829.i.i.preheader, %.lr.ph829.i.i.prol
  %indvars.iv1002.i.i.prol = phi i64 [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ], [ %i.aku, %.lr.ph829.i.i.preheader ] ; 2 uses
  %prol.iter2079 = phi i64 [ %prol.iter2079.next, %.lr.ph829.i.i.prol ], [ 0, %.lr.ph829.i.i.preheader ]
  %i.amu = mul nuw nsw i64 %indvars.iv1002.i.i.prol, %i.nr ; 2 uses
  %gep1200.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.amu
  %i.amv = load double, ptr %gep1200.i.i.prol, align 8, !tbaa !117
  %i.amw = fmul reassoc nsz arcp contract afn double %i.amv, %.lcssa786
  %gep1202.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.amu ; 2 uses
  %i.amx = load double, ptr %gep1202.i.i.prol, align 8, !tbaa !117
  %i.amy = fadd reassoc nsz arcp contract afn double %i.amx, %i.amw
  store double %i.amy, ptr %gep1202.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.prol = add nuw nsw i64 %indvars.iv1002.i.i.prol, 1 ; 2 uses
  %prol.iter2079.next = add i64 %prol.iter2079, 1 ; 2 uses
  %prol.iter2079.cmp.not = icmp eq i64 %prol.iter2079.next, %xtraiter2077
  br i1 %prol.iter2079.cmp.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol, !llvm.loop !73

.lr.ph829.i.i.prol.loopexit:                      ; preds = %.lr.ph829.i.i.prol, %.lr.ph829.i.i.preheader
  %indvars.iv1002.i.i.unr = phi i64 [ %i.aku, %.lr.ph829.i.i.preheader ], [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ]
  br i1 %i.alp, label %._crit_edge830.i.i, label %.lr.ph829.i.i

._crit_edge830.i.i:                               ; preds = %.lr.ph829.i.i, %.lr.ph829.i.i.prol.loopexit
  %indvars.iv.next1008.i.i = add nuw nsw i64 %indvars.iv1007.i.i, 1 ; 2 uses
  %exitcond1011.not.i.i = icmp eq i64 %indvars.iv.next1008.i.i, %i.nr
  br i1 %exitcond1011.not.i.i, label %.loopexit747.i.i, label %iter.check1289

.lr.ph829.i.i:                                    ; preds = %.lr.ph829.i.i.prol.loopexit, %.lr.ph829.i.i
  %indvars.iv1002.i.i = phi i64 [ %indvars.iv.next1003.i.i.3, %.lr.ph829.i.i ], [ %indvars.iv1002.i.i.unr, %.lr.ph829.i.i.prol.loopexit ] ; 5 uses
  %i.amz = mul nuw nsw i64 %indvars.iv1002.i.i, %i.nr ; 2 uses
  %gep1200.i.i = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.amz
  %i.ana = load double, ptr %gep1200.i.i, align 8, !tbaa !117
  %i.anb = fmul reassoc nsz arcp contract afn double %i.ana, %.lcssa786
  %gep1202.i.i = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.amz ; 2 uses
  %i.anc = load double, ptr %gep1202.i.i, align 8, !tbaa !117
  %i.and = fadd reassoc nsz arcp contract afn double %i.anc, %i.anb
  store double %i.and, ptr %gep1202.i.i, align 8, !tbaa !117
  %indvars.iv.next1003.i.i = add nuw nsw i64 %indvars.iv1002.i.i, 1
  %i.ane = mul nuw nsw i64 %indvars.iv.next1003.i.i, %i.nr ; 2 uses
  %gep1200.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.ane
  %i.anf = load double, ptr %gep1200.i.i.1, align 8, !tbaa !117
  %i.ang = fmul reassoc nsz arcp contract afn double %i.anf, %.lcssa786
  %gep1202.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.ane ; 2 uses
  %i.anh = load double, ptr %gep1202.i.i.1, align 8, !tbaa !117
  %i.ani = fadd reassoc nsz arcp contract afn double %i.anh, %i.ang
  store double %i.ani, ptr %gep1202.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.1 = add nuw nsw i64 %indvars.iv1002.i.i, 2
  %i.anj = mul nuw nsw i64 %indvars.iv.next1003.i.i.1, %i.nr ; 2 uses
  %gep1200.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.anj
  %i.ank = load double, ptr %gep1200.i.i.2, align 8, !tbaa !117
  %i.anl = fmul reassoc nsz arcp contract afn double %i.ank, %.lcssa786
  %gep1202.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.anj ; 2 uses
  %i.anm = load double, ptr %gep1202.i.i.2, align 8, !tbaa !117
  %i.ann = fadd reassoc nsz arcp contract afn double %i.anm, %i.anl
  store double %i.ann, ptr %gep1202.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.2 = add nuw nsw i64 %indvars.iv1002.i.i, 3
  %i.ano = mul nuw nsw i64 %indvars.iv.next1003.i.i.2, %i.nr ; 2 uses
  %gep1200.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.ano
  %i.anp = load double, ptr %gep1200.i.i.3, align 8, !tbaa !117
  %i.anq = fmul reassoc nsz arcp contract afn double %i.anp, %.lcssa786
  %gep1202.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.ano ; 2 uses
  %i.anr = load double, ptr %gep1202.i.i.3, align 8, !tbaa !117
  %i.ans = fadd reassoc nsz arcp contract afn double %i.anr, %i.anq
  store double %i.ans, ptr %gep1202.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.3 = add nuw nsw i64 %indvars.iv1002.i.i, 4 ; 2 uses
  %exitcond1006.not.i.i.3 = icmp eq i64 %indvars.iv.next1003.i.i.3, %i.nr
  br i1 %exitcond1006.not.i.i.3, label %._crit_edge830.i.i, label %.lr.ph829.i.i

.loopexit747.i.i:                                 ; preds = %._crit_edge830.i.i, %bb.r
  br i1 %i.aks, label %iter.check1226, label %.loopexit745.i.i

iter.check1226:                                   ; preds = %.loopexit747.i.i
  %i.ant = mul i32 %i.nq, %indvars.i
  %i.anu = add i32 %i.ant, %indvars116.i
  %i.anv = sext i32 %i.anu to i64
  %i.anw = shl nsw i64 %i.anv, 3
  %scevgep.i.i = getelementptr i8, ptr %i.il, i64 %i.anw
  %i.anx = sub i32 %i.np, %indvars116.i
  %i.any = zext i32 %i.anx to i64
  %i.anz = shl nuw nsw i64 %i.any, 3
  %i.aoa = add nuw nsw i64 %i.anz, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.aoa, i1 false), !tbaa !117
  %sext172.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.aob = ashr exact i64 %sext172.i, 32          ; 5 uses
  %invariant.gep1203.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1017.i.i ; 6 uses
  %min.iters.check1200 = icmp ult i64 %i.akq, 4
  br i1 %min.iters.check1200, label %vec.epilog.scalar.ph1227.preheader, label %vector.main.loop.iter.check1201

vector.main.loop.iter.check1201:                  ; preds = %iter.check1226
  %min.iters.check1202 = icmp ult i64 %i.akq, 16
  br i1 %min.iters.check1202, label %vec.epilog.ph1230, label %vector.ph1203

vector.ph1203:                                    ; preds = %vector.main.loop.iter.check1201
  %i.aoc = and i64 %i.akq, 12
  %n.vec1204 = and i64 %i.akq, -16                ; 4 uses
  %i.aod = add nsw i64 %i.aob, %n.vec1204         ; 2 uses
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %i.aob, i64 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1209 = add nuw nsw <4 x i64> %broadcast.splat1208, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1203
  %index1211 = phi i64 [ 0, %vector.ph1203 ], [ %index.next1220, %vector.body1210 ]
  %vec.ind1212 = phi <4 x i64> [ %induction1209, %vector.ph1203 ], [ %vec.ind.next1221, %vector.body1210 ] ; 5 uses
  %step.add1213 = add nuw nsw <4 x i64> %vec.ind1212, splat (i64 4)
  %step.add.21214 = add nuw nsw <4 x i64> %vec.ind1212, splat (i64 8)
  %step.add.31215 = add nuw nsw <4 x i64> %vec.ind1212, splat (i64 12)
  %i.aoe = mul nsw <4 x i64> %vec.ind1212, %broadcast.splat1206
  %i.aof = mul nsw <4 x i64> %step.add1213, %broadcast.splat1206
  %i.aog = mul nsw <4 x i64> %step.add.21214, %broadcast.splat1206
  %i.aoh = mul nsw <4 x i64> %step.add.31215, %broadcast.splat1206
  %wide.gep1216.a = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aoe
  %wide.gep1217.a = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aof
  %wide.gep1218.a = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aog
  %wide.gep1219 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aoh
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1216.a, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1217.a, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1218.a, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1219, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1220 = add nuw i64 %index1211, 16    ; 2 uses
  %vec.ind.next1221 = add nuw nsw <4 x i64> %vec.ind1212, splat (i64 16)
  %i.aoi = icmp eq i64 %index.next1220, %n.vec1204
  br i1 %i.aoi, label %middle.block1222, label %vector.body1210, !llvm.loop !74

middle.block1222:                                 ; preds = %vector.body1210
  %cmp.n1223 = icmp eq i64 %i.akq, %n.vec1204
  br i1 %cmp.n1223, label %.loopexit745.i.i, label %vec.epilog.iter.check1228

vec.epilog.iter.check1228:                        ; preds = %middle.block1222
  %min.epilog.iters.check1229 = icmp eq i64 %i.aoc, 0
  br i1 %min.epilog.iters.check1229, label %vec.epilog.scalar.ph1227.preheader, label %vec.epilog.ph1230, !prof !121

vec.epilog.ph1230:                                ; preds = %vector.main.loop.iter.check1201, %vec.epilog.iter.check1228
  %vec.epilog.resume.val1224 = phi i64 [ %n.vec1204, %vec.epilog.iter.check1228 ], [ 0, %vector.main.loop.iter.check1201 ]
  %bc.resume.val1225 = phi i64 [ %i.aod, %vec.epilog.iter.check1228 ], [ %i.aob, %vector.main.loop.iter.check1201 ]
  %n.vec1231 = and i64 %i.akq, -4                 ; 3 uses
  %i.aoj = add nsw i64 %i.aob, %n.vec1231
  %broadcast.splatinsert1234 = insertelement <4 x i64> poison, i64 %bc.resume.val1225, i64 0
  %broadcast.splat1235 = shufflevector <4 x i64> %broadcast.splatinsert1234, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1236 = add nuw nsw <4 x i64> %broadcast.splat1235, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1237

vec.epilog.vector.body1237:                       ; preds = %vec.epilog.vector.body1237, %vec.epilog.ph1230
  %index1238 = phi i64 [ %vec.epilog.resume.val1224, %vec.epilog.ph1230 ], [ %index.next1241, %vec.epilog.vector.body1237 ]
  %vec.ind1239 = phi <4 x i64> [ %induction1236, %vec.epilog.ph1230 ], [ %vec.ind.next1242, %vec.epilog.vector.body1237 ] ; 2 uses
  %i.aok = mul nsw <4 x i64> %vec.ind1239, %broadcast.splat1233
  %wide.gep1240 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aok
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1240, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1241 = add nuw i64 %index1238, 4     ; 2 uses
  %vec.ind.next1242 = add nuw nsw <4 x i64> %vec.ind1239, splat (i64 4)
  %i.aol = icmp eq i64 %index.next1241, %n.vec1231
  br i1 %i.aol, label %vec.epilog.middle.block1243, label %vec.epilog.vector.body1237, !llvm.loop !75

vec.epilog.middle.block1243:                      ; preds = %vec.epilog.vector.body1237
  %cmp.n1244 = icmp eq i64 %i.akq, %n.vec1231
  br i1 %cmp.n1244, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1227.preheader

vec.epilog.scalar.ph1227.preheader:               ; preds = %iter.check1226, %vec.epilog.iter.check1228, %vec.epilog.middle.block1243
  %indvars.iv1012.i.i.ph = phi i64 [ %i.aob, %iter.check1226 ], [ %i.aod, %vec.epilog.iter.check1228 ], [ %i.aoj, %vec.epilog.middle.block1243 ]
  br label %vec.epilog.scalar.ph1227

vec.epilog.scalar.ph1227:                         ; preds = %vec.epilog.scalar.ph1227.preheader, %vec.epilog.scalar.ph1227
  %indvars.iv1012.i.i = phi i64 [ %indvars.iv.next1013.i.i, %vec.epilog.scalar.ph1227 ], [ %indvars.iv1012.i.i.ph, %vec.epilog.scalar.ph1227.preheader ] ; 2 uses
  %i.aom = mul nsw i64 %indvars.iv1012.i.i, %i.nr
  %gep1204.i.i = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, i64 %i.aom
  store double 0.000000e+00, ptr %gep1204.i.i, align 8, !tbaa !117
  %indvars.iv.next1013.i.i = add nuw nsw i64 %indvars.iv1012.i.i, 1 ; 2 uses
  %exitcond1016.not.i.i = icmp eq i64 %indvars.iv.next1013.i.i, %i.nr
  br i1 %exitcond1016.not.i.i, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1227, !llvm.loop !76

.loopexit745.i.i:                                 ; preds = %vec.epilog.scalar.ph1227, %middle.block1222, %vec.epilog.middle.block1243, %.loopexit747.i.i, %._crit_edge818.i.i
  %i.aon = mul i32 %.0645699.i.i, %indvars.i
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.aoo
  store double 1.000000e+00, ptr %i.aop, align 8, !tbaa !117
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv1017.i.i
  %i.aor = load double, ptr %i.aoq, align 8, !tbaa !117
  %i.aos = icmp sgt i64 %indvars.iv1017.in.i.i, 1
  %indvar.next1198 = add i32 %indvar1197, 1
  br i1 %i.aos, label %._crit_edge818.i.i, label %.preheader742.i.i

.preheader742.i.i:                                ; preds = %.loopexit745.i.i, %.loopexit735.i.i
  %indvars.iv1052.i.i = phi i64 [ %indvars.iv.next1053.i.i, %.loopexit735.i.i ], [ 0, %.loopexit745.i.i ] ; 8 uses
  %indvars.iv1026.in.i.i = phi i64 [ %indvars.iv1026.i.i, %.loopexit735.i.i ], [ %i.nr, %.loopexit745.i.i ] ; 8 uses
  %i.aot = trunc i64 %indvars.iv1052.i.i to i32
  %i.aou = add i32 %14, %i.aot                    ; 3 uses
  %i.aov = zext i32 %i.aou to i64
  %i.aow = add nuw nsw i64 %i.aov, 1              ; 5 uses
  %i.aox = mul nsw i64 %indvars.iv1052.i.i, -16   ; 2 uses
  %scevgep1067 = getelementptr i8, ptr %27, i64 %i.aox
  %i.aoy = mul nsw i64 %indvars.iv1052.i.i, -8    ; 2 uses
  %scevgep1069 = getelementptr i8, ptr %28, i64 %i.aoy
  %32 = shl i64 %indvars.iv1052.i.i, 3
  %33 = add i64 %32, 34359738360
  %34 = and i64 %33, 34359738360
  %scevgep1072 = getelementptr i8, ptr %scevgep1069, i64 %34
  %scevgep1073 = getelementptr i8, ptr %i.oa, i64 %i.aox
  %scevgep1074 = getelementptr i8, ptr %i.ob, i64 %i.aoy
  %i.aoz = add i64 %i.ko, %indvars.iv1052.i.i     ; 21 uses
  %indvars.iv1026.i.i = add nsw i64 %indvars.iv1026.in.i.i, -1 ; 23 uses
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1026.i.i
  %i.apb = load double, ptr %i.apa, align 8, !tbaa !117 ; 2 uses
  %i.apc = icmp slt i64 %indvars.iv1026.in.i.i, %i.nr
  br i1 %i.apc, label %.lr.ph841.i.i, label %.loopexit741.i.i

.lr.ph841.i.i:                                    ; preds = %.preheader742.i.i
  %i.apd = shl nuw nsw i64 %indvars.iv1052.i.i, 3
  %i.ape = add nuw nsw i64 %i.apd, 34359738360
  %i.apf = and i64 %i.ape, 34359738360
  %i.apg = add nuw nsw i64 %i.apf, 8
  %i.aph = trunc nuw nsw i64 %indvars.iv1052.i.i to i32
  %i.api = mul i32 %i.aph, %i.iq
  %i.apj = add i32 %i.nw, %i.api
  %i.apk = sext i32 %i.apj to i64
  %i.apl = shl nsw i64 %i.apk, 3
  %scevgep1020.i.i = getelementptr i8, ptr %i.in, i64 %i.apl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1020.i.i, i8 0, i64 %i.apg, i1 false), !tbaa !117
  br label %.loopexit741.i.i

.loopexit741.i.i:                                 ; preds = %.lr.ph841.i.i, %.preheader742.i.i
  %i.apm = fcmp reassoc nsz arcp contract afn une double %i.apb, 0.000000e+00
  br i1 %i.apm, label %bb.s, label %iter.check1183

iter.check1183:                                   ; preds = %.loopexit741.i.i
  %invariant.gep1205.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1026.i.i ; 11 uses
  %min.iters.check1171 = icmp ugt i64 %i.aoz, 3
  %or.cond1920 = and i1 %min.iters.check1171, %ident.check1169.not
  br i1 %or.cond1920, label %vector.main.loop.iter.check1172, label %.lr.ph843.i.i.preheader

vector.main.loop.iter.check1172:                  ; preds = %iter.check1183
  %min.iters.check1173 = icmp ult i64 %i.aoz, 16
  br i1 %min.iters.check1173, label %vec.epilog.ph1187, label %vector.ph1174

vector.ph1174:                                    ; preds = %vector.main.loop.iter.check1172
  %i.apn = and i64 %i.aoz, 12
  %n.vec1175 = and i64 %i.aoz, -16                ; 4 uses
  %i.apo = add i64 %indvars.iv1026.i.i, %n.vec1175
  %i.app = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %indvars.iv1026.i.i
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1174
  %index1177 = phi i64 [ 0, %vector.ph1174 ], [ %index.next1178, %vector.body1176 ] ; 2 uses
  %i.apq = getelementptr [8 x i8], ptr %i.app, i64 %index1177 ; 4 uses
  %i.apr = getelementptr i8, ptr %i.apq, i64 32
  %i.aps = getelementptr i8, ptr %i.apq, i64 64
  %i.apt = getelementptr i8, ptr %i.apq, i64 96
  store <4 x double> zeroinitializer, ptr %i.apq, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.apr, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.aps, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.apt, align 8, !tbaa !117
  %index.next1178 = add nuw i64 %index1177, 16    ; 2 uses
  %i.apu = icmp eq i64 %index.next1178, %n.vec1175
  br i1 %i.apu, label %middle.block1179, label %vector.body1176, !llvm.loop !77

middle.block1179:                                 ; preds = %vector.body1176
  %cmp.n1180 = icmp eq i64 %i.aoz, %n.vec1175
  br i1 %cmp.n1180, label %.loopexit735.i.i, label %vec.epilog.iter.check1185

vec.epilog.iter.check1185:                        ; preds = %middle.block1179
  %min.epilog.iters.check1186 = icmp eq i64 %i.apn, 0
  br i1 %min.epilog.iters.check1186, label %.lr.ph843.i.i.preheader, label %vec.epilog.ph1187, !prof !121

vec.epilog.ph1187:                                ; preds = %vector.main.loop.iter.check1172, %vec.epilog.iter.check1185
  %vec.epilog.resume.val1181 = phi i64 [ %n.vec1175, %vec.epilog.iter.check1185 ], [ 0, %vector.main.loop.iter.check1172 ]
  %n.vec1188 = and i64 %i.aoz, -4                 ; 3 uses
  %i.apv = add i64 %indvars.iv1026.i.i, %n.vec1188
  %i.apw = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %indvars.iv1026.i.i
  br label %vec.epilog.vector.body1189

vec.epilog.vector.body1189:                       ; preds = %vec.epilog.vector.body1189, %vec.epilog.ph1187
  %index1190 = phi i64 [ %vec.epilog.resume.val1181, %vec.epilog.ph1187 ], [ %index.next1191, %vec.epilog.vector.body1189 ] ; 2 uses
  %i.apx = getelementptr [8 x i8], ptr %i.apw, i64 %index1190
  store <4 x double> zeroinitializer, ptr %i.apx, align 8, !tbaa !117
  %index.next1191 = add nuw i64 %index1190, 4     ; 2 uses
  %i.apy = icmp eq i64 %index.next1191, %n.vec1188
  br i1 %i.apy, label %vec.epilog.middle.block1192, label %vec.epilog.vector.body1189, !llvm.loop !78

vec.epilog.middle.block1192:                      ; preds = %vec.epilog.vector.body1189
  %cmp.n1193 = icmp eq i64 %i.aoz, %n.vec1188
  br i1 %cmp.n1193, label %.loopexit735.i.i, label %.lr.ph843.i.i.preheader

.lr.ph843.i.i.preheader:                          ; preds = %iter.check1183, %vec.epilog.iter.check1185, %vec.epilog.middle.block1192
  %indvars.iv1028.i.i.ph = phi i64 [ %indvars.iv1026.i.i, %iter.check1183 ], [ %i.apo, %vec.epilog.iter.check1185 ], [ %i.apv, %vec.epilog.middle.block1192 ] ; 4 uses
  %i.apz = sub i64 %i.b, %indvars.iv1028.i.i.ph
  %xtraiter2080 = and i64 %i.apz, 7               ; 2 uses
  %lcmp.mod2081.not = icmp eq i64 %xtraiter2080, 0
  br i1 %lcmp.mod2081.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol

.lr.ph843.i.i.prol:                               ; preds = %.lr.ph843.i.i.preheader, %.lr.ph843.i.i.prol
  %indvars.iv1028.i.i.prol = phi i64 [ %indvars.iv.next1029.i.i.prol, %.lr.ph843.i.i.prol ], [ %indvars.iv1028.i.i.ph, %.lr.ph843.i.i.preheader ] ; 2 uses
  %prol.iter2082 = phi i64 [ %prol.iter2082.next, %.lr.ph843.i.i.prol ], [ 0, %.lr.ph843.i.i.preheader ]
  %i.aqa = mul nsw i64 %indvars.iv1028.i.i.prol, %i.ih
  %gep1206.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.aqa
  store double 0.000000e+00, ptr %gep1206.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.prol = add nuw nsw i64 %indvars.iv1028.i.i.prol, 1 ; 2 uses
  %prol.iter2082.next = add i64 %prol.iter2082, 1 ; 2 uses
  %prol.iter2082.cmp.not = icmp eq i64 %prol.iter2082.next, %xtraiter2080
  br i1 %prol.iter2082.cmp.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol, !llvm.loop !79

.lr.ph843.i.i.prol.loopexit:                      ; preds = %.lr.ph843.i.i.prol, %.lr.ph843.i.i.preheader
  %indvars.iv1028.i.i.unr = phi i64 [ %indvars.iv1028.i.i.ph, %.lr.ph843.i.i.preheader ], [ %indvars.iv.next1029.i.i.prol, %.lr.ph843.i.i.prol ]
  %i.aqb = sub i64 %indvars.iv1028.i.i.ph, %i.b
  %i.aqc = icmp ugt i64 %i.aqb, -8
  br i1 %i.aqc, label %.loopexit735.i.i, label %.lr.ph843.i.i

bb.s:                                             ; preds = %.loopexit741.i.i
  %i.aqd = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.apb ; 12 uses
  %.not696.i.not.i = icmp eq i64 %indvars.iv1026.i.i, %i.nu
  br i1 %.not696.i.not.i, label %iter.check1049, label %.preheader734.lr.ph.i.i

.preheader734.lr.ph.i.i:                          ; preds = %bb.s
  %i.aqe = trunc nuw nsw i64 %indvars.iv1026.i.i to i32
  %i.aqf = mul i32 %.0661700.i.i, %i.aqe
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.aqg
  %invariant.gep1207.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1026.i.i ; 18 uses
  %min.iters.check1124 = icmp ugt i32 %i.aou, 2
  %or.cond1921 = and i1 %min.iters.check1124, %ident.check1122.not
  %min.iters.check1126 = icmp ult i32 %i.aou, 15
  %i.aqi = and i64 %i.aow, 12
  %n.vec1128 = and i64 %i.aow, 8589934576         ; 4 uses
  %i.aqj = add i64 %indvars.iv1026.in.i.i, %n.vec1128
  %cmp.n1148 = icmp eq i64 %i.aow, %n.vec1128
  %min.epilog.iters.check1155 = icmp eq i64 %i.aqi, 0
  %n.vec1157 = and i64 %i.aow, 8589934588         ; 3 uses
  %i.aqk = add i64 %indvars.iv1026.in.i.i, %n.vec1157
  %cmp.n1165 = icmp eq i64 %i.aow, %n.vec1157
  %min.iters.check1079 = icmp ugt i64 %i.aoz, 3
  %or.cond1922 = and i1 %min.iters.check1079, %ident.check1065.not
  %bound01075 = icmp ult ptr %scevgep1067, %scevgep1074
  %bound11076 = icmp ult ptr %scevgep1073, %scevgep1072
  %found.conflict1077 = and i1 %bound01075, %bound11076
  %min.iters.check1081 = icmp ult i64 %i.aoz, 16
  %i.aql = and i64 %i.aoz, 12
  %n.vec1083 = and i64 %i.aoz, -16                ; 4 uses
  %i.aqm = add i64 %indvars.iv1026.i.i, %n.vec1083
  %cmp.n1100 = icmp eq i64 %i.aoz, %n.vec1083
  %min.epilog.iters.check1106 = icmp eq i64 %i.aql, 0
  %n.vec1108 = and i64 %i.aoz, -4                 ; 3 uses
  %i.aqn = add i64 %indvars.iv1026.i.i, %n.vec1108
  %cmp.n1119 = icmp eq i64 %i.aoz, %n.vec1108
  br label %iter.check1152

iter.check1152:                                   ; preds = %._crit_edge852.i.loopexit.i, %.preheader734.lr.ph.i.i
  %indvars.iv1042.i.i = phi i64 [ %indvars.iv1026.in.i.i, %.preheader734.lr.ph.i.i ], [ %indvars.iv.next1043.i.i, %._crit_edge852.i.loopexit.i ] ; 2 uses
  %invariant.gep1209.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1042.i.i ; 18 uses
  br i1 %or.cond1921, label %vector.main.loop.iter.check1125, label %.lr.ph846.i.i.preheader

vector.main.loop.iter.check1125:                  ; preds = %iter.check1152
  br i1 %min.iters.check1126, label %vec.epilog.ph1156, label %vector.body1129

vector.body1129:                                  ; preds = %vector.main.loop.iter.check1125, %vector.body1129
  %index1130 = phi i64 [ %index.next1143, %vector.body1129 ], [ 0, %vector.main.loop.iter.check1125 ] ; 2 uses
  %vec.phi1131 = phi <4 x double> [ %i.arb, %vector.body1129 ], [ zeroinitializer, %vector.main.loop.iter.check1125 ]
  %vec.phi1132 = phi <4 x double> [ %i.arc, %vector.body1129 ], [ zeroinitializer, %vector.main.loop.iter.check1125 ]
  %vec.phi1133 = phi <4 x double> [ %i.ard, %vector.body1129 ], [ zeroinitializer, %vector.main.loop.iter.check1125 ]
  %vec.phi1134 = phi <4 x double> [ %i.are, %vector.body1129 ], [ zeroinitializer, %vector.main.loop.iter.check1125 ]
  %i.aqo = add i64 %indvars.iv1026.in.i.i, %index1130 ; 2 uses
  %i.aqp = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.aqo ; 4 uses
  %i.aqq = getelementptr i8, ptr %i.aqp, i64 32
  %i.aqr = getelementptr i8, ptr %i.aqp, i64 64
  %i.aqs = getelementptr i8, ptr %i.aqp, i64 96
  %wide.load1135 = load <4 x double>, ptr %i.aqp, align 8, !tbaa !117
  %wide.load1136 = load <4 x double>, ptr %i.aqq, align 8, !tbaa !117
  %wide.load1137 = load <4 x double>, ptr %i.aqr, align 8, !tbaa !117
  %wide.load1138 = load <4 x double>, ptr %i.aqs, align 8, !tbaa !117
  %i.aqt = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.aqo ; 4 uses
  %i.aqu = getelementptr i8, ptr %i.aqt, i64 32
  %i.aqv = getelementptr i8, ptr %i.aqt, i64 64
  %i.aqw = getelementptr i8, ptr %i.aqt, i64 96
  %wide.load1139 = load <4 x double>, ptr %i.aqt, align 8, !tbaa !117
  %wide.load1140 = load <4 x double>, ptr %i.aqu, align 8, !tbaa !117
  %wide.load1141 = load <4 x double>, ptr %i.aqv, align 8, !tbaa !117
  %wide.load1142 = load <4 x double>, ptr %i.aqw, align 8, !tbaa !117
  %i.aqx = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1139, %wide.load1135
  %i.aqy = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1140, %wide.load1136
  %i.aqz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1141, %wide.load1137
  %i.ara = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1142, %wide.load1138
  %i.arb = fadd reassoc nsz arcp contract afn <4 x double> %i.aqx, %vec.phi1131 ; 2 uses
  %i.arc = fadd reassoc nsz arcp contract afn <4 x double> %i.aqy, %vec.phi1132 ; 2 uses
  %i.ard = fadd reassoc nsz arcp contract afn <4 x double> %i.aqz, %vec.phi1133 ; 2 uses
  %i.are = fadd reassoc nsz arcp contract afn <4 x double> %i.ara, %vec.phi1134 ; 2 uses
  %index.next1143 = add nuw i64 %index1130, 16    ; 2 uses
  %i.arf = icmp eq i64 %index.next1143, %n.vec1128
  br i1 %i.arf, label %middle.block1144, label %vector.body1129, !llvm.loop !80

middle.block1144:                                 ; preds = %vector.body1129
  %bin.rdx1145 = fadd reassoc nsz arcp contract afn <4 x double> %i.arc, %i.arb
  %bin.rdx1146 = fadd reassoc nsz arcp contract afn <4 x double> %i.ard, %bin.rdx1145
  %bin.rdx1147 = fadd reassoc nsz arcp contract afn <4 x double> %i.are, %bin.rdx1146
  %i.arg = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1147) ; 3 uses
  br i1 %cmp.n1148, label %iter.check1103, label %vec.epilog.iter.check1154

vec.epilog.iter.check1154:                        ; preds = %middle.block1144
  br i1 %min.epilog.iters.check1155, label %.lr.ph846.i.i.preheader, label %vec.epilog.ph1156, !prof !121

vec.epilog.ph1156:                                ; preds = %vector.main.loop.iter.check1125, %vec.epilog.iter.check1154
  %vec.epilog.resume.val1149 = phi i64 [ %n.vec1128, %vec.epilog.iter.check1154 ], [ 0, %vector.main.loop.iter.check1125 ]
  %bc.merge.rdx1151 = phi double [ %i.arg, %vec.epilog.iter.check1154 ], [ 0.000000e+00, %vector.main.loop.iter.check1125 ]
end_hunk_2
begin_hunk_3_@thinplate_match:bb.a
  %invariant.gep1215.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1026.i.i ; 11 uses
  %min.iters.check1031 = icmp ugt i64 %i.aoz, 3
  %or.cond1923 = and i1 %min.iters.check1031, %ident.check1029.not
  br i1 %or.cond1923, label %vector.main.loop.iter.check1032, label %.lr.ph858.i.i.preheader

vector.main.loop.iter.check1032:                  ; preds = %iter.check1049
  %min.iters.check1033 = icmp ult i64 %i.aoz, 16
  br i1 %min.iters.check1033, label %vec.epilog.ph1053, label %vector.ph1034

vector.ph1034:                                    ; preds = %vector.main.loop.iter.check1032
  %i.awi = and i64 %i.aoz, 12
  %n.vec1035 = and i64 %i.aoz, -16                ; 4 uses
  %i.awj = add i64 %indvars.iv1026.i.i, %n.vec1035
  %broadcast.splatinsert1036 = insertelement <4 x double> poison, double %i.aqd, i64 0
  %broadcast.splat1037 = shufflevector <4 x double> %broadcast.splatinsert1036, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.awk = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %indvars.iv1026.i.i
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %vector.ph1034
  %index1039 = phi i64 [ 0, %vector.ph1034 ], [ %index.next1044, %vector.body1038 ] ; 2 uses
  %i.awl = getelementptr [8 x i8], ptr %i.awk, i64 %index1039 ; 5 uses
  %i.awm = getelementptr i8, ptr %i.awl, i64 32   ; 2 uses
  %i.awn = getelementptr i8, ptr %i.awl, i64 64   ; 2 uses
  %i.awo = getelementptr i8, ptr %i.awl, i64 96   ; 2 uses
  %wide.load1040 = load <4 x double>, ptr %i.awl, align 8, !tbaa !117
  %wide.load1041 = load <4 x double>, ptr %i.awm, align 8, !tbaa !117
  %wide.load1042 = load <4 x double>, ptr %i.awn, align 8, !tbaa !117
  %wide.load1043 = load <4 x double>, ptr %i.awo, align 8, !tbaa !117
  %i.awp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1040, %broadcast.splat1037
  %i.awq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1041, %broadcast.splat1037
  %i.awr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1042, %broadcast.splat1037
  %i.aws = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1043, %broadcast.splat1037
  store <4 x double> %i.awp, ptr %i.awl, align 8, !tbaa !117
  store <4 x double> %i.awq, ptr %i.awm, align 8, !tbaa !117
  store <4 x double> %i.awr, ptr %i.awn, align 8, !tbaa !117
  store <4 x double> %i.aws, ptr %i.awo, align 8, !tbaa !117
  %index.next1044 = add nuw i64 %index1039, 16    ; 2 uses
  %i.awt = icmp eq i64 %index.next1044, %n.vec1035
  br i1 %i.awt, label %middle.block1045, label %vector.body1038, !llvm.loop !91

middle.block1045:                                 ; preds = %vector.body1038
  %cmp.n1046 = icmp eq i64 %i.aoz, %n.vec1035
  br i1 %cmp.n1046, label %.loopexit735.i.i, label %vec.epilog.iter.check1051

vec.epilog.iter.check1051:                        ; preds = %middle.block1045
  %min.epilog.iters.check1052 = icmp eq i64 %i.awi, 0
  br i1 %min.epilog.iters.check1052, label %.lr.ph858.i.i.preheader, label %vec.epilog.ph1053, !prof !121

vec.epilog.ph1053:                                ; preds = %vector.main.loop.iter.check1032, %vec.epilog.iter.check1051
  %vec.epilog.resume.val1047 = phi i64 [ %n.vec1035, %vec.epilog.iter.check1051 ], [ 0, %vector.main.loop.iter.check1032 ]
  %n.vec1054 = and i64 %i.aoz, -4                 ; 3 uses
  %i.awu = add i64 %indvars.iv1026.i.i, %n.vec1054
  %broadcast.splatinsert1055 = insertelement <4 x double> poison, double %i.aqd, i64 0
  %broadcast.splat1056 = shufflevector <4 x double> %broadcast.splatinsert1055, <4 x double> poison, <4 x i32> zeroinitializer
  %i.awv = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %indvars.iv1026.i.i
  br label %vec.epilog.vector.body1057

vec.epilog.vector.body1057:                       ; preds = %vec.epilog.vector.body1057, %vec.epilog.ph1053
  %index1058 = phi i64 [ %vec.epilog.resume.val1047, %vec.epilog.ph1053 ], [ %index.next1060, %vec.epilog.vector.body1057 ] ; 2 uses
  %i.aww = getelementptr [8 x i8], ptr %i.awv, i64 %index1058 ; 2 uses
  %wide.load1059 = load <4 x double>, ptr %i.aww, align 8, !tbaa !117
  %i.awx = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1059, %broadcast.splat1056
  store <4 x double> %i.awx, ptr %i.aww, align 8, !tbaa !117
  %index.next1060 = add nuw i64 %index1058, 4     ; 2 uses
  %i.awy = icmp eq i64 %index.next1060, %n.vec1054
  br i1 %i.awy, label %vec.epilog.middle.block1061, label %vec.epilog.vector.body1057, !llvm.loop !92

vec.epilog.middle.block1061:                      ; preds = %vec.epilog.vector.body1057
  %cmp.n1062 = icmp eq i64 %i.aoz, %n.vec1054
  br i1 %cmp.n1062, label %.loopexit735.i.i, label %.lr.ph858.i.i.preheader

.lr.ph858.i.i.preheader:                          ; preds = %iter.check1049, %vec.epilog.iter.check1051, %vec.epilog.middle.block1061
  %indvars.iv1047.i.i.ph = phi i64 [ %indvars.iv1026.i.i, %iter.check1049 ], [ %i.awj, %vec.epilog.iter.check1051 ], [ %i.awu, %vec.epilog.middle.block1061 ] ; 4 uses
  %i.awz = sub i64 %i.b, %indvars.iv1047.i.i.ph
  %xtraiter2089 = and i64 %i.awz, 7               ; 2 uses
  %lcmp.mod2090.not = icmp eq i64 %xtraiter2089, 0
  br i1 %lcmp.mod2090.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol

.lr.ph858.i.i.prol:                               ; preds = %.lr.ph858.i.i.preheader, %.lr.ph858.i.i.prol
  %indvars.iv1047.i.i.prol = phi i64 [ %indvars.iv.next1048.i.i.prol, %.lr.ph858.i.i.prol ], [ %indvars.iv1047.i.i.ph, %.lr.ph858.i.i.preheader ] ; 2 uses
  %prol.iter2091 = phi i64 [ %prol.iter2091.next, %.lr.ph858.i.i.prol ], [ 0, %.lr.ph858.i.i.preheader ]
  %i.axa = mul nsw i64 %indvars.iv1047.i.i.prol, %i.ih
  %gep1216.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axa ; 2 uses
  %i.axb = load double, ptr %gep1216.i.i.prol, align 8, !tbaa !117
  %i.axc = fmul reassoc nsz arcp contract afn double %i.axb, %i.aqd
  store double %i.axc, ptr %gep1216.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.prol = add nuw nsw i64 %indvars.iv1047.i.i.prol, 1 ; 2 uses
  %prol.iter2091.next = add i64 %prol.iter2091, 1 ; 2 uses
  %prol.iter2091.cmp.not = icmp eq i64 %prol.iter2091.next, %xtraiter2089
  br i1 %prol.iter2091.cmp.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol, !llvm.loop !93

.lr.ph858.i.i.prol.loopexit:                      ; preds = %.lr.ph858.i.i.prol, %.lr.ph858.i.i.preheader
  %indvars.iv1047.i.i.unr = phi i64 [ %indvars.iv1047.i.i.ph, %.lr.ph858.i.i.preheader ], [ %indvars.iv.next1048.i.i.prol, %.lr.ph858.i.i.prol ]
  %i.axd = sub i64 %indvars.iv1047.i.i.ph, %i.b
  %i.axe = icmp ugt i64 %i.axd, -8
  br i1 %i.axe, label %.loopexit735.i.i, label %.lr.ph858.i.i

.lr.ph858.i.i:                                    ; preds = %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i
  %indvars.iv1047.i.i = phi i64 [ %indvars.iv.next1048.i.i.7, %.lr.ph858.i.i ], [ %indvars.iv1047.i.i.unr, %.lr.ph858.i.i.prol.loopexit ] ; 9 uses
  %i.axf = mul nsw i64 %indvars.iv1047.i.i, %i.ih
  %gep1216.i.i = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axf ; 2 uses
  %i.axg = load double, ptr %gep1216.i.i, align 8, !tbaa !117
  %i.axh = fmul reassoc nsz arcp contract afn double %i.axg, %i.aqd
  store double %i.axh, ptr %gep1216.i.i, align 8, !tbaa !117
  %indvars.iv.next1048.i.i = add nuw nsw i64 %indvars.iv1047.i.i, 1
  %i.axi = mul nsw i64 %indvars.iv.next1048.i.i, %i.ih
  %gep1216.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axi ; 2 uses
  %i.axj = load double, ptr %gep1216.i.i.1, align 8, !tbaa !117
  %i.axk = fmul reassoc nsz arcp contract afn double %i.axj, %i.aqd
  store double %i.axk, ptr %gep1216.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.1 = add nuw nsw i64 %indvars.iv1047.i.i, 2
  %i.axl = mul nsw i64 %indvars.iv.next1048.i.i.1, %i.ih
  %gep1216.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axl ; 2 uses
  %i.axm = load double, ptr %gep1216.i.i.2, align 8, !tbaa !117
  %i.axn = fmul reassoc nsz arcp contract afn double %i.axm, %i.aqd
  store double %i.axn, ptr %gep1216.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.2 = add nuw nsw i64 %indvars.iv1047.i.i, 3
  %i.axo = mul nsw i64 %indvars.iv.next1048.i.i.2, %i.ih
  %gep1216.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axo ; 2 uses
  %i.axp = load double, ptr %gep1216.i.i.3, align 8, !tbaa !117
  %i.axq = fmul reassoc nsz arcp contract afn double %i.axp, %i.aqd
  store double %i.axq, ptr %gep1216.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.3 = add nuw nsw i64 %indvars.iv1047.i.i, 4
  %i.axr = mul nsw i64 %indvars.iv.next1048.i.i.3, %i.ih
  %gep1216.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axr ; 2 uses
  %i.axs = load double, ptr %gep1216.i.i.4, align 8, !tbaa !117
  %i.axt = fmul reassoc nsz arcp contract afn double %i.axs, %i.aqd
  store double %i.axt, ptr %gep1216.i.i.4, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.4 = add nuw nsw i64 %indvars.iv1047.i.i, 5
  %i.axu = mul nsw i64 %indvars.iv.next1048.i.i.4, %i.ih
  %gep1216.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axu ; 2 uses
  %i.axv = load double, ptr %gep1216.i.i.5, align 8, !tbaa !117
  %i.axw = fmul reassoc nsz arcp contract afn double %i.axv, %i.aqd
  store double %i.axw, ptr %gep1216.i.i.5, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.5 = add nuw nsw i64 %indvars.iv1047.i.i, 6
  %i.axx = mul nsw i64 %indvars.iv.next1048.i.i.5, %i.ih
  %gep1216.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axx ; 2 uses
  %i.axy = load double, ptr %gep1216.i.i.6, align 8, !tbaa !117
  %i.axz = fmul reassoc nsz arcp contract afn double %i.axy, %i.aqd
  store double %i.axz, ptr %gep1216.i.i.6, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.6 = add nuw nsw i64 %indvars.iv1047.i.i, 7
  %i.aya = mul nsw i64 %indvars.iv.next1048.i.i.6, %i.ih
  %gep1216.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.aya ; 2 uses
  %i.ayb = load double, ptr %gep1216.i.i.7, align 8, !tbaa !117
  %i.ayc = fmul reassoc nsz arcp contract afn double %i.ayb, %i.aqd
  store double %i.ayc, ptr %gep1216.i.i.7, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.7 = add nuw nsw i64 %indvars.iv1047.i.i, 8 ; 2 uses
  %exitcond1051.not.i.i.7 = icmp eq i64 %indvars.iv.next1048.i.i.7, %i.b
  br i1 %exitcond1051.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph858.i.i, !llvm.loop !94

.lr.ph843.i.i:                                    ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i
  %indvars.iv1028.i.i = phi i64 [ %indvars.iv.next1029.i.i.7, %.lr.ph843.i.i ], [ %indvars.iv1028.i.i.unr, %.lr.ph843.i.i.prol.loopexit ] ; 9 uses
  %i.ayd = mul nsw i64 %indvars.iv1028.i.i, %i.ih
  %gep1206.i.i = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayd
  store double 0.000000e+00, ptr %gep1206.i.i, align 8, !tbaa !117
  %indvars.iv.next1029.i.i = add nuw nsw i64 %indvars.iv1028.i.i, 1
  %i.aye = mul nsw i64 %indvars.iv.next1029.i.i, %i.ih
  %gep1206.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.aye
  store double 0.000000e+00, ptr %gep1206.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.1 = add nuw nsw i64 %indvars.iv1028.i.i, 2
  %i.ayf = mul nsw i64 %indvars.iv.next1029.i.i.1, %i.ih
  %gep1206.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayf
  store double 0.000000e+00, ptr %gep1206.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.2 = add nuw nsw i64 %indvars.iv1028.i.i, 3
  %i.ayg = mul nsw i64 %indvars.iv.next1029.i.i.2, %i.ih
  %gep1206.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayg
  store double 0.000000e+00, ptr %gep1206.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.3 = add nuw nsw i64 %indvars.iv1028.i.i, 4
  %i.ayh = mul nsw i64 %indvars.iv.next1029.i.i.3, %i.ih
  %gep1206.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayh
  store double 0.000000e+00, ptr %gep1206.i.i.4, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.4 = add nuw nsw i64 %indvars.iv1028.i.i, 5
  %i.ayi = mul nsw i64 %indvars.iv.next1029.i.i.4, %i.ih
  %gep1206.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayi
  store double 0.000000e+00, ptr %gep1206.i.i.5, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.5 = add nuw nsw i64 %indvars.iv1028.i.i, 6
  %i.ayj = mul nsw i64 %indvars.iv.next1029.i.i.5, %i.ih
  %gep1206.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayj
  store double 0.000000e+00, ptr %gep1206.i.i.6, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.6 = add nuw nsw i64 %indvars.iv1028.i.i, 7
  %i.ayk = mul nsw i64 %indvars.iv.next1029.i.i.6, %i.ih
  %gep1206.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayk
  store double 0.000000e+00, ptr %gep1206.i.i.7, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.7 = add nuw nsw i64 %indvars.iv1028.i.i, 8 ; 2 uses
  %exitcond1032.not.i.i.7 = icmp eq i64 %indvars.iv.next1029.i.i.7, %i.b
  br i1 %exitcond1032.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph843.i.i, !llvm.loop !95

.loopexit735.i.i:                                 ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i, %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i, %middle.block1179, %vec.epilog.middle.block1192, %middle.block1045, %vec.epilog.middle.block1061
  %i.ayl = trunc nuw nsw i64 %indvars.iv1026.i.i to i32
  %i.aym = mul i32 %.0661700.i.i, %i.ayl
  %i.ayn = sext i32 %i.aym to i64
  %i.ayo = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ayn ; 2 uses
  %i.ayp = load double, ptr %i.ayo, align 8, !tbaa !117
  %i.ayq = fadd reassoc nsz arcp contract afn double %i.ayp, 1.000000e+00
  store double %i.ayq, ptr %i.ayo, align 8, !tbaa !117
  %indvars.iv.next1053.i.i = add nuw nsw i64 %indvars.iv1052.i.i, 1 ; 2 uses
  %exitcond1058.not.i.i = icmp eq i64 %indvars.iv.next1053.i.i, %wide.trip.count990.i.i
  br i1 %exitcond1058.not.i.i, label %.preheader731.i.i, label %.preheader742.i.i

.preheader731.i.i:                                ; preds = %.loopexit735.i.i, %.thread721.i.i
  %indvars.iv1095.i.i = phi i64 [ %indvars.iv.next1096.i.i, %.thread721.i.i ], [ %i.nx, %.loopexit735.i.i ] ; 12 uses
  %indvars.iv1071.i.i = phi i32 [ %indvars.iv.next1072.i.i, %.thread721.i.i ], [ %i.nq, %.loopexit735.i.i ] ; 2 uses
  %indvars118.i = trunc i64 %indvars.iv1095.i.i to i32 ; 5 uses
  %i.ayr = tail call i32 @llvm.smax.i32(i32 %indvars118.i, i32 1)
  %i.ays = add nsw i32 %i.ayr, -1                 ; 3 uses
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv1095.i.i ; 2 uses
  %i.ayu = icmp eq i64 %indvars.iv1095.i.i, 0     ; 2 uses
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1095.i.i ; 3 uses
  %indvars.iv.next1096.i.i = add nsw i64 %indvars.iv1095.i.i, -1 ; 3 uses
  %i.ayw = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %indvars.iv.next1096.i.i
  %i.ayx = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %indvars.iv.next1096.i.i
  %.pre.i.i = load double, ptr %i.ayt, align 8, !tbaa !117
  %i.ayy = zext nneg i32 %i.ays to i64
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ayy
  br label %.preheader730.i.i

.preheader730.i.i:                                ; preds = %._crit_edge897.i.i, %.preheader731.i.i
  %i.aza = phi double [ %.pre.i.i, %.preheader731.i.i ], [ %.0679.lcssa.i.i, %._crit_edge897.i.i ] ; 6 uses
  %.0631900.i.i = phi i32 [ 0, %.preheader731.i.i ], [ %i.bkp, %._crit_edge897.i.i ] ; 2 uses
  %i.azb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aza)
  %i.azc = fadd reassoc nsz arcp contract afn double %i.azb, %.0672..i.i
  %i.azd = fcmp reassoc nsz arcp contract afn oeq double %i.azc, %.0672..i.i ; 2 uses
  %or.cond706863.i.i = or i1 %i.ayu, %i.azd
  br i1 %or.cond706863.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.preheader.i

.lr.ph865.i.preheader.i:                          ; preds = %.preheader730.i.i
  %i.aze = load double, ptr %i.ayz, align 8, !tbaa !117
  %i.azf = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aze)
  %i.azg = fadd reassoc nsz arcp contract afn double %i.azf, %.0672..i.i
  %i.azh = fcmp reassoc nsz arcp contract afn oeq double %i.azg, %.0672..i.i
  br i1 %i.azh, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph865.i.i:                                    ; preds = %.lr.ph.i
  %i.azi = zext nneg i32 %i.azq to i64
  %i.azj = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.azi
  %i.azk = load double, ptr %i.azj, align 8, !tbaa !117
  %i.azl = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.azk)
  %i.azm = fadd reassoc nsz arcp contract afn double %i.azl, %.0672..i.i
  %i.azn = fcmp reassoc nsz arcp contract afn oeq double %i.azm, %.0672..i.i
  br i1 %i.azn, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph865.i.preheader.i, %.lr.ph865.i.i
  %indvars.iv1061.i75.i = phi i32 [ %i.azo, %.lr.ph865.i.i ], [ %indvars118.i, %.lr.ph865.i.preheader.i ]
  %i.azo = add i32 %indvars.iv1061.i75.i, -1      ; 6 uses
  %i.azp = tail call i32 @llvm.smax.i32(i32 %i.azo, i32 1)
  %i.azq = add nsw i32 %i.azp, -1                 ; 3 uses
  %i.azr = zext nneg i32 %i.azo to i64            ; 3 uses
  %i.azs = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.azr
  %i.azt = load double, ptr %i.azs, align 8, !tbaa !117
  %i.azu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.azt)
  %i.azv = fadd reassoc nsz arcp contract afn double %i.azu, %.0672..i.i
  %i.azw = fcmp reassoc nsz arcp contract afn oeq double %i.azv, %.0672..i.i ; 2 uses
  %i.azx = icmp eq i32 %i.azo, 0
  %or.cond706.i.i = or i1 %i.azx, %i.azw
  br i1 %or.cond706.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.i

._crit_edge866.i.i:                               ; preds = %.lr.ph.i, %.lr.ph865.i.i, %.lr.ph865.i.preheader.i, %.preheader730.i.i
  %.lcssa862.i.i = phi i64 [ %indvars.iv1095.i.i, %.preheader730.i.i ], [ %indvars.iv1095.i.i, %.lr.ph865.i.preheader.i ], [ %i.azr, %.lr.ph865.i.i ], [ %i.azr, %.lr.ph.i ] ; 2 uses
  %.2664.lcssa.i.i = phi i32 [ %indvars118.i, %.preheader730.i.i ], [ %indvars118.i, %.lr.ph865.i.preheader.i ], [ %i.azo, %.lr.ph865.i.i ], [ %i.azo, %.lr.ph.i ] ; 3 uses
  %.lcssa765.i.i = phi i32 [ %i.ays, %.preheader730.i.i ], [ %i.ays, %.lr.ph865.i.preheader.i ], [ %i.azq, %.lr.ph865.i.i ], [ %i.azq, %.lr.ph.i ]
  %.lcssa.i.i = phi i1 [ %i.azd, %.preheader730.i.i ], [ false, %.lr.ph865.i.preheader.i ], [ %i.azw, %.lr.ph.i ], [ false, %.lr.ph865.i.i ]
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %.lcssa862.i.i
  %i.azz = sext i32 %.2664.lcssa.i.i to i64       ; 6 uses
  %.not880.i.i = icmp slt i64 %indvars.iv1095.i.i, %i.azz
  %or.cond907.i.i = or i1 %.lcssa.i.i, %.not880.i.i
  br i1 %or.cond907.i.i, label %.loopexit729.i.i, label %.lr.ph884.preheader.i.i

.lr.ph884.preheader.i.i:                          ; preds = %._crit_edge866.i.i
  %i.baa = zext i32 %.lcssa765.i.i to i64         ; 2 uses
  %invariant.gep1217.i.i = getelementptr [8 x i8], ptr %i.in, i64 %i.baa ; 5 uses
  %i.bab = shl nuw nsw i64 %i.baa, 3
  %scevgep1007 = getelementptr i8, ptr %scevgep1006, i64 %i.bab
  %i.bac = shl nsw i64 %i.azz, 3
  %scevgep1008 = getelementptr i8, ptr %i.in, i64 %i.bac
  %i.bad = sub i32 %indvars118.i, %.2664.lcssa.i.i
  %i.bae = zext i32 %i.bad to i64
  %i.baf = add nsw i64 %i.azz, %i.bae
  %i.bag = shl nsw i64 %i.baf, 3
  %scevgep1010 = getelementptr i8, ptr %scevgep1009.a, i64 %i.bag
  %bound0 = icmp ult ptr %invariant.gep1217.i.i, %scevgep1010
  %bound1 = icmp ult ptr %scevgep1008, %scevgep1007
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph884.i.i

.lr.ph884.i.i:                                    ; preds = %.loopexit728.i.i, %.lr.ph884.preheader.i.i
  %indvars.iv1068.i.i = phi i64 [ %i.azz, %.lr.ph884.preheader.i.i ], [ %indvars.iv.next1069.i.i, %.loopexit728.i.i ] ; 4 uses
  %.6881.i.i = phi double [ 1.000000e+00, %.lr.ph884.preheader.i.i ], [ %.7.i.i, %.loopexit728.i.i ] ; 2 uses
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv1068.i.i
  %i.bai = load double, ptr %i.bah, align 8, !tbaa !117
  %i.baj = fmul reassoc nsz arcp contract afn double %i.bai, %.6881.i.i ; 2 uses
  %i.bak = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.baj) ; 5 uses
  %i.bal = fadd reassoc nsz arcp contract afn double %i.bak, %.0672..i.i
  %i.bam = fcmp reassoc nsz arcp contract afn une double %i.bal, %.0672..i.i
  br i1 %i.bam, label %bb.t, label %.loopexit728.i.i

bb.t:                                             ; preds = %.lr.ph884.i.i
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1068.i.i ; 2 uses
  %i.bao = load double, ptr %i.ban, align 8, !tbaa !117 ; 3 uses
  %i.bap = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bao) ; 4 uses
  %i.baq = fcmp reassoc nsz arcp contract afn ogt double %i.bak, %i.bap
  br i1 %i.baq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bar = fdiv reassoc nsz arcp contract afn double %i.bap, %i.bak ; 2 uses
  %i.bas = fmul reassoc nsz arcp contract afn double %i.bar, %i.bar
  %i.bat = fadd reassoc nsz arcp contract afn double %i.bas, 1.000000e+00
  %i.bau = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bat)
  %i.bav = fmul reassoc nsz arcp contract afn double %i.bau, %i.bak
  br label %PYTHAG.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.baw = fcmp reassoc nsz arcp contract afn ueq double %i.bao, 0.000000e+00
  br i1 %i.baw, label %PYTHAG.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bax = fdiv reassoc nsz arcp contract afn double %i.bak, %i.bap ; 2 uses
  %i.bay = fmul reassoc nsz arcp contract afn double %i.bax, %i.bax
  %i.baz = fadd reassoc nsz arcp contract afn double %i.bay, 1.000000e+00
  %i.bba = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.baz)
  %i.bbb = fmul reassoc nsz arcp contract afn double %i.bba, %i.bap
  br label %PYTHAG.exit.i.i

PYTHAG.exit.i.i:                                  ; preds = %bb.w, %bb.v, %bb.u
  %.0.i.i.i = phi nsz double [ %i.bav, %bb.u ], [ %i.bbb, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  store double %.0.i.i.i, ptr %i.ban, align 8, !tbaa !117
  %i.bbc = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i.i.i ; 2 uses
  %i.bbd = fmul reassoc nsz arcp contract afn double %i.bbc, %i.bao ; 7 uses
  %i.bbe = fneg reassoc nsz arcp contract afn double %i.baj
  %i.bbf = fmul reassoc nsz arcp contract afn double %i.bbc, %i.bbe ; 10 uses
  %invariant.gep1219.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1068.i.i ; 4 uses
  %or.cond1924.not = xor i1 %or.cond1924.a, true
  %brmerge2231 = select i1 %or.cond1924.not, i1 true, i1 %found.conflict
  br i1 %brmerge2231, label %.lr.ph879.i.i.preheader, label %vector.ph1012

vector.ph1012:                                    ; preds = %PYTHAG.exit.i.i
  %broadcast.splatinsert1014 = insertelement <4 x double> poison, double %i.bbd, i64 0
  %broadcast.splat1015 = shufflevector <4 x double> %broadcast.splatinsert1014, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1016 = insertelement <4 x double> poison, double %i.bbf, i64 0
  %broadcast.splat1017 = shufflevector <4 x double> %broadcast.splatinsert1016, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %vector.ph1012
  %index1019 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1024, %vector.body1018 ] ; 3 uses
  %i.bbg = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %index1019 ; 3 uses
  %i.bbh = getelementptr i8, ptr %i.bbg, i64 32   ; 2 uses
  %wide.load1020 = load <4 x double>, ptr %i.bbg, align 8, !tbaa !117, !alias.scope !130, !noalias !131 ; 2 uses
  %wide.load1021 = load <4 x double>, ptr %i.bbh, align 8, !tbaa !117, !alias.scope !130, !noalias !131 ; 2 uses
  %i.bbi = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %index1019 ; 3 uses
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 32   ; 2 uses
  %wide.load1022 = load <4 x double>, ptr %i.bbi, align 8, !tbaa !117, !alias.scope !131 ; 2 uses
  %wide.load1023 = load <4 x double>, ptr %i.bbj, align 8, !tbaa !117, !alias.scope !131 ; 2 uses
  %i.bbk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1020, %broadcast.splat1015
  %i.bbl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1021, %broadcast.splat1015
  %i.bbm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1022, %broadcast.splat1017
  %i.bbn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1023, %broadcast.splat1017
  %i.bbo = fadd reassoc nsz arcp contract afn <4 x double> %i.bbm, %i.bbk
  %i.bbp = fadd reassoc nsz arcp contract afn <4 x double> %i.bbn, %i.bbl
  store <4 x double> %i.bbo, ptr %i.bbg, align 8, !tbaa !117, !alias.scope !130, !noalias !131
  store <4 x double> %i.bbp, ptr %i.bbh, align 8, !tbaa !117, !alias.scope !130, !noalias !131
  %i.bbq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1022, %broadcast.splat1015
  %i.bbr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1023, %broadcast.splat1015
  %i.bbs = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1020, %broadcast.splat1017
  %i.bbt = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1021, %broadcast.splat1017
  %i.bbu = fsub reassoc nsz arcp contract afn <4 x double> %i.bbq, %i.bbs
  %i.bbv = fsub reassoc nsz arcp contract afn <4 x double> %i.bbr, %i.bbt
  store <4 x double> %i.bbu, ptr %i.bbi, align 8, !tbaa !117, !alias.scope !131
  store <4 x double> %i.bbv, ptr %i.bbj, align 8, !tbaa !117, !alias.scope !131
  %index.next1024 = add nuw i64 %index1019, 8     ; 2 uses
  %i.bbw = icmp eq i64 %index.next1024, %n.vec1013
  br i1 %i.bbw, label %middle.block1025, label %vector.body1018, !llvm.loop !99

middle.block1025:                                 ; preds = %vector.body1018
  br i1 %cmp.n1026, label %.loopexit728.i.i, label %.lr.ph879.i.i.preheader

.lr.ph879.i.i.preheader:                          ; preds = %PYTHAG.exit.i.i, %middle.block1025
  %indvars.iv1063.i.i.ph = phi i64 [ %n.vec1013, %middle.block1025 ], [ 0, %PYTHAG.exit.i.i ] ; 4 uses
  br i1 %lcmp.mod2093.not, label %.lr.ph879.i.i.prol.loopexit, label %.lr.ph879.i.i.prol

.lr.ph879.i.i.prol:                               ; preds = %.lr.ph879.i.i.preheader
  %i.bbx = mul nsw i64 %indvars.iv1063.i.i.ph, %i.ih ; 2 uses
  %gep1218.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %i.bbx ; 2 uses
  %i.bby = load double, ptr %gep1218.i.i.prol, align 8, !tbaa !117 ; 2 uses
  %gep1220.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %i.bbx ; 2 uses
  %i.bbz = load double, ptr %gep1220.i.i.prol, align 8, !tbaa !117 ; 2 uses
  %i.bca = fmul reassoc nsz arcp contract afn double %i.bby, %i.bbd
  %i.bcb = fmul reassoc nsz arcp contract afn double %i.bbz, %i.bbf
  %i.bcc = fadd reassoc nsz arcp contract afn double %i.bcb, %i.bca
  store double %i.bcc, ptr %gep1218.i.i.prol, align 8, !tbaa !117
  %i.bcd = fmul reassoc nsz arcp contract afn double %i.bbz, %i.bbd
  %i.bce = fmul reassoc nsz arcp contract afn double %i.bby, %i.bbf
  %i.bcf = fsub reassoc nsz arcp contract afn double %i.bcd, %i.bce
  store double %i.bcf, ptr %gep1220.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1064.i.i.prol = or disjoint i64 %indvars.iv1063.i.i.ph, 1
  br label %.lr.ph879.i.i.prol.loopexit

.lr.ph879.i.i.prol.loopexit:                      ; preds = %.lr.ph879.i.i.prol, %.lr.ph879.i.i.preheader
  %indvars.iv1063.i.i.unr = phi i64 [ %indvars.iv1063.i.i.ph, %.lr.ph879.i.i.preheader ], [ %indvars.iv.next1064.i.i.prol, %.lr.ph879.i.i.prol ]
  %i.bcg = icmp eq i64 %indvars.iv1063.i.i.ph, %i.jf
  br i1 %i.bcg, label %.loopexit728.i.i, label %.lr.ph879.i.i

.lr.ph879.i.i:                                    ; preds = %.lr.ph879.i.i.prol.loopexit, %.lr.ph879.i.i
  %indvars.iv1063.i.i = phi i64 [ %indvars.iv.next1064.i.i.1, %.lr.ph879.i.i ], [ %indvars.iv1063.i.i.unr, %.lr.ph879.i.i.prol.loopexit ] ; 3 uses
  %i.bch = mul nsw i64 %indvars.iv1063.i.i, %i.ih ; 2 uses
  %gep1218.i.i = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %i.bch ; 2 uses
  %i.bci = load double, ptr %gep1218.i.i, align 8, !tbaa !117 ; 2 uses
  %gep1220.i.i = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %i.bch ; 2 uses
  %i.bcj = load double, ptr %gep1220.i.i, align 8, !tbaa !117 ; 2 uses
  %i.bck = fmul reassoc nsz arcp contract afn double %i.bci, %i.bbd
  %i.bcl = fmul reassoc nsz arcp contract afn double %i.bcj, %i.bbf
  %i.bcm = fadd reassoc nsz arcp contract afn double %i.bcl, %i.bck
  store double %i.bcm, ptr %gep1218.i.i, align 8, !tbaa !117
  %i.bcn = fmul reassoc nsz arcp contract afn double %i.bcj, %i.bbd
  %i.bco = fmul reassoc nsz arcp contract afn double %i.bci, %i.bbf
  %i.bcp = fsub reassoc nsz arcp contract afn double %i.bcn, %i.bco
  store double %i.bcp, ptr %gep1220.i.i, align 8, !tbaa !117
  %indvars.iv.next1064.i.i = add nuw nsw i64 %indvars.iv1063.i.i, 1
  %i.bcq = mul nsw i64 %indvars.iv.next1064.i.i, %i.ih ; 2 uses
  %gep1218.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %i.bcq ; 2 uses
  %i.bcr = load double, ptr %gep1218.i.i.1, align 8, !tbaa !117 ; 2 uses
  %gep1220.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %i.bcq ; 2 uses
  %i.bcs = load double, ptr %gep1220.i.i.1, align 8, !tbaa !117 ; 2 uses
  %i.bct = fmul reassoc nsz arcp contract afn double %i.bcr, %i.bbd
  %i.bcu = fmul reassoc nsz arcp contract afn double %i.bcs, %i.bbf
  %i.bcv = fadd reassoc nsz arcp contract afn double %i.bcu, %i.bct
  store double %i.bcv, ptr %gep1218.i.i.1, align 8, !tbaa !117
  %i.bcw = fmul reassoc nsz arcp contract afn double %i.bcs, %i.bbd
  %i.bcx = fmul reassoc nsz arcp contract afn double %i.bcr, %i.bbf
  %i.bcy = fsub reassoc nsz arcp contract afn double %i.bcw, %i.bcx
  store double %i.bcy, ptr %gep1220.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1064.i.i.1 = add nuw nsw i64 %indvars.iv1063.i.i, 2 ; 2 uses
  %exitcond1067.not.i.i.1 = icmp eq i64 %indvars.iv.next1064.i.i.1, %i.gr
  br i1 %exitcond1067.not.i.i.1, label %.loopexit728.i.i, label %.lr.ph879.i.i, !llvm.loop !100

.loopexit728.i.i:                                 ; preds = %.lr.ph879.i.i.prol.loopexit, %.lr.ph879.i.i, %middle.block1025, %.lr.ph884.i.i
  %.7.i.i = phi nsz double [ %.6881.i.i, %.lr.ph884.i.i ], [ %i.bbf, %middle.block1025 ], [ %i.bbf, %.lr.ph879.i.i ], [ %i.bbf, %.lr.ph879.i.i.prol.loopexit ]
  %indvars.iv.next1069.i.i = add nsw i64 %indvars.iv1068.i.i, 1 ; 2 uses
  %lftr.wideiv1073.i.i = trunc i64 %indvars.iv.next1069.i.i to i32
  %exitcond1074.not.i.i = icmp eq i32 %indvars.iv1071.i.i, %lftr.wideiv1073.i.i
  br i1 %exitcond1074.not.i.i, label %.loopexit729.i.i, label %.lr.ph884.i.i

.loopexit729.i.i:                                 ; preds = %.loopexit728.i.i, %._crit_edge866.i.i
  %i.bcz = load double, ptr %i.ayv, align 8, !tbaa !117 ; 6 uses
  %i.bda = zext i32 %.2664.lcssa.i.i to i64
  %i.bdb = icmp eq i64 %indvars.iv1095.i.i, %i.bda
  br i1 %i.bdb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit729.i.i
  %i.bdc = fcmp reassoc nsz arcp contract afn olt double %i.bcz, 0.000000e+00
  br i1 %i.bdc, label %.lr.ph903.preheader.i.i, label %.thread721.i.i

.lr.ph903.preheader.i.i:                          ; preds = %bb.x
  %i.bdd = fneg reassoc nsz arcp contract afn double %i.bcz
  store double %i.bdd, ptr %i.ayv, align 8, !tbaa !117
  %invariant.gep1229.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1095.i.i ; 9 uses
  br i1 %i.od, label %.lr.ph903.i.i.epil.preheader, label %.lr.ph903.i.i

.lr.ph903.i.i:                                    ; preds = %.lr.ph903.preheader.i.i, %.lr.ph903.i.i
  %indvars.iv1090.i.i = phi i64 [ %indvars.iv.next1091.i.i.7, %.lr.ph903.i.i ], [ 0, %.lr.ph903.preheader.i.i ] ; 9 uses
  %niter2122 = phi i64 [ %niter2122.next.7, %.lr.ph903.i.i ], [ 0, %.lr.ph903.preheader.i.i ]
  %i.bde = mul nuw nsw i64 %indvars.iv1090.i.i, %i.nr
  %gep1230.i.i = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bde ; 2 uses
  %i.bdf = load double, ptr %gep1230.i.i, align 8, !tbaa !117
  %i.bdg = fneg reassoc nsz arcp contract afn double %i.bdf
  store double %i.bdg, ptr %gep1230.i.i, align 8, !tbaa !117
  %indvars.iv.next1091.i.i = or disjoint i64 %indvars.iv1090.i.i, 1
  %i.bdh = mul nuw nsw i64 %indvars.iv.next1091.i.i, %i.nr
  %gep1230.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bdh ; 2 uses
  %i.bdi = load double, ptr %gep1230.i.i.1, align 8, !tbaa !117
  %i.bdj = fneg reassoc nsz arcp contract afn double %i.bdi
  store double %i.bdj, ptr %gep1230.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.1 = or disjoint i64 %indvars.iv1090.i.i, 2
  %i.bdk = mul nuw nsw i64 %indvars.iv.next1091.i.i.1, %i.nr
  %gep1230.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bdk ; 2 uses
  %i.bdl = load double, ptr %gep1230.i.i.2, align 8, !tbaa !117
  %i.bdm = fneg reassoc nsz arcp contract afn double %i.bdl
end_hunk_3
begin_hunk_4_@thinplate_match:bb.a
  %i.bhj = fmul reassoc nsz arcp contract afn double %i.bhh, %i.bhe
  %i.bhk = fadd reassoc nsz arcp contract afn double %i.bhj, %i.bhi
  store double %i.bhk, ptr %gep1222.i.i.epil, align 8, !tbaa !117
  %i.bhl = fmul reassoc nsz arcp contract afn double %i.bhh, %i.bhd
  %i.bhm = fmul reassoc nsz arcp contract afn double %i.bhg, %i.bhe
  %i.bhn = fsub reassoc nsz arcp contract afn double %i.bhl, %i.bhm
  store double %i.bhn, ptr %gep1224.i.i.epil, align 8, !tbaa !117
  br label %._crit_edge887.i.i

._crit_edge887.i.i:                               ; preds = %._crit_edge887.i.i.unr-lcssa, %.lr.ph886.i.i.epil.preheader
  %i.bho = fmul reassoc nsz arcp contract afn double %i.bhd, %.0673894.i.i
  %i.bhp = fmul reassoc nsz arcp contract afn double %i.bhe, %i.bgn
  %i.bhq = fadd reassoc nsz arcp contract afn double %i.bho, %i.bhp ; 2 uses
  %i.bhr = fmul reassoc nsz arcp contract afn double %i.bhd, %i.bgn
  %i.bhs = fmul reassoc nsz arcp contract afn double %i.bhe, %.0673894.i.i
  %i.bht = fsub reassoc nsz arcp contract afn double %i.bhr, %i.bhs ; 2 uses
  %i.bhu = fmul reassoc nsz arcp contract afn double %i.bhe, %i.bgl ; 3 uses
  %i.bhv = fmul reassoc nsz arcp contract afn double %i.bhd, %i.bgl ; 2 uses
  %i.bhw = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bhq) ; 4 uses
  %i.bhx = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bhu) ; 4 uses
  %i.bhy = fcmp reassoc nsz arcp contract afn ogt double %i.bhw, %i.bhx
  br i1 %i.bhy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge887.i.i
  %i.bhz = fdiv reassoc nsz arcp contract afn double %i.bhx, %i.bhw ; 2 uses
  %i.bia = fmul reassoc nsz arcp contract afn double %i.bhz, %i.bhz
  %i.bib = fadd reassoc nsz arcp contract afn double %i.bia, 1.000000e+00
  %i.bic = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bib)
  %i.bid = fmul reassoc nsz arcp contract afn double %i.bic, %i.bhw
  br label %.lr.ph889.i.i.lver.check

bb.ag:                                            ; preds = %._crit_edge887.i.i
  %i.bie = fcmp reassoc nsz arcp contract afn ueq double %i.bhu, 0.000000e+00
  br i1 %i.bie, label %.lr.ph889.i.i.lver.check, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bif = fdiv reassoc nsz arcp contract afn double %i.bhw, %i.bhx ; 2 uses
  %i.big = fmul reassoc nsz arcp contract afn double %i.bif, %i.bif
  %i.bih = fadd reassoc nsz arcp contract afn double %i.big, 1.000000e+00
  %i.bii = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bih)
  %i.bij = fmul reassoc nsz arcp contract afn double %i.bii, %i.bhx
  br label %.lr.ph889.i.i.lver.check

.lr.ph889.i.i.lver.check:                         ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i711.i.i = phi nsz double [ %i.bid, %bb.af ], [ %i.bij, %bb.ah ], [ 0.000000e+00, %bb.ag ] ; 3 uses
  %i.bik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1085.i.i
  store double %.0.i711.i.i, ptr %i.bik, align 8, !tbaa !117
  %i.bil = fcmp reassoc nsz arcp contract afn une double %.0.i711.i.i, 0.000000e+00 ; 2 uses
  %i.bim = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i711.i.i ; 2 uses
  %i.bin = fmul reassoc nsz arcp contract afn double %i.bim, %i.bhq
  %i.bio = fmul reassoc nsz arcp contract afn double %i.bim, %i.bhu
  %.1681.i.i = select nsz i1 %i.bil, double %i.bin, double %i.bhd ; 15 uses
  %.9.i.i = select nsz i1 %i.bil, double %i.bio, double %i.bhe ; 15 uses
  %invariant.gep1225.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1085.i.i ; 7 uses
  %invariant.gep1227.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv.next1086.i.i ; 6 uses
  br i1 %ident.check1912.not, label %.lr.ph889.i.i.ph, label %.lr.ph889.i.i.lver.orig.preheader

.lr.ph889.i.i.lver.orig.preheader:                ; preds = %.lr.ph889.i.i.lver.check
  br i1 %i.jg, label %.lr.ph889.i.i.lver.orig.epil.preheader, label %.lr.ph889.i.i.lver.orig

.lr.ph889.i.i.lver.orig:                          ; preds = %.lr.ph889.i.i.lver.orig.preheader, %.lr.ph889.i.i.lver.orig
  %indvars.iv1080.i.i.lver.orig = phi i64 [ %indvars.iv.next1081.i.i.lver.orig.1, %.lr.ph889.i.i.lver.orig ], [ 0, %.lr.ph889.i.i.lver.orig.preheader ] ; 3 uses
  %niter2108 = phi i64 [ %niter2108.next.1, %.lr.ph889.i.i.lver.orig ], [ 0, %.lr.ph889.i.i.lver.orig.preheader ]
  %i.bip = mul nsw i64 %indvars.iv1080.i.i.lver.orig, %i.ih ; 2 uses
  %gep1226.i.i.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bip ; 2 uses
  %i.biq = load double, ptr %gep1226.i.i.lver.orig, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bip ; 2 uses
  %i.bir = load double, ptr %gep1228.i.i.lver.orig, align 8, !tbaa !117 ; 2 uses
  %i.bis = fmul reassoc nsz arcp contract afn double %i.biq, %.1681.i.i
  %i.bit = fmul reassoc nsz arcp contract afn double %i.bir, %.9.i.i
  %i.biu = fadd reassoc nsz arcp contract afn double %i.bit, %i.bis
  store double %i.biu, ptr %gep1226.i.i.lver.orig, align 8, !tbaa !117
  %i.biv = fmul reassoc nsz arcp contract afn double %i.bir, %.1681.i.i
  %i.biw = fmul reassoc nsz arcp contract afn double %i.biq, %.9.i.i
  %i.bix = fsub reassoc nsz arcp contract afn double %i.biv, %i.biw
  store double %i.bix, ptr %gep1228.i.i.lver.orig, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.lver.orig = or disjoint i64 %indvars.iv1080.i.i.lver.orig, 1
  %i.biy = mul nsw i64 %indvars.iv.next1081.i.i.lver.orig, %i.ih ; 2 uses
  %gep1226.i.i.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.biy ; 2 uses
  %i.biz = load double, ptr %gep1226.i.i.lver.orig.1, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.biy ; 2 uses
  %i.bja = load double, ptr %gep1228.i.i.lver.orig.1, align 8, !tbaa !117 ; 2 uses
  %i.bjb = fmul reassoc nsz arcp contract afn double %i.biz, %.1681.i.i
  %i.bjc = fmul reassoc nsz arcp contract afn double %i.bja, %.9.i.i
  %i.bjd = fadd reassoc nsz arcp contract afn double %i.bjc, %i.bjb
  store double %i.bjd, ptr %gep1226.i.i.lver.orig.1, align 8, !tbaa !117
  %i.bje = fmul reassoc nsz arcp contract afn double %i.bja, %.1681.i.i
  %i.bjf = fmul reassoc nsz arcp contract afn double %i.biz, %.9.i.i
  %i.bjg = fsub reassoc nsz arcp contract afn double %i.bje, %i.bjf
  store double %i.bjg, ptr %gep1228.i.i.lver.orig.1, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.lver.orig.1 = add nuw nsw i64 %indvars.iv1080.i.i.lver.orig, 2 ; 2 uses
  %niter2108.next.1 = add i64 %niter2108, 2       ; 2 uses
  %niter2108.ncmp.1 = icmp eq i64 %niter2108.next.1, %unroll_iter2107
  br i1 %niter2108.ncmp.1, label %.loopexit.i.loopexit.i.loopexit1926.unr-lcssa, label %.lr.ph889.i.i.lver.orig

.lr.ph889.i.i.ph:                                 ; preds = %.lr.ph889.i.i.lver.check
  %load_initial = load double, ptr %invariant.gep1225.i.i, align 8 ; 2 uses
  br i1 %i.jh, label %.lr.ph889.i.i.epil.preheader, label %.lr.ph889.i.i

.lr.ph886.i.i:                                    ; preds = %.lr.ph886.preheader.i.i, %.lr.ph886.i.i
  %indvars.iv1075.i.i = phi i64 [ %indvars.iv.next1076.i.i.1, %.lr.ph886.i.i ], [ 0, %.lr.ph886.preheader.i.i ] ; 3 uses
  %niter2102 = phi i64 [ %niter2102.next.1, %.lr.ph886.i.i ], [ 0, %.lr.ph886.preheader.i.i ]
  %i.bjh = mul nuw nsw i64 %indvars.iv1075.i.i, %i.nr ; 2 uses
  %gep1222.i.i = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bjh ; 2 uses
  %i.bji = load double, ptr %gep1222.i.i, align 8, !tbaa !117 ; 2 uses
  %gep1224.i.i = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bjh ; 2 uses
  %i.bjj = load double, ptr %gep1224.i.i, align 8, !tbaa !117 ; 2 uses
  %i.bjk = fmul reassoc nsz arcp contract afn double %i.bji, %i.bhd
  %i.bjl = fmul reassoc nsz arcp contract afn double %i.bjj, %i.bhe
  %i.bjm = fadd reassoc nsz arcp contract afn double %i.bjl, %i.bjk
  store double %i.bjm, ptr %gep1222.i.i, align 8, !tbaa !117
  %i.bjn = fmul reassoc nsz arcp contract afn double %i.bjj, %i.bhd
  %i.bjo = fmul reassoc nsz arcp contract afn double %i.bji, %i.bhe
  %i.bjp = fsub reassoc nsz arcp contract afn double %i.bjn, %i.bjo
  store double %i.bjp, ptr %gep1224.i.i, align 8, !tbaa !117
  %indvars.iv.next1076.i.i = or disjoint i64 %indvars.iv1075.i.i, 1
  %i.bjq = mul nuw nsw i64 %indvars.iv.next1076.i.i, %i.nr ; 2 uses
  %gep1222.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bjq ; 2 uses
  %i.bjr = load double, ptr %gep1222.i.i.1, align 8, !tbaa !117 ; 2 uses
  %gep1224.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bjq ; 2 uses
  %i.bjs = load double, ptr %gep1224.i.i.1, align 8, !tbaa !117 ; 2 uses
  %i.bjt = fmul reassoc nsz arcp contract afn double %i.bjr, %i.bhd
  %i.bju = fmul reassoc nsz arcp contract afn double %i.bjs, %i.bhe
  %i.bjv = fadd reassoc nsz arcp contract afn double %i.bju, %i.bjt
  store double %i.bjv, ptr %gep1222.i.i.1, align 8, !tbaa !117
  %i.bjw = fmul reassoc nsz arcp contract afn double %i.bjs, %i.bhd
  %i.bjx = fmul reassoc nsz arcp contract afn double %i.bjr, %i.bhe
  %i.bjy = fsub reassoc nsz arcp contract afn double %i.bjw, %i.bjx
  store double %i.bjy, ptr %gep1224.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1076.i.i.1 = add nuw nsw i64 %indvars.iv1075.i.i, 2 ; 2 uses
  %niter2102.next.1 = add i64 %niter2102, 2       ; 2 uses
  %niter2102.ncmp.1 = icmp eq i64 %niter2102.next.1, %unroll_iter2101
  br i1 %niter2102.ncmp.1, label %._crit_edge887.i.i.unr-lcssa, label %.lr.ph886.i.i

.lr.ph889.i.i:                                    ; preds = %.lr.ph889.i.i.ph, %.lr.ph889.i.i
  %store_forwarded = phi double [ %i.bko, %.lr.ph889.i.i ], [ %load_initial, %.lr.ph889.i.i.ph ] ; 2 uses
  %indvars.iv1080.i.i = phi i64 [ %indvars.iv.next1081.i.i.1, %.lr.ph889.i.i ], [ 0, %.lr.ph889.i.i.ph ] ; 3 uses
  %niter2114 = phi i64 [ %niter2114.next.1, %.lr.ph889.i.i ], [ 0, %.lr.ph889.i.i.ph ]
  %i.bjz = mul nuw nsw i64 %indvars.iv1080.i.i, %i.ih ; 2 uses
  %gep1226.i.i = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bjz
  %gep1228.i.i = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bjz ; 2 uses
  %i.bka = load double, ptr %gep1228.i.i, align 8, !tbaa !117 ; 2 uses
  %i.bkb = fmul reassoc nsz arcp contract afn double %store_forwarded, %.1681.i.i
  %i.bkc = fmul reassoc nsz arcp contract afn double %i.bka, %.9.i.i
  %i.bkd = fadd reassoc nsz arcp contract afn double %i.bkc, %i.bkb
  store double %i.bkd, ptr %gep1226.i.i, align 8, !tbaa !117
  %i.bke = fmul reassoc nsz arcp contract afn double %i.bka, %.1681.i.i
  %i.bkf = fmul reassoc nsz arcp contract afn double %store_forwarded, %.9.i.i
  %i.bkg = fsub reassoc nsz arcp contract afn double %i.bke, %i.bkf ; 3 uses
  store double %i.bkg, ptr %gep1228.i.i, align 8, !tbaa !117
  %indvars.iv.next1081.i.i = or disjoint i64 %indvars.iv1080.i.i, 1
  %i.bkh = mul nuw nsw i64 %indvars.iv.next1081.i.i, %i.ih ; 2 uses
  %gep1226.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bkh
  %gep1228.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bkh ; 2 uses
  %i.bki = load double, ptr %gep1228.i.i.1, align 8, !tbaa !117 ; 2 uses
  %i.bkj = fmul reassoc nsz arcp contract afn double %i.bkg, %.1681.i.i
  %i.bkk = fmul reassoc nsz arcp contract afn double %i.bki, %.9.i.i
  %i.bkl = fadd reassoc nsz arcp contract afn double %i.bkk, %i.bkj
  store double %i.bkl, ptr %gep1226.i.i.1, align 8, !tbaa !117
  %i.bkm = fmul reassoc nsz arcp contract afn double %i.bki, %.1681.i.i
  %i.bkn = fmul reassoc nsz arcp contract afn double %i.bkg, %.9.i.i
  %i.bko = fsub reassoc nsz arcp contract afn double %i.bkm, %i.bkn ; 3 uses
  store double %i.bko, ptr %gep1228.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.1 = add nuw nsw i64 %indvars.iv1080.i.i, 2 ; 2 uses
  %niter2114.next.1 = add i64 %niter2114, 2       ; 2 uses
  %niter2114.ncmp.1 = icmp eq i64 %niter2114.next.1, %unroll_iter2113
  br i1 %niter2114.ncmp.1, label %.loopexit.i.loopexit.i.loopexit.unr-lcssa, label %.lr.ph889.i.i

._crit_edge897.i.i:                               ; preds = %.loopexit.i.loopexit.i, %PYTHAG.exit708.i.i
  %.0679.lcssa.i.i = phi double [ %i.bfk, %PYTHAG.exit708.i.i ], [ %i.bge, %.loopexit.i.loopexit.i ] ; 2 uses
  %.0673.lcssa.i.i = phi double [ %i.bee, %PYTHAG.exit708.i.i ], [ %i.bgh, %.loopexit.i.loopexit.i ]
  store double 0.000000e+00, ptr %i.azy, align 8, !tbaa !117
  store double %.0679.lcssa.i.i, ptr %i.ayt, align 8, !tbaa !117
  store double %.0673.lcssa.i.i, ptr %i.ayv, align 8, !tbaa !117
  %i.bkp = add nuw nsw i32 %.0631900.i.i, 1
  br label %.preheader730.i.i

.thread721.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph903.i.i
  br i1 %lcmp.mod2119.not, label %.thread721.i.i, label %.lr.ph903.i.i.epil.preheader

.lr.ph903.i.i.epil.preheader:                     ; preds = %.thread721.i.i.loopexit.unr-lcssa, %.lr.ph903.preheader.i.i
  %indvars.iv1090.i.i.epil.init = phi i64 [ 0, %.lr.ph903.preheader.i.i ], [ %indvars.iv.next1091.i.i.7, %.thread721.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2120)
  br label %.lr.ph903.i.i.epil

.lr.ph903.i.i.epil:                               ; preds = %.lr.ph903.i.i.epil, %.lr.ph903.i.i.epil.preheader
  %indvars.iv1090.i.i.epil = phi i64 [ %indvars.iv1090.i.i.epil.init, %.lr.ph903.i.i.epil.preheader ], [ %indvars.iv.next1091.i.i.epil, %.lr.ph903.i.i.epil ] ; 2 uses
  %epil.iter2118 = phi i64 [ 0, %.lr.ph903.i.i.epil.preheader ], [ %epil.iter2118.next, %.lr.ph903.i.i.epil ]
  %i.bkq = mul nuw nsw i64 %indvars.iv1090.i.i.epil, %i.nr
  %gep1230.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bkq ; 2 uses
  %i.bkr = load double, ptr %gep1230.i.i.epil, align 8, !tbaa !117
  %i.bks = fneg reassoc nsz arcp contract afn double %i.bkr
  store double %i.bks, ptr %gep1230.i.i.epil, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.epil = add nuw nsw i64 %indvars.iv1090.i.i.epil, 1
  %epil.iter2118.next = add i64 %epil.iter2118, 1 ; 2 uses
  %epil.iter2118.cmp.not = icmp eq i64 %epil.iter2118.next, %xtraiter2117
  br i1 %epil.iter2118.cmp.not, label %.thread721.i.i, label %.lr.ph903.i.i.epil, !llvm.loop !101

.thread721.i.i:                                   ; preds = %.thread721.i.i.loopexit.unr-lcssa, %.lr.ph903.i.i.epil, %bb.x
  %indvars.iv.next1072.i.i = add nsw i32 %indvars.iv1071.i.i, -1
  br i1 %i.ayu, label %.critedge.i.i, label %.preheader731.i.i

bb.ai:                                            ; preds = %bb.y
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, i32 noundef 30) #17
  tail call void @free(ptr noundef nonnull %i.pf) #17
  br label %dsvd.exit.i

.critedge.i.i:                                    ; preds = %.thread721.i.i, %bb.q
  tail call void @free(ptr noundef %i.pf) #17
  br label %dsvd.exit.i

dsvd.exit.i:                                      ; preds = %.critedge.i.i, %bb.ai, %bb.p
  %i.bkt = load double, ptr %i.nz, align 8, !tbaa !117
  %i.bku = fcmp reassoc nsz arcp contract afn olt double %i.bkt, 1.000000e-03
  br i1 %i.bku, label %._crit_edge553, label %bb.aj

bb.aj:                                            ; preds = %dsvd.exit.i
  %i.bkv = tail call noalias ptr @malloc(i64 noundef %i.ii) #15 ; 8 uses
  br i1 %.not422530, label %.lr.ph544, label %iter.check988

iter.check988:                                    ; preds = %bb.aj, %._crit_edge.us.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %._crit_edge.us.i ], [ 0, %bb.aj ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv123.i ; 11 uses
  br i1 %or.cond1925, label %vector.main.loop.iter.check962, label %vec.epilog.scalar.ph989.preheader

vector.main.loop.iter.check962:                   ; preds = %iter.check988
  br i1 %min.iters.check963, label %vec.epilog.ph992, label %vector.body966

vector.body966:                                   ; preds = %vector.main.loop.iter.check962, %vector.body966
  %index967 = phi i64 [ %index.next980, %vector.body966 ], [ 0, %vector.main.loop.iter.check962 ] ; 3 uses
  %vec.phi968 = phi <4 x double> [ %i.bli, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi969 = phi <4 x double> [ %i.blj, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi970 = phi <4 x double> [ %i.blk, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi971 = phi <4 x double> [ %i.bll, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %i.bkw = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index967 ; 4 uses
  %i.bkx = getelementptr i8, ptr %i.bkw, i64 32
  %i.bky = getelementptr i8, ptr %i.bkw, i64 64
  %i.bkz = getelementptr i8, ptr %i.bkw, i64 96
  %wide.load972 = load <4 x double>, ptr %i.bkw, align 8, !tbaa !117
  %wide.load973 = load <4 x double>, ptr %i.bkx, align 8, !tbaa !117
  %wide.load974 = load <4 x double>, ptr %i.bky, align 8, !tbaa !117
  %wide.load975 = load <4 x double>, ptr %i.bkz, align 8, !tbaa !117
  %i.bla = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %index967 ; 4 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 32
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bla, i64 64
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bla, i64 96
  %wide.load976 = load <4 x double>, ptr %i.bla, align 8, !tbaa !117
  %wide.load977 = load <4 x double>, ptr %i.blb, align 8, !tbaa !117
  %wide.load978 = load <4 x double>, ptr %i.blc, align 8, !tbaa !117
  %wide.load979 = load <4 x double>, ptr %i.bld, align 8, !tbaa !117
  %i.ble = fmul reassoc nsz arcp contract afn <4 x double> %wide.load976, %wide.load972
  %i.blf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load977, %wide.load973
  %i.blg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load978, %wide.load974
  %i.blh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load979, %wide.load975
  %i.bli = fadd reassoc nsz arcp contract afn <4 x double> %i.ble, %vec.phi968 ; 2 uses
  %i.blj = fadd reassoc nsz arcp contract afn <4 x double> %i.blf, %vec.phi969 ; 2 uses
  %i.blk = fadd reassoc nsz arcp contract afn <4 x double> %i.blg, %vec.phi970 ; 2 uses
  %i.bll = fadd reassoc nsz arcp contract afn <4 x double> %i.blh, %vec.phi971 ; 2 uses
  %index.next980 = add nuw i64 %index967, 16      ; 2 uses
  %i.blm = icmp eq i64 %index.next980, %n.vec965
  br i1 %i.blm, label %middle.block981, label %vector.body966, !llvm.loop !102

middle.block981:                                  ; preds = %vector.body966
  %bin.rdx982 = fadd reassoc nsz arcp contract afn <4 x double> %i.blj, %i.bli
  %bin.rdx983 = fadd reassoc nsz arcp contract afn <4 x double> %i.blk, %bin.rdx982
  %bin.rdx984 = fadd reassoc nsz arcp contract afn <4 x double> %i.bll, %bin.rdx983
  %i.bln = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx984) ; 3 uses
  br i1 %cmp.n985, label %._crit_edge.us.i, label %vec.epilog.iter.check990

vec.epilog.iter.check990:                         ; preds = %middle.block981
  br i1 %min.epilog.iters.check991, label %vec.epilog.scalar.ph989.preheader, label %vec.epilog.ph992, !prof !121

vec.epilog.ph992:                                 ; preds = %vector.main.loop.iter.check962, %vec.epilog.iter.check990
  %vec.epilog.resume.val986 = phi i64 [ %n.vec965, %vec.epilog.iter.check990 ], [ 0, %vector.main.loop.iter.check962 ]
  %bc.merge.rdx987 = phi double [ %i.bln, %vec.epilog.iter.check990 ], [ 0.000000e+00, %vector.main.loop.iter.check962 ]
  %i.blo = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx987, i64 0
  br label %vec.epilog.vector.body994

vec.epilog.vector.body994:                        ; preds = %vec.epilog.vector.body994, %vec.epilog.ph992
  %index995 = phi i64 [ %vec.epilog.resume.val986, %vec.epilog.ph992 ], [ %index.next999, %vec.epilog.vector.body994 ] ; 3 uses
  %vec.phi996 = phi <4 x double> [ %i.blo, %vec.epilog.ph992 ], [ %i.bls, %vec.epilog.vector.body994 ]
  %i.blp = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index995
  %wide.load997 = load <4 x double>, ptr %i.blp, align 8, !tbaa !117
  %i.blq = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %index995
  %wide.load998 = load <4 x double>, ptr %i.blq, align 8, !tbaa !117
  %i.blr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load998, %wide.load997
  %i.bls = fadd reassoc nsz arcp contract afn <4 x double> %i.blr, %vec.phi996 ; 2 uses
  %index.next999 = add nuw i64 %index995, 4       ; 2 uses
  %i.blt = icmp eq i64 %index.next999, %n.vec993
  br i1 %i.blt, label %vec.epilog.middle.block1000, label %vec.epilog.vector.body994, !llvm.loop !103

vec.epilog.middle.block1000:                      ; preds = %vec.epilog.vector.body994
  %i.blu = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bls) ; 2 uses
  br i1 %cmp.n1001, label %._crit_edge.us.i, label %vec.epilog.scalar.ph989.preheader

vec.epilog.scalar.ph989.preheader:                ; preds = %iter.check988, %vec.epilog.iter.check990, %vec.epilog.middle.block1000
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check988 ], [ %n.vec965, %vec.epilog.iter.check990 ], [ %n.vec993, %vec.epilog.middle.block1000 ] ; 4 uses
  %.ph1928.a = phi double [ 0.000000e+00, %iter.check988 ], [ %i.bln, %vec.epilog.iter.check990 ], [ %i.blu, %vec.epilog.middle.block1000 ] ; 2 uses
  %i.blv = sub nsw i64 %i.gr, %indvars.iv.i.ph
  %xtraiter2123 = and i64 %i.blv, 7               ; 2 uses
  %lcmp.mod2124.not = icmp eq i64 %xtraiter2123, 0
  br i1 %lcmp.mod2124.not, label %vec.epilog.scalar.ph989.prol.loopexit, label %vec.epilog.scalar.ph989.prol

vec.epilog.scalar.ph989.prol:                     ; preds = %vec.epilog.scalar.ph989.preheader, %vec.epilog.scalar.ph989.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph989.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph989.preheader ] ; 3 uses
  %i.blw = phi double [ %i.bmc, %vec.epilog.scalar.ph989.prol ], [ %.ph1928.a, %vec.epilog.scalar.ph989.preheader ]
  %prol.iter2125 = phi i64 [ %prol.iter2125.next, %vec.epilog.scalar.ph989.prol ], [ 0, %vec.epilog.scalar.ph989.preheader ]
  %i.blx = mul nsw i64 %indvars.iv.i.prol, %i.ih
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.blx
  %i.bly = load double, ptr %gep.i.prol, align 8, !tbaa !117
  %i.blz = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.i.prol
  %i.bma = load double, ptr %i.blz, align 8, !tbaa !117
  %i.bmb = fmul reassoc nsz arcp contract afn double %i.bma, %i.bly
  %i.bmc = fadd reassoc nsz arcp contract afn double %i.bmb, %i.blw ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter2125.next = add i64 %prol.iter2125, 1 ; 2 uses
  %prol.iter2125.cmp.not = icmp eq i64 %prol.iter2125.next, %xtraiter2123
  br i1 %prol.iter2125.cmp.not, label %vec.epilog.scalar.ph989.prol.loopexit, label %vec.epilog.scalar.ph989.prol, !llvm.loop !104

vec.epilog.scalar.ph989.prol.loopexit:            ; preds = %vec.epilog.scalar.ph989.prol, %vec.epilog.scalar.ph989.preheader
  %.lcssa1999.unr = phi double [ poison, %vec.epilog.scalar.ph989.preheader ], [ %i.bmc, %vec.epilog.scalar.ph989.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph989.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph989.prol ]
  %.unr = phi double [ %.ph1928.a, %vec.epilog.scalar.ph989.preheader ], [ %i.bmc, %vec.epilog.scalar.ph989.prol ]
  %i.bmd = sub nsw i64 %indvars.iv.i.ph, %i.gr
  %i.bme = icmp ugt i64 %i.bmd, -8
  br i1 %i.bme, label %._crit_edge.us.i, label %vec.epilog.scalar.ph989

vec.epilog.scalar.ph989:                          ; preds = %vec.epilog.scalar.ph989.prol.loopexit, %vec.epilog.scalar.ph989
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph989 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph989.prol.loopexit ] ; 10 uses
  %i.bmf = phi double [ %i.bob, %vec.epilog.scalar.ph989 ], [ %.unr, %vec.epilog.scalar.ph989.prol.loopexit ]
  %i.bmg = mul nsw i64 %indvars.iv.i, %i.ih
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bmg
  %i.bmh = load double, ptr %gep.i, align 8, !tbaa !117
  %i.bmi = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.i
  %i.bmj = load double, ptr %i.bmi, align 8, !tbaa !117
  %i.bmk = fmul reassoc nsz arcp contract afn double %i.bmj, %i.bmh
  %i.bml = fadd reassoc nsz arcp contract afn double %i.bmk, %i.bmf
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bmm = mul nsw i64 %indvars.iv.next.i, %i.ih
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bmm
  %i.bmn = load double, ptr %gep.i.1, align 8, !tbaa !117
  %i.bmo = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.next.i
  %i.bmp = load double, ptr %i.bmo, align 8, !tbaa !117
  %i.bmq = fmul reassoc nsz arcp contract afn double %i.bmp, %i.bmn
  %i.bmr = fadd reassoc nsz arcp contract afn double %i.bmq, %i.bml
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bms = mul nsw i64 %indvars.iv.next.i.1, %i.ih
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bms
  %i.bmt = load double, ptr %gep.i.2, align 8, !tbaa !117
  %i.bmu = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.next.i.1
  %i.bmv = load double, ptr %i.bmu, align 8, !tbaa !117
  %i.bmw = fmul reassoc nsz arcp contract afn double %i.bmv, %i.bmt
  %i.bmx = fadd reassoc nsz arcp contract afn double %i.bmw, %i.bmr
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bmy = mul nsw i64 %indvars.iv.next.i.2, %i.ih
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bmy
  %i.bmz = load double, ptr %gep.i.3, align 8, !tbaa !117
  %i.bna = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.next.i.2
  %i.bnb = load double, ptr %i.bna, align 8, !tbaa !117
  %i.bnc = fmul reassoc nsz arcp contract afn double %i.bnb, %i.bmz
  %i.bnd = fadd reassoc nsz arcp contract afn double %i.bnc, %i.bmx
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.bne = mul nsw i64 %indvars.iv.next.i.3, %i.ih
  %gep.i.4 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bne
  %i.bnf = load double, ptr %gep.i.4, align 8, !tbaa !117
  %i.bng = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.next.i.3
  %i.bnh = load double, ptr %i.bng, align 8, !tbaa !117
  %i.bni = fmul reassoc nsz arcp contract afn double %i.bnh, %i.bnf
  %i.bnj = fadd reassoc nsz arcp contract afn double %i.bni, %i.bnd
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.bnk = mul nsw i64 %indvars.iv.next.i.4, %i.ih
  %gep.i.5 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bnk
  %i.bnl = load double, ptr %gep.i.5, align 8, !tbaa !117
  %i.bnm = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.next.i.4
  %i.bnn = load double, ptr %i.bnm, align 8, !tbaa !117
  %i.bno = fmul reassoc nsz arcp contract afn double %i.bnn, %i.bnl
  %i.bnp = fadd reassoc nsz arcp contract afn double %i.bno, %i.bnj
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.bnq = mul nsw i64 %indvars.iv.next.i.5, %i.ih
  %gep.i.6 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bnq
  %i.bnr = load double, ptr %gep.i.6, align 8, !tbaa !117
  %i.bns = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.next.i.5
  %i.bnt = load double, ptr %i.bns, align 8, !tbaa !117
  %i.bnu = fmul reassoc nsz arcp contract afn double %i.bnt, %i.bnr
  %i.bnv = fadd reassoc nsz arcp contract afn double %i.bnu, %i.bnp
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.bnw = mul nsw i64 %indvars.iv.next.i.6, %i.ih
  %gep.i.7 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bnw
  %i.bnx = load double, ptr %gep.i.7, align 8, !tbaa !117
  %i.bny = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.next.i.6
  %i.bnz = load double, ptr %i.bny, align 8, !tbaa !117
  %i.boa = fmul reassoc nsz arcp contract afn double %i.bnz, %i.bnx
  %i.bob = fadd reassoc nsz arcp contract afn double %i.boa, %i.bnv ; 2 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.gr
  br i1 %exitcond.not.i.7, label %._crit_edge.us.i, label %vec.epilog.scalar.ph989, !llvm.loop !105

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph989.prol.loopexit, %vec.epilog.scalar.ph989, %vec.epilog.middle.block1000, %middle.block981
  %.lcssa795 = phi double [ %i.blu, %vec.epilog.middle.block1000 ], [ %i.bln, %middle.block981 ], [ %.lcssa1999.unr, %vec.epilog.scalar.ph989.prol.loopexit ], [ %i.bob, %vec.epilog.scalar.ph989 ]
  %i.boc = getelementptr inbounds nuw [8 x i8], ptr %i.bkv, i64 %indvars.iv123.i
end_hunk_4
begin_hunk_5_@thinplate_match:bb.a
  %wide.load956 = load <4 x double>, ptr %i.bor, align 8, !tbaa !117
  %i.bos = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load956, %wide.load955
  store <4 x double> %i.bos, ptr %i.bor, align 8, !tbaa !117
  %index.next957 = add nuw i64 %index954, 4       ; 2 uses
  %i.bot = icmp eq i64 %index.next957, %n.vec952
  br i1 %i.bot, label %vec.epilog.middle.block958, label %vec.epilog.vector.body953, !llvm.loop !107

vec.epilog.middle.block958:                       ; preds = %vec.epilog.vector.body953
  br i1 %cmp.n959, label %iter.check912.preheader, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %iter.check947, %vec.epilog.iter.check949, %vec.epilog.middle.block958
  %indvars.iv129.i.ph = phi i64 [ 0, %iter.check947 ], [ %n.vec932, %vec.epilog.iter.check949 ], [ %n.vec952, %vec.epilog.middle.block958 ]
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %.lr.ph92.i ], [ %indvars.iv129.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %i.bou = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv129.i
  %i.bov = load double, ptr %i.bou, align 8, !tbaa !117
  %i.bow = getelementptr inbounds nuw [8 x i8], ptr %i.bkv, i64 %indvars.iv129.i ; 2 uses
  %i.box = load double, ptr %i.bow, align 8, !tbaa !117
  %i.boy = fdiv reassoc nsz arcp contract afn double %i.box, %i.bov
  store double %i.boy, ptr %i.bow, align 8, !tbaa !117
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next130.i, %wide.trip.count990.i.i
  br i1 %exitcond134.not.i, label %iter.check912.preheader, label %.lr.ph92.i, !llvm.loop !108

iter.check912.preheader:                          ; preds = %.lr.ph92.i, %vec.epilog.middle.block958, %middle.block944
  br label %iter.check912

iter.check912:                                    ; preds = %iter.check912.preheader, %._crit_edge.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.i ], [ 0, %iter.check912.preheader ] ; 3 uses
  %i.boz = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv141.i
  %i.bpa = mul nuw nsw i64 %indvars.iv141.i, %wide.trip.count990.i.i
  %invariant.gep190.i = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.bpa ; 3 uses
  br i1 %min.iters.check885, label %vec.epilog.scalar.ph913.preheader, label %vector.main.loop.iter.check886

vector.main.loop.iter.check886:                   ; preds = %iter.check912
  br i1 %min.iters.check887, label %vec.epilog.ph916, label %vector.body890

vector.body890:                                   ; preds = %vector.main.loop.iter.check886, %vector.body890
  %index891 = phi i64 [ %index.next904, %vector.body890 ], [ 0, %vector.main.loop.iter.check886 ] ; 3 uses
  %vec.phi892 = phi <4 x double> [ %i.bpn, %vector.body890 ], [ zeroinitializer, %vector.main.loop.iter.check886 ]
  %vec.phi893 = phi <4 x double> [ %i.bpo, %vector.body890 ], [ zeroinitializer, %vector.main.loop.iter.check886 ]
  %vec.phi894 = phi <4 x double> [ %i.bpp, %vector.body890 ], [ zeroinitializer, %vector.main.loop.iter.check886 ]
  %vec.phi895 = phi <4 x double> [ %i.bpq, %vector.body890 ], [ zeroinitializer, %vector.main.loop.iter.check886 ]
  %i.bpb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %index891 ; 4 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 32
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpb, i64 64
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpb, i64 96
  %wide.load896 = load <4 x double>, ptr %i.bpb, align 8, !tbaa !117
  %wide.load897 = load <4 x double>, ptr %i.bpc, align 8, !tbaa !117
  %wide.load898 = load <4 x double>, ptr %i.bpd, align 8, !tbaa !117
  %wide.load899 = load <4 x double>, ptr %i.bpe, align 8, !tbaa !117
  %i.bpf = getelementptr inbounds nuw [8 x i8], ptr %i.bkv, i64 %index891 ; 4 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 32
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpf, i64 64
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpf, i64 96
  %wide.load900 = load <4 x double>, ptr %i.bpf, align 8, !tbaa !117
  %wide.load901 = load <4 x double>, ptr %i.bpg, align 8, !tbaa !117
  %wide.load902 = load <4 x double>, ptr %i.bph, align 8, !tbaa !117
  %wide.load903 = load <4 x double>, ptr %i.bpi, align 8, !tbaa !117
  %i.bpj = fmul reassoc nsz arcp contract afn <4 x double> %wide.load900, %wide.load896
  %i.bpk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load901, %wide.load897
  %i.bpl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load902, %wide.load898
  %i.bpm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load903, %wide.load899
  %i.bpn = fadd reassoc nsz arcp contract afn <4 x double> %i.bpj, %vec.phi892 ; 2 uses
  %i.bpo = fadd reassoc nsz arcp contract afn <4 x double> %i.bpk, %vec.phi893 ; 2 uses
  %i.bpp = fadd reassoc nsz arcp contract afn <4 x double> %i.bpl, %vec.phi894 ; 2 uses
  %i.bpq = fadd reassoc nsz arcp contract afn <4 x double> %i.bpm, %vec.phi895 ; 2 uses
  %index.next904 = add nuw i64 %index891, 16      ; 2 uses
  %i.bpr = icmp eq i64 %index.next904, %n.vec889
  br i1 %i.bpr, label %middle.block905, label %vector.body890, !llvm.loop !109

middle.block905:                                  ; preds = %vector.body890
  %bin.rdx906 = fadd reassoc nsz arcp contract afn <4 x double> %i.bpo, %i.bpn
  %bin.rdx907 = fadd reassoc nsz arcp contract afn <4 x double> %i.bpp, %bin.rdx906
  %bin.rdx908 = fadd reassoc nsz arcp contract afn <4 x double> %i.bpq, %bin.rdx907
  %i.bps = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx908) ; 3 uses
  br i1 %cmp.n909, label %._crit_edge.i, label %vec.epilog.iter.check914

vec.epilog.iter.check914:                         ; preds = %middle.block905
  br i1 %min.epilog.iters.check915, label %vec.epilog.scalar.ph913.preheader, label %vec.epilog.ph916, !prof !121

vec.epilog.ph916:                                 ; preds = %vector.main.loop.iter.check886, %vec.epilog.iter.check914
  %vec.epilog.resume.val910 = phi i64 [ %n.vec889, %vec.epilog.iter.check914 ], [ 0, %vector.main.loop.iter.check886 ]
  %bc.merge.rdx911 = phi double [ %i.bps, %vec.epilog.iter.check914 ], [ 0.000000e+00, %vector.main.loop.iter.check886 ]
  %i.bpt = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx911, i64 0
  br label %vec.epilog.vector.body918

vec.epilog.vector.body918:                        ; preds = %vec.epilog.vector.body918, %vec.epilog.ph916
  %index919 = phi i64 [ %vec.epilog.resume.val910, %vec.epilog.ph916 ], [ %index.next923, %vec.epilog.vector.body918 ] ; 3 uses
  %vec.phi920 = phi <4 x double> [ %i.bpt, %vec.epilog.ph916 ], [ %i.bpx, %vec.epilog.vector.body918 ]
  %i.bpu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %index919
  %wide.load921 = load <4 x double>, ptr %i.bpu, align 8, !tbaa !117
  %i.bpv = getelementptr inbounds nuw [8 x i8], ptr %i.bkv, i64 %index919
  %wide.load922 = load <4 x double>, ptr %i.bpv, align 8, !tbaa !117
  %i.bpw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load922, %wide.load921
  %i.bpx = fadd reassoc nsz arcp contract afn <4 x double> %i.bpw, %vec.phi920 ; 2 uses
  %index.next923 = add nuw i64 %index919, 4       ; 2 uses
  %i.bpy = icmp eq i64 %index.next923, %n.vec917
  br i1 %i.bpy, label %vec.epilog.middle.block924, label %vec.epilog.vector.body918, !llvm.loop !110

vec.epilog.middle.block924:                       ; preds = %vec.epilog.vector.body918
  %i.bpz = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bpx) ; 2 uses
  br i1 %cmp.n925, label %._crit_edge.i, label %vec.epilog.scalar.ph913.preheader

vec.epilog.scalar.ph913.preheader:                ; preds = %iter.check912, %vec.epilog.iter.check914, %vec.epilog.middle.block924
  %indvars.iv135.i.ph = phi i64 [ 0, %iter.check912 ], [ %n.vec889, %vec.epilog.iter.check914 ], [ %n.vec917, %vec.epilog.middle.block924 ]
  %.ph1927 = phi double [ 0.000000e+00, %iter.check912 ], [ %i.bps, %vec.epilog.iter.check914 ], [ %i.bpz, %vec.epilog.middle.block924 ]
  br label %vec.epilog.scalar.ph913

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph913, %vec.epilog.middle.block924, %middle.block905
  %.lcssa796 = phi double [ %i.bpz, %vec.epilog.middle.block924 ], [ %i.bps, %middle.block905 ], [ %i.bqf, %vec.epilog.scalar.ph913 ]
  store double %.lcssa796, ptr %i.boz, align 8, !tbaa !117
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count990.i.i
  br i1 %exitcond146.not.i, label %.lr.ph544, label %iter.check912

vec.epilog.scalar.ph913:                          ; preds = %vec.epilog.scalar.ph913.preheader, %vec.epilog.scalar.ph913
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %vec.epilog.scalar.ph913 ], [ %indvars.iv135.i.ph, %vec.epilog.scalar.ph913.preheader ] ; 3 uses
  %i.bqa = phi double [ %i.bqf, %vec.epilog.scalar.ph913 ], [ %.ph1927, %vec.epilog.scalar.ph913.preheader ]
  %gep191.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %indvars.iv135.i
  %i.bqb = load double, ptr %gep191.i, align 8, !tbaa !117
  %i.bqc = getelementptr inbounds nuw [8 x i8], ptr %i.bkv, i64 %indvars.iv135.i
  %i.bqd = load double, ptr %i.bqc, align 8, !tbaa !117
  %i.bqe = fmul reassoc nsz arcp contract afn double %i.bqd, %i.bqb
  %i.bqf = fadd reassoc nsz arcp contract afn double %i.bqe, %i.bqa ; 2 uses
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count990.i.i
  br i1 %exitcond140.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph913, !llvm.loop !111

.lr.ph544:                                        ; preds = %._crit_edge.i, %bb.aj
  tail call void @free(ptr noundef %i.bkv) #17
  %i.bqg = mul nuw nsw i64 %indvars.iv672, %i.gr
  %i.bqh = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.bqg
  br label %bb.ak

._crit_edge529:                                   ; preds = %vec.epilog.scalar.ph1829.prol.loopexit, %vec.epilog.scalar.ph1829, %vec.epilog.middle.block1846, %middle.block1825
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1
  %.not422.not = icmp slt i64 %indvars.iv661, %i.ny
  br i1 %.not422.not, label %iter.check1828, label %._crit_edge532.split

vec.epilog.scalar.ph1829:                         ; preds = %vec.epilog.scalar.ph1829.prol.loopexit, %vec.epilog.scalar.ph1829
  %indvars.iv656 = phi i64 [ %indvars.iv.next657.7, %vec.epilog.scalar.ph1829 ], [ %indvars.iv656.unr, %vec.epilog.scalar.ph1829.prol.loopexit ] ; 10 uses
  %i.bqi = mul nuw nsw i64 %indvars.iv656, %i.b
  %gep773 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqi
  %i.bqj = load double, ptr %gep773, align 8, !tbaa !117
  %i.bqk = mul nsw i64 %indvars.iv656, %i.ih
  %gep775 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqk
  store double %i.bqj, ptr %gep775, align 8, !tbaa !117
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %i.bql = mul nuw nsw i64 %indvars.iv.next657, %i.b
  %gep773.1 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bql
  %i.bqm = load double, ptr %gep773.1, align 8, !tbaa !117
  %i.bqn = mul nsw i64 %indvars.iv.next657, %i.ih
  %gep775.1 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqn
  store double %i.bqm, ptr %gep775.1, align 8, !tbaa !117
  %indvars.iv.next657.1 = add nuw nsw i64 %indvars.iv656, 2 ; 2 uses
  %i.bqo = mul nuw nsw i64 %indvars.iv.next657.1, %i.b
  %gep773.2 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqo
  %i.bqp = load double, ptr %gep773.2, align 8, !tbaa !117
  %i.bqq = mul nsw i64 %indvars.iv.next657.1, %i.ih
  %gep775.2 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqq
  store double %i.bqp, ptr %gep775.2, align 8, !tbaa !117
  %indvars.iv.next657.2 = add nuw nsw i64 %indvars.iv656, 3 ; 2 uses
  %i.bqr = mul nuw nsw i64 %indvars.iv.next657.2, %i.b
  %gep773.3 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqr
  %i.bqs = load double, ptr %gep773.3, align 8, !tbaa !117
  %i.bqt = mul nsw i64 %indvars.iv.next657.2, %i.ih
  %gep775.3 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqt
  store double %i.bqs, ptr %gep775.3, align 8, !tbaa !117
  %indvars.iv.next657.3 = add nuw nsw i64 %indvars.iv656, 4 ; 2 uses
  %i.bqu = mul nuw nsw i64 %indvars.iv.next657.3, %i.b
  %gep773.4 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqu
  %i.bqv = load double, ptr %gep773.4, align 8, !tbaa !117
  %i.bqw = mul nsw i64 %indvars.iv.next657.3, %i.ih
  %gep775.4 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqw
  store double %i.bqv, ptr %gep775.4, align 8, !tbaa !117
  %indvars.iv.next657.4 = add nuw nsw i64 %indvars.iv656, 5 ; 2 uses
  %i.bqx = mul nuw nsw i64 %indvars.iv.next657.4, %i.b
  %gep773.5 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqx
  %i.bqy = load double, ptr %gep773.5, align 8, !tbaa !117
  %i.bqz = mul nsw i64 %indvars.iv.next657.4, %i.ih
  %gep775.5 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqz
  store double %i.bqy, ptr %gep775.5, align 8, !tbaa !117
  %indvars.iv.next657.5 = add nuw nsw i64 %indvars.iv656, 6 ; 2 uses
  %i.bra = mul nuw nsw i64 %indvars.iv.next657.5, %i.b
  %gep773.6 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bra
  %i.brb = load double, ptr %gep773.6, align 8, !tbaa !117
  %i.brc = mul nsw i64 %indvars.iv.next657.5, %i.ih
  %gep775.6 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.brc
  store double %i.brb, ptr %gep775.6, align 8, !tbaa !117
  %indvars.iv.next657.6 = add nuw nsw i64 %indvars.iv656, 7 ; 2 uses
  %i.brd = mul nuw nsw i64 %indvars.iv.next657.6, %i.b
  %gep773.7 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.brd
  %i.bre = load double, ptr %gep773.7, align 8, !tbaa !117
  %i.brf = mul nsw i64 %indvars.iv.next657.6, %i.ih
  %gep775.7 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.brf
  store double %i.bre, ptr %gep775.7, align 8, !tbaa !117
  %indvars.iv.next657.7 = add nuw nsw i64 %indvars.iv656, 8 ; 2 uses
  %exitcond660.not.7 = icmp eq i64 %indvars.iv.next657.7, %wide.trip.count680
  br i1 %exitcond660.not.7, label %._crit_edge529, label %vec.epilog.scalar.ph1829, !llvm.loop !112

._crit_edge545:                                   ; preds = %bb.al
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count649
  br i1 %exitcond676.not, label %.lr.ph.i432.preheader, label %.preheader452

bb.ak:                                            ; preds = %.lr.ph544, %bb.al
  %indvars.iv667 = phi i64 [ 0, %.lr.ph544 ], [ %indvars.iv.next668, %bb.al ] ; 4 uses
  %i.brg = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv667
  %i.brh = load double, ptr %i.brg, align 8, !tbaa !117 ; 4 uses
  %i.bri = getelementptr inbounds nuw [8 x i8], ptr %i.bqh, i64 %indvars.iv667 ; 2 uses
  store double %i.brh, ptr %i.bri, align 8, !tbaa !117
  br i1 %.not422530, label %bb.al, label %iter.check865

iter.check865:                                    ; preds = %bb.ak
  %i.brj = load ptr, ptr %i.pd, align 8, !tbaa !124 ; 3 uses
  %i.brk = trunc i64 %indvars.iv667 to i32
  %i.brl = mul i32 %i.a, %i.brk                   ; 3 uses
  br i1 %min.iters.check829, label %vec.epilog.scalar.ph866.preheader, label %vector.main.loop.iter.check830

vector.main.loop.iter.check830:                   ; preds = %iter.check865
  br i1 %min.iters.check831, label %vec.epilog.ph869, label %vector.ph832

vector.ph832:                                     ; preds = %vector.main.loop.iter.check830
  %i.brm = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.brh, i64 0
  %broadcast.splatinsert834 = insertelement <4 x i32> poison, i32 %i.brl, i64 0
  %broadcast.splat835 = shufflevector <4 x i32> %broadcast.splatinsert834, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body836

vector.body836:                                   ; preds = %vector.body836, %vector.ph832
  %index837 = phi i64 [ 0, %vector.ph832 ], [ %index.next857, %vector.body836 ] ; 3 uses
  %vec.phi838 = phi <4 x double> [ %i.brm, %vector.ph832 ], [ %i.bsh, %vector.body836 ]
  %vec.phi839 = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.bsi, %vector.body836 ]
  %vec.phi840 = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.bsj, %vector.body836 ]
  %vec.phi841 = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.bsk, %vector.body836 ]
  %i.brn = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index837 ; 4 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 16
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brn, i64 32
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brn, i64 48
  %wide.load = load <4 x i32>, ptr %i.brn, align 4, !tbaa !125
  %wide.load842 = load <4 x i32>, ptr %i.bro, align 4, !tbaa !125
  %wide.load843 = load <4 x i32>, ptr %i.brp, align 4, !tbaa !125
  %wide.load844 = load <4 x i32>, ptr %i.brq, align 4, !tbaa !125
  %i.brr = add nsw <4 x i32> %wide.load, %broadcast.splat835
  %i.brs = add nsw <4 x i32> %wide.load842, %broadcast.splat835
  %i.brt = add nsw <4 x i32> %wide.load843, %broadcast.splat835
  %i.bru = add nsw <4 x i32> %wide.load844, %broadcast.splat835
  %i.brv = sext <4 x i32> %i.brr to <4 x i64>
  %i.brw = sext <4 x i32> %i.brs to <4 x i64>
  %i.brx = sext <4 x i32> %i.brt to <4 x i64>
  %i.bry = sext <4 x i32> %i.bru to <4 x i64>
  %wide.gep845 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.brv
  %wide.gep846 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.brw
  %wide.gep847 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.brx
  %wide.gep848 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.bry
  %wide.masked.gather849 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep845, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather850 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep846, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather851 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep847, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather852 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep848, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.brz = getelementptr inbounds nuw [8 x i8], ptr %i.brj, i64 %index837 ; 4 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 32
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.brz, i64 64
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brz, i64 96
  %wide.load853 = load <4 x double>, ptr %i.brz, align 8, !tbaa !117
  %wide.load854 = load <4 x double>, ptr %i.bsa, align 8, !tbaa !117
  %wide.load855 = load <4 x double>, ptr %i.bsb, align 8, !tbaa !117
  %wide.load856 = load <4 x double>, ptr %i.bsc, align 8, !tbaa !117
  %i.bsd = fmul reassoc nsz arcp contract afn <4 x double> %wide.load853, %wide.masked.gather849
  %i.bse = fmul reassoc nsz arcp contract afn <4 x double> %wide.load854, %wide.masked.gather850
  %i.bsf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load855, %wide.masked.gather851
  %i.bsg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load856, %wide.masked.gather852
  %i.bsh = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi838, %i.bsd ; 2 uses
  %i.bsi = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi839, %i.bse ; 2 uses
  %i.bsj = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi840, %i.bsf ; 2 uses
  %i.bsk = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi841, %i.bsg ; 2 uses
  %index.next857 = add nuw i64 %index837, 16      ; 2 uses
  %i.bsl = icmp eq i64 %index.next857, %n.vec834
  br i1 %i.bsl, label %middle.block858, label %vector.body836, !llvm.loop !113

middle.block858:                                  ; preds = %vector.body836
  %bin.rdx859 = fadd reassoc nsz arcp contract afn <4 x double> %i.bsi, %i.bsh
  %bin.rdx860 = fadd reassoc nsz arcp contract afn <4 x double> %i.bsj, %bin.rdx859
  %bin.rdx861 = fadd reassoc nsz arcp contract afn <4 x double> %i.bsk, %bin.rdx860
  %i.bsm = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx861) ; 3 uses
  br i1 %cmp.n863, label %._crit_edge540, label %vec.epilog.iter.check867

vec.epilog.iter.check867:                         ; preds = %middle.block858
  br i1 %min.epilog.iters.check868, label %vec.epilog.scalar.ph866.preheader, label %vec.epilog.ph869, !prof !121

vec.epilog.ph869:                                 ; preds = %vector.main.loop.iter.check830, %vec.epilog.iter.check867
  %vec.epilog.resume.val863 = phi i64 [ %n.vec834, %vec.epilog.iter.check867 ], [ 0, %vector.main.loop.iter.check830 ]
  %bc.merge.rdx864 = phi double [ %i.bsm, %vec.epilog.iter.check867 ], [ %i.brh, %vector.main.loop.iter.check830 ]
  %i.bsn = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx864, i64 0
  %broadcast.splatinsert871 = insertelement <4 x i32> poison, i32 %i.brl, i64 0
  %broadcast.splat872 = shufflevector <4 x i32> %broadcast.splatinsert871, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body873

vec.epilog.vector.body873:                        ; preds = %vec.epilog.vector.body873, %vec.epilog.ph869
  %index874 = phi i64 [ %vec.epilog.resume.val863, %vec.epilog.ph869 ], [ %index.next880, %vec.epilog.vector.body873 ] ; 3 uses
  %vec.phi875 = phi <4 x double> [ %i.bsn, %vec.epilog.ph869 ], [ %i.bst, %vec.epilog.vector.body873 ]
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index874
  %wide.load876 = load <4 x i32>, ptr %i.bso, align 4, !tbaa !125
  %i.bsp = add nsw <4 x i32> %wide.load876, %broadcast.splat872
  %i.bsq = sext <4 x i32> %i.bsp to <4 x i64>
  %wide.gep877 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.bsq
  %wide.masked.gather878 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep877, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.bsr = getelementptr inbounds nuw [8 x i8], ptr %i.brj, i64 %index874
  %wide.load879 = load <4 x double>, ptr %i.bsr, align 8, !tbaa !117
  %i.bss = fmul reassoc nsz arcp contract afn <4 x double> %wide.load879, %wide.masked.gather878
  %i.bst = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi875, %i.bss ; 2 uses
  %index.next880 = add nuw i64 %index874, 4       ; 2 uses
  %i.bsu = icmp eq i64 %index.next880, %n.vec870
  br i1 %i.bsu, label %vec.epilog.middle.block881, label %vec.epilog.vector.body873, !llvm.loop !114

vec.epilog.middle.block881:                       ; preds = %vec.epilog.vector.body873
  %i.bsv = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bst) ; 2 uses
  br i1 %cmp.n882, label %._crit_edge540, label %vec.epilog.scalar.ph866.preheader

vec.epilog.scalar.ph866.preheader:                ; preds = %iter.check865, %vec.epilog.iter.check867, %vec.epilog.middle.block881
  %indvars.iv664.ph = phi i64 [ 0, %iter.check865 ], [ %n.vec834, %vec.epilog.iter.check867 ], [ %n.vec870, %vec.epilog.middle.block881 ]
  %.ph = phi double [ %i.brh, %iter.check865 ], [ %i.bsm, %vec.epilog.iter.check867 ], [ %i.bsv, %vec.epilog.middle.block881 ]
  br label %vec.epilog.scalar.ph866

._crit_edge540:                                   ; preds = %vec.epilog.scalar.ph866, %vec.epilog.middle.block881, %middle.block858
  %.lcssa797 = phi double [ %i.bsv, %vec.epilog.middle.block881 ], [ %i.bsm, %middle.block858 ], [ %i.btg, %vec.epilog.scalar.ph866 ]
  store double %.lcssa797, ptr %i.bri, align 8, !tbaa !117
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge540, %bb.ak
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond671.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count680
  br i1 %exitcond671.not, label %._crit_edge545, label %bb.ak

vec.epilog.scalar.ph866:                          ; preds = %vec.epilog.scalar.ph866.preheader, %vec.epilog.scalar.ph866
  %indvars.iv664 = phi i64 [ %indvars.iv.next665, %vec.epilog.scalar.ph866 ], [ %indvars.iv664.ph, %vec.epilog.scalar.ph866.preheader ] ; 4 uses
  %i.bsw = phi double [ %i.btg, %vec.epilog.scalar.ph866 ], [ %.ph, %vec.epilog.scalar.ph866.preheader ]
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv664
  %i.bsy = load i32, ptr %i.bsx, align 4, !tbaa !125
  %i.bsz = add nsw i32 %i.bsy, %i.brl
  %i.bta = sext i32 %i.bsz to i64
  %i.btb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bta
  %i.btc = load double, ptr %i.btb, align 8, !tbaa !117
  %i.btd = getelementptr inbounds nuw [8 x i8], ptr %i.brj, i64 %indvars.iv664
  %i.bte = load double, ptr %i.btd, align 8, !tbaa !117
  %i.btf = fmul reassoc nsz arcp contract afn double %i.bte, %i.btc
  %i.btg = fsub reassoc nsz arcp contract afn double %i.bsw, %i.btf ; 2 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1
  %.not424.not = icmp slt i64 %indvars.iv664, %i.ny
  br i1 %.not424.not, label %vec.epilog.scalar.ph866, label %._crit_edge540, !llvm.loop !115

.lr.ph.i432:                                      ; preds = %.lr.ph.i432.preheader, %.lr.ph.i432
  %indvars.iv.i434 = phi i64 [ %indvars.iv.next.i435.1, %.lr.ph.i432 ], [ 0, %.lr.ph.i432.preheader ] ; 5 uses
  %.03.i = phi double [ %i.buk, %.lr.ph.i432 ], [ 0.000000e+00, %.lr.ph.i432.preheader ]
  %.0261.i = phi double [ %i.bum, %.lr.ph.i432 ], [ 0.000000e+00, %.lr.ph.i432.preheader ] ; 2 uses
  %niter2133 = phi i64 [ %niter2133.next.1, %.lr.ph.i432 ], [ 0, %.lr.ph.i432.preheader ]
  %i.bth = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i434
  %i.bti = load double, ptr %i.bth, align 8, !tbaa !117 ; 2 uses
  %i.btj = fmul reassoc nsz arcp contract afn double %i.bti, %i.bti
  %i.btk = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i434
  %i.btl = load double, ptr %i.btk, align 8, !tbaa !117 ; 2 uses
  %i.btm = fmul reassoc nsz arcp contract afn double %i.btl, %i.btl
  %i.btn = fadd reassoc nsz arcp contract afn double %i.btm, %i.btj
  %i.bto = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i434
  %i.btp = load double, ptr %i.bto, align 8, !tbaa !117 ; 2 uses
  %i.btq = fmul reassoc nsz arcp contract afn double %i.btp, %i.btp
  %i.btr = fadd reassoc nsz arcp contract afn double %i.btn, %i.btq
  %i.bts = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.btr) ; 3 uses
  %i.btt = fmul reassoc nsz arcp contract afn double %i.bts, %i.jk
  %i.btu = fadd reassoc nsz arcp contract afn double %i.btt, %.03.i
  %i.btv = fcmp reassoc nsz arcp contract afn ogt double %.0261.i, %i.bts
  %i.btw = select reassoc nsz arcp contract afn i1 %i.btv, double %.0261.i, double %i.bts ; 2 uses
  %indvars.iv.next.i435 = or disjoint i64 %indvars.iv.i434, 1 ; 3 uses
  %i.btx = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next.i435
  %i.bty = load double, ptr %i.btx, align 8, !tbaa !117 ; 2 uses
  %i.btz = fmul reassoc nsz arcp contract afn double %i.bty, %i.bty
  %i.bua = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i435
  %i.bub = load double, ptr %i.bua, align 8, !tbaa !117 ; 2 uses
  %i.buc = fmul reassoc nsz arcp contract afn double %i.bub, %i.bub
  %i.bud = fadd reassoc nsz arcp contract afn double %i.buc, %i.btz
  %i.bue = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next.i435
  %i.buf = load double, ptr %i.bue, align 8, !tbaa !117 ; 2 uses
  %i.bug = fmul reassoc nsz arcp contract afn double %i.buf, %i.buf
  %i.buh = fadd reassoc nsz arcp contract afn double %i.bud, %i.bug
  %i.bui = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.buh) ; 3 uses
  %i.buj = fmul reassoc nsz arcp contract afn double %i.bui, %i.jl
  %i.buk = fadd reassoc nsz arcp contract afn double %i.buj, %i.btu ; 3 uses
  %i.bul = fcmp reassoc nsz arcp contract afn ogt double %i.btw, %i.bui
  %i.bum = select reassoc nsz arcp contract afn i1 %i.bul, double %i.btw, double %i.bui ; 3 uses
  %indvars.iv.next.i435.1 = add nuw nsw i64 %indvars.iv.i434, 2 ; 2 uses
  %niter2133.next.1 = add i64 %niter2133, 2       ; 2 uses
  %niter2133.ncmp.1 = icmp eq i64 %niter2133.next.1, %unroll_iter2132
  br i1 %niter2133.ncmp.1, label %compute_error.exit.unr-lcssa, label %.lr.ph.i432

compute_error.exit.unr-lcssa:                     ; preds = %.lr.ph.i432
  br i1 %lcmp.mod2128.not, label %compute_error.exit, label %.lr.ph.i432.epil.preheader

.lr.ph.i432.epil.preheader:                       ; preds = %compute_error.exit.unr-lcssa, %.lr.ph.i432.preheader
  %indvars.iv.i434.epil.init = phi i64 [ 0, %.lr.ph.i432.preheader ], [ %indvars.iv.next.i435.1, %compute_error.exit.unr-lcssa ] ; 3 uses
  %.03.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i432.preheader ], [ %i.buk, %compute_error.exit.unr-lcssa ]
  %.0261.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i432.preheader ], [ %i.bum, %compute_error.exit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod2131)
  %i.bun = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.i434.epil.init
  %i.buo = load double, ptr %i.bun, align 8, !tbaa !117 ; 2 uses
  %i.bup = fmul reassoc nsz arcp contract afn double %i.buo, %i.buo
  %i.buq = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i434.epil.init
  %i.bur = load double, ptr %i.buq, align 8, !tbaa !117 ; 2 uses
  %i.bus = fmul reassoc nsz arcp contract afn double %i.bur, %i.bur
  %i.but = fadd reassoc nsz arcp contract afn double %i.bus, %i.bup
  %i.buu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i434.epil.init
  %i.buv = load double, ptr %i.buu, align 8, !tbaa !117 ; 2 uses
  %i.buw = fmul reassoc nsz arcp contract afn double %i.buv, %i.buv
  %i.bux = fadd reassoc nsz arcp contract afn double %i.but, %i.buw
  %i.buy = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bux) ; 3 uses
  %i.buz = fmul reassoc nsz arcp contract afn double %i.buy, %i.jm
  %i.bva = fadd reassoc nsz arcp contract afn double %i.buz, %.03.i.epil.init
  %i.bvb = fcmp reassoc nsz arcp contract afn ogt double %.0261.i.epil.init, %i.buy
  %i.bvc = select reassoc nsz arcp contract afn i1 %i.bvb, double %.0261.i.epil.init, double %i.buy
  br label %compute_error.exit

compute_error.exit:                               ; preds = %compute_error.exit.unr-lcssa, %.lr.ph.i432.epil.preheader
  %.lcssa2013.a = phi double [ %i.buk, %compute_error.exit.unr-lcssa ], [ %i.bva, %.lr.ph.i432.epil.preheader ] ; 4 uses
  %.lcssa2012 = phi double [ %i.bum, %compute_error.exit.unr-lcssa ], [ %i.bvc, %.lr.ph.i432.epil.preheader ] ; 2 uses
  %i.bvd = icmp eq i32 %spec.select428, %i.io
  br i1 %i.bvd, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %compute_error.exit
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store double %.lcssa2013.a, ptr %8, align 8, !tbaa !117
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %.not420, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store double %.lcssa2012, ptr %9, align 8, !tbaa !117
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bve = load ptr, ptr @stderr, align 8, !tbaa !133
  %i.bvf = add nsw i32 %i.np, 1
  %i.bvg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bve, ptr noundef nonnull @.str.1, i32 noundef %i.bvf, i32 noundef %i.io, double noundef %.lcssa2013.a, double noundef %.lcssa2012) #18 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %compute_error.exit
  %.not426 = icmp slt i64 %indvars.iv677, %i.ih
  %i.bvh = fcmp reassoc nsz arcp contract afn ult double %.lcssa2013.a, %.0383550
  %or.cond = select i1 %.not426, i1 true, i1 %i.bvh
  br i1 %or.cond, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bvi = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %i.bvi) #19 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge553, label %bb.n

._crit_edge553:                                   ; preds = %bb.at, %bb.n, %dsvd.exit.i, %._crit_edge505
  %.3407 = phi i32 [ -1, %._crit_edge505 ], [ %i.kq, %dsvd.exit.i ], [ -1, %bb.at ], [ %i.kq, %bb.n ]
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !118}
!13 = distinct !{!13, !118}
!14 = distinct !{!14, !118}
!15 = distinct !{!15, !118}
!16 = distinct !{!16, !119, !120}
!17 = distinct !{!17, !119, !120}
!18 = distinct !{!18, !120, !119}
!19 = distinct !{!19, !118}
!20 = distinct !{!20, !119, !120}
!21 = distinct !{!21, !119, !120}
!22 = distinct !{!22, !120, !119}
!23 = distinct !{!23, !118}
!24 = distinct !{!24, !119, !120}
!25 = distinct !{!25, !119, !120}
!26 = distinct !{!26, !118}
!27 = distinct !{!27, !119, !120}
!28 = distinct !{!28, !119, !120}
!29 = distinct !{!29, !118}
!30 = distinct !{!30, !119, !120}
!31 = distinct !{!31, !119, !120}
!32 = distinct !{!32, !118}
!33 = distinct !{!33, !119}
!34 = distinct !{!34, !119}
!35 = distinct !{!35, !119, !120}
!36 = distinct !{!36, !119, !120}
!37 = distinct !{!37, !118}
!38 = distinct !{!38, !119}
!39 = distinct !{!39, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !119, !120}
!43 = distinct !{!43, !119, !120}
!44 = distinct !{!44, !118}
!45 = distinct !{!45, !119}
!46 = distinct !{!46, !119, !120}
!47 = distinct !{!47, !119, !120}
!48 = distinct !{!48, !118}
!49 = distinct !{!49, !119}
!50 = distinct !{!50, !119, !120}
!51 = distinct !{!51, !119, !120}
!52 = distinct !{!52, !119, !120}
!53 = distinct !{!53, !119, !120}
!54 = distinct !{!54, !120, !119}
!55 = distinct !{!55, !119, !120}
!56 = distinct !{!56, !119, !120}
!57 = distinct !{!57, !120, !119}
!58 = distinct !{!58, !120, !119}
!59 = distinct !{!59, !119, !120}
!60 = distinct !{!60, !119, !120}
!61 = distinct !{!61, !120, !119}
!62 = distinct !{!62, !119, !120}
!63 = distinct !{!63, !119, !120}
!64 = distinct !{!64, !119, !120}
!65 = distinct !{!65, !119, !120}
!66 = distinct !{!66, !120, !119}
!67 = distinct !{!67, !120, !119}
!68 = distinct !{!68, !119, !120}
!69 = distinct !{!69, !120, !119}
!70 = distinct !{!70, !119, !120}
!71 = distinct !{!71, !119, !120}
!72 = distinct !{!72, !120, !119}
!73 = distinct !{!73, !118}
!74 = distinct !{!74, !119, !120}
!75 = distinct !{!75, !119, !120}
!76 = distinct !{!76, !120, !119}
!77 = distinct !{!77, !119, !120}
!78 = distinct !{!78, !119, !120}
!79 = distinct !{!79, !118}
!80 = distinct !{!80, !119, !120}
!81 = distinct !{!81, !119, !120}
!82 = distinct !{!82, !118}
!83 = distinct !{!83, !"LVerDomain"}
end_hunk_5
