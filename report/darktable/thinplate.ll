Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thinplate?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"rank %d/%d avg DE %g max DE %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"error increased!\0A\00", align 1
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
  %i.a = add nsw i32 %2, 4                        ; 21 uses
  %i.b = sext i32 %i.a to i64                     ; 32 uses
  %i.c = shl nsw i64 %i.b, 3                      ; 7 uses
  %i.d = mul i64 %i.c, %i.b
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 24 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.preheader462.preheader, label %.preheader458.thread

.preheader462.preheader:                          ; preds = %bb.e
  %i.g = zext nneg i32 %i.a to i64                ; 2 uses
  %wide.trip.count587 = zext nneg i32 %2 to i64   ; 11 uses
  br label %.preheader462

.preheader462:                                    ; preds = %.preheader462.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader462.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.idx718.a = mul nuw nsw i64 %indvars.iv, 24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %.idx718.a ; 3 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !117
  %i.n = mul nuw nsw i64 %indvars.iv, %i.g
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %invariant.gep750 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n
  br label %bb.g

.lr.ph:                                           ; preds = %bb.f
  %i.o = mul nuw nsw i32 %i.a, %2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = zext nneg i32 %i.a to i64                ; 9 uses
  %i.r = zext nneg i32 %2 to i64
  %invariant.gep752 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.p ; 9 uses
  %invariant.gep754 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.r ; 9 uses
  %i.s = add nsw i64 %wide.trip.count587, -1      ; 4 uses
  %xtraiter = and i64 %wide.trip.count587, 7      ; 3 uses
  %i.t = icmp ult i64 %i.s, 7
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count587, 2147483640
  br label %bb.i

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond588.not = icmp eq i64 %indvars.iv.next, %wide.trip.count587
  br i1 %exitcond588.not, label %.lr.ph, label %.preheader462

bb.g:                                             ; preds = %.preheader462, %bb.g
  %indvars.iv583 = phi i64 [ %indvars.iv, %.preheader462 ], [ %indvars.iv.next584, %bb.g ] ; 4 uses
  %.idx719.a = mul nuw nsw i64 %indvars.iv583, 24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %.idx719.a ; 3 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !117
  %i.w = fsub reassoc nsz arcp contract afn double %i.v, %i.i ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !117
  %i.aa = fsub reassoc nsz arcp contract afn double %i.z, %i.k ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, %i.aa
  %i.ac = fadd reassoc nsz arcp contract afn double %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !117
  %i.af = fsub reassoc nsz arcp contract afn double %i.ae, %i.m ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn double %i.af, %i.af
  %i.ah = fadd reassoc nsz arcp contract afn double %i.ac, %i.ag
  %i.ai = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.ah) ; 4 uses
  %i.aj = fmul reassoc nsz arcp contract afn double %i.ai, %i.ai
  %i.ak = fcmp reassoc nsz arcp contract afn olt double %i.ai, f0x3E45798EE0000000
  %i.al = select reassoc nsz arcp contract afn i1 %i.ak, double f0x3E45798EE0000000, double %i.ai
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.am)
  %i.ao = fpext reassoc nsz arcp contract afn float %i.an to double
  %i.ap = fmul reassoc nsz arcp contract afn double %i.aj, %i.ao ; 2 uses
  %i.aq = mul nuw nsw i64 %indvars.iv583, %i.g
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.aq
  store double %i.ap, ptr %gep, align 8, !tbaa !117
  %gep751 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep750, i64 %indvars.iv583
  store double %i.ap, ptr %gep751, align 8, !tbaa !117
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count587
  br i1 %exitcond.not, label %bb.f, label %bb.g

.lr.ph486.unr-lcssa:                              ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph486, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph486.unr-lcssa, %.lr.ph
  %indvars.iv589.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next590.7, %.lr.ph486.unr-lcssa ]
  %lcmp.mod2036 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2036)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv589.epil = phi i64 [ %indvars.iv589.epil.init, %.epil.preheader ], [ %indvars.iv.next590.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %gep753.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv589.epil
  store double 1.000000e+00, ptr %gep753.epil, align 8, !tbaa !117
  %i.ar = mul nuw nsw i64 %indvars.iv589.epil, %i.q
  %gep755.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.ar
  store double 1.000000e+00, ptr %gep755.epil, align 8, !tbaa !117
  %indvars.iv.next590.epil = add nuw nsw i64 %indvars.iv589.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph486, label %bb.h, !llvm.loop !12

.lr.ph486:                                        ; preds = %bb.h, %.lr.ph486.unr-lcssa
  %i.as = add nuw nsw i32 %2, 1
  %i.at = mul nuw nsw i32 %i.as, %i.a
  %i.au = zext nneg i32 %i.at to i64
  %i.av = zext nneg i32 %i.a to i64               ; 5 uses
  %i.aw = zext nneg i32 %2 to i64
  %invariant.gep756 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.au ; 5 uses
  %invariant.gep758 = getelementptr [8 x i8], ptr %i.e, i64 %i.aw ; 5 uses
  %xtraiter2038 = and i64 %wide.trip.count587, 3  ; 3 uses
  %i.ax = icmp ult i64 %i.s, 3
  br i1 %i.ax, label %.epil.preheader2037, label %.lr.ph486.new

.lr.ph486.new:                                    ; preds = %.lr.ph486
  %unroll_iter2042 = and i64 %wide.trip.count587, 2147483644
  br label %bb.k

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv589 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next590.7, %bb.i ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.i ]
  %gep753 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv589
  store double 1.000000e+00, ptr %gep753, align 8, !tbaa !117
  %i.ay = mul nuw nsw i64 %indvars.iv589, %i.q
  %gep755 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.ay
  store double 1.000000e+00, ptr %gep755, align 8, !tbaa !117
  %indvars.iv.next590 = or disjoint i64 %indvars.iv589, 1 ; 2 uses
  %gep753.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590
  store double 1.000000e+00, ptr %gep753.1, align 8, !tbaa !117
  %i.az = mul nuw nsw i64 %indvars.iv.next590, %i.q
  %gep755.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.az
  store double 1.000000e+00, ptr %gep755.1, align 8, !tbaa !117
  %indvars.iv.next590.1 = or disjoint i64 %indvars.iv589, 2 ; 2 uses
  %gep753.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.1
  store double 1.000000e+00, ptr %gep753.2, align 8, !tbaa !117
  %i.ba = mul nuw nsw i64 %indvars.iv.next590.1, %i.q
  %gep755.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.ba
  store double 1.000000e+00, ptr %gep755.2, align 8, !tbaa !117
  %indvars.iv.next590.2 = or disjoint i64 %indvars.iv589, 3 ; 2 uses
  %gep753.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.2
  store double 1.000000e+00, ptr %gep753.3, align 8, !tbaa !117
  %i.bb = mul nuw nsw i64 %indvars.iv.next590.2, %i.q
  %gep755.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.bb
  store double 1.000000e+00, ptr %gep755.3, align 8, !tbaa !117
  %indvars.iv.next590.3 = or disjoint i64 %indvars.iv589, 4 ; 2 uses
  %gep753.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.3
  store double 1.000000e+00, ptr %gep753.4, align 8, !tbaa !117
  %i.bc = mul nuw nsw i64 %indvars.iv.next590.3, %i.q
  %gep755.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.bc
  store double 1.000000e+00, ptr %gep755.4, align 8, !tbaa !117
  %indvars.iv.next590.4 = or disjoint i64 %indvars.iv589, 5 ; 2 uses
  %gep753.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.4
  store double 1.000000e+00, ptr %gep753.5, align 8, !tbaa !117
  %i.bd = mul nuw nsw i64 %indvars.iv.next590.4, %i.q
  %gep755.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.bd
  store double 1.000000e+00, ptr %gep755.5, align 8, !tbaa !117
  %indvars.iv.next590.5 = or disjoint i64 %indvars.iv589, 6 ; 2 uses
  %gep753.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.5
  store double 1.000000e+00, ptr %gep753.6, align 8, !tbaa !117
  %i.be = mul nuw nsw i64 %indvars.iv.next590.5, %i.q
  %gep755.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.be
  store double 1.000000e+00, ptr %gep755.6, align 8, !tbaa !117
  %indvars.iv.next590.6 = or disjoint i64 %indvars.iv589, 7 ; 2 uses
  %gep753.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep752, i64 %indvars.iv.next590.6
  store double 1.000000e+00, ptr %gep753.7, align 8, !tbaa !117
  %i.bf = mul nuw nsw i64 %indvars.iv.next590.6, %i.q
  %gep755.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep754, i64 %i.bf
  store double 1.000000e+00, ptr %gep755.7, align 8, !tbaa !117
  %indvars.iv.next590.7 = add nuw nsw i64 %indvars.iv589, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph486.unr-lcssa, label %bb.i

.lr.ph488.unr-lcssa:                              ; preds = %bb.k
  %lcmp.mod2040.not = icmp eq i64 %xtraiter2038, 0
  br i1 %lcmp.mod2040.not, label %.lr.ph488, label %.epil.preheader2037

.epil.preheader2037:                              ; preds = %.lr.ph488.unr-lcssa, %.lr.ph486
  %indvars.iv594.epil.init = phi i64 [ 0, %.lr.ph486 ], [ %indvars.iv.next595.3, %.lr.ph488.unr-lcssa ]
  %lcmp.mod2041 = icmp ne i64 %xtraiter2038, 0
  tail call void @llvm.assume(i1 %lcmp.mod2041)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader2037
  %indvars.iv594.epil = phi i64 [ %indvars.iv594.epil.init, %.epil.preheader2037 ], [ %indvars.iv.next595.epil, %bb.j ] ; 4 uses
  %epil.iter2039 = phi i64 [ 0, %.epil.preheader2037 ], [ %epil.iter2039.next, %bb.j ]
  %.idx720.epil.a = mul nuw nsw i64 %indvars.iv594.epil, 24
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx720.epil.a
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !117 ; 2 uses
  %gep757.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep756, i64 %indvars.iv594.epil
  store double %i.bh, ptr %gep757.epil, align 8, !tbaa !117
  %i.bi = mul nuw nsw i64 %indvars.iv594.epil, %i.av
  %gep759.epil = getelementptr [8 x i8], ptr %invariant.gep758, i64 %i.bi
  %i.bj = getelementptr i8, ptr %gep759.epil, i64 8
  store double %i.bh, ptr %i.bj, align 8, !tbaa !117
  %indvars.iv.next595.epil = add nuw nsw i64 %indvars.iv594.epil, 1
  %epil.iter2039.next = add i64 %epil.iter2039, 1 ; 2 uses
  %epil.iter2039.cmp.not = icmp eq i64 %epil.iter2039.next, %xtraiter2038
end_hunk_0
begin_hunk_1_@thinplate_match:bb.a
  %epil.iter2046.cmp.not = icmp eq i64 %epil.iter2046.next, %xtraiter2045
  br i1 %epil.iter2046.cmp.not, label %.lr.ph490, label %bb.l, !llvm.loop !14

.lr.ph490:                                        ; preds = %bb.l, %.lr.ph490.unr-lcssa
  %i.cl = add nuw nsw i32 %2, 3
  %i.cm = mul nuw nsw i32 %i.cl, %i.a
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = zext nneg i32 %i.a to i64               ; 5 uses
  %i.cp = zext nneg i32 %2 to i64
  %invariant.gep764 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cn ; 5 uses
  %invariant.gep766 = getelementptr [8 x i8], ptr %i.e, i64 %i.cp ; 5 uses
  %xtraiter2052 = and i64 %wide.trip.count587, 3  ; 3 uses
  %i.cq = icmp ult i64 %i.s, 3
  br i1 %i.cq, label %.epil.preheader2051, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.lr.ph490
  %unroll_iter2056 = and i64 %wide.trip.count587, 2147483644
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph488.new
  %indvars.iv599 = phi i64 [ 0, %.lr.ph488.new ], [ %indvars.iv.next600.3, %bb.m ] ; 7 uses
  %niter2050 = phi i64 [ 0, %.lr.ph488.new ], [ %niter2050.next.3, %bb.m ]
  %.idx721.a = mul nuw nsw i64 %indvars.iv599, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.a
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !117 ; 2 uses
  %gep761 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv599
  store double %i.ct, ptr %gep761, align 8, !tbaa !117
  %i.cu = mul nuw nsw i64 %indvars.iv599, %i.bn
  %gep763 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.cu
  %i.cv = getelementptr i8, ptr %gep763, i64 16
  store double %i.ct, ptr %i.cv, align 8, !tbaa !117
  %indvars.iv.next600 = or disjoint i64 %indvars.iv599, 1 ; 3 uses
  %.idx721.1.a = mul nuw nsw i64 %indvars.iv.next600, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.1.a
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !117 ; 2 uses
  %gep761.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600
  store double %i.cy, ptr %gep761.1, align 8, !tbaa !117
  %i.cz = mul nuw nsw i64 %indvars.iv.next600, %i.bn
  %gep763.1 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.cz
  %i.da = getelementptr i8, ptr %gep763.1, i64 16
  store double %i.cy, ptr %i.da, align 8, !tbaa !117
  %indvars.iv.next600.1 = or disjoint i64 %indvars.iv599, 2 ; 3 uses
  %.idx721.2.a = mul nuw nsw i64 %indvars.iv.next600.1, 24
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.2.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !117 ; 2 uses
  %gep761.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600.1
  store double %i.dd, ptr %gep761.2, align 8, !tbaa !117
  %i.de = mul nuw nsw i64 %indvars.iv.next600.1, %i.bn
  %gep763.2 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.de
  %i.df = getelementptr i8, ptr %gep763.2, i64 16
  store double %i.dd, ptr %i.df, align 8, !tbaa !117
  %indvars.iv.next600.2 = or disjoint i64 %indvars.iv599, 3 ; 3 uses
  %.idx721.3.a = mul nuw nsw i64 %indvars.iv.next600.2, 24
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx721.3.a
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load double, ptr %i.dh, align 8, !tbaa !117 ; 2 uses
  %gep761.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep760, i64 %indvars.iv.next600.2
  store double %i.di, ptr %gep761.3, align 8, !tbaa !117
  %i.dj = mul nuw nsw i64 %indvars.iv.next600.2, %i.bn
  %gep763.3 = getelementptr [8 x i8], ptr %invariant.gep762, i64 %i.dj
  %i.dk = getelementptr i8, ptr %gep763.3, i64 16
  store double %i.di, ptr %i.dk, align 8, !tbaa !117
  %indvars.iv.next600.3 = add nuw nsw i64 %indvars.iv599, 4 ; 2 uses
  %niter2050.next.3 = add i64 %niter2050, 4       ; 2 uses
  %niter2050.ncmp.3 = icmp eq i64 %niter2050.next.3, %unroll_iter2049
  br i1 %niter2050.ncmp.3, label %.lr.ph490.unr-lcssa, label %bb.m

bb.n:                                             ; preds = %bb.n, %.lr.ph490.new
  %indvars.iv604 = phi i64 [ 0, %.lr.ph490.new ], [ %indvars.iv.next605.3, %bb.n ] ; 7 uses
  %niter2057 = phi i64 [ 0, %.lr.ph490.new ], [ %niter2057.next.3, %bb.n ]
  %.idx722 = mul nuw nsw i64 %indvars.iv604, 24
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !117 ; 2 uses
  %gep765 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv604
  store double %i.dn, ptr %gep765, align 8, !tbaa !117
  %i.do = mul nuw nsw i64 %indvars.iv604, %i.co
  %gep767 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.do
  %i.dp = getelementptr i8, ptr %gep767, i64 24
  store double %i.dn, ptr %i.dp, align 8, !tbaa !117
  %indvars.iv.next605 = or disjoint i64 %indvars.iv604, 1 ; 3 uses
  %.idx722.1 = mul nuw nsw i64 %indvars.iv.next605, 24
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !117 ; 2 uses
  %gep765.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605
  store double %i.ds, ptr %gep765.1, align 8, !tbaa !117
  %i.dt = mul nuw nsw i64 %indvars.iv.next605, %i.co
  %gep767.1 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.dt
  %i.du = getelementptr i8, ptr %gep767.1, i64 24
  store double %i.ds, ptr %i.du, align 8, !tbaa !117
  %indvars.iv.next605.1 = or disjoint i64 %indvars.iv604, 2 ; 3 uses
  %.idx722.2 = mul nuw nsw i64 %indvars.iv.next605.1, 24
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !117 ; 2 uses
  %gep765.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605.1
  store double %i.dx, ptr %gep765.2, align 8, !tbaa !117
  %i.dy = mul nuw nsw i64 %indvars.iv.next605.1, %i.co
  %gep767.2 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.dy
  %i.dz = getelementptr i8, ptr %gep767.2, i64 24
  store double %i.dx, ptr %i.dz, align 8, !tbaa !117
  %indvars.iv.next605.2 = or disjoint i64 %indvars.iv604, 3 ; 3 uses
  %.idx722.3 = mul nuw nsw i64 %indvars.iv.next605.2, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !117 ; 2 uses
  %gep765.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next605.2
  store double %i.ec, ptr %gep765.3, align 8, !tbaa !117
  %i.ed = mul nuw nsw i64 %indvars.iv.next605.2, %i.co
  %gep767.3 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.ed
  %i.ee = getelementptr i8, ptr %gep767.3, i64 24
  store double %i.ec, ptr %i.ee, align 8, !tbaa !117
  %indvars.iv.next605.3 = add nuw nsw i64 %indvars.iv604, 4 ; 2 uses
  %niter2057.next.3 = add i64 %niter2057, 4       ; 2 uses
  %niter2057.ncmp.3 = icmp eq i64 %niter2057.next.3, %unroll_iter2056
  br i1 %niter2057.ncmp.3, label %.preheader458.thread.loopexit.unr-lcssa, label %bb.n

.preheader458.thread.loopexit.unr-lcssa:          ; preds = %bb.n
  %lcmp.mod2054.not = icmp eq i64 %xtraiter2052, 0
  br i1 %lcmp.mod2054.not, label %.preheader458.thread, label %.epil.preheader2051

.epil.preheader2051:                              ; preds = %.preheader458.thread.loopexit.unr-lcssa, %.lr.ph490
  %indvars.iv604.epil.init = phi i64 [ 0, %.lr.ph490 ], [ %indvars.iv.next605.3, %.preheader458.thread.loopexit.unr-lcssa ]
  %lcmp.mod2055 = icmp ne i64 %xtraiter2052, 0
  tail call void @llvm.assume(i1 %lcmp.mod2055)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader2051
  %indvars.iv604.epil = phi i64 [ %indvars.iv604.epil.init, %.epil.preheader2051 ], [ %indvars.iv.next605.epil, %bb.o ] ; 4 uses
  %epil.iter2053 = phi i64 [ 0, %.epil.preheader2051 ], [ %epil.iter2053.next, %bb.o ]
  %.idx722.epil = mul nuw nsw i64 %indvars.iv604.epil, 24
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 %.idx722.epil
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !117 ; 2 uses
  %gep765.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep764, i64 %indvars.iv604.epil
  store double %i.eh, ptr %gep765.epil, align 8, !tbaa !117
  %i.ei = mul nuw nsw i64 %indvars.iv604.epil, %i.co
  %gep767.epil = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.ei
  %i.ej = getelementptr i8, ptr %gep767.epil, i64 24
  store double %i.eh, ptr %i.ej, align 8, !tbaa !117
  %indvars.iv.next605.epil = add nuw nsw i64 %indvars.iv604.epil, 1
  %epil.iter2053.next = add i64 %epil.iter2053, 1 ; 2 uses
  %epil.iter2053.cmp.not = icmp eq i64 %epil.iter2053.next, %xtraiter2052
  br i1 %epil.iter2053.cmp.not, label %.preheader458.thread, label %bb.o, !llvm.loop !15

.preheader458.thread:                             ; preds = %.preheader458.thread.loopexit.unr-lcssa, %bb.o, %bb.e
  %i.ek = add i32 %2, 5
  %i.el = mul i32 %2, %i.ek                       ; 4 uses
  %i.em = sext i32 %i.el to i64
  %i.en = shl nsw i64 %i.em, 3
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.en
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep, i8 0, i64 32, i1 false), !tbaa !117
  %i.eo = add i32 %i.el, %i.a
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 3
  %scevgep.1 = getelementptr i8, ptr %i.e, i64 %i.eq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.1, i8 0, i64 32, i1 false), !tbaa !117
  %i.er = shl i32 %i.a, 1
  %i.es = add i32 %i.el, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = shl nsw i64 %i.et, 3
  %scevgep.2 = getelementptr i8, ptr %i.e, i64 %i.eu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.2, i8 0, i64 32, i1 false), !tbaa !117
  %i.ev = mul i32 %i.a, 3
  %i.ew = add i32 %i.el, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 3
  %scevgep.3 = getelementptr i8, ptr %i.e, i64 %i.ey
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.3, i8 0, i64 32, i1 false), !tbaa !117
  %i.ez = tail call noalias ptr @malloc(i64 noundef %i.c) #15 ; 9 uses
  %i.fa = icmp sgt i32 %2, -4                     ; 2 uses
  br i1 %i.fa, label %.lr.ph498, label %._crit_edge499

.lr.ph498:                                        ; preds = %.preheader458.thread
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count624 = zext nneg i32 %smax to i64 ; 7 uses
  %min.iters.check = icmp slt i32 %2, 0
  %min.iters.check803 = icmp slt i32 %2, 12
  %i.fb = and i64 %wide.trip.count624, 12
  %n.vec = and i64 %wide.trip.count624, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count624
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  %n.vec815 = and i64 %wide.trip.count624, 2147483644 ; 3 uses
  %broadcast.splatinsert816 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat817 = shufflevector <4 x i64> %broadcast.splatinsert816, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n827 = icmp eq i64 %n.vec815, %wide.trip.count624
  br label %iter.check

._crit_edge499:                                   ; preds = %.loopexit, %.preheader458.thread
  %i.fc = zext i32 %i.a to i64                    ; 48 uses
  %i.fd = sext i32 %1 to i64
  %i.fe = shl nsw i64 %i.fd, 3                    ; 2 uses
  %i.ff = mul i64 %i.fe, %i.b
  %i.fg = tail call noalias ptr @malloc(i64 noundef %i.ff) #15 ; 13 uses
  %i.fh = tail call noalias ptr @malloc(i64 noundef %i.fe) #15 ; 9 uses
  %i.fi = icmp sgt i32 %1, 0                      ; 3 uses
  br i1 %i.fi, label %.lr.ph504.preheader, label %._crit_edge505

iter.check:                                       ; preds = %.loopexit, %.lr.ph498
  %indvars.iv620 = phi i64 [ 0, %.lr.ph498 ], [ %indvars.iv.next621, %.loopexit ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv620
  %invariant.gep768 = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv620 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check803, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ]
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check ] ; 5 uses
  %vec.phi = phi <4 x double> [ %i.fs, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi804.a = phi <4 x double> [ %i.ft, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi805.a = phi <4 x double> [ %i.fu, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi806 = phi <4 x double> [ %i.fv, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.fk = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.fl = mul nuw nsw <4 x i64> %step.add, %broadcast.splat
  %i.fm = mul nuw nsw <4 x i64> %step.add.2, %broadcast.splat
  %i.fn = mul nuw nsw <4 x i64> %step.add.3, %broadcast.splat
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.fk
  %wide.gep807.a = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.fl
  %wide.gep808.a = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.fm
  %wide.gep809 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.fn
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %wide.masked.gather810.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep807.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %wide.masked.gather811.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep808.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %wide.masked.gather812 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep809, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather, %wide.masked.gather
  %i.fp = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather810.a, %wide.masked.gather810.a
  %i.fq = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather811.a, %wide.masked.gather811.a
  %i.fr = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather812, %wide.masked.gather812
  %i.fs = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi, %i.fo ; 2 uses
  %i.ft = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi804.a, %i.fp ; 2 uses
  %i.fu = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi805.a, %i.fq ; 2 uses
  %i.fv = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi806, %i.fr ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x double> %i.ft, %i.fs
  %bin.rdx813.a = fadd reassoc nsz arcp contract afn <4 x double> %i.fu, %bin.rdx
  %bin.rdx814 = fadd reassoc nsz arcp contract afn <4 x double> %i.fv, %bin.rdx813.a
  %i.fx = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx814) ; 3 uses
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi double [ %i.fx, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.fy = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx, i64 0
  %broadcast.splatinsert818 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat819 = shufflevector <4 x i64> %broadcast.splatinsert818, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat819, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index820 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next825, %vec.epilog.vector.body ]
  %vec.ind821 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next826, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi822 = phi <4 x double> [ %i.fy, %vec.epilog.ph ], [ %i.gb, %vec.epilog.vector.body ]
  %i.fz = mul nuw nsw <4 x i64> %vec.ind821, %broadcast.splat817
  %wide.gep823 = getelementptr [8 x i8], ptr %invariant.gep768, <4 x i64> %i.fz
  %wide.masked.gather824 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep823, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117 ; 2 uses
  %i.ga = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather824, %wide.masked.gather824
  %i.gb = fadd reassoc nsz arcp contract afn <4 x double> %vec.phi822, %i.ga ; 2 uses
  %index.next825 = add nuw i64 %index820, 4       ; 2 uses
  %vec.ind.next826 = add nuw nsw <4 x i64> %vec.ind821, splat (i64 4)
  %i.gc = icmp eq i64 %index.next825, %n.vec815
  br i1 %i.gc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gd = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gb) ; 2 uses
  br i1 %cmp.n827, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv615.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec815, %vec.epilog.middle.block ]
  %.ph2029 = phi double [ 0.000000e+00, %iter.check ], [ %i.fx, %vec.epilog.iter.check ], [ %i.gd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa802 = phi double [ %i.gd, %vec.epilog.middle.block ], [ %i.fx, %middle.block ], [ %i.gk, %vec.epilog.scalar.ph ]
  %i.ge = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %.lcssa802)
  %i.gf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ge
  store double %i.gf, ptr %i.fj, align 8, !tbaa !117
  %indvars.iv.next621 = add nuw nsw i64 %indvars.iv620, 1 ; 2 uses
  %exitcond625.not = icmp eq i64 %indvars.iv.next621, %wide.trip.count624
  br i1 %exitcond625.not, label %._crit_edge499, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv615 = phi i64 [ %indvars.iv.next616, %vec.epilog.scalar.ph ], [ %indvars.iv615.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gg = phi double [ %i.gk, %vec.epilog.scalar.ph ], [ %.ph2029, %vec.epilog.scalar.ph.preheader ]
  %i.gh = mul nuw nsw i64 %indvars.iv615, %i.b
  %gep769 = getelementptr [8 x i8], ptr %invariant.gep768, i64 %i.gh
  %i.gi = load double, ptr %gep769, align 8, !tbaa !117 ; 2 uses
  %i.gj = fmul reassoc nsz arcp contract afn double %i.gi, %i.gi
  %i.gk = fadd reassoc nsz arcp contract afn double %i.gg, %i.gj ; 2 uses
  %indvars.iv.next616 = add nuw nsw i64 %indvars.iv615, 1 ; 2 uses
  %exitcond619.not = icmp eq i64 %indvars.iv.next616, %wide.trip.count624
  br i1 %exitcond619.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !18

.lr.ph504.preheader:                              ; preds = %._crit_edge499
  %i.gl = zext nneg i32 %1 to i64
  %i.gm = shl nuw nsw i64 %i.gl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fh, ptr align 8 %4, i64 %i.gm, i1 false), !tbaa !124
  %wide.trip.count632 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter2058 = and i64 %wide.trip.count632, 3  ; 3 uses
  %i.gn = icmp ult i32 %1, 4
  br i1 %i.gn, label %.lr.ph504.epil.preheader, label %.lr.ph504.preheader.new

.lr.ph504.preheader.new:                          ; preds = %.lr.ph504.preheader
  %unroll_iter2062 = and i64 %wide.trip.count632, 2147483644
  br label %.lr.ph504

._crit_edge505.loopexit.unr-lcssa:                ; preds = %.lr.ph504
  %lcmp.mod2060.not = icmp eq i64 %xtraiter2058, 0
  br i1 %lcmp.mod2060.not, label %._crit_edge505, label %.lr.ph504.epil.preheader

.lr.ph504.epil.preheader:                         ; preds = %._crit_edge505.loopexit.unr-lcssa, %.lr.ph504.preheader
  %indvars.iv629.epil.init = phi i64 [ 0, %.lr.ph504.preheader ], [ %indvars.iv.next630.3, %._crit_edge505.loopexit.unr-lcssa ]
  %lcmp.mod2061 = icmp ne i64 %xtraiter2058, 0
  tail call void @llvm.assume(i1 %lcmp.mod2061)
  br label %.lr.ph504.epil

.lr.ph504.epil:                                   ; preds = %.lr.ph504.epil, %.lr.ph504.epil.preheader
  %indvars.iv629.epil = phi i64 [ %indvars.iv629.epil.init, %.lr.ph504.epil.preheader ], [ %indvars.iv.next630.epil, %.lr.ph504.epil ] ; 3 uses
  %epil.iter2059 = phi i64 [ 0, %.lr.ph504.epil.preheader ], [ %epil.iter2059.next, %.lr.ph504.epil ]
  %i.go = mul nuw nsw i64 %indvars.iv629.epil, %i.fc
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv629.epil
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gp, ptr align 8 %i.gr, i64 %i.c, i1 false)
  %indvars.iv.next630.epil = add nuw nsw i64 %indvars.iv629.epil, 1
  %epil.iter2059.next = add i64 %epil.iter2059, 1 ; 2 uses
  %epil.iter2059.cmp.not = icmp eq i64 %epil.iter2059.next, %xtraiter2058
  br i1 %epil.iter2059.cmp.not, label %._crit_edge505, label %.lr.ph504.epil, !llvm.loop !19

._crit_edge505:                                   ; preds = %._crit_edge505.loopexit.unr-lcssa, %.lr.ph504.epil, %._crit_edge499
  %i.gs = sext i32 %5 to i64                      ; 105 uses
  %i.gt = shl nsw i64 %i.gs, 3                    ; 3 uses
  %i.gu = tail call noalias ptr @malloc(i64 noundef %i.gt) #15 ; 15 uses
  %i.gv = mul i64 %i.gt, %i.gs
  %i.gw = tail call noalias ptr @malloc(i64 noundef %i.gv) #15 ; 10 uses
  %i.gx = mul nsw i64 %i.gs, %i.b
  %i.gy = tail call noalias ptr @calloc(i64 noundef %i.gx, i64 noundef 8) #16 ; 31 uses
  br i1 %i.fa, label %.lr.ph552, label %._crit_edge553

.lr.ph552:                                        ; preds = %._crit_edge505
  %i.gz = add nsw i32 %5, -4                      ; 3 uses
  %i.ha = add i32 %5, -1                          ; 8 uses
  %.0661700.i.i = add i32 %5, 1                   ; 3 uses
  %i.hb = xor i32 %5, -1
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fc ; 3 uses
  %.idx = shl nuw nsw i64 %i.fc, 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx ; 3 uses
  %i.he = uitofp nneg i32 %i.a to double          ; 3 uses
  %smax637 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count680 = zext nneg i32 %smax637 to i64 ; 19 uses
  %wide.trip.count649 = zext nneg i32 %1 to i64
  %wide.trip.count675 = zext nneg i32 %1 to i64
  %i.hf = shl nuw nsw i64 %i.fc, 3                ; 2 uses
  %scevgep1011.a = getelementptr i8, ptr %i.gy, i64 %i.hf
  %scevgep1014.a = getelementptr i8, ptr %i.gy, i64 %i.hf
  %i.hg = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.hh = sext i32 %i.ha to i64
  %i.hi = add nsw i64 %i.hg, 8
  %i.hj = add i32 %2, 2
  %i.hk = sext i32 %i.ha to i64
  %i.hl = shl nuw nsw i64 %i.fc, 3
  %i.hm = getelementptr i8, ptr %i.gy, i64 %i.hl
  %scevgep1629 = getelementptr i8, ptr %i.hm, i64 -8
  %i.hn = add nsw i64 %i.fc, -1                   ; 4 uses
  %i.ho = xor i32 %2, 4
  %i.hp = add i32 %2, 3
  %xtraiter2064 = and i64 %wide.trip.count680, 3  ; 3 uses
  %i.hq = icmp slt i32 %2, 0
  %unroll_iter2069 = and i64 %wide.trip.count680, 2147483644
  %lcmp.mod2066.not = icmp eq i64 %xtraiter2064, 0
  %lcmp.mod2068 = icmp ne i64 %xtraiter2064, 0
  %min.iters.check1863 = icmp slt i32 %2, 0
  %min.iters.check1865 = icmp slt i32 %2, 12
  %i.hr = and i64 %wide.trip.count680, 12
  %n.vec1867 = and i64 %wide.trip.count680, 2147483632 ; 4 uses
  %broadcast.splatinsert1868 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1869 = shufflevector <4 x i64> %broadcast.splatinsert1868, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n1898 = icmp eq i64 %n.vec1867, %wide.trip.count680
  %min.epilog.iters.check1902 = icmp eq i64 %i.hr, 0
  %n.vec1906 = and i64 %wide.trip.count680, 2147483644 ; 3 uses
  %broadcast.splatinsert1907 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1908 = shufflevector <4 x i64> %broadcast.splatinsert1907, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1922 = icmp eq i64 %n.vec1906, %wide.trip.count680
  %min.iters.check1815 = icmp sgt i32 %2, -1
  %ident.check1813.not = icmp eq i32 %5, 1
  %or.cond1927.a = and i1 %min.iters.check1815, %ident.check1813.not
  %min.iters.check1817 = icmp slt i32 %2, 12
  %i.hs = and i64 %wide.trip.count680, 12
  %n.vec1819 = and i64 %wide.trip.count680, 2147483632 ; 4 uses
  %broadcast.splatinsert1820 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1821 = shufflevector <4 x i64> %broadcast.splatinsert1820, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n1839 = icmp eq i64 %n.vec1819, %wide.trip.count680
  %min.epilog.iters.check1843 = icmp eq i64 %i.hs, 0
  %n.vec1846 = and i64 %wide.trip.count680, 2147483644 ; 3 uses
  %broadcast.splatinsert1847 = insertelement <4 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat1848 = shufflevector <4 x i64> %broadcast.splatinsert1847, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1860 = icmp eq i64 %n.vec1846, %wide.trip.count680
  %ident.check1772.not = icmp eq i32 %5, 1
  %ident.check1727.not = icmp eq i32 %5, 1
  %ident.check1681.not = icmp eq i32 %5, 1
  %ident.check1615.not = icmp eq i32 %5, 1
  %ident.check1580.not = icmp eq i32 %5, 1
  %ident.check1183.not = icmp eq i32 %5, 1
  %ident.check1137.not = icmp eq i32 %5, 1
  %ident.check1069.not = icmp eq i32 %5, 1
  %ident.check1034.not = icmp eq i32 %5, 1
  %min.iters.check1016 = icmp ugt i32 %i.a, 7
  %ident.check1005.not = icmp eq i32 %5, 1
  %or.cond1937.a = and i1 %min.iters.check1016, %ident.check1005.not
  %n.vec1018 = and i64 %i.fc, 4294967288          ; 3 uses
  %cmp.n1031 = icmp eq i64 %n.vec1018, %i.fc
  %xtraiter2103 = and i64 %i.fc, 1
  %lcmp.mod2104.not = icmp eq i64 %xtraiter2103, 0
  %i.ht = add nsw i64 %i.fc, -1
  %ident.check1925.not = icmp eq i32 %5, 1
  %xtraiter2114 = and i64 %i.fc, 1
  %i.hu = icmp eq i64 %i.hn, 0
  %unroll_iter2118 = and i64 %i.fc, 4294967294
  %lcmp.mod2116.not = icmp eq i64 %xtraiter2114, 0
  %lcmp.mod2117 = trunc i32 %2 to i1
  %xtraiter2120 = and i64 %i.fc, 1
  %i.hv = icmp eq i64 %i.hn, 0
  %unroll_iter2124 = and i64 %i.fc, 4294967294
  %lcmp.mod2122.not = icmp eq i64 %xtraiter2120, 0
  %lcmp.mod2123 = trunc i32 %2 to i1
  %min.iters.check961 = icmp ult i32 %2, -4
  %ident.check.not = icmp eq i32 %5, 1
  %or.cond1938 = and i1 %min.iters.check961, %ident.check.not
  %min.iters.check963 = icmp ult i32 %i.a, 16
  %i.hw = and i64 %i.fc, 12
  %n.vec965 = and i64 %i.fc, 4294967280           ; 4 uses
  %cmp.n985 = icmp eq i64 %n.vec965, %i.fc
  %min.epilog.iters.check989 = icmp eq i64 %i.hw, 0
  %n.vec993 = and i64 %i.fc, 4294967292           ; 3 uses
  %cmp.n1001 = icmp eq i64 %n.vec993, %i.fc
  %xtraiter2137 = and i64 %i.fc, 1
  %i.hx = icmp eq i64 %i.hn, 0
  %unroll_iter2143 = and i64 %i.fc, 4294967294
  %i.hy = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.he
  %i.hz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.he
  %lcmp.mod2139.not = icmp eq i64 %xtraiter2137, 0
  %lcmp.mod2142 = trunc i32 %2 to i1
  %i.ia = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.he
  br label %bb.p

.lr.ph504:                                        ; preds = %.lr.ph504, %.lr.ph504.preheader.new
  %indvars.iv629 = phi i64 [ 0, %.lr.ph504.preheader.new ], [ %indvars.iv.next630.3, %.lr.ph504 ] ; 6 uses
  %niter2063 = phi i64 [ 0, %.lr.ph504.preheader.new ], [ %niter2063.next.3, %.lr.ph504 ]
  %i.ib = mul nuw nsw i64 %indvars.iv629, %i.fc
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv629
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ic, ptr align 8 %i.ie, i64 %i.c, i1 false)
  %indvars.iv.next630 = or disjoint i64 %indvars.iv629, 1 ; 2 uses
  %i.if = mul nuw nsw i64 %indvars.iv.next630, %i.fc
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.if
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.next630
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ig, ptr align 8 %i.ii, i64 %i.c, i1 false)
  %indvars.iv.next630.1 = or disjoint i64 %indvars.iv629, 2 ; 2 uses
  %i.ij = mul nuw nsw i64 %indvars.iv.next630.1, %i.fc
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.next630.1
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ik, ptr align 8 %i.im, i64 %i.c, i1 false)
  %indvars.iv.next630.2 = or disjoint i64 %indvars.iv629, 3 ; 2 uses
  %i.in = mul nuw nsw i64 %indvars.iv.next630.2, %i.fc
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.next630.2
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.io, ptr align 8 %i.iq, i64 %i.c, i1 false)
  %indvars.iv.next630.3 = add nuw nsw i64 %indvars.iv629, 4 ; 2 uses
  %niter2063.next.3 = add i64 %niter2063, 4       ; 2 uses
  %niter2063.ncmp.3 = icmp eq i64 %niter2063.next.3, %unroll_iter2062
  br i1 %niter2063.ncmp.3, label %._crit_edge505.loopexit.unr-lcssa, label %.lr.ph504

bb.p:                                             ; preds = %.lr.ph552, %bb.at
  %indvars.iv677 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next678, %bb.at ] ; 11 uses
  %.0383550 = phi double [ f0x47EFFFFFE0000000, %.lr.ph552 ], [ %.lcssa2026, %bb.at ]
  %.0385549 = phi i32 [ 0, %.lr.ph552 ], [ %spec.select428, %bb.at ] ; 2 uses
  %i.ir = trunc i64 %indvars.iv677 to i32
  %smin2126.a = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.ir)
  %smin2127 = tail call i32 @llvm.smin.i32(i32 %smin2126.a, i32 %i.ha)
  %i.is = trunc i64 %indvars.iv677 to i32
  %smin2106.a = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.is)
  %smin2107 = tail call i32 @llvm.smin.i32(i32 %smin2106.a, i32 %i.ha)
  %i.it = trunc i64 %indvars.iv677 to i32
  %smin1630.a = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.it)
  %smin1631 = tail call i32 @llvm.smin.i32(i32 %smin1630.a, i32 %i.ha)
  %i.iu = add nsw i32 %smin1631, 1
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 3
  %scevgep1632.a = getelementptr i8, ptr %scevgep1629, i64 %i.iw
  %i.ix = trunc i64 %indvars.iv677 to i32
  %smin1347.a = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.ix)
  %smin1348 = tail call i32 @llvm.smin.i32(i32 %smin1347.a, i32 %i.ha)
  %i.iy = add nsw i32 %smin1348, 1
  %i.iz = zext i32 %i.iy to i64
  %smin1208.a = tail call i64 @llvm.smin.i64(i64 %indvars.iv677, i64 %i.gs)
  %smin1209 = tail call i64 @llvm.smin.i64(i64 %smin1208.a, i64 %i.hk)
  %i.ja = trunc i64 %smin1209 to i32
  %i.jb = add nsw i32 %i.ja, 1                    ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv677, i64 %i.gs)
  %smin1082 = tail call i64 @llvm.smin.i64(i64 %smin, i64 %i.hh) ; 2 uses
  %i.jc = shl nsw i64 %smin1082, 3                ; 2 uses
  %i.jd = sub i64 %i.hg, %i.jc
  %i.je = sub i64 %i.hi, %i.jc
  %i.jf = trunc i64 %indvars.iv677 to i32
  %smin1086.a = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.jf)
  %smin1087 = tail call i32 @llvm.smin.i32(i32 %smin1086.a, i32 %i.ha)
  %i.jg = trunc i64 %smin1082 to i32
  %i.jh = xor i32 %i.jg, -1
  %i.ji = add i32 %smin1087, %i.jh
  %i.jj = trunc i64 %indvars.iv677 to i32
  %i.jk = tail call i32 @llvm.smin.i32(i32 %i.jj, i32 %5) ; 3 uses
  %.not421 = icmp slt i32 %.0385549, %i.gz
  br i1 %.not421, label %.lr.ph519, label %._crit_edge553

.lr.ph519:                                        ; preds = %bb.p
  br i1 %i.fi, label %.lr.ph519.split.us.split.us, label %.lr.ph519.split.preheader

.lr.ph519.split.preheader:                        ; preds = %.lr.ph519
  br i1 %i.hq, label %.lr.ph519.split.epil.preheader, label %.lr.ph519.split

.lr.ph519.split.us.split.us:                      ; preds = %.lr.ph519, %bb.q
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %bb.q ], [ 0, %.lr.ph519 ] ; 4 uses
  %.0379515.us.us = phi i32 [ %spec.select427.us.us, %bb.q ], [ 0, %.lr.ph519 ]
  %.0381514.us.us = phi double [ %spec.select.us.us, %bb.q ], [ 0.000000e+00, %.lr.ph519 ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv651
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !117 ; 2 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ogt double %i.jm, 0.000000e+00
  br i1 %i.jn, label %.preheader451.us.us.us.preheader, label %bb.q

.preheader451.us.us.us.preheader:                 ; preds = %.lr.ph519.split.us.split.us
  %invariant.gep770 = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv651 ; 6 uses
  br label %iter.check1899

iter.check1899:                                   ; preds = %.preheader451.us.us.us.preheader, %._crit_edge509.us.us.us
  %indvars.iv646 = phi i64 [ 0, %.preheader451.us.us.us.preheader ], [ %indvars.iv.next647, %._crit_edge509.us.us.us ] ; 2 uses
  %.0376510.us.us.us = phi double [ 0.000000e+00, %.preheader451.us.us.us.preheader ], [ %i.kw, %._crit_edge509.us.us.us ]
  %i.jo = mul nuw nsw i64 %indvars.iv646, %i.fc
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.jo ; 3 uses
  br i1 %min.iters.check1863, label %vec.epilog.scalar.ph1901.preheader, label %vector.main.loop.iter.check1864

vector.main.loop.iter.check1864:                  ; preds = %iter.check1899
  br i1 %min.iters.check1865, label %vec.epilog.ph1903, label %vector.body1870

vector.body1870:                                  ; preds = %vector.main.loop.iter.check1864, %vector.body1870
  %index1871 = phi i64 [ %index.next1892, %vector.body1870 ], [ 0, %vector.main.loop.iter.check1864 ] ; 2 uses
  %vec.ind1872 = phi <4 x i64> [ %vec.ind.next1893, %vector.body1870 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check1864 ] ; 5 uses
  %vec.phi1873.a = phi <4 x double> [ %i.kc, %vector.body1870 ], [ zeroinitializer, %vector.main.loop.iter.check1864 ]
  %vec.phi1874.a = phi <4 x double> [ %i.kd, %vector.body1870 ], [ zeroinitializer, %vector.main.loop.iter.check1864 ]
  %vec.phi1875.a = phi <4 x double> [ %i.ke, %vector.body1870 ], [ zeroinitializer, %vector.main.loop.iter.check1864 ]
  %vec.phi1876 = phi <4 x double> [ %i.kf, %vector.body1870 ], [ zeroinitializer, %vector.main.loop.iter.check1864 ]
  %step.add1877 = add nuw <4 x i64> %vec.ind1872, splat (i64 4)
  %step.add.21878 = add nuw <4 x i64> %vec.ind1872, splat (i64 8)
  %step.add.31879 = add nuw <4 x i64> %vec.ind1872, splat (i64 12)
  %i.jq = mul nuw nsw <4 x i64> %vec.ind1872, %broadcast.splat1869
  %i.jr = mul nuw nsw <4 x i64> %step.add1877, %broadcast.splat1869
  %i.js = mul nuw nsw <4 x i64> %step.add.21878, %broadcast.splat1869
  %i.jt = mul nuw nsw <4 x i64> %step.add.31879, %broadcast.splat1869
  %wide.gep1880.a = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.jq
  %wide.gep1881.a = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.jr
  %wide.gep1882.a = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.js
  %wide.gep1883 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.jt
  %wide.masked.gather1884.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1880.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1885.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1881.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1886.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1882.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1887 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1883, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %index1871 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 96
  %wide.load1888.a = load <4 x double>, ptr %i.ju, align 8, !tbaa !117
  %wide.load1889.a = load <4 x double>, ptr %i.jv, align 8, !tbaa !117
  %wide.load1890.a = load <4 x double>, ptr %i.jw, align 8, !tbaa !117
  %wide.load1891 = load <4 x double>, ptr %i.jx, align 8, !tbaa !117
  %i.jy = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1888.a, %wide.masked.gather1884.a
  %i.jz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1889.a, %wide.masked.gather1885.a
  %i.ka = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1890.a, %wide.masked.gather1886.a
  %i.kb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1891, %wide.masked.gather1887
  %i.kc = fadd reassoc nsz arcp contract afn <4 x double> %i.jy, %vec.phi1873.a ; 2 uses
  %i.kd = fadd reassoc nsz arcp contract afn <4 x double> %i.jz, %vec.phi1874.a ; 2 uses
  %i.ke = fadd reassoc nsz arcp contract afn <4 x double> %i.ka, %vec.phi1875.a ; 2 uses
  %i.kf = fadd reassoc nsz arcp contract afn <4 x double> %i.kb, %vec.phi1876 ; 2 uses
  %index.next1892 = add nuw i64 %index1871, 16    ; 2 uses
  %vec.ind.next1893 = add nuw <4 x i64> %vec.ind1872, splat (i64 16)
  %i.kg = icmp eq i64 %index.next1892, %n.vec1867
  br i1 %i.kg, label %middle.block1894, label %vector.body1870, !llvm.loop !20

middle.block1894:                                 ; preds = %vector.body1870
  %bin.rdx1895.a = fadd reassoc nsz arcp contract afn <4 x double> %i.kd, %i.kc
  %bin.rdx1896.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ke, %bin.rdx1895.a
  %bin.rdx1897 = fadd reassoc nsz arcp contract afn <4 x double> %i.kf, %bin.rdx1896.a
  %i.kh = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1897) ; 3 uses
  br i1 %cmp.n1898, label %._crit_edge509.us.us.us, label %vec.epilog.iter.check1900

vec.epilog.iter.check1900:                        ; preds = %middle.block1894
  br i1 %min.epilog.iters.check1902, label %vec.epilog.scalar.ph1901.preheader, label %vec.epilog.ph1903, !prof !121

vec.epilog.ph1903:                                ; preds = %vector.main.loop.iter.check1864, %vec.epilog.iter.check1900
  %vec.epilog.resume.val1904 = phi i64 [ %n.vec1867, %vec.epilog.iter.check1900 ], [ 0, %vector.main.loop.iter.check1864 ] ; 2 uses
  %bc.merge.rdx1905 = phi double [ %i.kh, %vec.epilog.iter.check1900 ], [ 0.000000e+00, %vector.main.loop.iter.check1864 ]
  %i.ki = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1905, i64 0
  %broadcast.splatinsert1909 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1904, i64 0
  %broadcast.splat1910 = shufflevector <4 x i64> %broadcast.splatinsert1909, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1911 = or disjoint <4 x i64> %broadcast.splat1910, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1912

vec.epilog.vector.body1912:                       ; preds = %vec.epilog.vector.body1912, %vec.epilog.ph1903
  %index1913 = phi i64 [ %vec.epilog.resume.val1904, %vec.epilog.ph1903 ], [ %index.next1919, %vec.epilog.vector.body1912 ] ; 2 uses
  %vec.ind1914 = phi <4 x i64> [ %induction1911, %vec.epilog.ph1903 ], [ %vec.ind.next1920, %vec.epilog.vector.body1912 ] ; 2 uses
  %vec.phi1915 = phi <4 x double> [ %i.ki, %vec.epilog.ph1903 ], [ %i.km, %vec.epilog.vector.body1912 ]
  %i.kj = mul nuw nsw <4 x i64> %vec.ind1914, %broadcast.splat1908
  %wide.gep1916 = getelementptr [8 x i8], ptr %invariant.gep770, <4 x i64> %i.kj
  %wide.masked.gather1917 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1916, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %index1913
  %wide.load1918 = load <4 x double>, ptr %i.kk, align 8, !tbaa !117
  %i.kl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1918, %wide.masked.gather1917
  %i.km = fadd reassoc nsz arcp contract afn <4 x double> %i.kl, %vec.phi1915 ; 2 uses
  %index.next1919 = add nuw i64 %index1913, 4     ; 2 uses
  %vec.ind.next1920 = add nuw nsw <4 x i64> %vec.ind1914, splat (i64 4)
  %i.kn = icmp eq i64 %index.next1919, %n.vec1906
  br i1 %i.kn, label %vec.epilog.middle.block1921, label %vec.epilog.vector.body1912, !llvm.loop !21

vec.epilog.middle.block1921:                      ; preds = %vec.epilog.vector.body1912
  %i.ko = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.km) ; 2 uses
  br i1 %cmp.n1922, label %._crit_edge509.us.us.us, label %vec.epilog.scalar.ph1901.preheader

vec.epilog.scalar.ph1901.preheader:               ; preds = %iter.check1899, %vec.epilog.iter.check1900, %vec.epilog.middle.block1921
  %indvars.iv640.ph = phi i64 [ 0, %iter.check1899 ], [ %n.vec1867, %vec.epilog.iter.check1900 ], [ %n.vec1906, %vec.epilog.middle.block1921 ]
  %.0374506.us.us.us.ph = phi double [ 0.000000e+00, %iter.check1899 ], [ %i.kh, %vec.epilog.iter.check1900 ], [ %i.ko, %vec.epilog.middle.block1921 ]
  br label %vec.epilog.scalar.ph1901

vec.epilog.scalar.ph1901:                         ; preds = %vec.epilog.scalar.ph1901.preheader, %vec.epilog.scalar.ph1901
  %indvars.iv640 = phi i64 [ %indvars.iv.next641, %vec.epilog.scalar.ph1901 ], [ %indvars.iv640.ph, %vec.epilog.scalar.ph1901.preheader ] ; 3 uses
  %.0374506.us.us.us = phi double [ %i.ku, %vec.epilog.scalar.ph1901 ], [ %.0374506.us.us.us.ph, %vec.epilog.scalar.ph1901.preheader ]
  %i.kp = mul nuw nsw i64 %indvars.iv640, %i.b
  %gep771 = getelementptr [8 x i8], ptr %invariant.gep770, i64 %i.kp
  %i.kq = load double, ptr %gep771, align 8, !tbaa !117
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv640
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !117
  %i.kt = fmul reassoc nsz arcp contract afn double %i.ks, %i.kq
  %i.ku = fadd reassoc nsz arcp contract afn double %i.kt, %.0374506.us.us.us ; 2 uses
  %indvars.iv.next641 = add nuw nsw i64 %indvars.iv640, 1 ; 2 uses
  %exitcond645.not = icmp eq i64 %indvars.iv.next641, %wide.trip.count680
  br i1 %exitcond645.not, label %._crit_edge509.us.us.us, label %vec.epilog.scalar.ph1901, !llvm.loop !22

._crit_edge509.us.us.us:                          ; preds = %vec.epilog.scalar.ph1901, %vec.epilog.middle.block1921, %middle.block1894
  %.lcssa = phi double [ %i.ko, %vec.epilog.middle.block1921 ], [ %i.kh, %middle.block1894 ], [ %i.ku, %vec.epilog.scalar.ph1901 ]
  %i.kv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.lcssa)
  %i.kw = fadd reassoc nsz arcp contract afn double %i.kv, %.0376510.us.us.us ; 2 uses
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %exitcond650.not = icmp eq i64 %indvars.iv.next647, %wide.trip.count649
  br i1 %exitcond650.not, label %._crit_edge512.split.us.us.us, label %iter.check1899

._crit_edge512.split.us.us.us:                    ; preds = %._crit_edge509.us.us.us
  %i.kx = fmul reassoc nsz arcp contract afn double %i.kw, %i.jm
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge512.split.us.us.us, %.lr.ph519.split.us.split.us
  %.1377.us.us = phi nsz double [ %i.kx, %._crit_edge512.split.us.us.us ], [ 0.000000e+00, %.lr.ph519.split.us.split.us ] ; 2 uses
  %i.ky = fcmp reassoc nsz arcp contract afn ogt double %.1377.us.us, %.0381514.us.us ; 2 uses
  %spec.select.us.us = select nsz i1 %i.ky, double %.1377.us.us, double %.0381514.us.us
  %i.kz = trunc nuw nsw i64 %indvars.iv651 to i32
  %spec.select427.us.us = select i1 %i.ky, i32 %i.kz, i32 %.0379515.us.us ; 2 uses
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond655.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count680
  br i1 %exitcond655.not, label %._crit_edge520, label %.lr.ph519.split.us.split.us

.lr.ph519.split:                                  ; preds = %.lr.ph519.split.preheader, %.lr.ph519.split
  %indvars.iv634 = phi i64 [ %indvars.iv.next635.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ] ; 6 uses
  %.0379515 = phi i32 [ %spec.select427.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ]
  %.0381514 = phi double [ %spec.select.3, %.lr.ph519.split ], [ 0.000000e+00, %.lr.ph519.split.preheader ] ; 2 uses
  %niter2070 = phi i64 [ %niter2070.next.3, %.lr.ph519.split ], [ 0, %.lr.ph519.split.preheader ]
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv634
  %i.lb = load double, ptr %i.la, align 8, !tbaa !117 ; 2 uses
  %i.lc = fcmp reassoc nsz arcp contract afn ogt double %i.lb, 0.000000e+00
  %i.ld = fmul reassoc nsz arcp contract afn double %i.lb, 0.000000e+00
  %spec.select554 = select nsz i1 %i.lc, double %i.ld, double 0.000000e+00 ; 2 uses
  %i.le = fcmp reassoc nsz arcp contract afn ogt double %spec.select554, %.0381514 ; 2 uses
  %spec.select = select nsz i1 %i.le, double %spec.select554, double %.0381514 ; 2 uses
  %i.lf = trunc nuw nsw i64 %indvars.iv634 to i32
  %spec.select427 = select i1 %i.le, i32 %i.lf, i32 %.0379515
  %indvars.iv.next635 = or disjoint i64 %indvars.iv634, 1 ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next635
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !117 ; 2 uses
  %i.li = fcmp reassoc nsz arcp contract afn ogt double %i.lh, 0.000000e+00
  %i.lj = fmul reassoc nsz arcp contract afn double %i.lh, 0.000000e+00
  %spec.select554.1 = select nsz i1 %i.li, double %i.lj, double 0.000000e+00 ; 2 uses
  %i.lk = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.1, %spec.select ; 2 uses
  %spec.select.1 = select nsz i1 %i.lk, double %spec.select554.1, double %spec.select ; 2 uses
  %i.ll = trunc nuw nsw i64 %indvars.iv.next635 to i32
  %spec.select427.1 = select i1 %i.lk, i32 %i.ll, i32 %spec.select427
  %indvars.iv.next635.1 = or disjoint i64 %indvars.iv634, 2 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next635.1
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !117 ; 2 uses
  %i.lo = fcmp reassoc nsz arcp contract afn ogt double %i.ln, 0.000000e+00
  %i.lp = fmul reassoc nsz arcp contract afn double %i.ln, 0.000000e+00
  %spec.select554.2 = select nsz i1 %i.lo, double %i.lp, double 0.000000e+00 ; 2 uses
  %i.lq = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.2, %spec.select.1 ; 2 uses
  %spec.select.2 = select nsz i1 %i.lq, double %spec.select554.2, double %spec.select.1 ; 2 uses
  %i.lr = trunc nuw nsw i64 %indvars.iv.next635.1 to i32
  %spec.select427.2 = select i1 %i.lq, i32 %i.lr, i32 %spec.select427.1
  %indvars.iv.next635.2 = or disjoint i64 %indvars.iv634, 3 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next635.2
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !117 ; 2 uses
  %i.lu = fcmp reassoc nsz arcp contract afn ogt double %i.lt, 0.000000e+00
  %i.lv = fmul reassoc nsz arcp contract afn double %i.lt, 0.000000e+00
  %spec.select554.3 = select nsz i1 %i.lu, double %i.lv, double 0.000000e+00 ; 2 uses
  %i.lw = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.3, %spec.select.2 ; 2 uses
  %spec.select.3 = select nsz i1 %i.lw, double %spec.select554.3, double %spec.select.2 ; 2 uses
  %i.lx = trunc nuw nsw i64 %indvars.iv.next635.2 to i32
  %spec.select427.3 = select i1 %i.lw, i32 %i.lx, i32 %spec.select427.2 ; 3 uses
  %indvars.iv.next635.3 = add nuw nsw i64 %indvars.iv634, 4 ; 2 uses
  %niter2070.next.3 = add i64 %niter2070, 4       ; 2 uses
  %niter2070.ncmp.3 = icmp eq i64 %niter2070.next.3, %unroll_iter2069
  br i1 %niter2070.ncmp.3, label %._crit_edge520.loopexit1943.unr-lcssa, label %.lr.ph519.split

._crit_edge520.loopexit1943.unr-lcssa:            ; preds = %.lr.ph519.split
  br i1 %lcmp.mod2066.not, label %._crit_edge520, label %.lr.ph519.split.epil.preheader

.lr.ph519.split.epil.preheader:                   ; preds = %._crit_edge520.loopexit1943.unr-lcssa, %.lr.ph519.split.preheader
  %indvars.iv634.epil.init = phi i64 [ 0, %.lr.ph519.split.preheader ], [ %indvars.iv.next635.3, %._crit_edge520.loopexit1943.unr-lcssa ]
  %.0379515.epil.init = phi i32 [ 0, %.lr.ph519.split.preheader ], [ %spec.select427.3, %._crit_edge520.loopexit1943.unr-lcssa ]
  %.0381514.epil.init = phi double [ 0.000000e+00, %.lr.ph519.split.preheader ], [ %spec.select.3, %._crit_edge520.loopexit1943.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2068)
  br label %.lr.ph519.split.epil

.lr.ph519.split.epil:                             ; preds = %.lr.ph519.split.epil, %.lr.ph519.split.epil.preheader
  %indvars.iv634.epil = phi i64 [ %indvars.iv.next635.epil, %.lr.ph519.split.epil ], [ %indvars.iv634.epil.init, %.lr.ph519.split.epil.preheader ] ; 3 uses
  %.0379515.epil = phi i32 [ %spec.select427.epil, %.lr.ph519.split.epil ], [ %.0379515.epil.init, %.lr.ph519.split.epil.preheader ]
  %.0381514.epil = phi double [ %spec.select.epil, %.lr.ph519.split.epil ], [ %.0381514.epil.init, %.lr.ph519.split.epil.preheader ] ; 2 uses
  %epil.iter2065 = phi i64 [ %epil.iter2065.next, %.lr.ph519.split.epil ], [ 0, %.lr.ph519.split.epil.preheader ]
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv634.epil
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !117 ; 2 uses
  %i.ma = fcmp reassoc nsz arcp contract afn ogt double %i.lz, 0.000000e+00
  %i.mb = fmul reassoc nsz arcp contract afn double %i.lz, 0.000000e+00
  %spec.select554.epil = select nsz i1 %i.ma, double %i.mb, double 0.000000e+00 ; 2 uses
  %i.mc = fcmp reassoc nsz arcp contract afn ogt double %spec.select554.epil, %.0381514.epil ; 2 uses
  %spec.select.epil = select nsz i1 %i.mc, double %spec.select554.epil, double %.0381514.epil
  %i.md = trunc nuw nsw i64 %indvars.iv634.epil to i32
  %spec.select427.epil = select i1 %i.mc, i32 %i.md, i32 %.0379515.epil ; 2 uses
  %indvars.iv.next635.epil = add nuw nsw i64 %indvars.iv634.epil, 1
  %epil.iter2065.next = add i64 %epil.iter2065, 1 ; 2 uses
  %epil.iter2065.cmp.not = icmp eq i64 %epil.iter2065.next, %xtraiter2064
  br i1 %epil.iter2065.cmp.not, label %._crit_edge520, label %.lr.ph519.split.epil, !llvm.loop !23

._crit_edge520:                                   ; preds = %._crit_edge520.loopexit1943.unr-lcssa, %.lr.ph519.split.epil, %bb.q
  %.0379.lcssa = phi i32 [ %spec.select427.us.us, %bb.q ], [ %spec.select427.3, %._crit_edge520.loopexit1943.unr-lcssa ], [ %spec.select427.epil, %.lr.ph519.split.epil ] ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv677
  store i32 %.0379.lcssa, ptr %i.me, align 4, !tbaa !125
  %i.mf = icmp slt i32 %.0379.lcssa, %2
  %i.mg = zext i1 %i.mf to i32
  %spec.select428 = add nuw nsw i32 %.0385549, %i.mg ; 2 uses
  %i.mh = zext nneg i32 %.0379.lcssa to i64
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.mh
  store double 0.000000e+00, ptr %i.mi, align 8, !tbaa !117
  %i.mj = tail call i32 @llvm.smin.i32(i32 %i.jk, i32 %i.ha) ; 11 uses
  br i1 %i.fi, label %.preheader452.lr.ph, label %.lr.ph.i432.preheader

.lr.ph.i432.preheader:                            ; preds = %._crit_edge545, %._crit_edge520
  br i1 %i.hx, label %.lr.ph.i432.epil.preheader, label %.lr.ph.i432

.preheader452.lr.ph:                              ; preds = %._crit_edge520
  %.not422530 = icmp slt i32 %i.mj, 0             ; 3 uses
  %i.mk = add nsw i32 %i.mj, 1                    ; 14 uses
  %i.ml = sext i32 %i.mk to i64                   ; 39 uses
  %i.mm = shl nsw i64 %i.ml, 3                    ; 2 uses
  %i.mn = icmp sgt i32 %i.mj, -1
  %i.mo = zext nneg i32 %i.mj to i64              ; 4 uses
  %wide.trip.count990.i.i = zext i32 %i.mk to i64 ; 28 uses
  %.0645699.i.i = add nuw i32 %i.mj, 2
  %i.mp = mul i32 %i.mj, %5
  %i.mq = add i32 %i.mp, %i.mk
  %i.mr = add nsw i64 %i.ml, -1
  %i.ms = sext i32 %i.mj to i64                   ; 5 uses
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.ms
  %i.mu = add nsw i64 %i.ms, 1
  %broadcast.splatinsert1332 = insertelement <4 x i64> poison, i64 %i.ml, i64 0
  %broadcast.splat1333 = shufflevector <4 x i64> %broadcast.splatinsert1332, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1265 = insertelement <4 x i64> poison, i64 %i.ml, i64 0
  %broadcast.splat1266 = shufflevector <4 x i64> %broadcast.splatinsert1265, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1308 = insertelement <4 x i64> poison, i64 %i.ml, i64 0
  %broadcast.splat1309 = shufflevector <4 x i64> %broadcast.splatinsert1308, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1218 = insertelement <4 x i64> poison, i64 %i.ml, i64 0
  %broadcast.splat1219 = shufflevector <4 x i64> %broadcast.splatinsert1218, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1245 = insertelement <4 x i64> poison, i64 %i.ml, i64 0
  %broadcast.splat1246 = shufflevector <4 x i64> %broadcast.splatinsert1245, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.mv = getelementptr i8, ptr %i.gy, i64 %i.jd
  %i.mw = getelementptr i8, ptr %i.gy, i64 %i.je
  %xtraiter2108 = and i64 %wide.trip.count990.i.i, 1
  %i.mx = icmp eq i32 %smin2107, 0
  %unroll_iter2112 = and i64 %wide.trip.count990.i.i, 2147483646
  %lcmp.mod2110.not = icmp eq i64 %xtraiter2108, 0
  %lcmp.mod2111 = trunc i32 %i.mk to i1
  %xtraiter2128 = and i64 %wide.trip.count990.i.i, 7 ; 3 uses
  %i.my = icmp ult i32 %smin2127, 7
  %unroll_iter2132 = and i64 %wide.trip.count990.i.i, 2147483640
  %lcmp.mod2130.not = icmp eq i64 %xtraiter2128, 0
  %lcmp.mod2131 = icmp ne i64 %xtraiter2128, 0
  %min.iters.check928 = icmp ult i32 %i.mk, 4
  %min.iters.check930 = icmp ult i32 %i.mk, 16
  %i.mz = and i64 %wide.trip.count990.i.i, 12
  %n.vec932 = and i64 %wide.trip.count990.i.i, 2147483632 ; 4 uses
  %cmp.n945 = icmp eq i64 %n.vec932, %wide.trip.count990.i.i
  %min.epilog.iters.check949 = icmp eq i64 %i.mz, 0
  %n.vec952 = and i64 %wide.trip.count990.i.i, 2147483644 ; 3 uses
  %cmp.n959 = icmp eq i64 %n.vec952, %wide.trip.count990.i.i
  %min.iters.check885 = icmp ult i32 %i.mk, 4
  %min.iters.check887 = icmp ult i32 %i.mk, 16
  %i.na = and i64 %wide.trip.count990.i.i, 12
  %n.vec889 = and i64 %wide.trip.count990.i.i, 2147483632 ; 4 uses
  %cmp.n909 = icmp eq i64 %n.vec889, %wide.trip.count990.i.i
  %min.epilog.iters.check913 = icmp eq i64 %i.na, 0
  %n.vec917 = and i64 %wide.trip.count990.i.i, 2147483644 ; 3 uses
  %cmp.n925 = icmp eq i64 %n.vec917, %wide.trip.count990.i.i
  %min.iters.check829 = icmp ult i32 %i.mk, 4
  %min.iters.check831 = icmp ult i32 %i.mk, 16
  %n.vec833 = and i64 %i.ml, 2147483632           ; 4 uses
  %cmp.n862 = icmp eq i64 %n.vec833, %i.ml
  %i.nb = and i32 %i.mk, 12
  %min.epilog.iters.check866 = icmp eq i32 %i.nb, 0
  %n.vec870 = and i64 %i.ml, 2147483644           ; 3 uses
  %cmp.n882 = icmp eq i64 %n.vec870, %i.ml
  br label %.preheader452

.preheader452:                                    ; preds = %.preheader452.lr.ph, %._crit_edge545
  %indvars.iv672 = phi i64 [ 0, %.preheader452.lr.ph ], [ %indvars.iv.next673, %._crit_edge545 ] ; 6 uses
  br i1 %.not422530, label %._crit_edge532.split.thread, label %iter.check1840

._crit_edge532.split.thread:                      ; preds = %.preheader452
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv672
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv672 ; 2 uses
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = tail call noalias ptr @malloc(i64 noundef %i.mm) #15
  br label %dsvd.exit.i

iter.check1840:                                   ; preds = %.preheader452, %._crit_edge529
  %indvars.iv661 = phi i64 [ %indvars.iv.next662, %._crit_edge529 ], [ 0, %.preheader452 ] ; 4 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv661
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !125
  %i.ne = sext i32 %i.nd to i64
  %invariant.gep772 = getelementptr [8 x i8], ptr %i.e, i64 %i.ne ; 14 uses
  %invariant.gep774 = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv661 ; 11 uses
  br i1 %or.cond1927.a, label %vector.main.loop.iter.check1816, label %vec.epilog.scalar.ph1842.preheader

vector.main.loop.iter.check1816:                  ; preds = %iter.check1840
  br i1 %min.iters.check1817, label %vec.epilog.ph1844, label %vector.body1822

vector.body1822:                                  ; preds = %vector.main.loop.iter.check1816, %vector.body1822
  %index1823 = phi i64 [ %index.next1836, %vector.body1822 ], [ 0, %vector.main.loop.iter.check1816 ] ; 2 uses
  %vec.ind1824 = phi <4 x i64> [ %vec.ind.next1837, %vector.body1822 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check1816 ] ; 5 uses
  %step.add1825 = add nuw <4 x i64> %vec.ind1824, splat (i64 4)
  %step.add.21826 = add nuw <4 x i64> %vec.ind1824, splat (i64 8)
  %step.add.31827 = add nuw <4 x i64> %vec.ind1824, splat (i64 12)
  %i.nf = mul nuw nsw <4 x i64> %vec.ind1824, %broadcast.splat1821
  %i.ng = mul nuw nsw <4 x i64> %step.add1825, %broadcast.splat1821
  %i.nh = mul nuw nsw <4 x i64> %step.add.21826, %broadcast.splat1821
  %i.ni = mul nuw nsw <4 x i64> %step.add.31827, %broadcast.splat1821
  %wide.gep1828.a = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.nf
  %wide.gep1829.a = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.ng
  %wide.gep1830.a = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.nh
  %wide.gep1831 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.ni
  %wide.masked.gather1832.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1828.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1833.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1829.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1834.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1830.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1835 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1831, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.nj = getelementptr [8 x i8], ptr %invariant.gep774, i64 %index1823 ; 4 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 32
  %i.nl = getelementptr i8, ptr %i.nj, i64 64
  %i.nm = getelementptr i8, ptr %i.nj, i64 96
  store <4 x double> %wide.masked.gather1832.a, ptr %i.nj, align 8, !tbaa !117
  store <4 x double> %wide.masked.gather1833.a, ptr %i.nk, align 8, !tbaa !117
  store <4 x double> %wide.masked.gather1834.a, ptr %i.nl, align 8, !tbaa !117
  store <4 x double> %wide.masked.gather1835, ptr %i.nm, align 8, !tbaa !117
  %index.next1836 = add nuw i64 %index1823, 16    ; 2 uses
  %vec.ind.next1837 = add nuw <4 x i64> %vec.ind1824, splat (i64 16)
  %i.nn = icmp eq i64 %index.next1836, %n.vec1819
  br i1 %i.nn, label %middle.block1838, label %vector.body1822, !llvm.loop !24

middle.block1838:                                 ; preds = %vector.body1822
  br i1 %cmp.n1839, label %._crit_edge529, label %vec.epilog.iter.check1841

vec.epilog.iter.check1841:                        ; preds = %middle.block1838
  br i1 %min.epilog.iters.check1843, label %vec.epilog.scalar.ph1842.preheader, label %vec.epilog.ph1844, !prof !121

vec.epilog.ph1844:                                ; preds = %vector.main.loop.iter.check1816, %vec.epilog.iter.check1841
  %vec.epilog.resume.val1845 = phi i64 [ %n.vec1819, %vec.epilog.iter.check1841 ], [ 0, %vector.main.loop.iter.check1816 ] ; 2 uses
  %broadcast.splatinsert1849 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1845, i64 0
  %broadcast.splat1850 = shufflevector <4 x i64> %broadcast.splatinsert1849, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1851 = or disjoint <4 x i64> %broadcast.splat1850, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1852

vec.epilog.vector.body1852:                       ; preds = %vec.epilog.vector.body1852, %vec.epilog.ph1844
  %index1853 = phi i64 [ %vec.epilog.resume.val1845, %vec.epilog.ph1844 ], [ %index.next1857, %vec.epilog.vector.body1852 ] ; 2 uses
  %vec.ind1854 = phi <4 x i64> [ %induction1851, %vec.epilog.ph1844 ], [ %vec.ind.next1858, %vec.epilog.vector.body1852 ] ; 2 uses
  %i.no = mul nuw nsw <4 x i64> %vec.ind1854, %broadcast.splat1848
  %wide.gep1855 = getelementptr [8 x i8], ptr %invariant.gep772, <4 x i64> %i.no
  %wide.masked.gather1856 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1855, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.np = getelementptr [8 x i8], ptr %invariant.gep774, i64 %index1853
  store <4 x double> %wide.masked.gather1856, ptr %i.np, align 8, !tbaa !117
  %index.next1857 = add nuw i64 %index1853, 4     ; 2 uses
  %vec.ind.next1858 = add nuw nsw <4 x i64> %vec.ind1854, splat (i64 4)
  %i.nq = icmp eq i64 %index.next1857, %n.vec1846
  br i1 %i.nq, label %vec.epilog.middle.block1859, label %vec.epilog.vector.body1852, !llvm.loop !25

vec.epilog.middle.block1859:                      ; preds = %vec.epilog.vector.body1852
  br i1 %cmp.n1860, label %._crit_edge529, label %vec.epilog.scalar.ph1842.preheader

vec.epilog.scalar.ph1842.preheader:               ; preds = %iter.check1840, %vec.epilog.iter.check1841, %vec.epilog.middle.block1859
  %indvars.iv656.ph = phi i64 [ 0, %iter.check1840 ], [ %n.vec1819, %vec.epilog.iter.check1841 ], [ %n.vec1846, %vec.epilog.middle.block1859 ] ; 4 uses
  %i.nr = sub nsw i64 %wide.trip.count680, %indvars.iv656.ph
  %xtraiter2071 = and i64 %i.nr, 7                ; 2 uses
  %lcmp.mod2072.not = icmp eq i64 %xtraiter2071, 0
  br i1 %lcmp.mod2072.not, label %vec.epilog.scalar.ph1842.prol.loopexit, label %vec.epilog.scalar.ph1842.prol

vec.epilog.scalar.ph1842.prol:                    ; preds = %vec.epilog.scalar.ph1842.preheader, %vec.epilog.scalar.ph1842.prol
  %indvars.iv656.prol = phi i64 [ %indvars.iv.next657.prol, %vec.epilog.scalar.ph1842.prol ], [ %indvars.iv656.ph, %vec.epilog.scalar.ph1842.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph1842.prol ], [ 0, %vec.epilog.scalar.ph1842.preheader ]
  %i.ns = mul nuw nsw i64 %indvars.iv656.prol, %i.b
  %gep773.prol = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.ns
  %i.nt = load double, ptr %gep773.prol, align 8, !tbaa !117
  %i.nu = mul nsw i64 %indvars.iv656.prol, %i.gs
  %gep775.prol = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.nu
  store double %i.nt, ptr %gep775.prol, align 8, !tbaa !117
  %indvars.iv.next657.prol = add nuw nsw i64 %indvars.iv656.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2071
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1842.prol.loopexit, label %vec.epilog.scalar.ph1842.prol, !llvm.loop !26

vec.epilog.scalar.ph1842.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1842.prol, %vec.epilog.scalar.ph1842.preheader
  %indvars.iv656.unr = phi i64 [ %indvars.iv656.ph, %vec.epilog.scalar.ph1842.preheader ], [ %indvars.iv.next657.prol, %vec.epilog.scalar.ph1842.prol ]
  %i.nv = sub nsw i64 %indvars.iv656.ph, %wide.trip.count680
  %i.nw = icmp ugt i64 %i.nv, -8
  br i1 %i.nw, label %._crit_edge529, label %vec.epilog.scalar.ph1842

._crit_edge532.split:                             ; preds = %._crit_edge529
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv672
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !124 ; 3 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv672 ; 4 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !124 ; 3 uses
  %15 = tail call noalias ptr @malloc(i64 noundef %i.mm) #15 ; 18 uses
  br i1 %i.mn, label %iter.check1795, label %dsvd.exit.i

iter.check1795:                                   ; preds = %._crit_edge532.split, %.loopexit753.i.i
  %indvars.iv942.i.i = phi i64 [ %indvars.iv.next943.i.i, %.loopexit753.i.i ], [ 1, %._crit_edge532.split ] ; 33 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit753.i.i ], [ 0, %._crit_edge532.split ] ; 37 uses
  %.0665815.i.i = phi double [ %.4.i.i, %.loopexit753.i.i ], [ 0.000000e+00, %._crit_edge532.split ]
  %.0668814.i.i = phi double [ %.2670.i.i, %.loopexit753.i.i ], [ 0.000000e+00, %._crit_edge532.split ]
  %.0672813.i.i = phi double [ %.0672..i.i, %.loopexit753.i.i ], [ 0.000000e+00, %._crit_edge532.split ] ; 2 uses
  %i.ob = add nuw i64 %indvars.iv.i.i, %i.fc
  %i.oc = shl i64 %i.ob, 3
  %scevgep1627.a = getelementptr i8, ptr %i.gy, i64 %i.oc
  %i.od = shl nuw nsw i64 %indvars.iv.i.i, 4      ; 2 uses
  %scevgep1628 = getelementptr i8, ptr %i.gy, i64 %i.od
  %i.oe = getelementptr i8, ptr %i.gy, i64 %i.od
  %scevgep1633 = getelementptr i8, ptr %i.oe, i64 8
  %i.of = sub nsw i64 %i.fc, %indvars.iv.i.i      ; 35 uses
  %i.og = xor i64 %indvars.iv.i.i, -1
  %i.oh = add nsw i64 %i.og, %i.iz                ; 42 uses
  %i.oi = fmul reassoc nsz arcp contract afn double %.0668814.i.i, %.0665815.i.i ; 3 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv.i.i ; 2 uses
  store double %i.oi, ptr %i.oj, align 8, !tbaa !117
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv.i.i ; 47 uses
  %min.iters.check1774 = icmp ugt i64 %i.of, 3
  %or.cond1928.a = and i1 %min.iters.check1774, %ident.check1772.not
  br i1 %or.cond1928.a, label %vector.main.loop.iter.check1775, label %.lr.ph.i.i.preheader

vector.main.loop.iter.check1775:                  ; preds = %iter.check1795
  %min.iters.check1776 = icmp ult i64 %i.of, 16
  br i1 %min.iters.check1776, label %vec.epilog.ph1799, label %vector.ph1777

vector.ph1777:                                    ; preds = %vector.main.loop.iter.check1775
  %i.ok = and i64 %i.of, 12
  %n.vec1778 = and i64 %i.of, -16                 ; 4 uses
  %i.ol = add i64 %indvars.iv.i.i, %n.vec1778
  %i.om = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  br label %vector.body1779

vector.body1779:                                  ; preds = %vector.ph1777, %vector.body1779
  %index1780 = phi i64 [ 0, %vector.ph1777 ], [ %index.next1789, %vector.body1779 ] ; 2 uses
  %vec.phi1781.a = phi <4 x double> [ zeroinitializer, %vector.ph1777 ], [ %i.ov, %vector.body1779 ]
  %vec.phi1782.a = phi <4 x double> [ zeroinitializer, %vector.ph1777 ], [ %i.ow, %vector.body1779 ]
  %vec.phi1783.a = phi <4 x double> [ zeroinitializer, %vector.ph1777 ], [ %i.ox, %vector.body1779 ]
  %vec.phi1784 = phi <4 x double> [ zeroinitializer, %vector.ph1777 ], [ %i.oy, %vector.body1779 ]
  %i.on = getelementptr [8 x i8], ptr %i.om, i64 %index1780 ; 4 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 32
  %i.op = getelementptr i8, ptr %i.on, i64 64
  %i.oq = getelementptr i8, ptr %i.on, i64 96
  %wide.load1785.a = load <4 x double>, ptr %i.on, align 8, !tbaa !117
  %wide.load1786.a = load <4 x double>, ptr %i.oo, align 8, !tbaa !117
  %wide.load1787.a = load <4 x double>, ptr %i.op, align 8, !tbaa !117
  %wide.load1788 = load <4 x double>, ptr %i.oq, align 8, !tbaa !117
  %i.or = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1785.a)
  %i.os = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1786.a)
  %i.ot = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1787.a)
  %i.ou = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1788)
  %i.ov = fadd reassoc nsz arcp contract afn <4 x double> %i.or, %vec.phi1781.a ; 2 uses
  %i.ow = fadd reassoc nsz arcp contract afn <4 x double> %i.os, %vec.phi1782.a ; 2 uses
  %i.ox = fadd reassoc nsz arcp contract afn <4 x double> %i.ot, %vec.phi1783.a ; 2 uses
  %i.oy = fadd reassoc nsz arcp contract afn <4 x double> %i.ou, %vec.phi1784 ; 2 uses
  %index.next1789 = add nuw i64 %index1780, 16    ; 2 uses
  %i.oz = icmp eq i64 %index.next1789, %n.vec1778
  br i1 %i.oz, label %middle.block1790, label %vector.body1779, !llvm.loop !27

middle.block1790:                                 ; preds = %vector.body1779
  %bin.rdx1791.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ow, %i.ov
  %bin.rdx1792.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ox, %bin.rdx1791.a
  %bin.rdx1793 = fadd reassoc nsz arcp contract afn <4 x double> %i.oy, %bin.rdx1792.a
  %i.pa = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1793) ; 3 uses
  %cmp.n1794 = icmp eq i64 %i.of, %n.vec1778
  br i1 %cmp.n1794, label %._crit_edge.i.i, label %vec.epilog.iter.check1796

vec.epilog.iter.check1796:                        ; preds = %middle.block1790
  %min.epilog.iters.check1798 = icmp eq i64 %i.ok, 0
  br i1 %min.epilog.iters.check1798, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1799, !prof !121

vec.epilog.ph1799:                                ; preds = %vector.main.loop.iter.check1775, %vec.epilog.iter.check1796
  %vec.epilog.resume.val1800 = phi i64 [ %n.vec1778, %vec.epilog.iter.check1796 ], [ 0, %vector.main.loop.iter.check1775 ]
  %bc.merge.rdx1801 = phi double [ %i.pa, %vec.epilog.iter.check1796 ], [ 0.000000e+00, %vector.main.loop.iter.check1775 ]
  %n.vec1802 = and i64 %i.of, -4                  ; 3 uses
  %i.pb = add i64 %indvars.iv.i.i, %n.vec1802
  %i.pc = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1801, i64 0
  %i.pd = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  br label %vec.epilog.vector.body1803

vec.epilog.vector.body1803:                       ; preds = %vec.epilog.vector.body1803, %vec.epilog.ph1799
  %index1804 = phi i64 [ %vec.epilog.resume.val1800, %vec.epilog.ph1799 ], [ %index.next1807, %vec.epilog.vector.body1803 ] ; 2 uses
  %vec.phi1805 = phi <4 x double> [ %i.pc, %vec.epilog.ph1799 ], [ %i.pg, %vec.epilog.vector.body1803 ]
  %i.pe = getelementptr [8 x i8], ptr %i.pd, i64 %index1804
  %wide.load1806 = load <4 x double>, ptr %i.pe, align 8, !tbaa !117
  %i.pf = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1806)
  %i.pg = fadd reassoc nsz arcp contract afn <4 x double> %i.pf, %vec.phi1805 ; 2 uses
  %index.next1807 = add nuw i64 %index1804, 4     ; 2 uses
  %i.ph = icmp eq i64 %index.next1807, %n.vec1802
  br i1 %i.ph, label %vec.epilog.middle.block1808, label %vec.epilog.vector.body1803, !llvm.loop !28

vec.epilog.middle.block1808:                      ; preds = %vec.epilog.vector.body1803
  %i.pi = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.pg) ; 2 uses
  %cmp.n1809 = icmp eq i64 %i.of, %n.vec1802
  br i1 %cmp.n1809, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1795, %vec.epilog.iter.check1796, %vec.epilog.middle.block1808
  %indvars.iv924.i.i.ph = phi i64 [ %indvars.iv.i.i, %iter.check1795 ], [ %i.ol, %vec.epilog.iter.check1796 ], [ %i.pb, %vec.epilog.middle.block1808 ] ; 4 uses
  %.1666770.i.i.ph = phi double [ 0.000000e+00, %iter.check1795 ], [ %i.pa, %vec.epilog.iter.check1796 ], [ %i.pi, %vec.epilog.middle.block1808 ] ; 2 uses
  %i.pj = sub i64 %i.fc, %indvars.iv924.i.i.ph
  %i.pk = sub i64 %i.hn, %indvars.iv924.i.i.ph
  %xtraiter2073 = and i64 %i.pj, 7                ; 2 uses
  %lcmp.mod2074.not = icmp eq i64 %xtraiter2073, 0
  br i1 %lcmp.mod2074.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv924.i.i.prol = phi i64 [ %indvars.iv.next925.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv924.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.1666770.i.i.prol = phi double [ %i.po, %.lr.ph.i.i.prol ], [ %.1666770.i.i.ph, %.lr.ph.i.i.preheader ]
  %prol.iter2075 = phi i64 [ %prol.iter2075.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.pl = mul nsw i64 %indvars.iv924.i.i.prol, %i.gs
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.pl
  %i.pm = load double, ptr %gep.i.i.prol, align 8, !tbaa !117
  %i.pn = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.pm)
  %i.po = fadd reassoc nsz arcp contract afn double %i.pn, %.1666770.i.i.prol ; 3 uses
  %indvars.iv.next925.i.i.prol = add nuw nsw i64 %indvars.iv924.i.i.prol, 1 ; 2 uses
  %prol.iter2075.next = add i64 %prol.iter2075, 1 ; 2 uses
  %prol.iter2075.cmp.not = icmp eq i64 %prol.iter2075.next, %xtraiter2073
  br i1 %prol.iter2075.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !29

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa1957.unr = phi double [ poison, %.lr.ph.i.i.preheader ], [ %i.po, %.lr.ph.i.i.prol ]
  %indvars.iv924.i.i.unr = phi i64 [ %indvars.iv924.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next925.i.i.prol, %.lr.ph.i.i.prol ]
  %.1666770.i.i.unr = phi double [ %.1666770.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.po, %.lr.ph.i.i.prol ]
  %i.pp = icmp ult i64 %i.pk, 7
  br i1 %i.pp, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block1808, %middle.block1790
  %.lcssa780.a = phi double [ %i.pi, %vec.epilog.middle.block1808 ], [ %i.pa, %middle.block1790 ], [ %.lcssa1957.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ss, %.lr.ph.i.i ] ; 20 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.pq = fcmp reassoc nsz arcp contract afn une double %.lcssa780.a, 0.000000e+00
  br i1 %i.pq, label %iter.check1752, label %.loopexit758.i.i

iter.check1752:                                   ; preds = %._crit_edge.i.i
  %min.iters.check1729 = icmp ugt i64 %i.of, 3
  %or.cond1929.a = and i1 %min.iters.check1729, %ident.check1727.not
  br i1 %or.cond1929.a, label %vector.main.loop.iter.check1730, label %.lr.ph774.i.i.preheader

vector.main.loop.iter.check1730:                  ; preds = %iter.check1752
  %min.iters.check1731 = icmp ult i64 %i.of, 16
  br i1 %min.iters.check1731, label %vec.epilog.ph1756, label %vector.ph1732

vector.ph1732:                                    ; preds = %vector.main.loop.iter.check1730
  %i.pr = and i64 %i.of, 12
  %n.vec1733 = and i64 %i.of, -16                 ; 4 uses
  %i.ps = add i64 %indvars.iv.i.i, %n.vec1733
  %broadcast.splatinsert1734 = insertelement <4 x double> poison, double %.lcssa780.a, i64 0
  %broadcast.splat1735 = shufflevector <4 x double> %broadcast.splatinsert1734, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.pt = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.pu = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1735
  %i.pv = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1735
  %i.pw = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1735
  %i.px = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1735
  br label %vector.body1736

vector.body1736:                                  ; preds = %vector.ph1732, %vector.body1736
  %index1737 = phi i64 [ 0, %vector.ph1732 ], [ %index.next1746, %vector.body1736 ] ; 2 uses
  %vec.phi1738.a = phi <4 x double> [ zeroinitializer, %vector.ph1732 ], [ %i.qk, %vector.body1736 ]
  %vec.phi1739.a = phi <4 x double> [ zeroinitializer, %vector.ph1732 ], [ %i.ql, %vector.body1736 ]
  %vec.phi1740.a = phi <4 x double> [ zeroinitializer, %vector.ph1732 ], [ %i.qm, %vector.body1736 ]
  %vec.phi1741 = phi <4 x double> [ zeroinitializer, %vector.ph1732 ], [ %i.qn, %vector.body1736 ]
  %i.py = getelementptr [8 x i8], ptr %i.pt, i64 %index1737 ; 5 uses
  %i.pz = getelementptr i8, ptr %i.py, i64 32     ; 2 uses
  %i.qa = getelementptr i8, ptr %i.py, i64 64     ; 2 uses
  %i.qb = getelementptr i8, ptr %i.py, i64 96     ; 2 uses
  %wide.load1742.a = load <4 x double>, ptr %i.py, align 8, !tbaa !117
  %wide.load1743.a = load <4 x double>, ptr %i.pz, align 8, !tbaa !117
  %wide.load1744.a = load <4 x double>, ptr %i.qa, align 8, !tbaa !117
  %wide.load1745 = load <4 x double>, ptr %i.qb, align 8, !tbaa !117
  %i.qc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1742.a, %i.pu ; 3 uses
  %i.qd = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1743.a, %i.pv ; 3 uses
  %i.qe = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1744.a, %i.pw ; 3 uses
  %i.qf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1745, %i.px ; 3 uses
  store <4 x double> %i.qc, ptr %i.py, align 8, !tbaa !117
  store <4 x double> %i.qd, ptr %i.pz, align 8, !tbaa !117
  store <4 x double> %i.qe, ptr %i.qa, align 8, !tbaa !117
  store <4 x double> %i.qf, ptr %i.qb, align 8, !tbaa !117
  %i.qg = fmul reassoc nsz arcp contract afn <4 x double> %i.qc, %i.qc
  %i.qh = fmul reassoc nsz arcp contract afn <4 x double> %i.qd, %i.qd
  %i.qi = fmul reassoc nsz arcp contract afn <4 x double> %i.qe, %i.qe
  %i.qj = fmul reassoc nsz arcp contract afn <4 x double> %i.qf, %i.qf
  %i.qk = fadd reassoc nsz arcp contract afn <4 x double> %i.qg, %vec.phi1738.a ; 2 uses
  %i.ql = fadd reassoc nsz arcp contract afn <4 x double> %i.qh, %vec.phi1739.a ; 2 uses
  %i.qm = fadd reassoc nsz arcp contract afn <4 x double> %i.qi, %vec.phi1740.a ; 2 uses
  %i.qn = fadd reassoc nsz arcp contract afn <4 x double> %i.qj, %vec.phi1741 ; 2 uses
  %index.next1746 = add nuw i64 %index1737, 16    ; 2 uses
  %i.qo = icmp eq i64 %index.next1746, %n.vec1733
  br i1 %i.qo, label %middle.block1747, label %vector.body1736, !llvm.loop !30

middle.block1747:                                 ; preds = %vector.body1736
  %bin.rdx1748.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ql, %i.qk
  %bin.rdx1749.a = fadd reassoc nsz arcp contract afn <4 x double> %i.qm, %bin.rdx1748.a
  %bin.rdx1750 = fadd reassoc nsz arcp contract afn <4 x double> %i.qn, %bin.rdx1749.a
  %i.qp = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1750) ; 3 uses
  %cmp.n1751 = icmp eq i64 %i.of, %n.vec1733
  br i1 %cmp.n1751, label %._crit_edge775.i.i, label %vec.epilog.iter.check1753

vec.epilog.iter.check1753:                        ; preds = %middle.block1747
  %min.epilog.iters.check1755 = icmp eq i64 %i.pr, 0
  br i1 %min.epilog.iters.check1755, label %.lr.ph774.i.i.preheader, label %vec.epilog.ph1756, !prof !121

vec.epilog.ph1756:                                ; preds = %vector.main.loop.iter.check1730, %vec.epilog.iter.check1753
  %vec.epilog.resume.val1757 = phi i64 [ %n.vec1733, %vec.epilog.iter.check1753 ], [ 0, %vector.main.loop.iter.check1730 ]
  %bc.merge.rdx1758 = phi double [ %i.qp, %vec.epilog.iter.check1753 ], [ 0.000000e+00, %vector.main.loop.iter.check1730 ]
  %n.vec1759 = and i64 %i.of, -4                  ; 3 uses
  %i.qq = add i64 %indvars.iv.i.i, %n.vec1759
  %i.qr = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1758, i64 0
  %broadcast.splatinsert1760 = insertelement <4 x double> poison, double %.lcssa780.a, i64 0
  %broadcast.splat1761 = shufflevector <4 x double> %broadcast.splatinsert1760, <4 x double> poison, <4 x i32> zeroinitializer
  %i.qs = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.qt = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1761
  br label %vec.epilog.vector.body1762

vec.epilog.vector.body1762:                       ; preds = %vec.epilog.vector.body1762, %vec.epilog.ph1756
  %index1763 = phi i64 [ %vec.epilog.resume.val1757, %vec.epilog.ph1756 ], [ %index.next1766, %vec.epilog.vector.body1762 ] ; 2 uses
  %vec.phi1764 = phi <4 x double> [ %i.qr, %vec.epilog.ph1756 ], [ %i.qx, %vec.epilog.vector.body1762 ]
  %i.qu = getelementptr [8 x i8], ptr %i.qs, i64 %index1763 ; 2 uses
end_hunk_1
begin_hunk_2_@thinplate_match:bb.a
  br i1 %cmp.n1561, label %._crit_edge791.i.i, label %vec.epilog.iter.check1563

vec.epilog.iter.check1563:                        ; preds = %middle.block1557
  %min.epilog.iters.check1565 = icmp eq i64 %i.abt, 0
  br i1 %min.epilog.iters.check1565, label %vec.epilog.scalar.ph1564.preheader, label %vec.epilog.ph1566, !prof !121

vec.epilog.ph1566:                                ; preds = %vector.main.loop.iter.check1542, %vec.epilog.iter.check1563
  %vec.epilog.resume.val1567 = phi i64 [ %n.vec1545, %vec.epilog.iter.check1563 ], [ 0, %vector.main.loop.iter.check1542 ]
  %bc.merge.rdx1568 = phi double [ %i.acj, %vec.epilog.iter.check1563 ], [ 0.000000e+00, %vector.main.loop.iter.check1542 ]
  %n.vec1569 = and i64 %i.oh, -4                  ; 3 uses
  %i.ack = add i64 %indvars.iv942.i.i, %n.vec1569
  %i.acl = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1568, i64 0
  %i.acm = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv942.i.i
  br label %vec.epilog.vector.body1570

vec.epilog.vector.body1570:                       ; preds = %vec.epilog.vector.body1570, %vec.epilog.ph1566
  %index1571 = phi i64 [ %vec.epilog.resume.val1567, %vec.epilog.ph1566 ], [ %index.next1574, %vec.epilog.vector.body1570 ] ; 2 uses
  %vec.phi1572 = phi <4 x double> [ %i.acl, %vec.epilog.ph1566 ], [ %i.acp, %vec.epilog.vector.body1570 ]
  %i.acn = getelementptr [8 x i8], ptr %i.acm, i64 %index1571
  %wide.load1573 = load <4 x double>, ptr %i.acn, align 8, !tbaa !117
  %i.aco = tail call reassoc nsz arcp contract afn <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load1573)
  %i.acp = fadd reassoc nsz arcp contract afn <4 x double> %i.aco, %vec.phi1572 ; 2 uses
  %index.next1574 = add nuw i64 %index1571, 4     ; 2 uses
  %i.acq = icmp eq i64 %index.next1574, %n.vec1569
  br i1 %i.acq, label %vec.epilog.middle.block1575, label %vec.epilog.vector.body1570, !llvm.loop !51

vec.epilog.middle.block1575:                      ; preds = %vec.epilog.vector.body1570
  %i.acr = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.acp) ; 2 uses
  %cmp.n1576 = icmp eq i64 %i.oh, %n.vec1569
  br i1 %cmp.n1576, label %._crit_edge791.i.i, label %vec.epilog.scalar.ph1564.preheader

vec.epilog.scalar.ph1564.preheader:               ; preds = %iter.check1562, %vec.epilog.iter.check1563, %vec.epilog.middle.block1575
  %indvars.iv954.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1562 ], [ %i.abu, %vec.epilog.iter.check1563 ], [ %i.ack, %vec.epilog.middle.block1575 ]
  %.3788.i.i.ph = phi double [ 0.000000e+00, %iter.check1562 ], [ %i.acj, %vec.epilog.iter.check1563 ], [ %i.acr, %vec.epilog.middle.block1575 ]
  br label %vec.epilog.scalar.ph1564

._crit_edge791.i.i:                               ; preds = %vec.epilog.scalar.ph1564, %vec.epilog.middle.block1575, %middle.block1557
  %.lcssa783.a = phi double [ %i.acr, %vec.epilog.middle.block1575 ], [ %i.acj, %middle.block1557 ], [ %i.aef, %vec.epilog.scalar.ph1564 ] ; 9 uses
  %i.acs = fcmp reassoc nsz arcp contract afn une double %.lcssa783.a, 0.000000e+00
  br i1 %i.acs, label %iter.check1521, label %.loopexit753.i.i

iter.check1521:                                   ; preds = %._crit_edge791.i.i
  %min.iters.check1498 = icmp ult i64 %i.oh, 4
  br i1 %min.iters.check1498, label %.lr.ph795.i.i.preheader, label %vector.main.loop.iter.check1499

vector.main.loop.iter.check1499:                  ; preds = %iter.check1521
  %min.iters.check1500 = icmp ult i64 %i.oh, 16
  br i1 %min.iters.check1500, label %vec.epilog.ph1525, label %vector.ph1501

vector.ph1501:                                    ; preds = %vector.main.loop.iter.check1499
  %i.act = and i64 %i.oh, 12
  %n.vec1502 = and i64 %i.oh, -16                 ; 4 uses
  %i.acu = add i64 %indvars.iv942.i.i, %n.vec1502
  %broadcast.splatinsert1503 = insertelement <4 x double> poison, double %.lcssa783.a, i64 0
  %broadcast.splat1504 = shufflevector <4 x double> %broadcast.splatinsert1503, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.acv = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv942.i.i
  %i.acw = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1504
  %i.acx = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1504
  %i.acy = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1504
  %i.acz = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1504
  br label %vector.body1505

vector.body1505:                                  ; preds = %vector.ph1501, %vector.body1505
  %index1506 = phi i64 [ 0, %vector.ph1501 ], [ %index.next1515, %vector.body1505 ] ; 2 uses
  %vec.phi1507.a = phi <4 x double> [ zeroinitializer, %vector.ph1501 ], [ %i.adm, %vector.body1505 ]
  %vec.phi1508.a = phi <4 x double> [ zeroinitializer, %vector.ph1501 ], [ %i.adn, %vector.body1505 ]
  %vec.phi1509.a = phi <4 x double> [ zeroinitializer, %vector.ph1501 ], [ %i.ado, %vector.body1505 ]
  %vec.phi1510 = phi <4 x double> [ zeroinitializer, %vector.ph1501 ], [ %i.adp, %vector.body1505 ]
  %i.ada = getelementptr [8 x i8], ptr %i.acv, i64 %index1506 ; 5 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 32   ; 2 uses
  %i.adc = getelementptr i8, ptr %i.ada, i64 64   ; 2 uses
  %i.add = getelementptr i8, ptr %i.ada, i64 96   ; 2 uses
  %wide.load1511.a = load <4 x double>, ptr %i.ada, align 8, !tbaa !117
  %wide.load1512.a = load <4 x double>, ptr %i.adb, align 8, !tbaa !117
  %wide.load1513.a = load <4 x double>, ptr %i.adc, align 8, !tbaa !117
  %wide.load1514 = load <4 x double>, ptr %i.add, align 8, !tbaa !117
  %i.ade = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1511.a, %i.acw ; 3 uses
  %i.adf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1512.a, %i.acx ; 3 uses
  %i.adg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1513.a, %i.acy ; 3 uses
  %i.adh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1514, %i.acz ; 3 uses
  store <4 x double> %i.ade, ptr %i.ada, align 8, !tbaa !117
  store <4 x double> %i.adf, ptr %i.adb, align 8, !tbaa !117
  store <4 x double> %i.adg, ptr %i.adc, align 8, !tbaa !117
  store <4 x double> %i.adh, ptr %i.add, align 8, !tbaa !117
  %i.adi = fmul reassoc nsz arcp contract afn <4 x double> %i.ade, %i.ade
  %i.adj = fmul reassoc nsz arcp contract afn <4 x double> %i.adf, %i.adf
  %i.adk = fmul reassoc nsz arcp contract afn <4 x double> %i.adg, %i.adg
  %i.adl = fmul reassoc nsz arcp contract afn <4 x double> %i.adh, %i.adh
  %i.adm = fadd reassoc nsz arcp contract afn <4 x double> %i.adi, %vec.phi1507.a ; 2 uses
  %i.adn = fadd reassoc nsz arcp contract afn <4 x double> %i.adj, %vec.phi1508.a ; 2 uses
  %i.ado = fadd reassoc nsz arcp contract afn <4 x double> %i.adk, %vec.phi1509.a ; 2 uses
  %i.adp = fadd reassoc nsz arcp contract afn <4 x double> %i.adl, %vec.phi1510 ; 2 uses
  %index.next1515 = add nuw i64 %index1506, 16    ; 2 uses
  %i.adq = icmp eq i64 %index.next1515, %n.vec1502
  br i1 %i.adq, label %middle.block1516, label %vector.body1505, !llvm.loop !52

middle.block1516:                                 ; preds = %vector.body1505
  %bin.rdx1517.a = fadd reassoc nsz arcp contract afn <4 x double> %i.adn, %i.adm
  %bin.rdx1518.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ado, %bin.rdx1517.a
  %bin.rdx1519 = fadd reassoc nsz arcp contract afn <4 x double> %i.adp, %bin.rdx1518.a
  %i.adr = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1519) ; 3 uses
  %cmp.n1520 = icmp eq i64 %i.oh, %n.vec1502
  br i1 %cmp.n1520, label %iter.check1481, label %vec.epilog.iter.check1522

vec.epilog.iter.check1522:                        ; preds = %middle.block1516
  %min.epilog.iters.check1524 = icmp eq i64 %i.act, 0
  br i1 %min.epilog.iters.check1524, label %.lr.ph795.i.i.preheader, label %vec.epilog.ph1525, !prof !121

vec.epilog.ph1525:                                ; preds = %vector.main.loop.iter.check1499, %vec.epilog.iter.check1522
  %vec.epilog.resume.val1526 = phi i64 [ %n.vec1502, %vec.epilog.iter.check1522 ], [ 0, %vector.main.loop.iter.check1499 ]
  %bc.merge.rdx1527 = phi double [ %i.adr, %vec.epilog.iter.check1522 ], [ 0.000000e+00, %vector.main.loop.iter.check1499 ]
  %n.vec1528 = and i64 %i.oh, -4                  ; 3 uses
  %i.ads = add i64 %indvars.iv942.i.i, %n.vec1528
  %i.adt = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1527, i64 0
  %broadcast.splatinsert1529 = insertelement <4 x double> poison, double %.lcssa783.a, i64 0
  %broadcast.splat1530 = shufflevector <4 x double> %broadcast.splatinsert1529, <4 x double> poison, <4 x i32> zeroinitializer
  %i.adu = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv942.i.i
  %i.adv = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1530
  br label %vec.epilog.vector.body1531

vec.epilog.vector.body1531:                       ; preds = %vec.epilog.vector.body1531, %vec.epilog.ph1525
  %index1532 = phi i64 [ %vec.epilog.resume.val1526, %vec.epilog.ph1525 ], [ %index.next1535, %vec.epilog.vector.body1531 ] ; 2 uses
  %vec.phi1533 = phi <4 x double> [ %i.adt, %vec.epilog.ph1525 ], [ %i.adz, %vec.epilog.vector.body1531 ]
  %i.adw = getelementptr [8 x i8], ptr %i.adu, i64 %index1532 ; 2 uses
  %wide.load1534 = load <4 x double>, ptr %i.adw, align 8, !tbaa !117
  %i.adx = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1534, %i.adv ; 3 uses
  store <4 x double> %i.adx, ptr %i.adw, align 8, !tbaa !117
  %i.ady = fmul reassoc nsz arcp contract afn <4 x double> %i.adx, %i.adx
  %i.adz = fadd reassoc nsz arcp contract afn <4 x double> %i.ady, %vec.phi1533 ; 2 uses
  %index.next1535 = add nuw i64 %index1532, 4     ; 2 uses
  %i.aea = icmp eq i64 %index.next1535, %n.vec1528
  br i1 %i.aea, label %vec.epilog.middle.block1536, label %vec.epilog.vector.body1531, !llvm.loop !53

vec.epilog.middle.block1536:                      ; preds = %vec.epilog.vector.body1531
  %i.aeb = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.adz) ; 2 uses
  %cmp.n1537 = icmp eq i64 %i.oh, %n.vec1528
  br i1 %cmp.n1537, label %iter.check1481, label %.lr.ph795.i.i.preheader

.lr.ph795.i.i.preheader:                          ; preds = %iter.check1521, %vec.epilog.iter.check1522, %vec.epilog.middle.block1536
  %indvars.iv959.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1521 ], [ %i.acu, %vec.epilog.iter.check1522 ], [ %i.ads, %vec.epilog.middle.block1536 ]
  %.2676793.i.i.ph = phi double [ 0.000000e+00, %iter.check1521 ], [ %i.adr, %vec.epilog.iter.check1522 ], [ %i.aeb, %vec.epilog.middle.block1536 ]
  %i.aec = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.lcssa783.a
  br label %.lr.ph795.i.i

vec.epilog.scalar.ph1564:                         ; preds = %vec.epilog.scalar.ph1564.preheader, %vec.epilog.scalar.ph1564
  %indvars.iv954.i.i = phi i64 [ %indvars.iv.next955.i.i, %vec.epilog.scalar.ph1564 ], [ %indvars.iv954.i.i.ph, %vec.epilog.scalar.ph1564.preheader ] ; 2 uses
  %.3788.i.i = phi double [ %i.aef, %vec.epilog.scalar.ph1564 ], [ %.3788.i.i.ph, %vec.epilog.scalar.ph1564.preheader ]
  %gep1178.i.i = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv954.i.i
  %i.aed = load double, ptr %gep1178.i.i, align 8, !tbaa !117
  %i.aee = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aed)
  %i.aef = fadd reassoc nsz arcp contract afn double %i.aee, %.3788.i.i ; 2 uses
  %indvars.iv.next955.i.i = add nuw nsw i64 %indvars.iv954.i.i, 1 ; 2 uses
  %exitcond958.not.i.i = icmp eq i64 %indvars.iv.next955.i.i, %wide.trip.count990.i.i
  br i1 %exitcond958.not.i.i, label %._crit_edge791.i.i, label %vec.epilog.scalar.ph1564, !llvm.loop !54

iter.check1481:                                   ; preds = %.lr.ph795.i.i, %vec.epilog.middle.block1536, %middle.block1516
  %.lcssa784.a = phi double [ %i.aeb, %vec.epilog.middle.block1536 ], [ %i.adr, %middle.block1516 ], [ %i.aft, %.lr.ph795.i.i ] ; 2 uses
  %i.aeg = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.aeh = load double, ptr %i.aeg, align 8, !tbaa !117 ; 3 uses
  %i.aei = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %.lcssa784.a)
  %i.aej = tail call reassoc nsz arcp contract afn noundef double @llvm.copysign.f64(double %i.aei, double %i.aeh) ; 2 uses
  %i.aek = fneg reassoc nsz arcp contract afn double %i.aej ; 2 uses
  %i.ael = fmul reassoc nsz arcp contract afn double %i.aeh, %i.aek
  %i.aem = fsub reassoc nsz arcp contract afn double %i.ael, %.lcssa784.a ; 3 uses
  %i.aen = fadd reassoc nsz arcp contract afn double %i.aej, %i.aeh
  store double %i.aen, ptr %i.aeg, align 8, !tbaa !117
  %min.iters.check1465 = icmp ult i64 %i.oh, 4
  br i1 %min.iters.check1465, label %.lr.ph800.i.i.preheader, label %vector.main.loop.iter.check1466

vector.main.loop.iter.check1466:                  ; preds = %iter.check1481
  %min.iters.check1467 = icmp ult i64 %i.oh, 16
  br i1 %min.iters.check1467, label %vec.epilog.ph1485, label %vector.ph1468

vector.ph1468:                                    ; preds = %vector.main.loop.iter.check1466
  %i.aeo = and i64 %i.oh, 12
  %n.vec1469 = and i64 %i.oh, -16                 ; 4 uses
  %i.aep = add i64 %indvars.iv942.i.i, %n.vec1469
  %broadcast.splatinsert1470 = insertelement <4 x double> poison, double %i.aem, i64 0
  %broadcast.splat1471 = shufflevector <4 x double> %broadcast.splatinsert1470, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aeq = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1471
  %i.aer = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1471
  %i.aes = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1471
  %i.aet = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1471
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.ph1468, %vector.body1472
  %index1473 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1478, %vector.body1472 ] ; 2 uses
  %i.aeu = add nuw i64 %indvars.iv942.i.i, %index1473 ; 2 uses
  %i.aev = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %i.aeu ; 4 uses
  %i.aew = getelementptr i8, ptr %i.aev, i64 32
  %i.aex = getelementptr i8, ptr %i.aev, i64 64
  %i.aey = getelementptr i8, ptr %i.aev, i64 96
  %wide.load1474.a = load <4 x double>, ptr %i.aev, align 8, !tbaa !117
  %wide.load1475.a = load <4 x double>, ptr %i.aew, align 8, !tbaa !117
  %wide.load1476.a = load <4 x double>, ptr %i.aex, align 8, !tbaa !117
  %wide.load1477 = load <4 x double>, ptr %i.aey, align 8, !tbaa !117
  %i.aez = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1474.a, %i.aeq
  %i.afa = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1475.a, %i.aer
  %i.afb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1476.a, %i.aes
  %i.afc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1477, %i.aet
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.aeu ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 32
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 64
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afd, i64 96
  store <4 x double> %i.aez, ptr %i.afd, align 8, !tbaa !117
  store <4 x double> %i.afa, ptr %i.afe, align 8, !tbaa !117
  store <4 x double> %i.afb, ptr %i.aff, align 8, !tbaa !117
  store <4 x double> %i.afc, ptr %i.afg, align 8, !tbaa !117
  %index.next1478 = add nuw i64 %index1473, 16    ; 2 uses
  %i.afh = icmp eq i64 %index.next1478, %n.vec1469
  br i1 %i.afh, label %middle.block1479, label %vector.body1472, !llvm.loop !55

middle.block1479:                                 ; preds = %vector.body1472
  %cmp.n1480 = icmp eq i64 %i.oh, %n.vec1469
  br i1 %cmp.n1480, label %iter.check1446.preheader, label %vec.epilog.iter.check1482

vec.epilog.iter.check1482:                        ; preds = %middle.block1479
  %min.epilog.iters.check1484 = icmp eq i64 %i.aeo, 0
  br i1 %min.epilog.iters.check1484, label %.lr.ph800.i.i.preheader, label %vec.epilog.ph1485, !prof !121

vec.epilog.ph1485:                                ; preds = %vector.main.loop.iter.check1466, %vec.epilog.iter.check1482
  %vec.epilog.resume.val1486 = phi i64 [ %n.vec1469, %vec.epilog.iter.check1482 ], [ 0, %vector.main.loop.iter.check1466 ]
  %n.vec1487 = and i64 %i.oh, -4                  ; 3 uses
  %i.afi = add i64 %indvars.iv942.i.i, %n.vec1487
  %broadcast.splatinsert1488 = insertelement <4 x double> poison, double %i.aem, i64 0
  %broadcast.splat1489 = shufflevector <4 x double> %broadcast.splatinsert1488, <4 x double> poison, <4 x i32> zeroinitializer
  %i.afj = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1489
  br label %vec.epilog.vector.body1490

vec.epilog.vector.body1490:                       ; preds = %vec.epilog.vector.body1490, %vec.epilog.ph1485
  %index1491 = phi i64 [ %vec.epilog.resume.val1486, %vec.epilog.ph1485 ], [ %index.next1493, %vec.epilog.vector.body1490 ] ; 2 uses
  %i.afk = add nuw i64 %indvars.iv942.i.i, %index1491 ; 2 uses
  %i.afl = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %i.afk
  %wide.load1492 = load <4 x double>, ptr %i.afl, align 8, !tbaa !117
  %i.afm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1492, %i.afj
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.afk
  store <4 x double> %i.afm, ptr %i.afn, align 8, !tbaa !117
  %index.next1493 = add nuw i64 %index1491, 4     ; 2 uses
  %i.afo = icmp eq i64 %index.next1493, %n.vec1487
  br i1 %i.afo, label %vec.epilog.middle.block1494, label %vec.epilog.vector.body1490, !llvm.loop !56

vec.epilog.middle.block1494:                      ; preds = %vec.epilog.vector.body1490
  %cmp.n1495 = icmp eq i64 %i.oh, %n.vec1487
  br i1 %cmp.n1495, label %iter.check1446.preheader, label %.lr.ph800.i.i.preheader

.lr.ph800.i.i.preheader:                          ; preds = %iter.check1481, %vec.epilog.iter.check1482, %vec.epilog.middle.block1494
  %indvars.iv964.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1481 ], [ %i.aep, %vec.epilog.iter.check1482 ], [ %i.afi, %vec.epilog.middle.block1494 ]
  %i.afp = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aem
  br label %.lr.ph800.i.i

.lr.ph795.i.i:                                    ; preds = %.lr.ph795.i.i.preheader, %.lr.ph795.i.i
  %indvars.iv959.i.i = phi i64 [ %indvars.iv.next960.i.i, %.lr.ph795.i.i ], [ %indvars.iv959.i.i.ph, %.lr.ph795.i.i.preheader ] ; 2 uses
  %.2676793.i.i = phi double [ %i.aft, %.lr.ph795.i.i ], [ %.2676793.i.i.ph, %.lr.ph795.i.i.preheader ]
  %gep1180.i.i = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv959.i.i ; 2 uses
  %i.afq = load double, ptr %gep1180.i.i, align 8, !tbaa !117
  %i.afr = fmul reassoc nsz arcp contract afn double %i.afq, %i.aec ; 3 uses
  store double %i.afr, ptr %gep1180.i.i, align 8, !tbaa !117
  %i.afs = fmul reassoc nsz arcp contract afn double %i.afr, %i.afr
  %i.aft = fadd reassoc nsz arcp contract afn double %i.afs, %.2676793.i.i ; 2 uses
  %indvars.iv.next960.i.i = add nuw nsw i64 %indvars.iv959.i.i, 1 ; 2 uses
  %exitcond963.not.i.i = icmp eq i64 %indvars.iv.next960.i.i, %wide.trip.count990.i.i
  br i1 %exitcond963.not.i.i, label %iter.check1481, label %.lr.ph795.i.i, !llvm.loop !57

.lr.ph800.i.i:                                    ; preds = %.lr.ph800.i.i.preheader, %.lr.ph800.i.i
  %indvars.iv964.i.i = phi i64 [ %indvars.iv.next965.i.i, %.lr.ph800.i.i ], [ %indvars.iv964.i.i.ph, %.lr.ph800.i.i.preheader ] ; 3 uses
  %gep1182.i.i = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv964.i.i
  %i.afu = load double, ptr %gep1182.i.i, align 8, !tbaa !117
  %i.afv = fmul reassoc nsz arcp contract afn double %i.afu, %i.afp
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv964.i.i
  store double %i.afv, ptr %i.afw, align 8, !tbaa !117
  %indvars.iv.next965.i.i = add nuw nsw i64 %indvars.iv964.i.i, 1 ; 2 uses
  %exitcond968.not.i.i = icmp eq i64 %indvars.iv.next965.i.i, %wide.trip.count990.i.i
  br i1 %exitcond968.not.i.i, label %iter.check1446.preheader, label %.lr.ph800.i.i, !llvm.loop !58

iter.check1446.preheader:                         ; preds = %.lr.ph800.i.i, %vec.epilog.middle.block1494, %middle.block1479
  %min.iters.check1421 = icmp ult i64 %i.oh, 4
  %min.iters.check1423 = icmp ult i64 %i.oh, 16
  %i.afx = and i64 %i.oh, 12
  %n.vec1425 = and i64 %i.oh, -16                 ; 4 uses
  %i.afy = add i64 %indvars.iv942.i.i, %n.vec1425
  %cmp.n1445 = icmp eq i64 %i.oh, %n.vec1425
  %min.epilog.iters.check1449 = icmp eq i64 %i.afx, 0
  %n.vec1453 = and i64 %i.oh, -4                  ; 3 uses
  %i.afz = add i64 %indvars.iv942.i.i, %n.vec1453
  %cmp.n1461 = icmp eq i64 %i.oh, %n.vec1453
  %min.iters.check1383 = icmp ult i64 %i.oh, 4
  %min.iters.check1385 = icmp ult i64 %i.oh, 16
  %i.aga = and i64 %i.oh, 12
  %n.vec1387 = and i64 %i.oh, -16                 ; 4 uses
  %i.agb = add i64 %indvars.iv942.i.i, %n.vec1387
  %cmp.n1402 = icmp eq i64 %i.oh, %n.vec1387
  %min.epilog.iters.check1406 = icmp eq i64 %i.aga, 0
  %n.vec1409 = and i64 %i.oh, -4                  ; 3 uses
  %i.agc = add i64 %indvars.iv942.i.i, %n.vec1409
  %cmp.n1418 = icmp eq i64 %i.oh, %n.vec1409
  br label %iter.check1446

iter.check1446:                                   ; preds = %iter.check1446.preheader, %._crit_edge808.i.i
  %indvars.iv979.i.i = phi i64 [ %indvars.iv.next980.i.i, %._crit_edge808.i.i ], [ %indvars.iv942.i.i, %iter.check1446.preheader ] ; 2 uses
  %i.agd = mul nsw i64 %indvars.iv979.i.i, %i.gs
  %invariant.gep1183.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %i.agd ; 6 uses
  br i1 %min.iters.check1421, label %vec.epilog.scalar.ph1448.preheader, label %vector.main.loop.iter.check1422

vector.main.loop.iter.check1422:                  ; preds = %iter.check1446
  br i1 %min.iters.check1423, label %vec.epilog.ph1450, label %vector.body1426

vector.body1426:                                  ; preds = %vector.main.loop.iter.check1422, %vector.body1426
  %index1427 = phi i64 [ %index.next1440, %vector.body1426 ], [ 0, %vector.main.loop.iter.check1422 ] ; 2 uses
  %vec.phi1428.a = phi <4 x double> [ %i.agr, %vector.body1426 ], [ zeroinitializer, %vector.main.loop.iter.check1422 ]
  %vec.phi1429.a = phi <4 x double> [ %i.ags, %vector.body1426 ], [ zeroinitializer, %vector.main.loop.iter.check1422 ]
  %vec.phi1430.a = phi <4 x double> [ %i.agt, %vector.body1426 ], [ zeroinitializer, %vector.main.loop.iter.check1422 ]
  %vec.phi1431 = phi <4 x double> [ %i.agu, %vector.body1426 ], [ zeroinitializer, %vector.main.loop.iter.check1422 ]
  %i.age = add nuw i64 %indvars.iv942.i.i, %index1427 ; 2 uses
  %i.agf = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %i.age ; 4 uses
  %i.agg = getelementptr i8, ptr %i.agf, i64 32
  %i.agh = getelementptr i8, ptr %i.agf, i64 64
  %i.agi = getelementptr i8, ptr %i.agf, i64 96
  %wide.load1432.a = load <4 x double>, ptr %i.agf, align 8, !tbaa !117
  %wide.load1433.a = load <4 x double>, ptr %i.agg, align 8, !tbaa !117
  %wide.load1434.a = load <4 x double>, ptr %i.agh, align 8, !tbaa !117
  %wide.load1435.a = load <4 x double>, ptr %i.agi, align 8, !tbaa !117
  %i.agj = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %i.age ; 4 uses
  %i.agk = getelementptr i8, ptr %i.agj, i64 32
  %i.agl = getelementptr i8, ptr %i.agj, i64 64
  %i.agm = getelementptr i8, ptr %i.agj, i64 96
  %wide.load1436.a = load <4 x double>, ptr %i.agj, align 8, !tbaa !117
  %wide.load1437.a = load <4 x double>, ptr %i.agk, align 8, !tbaa !117
  %wide.load1438.a = load <4 x double>, ptr %i.agl, align 8, !tbaa !117
  %wide.load1439 = load <4 x double>, ptr %i.agm, align 8, !tbaa !117
  %i.agn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1436.a, %wide.load1432.a
  %i.ago = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1437.a, %wide.load1433.a
  %i.agp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1438.a, %wide.load1434.a
  %i.agq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1439, %wide.load1435.a
  %i.agr = fadd reassoc nsz arcp contract afn <4 x double> %i.agn, %vec.phi1428.a ; 2 uses
  %i.ags = fadd reassoc nsz arcp contract afn <4 x double> %i.ago, %vec.phi1429.a ; 2 uses
  %i.agt = fadd reassoc nsz arcp contract afn <4 x double> %i.agp, %vec.phi1430.a ; 2 uses
  %i.agu = fadd reassoc nsz arcp contract afn <4 x double> %i.agq, %vec.phi1431 ; 2 uses
  %index.next1440 = add nuw i64 %index1427, 16    ; 2 uses
  %i.agv = icmp eq i64 %index.next1440, %n.vec1425
  br i1 %i.agv, label %middle.block1441, label %vector.body1426, !llvm.loop !59

middle.block1441:                                 ; preds = %vector.body1426
  %bin.rdx1442.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ags, %i.agr
  %bin.rdx1443.a = fadd reassoc nsz arcp contract afn <4 x double> %i.agt, %bin.rdx1442.a
  %bin.rdx1444 = fadd reassoc nsz arcp contract afn <4 x double> %i.agu, %bin.rdx1443.a
  %i.agw = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1444) ; 3 uses
  br i1 %cmp.n1445, label %iter.check1403, label %vec.epilog.iter.check1447

vec.epilog.iter.check1447:                        ; preds = %middle.block1441
  br i1 %min.epilog.iters.check1449, label %vec.epilog.scalar.ph1448.preheader, label %vec.epilog.ph1450, !prof !121

vec.epilog.ph1450:                                ; preds = %vector.main.loop.iter.check1422, %vec.epilog.iter.check1447
  %vec.epilog.resume.val1451 = phi i64 [ %n.vec1425, %vec.epilog.iter.check1447 ], [ 0, %vector.main.loop.iter.check1422 ]
  %bc.merge.rdx1452 = phi double [ %i.agw, %vec.epilog.iter.check1447 ], [ 0.000000e+00, %vector.main.loop.iter.check1422 ]
  %i.agx = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1452, i64 0
  br label %vec.epilog.vector.body1454

vec.epilog.vector.body1454:                       ; preds = %vec.epilog.vector.body1454, %vec.epilog.ph1450
  %index1455 = phi i64 [ %vec.epilog.resume.val1451, %vec.epilog.ph1450 ], [ %index.next1459, %vec.epilog.vector.body1454 ] ; 2 uses
  %vec.phi1456 = phi <4 x double> [ %i.agx, %vec.epilog.ph1450 ], [ %i.ahc, %vec.epilog.vector.body1454 ]
  %i.agy = add nuw i64 %indvars.iv942.i.i, %index1455 ; 2 uses
  %i.agz = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %i.agy
  %wide.load1457.a = load <4 x double>, ptr %i.agz, align 8, !tbaa !117
  %i.aha = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %i.agy
  %wide.load1458 = load <4 x double>, ptr %i.aha, align 8, !tbaa !117
  %i.ahb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1458, %wide.load1457.a
  %i.ahc = fadd reassoc nsz arcp contract afn <4 x double> %i.ahb, %vec.phi1456 ; 2 uses
  %index.next1459 = add nuw i64 %index1455, 4     ; 2 uses
  %i.ahd = icmp eq i64 %index.next1459, %n.vec1453
  br i1 %i.ahd, label %vec.epilog.middle.block1460, label %vec.epilog.vector.body1454, !llvm.loop !60

vec.epilog.middle.block1460:                      ; preds = %vec.epilog.vector.body1454
  %i.ahe = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ahc) ; 2 uses
  br i1 %cmp.n1461, label %iter.check1403, label %vec.epilog.scalar.ph1448.preheader

vec.epilog.scalar.ph1448.preheader:               ; preds = %iter.check1446, %vec.epilog.iter.check1447, %vec.epilog.middle.block1460
  %indvars.iv969.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1446 ], [ %i.afy, %vec.epilog.iter.check1447 ], [ %i.afz, %vec.epilog.middle.block1460 ]
  %.3677802.i.i.ph = phi double [ 0.000000e+00, %iter.check1446 ], [ %i.agw, %vec.epilog.iter.check1447 ], [ %i.ahe, %vec.epilog.middle.block1460 ]
  br label %vec.epilog.scalar.ph1448

vec.epilog.scalar.ph1448:                         ; preds = %vec.epilog.scalar.ph1448.preheader, %vec.epilog.scalar.ph1448
  %indvars.iv969.i.i = phi i64 [ %indvars.iv.next970.i.i, %vec.epilog.scalar.ph1448 ], [ %indvars.iv969.i.i.ph, %vec.epilog.scalar.ph1448.preheader ] ; 3 uses
  %.3677802.i.i = phi double [ %i.ahi, %vec.epilog.scalar.ph1448 ], [ %.3677802.i.i.ph, %vec.epilog.scalar.ph1448.preheader ]
  %gep1184.i.i = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %indvars.iv969.i.i
  %i.ahf = load double, ptr %gep1184.i.i, align 8, !tbaa !117
  %gep1186.i.i = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv969.i.i
  %i.ahg = load double, ptr %gep1186.i.i, align 8, !tbaa !117
  %i.ahh = fmul reassoc nsz arcp contract afn double %i.ahg, %i.ahf
  %i.ahi = fadd reassoc nsz arcp contract afn double %i.ahh, %.3677802.i.i ; 2 uses
  %indvars.iv.next970.i.i = add nuw nsw i64 %indvars.iv969.i.i, 1 ; 2 uses
  %exitcond973.not.i.i = icmp eq i64 %indvars.iv.next970.i.i, %wide.trip.count990.i.i
  br i1 %exitcond973.not.i.i, label %iter.check1403, label %vec.epilog.scalar.ph1448, !llvm.loop !61

iter.check1403:                                   ; preds = %vec.epilog.scalar.ph1448, %vec.epilog.middle.block1460, %middle.block1441
  %.lcssa785.a = phi double [ %i.ahe, %vec.epilog.middle.block1460 ], [ %i.agw, %middle.block1441 ], [ %i.ahi, %vec.epilog.scalar.ph1448 ] ; 3 uses
  br i1 %min.iters.check1383, label %.lr.ph807.i.i.preheader, label %vector.main.loop.iter.check1384

vector.main.loop.iter.check1384:                  ; preds = %iter.check1403
  br i1 %min.iters.check1385, label %vec.epilog.ph1407, label %vector.ph1386

vector.ph1386:                                    ; preds = %vector.main.loop.iter.check1384
  %broadcast.splatinsert1388 = insertelement <4 x double> poison, double %.lcssa785.a, i64 0
  %broadcast.splat1389 = shufflevector <4 x double> %broadcast.splatinsert1388, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.ph1386, %vector.body1390
  %index1391 = phi i64 [ 0, %vector.ph1386 ], [ %index.next1400, %vector.body1390 ] ; 2 uses
  %i.ahj = add nuw i64 %indvars.iv942.i.i, %index1391 ; 2 uses
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.ahj ; 4 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 32
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahk, i64 64
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 96
  %wide.load1392.a = load <4 x double>, ptr %i.ahk, align 8, !tbaa !117
  %wide.load1393.a = load <4 x double>, ptr %i.ahl, align 8, !tbaa !117
  %wide.load1394.a = load <4 x double>, ptr %i.ahm, align 8, !tbaa !117
  %wide.load1395.a = load <4 x double>, ptr %i.ahn, align 8, !tbaa !117
  %i.aho = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1392.a, %broadcast.splat1389
  %i.ahp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1393.a, %broadcast.splat1389
  %i.ahq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1394.a, %broadcast.splat1389
  %i.ahr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1395.a, %broadcast.splat1389
  %i.ahs = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %i.ahj ; 5 uses
  %i.aht = getelementptr i8, ptr %i.ahs, i64 32   ; 2 uses
  %i.ahu = getelementptr i8, ptr %i.ahs, i64 64   ; 2 uses
  %i.ahv = getelementptr i8, ptr %i.ahs, i64 96   ; 2 uses
  %wide.load1396.a = load <4 x double>, ptr %i.ahs, align 8, !tbaa !117
  %wide.load1397.a = load <4 x double>, ptr %i.aht, align 8, !tbaa !117
  %wide.load1398.a = load <4 x double>, ptr %i.ahu, align 8, !tbaa !117
  %wide.load1399 = load <4 x double>, ptr %i.ahv, align 8, !tbaa !117
  %i.ahw = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1396.a, %i.aho
  %i.ahx = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1397.a, %i.ahp
  %i.ahy = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1398.a, %i.ahq
  %i.ahz = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1399, %i.ahr
  store <4 x double> %i.ahw, ptr %i.ahs, align 8, !tbaa !117
  store <4 x double> %i.ahx, ptr %i.aht, align 8, !tbaa !117
  store <4 x double> %i.ahy, ptr %i.ahu, align 8, !tbaa !117
  store <4 x double> %i.ahz, ptr %i.ahv, align 8, !tbaa !117
  %index.next1400 = add nuw i64 %index1391, 16    ; 2 uses
  %i.aia = icmp eq i64 %index.next1400, %n.vec1387
  br i1 %i.aia, label %middle.block1401, label %vector.body1390, !llvm.loop !62

middle.block1401:                                 ; preds = %vector.body1390
  br i1 %cmp.n1402, label %._crit_edge808.i.i, label %vec.epilog.iter.check1404

vec.epilog.iter.check1404:                        ; preds = %middle.block1401
  br i1 %min.epilog.iters.check1406, label %.lr.ph807.i.i.preheader, label %vec.epilog.ph1407, !prof !121

vec.epilog.ph1407:                                ; preds = %vector.main.loop.iter.check1384, %vec.epilog.iter.check1404
  %vec.epilog.resume.val1408 = phi i64 [ %n.vec1387, %vec.epilog.iter.check1404 ], [ 0, %vector.main.loop.iter.check1384 ]
  %broadcast.splatinsert1410 = insertelement <4 x double> poison, double %.lcssa785.a, i64 0
  %broadcast.splat1411 = shufflevector <4 x double> %broadcast.splatinsert1410, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1412

vec.epilog.vector.body1412:                       ; preds = %vec.epilog.vector.body1412, %vec.epilog.ph1407
  %index1413 = phi i64 [ %vec.epilog.resume.val1408, %vec.epilog.ph1407 ], [ %index.next1416, %vec.epilog.vector.body1412 ] ; 2 uses
  %i.aib = add nuw i64 %indvars.iv942.i.i, %index1413 ; 2 uses
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.aib
  %wide.load1414.a = load <4 x double>, ptr %i.aic, align 8, !tbaa !117
  %i.aid = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1414.a, %broadcast.splat1411
  %i.aie = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %i.aib ; 2 uses
  %wide.load1415 = load <4 x double>, ptr %i.aie, align 8, !tbaa !117
  %i.aif = fadd reassoc nsz arcp contract afn <4 x double> %wide.load1415, %i.aid
  store <4 x double> %i.aif, ptr %i.aie, align 8, !tbaa !117
  %index.next1416 = add nuw i64 %index1413, 4     ; 2 uses
  %i.aig = icmp eq i64 %index.next1416, %n.vec1409
  br i1 %i.aig, label %vec.epilog.middle.block1417, label %vec.epilog.vector.body1412, !llvm.loop !63

vec.epilog.middle.block1417:                      ; preds = %vec.epilog.vector.body1412
  br i1 %cmp.n1418, label %._crit_edge808.i.i, label %.lr.ph807.i.i.preheader

.lr.ph807.i.i.preheader:                          ; preds = %iter.check1403, %vec.epilog.iter.check1404, %vec.epilog.middle.block1417
  %indvars.iv974.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1403 ], [ %i.agb, %vec.epilog.iter.check1404 ], [ %i.agc, %vec.epilog.middle.block1417 ]
  br label %.lr.ph807.i.i

._crit_edge808.i.i:                               ; preds = %.lr.ph807.i.i, %vec.epilog.middle.block1417, %middle.block1401
  %indvars.iv.next980.i.i = add nuw nsw i64 %indvars.iv979.i.i, 1 ; 2 uses
  %exitcond983.not.i.i = icmp eq i64 %indvars.iv.next980.i.i, %i.fc
  br i1 %exitcond983.not.i.i, label %iter.check1366, label %iter.check1446

iter.check1366:                                   ; preds = %._crit_edge808.i.i
  %min.iters.check1350 = icmp ult i64 %i.oh, 4
  br i1 %min.iters.check1350, label %.lr.ph812.i.i.preheader, label %vector.main.loop.iter.check1351

vector.main.loop.iter.check1351:                  ; preds = %iter.check1366
  %min.iters.check1352 = icmp ult i64 %i.oh, 16
  br i1 %min.iters.check1352, label %vec.epilog.ph1370, label %vector.ph1353

vector.ph1353:                                    ; preds = %vector.main.loop.iter.check1351
  %i.aih = and i64 %i.oh, 12
  %n.vec1354 = and i64 %i.oh, -16                 ; 4 uses
  %i.aii = add i64 %indvars.iv942.i.i, %n.vec1354
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %.lcssa783.a, i64 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aij = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv942.i.i
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.ph1353, %vector.body1357
  %index1358 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1363, %vector.body1357 ] ; 2 uses
  %i.aik = getelementptr [8 x i8], ptr %i.aij, i64 %index1358 ; 5 uses
  %i.ail = getelementptr i8, ptr %i.aik, i64 32   ; 2 uses
  %i.aim = getelementptr i8, ptr %i.aik, i64 64   ; 2 uses
  %i.ain = getelementptr i8, ptr %i.aik, i64 96   ; 2 uses
  %wide.load1359.a = load <4 x double>, ptr %i.aik, align 8, !tbaa !117
  %wide.load1360.a = load <4 x double>, ptr %i.ail, align 8, !tbaa !117
  %wide.load1361.a = load <4 x double>, ptr %i.aim, align 8, !tbaa !117
  %wide.load1362 = load <4 x double>, ptr %i.ain, align 8, !tbaa !117
  %i.aio = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1359.a, %broadcast.splat1356
  %i.aip = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1360.a, %broadcast.splat1356
  %i.aiq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1361.a, %broadcast.splat1356
  %i.air = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1362, %broadcast.splat1356
  store <4 x double> %i.aio, ptr %i.aik, align 8, !tbaa !117
  store <4 x double> %i.aip, ptr %i.ail, align 8, !tbaa !117
  store <4 x double> %i.aiq, ptr %i.aim, align 8, !tbaa !117
  store <4 x double> %i.air, ptr %i.ain, align 8, !tbaa !117
  %index.next1363 = add nuw i64 %index1358, 16    ; 2 uses
  %i.ais = icmp eq i64 %index.next1363, %n.vec1354
  br i1 %i.ais, label %middle.block1364, label %vector.body1357, !llvm.loop !64

middle.block1364:                                 ; preds = %vector.body1357
  %cmp.n1365 = icmp eq i64 %i.oh, %n.vec1354
  br i1 %cmp.n1365, label %.loopexit753.i.loopexit.i, label %vec.epilog.iter.check1367

vec.epilog.iter.check1367:                        ; preds = %middle.block1364
  %min.epilog.iters.check1369 = icmp eq i64 %i.aih, 0
  br i1 %min.epilog.iters.check1369, label %.lr.ph812.i.i.preheader, label %vec.epilog.ph1370, !prof !121

vec.epilog.ph1370:                                ; preds = %vector.main.loop.iter.check1351, %vec.epilog.iter.check1367
  %vec.epilog.resume.val1371 = phi i64 [ %n.vec1354, %vec.epilog.iter.check1367 ], [ 0, %vector.main.loop.iter.check1351 ]
  %n.vec1372 = and i64 %i.oh, -4                  ; 3 uses
  %i.ait = add i64 %indvars.iv942.i.i, %n.vec1372
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %.lcssa783.a, i64 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aiu = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv942.i.i
  br label %vec.epilog.vector.body1375

vec.epilog.vector.body1375:                       ; preds = %vec.epilog.vector.body1375, %vec.epilog.ph1370
  %index1376 = phi i64 [ %vec.epilog.resume.val1371, %vec.epilog.ph1370 ], [ %index.next1378, %vec.epilog.vector.body1375 ] ; 2 uses
  %i.aiv = getelementptr [8 x i8], ptr %i.aiu, i64 %index1376 ; 2 uses
  %wide.load1377 = load <4 x double>, ptr %i.aiv, align 8, !tbaa !117
  %i.aiw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1377, %broadcast.splat1374
  store <4 x double> %i.aiw, ptr %i.aiv, align 8, !tbaa !117
  %index.next1378 = add nuw i64 %index1376, 4     ; 2 uses
  %i.aix = icmp eq i64 %index.next1378, %n.vec1372
  br i1 %i.aix, label %vec.epilog.middle.block1379, label %vec.epilog.vector.body1375, !llvm.loop !65

vec.epilog.middle.block1379:                      ; preds = %vec.epilog.vector.body1375
  %cmp.n1380 = icmp eq i64 %i.oh, %n.vec1372
  br i1 %cmp.n1380, label %.loopexit753.i.loopexit.i, label %.lr.ph812.i.i.preheader

.lr.ph812.i.i.preheader:                          ; preds = %iter.check1366, %vec.epilog.iter.check1367, %vec.epilog.middle.block1379
  %indvars.iv984.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1366 ], [ %i.aii, %vec.epilog.iter.check1367 ], [ %i.ait, %vec.epilog.middle.block1379 ]
  br label %.lr.ph812.i.i

.lr.ph807.i.i:                                    ; preds = %.lr.ph807.i.i.preheader, %.lr.ph807.i.i
  %indvars.iv974.i.i = phi i64 [ %indvars.iv.next975.i.i, %.lr.ph807.i.i ], [ %indvars.iv974.i.i.ph, %.lr.ph807.i.i.preheader ] ; 3 uses
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv974.i.i
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !117
  %i.aja = fmul reassoc nsz arcp contract afn double %i.aiz, %.lcssa785.a
  %gep1188.i.i = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %indvars.iv974.i.i ; 2 uses
  %i.ajb = load double, ptr %gep1188.i.i, align 8, !tbaa !117
  %i.ajc = fadd reassoc nsz arcp contract afn double %i.ajb, %i.aja
  store double %i.ajc, ptr %gep1188.i.i, align 8, !tbaa !117
  %indvars.iv.next975.i.i = add nuw nsw i64 %indvars.iv974.i.i, 1 ; 2 uses
  %exitcond978.not.i.i = icmp eq i64 %indvars.iv.next975.i.i, %wide.trip.count990.i.i
  br i1 %exitcond978.not.i.i, label %._crit_edge808.i.i, label %.lr.ph807.i.i, !llvm.loop !66

.lr.ph812.i.i:                                    ; preds = %.lr.ph812.i.i.preheader, %.lr.ph812.i.i
  %indvars.iv984.i.i = phi i64 [ %indvars.iv.next985.i.i, %.lr.ph812.i.i ], [ %indvars.iv984.i.i.ph, %.lr.ph812.i.i.preheader ] ; 2 uses
  %gep1190.i.i = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv984.i.i ; 2 uses
  %i.ajd = load double, ptr %gep1190.i.i, align 8, !tbaa !117
  %i.aje = fmul reassoc nsz arcp contract afn double %i.ajd, %.lcssa783.a
  store double %i.aje, ptr %gep1190.i.i, align 8, !tbaa !117
  %indvars.iv.next985.i.i = add nuw nsw i64 %indvars.iv984.i.i, 1 ; 2 uses
  %exitcond988.not.i.i = icmp eq i64 %indvars.iv.next985.i.i, %wide.trip.count990.i.i
  br i1 %exitcond988.not.i.i, label %.loopexit753.i.loopexit.i, label %.lr.ph812.i.i, !llvm.loop !67

.loopexit753.i.loopexit.i:                        ; preds = %.lr.ph812.i.i, %vec.epilog.middle.block1379, %middle.block1364
  %.pre147.i = load double, ptr %i.oj, align 8, !tbaa !117
  br label %.loopexit753.i.i

.loopexit753.i.i:                                 ; preds = %.loopexit753.i.loopexit.i, %._crit_edge791.i.i, %.loopexit758.i.i
  %i.ajf = phi double [ %i.oi, %.loopexit758.i.i ], [ %i.oi, %._crit_edge791.i.i ], [ %.pre147.i, %.loopexit753.i.loopexit.i ]
  %.2670.i.i = phi nsz double [ 0.000000e+00, %.loopexit758.i.i ], [ 0.000000e+00, %._crit_edge791.i.i ], [ %i.aek, %.loopexit753.i.loopexit.i ] ; 2 uses
  %.4.i.i = phi nsz double [ 0.000000e+00, %.loopexit758.i.i ], [ %.lcssa783.a, %._crit_edge791.i.i ], [ %.lcssa783.a, %.loopexit753.i.loopexit.i ]
  %i.ajg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.abq)
  %i.ajh = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ajf)
  %i.aji = fadd reassoc nsz arcp contract afn double %i.ajh, %i.ajg ; 2 uses
  %i.ajj = fcmp reassoc nsz arcp contract afn ogt double %.0672813.i.i, %i.aji
  %.0672..i.i = select reassoc nsz arcp contract afn i1 %i.ajj, double %.0672813.i.i, double %i.aji ; 11 uses
  %indvars.iv.next943.i.i = add nuw nsw i64 %indvars.iv942.i.i, 1
  %exitcond991.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count990.i.i
  br i1 %exitcond991.not.i.i, label %._crit_edge818.i.i, label %iter.check1795

._crit_edge818.i.i:                               ; preds = %.loopexit753.i.i, %.loopexit745.i.i
  %indvar1210 = phi i32 [ %indvar.next1211, %.loopexit745.i.i ], [ 0, %.loopexit753.i.i ] ; 3 uses
  %indvars.iv1017.in.i.i = phi i64 [ %indvars.iv1017.i.i, %.loopexit745.i.i ], [ %i.ml, %.loopexit753.i.i ] ; 6 uses
  %.3671835.i.i = phi double [ %i.anq, %.loopexit745.i.i ], [ %.2670.i.i, %.loopexit753.i.i ] ; 2 uses
  %i.ajk = sub i32 %i.jb, %indvar1210
  %i.ajl = sext i32 %i.ajk to i64
  %i.ajm = sub nsw i64 %i.ms, %i.ajl
  %i.ajn = sub i32 %i.jb, %indvar1210
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = sub nsw i64 %i.mu, %i.ajo              ; 18 uses
  %indvars116.i = trunc i64 %indvars.iv1017.in.i.i to i32 ; 3 uses
  %indvars.iv1017.i.i = add nsw i64 %indvars.iv1017.in.i.i, -1 ; 6 uses
  %indvars.i = trunc i64 %indvars.iv1017.i.i to i32 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv1017.in.i.i, %i.mo
  br i1 %.not.i.i, label %.loopexit745.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge818.i.i
  %i.ajq = fcmp reassoc nsz arcp contract afn une double %.3671835.i.i, 0.000000e+00
  %i.ajr = icmp sge i32 %i.mj, %indvars116.i      ; 2 uses
  %or.cond1231.i.i = and i1 %i.ajr, %i.ajq
  br i1 %or.cond1231.i.i, label %.lr.ph823.i.i, label %.loopexit747.i.i

.lr.ph823.i.i:                                    ; preds = %bb.r
  %i.ajs = mul nsw i64 %indvars.iv1017.i.i, %i.gs
  %sext.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.ajt = ashr exact i64 %sext.i, 32             ; 15 uses
  %i.aju = getelementptr [8 x i8], ptr %i.gy, i64 %i.ajs ; 6 uses
  %i.ajv = getelementptr [8 x i8], ptr %i.aju, i64 %i.ajt
  %invariant.gep1193.i.i = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv1017.i.i ; 7 uses
  %i.ajw = load double, ptr %i.ajv, align 8, !tbaa !117
  %i.ajx = fmul reassoc nsz arcp contract afn double %i.ajw, %.3671835.i.i ; 2 uses
  %min.iters.check1327 = icmp ult i64 %i.ajp, 4
  br i1 %min.iters.check1327, label %scalar.ph1326.preheader, label %vector.ph1328

vector.ph1328:                                    ; preds = %.lr.ph823.i.i
  %n.vec1329 = and i64 %i.ajp, -4                 ; 3 uses
  %i.ajy = add nsw i64 %i.ajt, %n.vec1329
  %broadcast.splatinsert1330 = insertelement <4 x double> poison, double %i.ajx, i64 0
  %broadcast.splat1331 = shufflevector <4 x double> %broadcast.splatinsert1330, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1334 = insertelement <4 x i64> poison, i64 %i.ajt, i64 0
  %broadcast.splat1335 = shufflevector <4 x i64> %broadcast.splatinsert1334, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1336 = add nuw nsw <4 x i64> %broadcast.splat1335, <i64 0, i64 1, i64 2, i64 3>
  %i.ajz = getelementptr [8 x i8], ptr %i.aju, i64 %i.ajt
  %i.aka = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1331
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1328
  %index1338 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1342, %vector.body1337 ] ; 2 uses
  %vec.ind1339 = phi <4 x i64> [ %induction1336, %vector.ph1328 ], [ %vec.ind.next1343, %vector.body1337 ] ; 2 uses
  %i.akb = getelementptr [8 x i8], ptr %i.ajz, i64 %index1338
  %wide.load1340 = load <4 x double>, ptr %i.akb, align 8, !tbaa !117
  %i.akc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1340, %i.aka
  %i.akd = mul nsw <4 x i64> %vec.ind1339, %broadcast.splat1333
  %wide.gep1341 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, <4 x i64> %i.akd
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.akc, <4 x ptr> align 8 %wide.gep1341, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1342 = add nuw i64 %index1338, 4     ; 2 uses
  %vec.ind.next1343 = add nuw nsw <4 x i64> %vec.ind1339, splat (i64 4)
  %i.ake = icmp eq i64 %index.next1342, %n.vec1329
  br i1 %i.ake, label %middle.block1344, label %vector.body1337, !llvm.loop !68

middle.block1344:                                 ; preds = %vector.body1337
  %cmp.n1345 = icmp eq i64 %i.ajp, %n.vec1329
  br i1 %cmp.n1345, label %iter.check1299.preheader, label %scalar.ph1326.preheader

scalar.ph1326.preheader:                          ; preds = %.lr.ph823.i.i, %middle.block1344
  %indvars.iv992.i.i.ph = phi i64 [ %i.ajt, %.lr.ph823.i.i ], [ %i.ajy, %middle.block1344 ]
  %i.akf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ajx
  br label %scalar.ph1326

scalar.ph1326:                                    ; preds = %scalar.ph1326.preheader, %scalar.ph1326
  %indvars.iv992.i.i = phi i64 [ %indvars.iv.next993.i.i, %scalar.ph1326 ], [ %indvars.iv992.i.i.ph, %scalar.ph1326.preheader ] ; 3 uses
  %gep1192.i.i = getelementptr [8 x i8], ptr %i.aju, i64 %indvars.iv992.i.i
  %i.akg = load double, ptr %gep1192.i.i, align 8, !tbaa !117
  %i.akh = fmul reassoc nsz arcp contract afn double %i.akg, %i.akf
  %i.aki = mul nsw i64 %indvars.iv992.i.i, %i.ml
  %gep1194.i.i = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.aki
  store double %i.akh, ptr %gep1194.i.i, align 8, !tbaa !117
  %indvars.iv.next993.i.i = add nuw nsw i64 %indvars.iv992.i.i, 1 ; 2 uses
  %exitcond996.not.i.i = icmp eq i64 %indvars.iv.next993.i.i, %i.ml
  br i1 %exitcond996.not.i.i, label %iter.check1299.preheader, label %scalar.ph1326, !llvm.loop !69

iter.check1299.preheader:                         ; preds = %scalar.ph1326, %middle.block1344
  %min.iters.check1260 = icmp ult i64 %i.ajp, 4
  %min.iters.check1262 = icmp ult i64 %i.ajp, 16
  %i.akj = and i64 %i.ajp, 12
  %n.vec1264 = and i64 %i.ajp, -16                ; 4 uses
  %i.akk = add nsw i64 %i.ajt, %n.vec1264         ; 2 uses
  %broadcast.splatinsert1267 = insertelement <4 x i64> poison, i64 %i.ajt, i64 0
  %broadcast.splat1268 = shufflevector <4 x i64> %broadcast.splatinsert1267, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1269 = add nuw nsw <4 x i64> %broadcast.splat1268, <i64 0, i64 1, i64 2, i64 3>
  %i.akl = getelementptr [8 x i8], ptr %i.aju, i64 %i.ajt
  %cmp.n1298 = icmp eq i64 %i.ajp, %n.vec1264
  %min.epilog.iters.check1302 = icmp eq i64 %i.akj, 0
  %n.vec1307 = and i64 %i.ajp, -4                 ; 3 uses
  %i.akm = add nsw i64 %i.ajt, %n.vec1307
  %i.akn = getelementptr [8 x i8], ptr %i.aju, i64 %i.ajt
  %cmp.n1323 = icmp eq i64 %i.ajp, %n.vec1307
  %xtraiter2088 = and i64 %i.ajp, 3               ; 2 uses
  %lcmp.mod2089.not = icmp eq i64 %xtraiter2088, 0
  %i.ako = icmp ult i64 %i.ajm, 3
  br label %iter.check1299

iter.check1299:                                   ; preds = %iter.check1299.preheader, %._crit_edge830.i.i
  %indvars.iv1007.i.i = phi i64 [ %indvars.iv.next1008.i.i, %._crit_edge830.i.i ], [ %i.ajt, %iter.check1299.preheader ] ; 2 uses
  %invariant.gep1197.i.i = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv1007.i.i ; 11 uses
  br i1 %min.iters.check1260, label %vec.epilog.scalar.ph1301.preheader, label %vector.main.loop.iter.check1261

vector.main.loop.iter.check1261:                  ; preds = %iter.check1299
  br i1 %min.iters.check1262, label %vec.epilog.ph1303, label %vector.body1270

vector.body1270:                                  ; preds = %vector.main.loop.iter.check1261, %vector.body1270
  %index1271 = phi i64 [ %index.next1292, %vector.body1270 ], [ 0, %vector.main.loop.iter.check1261 ] ; 2 uses
  %vec.ind1272 = phi <4 x i64> [ %vec.ind.next1293, %vector.body1270 ], [ %induction1269, %vector.main.loop.iter.check1261 ] ; 5 uses
  %vec.phi1273.a = phi <4 x double> [ %i.alb, %vector.body1270 ], [ zeroinitializer, %vector.main.loop.iter.check1261 ]
  %vec.phi1274.a = phi <4 x double> [ %i.alc, %vector.body1270 ], [ zeroinitializer, %vector.main.loop.iter.check1261 ]
  %vec.phi1275.a = phi <4 x double> [ %i.ald, %vector.body1270 ], [ zeroinitializer, %vector.main.loop.iter.check1261 ]
  %vec.phi1276 = phi <4 x double> [ %i.ale, %vector.body1270 ], [ zeroinitializer, %vector.main.loop.iter.check1261 ]
  %step.add1277 = add nuw nsw <4 x i64> %vec.ind1272, splat (i64 4)
  %step.add.21278 = add nuw nsw <4 x i64> %vec.ind1272, splat (i64 8)
  %step.add.31279 = add nuw nsw <4 x i64> %vec.ind1272, splat (i64 12)
  %i.akp = getelementptr [8 x i8], ptr %i.akl, i64 %index1271 ; 4 uses
  %i.akq = getelementptr i8, ptr %i.akp, i64 32
  %i.akr = getelementptr i8, ptr %i.akp, i64 64
  %i.aks = getelementptr i8, ptr %i.akp, i64 96
  %wide.load1280.a = load <4 x double>, ptr %i.akp, align 8, !tbaa !117
  %wide.load1281.a = load <4 x double>, ptr %i.akq, align 8, !tbaa !117
  %wide.load1282.a = load <4 x double>, ptr %i.akr, align 8, !tbaa !117
  %wide.load1283 = load <4 x double>, ptr %i.aks, align 8, !tbaa !117
  %i.akt = mul nuw nsw <4 x i64> %vec.ind1272, %broadcast.splat1266
  %i.aku = mul nuw nsw <4 x i64> %step.add1277, %broadcast.splat1266
  %i.akv = mul nuw nsw <4 x i64> %step.add.21278, %broadcast.splat1266
  %i.akw = mul nuw nsw <4 x i64> %step.add.31279, %broadcast.splat1266
  %wide.gep1284.a = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.akt
  %wide.gep1285.a = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.aku
  %wide.gep1286.a = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.akv
  %wide.gep1287 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.akw
  %wide.masked.gather1288.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1284.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1289.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1285.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1290.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1286.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1291 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1287, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.akx = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1288.a, %wide.load1280.a
  %i.aky = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1289.a, %wide.load1281.a
  %i.akz = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1290.a, %wide.load1282.a
  %i.ala = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1291, %wide.load1283
  %i.alb = fadd reassoc nsz arcp contract afn <4 x double> %i.akx, %vec.phi1273.a ; 2 uses
  %i.alc = fadd reassoc nsz arcp contract afn <4 x double> %i.aky, %vec.phi1274.a ; 2 uses
  %i.ald = fadd reassoc nsz arcp contract afn <4 x double> %i.akz, %vec.phi1275.a ; 2 uses
  %i.ale = fadd reassoc nsz arcp contract afn <4 x double> %i.ala, %vec.phi1276 ; 2 uses
  %index.next1292 = add nuw i64 %index1271, 16    ; 2 uses
  %vec.ind.next1293 = add nuw nsw <4 x i64> %vec.ind1272, splat (i64 16)
  %i.alf = icmp eq i64 %index.next1292, %n.vec1264
  br i1 %i.alf, label %middle.block1294, label %vector.body1270, !llvm.loop !70

middle.block1294:                                 ; preds = %vector.body1270
  %bin.rdx1295.a = fadd reassoc nsz arcp contract afn <4 x double> %i.alc, %i.alb
  %bin.rdx1296.a = fadd reassoc nsz arcp contract afn <4 x double> %i.ald, %bin.rdx1295.a
  %bin.rdx1297 = fadd reassoc nsz arcp contract afn <4 x double> %i.ale, %bin.rdx1296.a
  %i.alg = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1297) ; 3 uses
  br i1 %cmp.n1298, label %.lr.ph829.i.i.preheader, label %vec.epilog.iter.check1300

vec.epilog.iter.check1300:                        ; preds = %middle.block1294
  br i1 %min.epilog.iters.check1302, label %vec.epilog.scalar.ph1301.preheader, label %vec.epilog.ph1303, !prof !121

vec.epilog.ph1303:                                ; preds = %vector.main.loop.iter.check1261, %vec.epilog.iter.check1300
  %vec.epilog.resume.val1304 = phi i64 [ %n.vec1264, %vec.epilog.iter.check1300 ], [ 0, %vector.main.loop.iter.check1261 ]
  %bc.resume.val1305 = phi i64 [ %i.akk, %vec.epilog.iter.check1300 ], [ %i.ajt, %vector.main.loop.iter.check1261 ]
  %bc.merge.rdx1306 = phi double [ %i.alg, %vec.epilog.iter.check1300 ], [ 0.000000e+00, %vector.main.loop.iter.check1261 ]
  %i.alh = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1306, i64 0
  %broadcast.splatinsert1310 = insertelement <4 x i64> poison, i64 %bc.resume.val1305, i64 0
  %broadcast.splat1311 = shufflevector <4 x i64> %broadcast.splatinsert1310, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1312 = add nuw nsw <4 x i64> %broadcast.splat1311, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1313

vec.epilog.vector.body1313:                       ; preds = %vec.epilog.vector.body1313, %vec.epilog.ph1303
  %index1314 = phi i64 [ %vec.epilog.resume.val1304, %vec.epilog.ph1303 ], [ %index.next1320, %vec.epilog.vector.body1313 ] ; 2 uses
  %vec.ind1315 = phi <4 x i64> [ %induction1312, %vec.epilog.ph1303 ], [ %vec.ind.next1321, %vec.epilog.vector.body1313 ] ; 2 uses
  %vec.phi1316 = phi <4 x double> [ %i.alh, %vec.epilog.ph1303 ], [ %i.all, %vec.epilog.vector.body1313 ]
  %i.ali = getelementptr [8 x i8], ptr %i.akn, i64 %index1314
  %wide.load1317 = load <4 x double>, ptr %i.ali, align 8, !tbaa !117
  %i.alj = mul nuw nsw <4 x i64> %vec.ind1315, %broadcast.splat1309
  %wide.gep1318 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.alj
  %wide.masked.gather1319 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1318, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.alk = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1319, %wide.load1317
  %i.all = fadd reassoc nsz arcp contract afn <4 x double> %i.alk, %vec.phi1316 ; 2 uses
  %index.next1320 = add nuw i64 %index1314, 4     ; 2 uses
  %vec.ind.next1321 = add nuw nsw <4 x i64> %vec.ind1315, splat (i64 4)
  %i.alm = icmp eq i64 %index.next1320, %n.vec1307
  br i1 %i.alm, label %vec.epilog.middle.block1322, label %vec.epilog.vector.body1313, !llvm.loop !71

vec.epilog.middle.block1322:                      ; preds = %vec.epilog.vector.body1313
  %i.aln = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.all) ; 2 uses
  br i1 %cmp.n1323, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1301.preheader

vec.epilog.scalar.ph1301.preheader:               ; preds = %iter.check1299, %vec.epilog.iter.check1300, %vec.epilog.middle.block1322
  %indvars.iv997.i.i.ph = phi i64 [ %i.ajt, %iter.check1299 ], [ %i.akk, %vec.epilog.iter.check1300 ], [ %i.akm, %vec.epilog.middle.block1322 ]
  %.4678824.i.i.ph = phi double [ 0.000000e+00, %iter.check1299 ], [ %i.alg, %vec.epilog.iter.check1300 ], [ %i.aln, %vec.epilog.middle.block1322 ]
  br label %vec.epilog.scalar.ph1301

vec.epilog.scalar.ph1301:                         ; preds = %vec.epilog.scalar.ph1301.preheader, %vec.epilog.scalar.ph1301
  %indvars.iv997.i.i = phi i64 [ %indvars.iv.next998.i.i, %vec.epilog.scalar.ph1301 ], [ %indvars.iv997.i.i.ph, %vec.epilog.scalar.ph1301.preheader ] ; 3 uses
  %.4678824.i.i = phi double [ %i.als, %vec.epilog.scalar.ph1301 ], [ %.4678824.i.i.ph, %vec.epilog.scalar.ph1301.preheader ]
  %gep1196.i.i = getelementptr [8 x i8], ptr %i.aju, i64 %indvars.iv997.i.i
  %i.alo = load double, ptr %gep1196.i.i, align 8, !tbaa !117
  %i.alp = mul nuw nsw i64 %indvars.iv997.i.i, %i.ml
  %gep1198.i.i = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.alp
  %i.alq = load double, ptr %gep1198.i.i, align 8, !tbaa !117
  %i.alr = fmul reassoc nsz arcp contract afn double %i.alq, %i.alo
  %i.als = fadd reassoc nsz arcp contract afn double %i.alr, %.4678824.i.i ; 2 uses
  %indvars.iv.next998.i.i = add nuw nsw i64 %indvars.iv997.i.i, 1 ; 2 uses
  %exitcond1001.not.i.i = icmp eq i64 %indvars.iv.next998.i.i, %i.ml
  br i1 %exitcond1001.not.i.i, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1301, !llvm.loop !72

.lr.ph829.i.i.preheader:                          ; preds = %vec.epilog.scalar.ph1301, %vec.epilog.middle.block1322, %middle.block1294
  %.lcssa786.a = phi double [ %i.aln, %vec.epilog.middle.block1322 ], [ %i.alg, %middle.block1294 ], [ %i.als, %vec.epilog.scalar.ph1301 ] ; 5 uses
  br i1 %lcmp.mod2089.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol

.lr.ph829.i.i.prol:                               ; preds = %.lr.ph829.i.i.preheader, %.lr.ph829.i.i.prol
  %indvars.iv1002.i.i.prol = phi i64 [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ], [ %i.ajt, %.lr.ph829.i.i.preheader ] ; 2 uses
  %prol.iter2090 = phi i64 [ %prol.iter2090.next, %.lr.ph829.i.i.prol ], [ 0, %.lr.ph829.i.i.preheader ]
  %i.alt = mul nuw nsw i64 %indvars.iv1002.i.i.prol, %i.ml ; 2 uses
  %gep1200.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.alt
  %i.alu = load double, ptr %gep1200.i.i.prol, align 8, !tbaa !117
  %i.alv = fmul reassoc nsz arcp contract afn double %i.alu, %.lcssa786.a
  %gep1202.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.alt ; 2 uses
  %i.alw = load double, ptr %gep1202.i.i.prol, align 8, !tbaa !117
  %i.alx = fadd reassoc nsz arcp contract afn double %i.alw, %i.alv
  store double %i.alx, ptr %gep1202.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.prol = add nuw nsw i64 %indvars.iv1002.i.i.prol, 1 ; 2 uses
  %prol.iter2090.next = add i64 %prol.iter2090, 1 ; 2 uses
  %prol.iter2090.cmp.not = icmp eq i64 %prol.iter2090.next, %xtraiter2088
  br i1 %prol.iter2090.cmp.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol, !llvm.loop !73

.lr.ph829.i.i.prol.loopexit:                      ; preds = %.lr.ph829.i.i.prol, %.lr.ph829.i.i.preheader
  %indvars.iv1002.i.i.unr = phi i64 [ %i.ajt, %.lr.ph829.i.i.preheader ], [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ]
  br i1 %i.ako, label %._crit_edge830.i.i, label %.lr.ph829.i.i

._crit_edge830.i.i:                               ; preds = %.lr.ph829.i.i, %.lr.ph829.i.i.prol.loopexit
  %indvars.iv.next1008.i.i = add nuw nsw i64 %indvars.iv1007.i.i, 1 ; 2 uses
  %exitcond1011.not.i.i = icmp eq i64 %indvars.iv.next1008.i.i, %i.ml
  br i1 %exitcond1011.not.i.i, label %.loopexit747.i.i, label %iter.check1299

.lr.ph829.i.i:                                    ; preds = %.lr.ph829.i.i.prol.loopexit, %.lr.ph829.i.i
  %indvars.iv1002.i.i = phi i64 [ %indvars.iv.next1003.i.i.3, %.lr.ph829.i.i ], [ %indvars.iv1002.i.i.unr, %.lr.ph829.i.i.prol.loopexit ] ; 5 uses
  %i.aly = mul nuw nsw i64 %indvars.iv1002.i.i, %i.ml ; 2 uses
  %gep1200.i.i = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.aly
  %i.alz = load double, ptr %gep1200.i.i, align 8, !tbaa !117
  %i.ama = fmul reassoc nsz arcp contract afn double %i.alz, %.lcssa786.a
  %gep1202.i.i = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.aly ; 2 uses
  %i.amb = load double, ptr %gep1202.i.i, align 8, !tbaa !117
  %i.amc = fadd reassoc nsz arcp contract afn double %i.amb, %i.ama
  store double %i.amc, ptr %gep1202.i.i, align 8, !tbaa !117
  %indvars.iv.next1003.i.i = add nuw nsw i64 %indvars.iv1002.i.i, 1
  %i.amd = mul nuw nsw i64 %indvars.iv.next1003.i.i, %i.ml ; 2 uses
  %gep1200.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.amd
  %i.ame = load double, ptr %gep1200.i.i.1, align 8, !tbaa !117
  %i.amf = fmul reassoc nsz arcp contract afn double %i.ame, %.lcssa786.a
  %gep1202.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.amd ; 2 uses
  %i.amg = load double, ptr %gep1202.i.i.1, align 8, !tbaa !117
  %i.amh = fadd reassoc nsz arcp contract afn double %i.amg, %i.amf
  store double %i.amh, ptr %gep1202.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.1 = add nuw nsw i64 %indvars.iv1002.i.i, 2
  %i.ami = mul nuw nsw i64 %indvars.iv.next1003.i.i.1, %i.ml ; 2 uses
  %gep1200.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.ami
  %i.amj = load double, ptr %gep1200.i.i.2, align 8, !tbaa !117
  %i.amk = fmul reassoc nsz arcp contract afn double %i.amj, %.lcssa786.a
  %gep1202.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.ami ; 2 uses
  %i.aml = load double, ptr %gep1202.i.i.2, align 8, !tbaa !117
  %i.amm = fadd reassoc nsz arcp contract afn double %i.aml, %i.amk
  store double %i.amm, ptr %gep1202.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.2 = add nuw nsw i64 %indvars.iv1002.i.i, 3
  %i.amn = mul nuw nsw i64 %indvars.iv.next1003.i.i.2, %i.ml ; 2 uses
  %gep1200.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.amn
  %i.amo = load double, ptr %gep1200.i.i.3, align 8, !tbaa !117
  %i.amp = fmul reassoc nsz arcp contract afn double %i.amo, %.lcssa786.a
  %gep1202.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.amn ; 2 uses
  %i.amq = load double, ptr %gep1202.i.i.3, align 8, !tbaa !117
  %i.amr = fadd reassoc nsz arcp contract afn double %i.amq, %i.amp
  store double %i.amr, ptr %gep1202.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.3 = add nuw nsw i64 %indvars.iv1002.i.i, 4 ; 2 uses
  %exitcond1006.not.i.i.3 = icmp eq i64 %indvars.iv.next1003.i.i.3, %i.ml
  br i1 %exitcond1006.not.i.i.3, label %._crit_edge830.i.i, label %.lr.ph829.i.i

.loopexit747.i.i:                                 ; preds = %._crit_edge830.i.i, %bb.r
  br i1 %i.ajr, label %iter.check1237, label %.loopexit745.i.i

iter.check1237:                                   ; preds = %.loopexit747.i.i
  %i.ams = mul i32 %i.mk, %indvars.i
  %i.amt = add i32 %i.ams, %indvars116.i
  %i.amu = sext i32 %i.amt to i64
  %i.amv = shl nsw i64 %i.amu, 3
  %scevgep.i.i = getelementptr i8, ptr %i.gw, i64 %i.amv
  %i.amw = sub i32 %i.mj, %indvars116.i
  %i.amx = zext i32 %i.amw to i64
  %i.amy = shl nuw nsw i64 %i.amx, 3
  %i.amz = add nuw nsw i64 %i.amy, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.amz, i1 false), !tbaa !117
  %sext172.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.ana = ashr exact i64 %sext172.i, 32          ; 5 uses
  %invariant.gep1203.i.i = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv1017.i.i ; 6 uses
  %min.iters.check1213 = icmp ult i64 %i.ajp, 4
  br i1 %min.iters.check1213, label %vec.epilog.scalar.ph1239.preheader, label %vector.main.loop.iter.check1214

vector.main.loop.iter.check1214:                  ; preds = %iter.check1237
  %min.iters.check1215 = icmp ult i64 %i.ajp, 16
  br i1 %min.iters.check1215, label %vec.epilog.ph1241, label %vector.ph1216

vector.ph1216:                                    ; preds = %vector.main.loop.iter.check1214
  %i.anb = and i64 %i.ajp, 12
  %n.vec1217 = and i64 %i.ajp, -16                ; 4 uses
  %i.anc = add nsw i64 %i.ana, %n.vec1217         ; 2 uses
  %broadcast.splatinsert1220 = insertelement <4 x i64> poison, i64 %i.ana, i64 0
  %broadcast.splat1221 = shufflevector <4 x i64> %broadcast.splatinsert1220, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1222 = add nuw nsw <4 x i64> %broadcast.splat1221, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.ph1216, %vector.body1223
  %index1224 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1233, %vector.body1223 ]
  %vec.ind1225 = phi <4 x i64> [ %induction1222, %vector.ph1216 ], [ %vec.ind.next1234, %vector.body1223 ] ; 5 uses
  %step.add1226 = add nuw nsw <4 x i64> %vec.ind1225, splat (i64 4)
  %step.add.21227 = add nuw nsw <4 x i64> %vec.ind1225, splat (i64 8)
  %step.add.31228 = add nuw nsw <4 x i64> %vec.ind1225, splat (i64 12)
  %i.and = mul nsw <4 x i64> %vec.ind1225, %broadcast.splat1219
  %i.ane = mul nsw <4 x i64> %step.add1226, %broadcast.splat1219
  %i.anf = mul nsw <4 x i64> %step.add.21227, %broadcast.splat1219
  %i.ang = mul nsw <4 x i64> %step.add.31228, %broadcast.splat1219
  %wide.gep1229.a = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.and
  %wide.gep1230.a = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.ane
  %wide.gep1231.a = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.anf
  %wide.gep1232 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.ang
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1229.a, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1230.a, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1231.a, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1232, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1233 = add nuw i64 %index1224, 16    ; 2 uses
  %vec.ind.next1234 = add nuw nsw <4 x i64> %vec.ind1225, splat (i64 16)
  %i.anh = icmp eq i64 %index.next1233, %n.vec1217
  br i1 %i.anh, label %middle.block1235, label %vector.body1223, !llvm.loop !74

middle.block1235:                                 ; preds = %vector.body1223
  %cmp.n1236 = icmp eq i64 %i.ajp, %n.vec1217
  br i1 %cmp.n1236, label %.loopexit745.i.i, label %vec.epilog.iter.check1238

vec.epilog.iter.check1238:                        ; preds = %middle.block1235
  %min.epilog.iters.check1240 = icmp eq i64 %i.anb, 0
  br i1 %min.epilog.iters.check1240, label %vec.epilog.scalar.ph1239.preheader, label %vec.epilog.ph1241, !prof !121

vec.epilog.ph1241:                                ; preds = %vector.main.loop.iter.check1214, %vec.epilog.iter.check1238
  %vec.epilog.resume.val1242 = phi i64 [ %n.vec1217, %vec.epilog.iter.check1238 ], [ 0, %vector.main.loop.iter.check1214 ]
  %bc.resume.val1243 = phi i64 [ %i.anc, %vec.epilog.iter.check1238 ], [ %i.ana, %vector.main.loop.iter.check1214 ]
  %n.vec1244 = and i64 %i.ajp, -4                 ; 3 uses
  %i.ani = add nsw i64 %i.ana, %n.vec1244
  %broadcast.splatinsert1247 = insertelement <4 x i64> poison, i64 %bc.resume.val1243, i64 0
  %broadcast.splat1248 = shufflevector <4 x i64> %broadcast.splatinsert1247, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1249 = add nuw nsw <4 x i64> %broadcast.splat1248, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1250

vec.epilog.vector.body1250:                       ; preds = %vec.epilog.vector.body1250, %vec.epilog.ph1241
  %index1251 = phi i64 [ %vec.epilog.resume.val1242, %vec.epilog.ph1241 ], [ %index.next1254, %vec.epilog.vector.body1250 ]
  %vec.ind1252 = phi <4 x i64> [ %induction1249, %vec.epilog.ph1241 ], [ %vec.ind.next1255, %vec.epilog.vector.body1250 ] ; 2 uses
  %i.anj = mul nsw <4 x i64> %vec.ind1252, %broadcast.splat1246
  %wide.gep1253 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.anj
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1253, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1254 = add nuw i64 %index1251, 4     ; 2 uses
  %vec.ind.next1255 = add nuw nsw <4 x i64> %vec.ind1252, splat (i64 4)
  %i.ank = icmp eq i64 %index.next1254, %n.vec1244
  br i1 %i.ank, label %vec.epilog.middle.block1256, label %vec.epilog.vector.body1250, !llvm.loop !75

vec.epilog.middle.block1256:                      ; preds = %vec.epilog.vector.body1250
  %cmp.n1257 = icmp eq i64 %i.ajp, %n.vec1244
  br i1 %cmp.n1257, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1239.preheader

vec.epilog.scalar.ph1239.preheader:               ; preds = %iter.check1237, %vec.epilog.iter.check1238, %vec.epilog.middle.block1256
  %indvars.iv1012.i.i.ph = phi i64 [ %i.ana, %iter.check1237 ], [ %i.anc, %vec.epilog.iter.check1238 ], [ %i.ani, %vec.epilog.middle.block1256 ]
  br label %vec.epilog.scalar.ph1239

vec.epilog.scalar.ph1239:                         ; preds = %vec.epilog.scalar.ph1239.preheader, %vec.epilog.scalar.ph1239
  %indvars.iv1012.i.i = phi i64 [ %indvars.iv.next1013.i.i, %vec.epilog.scalar.ph1239 ], [ %indvars.iv1012.i.i.ph, %vec.epilog.scalar.ph1239.preheader ] ; 2 uses
  %i.anl = mul nsw i64 %indvars.iv1012.i.i, %i.ml
  %gep1204.i.i = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, i64 %i.anl
  store double 0.000000e+00, ptr %gep1204.i.i, align 8, !tbaa !117
  %indvars.iv.next1013.i.i = add nuw nsw i64 %indvars.iv1012.i.i, 1 ; 2 uses
  %exitcond1016.not.i.i = icmp eq i64 %indvars.iv.next1013.i.i, %i.ml
  br i1 %exitcond1016.not.i.i, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1239, !llvm.loop !76

.loopexit745.i.i:                                 ; preds = %vec.epilog.scalar.ph1239, %middle.block1235, %vec.epilog.middle.block1256, %.loopexit747.i.i, %._crit_edge818.i.i
  %i.anm = mul i32 %.0645699.i.i, %indvars.i
  %i.ann = sext i32 %i.anm to i64
  %i.ano = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.ann
  store double 1.000000e+00, ptr %i.ano, align 8, !tbaa !117
  %i.anp = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv1017.i.i
  %i.anq = load double, ptr %i.anp, align 8, !tbaa !117
  %i.anr = icmp sgt i64 %indvars.iv1017.in.i.i, 1
  %indvar.next1211 = add i32 %indvar1210, 1
  br i1 %i.anr, label %._crit_edge818.i.i, label %.preheader742.i.i

.preheader742.i.i:                                ; preds = %.loopexit745.i.i, %.loopexit735.i.i
  %indvars.iv1052.i.i = phi i64 [ %indvars.iv.next1053.i.i, %.loopexit735.i.i ], [ 0, %.loopexit745.i.i ] ; 8 uses
  %indvars.iv1026.in.i.i = phi i64 [ %indvars.iv1026.i.i, %.loopexit735.i.i ], [ %i.ml, %.loopexit745.i.i ] ; 8 uses
  %i.ans = trunc i64 %indvars.iv1052.i.i to i32
  %i.ant = add i32 %i.hj, %i.ans                  ; 3 uses
  %i.anu = zext i32 %i.ant to i64
  %i.anv = add nuw nsw i64 %i.anu, 1              ; 5 uses
  %i.anw = mul nsw i64 %indvars.iv1052.i.i, -8    ; 2 uses
  %scevgep1083.a = getelementptr i8, ptr %i.mv, i64 %i.anw
  %i.anx = mul nsw i64 %indvars.iv1052.i.i, -16   ; 2 uses
  %scevgep1084.a = getelementptr i8, ptr %i.gy, i64 %i.anx
  %scevgep1085 = getelementptr i8, ptr %i.mw, i64 %i.anw
  %i.any = trunc i64 %indvars.iv1052.i.i to i32
  %i.anz = add i32 %i.ji, %i.any
  %i.aoa = zext i32 %i.anz to i64
  %i.aob = shl nuw nsw i64 %i.aoa, 3
  %scevgep1088.a = getelementptr i8, ptr %scevgep1085, i64 %i.aob
  %i.aoc = getelementptr i8, ptr %i.gy, i64 %i.anx
  %scevgep1089 = getelementptr i8, ptr %i.aoc, i64 8
  %i.aod = add i64 %indvars.iv1052.i.i, %i.b      ; 21 uses
  %indvars.iv1026.i.i = add nsw i64 %indvars.iv1026.in.i.i, -1 ; 23 uses
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv1026.i.i
  %i.aof = load double, ptr %i.aoe, align 8, !tbaa !117 ; 2 uses
  %i.aog = icmp slt i64 %indvars.iv1026.in.i.i, %i.ml
  br i1 %i.aog, label %.lr.ph841.i.i, label %.loopexit741.i.i

.lr.ph841.i.i:                                    ; preds = %.preheader742.i.i
  %i.aoh = shl nuw nsw i64 %indvars.iv1052.i.i, 3
  %i.aoi = add nuw nsw i64 %i.aoh, 34359738360
  %i.aoj = and i64 %i.aoi, 34359738360
  %i.aok = add nuw nsw i64 %i.aoj, 8
  %i.aol = trunc nuw nsw i64 %indvars.iv1052.i.i to i32
  %i.aom = mul i32 %i.aol, %i.hb
  %i.aon = add i32 %i.mq, %i.aom
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = shl nsw i64 %i.aoo, 3
  %scevgep1020.i.i = getelementptr i8, ptr %i.gy, i64 %i.aop
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1020.i.i, i8 0, i64 %i.aok, i1 false), !tbaa !117
  br label %.loopexit741.i.i

.loopexit741.i.i:                                 ; preds = %.lr.ph841.i.i, %.preheader742.i.i
  %i.aoq = fcmp reassoc nsz arcp contract afn une double %i.aof, 0.000000e+00
  br i1 %i.aoq, label %bb.s, label %iter.check1195

iter.check1195:                                   ; preds = %.loopexit741.i.i
  %invariant.gep1205.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv1026.i.i ; 11 uses
  %min.iters.check1185 = icmp ugt i64 %i.aod, 3
  %or.cond1933.a = and i1 %min.iters.check1185, %ident.check1183.not
  br i1 %or.cond1933.a, label %vector.main.loop.iter.check1186, label %.lr.ph843.i.i.preheader

vector.main.loop.iter.check1186:                  ; preds = %iter.check1195
  %min.iters.check1187 = icmp ult i64 %i.aod, 16
  br i1 %min.iters.check1187, label %vec.epilog.ph1199, label %vector.ph1188

vector.ph1188:                                    ; preds = %vector.main.loop.iter.check1186
  %i.aor = and i64 %i.aod, 12
  %n.vec1189 = and i64 %i.aod, -16                ; 4 uses
  %i.aos = add i64 %indvars.iv1026.i.i, %n.vec1189
  %i.aot = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %indvars.iv1026.i.i
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.ph1188, %vector.body1190
  %index1191 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1192, %vector.body1190 ] ; 2 uses
  %i.aou = getelementptr [8 x i8], ptr %i.aot, i64 %index1191 ; 4 uses
  %i.aov = getelementptr i8, ptr %i.aou, i64 32
  %i.aow = getelementptr i8, ptr %i.aou, i64 64
  %i.aox = getelementptr i8, ptr %i.aou, i64 96
  store <4 x double> zeroinitializer, ptr %i.aou, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.aov, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.aow, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.aox, align 8, !tbaa !117
  %index.next1192 = add nuw i64 %index1191, 16    ; 2 uses
  %i.aoy = icmp eq i64 %index.next1192, %n.vec1189
  br i1 %i.aoy, label %middle.block1193, label %vector.body1190, !llvm.loop !77

middle.block1193:                                 ; preds = %vector.body1190
  %cmp.n1194 = icmp eq i64 %i.aod, %n.vec1189
  br i1 %cmp.n1194, label %.loopexit735.i.i, label %vec.epilog.iter.check1196

vec.epilog.iter.check1196:                        ; preds = %middle.block1193
  %min.epilog.iters.check1198 = icmp eq i64 %i.aor, 0
  br i1 %min.epilog.iters.check1198, label %.lr.ph843.i.i.preheader, label %vec.epilog.ph1199, !prof !121

vec.epilog.ph1199:                                ; preds = %vector.main.loop.iter.check1186, %vec.epilog.iter.check1196
  %vec.epilog.resume.val1200 = phi i64 [ %n.vec1189, %vec.epilog.iter.check1196 ], [ 0, %vector.main.loop.iter.check1186 ]
  %n.vec1201 = and i64 %i.aod, -4                 ; 3 uses
  %i.aoz = add i64 %indvars.iv1026.i.i, %n.vec1201
  %i.apa = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %indvars.iv1026.i.i
  br label %vec.epilog.vector.body1202

vec.epilog.vector.body1202:                       ; preds = %vec.epilog.vector.body1202, %vec.epilog.ph1199
  %index1203 = phi i64 [ %vec.epilog.resume.val1200, %vec.epilog.ph1199 ], [ %index.next1204, %vec.epilog.vector.body1202 ] ; 2 uses
  %i.apb = getelementptr [8 x i8], ptr %i.apa, i64 %index1203
  store <4 x double> zeroinitializer, ptr %i.apb, align 8, !tbaa !117
  %index.next1204 = add nuw i64 %index1203, 4     ; 2 uses
  %i.apc = icmp eq i64 %index.next1204, %n.vec1201
  br i1 %i.apc, label %vec.epilog.middle.block1205, label %vec.epilog.vector.body1202, !llvm.loop !78

vec.epilog.middle.block1205:                      ; preds = %vec.epilog.vector.body1202
  %cmp.n1206 = icmp eq i64 %i.aod, %n.vec1201
  br i1 %cmp.n1206, label %.loopexit735.i.i, label %.lr.ph843.i.i.preheader

.lr.ph843.i.i.preheader:                          ; preds = %iter.check1195, %vec.epilog.iter.check1196, %vec.epilog.middle.block1205
  %indvars.iv1028.i.i.ph = phi i64 [ %indvars.iv1026.i.i, %iter.check1195 ], [ %i.aos, %vec.epilog.iter.check1196 ], [ %i.aoz, %vec.epilog.middle.block1205 ] ; 4 uses
  %i.apd = sub i64 %i.b, %indvars.iv1028.i.i.ph
  %xtraiter2091 = and i64 %i.apd, 7               ; 2 uses
  %lcmp.mod2092.not = icmp eq i64 %xtraiter2091, 0
  br i1 %lcmp.mod2092.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol

.lr.ph843.i.i.prol:                               ; preds = %.lr.ph843.i.i.preheader, %.lr.ph843.i.i.prol
  %indvars.iv1028.i.i.prol = phi i64 [ %indvars.iv.next1029.i.i.prol, %.lr.ph843.i.i.prol ], [ %indvars.iv1028.i.i.ph, %.lr.ph843.i.i.preheader ] ; 2 uses
  %prol.iter2093 = phi i64 [ %prol.iter2093.next, %.lr.ph843.i.i.prol ], [ 0, %.lr.ph843.i.i.preheader ]
  %i.ape = mul nsw i64 %indvars.iv1028.i.i.prol, %i.gs
  %gep1206.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ape
  store double 0.000000e+00, ptr %gep1206.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.prol = add nuw nsw i64 %indvars.iv1028.i.i.prol, 1 ; 2 uses
  %prol.iter2093.next = add i64 %prol.iter2093, 1 ; 2 uses
  %prol.iter2093.cmp.not = icmp eq i64 %prol.iter2093.next, %xtraiter2091
  br i1 %prol.iter2093.cmp.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol, !llvm.loop !79

.lr.ph843.i.i.prol.loopexit:                      ; preds = %.lr.ph843.i.i.prol, %.lr.ph843.i.i.preheader
  %indvars.iv1028.i.i.unr = phi i64 [ %indvars.iv1028.i.i.ph, %.lr.ph843.i.i.preheader ], [ %indvars.iv.next1029.i.i.prol, %.lr.ph843.i.i.prol ]
  %i.apf = sub i64 %indvars.iv1028.i.i.ph, %i.b
  %i.apg = icmp ugt i64 %i.apf, -8
  br i1 %i.apg, label %.loopexit735.i.i, label %.lr.ph843.i.i

bb.s:                                             ; preds = %.loopexit741.i.i
  %i.aph = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aof ; 12 uses
  %.not696.i.not.i = icmp eq i64 %indvars.iv1026.i.i, %i.mo
  br i1 %.not696.i.not.i, label %iter.check1052, label %.preheader734.lr.ph.i.i

.preheader734.lr.ph.i.i:                          ; preds = %bb.s
  %i.api = trunc nuw nsw i64 %indvars.iv1026.i.i to i32
  %i.apj = mul i32 %.0661700.i.i, %i.api
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.apk
  %invariant.gep1207.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv1026.i.i ; 18 uses
  %min.iters.check1139 = icmp ugt i32 %i.ant, 2
  %or.cond1934.a = and i1 %min.iters.check1139, %ident.check1137.not
  %min.iters.check1141 = icmp ult i32 %i.ant, 15
  %i.apm = and i64 %i.anv, 12
  %n.vec1143 = and i64 %i.anv, 8589934576         ; 4 uses
  %i.apn = add i64 %indvars.iv1026.in.i.i, %n.vec1143
  %cmp.n1163 = icmp eq i64 %i.anv, %n.vec1143
  %min.epilog.iters.check1167 = icmp eq i64 %i.apm, 0
  %n.vec1171 = and i64 %i.anv, 8589934588         ; 3 uses
  %i.apo = add i64 %indvars.iv1026.in.i.i, %n.vec1171
  %cmp.n1179 = icmp eq i64 %i.anv, %n.vec1171
  %min.iters.check1091 = icmp ugt i64 %i.aod, 3
  %or.cond1935.a = and i1 %min.iters.check1091, %ident.check1069.not
  %bound01093 = icmp ult ptr %scevgep1089, %scevgep1083.a
  %bound11094 = icmp ult ptr %scevgep1084.a, %scevgep1088.a
  %found.conflict1095 = and i1 %bound01093, %bound11094
  %min.iters.check1097 = icmp ult i64 %i.aod, 16
  %i.app = and i64 %i.aod, 12
  %n.vec1099 = and i64 %i.aod, -16                ; 4 uses
  %i.apq = add i64 %indvars.iv1026.i.i, %n.vec1099
  %cmp.n1116 = icmp eq i64 %i.aod, %n.vec1099
  %min.epilog.iters.check1120 = icmp eq i64 %i.app, 0
  %n.vec1123 = and i64 %i.aod, -4                 ; 3 uses
  %i.apr = add i64 %indvars.iv1026.i.i, %n.vec1123
  %cmp.n1134 = icmp eq i64 %i.aod, %n.vec1123
  br label %iter.check1164

iter.check1164:                                   ; preds = %._crit_edge852.i.loopexit.i, %.preheader734.lr.ph.i.i
  %indvars.iv1042.i.i = phi i64 [ %indvars.iv1026.in.i.i, %.preheader734.lr.ph.i.i ], [ %indvars.iv.next1043.i.i, %._crit_edge852.i.loopexit.i ] ; 2 uses
  %invariant.gep1209.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv1042.i.i ; 18 uses
  br i1 %or.cond1934.a, label %vector.main.loop.iter.check1140, label %.lr.ph846.i.i.preheader

vector.main.loop.iter.check1140:                  ; preds = %iter.check1164
  br i1 %min.iters.check1141, label %vec.epilog.ph1168, label %vector.body1144

vector.body1144:                                  ; preds = %vector.main.loop.iter.check1140, %vector.body1144
  %index1145 = phi i64 [ %index.next1158, %vector.body1144 ], [ 0, %vector.main.loop.iter.check1140 ] ; 2 uses
  %vec.phi1146.a = phi <4 x double> [ %i.aqf, %vector.body1144 ], [ zeroinitializer, %vector.main.loop.iter.check1140 ]
  %vec.phi1147.a = phi <4 x double> [ %i.aqg, %vector.body1144 ], [ zeroinitializer, %vector.main.loop.iter.check1140 ]
  %vec.phi1148.a = phi <4 x double> [ %i.aqh, %vector.body1144 ], [ zeroinitializer, %vector.main.loop.iter.check1140 ]
  %vec.phi1149 = phi <4 x double> [ %i.aqi, %vector.body1144 ], [ zeroinitializer, %vector.main.loop.iter.check1140 ]
  %i.aps = add i64 %indvars.iv1026.in.i.i, %index1145 ; 2 uses
  %i.apt = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.aps ; 4 uses
  %i.apu = getelementptr i8, ptr %i.apt, i64 32
  %i.apv = getelementptr i8, ptr %i.apt, i64 64
  %i.apw = getelementptr i8, ptr %i.apt, i64 96
  %wide.load1150.a = load <4 x double>, ptr %i.apt, align 8, !tbaa !117
  %wide.load1151.a = load <4 x double>, ptr %i.apu, align 8, !tbaa !117
  %wide.load1152.a = load <4 x double>, ptr %i.apv, align 8, !tbaa !117
  %wide.load1153.a = load <4 x double>, ptr %i.apw, align 8, !tbaa !117
  %i.apx = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.aps ; 4 uses
  %i.apy = getelementptr i8, ptr %i.apx, i64 32
  %i.apz = getelementptr i8, ptr %i.apx, i64 64
  %i.aqa = getelementptr i8, ptr %i.apx, i64 96
  %wide.load1154.a = load <4 x double>, ptr %i.apx, align 8, !tbaa !117
  %wide.load1155.a = load <4 x double>, ptr %i.apy, align 8, !tbaa !117
  %wide.load1156.a = load <4 x double>, ptr %i.apz, align 8, !tbaa !117
  %wide.load1157 = load <4 x double>, ptr %i.aqa, align 8, !tbaa !117
end_hunk_2
begin_hunk_3_@thinplate_match:bb.a
  %min.iters.check1038 = icmp ult i64 %i.aod, 16
  br i1 %min.iters.check1038, label %vec.epilog.ph1056, label %vector.ph1039

vector.ph1039:                                    ; preds = %vector.main.loop.iter.check1037
  %i.avm = and i64 %i.aod, 12
  %n.vec1040 = and i64 %i.aod, -16                ; 4 uses
  %i.avn = add i64 %indvars.iv1026.i.i, %n.vec1040
  %broadcast.splatinsert1041 = insertelement <4 x double> poison, double %i.aph, i64 0
  %broadcast.splat1042 = shufflevector <4 x double> %broadcast.splatinsert1041, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.avo = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %indvars.iv1026.i.i
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.ph1039, %vector.body1043
  %index1044 = phi i64 [ 0, %vector.ph1039 ], [ %index.next1049, %vector.body1043 ] ; 2 uses
  %i.avp = getelementptr [8 x i8], ptr %i.avo, i64 %index1044 ; 5 uses
  %i.avq = getelementptr i8, ptr %i.avp, i64 32   ; 2 uses
  %i.avr = getelementptr i8, ptr %i.avp, i64 64   ; 2 uses
  %i.avs = getelementptr i8, ptr %i.avp, i64 96   ; 2 uses
  %wide.load1045.a = load <4 x double>, ptr %i.avp, align 8, !tbaa !117
  %wide.load1046.a = load <4 x double>, ptr %i.avq, align 8, !tbaa !117
  %wide.load1047.a = load <4 x double>, ptr %i.avr, align 8, !tbaa !117
  %wide.load1048 = load <4 x double>, ptr %i.avs, align 8, !tbaa !117
  %i.avt = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1045.a, %broadcast.splat1042
  %i.avu = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1046.a, %broadcast.splat1042
  %i.avv = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1047.a, %broadcast.splat1042
  %i.avw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1048, %broadcast.splat1042
  store <4 x double> %i.avt, ptr %i.avp, align 8, !tbaa !117
  store <4 x double> %i.avu, ptr %i.avq, align 8, !tbaa !117
  store <4 x double> %i.avv, ptr %i.avr, align 8, !tbaa !117
  store <4 x double> %i.avw, ptr %i.avs, align 8, !tbaa !117
  %index.next1049 = add nuw i64 %index1044, 16    ; 2 uses
  %i.avx = icmp eq i64 %index.next1049, %n.vec1040
  br i1 %i.avx, label %middle.block1050, label %vector.body1043, !llvm.loop !91

middle.block1050:                                 ; preds = %vector.body1043
  %cmp.n1051 = icmp eq i64 %i.aod, %n.vec1040
  br i1 %cmp.n1051, label %.loopexit735.i.i, label %vec.epilog.iter.check1053

vec.epilog.iter.check1053:                        ; preds = %middle.block1050
  %min.epilog.iters.check1055 = icmp eq i64 %i.avm, 0
  br i1 %min.epilog.iters.check1055, label %.lr.ph858.i.i.preheader, label %vec.epilog.ph1056, !prof !121

vec.epilog.ph1056:                                ; preds = %vector.main.loop.iter.check1037, %vec.epilog.iter.check1053
  %vec.epilog.resume.val1057 = phi i64 [ %n.vec1040, %vec.epilog.iter.check1053 ], [ 0, %vector.main.loop.iter.check1037 ]
  %n.vec1058 = and i64 %i.aod, -4                 ; 3 uses
  %i.avy = add i64 %indvars.iv1026.i.i, %n.vec1058
  %broadcast.splatinsert1059 = insertelement <4 x double> poison, double %i.aph, i64 0
  %broadcast.splat1060 = shufflevector <4 x double> %broadcast.splatinsert1059, <4 x double> poison, <4 x i32> zeroinitializer
  %i.avz = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %indvars.iv1026.i.i
  br label %vec.epilog.vector.body1061

vec.epilog.vector.body1061:                       ; preds = %vec.epilog.vector.body1061, %vec.epilog.ph1056
  %index1062 = phi i64 [ %vec.epilog.resume.val1057, %vec.epilog.ph1056 ], [ %index.next1064, %vec.epilog.vector.body1061 ] ; 2 uses
  %i.awa = getelementptr [8 x i8], ptr %i.avz, i64 %index1062 ; 2 uses
  %wide.load1063 = load <4 x double>, ptr %i.awa, align 8, !tbaa !117
  %i.awb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1063, %broadcast.splat1060
  store <4 x double> %i.awb, ptr %i.awa, align 8, !tbaa !117
  %index.next1064 = add nuw i64 %index1062, 4     ; 2 uses
  %i.awc = icmp eq i64 %index.next1064, %n.vec1058
  br i1 %i.awc, label %vec.epilog.middle.block1065, label %vec.epilog.vector.body1061, !llvm.loop !92

vec.epilog.middle.block1065:                      ; preds = %vec.epilog.vector.body1061
  %cmp.n1066 = icmp eq i64 %i.aod, %n.vec1058
  br i1 %cmp.n1066, label %.loopexit735.i.i, label %.lr.ph858.i.i.preheader

.lr.ph858.i.i.preheader:                          ; preds = %iter.check1052, %vec.epilog.iter.check1053, %vec.epilog.middle.block1065
  %indvars.iv1047.i.i.ph = phi i64 [ %indvars.iv1026.i.i, %iter.check1052 ], [ %i.avn, %vec.epilog.iter.check1053 ], [ %i.avy, %vec.epilog.middle.block1065 ] ; 4 uses
  %i.awd = sub i64 %i.b, %indvars.iv1047.i.i.ph
  %xtraiter2100 = and i64 %i.awd, 7               ; 2 uses
  %lcmp.mod2101.not = icmp eq i64 %xtraiter2100, 0
  br i1 %lcmp.mod2101.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol

.lr.ph858.i.i.prol:                               ; preds = %.lr.ph858.i.i.preheader, %.lr.ph858.i.i.prol
  %indvars.iv1047.i.i.prol = phi i64 [ %indvars.iv.next1048.i.i.prol, %.lr.ph858.i.i.prol ], [ %indvars.iv1047.i.i.ph, %.lr.ph858.i.i.preheader ] ; 2 uses
  %prol.iter2102 = phi i64 [ %prol.iter2102.next, %.lr.ph858.i.i.prol ], [ 0, %.lr.ph858.i.i.preheader ]
  %i.awe = mul nsw i64 %indvars.iv1047.i.i.prol, %i.gs
  %gep1216.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.awe ; 2 uses
  %i.awf = load double, ptr %gep1216.i.i.prol, align 8, !tbaa !117
  %i.awg = fmul reassoc nsz arcp contract afn double %i.awf, %i.aph
  store double %i.awg, ptr %gep1216.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.prol = add nuw nsw i64 %indvars.iv1047.i.i.prol, 1 ; 2 uses
  %prol.iter2102.next = add i64 %prol.iter2102, 1 ; 2 uses
  %prol.iter2102.cmp.not = icmp eq i64 %prol.iter2102.next, %xtraiter2100
  br i1 %prol.iter2102.cmp.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol, !llvm.loop !93

.lr.ph858.i.i.prol.loopexit:                      ; preds = %.lr.ph858.i.i.prol, %.lr.ph858.i.i.preheader
  %indvars.iv1047.i.i.unr = phi i64 [ %indvars.iv1047.i.i.ph, %.lr.ph858.i.i.preheader ], [ %indvars.iv.next1048.i.i.prol, %.lr.ph858.i.i.prol ]
  %i.awh = sub i64 %indvars.iv1047.i.i.ph, %i.b
  %i.awi = icmp ugt i64 %i.awh, -8
  br i1 %i.awi, label %.loopexit735.i.i, label %.lr.ph858.i.i

.lr.ph858.i.i:                                    ; preds = %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i
  %indvars.iv1047.i.i = phi i64 [ %indvars.iv.next1048.i.i.7, %.lr.ph858.i.i ], [ %indvars.iv1047.i.i.unr, %.lr.ph858.i.i.prol.loopexit ] ; 9 uses
  %i.awj = mul nsw i64 %indvars.iv1047.i.i, %i.gs
  %gep1216.i.i = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.awj ; 2 uses
  %i.awk = load double, ptr %gep1216.i.i, align 8, !tbaa !117
  %i.awl = fmul reassoc nsz arcp contract afn double %i.awk, %i.aph
  store double %i.awl, ptr %gep1216.i.i, align 8, !tbaa !117
  %indvars.iv.next1048.i.i = add nuw nsw i64 %indvars.iv1047.i.i, 1
  %i.awm = mul nsw i64 %indvars.iv.next1048.i.i, %i.gs
  %gep1216.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.awm ; 2 uses
  %i.awn = load double, ptr %gep1216.i.i.1, align 8, !tbaa !117
  %i.awo = fmul reassoc nsz arcp contract afn double %i.awn, %i.aph
  store double %i.awo, ptr %gep1216.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.1 = add nuw nsw i64 %indvars.iv1047.i.i, 2
  %i.awp = mul nsw i64 %indvars.iv.next1048.i.i.1, %i.gs
  %gep1216.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.awp ; 2 uses
  %i.awq = load double, ptr %gep1216.i.i.2, align 8, !tbaa !117
  %i.awr = fmul reassoc nsz arcp contract afn double %i.awq, %i.aph
  store double %i.awr, ptr %gep1216.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.2 = add nuw nsw i64 %indvars.iv1047.i.i, 3
  %i.aws = mul nsw i64 %indvars.iv.next1048.i.i.2, %i.gs
  %gep1216.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.aws ; 2 uses
  %i.awt = load double, ptr %gep1216.i.i.3, align 8, !tbaa !117
  %i.awu = fmul reassoc nsz arcp contract afn double %i.awt, %i.aph
  store double %i.awu, ptr %gep1216.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.3 = add nuw nsw i64 %indvars.iv1047.i.i, 4
  %i.awv = mul nsw i64 %indvars.iv.next1048.i.i.3, %i.gs
  %gep1216.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.awv ; 2 uses
  %i.aww = load double, ptr %gep1216.i.i.4, align 8, !tbaa !117
  %i.awx = fmul reassoc nsz arcp contract afn double %i.aww, %i.aph
  store double %i.awx, ptr %gep1216.i.i.4, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.4 = add nuw nsw i64 %indvars.iv1047.i.i, 5
  %i.awy = mul nsw i64 %indvars.iv.next1048.i.i.4, %i.gs
  %gep1216.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.awy ; 2 uses
  %i.awz = load double, ptr %gep1216.i.i.5, align 8, !tbaa !117
  %i.axa = fmul reassoc nsz arcp contract afn double %i.awz, %i.aph
  store double %i.axa, ptr %gep1216.i.i.5, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.5 = add nuw nsw i64 %indvars.iv1047.i.i, 6
  %i.axb = mul nsw i64 %indvars.iv.next1048.i.i.5, %i.gs
  %gep1216.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axb ; 2 uses
  %i.axc = load double, ptr %gep1216.i.i.6, align 8, !tbaa !117
  %i.axd = fmul reassoc nsz arcp contract afn double %i.axc, %i.aph
  store double %i.axd, ptr %gep1216.i.i.6, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.6 = add nuw nsw i64 %indvars.iv1047.i.i, 7
  %i.axe = mul nsw i64 %indvars.iv.next1048.i.i.6, %i.gs
  %gep1216.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axe ; 2 uses
  %i.axf = load double, ptr %gep1216.i.i.7, align 8, !tbaa !117
  %i.axg = fmul reassoc nsz arcp contract afn double %i.axf, %i.aph
  store double %i.axg, ptr %gep1216.i.i.7, align 8, !tbaa !117
  %indvars.iv.next1048.i.i.7 = add nuw nsw i64 %indvars.iv1047.i.i, 8 ; 2 uses
  %exitcond1051.not.i.i.7 = icmp eq i64 %indvars.iv.next1048.i.i.7, %i.b
  br i1 %exitcond1051.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph858.i.i, !llvm.loop !94

.lr.ph843.i.i:                                    ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i
  %indvars.iv1028.i.i = phi i64 [ %indvars.iv.next1029.i.i.7, %.lr.ph843.i.i ], [ %indvars.iv1028.i.i.unr, %.lr.ph843.i.i.prol.loopexit ] ; 9 uses
  %i.axh = mul nsw i64 %indvars.iv1028.i.i, %i.gs
  %gep1206.i.i = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.axh
  store double 0.000000e+00, ptr %gep1206.i.i, align 8, !tbaa !117
  %indvars.iv.next1029.i.i = add nuw nsw i64 %indvars.iv1028.i.i, 1
  %i.axi = mul nsw i64 %indvars.iv.next1029.i.i, %i.gs
  %gep1206.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.axi
  store double 0.000000e+00, ptr %gep1206.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.1 = add nuw nsw i64 %indvars.iv1028.i.i, 2
  %i.axj = mul nsw i64 %indvars.iv.next1029.i.i.1, %i.gs
  %gep1206.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.axj
  store double 0.000000e+00, ptr %gep1206.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.2 = add nuw nsw i64 %indvars.iv1028.i.i, 3
  %i.axk = mul nsw i64 %indvars.iv.next1029.i.i.2, %i.gs
  %gep1206.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.axk
  store double 0.000000e+00, ptr %gep1206.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.3 = add nuw nsw i64 %indvars.iv1028.i.i, 4
  %i.axl = mul nsw i64 %indvars.iv.next1029.i.i.3, %i.gs
  %gep1206.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.axl
  store double 0.000000e+00, ptr %gep1206.i.i.4, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.4 = add nuw nsw i64 %indvars.iv1028.i.i, 5
  %i.axm = mul nsw i64 %indvars.iv.next1029.i.i.4, %i.gs
  %gep1206.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.axm
  store double 0.000000e+00, ptr %gep1206.i.i.5, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.5 = add nuw nsw i64 %indvars.iv1028.i.i, 6
  %i.axn = mul nsw i64 %indvars.iv.next1029.i.i.5, %i.gs
  %gep1206.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.axn
  store double 0.000000e+00, ptr %gep1206.i.i.6, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.6 = add nuw nsw i64 %indvars.iv1028.i.i, 7
  %i.axo = mul nsw i64 %indvars.iv.next1029.i.i.6, %i.gs
  %gep1206.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.axo
  store double 0.000000e+00, ptr %gep1206.i.i.7, align 8, !tbaa !117
  %indvars.iv.next1029.i.i.7 = add nuw nsw i64 %indvars.iv1028.i.i, 8 ; 2 uses
  %exitcond1032.not.i.i.7 = icmp eq i64 %indvars.iv.next1029.i.i.7, %i.b
  br i1 %exitcond1032.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph843.i.i, !llvm.loop !95

.loopexit735.i.i:                                 ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i, %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i, %middle.block1193, %vec.epilog.middle.block1205, %middle.block1050, %vec.epilog.middle.block1065
  %i.axp = trunc nuw nsw i64 %indvars.iv1026.i.i to i32
  %i.axq = mul i32 %.0661700.i.i, %i.axp
  %i.axr = sext i32 %i.axq to i64
  %i.axs = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.axr ; 2 uses
  %i.axt = load double, ptr %i.axs, align 8, !tbaa !117
  %i.axu = fadd reassoc nsz arcp contract afn double %i.axt, 1.000000e+00
  store double %i.axu, ptr %i.axs, align 8, !tbaa !117
  %indvars.iv.next1053.i.i = add nuw nsw i64 %indvars.iv1052.i.i, 1 ; 2 uses
  %exitcond1058.not.i.i = icmp eq i64 %indvars.iv.next1053.i.i, %wide.trip.count990.i.i
  br i1 %exitcond1058.not.i.i, label %.preheader731.i.i, label %.preheader742.i.i

.preheader731.i.i:                                ; preds = %.loopexit735.i.i, %.thread721.i.i
  %indvar = phi i32 [ %indvar.next, %.thread721.i.i ], [ 0, %.loopexit735.i.i ] ; 2 uses
  %indvars.iv1095.i.i = phi i64 [ %indvars.iv.next1096.i.i, %.thread721.i.i ], [ %i.mr, %.loopexit735.i.i ] ; 12 uses
  %indvars.iv1071.i.i = phi i32 [ %indvars.iv.next1072.i.i, %.thread721.i.i ], [ %i.mk, %.loopexit735.i.i ] ; 2 uses
  %indvars118.i = trunc i64 %indvars.iv1095.i.i to i32 ; 4 uses
  %i.axv = tail call i32 @llvm.smax.i32(i32 %indvars118.i, i32 1)
  %i.axw = add nsw i32 %i.axv, -1                 ; 3 uses
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv1095.i.i ; 2 uses
  %i.axy = icmp eq i64 %indvars.iv1095.i.i, 0     ; 2 uses
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv1095.i.i ; 3 uses
  %indvars.iv.next1096.i.i = add nsw i64 %indvars.iv1095.i.i, -1 ; 3 uses
  %i.aya = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %indvars.iv.next1096.i.i
  %i.ayb = getelementptr inbounds [8 x i8], ptr %15, i64 %indvars.iv.next1096.i.i
  %.pre.i.i = load double, ptr %i.axx, align 8, !tbaa !117
  %i.ayc = zext nneg i32 %i.axw to i64
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ayc
  br label %.preheader730.i.i

.preheader730.i.i:                                ; preds = %._crit_edge897.i.i, %.preheader731.i.i
  %i.aye = phi double [ %.pre.i.i, %.preheader731.i.i ], [ %.0679.lcssa.i.i, %._crit_edge897.i.i ] ; 6 uses
  %.0631900.i.i = phi i32 [ 0, %.preheader731.i.i ], [ %i.bkl, %._crit_edge897.i.i ] ; 2 uses
  %i.ayf = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.aye)
  %i.ayg = fadd reassoc nsz arcp contract afn double %i.ayf, %.0672..i.i
  %i.ayh = fcmp reassoc nsz arcp contract afn oeq double %i.ayg, %.0672..i.i ; 2 uses
  %or.cond706863.i.i = or i1 %i.axy, %i.ayh
  br i1 %or.cond706863.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.preheader.i

.lr.ph865.i.preheader.i:                          ; preds = %.preheader730.i.i
  %i.ayi = load double, ptr %i.ayd, align 8, !tbaa !117
  %i.ayj = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ayi)
  %i.ayk = fadd reassoc nsz arcp contract afn double %i.ayj, %.0672..i.i
  %i.ayl = fcmp reassoc nsz arcp contract afn oeq double %i.ayk, %.0672..i.i
  br i1 %i.ayl, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph865.i.i:                                    ; preds = %.lr.ph.i
  %i.aym = zext nneg i32 %i.ayu to i64
  %i.ayn = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.aym
  %i.ayo = load double, ptr %i.ayn, align 8, !tbaa !117
  %i.ayp = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ayo)
  %i.ayq = fadd reassoc nsz arcp contract afn double %i.ayp, %.0672..i.i
  %i.ayr = fcmp reassoc nsz arcp contract afn oeq double %i.ayq, %.0672..i.i
  br i1 %i.ayr, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph865.i.preheader.i, %.lr.ph865.i.i
  %indvars.iv1061.i75.i = phi i32 [ %i.ays, %.lr.ph865.i.i ], [ %indvars118.i, %.lr.ph865.i.preheader.i ]
  %i.ays = add i32 %indvars.iv1061.i75.i, -1      ; 6 uses
  %i.ayt = tail call i32 @llvm.smax.i32(i32 %i.ays, i32 1)
  %i.ayu = add nsw i32 %i.ayt, -1                 ; 3 uses
  %i.ayv = zext nneg i32 %i.ays to i64            ; 3 uses
  %i.ayw = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.ayv
  %i.ayx = load double, ptr %i.ayw, align 8, !tbaa !117
  %i.ayy = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ayx)
  %i.ayz = fadd reassoc nsz arcp contract afn double %i.ayy, %.0672..i.i
  %i.aza = fcmp reassoc nsz arcp contract afn oeq double %i.ayz, %.0672..i.i ; 2 uses
  %i.azb = icmp eq i32 %i.ays, 0
  %or.cond706.i.i = or i1 %i.azb, %i.aza
  br i1 %or.cond706.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.i

._crit_edge866.i.i:                               ; preds = %.lr.ph.i, %.lr.ph865.i.i, %.lr.ph865.i.preheader.i, %.preheader730.i.i
  %.lcssa862.i.i = phi i64 [ %indvars.iv1095.i.i, %.preheader730.i.i ], [ %indvars.iv1095.i.i, %.lr.ph865.i.preheader.i ], [ %i.ayv, %.lr.ph865.i.i ], [ %i.ayv, %.lr.ph.i ] ; 2 uses
  %.2664.lcssa.i.i = phi i32 [ %indvars118.i, %.preheader730.i.i ], [ %indvars118.i, %.lr.ph865.i.preheader.i ], [ %i.ays, %.lr.ph865.i.i ], [ %i.ays, %.lr.ph.i ] ; 3 uses
  %.lcssa765.i.i = phi i32 [ %i.axw, %.preheader730.i.i ], [ %i.axw, %.lr.ph865.i.preheader.i ], [ %i.ayu, %.lr.ph865.i.i ], [ %i.ayu, %.lr.ph.i ]
  %.lcssa.i.i = phi i1 [ %i.ayh, %.preheader730.i.i ], [ false, %.lr.ph865.i.preheader.i ], [ %i.aza, %.lr.ph.i ], [ false, %.lr.ph865.i.i ]
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %.lcssa862.i.i
  %i.azd = sext i32 %.2664.lcssa.i.i to i64       ; 6 uses
  %.not880.i.i = icmp slt i64 %indvars.iv1095.i.i, %i.azd
  %or.cond907.i.i = or i1 %.lcssa.i.i, %.not880.i.i
  br i1 %or.cond907.i.i, label %.loopexit729.i.i, label %.lr.ph884.preheader.i.i

.lr.ph884.preheader.i.i:                          ; preds = %._crit_edge866.i.i
  %i.aze = zext i32 %.lcssa765.i.i to i64         ; 2 uses
  %invariant.gep1217.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %i.aze ; 5 uses
  %i.azf = shl nsw i64 %i.azd, 3
  %i.azg = add i32 %indvar, %.2664.lcssa.i.i
  %i.azh = sub i32 %i.mj, %i.azg
  %i.azi = zext i32 %i.azh to i64
  %i.azj = add nsw i64 %i.azd, %i.azi
  %i.azk = shl nsw i64 %i.azj, 3
  %scevgep1012.a = getelementptr i8, ptr %scevgep1011.a, i64 %i.azk
  %scevgep1013 = getelementptr i8, ptr %i.gy, i64 %i.azf
  %i.azl = shl nuw nsw i64 %i.aze, 3
  %scevgep1015 = getelementptr i8, ptr %scevgep1014.a, i64 %i.azl
  %bound0 = icmp ult ptr %invariant.gep1217.i.i, %scevgep1012.a
  %bound1 = icmp ult ptr %scevgep1013, %scevgep1015
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph884.i.i

.lr.ph884.i.i:                                    ; preds = %.loopexit728.i.i, %.lr.ph884.preheader.i.i
  %indvars.iv1068.i.i = phi i64 [ %i.azd, %.lr.ph884.preheader.i.i ], [ %indvars.iv.next1069.i.i, %.loopexit728.i.i ] ; 4 uses
  %.6881.i.i = phi double [ 1.000000e+00, %.lr.ph884.preheader.i.i ], [ %.7.i.i, %.loopexit728.i.i ] ; 2 uses
  %i.azm = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv1068.i.i
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !117
  %i.azo = fmul reassoc nsz arcp contract afn double %i.azn, %.6881.i.i ; 2 uses
  %i.azp = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.azo) ; 5 uses
  %i.azq = fadd reassoc nsz arcp contract afn double %i.azp, %.0672..i.i
  %i.azr = fcmp reassoc nsz arcp contract afn une double %i.azq, %.0672..i.i
  br i1 %i.azr, label %bb.t, label %.loopexit728.i.i

bb.t:                                             ; preds = %.lr.ph884.i.i
  %i.azs = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv1068.i.i ; 2 uses
  %i.azt = load double, ptr %i.azs, align 8, !tbaa !117 ; 3 uses
  %i.azu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.azt) ; 4 uses
  %i.azv = fcmp reassoc nsz arcp contract afn ogt double %i.azp, %i.azu
  br i1 %i.azv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.azw = fdiv reassoc nsz arcp contract afn double %i.azu, %i.azp ; 2 uses
  %i.azx = fmul reassoc nsz arcp contract afn double %i.azw, %i.azw
  %i.azy = fadd reassoc nsz arcp contract afn double %i.azx, 1.000000e+00
  %i.azz = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.azy)
  %i.baa = fmul reassoc nsz arcp contract afn double %i.azz, %i.azp
  br label %PYTHAG.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.bab = fcmp reassoc nsz arcp contract afn ueq double %i.azt, 0.000000e+00
  br i1 %i.bab, label %PYTHAG.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bac = fdiv reassoc nsz arcp contract afn double %i.azp, %i.azu ; 2 uses
  %i.bad = fmul reassoc nsz arcp contract afn double %i.bac, %i.bac
  %i.bae = fadd reassoc nsz arcp contract afn double %i.bad, 1.000000e+00
  %i.baf = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bae)
  %i.bag = fmul reassoc nsz arcp contract afn double %i.baf, %i.azu
  br label %PYTHAG.exit.i.i

PYTHAG.exit.i.i:                                  ; preds = %bb.w, %bb.v, %bb.u
  %.0.i.i.i = phi nsz double [ %i.baa, %bb.u ], [ %i.bag, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  store double %.0.i.i.i, ptr %i.azs, align 8, !tbaa !117
  %i.bah = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i.i.i ; 2 uses
  %i.bai = fmul reassoc nsz arcp contract afn double %i.bah, %i.azt ; 7 uses
  %i.baj = fneg reassoc nsz arcp contract afn double %i.azo
  %i.bak = fmul reassoc nsz arcp contract afn double %i.bah, %i.baj ; 10 uses
  %invariant.gep1219.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv1068.i.i ; 4 uses
  %or.cond1937.not = xor i1 %or.cond1937.a, true
  %brmerge2242 = select i1 %or.cond1937.not, i1 true, i1 %found.conflict
  br i1 %brmerge2242, label %.lr.ph879.i.i.preheader, label %vector.ph1017

vector.ph1017:                                    ; preds = %PYTHAG.exit.i.i
  %broadcast.splatinsert1019 = insertelement <4 x double> poison, double %i.bai, i64 0
  %broadcast.splat1020 = shufflevector <4 x double> %broadcast.splatinsert1019, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1021 = insertelement <4 x double> poison, double %i.bak, i64 0
  %broadcast.splat1022 = shufflevector <4 x double> %broadcast.splatinsert1021, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %vector.ph1017
  %index1024 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1029, %vector.body1023 ] ; 3 uses
  %i.bal = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %index1024 ; 3 uses
  %i.bam = getelementptr i8, ptr %i.bal, i64 32   ; 2 uses
  %wide.load1025.a = load <4 x double>, ptr %i.bal, align 8, !tbaa !117, !alias.scope !130, !noalias !131 ; 2 uses
  %wide.load1026.a = load <4 x double>, ptr %i.bam, align 8, !tbaa !117, !alias.scope !130, !noalias !131 ; 2 uses
  %i.ban = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %index1024 ; 3 uses
  %i.bao = getelementptr i8, ptr %i.ban, i64 32   ; 2 uses
  %wide.load1027.a = load <4 x double>, ptr %i.ban, align 8, !tbaa !117, !alias.scope !131 ; 2 uses
  %wide.load1028 = load <4 x double>, ptr %i.bao, align 8, !tbaa !117, !alias.scope !131 ; 2 uses
  %i.bap = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1025.a, %broadcast.splat1020
  %i.baq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1026.a, %broadcast.splat1020
  %i.bar = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1027.a, %broadcast.splat1022
  %i.bas = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1028, %broadcast.splat1022
  %i.bat = fadd reassoc nsz arcp contract afn <4 x double> %i.bar, %i.bap
  %i.bau = fadd reassoc nsz arcp contract afn <4 x double> %i.bas, %i.baq
  store <4 x double> %i.bat, ptr %i.bal, align 8, !tbaa !117, !alias.scope !130, !noalias !131
  store <4 x double> %i.bau, ptr %i.bam, align 8, !tbaa !117, !alias.scope !130, !noalias !131
  %i.bav = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1027.a, %broadcast.splat1020
  %i.baw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1028, %broadcast.splat1020
  %i.bax = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1025.a, %broadcast.splat1022
  %i.bay = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1026.a, %broadcast.splat1022
  %i.baz = fsub reassoc nsz arcp contract afn <4 x double> %i.bav, %i.bax
  %i.bba = fsub reassoc nsz arcp contract afn <4 x double> %i.baw, %i.bay
  store <4 x double> %i.baz, ptr %i.ban, align 8, !tbaa !117, !alias.scope !131
  store <4 x double> %i.bba, ptr %i.bao, align 8, !tbaa !117, !alias.scope !131
  %index.next1029 = add nuw i64 %index1024, 8     ; 2 uses
  %i.bbb = icmp eq i64 %index.next1029, %n.vec1018
  br i1 %i.bbb, label %middle.block1030, label %vector.body1023, !llvm.loop !99

middle.block1030:                                 ; preds = %vector.body1023
  br i1 %cmp.n1031, label %.loopexit728.i.i, label %.lr.ph879.i.i.preheader

.lr.ph879.i.i.preheader:                          ; preds = %PYTHAG.exit.i.i, %middle.block1030
  %indvars.iv1063.i.i.ph = phi i64 [ %n.vec1018, %middle.block1030 ], [ 0, %PYTHAG.exit.i.i ] ; 4 uses
  br i1 %lcmp.mod2104.not, label %.lr.ph879.i.i.prol.loopexit, label %.lr.ph879.i.i.prol

.lr.ph879.i.i.prol:                               ; preds = %.lr.ph879.i.i.preheader
  %i.bbc = mul nsw i64 %indvars.iv1063.i.i.ph, %i.gs ; 2 uses
  %gep1218.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %i.bbc ; 2 uses
  %i.bbd = load double, ptr %gep1218.i.i.prol, align 8, !tbaa !117 ; 2 uses
  %gep1220.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %i.bbc ; 2 uses
  %i.bbe = load double, ptr %gep1220.i.i.prol, align 8, !tbaa !117 ; 2 uses
  %i.bbf = fmul reassoc nsz arcp contract afn double %i.bbd, %i.bai
  %i.bbg = fmul reassoc nsz arcp contract afn double %i.bbe, %i.bak
  %i.bbh = fadd reassoc nsz arcp contract afn double %i.bbg, %i.bbf
  store double %i.bbh, ptr %gep1218.i.i.prol, align 8, !tbaa !117
  %i.bbi = fmul reassoc nsz arcp contract afn double %i.bbe, %i.bai
  %i.bbj = fmul reassoc nsz arcp contract afn double %i.bbd, %i.bak
  %i.bbk = fsub reassoc nsz arcp contract afn double %i.bbi, %i.bbj
  store double %i.bbk, ptr %gep1220.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1064.i.i.prol = or disjoint i64 %indvars.iv1063.i.i.ph, 1
  br label %.lr.ph879.i.i.prol.loopexit

.lr.ph879.i.i.prol.loopexit:                      ; preds = %.lr.ph879.i.i.prol, %.lr.ph879.i.i.preheader
  %indvars.iv1063.i.i.unr = phi i64 [ %indvars.iv1063.i.i.ph, %.lr.ph879.i.i.preheader ], [ %indvars.iv.next1064.i.i.prol, %.lr.ph879.i.i.prol ]
  %i.bbl = icmp eq i64 %indvars.iv1063.i.i.ph, %i.ht
  br i1 %i.bbl, label %.loopexit728.i.i, label %.lr.ph879.i.i

.lr.ph879.i.i:                                    ; preds = %.lr.ph879.i.i.prol.loopexit, %.lr.ph879.i.i
  %indvars.iv1063.i.i = phi i64 [ %indvars.iv.next1064.i.i.1, %.lr.ph879.i.i ], [ %indvars.iv1063.i.i.unr, %.lr.ph879.i.i.prol.loopexit ] ; 3 uses
  %i.bbm = mul nsw i64 %indvars.iv1063.i.i, %i.gs ; 2 uses
  %gep1218.i.i = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %i.bbm ; 2 uses
  %i.bbn = load double, ptr %gep1218.i.i, align 8, !tbaa !117 ; 2 uses
  %gep1220.i.i = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %i.bbm ; 2 uses
  %i.bbo = load double, ptr %gep1220.i.i, align 8, !tbaa !117 ; 2 uses
  %i.bbp = fmul reassoc nsz arcp contract afn double %i.bbn, %i.bai
  %i.bbq = fmul reassoc nsz arcp contract afn double %i.bbo, %i.bak
  %i.bbr = fadd reassoc nsz arcp contract afn double %i.bbq, %i.bbp
  store double %i.bbr, ptr %gep1218.i.i, align 8, !tbaa !117
  %i.bbs = fmul reassoc nsz arcp contract afn double %i.bbo, %i.bai
  %i.bbt = fmul reassoc nsz arcp contract afn double %i.bbn, %i.bak
  %i.bbu = fsub reassoc nsz arcp contract afn double %i.bbs, %i.bbt
  store double %i.bbu, ptr %gep1220.i.i, align 8, !tbaa !117
  %indvars.iv.next1064.i.i = add nuw nsw i64 %indvars.iv1063.i.i, 1
  %i.bbv = mul nsw i64 %indvars.iv.next1064.i.i, %i.gs ; 2 uses
  %gep1218.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %i.bbv ; 2 uses
  %i.bbw = load double, ptr %gep1218.i.i.1, align 8, !tbaa !117 ; 2 uses
  %gep1220.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %i.bbv ; 2 uses
  %i.bbx = load double, ptr %gep1220.i.i.1, align 8, !tbaa !117 ; 2 uses
  %i.bby = fmul reassoc nsz arcp contract afn double %i.bbw, %i.bai
  %i.bbz = fmul reassoc nsz arcp contract afn double %i.bbx, %i.bak
  %i.bca = fadd reassoc nsz arcp contract afn double %i.bbz, %i.bby
  store double %i.bca, ptr %gep1218.i.i.1, align 8, !tbaa !117
  %i.bcb = fmul reassoc nsz arcp contract afn double %i.bbx, %i.bai
  %i.bcc = fmul reassoc nsz arcp contract afn double %i.bbw, %i.bak
  %i.bcd = fsub reassoc nsz arcp contract afn double %i.bcb, %i.bcc
  store double %i.bcd, ptr %gep1220.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1064.i.i.1 = add nuw nsw i64 %indvars.iv1063.i.i, 2 ; 2 uses
  %exitcond1067.not.i.i.1 = icmp eq i64 %indvars.iv.next1064.i.i.1, %i.fc
  br i1 %exitcond1067.not.i.i.1, label %.loopexit728.i.i, label %.lr.ph879.i.i, !llvm.loop !100

.loopexit728.i.i:                                 ; preds = %.lr.ph879.i.i.prol.loopexit, %.lr.ph879.i.i, %middle.block1030, %.lr.ph884.i.i
  %.7.i.i = phi nsz double [ %.6881.i.i, %.lr.ph884.i.i ], [ %i.bak, %middle.block1030 ], [ %i.bak, %.lr.ph879.i.i ], [ %i.bak, %.lr.ph879.i.i.prol.loopexit ]
  %indvars.iv.next1069.i.i = add nsw i64 %indvars.iv1068.i.i, 1 ; 2 uses
  %lftr.wideiv1073.i.i = trunc i64 %indvars.iv.next1069.i.i to i32
  %exitcond1074.not.i.i = icmp eq i32 %indvars.iv1071.i.i, %lftr.wideiv1073.i.i
  br i1 %exitcond1074.not.i.i, label %.loopexit729.i.i, label %.lr.ph884.i.i

.loopexit729.i.i:                                 ; preds = %.loopexit728.i.i, %._crit_edge866.i.i
  %i.bce = load double, ptr %i.axz, align 8, !tbaa !117 ; 6 uses
  %i.bcf = zext i32 %.2664.lcssa.i.i to i64
  %i.bcg = icmp eq i64 %indvars.iv1095.i.i, %i.bcf
  br i1 %i.bcg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit729.i.i
  %i.bch = fcmp reassoc nsz arcp contract afn olt double %i.bce, 0.000000e+00
  br i1 %i.bch, label %.lr.ph903.preheader.i.i, label %.thread721.i.i

.lr.ph903.preheader.i.i:                          ; preds = %bb.x
  %i.bci = fneg reassoc nsz arcp contract afn double %i.bce
  store double %i.bci, ptr %i.axz, align 8, !tbaa !117
  %invariant.gep1229.i.i = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv1095.i.i ; 9 uses
  br i1 %i.my, label %.lr.ph903.i.i.epil.preheader, label %.lr.ph903.i.i

.lr.ph903.i.i:                                    ; preds = %.lr.ph903.preheader.i.i, %.lr.ph903.i.i
  %indvars.iv1090.i.i = phi i64 [ %indvars.iv.next1091.i.i.7, %.lr.ph903.i.i ], [ 0, %.lr.ph903.preheader.i.i ] ; 9 uses
  %niter2133 = phi i64 [ %niter2133.next.7, %.lr.ph903.i.i ], [ 0, %.lr.ph903.preheader.i.i ]
  %i.bcj = mul nuw nsw i64 %indvars.iv1090.i.i, %i.ml
  %gep1230.i.i = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcj ; 2 uses
  %i.bck = load double, ptr %gep1230.i.i, align 8, !tbaa !117
  %i.bcl = fneg reassoc nsz arcp contract afn double %i.bck
  store double %i.bcl, ptr %gep1230.i.i, align 8, !tbaa !117
  %indvars.iv.next1091.i.i = or disjoint i64 %indvars.iv1090.i.i, 1
  %i.bcm = mul nuw nsw i64 %indvars.iv.next1091.i.i, %i.ml
  %gep1230.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcm ; 2 uses
  %i.bcn = load double, ptr %gep1230.i.i.1, align 8, !tbaa !117
  %i.bco = fneg reassoc nsz arcp contract afn double %i.bcn
  store double %i.bco, ptr %gep1230.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.1 = or disjoint i64 %indvars.iv1090.i.i, 2
  %i.bcp = mul nuw nsw i64 %indvars.iv.next1091.i.i.1, %i.ml
  %gep1230.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcp ; 2 uses
  %i.bcq = load double, ptr %gep1230.i.i.2, align 8, !tbaa !117
  %i.bcr = fneg reassoc nsz arcp contract afn double %i.bcq
  store double %i.bcr, ptr %gep1230.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.2 = or disjoint i64 %indvars.iv1090.i.i, 3
  %i.bcs = mul nuw nsw i64 %indvars.iv.next1091.i.i.2, %i.ml
  %gep1230.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcs ; 2 uses
  %i.bct = load double, ptr %gep1230.i.i.3, align 8, !tbaa !117
  %i.bcu = fneg reassoc nsz arcp contract afn double %i.bct
  store double %i.bcu, ptr %gep1230.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.3 = or disjoint i64 %indvars.iv1090.i.i, 4
  %i.bcv = mul nuw nsw i64 %indvars.iv.next1091.i.i.3, %i.ml
  %gep1230.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcv ; 2 uses
  %i.bcw = load double, ptr %gep1230.i.i.4, align 8, !tbaa !117
  %i.bcx = fneg reassoc nsz arcp contract afn double %i.bcw
  store double %i.bcx, ptr %gep1230.i.i.4, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.4 = or disjoint i64 %indvars.iv1090.i.i, 5
  %i.bcy = mul nuw nsw i64 %indvars.iv.next1091.i.i.4, %i.ml
  %gep1230.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bcy ; 2 uses
  %i.bcz = load double, ptr %gep1230.i.i.5, align 8, !tbaa !117
  %i.bda = fneg reassoc nsz arcp contract afn double %i.bcz
  store double %i.bda, ptr %gep1230.i.i.5, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.5 = or disjoint i64 %indvars.iv1090.i.i, 6
  %i.bdb = mul nuw nsw i64 %indvars.iv.next1091.i.i.5, %i.ml
  %gep1230.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bdb ; 2 uses
  %i.bdc = load double, ptr %gep1230.i.i.6, align 8, !tbaa !117
  %i.bdd = fneg reassoc nsz arcp contract afn double %i.bdc
  store double %i.bdd, ptr %gep1230.i.i.6, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.6 = or disjoint i64 %indvars.iv1090.i.i, 7
  %i.bde = mul nuw nsw i64 %indvars.iv.next1091.i.i.6, %i.ml
  %gep1230.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bde ; 2 uses
  %i.bdf = load double, ptr %gep1230.i.i.7, align 8, !tbaa !117
  %i.bdg = fneg reassoc nsz arcp contract afn double %i.bdf
  store double %i.bdg, ptr %gep1230.i.i.7, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.7 = add nuw nsw i64 %indvars.iv1090.i.i, 8 ; 2 uses
  %niter2133.next.7 = add i64 %niter2133, 8       ; 2 uses
  %niter2133.ncmp.7 = icmp eq i64 %niter2133.next.7, %unroll_iter2132
  br i1 %niter2133.ncmp.7, label %.thread721.i.i.loopexit.unr-lcssa, label %.lr.ph903.i.i

bb.y:                                             ; preds = %.loopexit729.i.i
  %i.bdh = icmp eq i32 %.0631900.i.i, 30
  br i1 %i.bdh, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bdi = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.lcssa862.i.i
  %i.bdj = load double, ptr %i.bdi, align 8, !tbaa !117 ; 5 uses
  %i.bdk = load double, ptr %i.aya, align 8, !tbaa !117 ; 4 uses
  %i.bdl = load double, ptr %i.ayb, align 8, !tbaa !117 ; 2 uses
  %i.bdm = fsub reassoc nsz arcp contract afn double %i.bdk, %i.bce
  %i.bdn = fadd reassoc nsz arcp contract afn double %i.bdk, %i.bce
  %i.bdo = fmul reassoc nsz arcp contract afn double %i.bdm, %i.bdn
  %i.bdp = fsub reassoc nsz arcp contract afn double %i.bdl, %i.aye
  %i.bdq = fadd reassoc nsz arcp contract afn double %i.bdl, %i.aye
  %i.bdr = fmul reassoc nsz arcp contract afn double %i.bdp, %i.bdq
  %i.bds = fadd reassoc nsz arcp contract afn double %i.bdr, %i.bdo
  %i.bdt = fmul reassoc nsz arcp contract afn double %i.aye, 2.000000e+00
  %i.bdu = fmul reassoc nsz arcp contract afn double %i.bdt, %i.bdk
  %i.bdv = fdiv reassoc nsz arcp contract afn double %i.bds, %i.bdu ; 5 uses
  %i.bdw = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bdv) ; 3 uses
  %i.bdx = fcmp reassoc nsz arcp contract afn ogt double %i.bdw, 1.000000e+00
  br i1 %i.bdx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bdy = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bdw ; 2 uses
  %i.bdz = fmul reassoc nsz arcp contract afn double %i.bdy, %i.bdy
  %i.bea = fadd reassoc nsz arcp contract afn double %i.bdz, 1.000000e+00
  %i.beb = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bea)
  %i.bec = fmul reassoc nsz arcp contract afn double %i.beb, %i.bdw
  br label %PYTHAG.exit708.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bed = fmul reassoc nsz arcp contract afn double %i.bdv, %i.bdv
  %i.bee = fadd reassoc nsz arcp contract afn double %i.bed, 1.000000e+00
  %i.bef = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bee)
  br label %PYTHAG.exit708.i.i

PYTHAG.exit708.i.i:                               ; preds = %bb.ab, %bb.aa
  %.0.i707.i.i = phi nsz double [ %i.bec, %bb.aa ], [ %i.bef, %bb.ab ]
  %i.beg = fsub reassoc nsz arcp contract afn double %i.bdj, %i.bce
  %i.beh = fadd reassoc nsz arcp contract afn double %i.bdj, %i.bce
  %i.bei = fmul reassoc nsz arcp contract afn double %i.beg, %i.beh
  %i.bej = tail call reassoc nsz arcp contract afn noundef double @llvm.copysign.f64(double %.0.i707.i.i, double %i.bdv)
  %i.bek = fadd reassoc nsz arcp contract afn double %i.bej, %i.bdv
  %i.bel = fdiv reassoc nsz arcp contract afn double %i.bdk, %i.bek
  %i.bem = fsub reassoc nsz arcp contract afn double %i.bel, %i.aye
  %i.ben = fmul reassoc nsz arcp contract afn double %i.bem, %i.aye
  %i.beo = fadd reassoc nsz arcp contract afn double %i.ben, %i.bei
  %i.bep = fdiv reassoc nsz arcp contract afn double %i.beo, %i.bdj ; 2 uses
  %.not695.not890.i.i = icmp sgt i64 %indvars.iv1095.i.i, %i.azd
  br i1 %.not695.not890.i.i, label %.lr.ph896.i.i, label %._crit_edge897.i.i

.loopexit.i.loopexit.i.loopexit.unr-lcssa:        ; preds = %.lr.ph889.i.i
  br i1 %lcmp.mod2122.not, label %.loopexit.i.loopexit.i, label %.lr.ph889.i.i.epil.preheader

.lr.ph889.i.i.epil.preheader:                     ; preds = %.loopexit.i.loopexit.i.loopexit.unr-lcssa, %.lr.ph889.i.i.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph889.i.i.ph ], [ %i.bkk, %.loopexit.i.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv1080.i.i.epil.init = phi i64 [ 0, %.lr.ph889.i.i.ph ], [ %indvars.iv.next1081.i.i.1, %.loopexit.i.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2123)
  %i.beq = mul nuw nsw i64 %indvars.iv1080.i.i.epil.init, %i.gs ; 2 uses
  %gep1226.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.beq
  %gep1228.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.beq ; 2 uses
  %i.ber = load double, ptr %gep1228.i.i.epil, align 8, !tbaa !117 ; 2 uses
  %i.bes = fmul reassoc nsz arcp contract afn double %store_forwarded.epil.init, %.1681.i.i
  %i.bet = fmul reassoc nsz arcp contract afn double %i.ber, %.9.i.i
  %i.beu = fadd reassoc nsz arcp contract afn double %i.bet, %i.bes
  store double %i.beu, ptr %gep1226.i.i.epil, align 8, !tbaa !117
  %i.bev = fmul reassoc nsz arcp contract afn double %i.ber, %.1681.i.i
  %i.bew = fmul reassoc nsz arcp contract afn double %store_forwarded.epil.init, %.9.i.i
  %i.bex = fsub reassoc nsz arcp contract afn double %i.bev, %i.bew
  store double %i.bex, ptr %gep1228.i.i.epil, align 8, !tbaa !117
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i.loopexit1939.unr-lcssa:    ; preds = %.lr.ph889.i.i.lver.orig
  br i1 %lcmp.mod2116.not, label %.loopexit.i.loopexit.i, label %.lr.ph889.i.i.lver.orig.epil.preheader

.lr.ph889.i.i.lver.orig.epil.preheader:           ; preds = %.loopexit.i.loopexit.i.loopexit1939.unr-lcssa, %.lr.ph889.i.i.lver.orig.preheader
  %indvars.iv1080.i.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph889.i.i.lver.orig.preheader ], [ %indvars.iv.next1081.i.i.lver.orig.1, %.loopexit.i.loopexit.i.loopexit1939.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2117)
  %i.bey = mul nsw i64 %indvars.iv1080.i.i.lver.orig.epil.init, %i.gs ; 2 uses
  %gep1226.i.i.lver.orig.epil = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bey ; 2 uses
  %i.bez = load double, ptr %gep1226.i.i.lver.orig.epil, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig.epil = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bey ; 2 uses
  %i.bfa = load double, ptr %gep1228.i.i.lver.orig.epil, align 8, !tbaa !117 ; 2 uses
  %i.bfb = fmul reassoc nsz arcp contract afn double %i.bez, %.1681.i.i
  %i.bfc = fmul reassoc nsz arcp contract afn double %i.bfa, %.9.i.i
  %i.bfd = fadd reassoc nsz arcp contract afn double %i.bfc, %i.bfb
  store double %i.bfd, ptr %gep1226.i.i.lver.orig.epil, align 8, !tbaa !117
  %i.bfe = fmul reassoc nsz arcp contract afn double %i.bfa, %.1681.i.i
  %i.bff = fmul reassoc nsz arcp contract afn double %i.bez, %.9.i.i
  %i.bfg = fsub reassoc nsz arcp contract afn double %i.bfe, %i.bff
  store double %i.bfg, ptr %gep1228.i.i.lver.orig.epil, align 8, !tbaa !117
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i:                           ; preds = %.lr.ph889.i.i.lver.orig.epil.preheader, %.loopexit.i.loopexit.i.loopexit1939.unr-lcssa, %.lr.ph889.i.i.epil.preheader, %.loopexit.i.loopexit.i.loopexit.unr-lcssa
  %i.bfh = fmul reassoc nsz arcp contract afn double %.1681.i.i, %i.bhj
  %i.bfi = fmul reassoc nsz arcp contract afn double %.9.i.i, %i.bhl
  %i.bfj = fadd reassoc nsz arcp contract afn double %i.bfh, %i.bfi ; 2 uses
  %i.bfk = fmul reassoc nsz arcp contract afn double %.1681.i.i, %i.bhl
  %i.bfl = fmul reassoc nsz arcp contract afn double %.9.i.i, %i.bhj
  %i.bfm = fsub reassoc nsz arcp contract afn double %i.bfk, %i.bfl ; 2 uses
  %exitcond1089.not.i.i = icmp eq i64 %indvars.iv.next1086.i.i, %indvars.iv1095.i.i
  br i1 %exitcond1089.not.i.i, label %._crit_edge897.i.i, label %.lr.ph896.i.i

.lr.ph896.i.i:                                    ; preds = %PYTHAG.exit708.i.i, %.loopexit.i.loopexit.i
  %indvars.iv1085.i.i = phi i64 [ %indvars.iv.next1086.i.i, %.loopexit.i.loopexit.i ], [ %i.azd, %PYTHAG.exit708.i.i ] ; 5 uses
  %.0673894.i.i = phi double [ %i.bfm, %.loopexit.i.loopexit.i ], [ %i.bdj, %PYTHAG.exit708.i.i ] ; 2 uses
  %.8893.i.i = phi double [ %.9.i.i, %.loopexit.i.loopexit.i ], [ 1.000000e+00, %PYTHAG.exit708.i.i ]
  %.0679892.i.i = phi double [ %i.bfj, %.loopexit.i.loopexit.i ], [ %i.bep, %PYTHAG.exit708.i.i ] ; 2 uses
  %.0680891.i.i = phi double [ %.1681.i.i, %.loopexit.i.loopexit.i ], [ 1.000000e+00, %PYTHAG.exit708.i.i ]
  %indvars.iv.next1086.i.i = add nuw nsw i64 %indvars.iv1085.i.i, 1 ; 6 uses
  %i.bfn = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv.next1086.i.i
  %i.bfo = load double, ptr %i.bfn, align 8, !tbaa !117 ; 2 uses
  %i.bfp = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next1086.i.i
  %i.bfq = load double, ptr %i.bfp, align 8, !tbaa !117 ; 2 uses
  %i.bfr = fmul reassoc nsz arcp contract afn double %i.bfo, %.8893.i.i ; 3 uses
  %i.bfs = fmul reassoc nsz arcp contract afn double %i.bfo, %.0680891.i.i ; 2 uses
  %i.bft = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %.0679892.i.i) ; 4 uses
  %i.bfu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bfr) ; 4 uses
  %i.bfv = fcmp reassoc nsz arcp contract afn ogt double %i.bft, %i.bfu
  br i1 %i.bfv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph896.i.i
  %i.bfw = fdiv reassoc nsz arcp contract afn double %i.bfu, %i.bft ; 2 uses
  %i.bfx = fmul reassoc nsz arcp contract afn double %i.bfw, %i.bfw
  %i.bfy = fadd reassoc nsz arcp contract afn double %i.bfx, 1.000000e+00
  %i.bfz = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bfy)
  %i.bga = fmul reassoc nsz arcp contract afn double %i.bfz, %i.bft
  br label %.lr.ph886.preheader.i.i

bb.ad:                                            ; preds = %.lr.ph896.i.i
  %i.bgb = fcmp reassoc nsz arcp contract afn ueq double %i.bfr, 0.000000e+00
  br i1 %i.bgb, label %.lr.ph886.preheader.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bgc = fdiv reassoc nsz arcp contract afn double %i.bft, %i.bfu ; 2 uses
  %i.bgd = fmul reassoc nsz arcp contract afn double %i.bgc, %i.bgc
  %i.bge = fadd reassoc nsz arcp contract afn double %i.bgd, 1.000000e+00
  %i.bgf = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bge)
  %i.bgg = fmul reassoc nsz arcp contract afn double %i.bgf, %i.bfu
  br label %.lr.ph886.preheader.i.i

.lr.ph886.preheader.i.i:                          ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i709.i.i = phi nsz double [ %i.bga, %bb.ac ], [ %i.bgg, %bb.ae ], [ 0.000000e+00, %bb.ad ] ; 2 uses
  %i.bgh = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv1085.i.i
  store double %.0.i709.i.i, ptr %i.bgh, align 8, !tbaa !117
  %i.bgi = insertelement <2 x double> poison, double %i.bfr, i64 0
  %i.bgj = insertelement <2 x double> %i.bgi, double %.0679892.i.i, i64 1
  %i.bgk = insertelement <2 x double> poison, double %.0.i709.i.i, i64 0
  %i.bgl = shufflevector <2 x double> %i.bgk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bgm = fdiv reassoc nsz arcp contract afn <2 x double> %i.bgj, %i.bgl ; 8 uses
  %invariant.gep1221.i.i = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv1085.i.i ; 3 uses
  %invariant.gep1223.i.i = getelementptr [8 x i8], ptr %i.gw, i64 %indvars.iv.next1086.i.i ; 3 uses
  br i1 %i.mx, label %.lr.ph886.i.i.epil.preheader, label %.lr.ph886.preheader.i.i.new

.lr.ph886.preheader.i.i.new:                      ; preds = %.lr.ph886.preheader.i.i
  %i.bgn = shufflevector <2 x double> %i.bgm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bgo = shufflevector <2 x double> %i.bgm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph886.i.i

._crit_edge887.i.i.unr-lcssa:                     ; preds = %.lr.ph886.i.i
  br i1 %lcmp.mod2110.not, label %._crit_edge887.i.i, label %.lr.ph886.i.i.epil.preheader

.lr.ph886.i.i.epil.preheader:                     ; preds = %._crit_edge887.i.i.unr-lcssa, %.lr.ph886.preheader.i.i
  %indvars.iv1075.i.i.epil.init = phi i64 [ 0, %.lr.ph886.preheader.i.i ], [ %indvars.iv.next1076.i.i.1, %._crit_edge887.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2111)
  %i.bgp = mul nuw nsw i64 %indvars.iv1075.i.i.epil.init, %i.ml ; 2 uses
  %gep1222.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bgp ; 2 uses
  %gep1224.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bgp
  %i.bgq = load double, ptr %gep1222.i.i.epil, align 8, !tbaa !117
  %i.bgr = load double, ptr %gep1224.i.i.epil, align 8, !tbaa !117
  %i.bgs = insertelement <2 x double> poison, double %i.bgr, i64 0
  %i.bgt = shufflevector <2 x double> %i.bgs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bgu = fmul reassoc nsz arcp contract afn <2 x double> %i.bgt, %i.bgm ; 2 uses
  %i.bgv = insertelement <2 x double> poison, double %i.bgq, i64 0
  %i.bgw = shufflevector <2 x double> %i.bgv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bgx = shufflevector <2 x double> %i.bgm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bgy = fmul reassoc nsz arcp contract afn <2 x double> %i.bgw, %i.bgx ; 2 uses
  %i.bgz = fadd reassoc nsz arcp contract afn <2 x double> %i.bgu, %i.bgy
  %i.bha = fsub reassoc nsz arcp contract afn <2 x double> %i.bgu, %i.bgy
  %i.bhb = shufflevector <2 x double> %i.bgz, <2 x double> %i.bha, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bhb, ptr %gep1222.i.i.epil, align 8, !tbaa !117
  br label %._crit_edge887.i.i

._crit_edge887.i.i:                               ; preds = %._crit_edge887.i.i.unr-lcssa, %.lr.ph886.i.i.epil.preheader
  %i.bhc = extractelement <2 x double> %i.bgm, i64 1 ; 4 uses
  %i.bhd = fmul reassoc nsz arcp contract afn double %i.bhc, %.0673894.i.i
  %i.bhe = extractelement <2 x double> %i.bgm, i64 0 ; 4 uses
  %i.bhf = fmul reassoc nsz arcp contract afn double %i.bhe, %i.bfs
  %i.bhg = fadd reassoc nsz arcp contract afn double %i.bhd, %i.bhf ; 2 uses
  %i.bhh = fmul reassoc nsz arcp contract afn double %i.bhc, %i.bfs
  %i.bhi = fmul reassoc nsz arcp contract afn double %i.bhe, %.0673894.i.i
  %i.bhj = fsub reassoc nsz arcp contract afn double %i.bhh, %i.bhi ; 2 uses
  %i.bhk = fmul reassoc nsz arcp contract afn double %i.bhe, %i.bfq ; 3 uses
  %i.bhl = fmul reassoc nsz arcp contract afn double %i.bhc, %i.bfq ; 2 uses
  %i.bhm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bhg) ; 4 uses
  %i.bhn = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bhk) ; 4 uses
  %i.bho = fcmp reassoc nsz arcp contract afn ogt double %i.bhm, %i.bhn
  br i1 %i.bho, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge887.i.i
  %i.bhp = fdiv reassoc nsz arcp contract afn double %i.bhn, %i.bhm ; 2 uses
  %i.bhq = fmul reassoc nsz arcp contract afn double %i.bhp, %i.bhp
  %i.bhr = fadd reassoc nsz arcp contract afn double %i.bhq, 1.000000e+00
  %i.bhs = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bhr)
  %i.bht = fmul reassoc nsz arcp contract afn double %i.bhs, %i.bhm
  br label %.lr.ph889.i.i.lver.check

bb.ag:                                            ; preds = %._crit_edge887.i.i
  %i.bhu = fcmp reassoc nsz arcp contract afn ueq double %i.bhk, 0.000000e+00
  br i1 %i.bhu, label %.lr.ph889.i.i.lver.check, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bhv = fdiv reassoc nsz arcp contract afn double %i.bhm, %i.bhn ; 2 uses
  %i.bhw = fmul reassoc nsz arcp contract afn double %i.bhv, %i.bhv
  %i.bhx = fadd reassoc nsz arcp contract afn double %i.bhw, 1.000000e+00
  %i.bhy = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bhx)
  %i.bhz = fmul reassoc nsz arcp contract afn double %i.bhy, %i.bhn
  br label %.lr.ph889.i.i.lver.check

.lr.ph889.i.i.lver.check:                         ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i711.i.i = phi nsz double [ %i.bht, %bb.af ], [ %i.bhz, %bb.ah ], [ 0.000000e+00, %bb.ag ] ; 3 uses
  %i.bia = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv1085.i.i
  store double %.0.i711.i.i, ptr %i.bia, align 8, !tbaa !117
  %i.bib = fcmp reassoc nsz arcp contract afn une double %.0.i711.i.i, 0.000000e+00 ; 2 uses
  %i.bic = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i711.i.i ; 2 uses
  %i.bid = fmul reassoc nsz arcp contract afn double %i.bic, %i.bhg
  %i.bie = fmul reassoc nsz arcp contract afn double %i.bic, %i.bhk
  %.1681.i.i = select nsz i1 %i.bib, double %i.bid, double %i.bhc ; 15 uses
  %.9.i.i = select nsz i1 %i.bib, double %i.bie, double %i.bhe ; 15 uses
  %invariant.gep1225.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv1085.i.i ; 7 uses
  %invariant.gep1227.i.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv.next1086.i.i ; 6 uses
  br i1 %ident.check1925.not, label %.lr.ph889.i.i.ph, label %.lr.ph889.i.i.lver.orig.preheader

.lr.ph889.i.i.lver.orig.preheader:                ; preds = %.lr.ph889.i.i.lver.check
  br i1 %i.hu, label %.lr.ph889.i.i.lver.orig.epil.preheader, label %.lr.ph889.i.i.lver.orig

.lr.ph889.i.i.lver.orig:                          ; preds = %.lr.ph889.i.i.lver.orig.preheader, %.lr.ph889.i.i.lver.orig
  %indvars.iv1080.i.i.lver.orig = phi i64 [ %indvars.iv.next1081.i.i.lver.orig.1, %.lr.ph889.i.i.lver.orig ], [ 0, %.lr.ph889.i.i.lver.orig.preheader ] ; 3 uses
  %niter2119 = phi i64 [ %niter2119.next.1, %.lr.ph889.i.i.lver.orig ], [ 0, %.lr.ph889.i.i.lver.orig.preheader ]
  %i.bif = mul nsw i64 %indvars.iv1080.i.i.lver.orig, %i.gs ; 2 uses
  %gep1226.i.i.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bif ; 2 uses
  %i.big = load double, ptr %gep1226.i.i.lver.orig, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bif ; 2 uses
  %i.bih = load double, ptr %gep1228.i.i.lver.orig, align 8, !tbaa !117 ; 2 uses
  %i.bii = fmul reassoc nsz arcp contract afn double %i.big, %.1681.i.i
  %i.bij = fmul reassoc nsz arcp contract afn double %i.bih, %.9.i.i
  %i.bik = fadd reassoc nsz arcp contract afn double %i.bij, %i.bii
  store double %i.bik, ptr %gep1226.i.i.lver.orig, align 8, !tbaa !117
  %i.bil = fmul reassoc nsz arcp contract afn double %i.bih, %.1681.i.i
  %i.bim = fmul reassoc nsz arcp contract afn double %i.big, %.9.i.i
  %i.bin = fsub reassoc nsz arcp contract afn double %i.bil, %i.bim
  store double %i.bin, ptr %gep1228.i.i.lver.orig, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.lver.orig = or disjoint i64 %indvars.iv1080.i.i.lver.orig, 1
  %i.bio = mul nsw i64 %indvars.iv.next1081.i.i.lver.orig, %i.gs ; 2 uses
  %gep1226.i.i.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bio ; 2 uses
  %i.bip = load double, ptr %gep1226.i.i.lver.orig.1, align 8, !tbaa !117 ; 2 uses
  %gep1228.i.i.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bio ; 2 uses
  %i.biq = load double, ptr %gep1228.i.i.lver.orig.1, align 8, !tbaa !117 ; 2 uses
  %i.bir = fmul reassoc nsz arcp contract afn double %i.bip, %.1681.i.i
  %i.bis = fmul reassoc nsz arcp contract afn double %i.biq, %.9.i.i
  %i.bit = fadd reassoc nsz arcp contract afn double %i.bis, %i.bir
  store double %i.bit, ptr %gep1226.i.i.lver.orig.1, align 8, !tbaa !117
  %i.biu = fmul reassoc nsz arcp contract afn double %i.biq, %.1681.i.i
  %i.biv = fmul reassoc nsz arcp contract afn double %i.bip, %.9.i.i
  %i.biw = fsub reassoc nsz arcp contract afn double %i.biu, %i.biv
  store double %i.biw, ptr %gep1228.i.i.lver.orig.1, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.lver.orig.1 = add nuw nsw i64 %indvars.iv1080.i.i.lver.orig, 2 ; 2 uses
  %niter2119.next.1 = add i64 %niter2119, 2       ; 2 uses
  %niter2119.ncmp.1 = icmp eq i64 %niter2119.next.1, %unroll_iter2118
  br i1 %niter2119.ncmp.1, label %.loopexit.i.loopexit.i.loopexit1939.unr-lcssa, label %.lr.ph889.i.i.lver.orig

.lr.ph889.i.i.ph:                                 ; preds = %.lr.ph889.i.i.lver.check
  %load_initial = load double, ptr %invariant.gep1225.i.i, align 8 ; 2 uses
  br i1 %i.hv, label %.lr.ph889.i.i.epil.preheader, label %.lr.ph889.i.i

.lr.ph886.i.i:                                    ; preds = %.lr.ph886.i.i, %.lr.ph886.preheader.i.i.new
  %indvars.iv1075.i.i = phi i64 [ 0, %.lr.ph886.preheader.i.i.new ], [ %indvars.iv.next1076.i.i.1, %.lr.ph886.i.i ] ; 3 uses
  %niter2113 = phi i64 [ 0, %.lr.ph886.preheader.i.i.new ], [ %niter2113.next.1, %.lr.ph886.i.i ]
  %i.bix = mul nuw nsw i64 %indvars.iv1075.i.i, %i.ml ; 2 uses
  %gep1222.i.i = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bix ; 2 uses
  %gep1224.i.i = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bix
  %i.biy = load double, ptr %gep1222.i.i, align 8, !tbaa !117
  %i.biz = load double, ptr %gep1224.i.i, align 8, !tbaa !117
  %i.bja = insertelement <2 x double> poison, double %i.biz, i64 0
  %i.bjb = shufflevector <2 x double> %i.bja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bjc = fmul reassoc nsz arcp contract afn <2 x double> %i.bjb, %i.bgm ; 2 uses
  %i.bjd = insertelement <2 x double> poison, double %i.biy, i64 0
  %i.bje = shufflevector <2 x double> %i.bjd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bjf = fmul reassoc nsz arcp contract afn <2 x double> %i.bje, %i.bgn ; 2 uses
  %i.bjg = fadd reassoc nsz arcp contract afn <2 x double> %i.bjc, %i.bjf
  %i.bjh = fsub reassoc nsz arcp contract afn <2 x double> %i.bjc, %i.bjf
  %i.bji = shufflevector <2 x double> %i.bjg, <2 x double> %i.bjh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bji, ptr %gep1222.i.i, align 8, !tbaa !117
  %indvars.iv.next1076.i.i = or disjoint i64 %indvars.iv1075.i.i, 1
  %i.bjj = mul nuw nsw i64 %indvars.iv.next1076.i.i, %i.ml ; 2 uses
  %gep1222.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1221.i.i, i64 %i.bjj ; 2 uses
  %gep1224.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1223.i.i, i64 %i.bjj
  %i.bjk = load double, ptr %gep1222.i.i.1, align 8, !tbaa !117
  %i.bjl = load double, ptr %gep1224.i.i.1, align 8, !tbaa !117
  %i.bjm = insertelement <2 x double> poison, double %i.bjl, i64 0
  %i.bjn = shufflevector <2 x double> %i.bjm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bjo = fmul reassoc nsz arcp contract afn <2 x double> %i.bjn, %i.bgm ; 2 uses
  %i.bjp = insertelement <2 x double> poison, double %i.bjk, i64 0
  %i.bjq = shufflevector <2 x double> %i.bjp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bjr = fmul reassoc nsz arcp contract afn <2 x double> %i.bjq, %i.bgo ; 2 uses
  %i.bjs = fadd reassoc nsz arcp contract afn <2 x double> %i.bjo, %i.bjr
  %i.bjt = fsub reassoc nsz arcp contract afn <2 x double> %i.bjo, %i.bjr
  %i.bju = shufflevector <2 x double> %i.bjs, <2 x double> %i.bjt, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bju, ptr %gep1222.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1076.i.i.1 = add nuw nsw i64 %indvars.iv1075.i.i, 2 ; 2 uses
  %niter2113.next.1 = add i64 %niter2113, 2       ; 2 uses
  %niter2113.ncmp.1 = icmp eq i64 %niter2113.next.1, %unroll_iter2112
  br i1 %niter2113.ncmp.1, label %._crit_edge887.i.i.unr-lcssa, label %.lr.ph886.i.i

.lr.ph889.i.i:                                    ; preds = %.lr.ph889.i.i.ph, %.lr.ph889.i.i
  %store_forwarded = phi double [ %i.bkk, %.lr.ph889.i.i ], [ %load_initial, %.lr.ph889.i.i.ph ] ; 2 uses
  %indvars.iv1080.i.i = phi i64 [ %indvars.iv.next1081.i.i.1, %.lr.ph889.i.i ], [ 0, %.lr.ph889.i.i.ph ] ; 3 uses
  %niter2125 = phi i64 [ %niter2125.next.1, %.lr.ph889.i.i ], [ 0, %.lr.ph889.i.i.ph ]
  %i.bjv = mul nuw nsw i64 %indvars.iv1080.i.i, %i.gs ; 2 uses
  %gep1226.i.i = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bjv
  %gep1228.i.i = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bjv ; 2 uses
  %i.bjw = load double, ptr %gep1228.i.i, align 8, !tbaa !117 ; 2 uses
  %i.bjx = fmul reassoc nsz arcp contract afn double %store_forwarded, %.1681.i.i
  %i.bjy = fmul reassoc nsz arcp contract afn double %i.bjw, %.9.i.i
  %i.bjz = fadd reassoc nsz arcp contract afn double %i.bjy, %i.bjx
  store double %i.bjz, ptr %gep1226.i.i, align 8, !tbaa !117
  %i.bka = fmul reassoc nsz arcp contract afn double %i.bjw, %.1681.i.i
  %i.bkb = fmul reassoc nsz arcp contract afn double %store_forwarded, %.9.i.i
  %i.bkc = fsub reassoc nsz arcp contract afn double %i.bka, %i.bkb ; 3 uses
  store double %i.bkc, ptr %gep1228.i.i, align 8, !tbaa !117
  %indvars.iv.next1081.i.i = or disjoint i64 %indvars.iv1080.i.i, 1
  %i.bkd = mul nuw nsw i64 %indvars.iv.next1081.i.i, %i.gs ; 2 uses
  %gep1226.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1225.i.i, i64 %i.bkd
  %gep1228.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1227.i.i, i64 %i.bkd ; 2 uses
  %i.bke = load double, ptr %gep1228.i.i.1, align 8, !tbaa !117 ; 2 uses
  %i.bkf = fmul reassoc nsz arcp contract afn double %i.bkc, %.1681.i.i
  %i.bkg = fmul reassoc nsz arcp contract afn double %i.bke, %.9.i.i
  %i.bkh = fadd reassoc nsz arcp contract afn double %i.bkg, %i.bkf
  store double %i.bkh, ptr %gep1226.i.i.1, align 8, !tbaa !117
  %i.bki = fmul reassoc nsz arcp contract afn double %i.bke, %.1681.i.i
  %i.bkj = fmul reassoc nsz arcp contract afn double %i.bkc, %.9.i.i
  %i.bkk = fsub reassoc nsz arcp contract afn double %i.bki, %i.bkj ; 3 uses
  store double %i.bkk, ptr %gep1228.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1081.i.i.1 = add nuw nsw i64 %indvars.iv1080.i.i, 2 ; 2 uses
  %niter2125.next.1 = add i64 %niter2125, 2       ; 2 uses
  %niter2125.ncmp.1 = icmp eq i64 %niter2125.next.1, %unroll_iter2124
  br i1 %niter2125.ncmp.1, label %.loopexit.i.loopexit.i.loopexit.unr-lcssa, label %.lr.ph889.i.i

._crit_edge897.i.i:                               ; preds = %.loopexit.i.loopexit.i, %PYTHAG.exit708.i.i
  %.0679.lcssa.i.i = phi double [ %i.bep, %PYTHAG.exit708.i.i ], [ %i.bfj, %.loopexit.i.loopexit.i ] ; 2 uses
  %.0673.lcssa.i.i = phi double [ %i.bdj, %PYTHAG.exit708.i.i ], [ %i.bfm, %.loopexit.i.loopexit.i ]
  store double 0.000000e+00, ptr %i.azc, align 8, !tbaa !117
  store double %.0679.lcssa.i.i, ptr %i.axx, align 8, !tbaa !117
  store double %.0673.lcssa.i.i, ptr %i.axz, align 8, !tbaa !117
  %i.bkl = add nuw nsw i32 %.0631900.i.i, 1
  br label %.preheader730.i.i

.thread721.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph903.i.i
  br i1 %lcmp.mod2130.not, label %.thread721.i.i, label %.lr.ph903.i.i.epil.preheader

.lr.ph903.i.i.epil.preheader:                     ; preds = %.thread721.i.i.loopexit.unr-lcssa, %.lr.ph903.preheader.i.i
  %indvars.iv1090.i.i.epil.init = phi i64 [ 0, %.lr.ph903.preheader.i.i ], [ %indvars.iv.next1091.i.i.7, %.thread721.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2131)
  br label %.lr.ph903.i.i.epil

.lr.ph903.i.i.epil:                               ; preds = %.lr.ph903.i.i.epil, %.lr.ph903.i.i.epil.preheader
  %indvars.iv1090.i.i.epil = phi i64 [ %indvars.iv1090.i.i.epil.init, %.lr.ph903.i.i.epil.preheader ], [ %indvars.iv.next1091.i.i.epil, %.lr.ph903.i.i.epil ] ; 2 uses
  %epil.iter2129 = phi i64 [ 0, %.lr.ph903.i.i.epil.preheader ], [ %epil.iter2129.next, %.lr.ph903.i.i.epil ]
  %i.bkm = mul nuw nsw i64 %indvars.iv1090.i.i.epil, %i.ml
  %gep1230.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep1229.i.i, i64 %i.bkm ; 2 uses
  %i.bkn = load double, ptr %gep1230.i.i.epil, align 8, !tbaa !117
  %i.bko = fneg reassoc nsz arcp contract afn double %i.bkn
  store double %i.bko, ptr %gep1230.i.i.epil, align 8, !tbaa !117
  %indvars.iv.next1091.i.i.epil = add nuw nsw i64 %indvars.iv1090.i.i.epil, 1
  %epil.iter2129.next = add i64 %epil.iter2129, 1 ; 2 uses
  %epil.iter2129.cmp.not = icmp eq i64 %epil.iter2129.next, %xtraiter2128
  br i1 %epil.iter2129.cmp.not, label %.thread721.i.i, label %.lr.ph903.i.i.epil, !llvm.loop !101

.thread721.i.i:                                   ; preds = %.thread721.i.i.loopexit.unr-lcssa, %.lr.ph903.i.i.epil, %bb.x
  %indvars.iv.next1072.i.i = add nsw i32 %indvars.iv1071.i.i, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.axy, label %dsvd.exit.i, label %.preheader731.i.i

bb.ai:                                            ; preds = %bb.y
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, i32 noundef 30) #17
  br label %dsvd.exit.i

dsvd.exit.i:                                      ; preds = %.thread721.i.i, %._crit_edge532.split, %._crit_edge532.split.thread, %bb.ai
  %.sink = phi ptr [ %15, %bb.ai ], [ %14, %._crit_edge532.split.thread ], [ %15, %._crit_edge532.split ], [ %15, %.thread721.i.i ]
  %16 = phi ptr [ %i.oa, %bb.ai ], [ %13, %._crit_edge532.split.thread ], [ %i.oa, %._crit_edge532.split ], [ %i.oa, %.thread721.i.i ]
  %17 = phi ptr [ %i.nz, %bb.ai ], [ %12, %._crit_edge532.split.thread ], [ %i.nz, %._crit_edge532.split ], [ %i.nz, %.thread721.i.i ]
  %18 = phi ptr [ %i.ny, %bb.ai ], [ %11, %._crit_edge532.split.thread ], [ %i.ny, %._crit_edge532.split ], [ %i.ny, %.thread721.i.i ] ; 12 uses
  tail call void @free(ptr noundef %.sink) #17
  %i.bkp = load double, ptr %i.mt, align 8, !tbaa !117
  %i.bkq = fcmp reassoc nsz arcp contract afn olt double %i.bkp, 1.000000e-03
  br i1 %i.bkq, label %._crit_edge553, label %bb.aj

bb.aj:                                            ; preds = %dsvd.exit.i
  %i.bkr = tail call noalias ptr @malloc(i64 noundef %i.gt) #15 ; 8 uses
  br i1 %.not422530, label %.lr.ph544, label %iter.check986

iter.check986:                                    ; preds = %bb.aj, %._crit_edge.us.i
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %._crit_edge.us.i ], [ 0, %bb.aj ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv123.i ; 11 uses
  br i1 %or.cond1938, label %vector.main.loop.iter.check962, label %vec.epilog.scalar.ph988.preheader

vector.main.loop.iter.check962:                   ; preds = %iter.check986
  br i1 %min.iters.check963, label %vec.epilog.ph990, label %vector.body966

vector.body966:                                   ; preds = %vector.main.loop.iter.check962, %vector.body966
  %index967 = phi i64 [ %index.next980, %vector.body966 ], [ 0, %vector.main.loop.iter.check962 ] ; 3 uses
  %vec.phi968.a = phi <4 x double> [ %i.ble, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi969.a = phi <4 x double> [ %i.blf, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi970.a = phi <4 x double> [ %i.blg, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %vec.phi971 = phi <4 x double> [ %i.blh, %vector.body966 ], [ zeroinitializer, %vector.main.loop.iter.check962 ]
  %i.bks = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index967 ; 4 uses
  %i.bkt = getelementptr i8, ptr %i.bks, i64 32
  %i.bku = getelementptr i8, ptr %i.bks, i64 64
  %i.bkv = getelementptr i8, ptr %i.bks, i64 96
  %wide.load972.a = load <4 x double>, ptr %i.bks, align 8, !tbaa !117
  %wide.load973.a = load <4 x double>, ptr %i.bkt, align 8, !tbaa !117
  %wide.load974.a = load <4 x double>, ptr %i.bku, align 8, !tbaa !117
  %wide.load975.a = load <4 x double>, ptr %i.bkv, align 8, !tbaa !117
  %i.bkw = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %index967 ; 4 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 32
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkw, i64 64
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkw, i64 96
  %wide.load976.a = load <4 x double>, ptr %i.bkw, align 8, !tbaa !117
  %wide.load977.a = load <4 x double>, ptr %i.bkx, align 8, !tbaa !117
  %wide.load978.a = load <4 x double>, ptr %i.bky, align 8, !tbaa !117
  %wide.load979 = load <4 x double>, ptr %i.bkz, align 8, !tbaa !117
  %i.bla = fmul reassoc nsz arcp contract afn <4 x double> %wide.load976.a, %wide.load972.a
  %i.blb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load977.a, %wide.load973.a
  %i.blc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load978.a, %wide.load974.a
  %i.bld = fmul reassoc nsz arcp contract afn <4 x double> %wide.load979, %wide.load975.a
  %i.ble = fadd reassoc nsz arcp contract afn <4 x double> %i.bla, %vec.phi968.a ; 2 uses
  %i.blf = fadd reassoc nsz arcp contract afn <4 x double> %i.blb, %vec.phi969.a ; 2 uses
  %i.blg = fadd reassoc nsz arcp contract afn <4 x double> %i.blc, %vec.phi970.a ; 2 uses
  %i.blh = fadd reassoc nsz arcp contract afn <4 x double> %i.bld, %vec.phi971 ; 2 uses
  %index.next980 = add nuw i64 %index967, 16      ; 2 uses
  %i.bli = icmp eq i64 %index.next980, %n.vec965
  br i1 %i.bli, label %middle.block981, label %vector.body966, !llvm.loop !102

middle.block981:                                  ; preds = %vector.body966
  %bin.rdx982.a = fadd reassoc nsz arcp contract afn <4 x double> %i.blf, %i.ble
  %bin.rdx983.a = fadd reassoc nsz arcp contract afn <4 x double> %i.blg, %bin.rdx982.a
  %bin.rdx984 = fadd reassoc nsz arcp contract afn <4 x double> %i.blh, %bin.rdx983.a
  %i.blj = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx984) ; 3 uses
  br i1 %cmp.n985, label %._crit_edge.us.i, label %vec.epilog.iter.check987

vec.epilog.iter.check987:                         ; preds = %middle.block981
  br i1 %min.epilog.iters.check989, label %vec.epilog.scalar.ph988.preheader, label %vec.epilog.ph990, !prof !121

vec.epilog.ph990:                                 ; preds = %vector.main.loop.iter.check962, %vec.epilog.iter.check987
  %vec.epilog.resume.val991 = phi i64 [ %n.vec965, %vec.epilog.iter.check987 ], [ 0, %vector.main.loop.iter.check962 ]
  %bc.merge.rdx992 = phi double [ %i.blj, %vec.epilog.iter.check987 ], [ 0.000000e+00, %vector.main.loop.iter.check962 ]
  %i.blk = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx992, i64 0
  br label %vec.epilog.vector.body994

vec.epilog.vector.body994:                        ; preds = %vec.epilog.vector.body994, %vec.epilog.ph990
  %index995 = phi i64 [ %vec.epilog.resume.val991, %vec.epilog.ph990 ], [ %index.next999, %vec.epilog.vector.body994 ] ; 3 uses
  %vec.phi996 = phi <4 x double> [ %i.blk, %vec.epilog.ph990 ], [ %i.blo, %vec.epilog.vector.body994 ]
  %i.bll = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index995
  %wide.load997.a = load <4 x double>, ptr %i.bll, align 8, !tbaa !117
  %i.blm = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %index995
  %wide.load998 = load <4 x double>, ptr %i.blm, align 8, !tbaa !117
  %i.bln = fmul reassoc nsz arcp contract afn <4 x double> %wide.load998, %wide.load997.a
  %i.blo = fadd reassoc nsz arcp contract afn <4 x double> %i.bln, %vec.phi996 ; 2 uses
  %index.next999 = add nuw i64 %index995, 4       ; 2 uses
  %i.blp = icmp eq i64 %index.next999, %n.vec993
  br i1 %i.blp, label %vec.epilog.middle.block1000, label %vec.epilog.vector.body994, !llvm.loop !103

vec.epilog.middle.block1000:                      ; preds = %vec.epilog.vector.body994
  %i.blq = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.blo) ; 2 uses
  br i1 %cmp.n1001, label %._crit_edge.us.i, label %vec.epilog.scalar.ph988.preheader

vec.epilog.scalar.ph988.preheader:                ; preds = %iter.check986, %vec.epilog.iter.check987, %vec.epilog.middle.block1000
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check986 ], [ %n.vec965, %vec.epilog.iter.check987 ], [ %n.vec993, %vec.epilog.middle.block1000 ] ; 4 uses
  %.ph1941 = phi double [ 0.000000e+00, %iter.check986 ], [ %i.blj, %vec.epilog.iter.check987 ], [ %i.blq, %vec.epilog.middle.block1000 ] ; 2 uses
  %i.blr = sub nsw i64 %i.fc, %indvars.iv.i.ph
  %xtraiter2134 = and i64 %i.blr, 7               ; 2 uses
  %lcmp.mod2135.not = icmp eq i64 %xtraiter2134, 0
  br i1 %lcmp.mod2135.not, label %vec.epilog.scalar.ph988.prol.loopexit, label %vec.epilog.scalar.ph988.prol

vec.epilog.scalar.ph988.prol:                     ; preds = %vec.epilog.scalar.ph988.preheader, %vec.epilog.scalar.ph988.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph988.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph988.preheader ] ; 3 uses
  %i.bls = phi double [ %i.bly, %vec.epilog.scalar.ph988.prol ], [ %.ph1941, %vec.epilog.scalar.ph988.preheader ]
  %prol.iter2136 = phi i64 [ %prol.iter2136.next, %vec.epilog.scalar.ph988.prol ], [ 0, %vec.epilog.scalar.ph988.preheader ]
  %i.blt = mul nsw i64 %indvars.iv.i.prol, %i.gs
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.blt
  %i.blu = load double, ptr %gep.i.prol, align 8, !tbaa !117
  %i.blv = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i.prol
  %i.blw = load double, ptr %i.blv, align 8, !tbaa !117
  %i.blx = fmul reassoc nsz arcp contract afn double %i.blw, %i.blu
  %i.bly = fadd reassoc nsz arcp contract afn double %i.blx, %i.bls ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter2136.next = add i64 %prol.iter2136, 1 ; 2 uses
  %prol.iter2136.cmp.not = icmp eq i64 %prol.iter2136.next, %xtraiter2134
  br i1 %prol.iter2136.cmp.not, label %vec.epilog.scalar.ph988.prol.loopexit, label %vec.epilog.scalar.ph988.prol, !llvm.loop !104

vec.epilog.scalar.ph988.prol.loopexit:            ; preds = %vec.epilog.scalar.ph988.prol, %vec.epilog.scalar.ph988.preheader
  %.lcssa2012.unr = phi double [ poison, %vec.epilog.scalar.ph988.preheader ], [ %i.bly, %vec.epilog.scalar.ph988.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph988.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph988.prol ]
  %.unr = phi double [ %.ph1941, %vec.epilog.scalar.ph988.preheader ], [ %i.bly, %vec.epilog.scalar.ph988.prol ]
  %i.blz = sub nsw i64 %indvars.iv.i.ph, %i.fc
  %i.bma = icmp ugt i64 %i.blz, -8
  br i1 %i.bma, label %._crit_edge.us.i, label %vec.epilog.scalar.ph988

vec.epilog.scalar.ph988:                          ; preds = %vec.epilog.scalar.ph988.prol.loopexit, %vec.epilog.scalar.ph988
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph988 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph988.prol.loopexit ] ; 10 uses
  %i.bmb = phi double [ %i.bnx, %vec.epilog.scalar.ph988 ], [ %.unr, %vec.epilog.scalar.ph988.prol.loopexit ]
  %i.bmc = mul nsw i64 %indvars.iv.i, %i.gs
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bmc
  %i.bmd = load double, ptr %gep.i, align 8, !tbaa !117
  %i.bme = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i
  %i.bmf = load double, ptr %i.bme, align 8, !tbaa !117
  %i.bmg = fmul reassoc nsz arcp contract afn double %i.bmf, %i.bmd
  %i.bmh = fadd reassoc nsz arcp contract afn double %i.bmg, %i.bmb
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bmi = mul nsw i64 %indvars.iv.next.i, %i.gs
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bmi
  %i.bmj = load double, ptr %gep.i.1, align 8, !tbaa !117
  %i.bmk = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next.i
  %i.bml = load double, ptr %i.bmk, align 8, !tbaa !117
  %i.bmm = fmul reassoc nsz arcp contract afn double %i.bml, %i.bmj
  %i.bmn = fadd reassoc nsz arcp contract afn double %i.bmm, %i.bmh
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bmo = mul nsw i64 %indvars.iv.next.i.1, %i.gs
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bmo
  %i.bmp = load double, ptr %gep.i.2, align 8, !tbaa !117
  %i.bmq = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next.i.1
  %i.bmr = load double, ptr %i.bmq, align 8, !tbaa !117
  %i.bms = fmul reassoc nsz arcp contract afn double %i.bmr, %i.bmp
  %i.bmt = fadd reassoc nsz arcp contract afn double %i.bms, %i.bmn
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bmu = mul nsw i64 %indvars.iv.next.i.2, %i.gs
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bmu
  %i.bmv = load double, ptr %gep.i.3, align 8, !tbaa !117
  %i.bmw = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next.i.2
  %i.bmx = load double, ptr %i.bmw, align 8, !tbaa !117
  %i.bmy = fmul reassoc nsz arcp contract afn double %i.bmx, %i.bmv
  %i.bmz = fadd reassoc nsz arcp contract afn double %i.bmy, %i.bmt
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.bna = mul nsw i64 %indvars.iv.next.i.3, %i.gs
  %gep.i.4 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bna
  %i.bnb = load double, ptr %gep.i.4, align 8, !tbaa !117
  %i.bnc = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next.i.3
  %i.bnd = load double, ptr %i.bnc, align 8, !tbaa !117
  %i.bne = fmul reassoc nsz arcp contract afn double %i.bnd, %i.bnb
  %i.bnf = fadd reassoc nsz arcp contract afn double %i.bne, %i.bmz
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.bng = mul nsw i64 %indvars.iv.next.i.4, %i.gs
  %gep.i.5 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bng
  %i.bnh = load double, ptr %gep.i.5, align 8, !tbaa !117
  %i.bni = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next.i.4
  %i.bnj = load double, ptr %i.bni, align 8, !tbaa !117
  %i.bnk = fmul reassoc nsz arcp contract afn double %i.bnj, %i.bnh
  %i.bnl = fadd reassoc nsz arcp contract afn double %i.bnk, %i.bnf
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.bnm = mul nsw i64 %indvars.iv.next.i.5, %i.gs
  %gep.i.6 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bnm
  %i.bnn = load double, ptr %gep.i.6, align 8, !tbaa !117
  %i.bno = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next.i.5
  %i.bnp = load double, ptr %i.bno, align 8, !tbaa !117
  %i.bnq = fmul reassoc nsz arcp contract afn double %i.bnp, %i.bnn
  %i.bnr = fadd reassoc nsz arcp contract afn double %i.bnq, %i.bnl
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.bns = mul nsw i64 %indvars.iv.next.i.6, %i.gs
  %gep.i.7 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bns
  %i.bnt = load double, ptr %gep.i.7, align 8, !tbaa !117
  %i.bnu = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.next.i.6
  %i.bnv = load double, ptr %i.bnu, align 8, !tbaa !117
  %i.bnw = fmul reassoc nsz arcp contract afn double %i.bnv, %i.bnt
  %i.bnx = fadd reassoc nsz arcp contract afn double %i.bnw, %i.bnr ; 2 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.fc
  br i1 %exitcond.not.i.7, label %._crit_edge.us.i, label %vec.epilog.scalar.ph988, !llvm.loop !105

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph988.prol.loopexit, %vec.epilog.scalar.ph988, %vec.epilog.middle.block1000, %middle.block981
  %.lcssa795.a = phi double [ %i.blq, %vec.epilog.middle.block1000 ], [ %i.blj, %middle.block981 ], [ %.lcssa2012.unr, %vec.epilog.scalar.ph988.prol.loopexit ], [ %i.bnx, %vec.epilog.scalar.ph988 ]
  %i.bny = getelementptr inbounds nuw [8 x i8], ptr %i.bkr, i64 %indvars.iv123.i
  store double %.lcssa795.a, ptr %i.bny, align 8, !tbaa !117
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next124.i, %wide.trip.count990.i.i
  br i1 %exitcond128.not.i, label %iter.check946, label %iter.check986

iter.check946:                                    ; preds = %._crit_edge.us.i
  br i1 %min.iters.check928, label %.lr.ph92.i.preheader, label %vector.main.loop.iter.check929

vector.main.loop.iter.check929:                   ; preds = %iter.check946
  br i1 %min.iters.check930, label %vec.epilog.ph950, label %vector.body933

vector.body933:                                   ; preds = %vector.main.loop.iter.check929, %vector.body933
  %index934 = phi i64 [ %index.next943, %vector.body933 ], [ 0, %vector.main.loop.iter.check929 ] ; 3 uses
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index934 ; 4 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 32
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnz, i64 64
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnz, i64 96
  %wide.load935.a = load <4 x double>, ptr %i.bnz, align 8, !tbaa !117
  %wide.load936.a = load <4 x double>, ptr %i.boa, align 8, !tbaa !117
  %wide.load937.a = load <4 x double>, ptr %i.bob, align 8, !tbaa !117
  %wide.load938.a = load <4 x double>, ptr %i.boc, align 8, !tbaa !117
  %i.bod = getelementptr inbounds nuw [8 x i8], ptr %i.bkr, i64 %index934 ; 5 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 32 ; 2 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bod, i64 64 ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bod, i64 96 ; 2 uses
  %wide.load939.a = load <4 x double>, ptr %i.bod, align 8, !tbaa !117
  %wide.load940.a = load <4 x double>, ptr %i.boe, align 8, !tbaa !117
  %wide.load941.a = load <4 x double>, ptr %i.bof, align 8, !tbaa !117
  %wide.load942 = load <4 x double>, ptr %i.bog, align 8, !tbaa !117
  %i.boh = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load939.a, %wide.load935.a
  %i.boi = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load940.a, %wide.load936.a
  %i.boj = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load941.a, %wide.load937.a
  %i.bok = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load942, %wide.load938.a
  store <4 x double> %i.boh, ptr %i.bod, align 8, !tbaa !117
  store <4 x double> %i.boi, ptr %i.boe, align 8, !tbaa !117
  store <4 x double> %i.boj, ptr %i.bof, align 8, !tbaa !117
  store <4 x double> %i.bok, ptr %i.bog, align 8, !tbaa !117
  %index.next943 = add nuw i64 %index934, 16      ; 2 uses
  %i.bol = icmp eq i64 %index.next943, %n.vec932
  br i1 %i.bol, label %middle.block944, label %vector.body933, !llvm.loop !106

middle.block944:                                  ; preds = %vector.body933
  br i1 %cmp.n945, label %iter.check910.preheader, label %vec.epilog.iter.check947

vec.epilog.iter.check947:                         ; preds = %middle.block944
  br i1 %min.epilog.iters.check949, label %.lr.ph92.i.preheader, label %vec.epilog.ph950, !prof !121

vec.epilog.ph950:                                 ; preds = %vector.main.loop.iter.check929, %vec.epilog.iter.check947
  %vec.epilog.resume.val951 = phi i64 [ %n.vec932, %vec.epilog.iter.check947 ], [ 0, %vector.main.loop.iter.check929 ]
  br label %vec.epilog.vector.body953

vec.epilog.vector.body953:                        ; preds = %vec.epilog.vector.body953, %vec.epilog.ph950
  %index954 = phi i64 [ %vec.epilog.resume.val951, %vec.epilog.ph950 ], [ %index.next957, %vec.epilog.vector.body953 ] ; 3 uses
  %i.bom = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index954
  %wide.load955.a = load <4 x double>, ptr %i.bom, align 8, !tbaa !117
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr %i.bkr, i64 %index954 ; 2 uses
  %wide.load956 = load <4 x double>, ptr %i.bon, align 8, !tbaa !117
  %i.boo = fdiv reassoc nsz arcp contract afn <4 x double> %wide.load956, %wide.load955.a
  store <4 x double> %i.boo, ptr %i.bon, align 8, !tbaa !117
  %index.next957 = add nuw i64 %index954, 4       ; 2 uses
  %i.bop = icmp eq i64 %index.next957, %n.vec952
  br i1 %i.bop, label %vec.epilog.middle.block958, label %vec.epilog.vector.body953, !llvm.loop !107

vec.epilog.middle.block958:                       ; preds = %vec.epilog.vector.body953
  br i1 %cmp.n959, label %iter.check910.preheader, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %iter.check946, %vec.epilog.iter.check947, %vec.epilog.middle.block958
  %indvars.iv129.i.ph = phi i64 [ 0, %iter.check946 ], [ %n.vec932, %vec.epilog.iter.check947 ], [ %n.vec952, %vec.epilog.middle.block958 ]
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i, %.lr.ph92.i ], [ %indvars.iv129.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %i.boq = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv129.i
  %i.bor = load double, ptr %i.boq, align 8, !tbaa !117
  %i.bos = getelementptr inbounds nuw [8 x i8], ptr %i.bkr, i64 %indvars.iv129.i ; 2 uses
  %i.bot = load double, ptr %i.bos, align 8, !tbaa !117
  %i.bou = fdiv reassoc nsz arcp contract afn double %i.bot, %i.bor
  store double %i.bou, ptr %i.bos, align 8, !tbaa !117
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next130.i, %wide.trip.count990.i.i
  br i1 %exitcond134.not.i, label %iter.check910.preheader, label %.lr.ph92.i, !llvm.loop !108

iter.check910.preheader:                          ; preds = %.lr.ph92.i, %vec.epilog.middle.block958, %middle.block944
  br label %iter.check910

iter.check910:                                    ; preds = %iter.check910.preheader, %._crit_edge.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.i ], [ 0, %iter.check910.preheader ] ; 3 uses
  %i.bov = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv141.i ; 2 uses
  store double 0.000000e+00, ptr %i.bov, align 8, !tbaa !117
  %i.bow = mul nuw nsw i64 %indvars.iv141.i, %wide.trip.count990.i.i
  %invariant.gep190.i = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.bow ; 3 uses
  br i1 %min.iters.check885, label %vec.epilog.scalar.ph912.preheader, label %vector.main.loop.iter.check886

vector.main.loop.iter.check886:                   ; preds = %iter.check910
  br i1 %min.iters.check887, label %vec.epilog.ph914, label %vector.body890

vector.body890:                                   ; preds = %vector.main.loop.iter.check886, %vector.body890
  %index891 = phi i64 [ %index.next904, %vector.body890 ], [ 0, %vector.main.loop.iter.check886 ] ; 3 uses
  %vec.phi892.a = phi <4 x double> [ %i.bpj, %vector.body890 ], [ zeroinitializer, %vector.main.loop.iter.check886 ]
  %vec.phi893.a = phi <4 x double> [ %i.bpk, %vector.body890 ], [ zeroinitializer, %vector.main.loop.iter.check886 ]
  %vec.phi894.a = phi <4 x double> [ %i.bpl, %vector.body890 ], [ zeroinitializer, %vector.main.loop.iter.check886 ]
  %vec.phi895 = phi <4 x double> [ %i.bpm, %vector.body890 ], [ zeroinitializer, %vector.main.loop.iter.check886 ]
  %i.box = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %index891 ; 4 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 32
  %i.boz = getelementptr inbounds nuw i8, ptr %i.box, i64 64
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.box, i64 96
  %wide.load896.a = load <4 x double>, ptr %i.box, align 8, !tbaa !117
  %wide.load897.a = load <4 x double>, ptr %i.boy, align 8, !tbaa !117
  %wide.load898.a = load <4 x double>, ptr %i.boz, align 8, !tbaa !117
  %wide.load899.a = load <4 x double>, ptr %i.bpa, align 8, !tbaa !117
  %i.bpb = getelementptr inbounds nuw [8 x i8], ptr %i.bkr, i64 %index891 ; 4 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 32
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpb, i64 64
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpb, i64 96
  %wide.load900.a = load <4 x double>, ptr %i.bpb, align 8, !tbaa !117
  %wide.load901.a = load <4 x double>, ptr %i.bpc, align 8, !tbaa !117
  %wide.load902.a = load <4 x double>, ptr %i.bpd, align 8, !tbaa !117
  %wide.load903 = load <4 x double>, ptr %i.bpe, align 8, !tbaa !117
  %i.bpf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load900.a, %wide.load896.a
  %i.bpg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load901.a, %wide.load897.a
  %i.bph = fmul reassoc nsz arcp contract afn <4 x double> %wide.load902.a, %wide.load898.a
  %i.bpi = fmul reassoc nsz arcp contract afn <4 x double> %wide.load903, %wide.load899.a
  %i.bpj = fadd reassoc nsz arcp contract afn <4 x double> %i.bpf, %vec.phi892.a ; 2 uses
  %i.bpk = fadd reassoc nsz arcp contract afn <4 x double> %i.bpg, %vec.phi893.a ; 2 uses
  %i.bpl = fadd reassoc nsz arcp contract afn <4 x double> %i.bph, %vec.phi894.a ; 2 uses
  %i.bpm = fadd reassoc nsz arcp contract afn <4 x double> %i.bpi, %vec.phi895 ; 2 uses
  %index.next904 = add nuw i64 %index891, 16      ; 2 uses
  %i.bpn = icmp eq i64 %index.next904, %n.vec889
  br i1 %i.bpn, label %middle.block905, label %vector.body890, !llvm.loop !109

middle.block905:                                  ; preds = %vector.body890
  %bin.rdx906.a = fadd reassoc nsz arcp contract afn <4 x double> %i.bpk, %i.bpj
  %bin.rdx907.a = fadd reassoc nsz arcp contract afn <4 x double> %i.bpl, %bin.rdx906.a
  %bin.rdx908 = fadd reassoc nsz arcp contract afn <4 x double> %i.bpm, %bin.rdx907.a
  %i.bpo = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx908) ; 3 uses
  br i1 %cmp.n909, label %._crit_edge.i, label %vec.epilog.iter.check911

vec.epilog.iter.check911:                         ; preds = %middle.block905
  br i1 %min.epilog.iters.check913, label %vec.epilog.scalar.ph912.preheader, label %vec.epilog.ph914, !prof !121

vec.epilog.ph914:                                 ; preds = %vector.main.loop.iter.check886, %vec.epilog.iter.check911
  %vec.epilog.resume.val915 = phi i64 [ %n.vec889, %vec.epilog.iter.check911 ], [ 0, %vector.main.loop.iter.check886 ]
  %bc.merge.rdx916 = phi double [ %i.bpo, %vec.epilog.iter.check911 ], [ 0.000000e+00, %vector.main.loop.iter.check886 ]
  %i.bpp = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx916, i64 0
  br label %vec.epilog.vector.body918

vec.epilog.vector.body918:                        ; preds = %vec.epilog.vector.body918, %vec.epilog.ph914
  %index919 = phi i64 [ %vec.epilog.resume.val915, %vec.epilog.ph914 ], [ %index.next923, %vec.epilog.vector.body918 ] ; 3 uses
  %vec.phi920 = phi <4 x double> [ %i.bpp, %vec.epilog.ph914 ], [ %i.bpt, %vec.epilog.vector.body918 ]
  %i.bpq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %index919
  %wide.load921.a = load <4 x double>, ptr %i.bpq, align 8, !tbaa !117
  %i.bpr = getelementptr inbounds nuw [8 x i8], ptr %i.bkr, i64 %index919
  %wide.load922 = load <4 x double>, ptr %i.bpr, align 8, !tbaa !117
  %i.bps = fmul reassoc nsz arcp contract afn <4 x double> %wide.load922, %wide.load921.a
  %i.bpt = fadd reassoc nsz arcp contract afn <4 x double> %i.bps, %vec.phi920 ; 2 uses
  %index.next923 = add nuw i64 %index919, 4       ; 2 uses
  %i.bpu = icmp eq i64 %index.next923, %n.vec917
  br i1 %i.bpu, label %vec.epilog.middle.block924, label %vec.epilog.vector.body918, !llvm.loop !110

vec.epilog.middle.block924:                       ; preds = %vec.epilog.vector.body918
  %i.bpv = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bpt) ; 2 uses
  br i1 %cmp.n925, label %._crit_edge.i, label %vec.epilog.scalar.ph912.preheader

vec.epilog.scalar.ph912.preheader:                ; preds = %iter.check910, %vec.epilog.iter.check911, %vec.epilog.middle.block924
  %indvars.iv135.i.ph = phi i64 [ 0, %iter.check910 ], [ %n.vec889, %vec.epilog.iter.check911 ], [ %n.vec917, %vec.epilog.middle.block924 ]
  %.ph1940 = phi double [ 0.000000e+00, %iter.check910 ], [ %i.bpo, %vec.epilog.iter.check911 ], [ %i.bpv, %vec.epilog.middle.block924 ]
  br label %vec.epilog.scalar.ph912

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph912, %vec.epilog.middle.block924, %middle.block905
  %.lcssa796.a = phi double [ %i.bpv, %vec.epilog.middle.block924 ], [ %i.bpo, %middle.block905 ], [ %i.bqb, %vec.epilog.scalar.ph912 ]
  store double %.lcssa796.a, ptr %i.bov, align 8, !tbaa !117
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count990.i.i
  br i1 %exitcond146.not.i, label %.lr.ph544, label %iter.check910

vec.epilog.scalar.ph912:                          ; preds = %vec.epilog.scalar.ph912.preheader, %vec.epilog.scalar.ph912
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %vec.epilog.scalar.ph912 ], [ %indvars.iv135.i.ph, %vec.epilog.scalar.ph912.preheader ] ; 3 uses
  %i.bpw = phi double [ %i.bqb, %vec.epilog.scalar.ph912 ], [ %.ph1940, %vec.epilog.scalar.ph912.preheader ]
  %gep191.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep190.i, i64 %indvars.iv135.i
  %i.bpx = load double, ptr %gep191.i, align 8, !tbaa !117
  %i.bpy = getelementptr inbounds nuw [8 x i8], ptr %i.bkr, i64 %indvars.iv135.i
  %i.bpz = load double, ptr %i.bpy, align 8, !tbaa !117
  %i.bqa = fmul reassoc nsz arcp contract afn double %i.bpz, %i.bpx
  %i.bqb = fadd reassoc nsz arcp contract afn double %i.bqa, %i.bpw ; 2 uses
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count990.i.i
  br i1 %exitcond140.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph912, !llvm.loop !111

.lr.ph544:                                        ; preds = %._crit_edge.i, %bb.aj
  tail call void @free(ptr noundef %i.bkr) #17
  %i.bqc = mul nuw nsw i64 %indvars.iv672, %i.fc
  %i.bqd = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.bqc
  br label %bb.ak

._crit_edge529:                                   ; preds = %vec.epilog.scalar.ph1842.prol.loopexit, %vec.epilog.scalar.ph1842, %vec.epilog.middle.block1859, %middle.block1838
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1
  %.not422.not = icmp slt i64 %indvars.iv661, %i.ms
  br i1 %.not422.not, label %iter.check1840, label %._crit_edge532.split

vec.epilog.scalar.ph1842:                         ; preds = %vec.epilog.scalar.ph1842.prol.loopexit, %vec.epilog.scalar.ph1842
  %indvars.iv656 = phi i64 [ %indvars.iv.next657.7, %vec.epilog.scalar.ph1842 ], [ %indvars.iv656.unr, %vec.epilog.scalar.ph1842.prol.loopexit ] ; 10 uses
  %i.bqe = mul nuw nsw i64 %indvars.iv656, %i.b
  %gep773 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqe
  %i.bqf = load double, ptr %gep773, align 8, !tbaa !117
  %i.bqg = mul nsw i64 %indvars.iv656, %i.gs
  %gep775 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqg
  store double %i.bqf, ptr %gep775, align 8, !tbaa !117
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %i.bqh = mul nuw nsw i64 %indvars.iv.next657, %i.b
  %gep773.1 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqh
  %i.bqi = load double, ptr %gep773.1, align 8, !tbaa !117
  %i.bqj = mul nsw i64 %indvars.iv.next657, %i.gs
  %gep775.1 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqj
  store double %i.bqi, ptr %gep775.1, align 8, !tbaa !117
  %indvars.iv.next657.1 = add nuw nsw i64 %indvars.iv656, 2 ; 2 uses
  %i.bqk = mul nuw nsw i64 %indvars.iv.next657.1, %i.b
  %gep773.2 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqk
  %i.bql = load double, ptr %gep773.2, align 8, !tbaa !117
  %i.bqm = mul nsw i64 %indvars.iv.next657.1, %i.gs
  %gep775.2 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqm
  store double %i.bql, ptr %gep775.2, align 8, !tbaa !117
  %indvars.iv.next657.2 = add nuw nsw i64 %indvars.iv656, 3 ; 2 uses
  %i.bqn = mul nuw nsw i64 %indvars.iv.next657.2, %i.b
  %gep773.3 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqn
  %i.bqo = load double, ptr %gep773.3, align 8, !tbaa !117
  %i.bqp = mul nsw i64 %indvars.iv.next657.2, %i.gs
  %gep775.3 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqp
  store double %i.bqo, ptr %gep775.3, align 8, !tbaa !117
  %indvars.iv.next657.3 = add nuw nsw i64 %indvars.iv656, 4 ; 2 uses
  %i.bqq = mul nuw nsw i64 %indvars.iv.next657.3, %i.b
  %gep773.4 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqq
  %i.bqr = load double, ptr %gep773.4, align 8, !tbaa !117
  %i.bqs = mul nsw i64 %indvars.iv.next657.3, %i.gs
  %gep775.4 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqs
  store double %i.bqr, ptr %gep775.4, align 8, !tbaa !117
  %indvars.iv.next657.4 = add nuw nsw i64 %indvars.iv656, 5 ; 2 uses
  %i.bqt = mul nuw nsw i64 %indvars.iv.next657.4, %i.b
  %gep773.5 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqt
  %i.bqu = load double, ptr %gep773.5, align 8, !tbaa !117
  %i.bqv = mul nsw i64 %indvars.iv.next657.4, %i.gs
  %gep775.5 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqv
  store double %i.bqu, ptr %gep775.5, align 8, !tbaa !117
  %indvars.iv.next657.5 = add nuw nsw i64 %indvars.iv656, 6 ; 2 uses
  %i.bqw = mul nuw nsw i64 %indvars.iv.next657.5, %i.b
  %gep773.6 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqw
  %i.bqx = load double, ptr %gep773.6, align 8, !tbaa !117
  %i.bqy = mul nsw i64 %indvars.iv.next657.5, %i.gs
  %gep775.6 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.bqy
  store double %i.bqx, ptr %gep775.6, align 8, !tbaa !117
  %indvars.iv.next657.6 = add nuw nsw i64 %indvars.iv656, 7 ; 2 uses
  %i.bqz = mul nuw nsw i64 %indvars.iv.next657.6, %i.b
  %gep773.7 = getelementptr [8 x i8], ptr %invariant.gep772, i64 %i.bqz
  %i.bra = load double, ptr %gep773.7, align 8, !tbaa !117
  %i.brb = mul nsw i64 %indvars.iv.next657.6, %i.gs
  %gep775.7 = getelementptr [8 x i8], ptr %invariant.gep774, i64 %i.brb
  store double %i.bra, ptr %gep775.7, align 8, !tbaa !117
  %indvars.iv.next657.7 = add nuw nsw i64 %indvars.iv656, 8 ; 2 uses
  %exitcond660.not.7 = icmp eq i64 %indvars.iv.next657.7, %wide.trip.count680
  br i1 %exitcond660.not.7, label %._crit_edge529, label %vec.epilog.scalar.ph1842, !llvm.loop !112

._crit_edge545:                                   ; preds = %bb.al
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count675
  br i1 %exitcond676.not, label %.lr.ph.i432.preheader, label %.preheader452

bb.ak:                                            ; preds = %.lr.ph544, %bb.al
  %indvars.iv667 = phi i64 [ 0, %.lr.ph544 ], [ %indvars.iv.next668, %bb.al ] ; 4 uses
  %i.brc = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv667
  %i.brd = load double, ptr %i.brc, align 8, !tbaa !117 ; 4 uses
  %i.bre = getelementptr inbounds nuw [8 x i8], ptr %i.bqd, i64 %indvars.iv667 ; 2 uses
  store double %i.brd, ptr %i.bre, align 8, !tbaa !117
  br i1 %.not422530, label %bb.al, label %iter.check863

iter.check863:                                    ; preds = %bb.ak
  %i.brf = load ptr, ptr %17, align 8, !tbaa !124 ; 3 uses
  %i.brg = trunc i64 %indvars.iv667 to i32
  %i.brh = mul i32 %i.a, %i.brg                   ; 3 uses
  br i1 %min.iters.check829, label %vec.epilog.scalar.ph865.preheader, label %vector.main.loop.iter.check830

vector.main.loop.iter.check830:                   ; preds = %iter.check863
  br i1 %min.iters.check831, label %vec.epilog.ph867, label %vector.ph832

vector.ph832:                                     ; preds = %vector.main.loop.iter.check830
  %i.bri = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.brd, i64 0
  %broadcast.splatinsert834 = insertelement <4 x i32> poison, i32 %i.brh, i64 0
  %broadcast.splat835 = shufflevector <4 x i32> %broadcast.splatinsert834, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body836

vector.body836:                                   ; preds = %vector.ph832, %vector.body836
  %index837 = phi i64 [ 0, %vector.ph832 ], [ %index.next857, %vector.body836 ] ; 3 uses
  %vec.phi838.a = phi <4 x double> [ %i.bri, %vector.ph832 ], [ %i.bsd, %vector.body836 ]
  %vec.phi839.a = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.bse, %vector.body836 ]
  %vec.phi840.a = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.bsf, %vector.body836 ]
  %vec.phi841 = phi <4 x double> [ zeroinitializer, %vector.ph832 ], [ %i.bsg, %vector.body836 ]
  %i.brj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index837 ; 4 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 16
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brj, i64 32
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brj, i64 48
  %wide.load = load <4 x i32>, ptr %i.brj, align 4, !tbaa !125
  %wide.load842.a = load <4 x i32>, ptr %i.brk, align 4, !tbaa !125
  %wide.load843.a = load <4 x i32>, ptr %i.brl, align 4, !tbaa !125
  %wide.load844 = load <4 x i32>, ptr %i.brm, align 4, !tbaa !125
  %i.brn = add nsw <4 x i32> %wide.load, %broadcast.splat835
  %i.bro = add nsw <4 x i32> %wide.load842.a, %broadcast.splat835
  %i.brp = add nsw <4 x i32> %wide.load843.a, %broadcast.splat835
  %i.brq = add nsw <4 x i32> %wide.load844, %broadcast.splat835
  %i.brr = sext <4 x i32> %i.brn to <4 x i64>
  %i.brs = sext <4 x i32> %i.bro to <4 x i64>
  %i.brt = sext <4 x i32> %i.brp to <4 x i64>
  %i.bru = sext <4 x i32> %i.brq to <4 x i64>
  %wide.gep845.a = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.brr
  %wide.gep846.a = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.brs
  %wide.gep847.a = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.brt
  %wide.gep848 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.bru
  %wide.masked.gather849.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep845.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather850.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep846.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather851.a = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep847.a, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather852 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep848, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.brv = getelementptr inbounds nuw [8 x i8], ptr %i.brf, i64 %index837 ; 4 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 32
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brv, i64 64
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brv, i64 96
  %wide.load853.a = load <4 x double>, ptr %i.brv, align 8, !tbaa !117
  %wide.load854.a = load <4 x double>, ptr %i.brw, align 8, !tbaa !117
  %wide.load855.a = load <4 x double>, ptr %i.brx, align 8, !tbaa !117
  %wide.load856 = load <4 x double>, ptr %i.bry, align 8, !tbaa !117
  %i.brz = fmul reassoc nsz arcp contract afn <4 x double> %wide.load853.a, %wide.masked.gather849.a
  %i.bsa = fmul reassoc nsz arcp contract afn <4 x double> %wide.load854.a, %wide.masked.gather850.a
  %i.bsb = fmul reassoc nsz arcp contract afn <4 x double> %wide.load855.a, %wide.masked.gather851.a
  %i.bsc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load856, %wide.masked.gather852
  %i.bsd = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi838.a, %i.brz ; 2 uses
  %i.bse = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi839.a, %i.bsa ; 2 uses
  %i.bsf = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi840.a, %i.bsb ; 2 uses
  %i.bsg = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi841, %i.bsc ; 2 uses
  %index.next857 = add nuw i64 %index837, 16      ; 2 uses
  %i.bsh = icmp eq i64 %index.next857, %n.vec833
  br i1 %i.bsh, label %middle.block858, label %vector.body836, !llvm.loop !113

middle.block858:                                  ; preds = %vector.body836
  %bin.rdx859.a = fadd reassoc nsz arcp contract afn <4 x double> %i.bse, %i.bsd
  %bin.rdx860.a = fadd reassoc nsz arcp contract afn <4 x double> %i.bsf, %bin.rdx859.a
  %bin.rdx861 = fadd reassoc nsz arcp contract afn <4 x double> %i.bsg, %bin.rdx860.a
  %i.bsi = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx861) ; 3 uses
  br i1 %cmp.n862, label %._crit_edge540, label %vec.epilog.iter.check864

vec.epilog.iter.check864:                         ; preds = %middle.block858
  br i1 %min.epilog.iters.check866, label %vec.epilog.scalar.ph865.preheader, label %vec.epilog.ph867, !prof !121

vec.epilog.ph867:                                 ; preds = %vector.main.loop.iter.check830, %vec.epilog.iter.check864
  %vec.epilog.resume.val868 = phi i64 [ %n.vec833, %vec.epilog.iter.check864 ], [ 0, %vector.main.loop.iter.check830 ]
  %bc.merge.rdx869 = phi double [ %i.bsi, %vec.epilog.iter.check864 ], [ %i.brd, %vector.main.loop.iter.check830 ]
  %i.bsj = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx869, i64 0
  %broadcast.splatinsert871 = insertelement <4 x i32> poison, i32 %i.brh, i64 0
  %broadcast.splat872 = shufflevector <4 x i32> %broadcast.splatinsert871, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body873

vec.epilog.vector.body873:                        ; preds = %vec.epilog.vector.body873, %vec.epilog.ph867
  %index874 = phi i64 [ %vec.epilog.resume.val868, %vec.epilog.ph867 ], [ %index.next880, %vec.epilog.vector.body873 ] ; 3 uses
  %vec.phi875 = phi <4 x double> [ %i.bsj, %vec.epilog.ph867 ], [ %i.bsp, %vec.epilog.vector.body873 ]
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index874
  %wide.load876 = load <4 x i32>, ptr %i.bsk, align 4, !tbaa !125
  %i.bsl = add nsw <4 x i32> %wide.load876, %broadcast.splat872
  %i.bsm = sext <4 x i32> %i.bsl to <4 x i64>
  %wide.gep877 = getelementptr inbounds [8 x i8], ptr %i.e, <4 x i64> %i.bsm
  %wide.masked.gather878 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep877, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.bsn = getelementptr inbounds nuw [8 x i8], ptr %i.brf, i64 %index874
  %wide.load879 = load <4 x double>, ptr %i.bsn, align 8, !tbaa !117
  %i.bso = fmul reassoc nsz arcp contract afn <4 x double> %wide.load879, %wide.masked.gather878
  %i.bsp = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi875, %i.bso ; 2 uses
  %index.next880 = add nuw i64 %index874, 4       ; 2 uses
  %i.bsq = icmp eq i64 %index.next880, %n.vec870
  br i1 %i.bsq, label %vec.epilog.middle.block881, label %vec.epilog.vector.body873, !llvm.loop !114

vec.epilog.middle.block881:                       ; preds = %vec.epilog.vector.body873
  %i.bsr = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bsp) ; 2 uses
  br i1 %cmp.n882, label %._crit_edge540, label %vec.epilog.scalar.ph865.preheader

vec.epilog.scalar.ph865.preheader:                ; preds = %iter.check863, %vec.epilog.iter.check864, %vec.epilog.middle.block881
  %indvars.iv664.ph = phi i64 [ 0, %iter.check863 ], [ %n.vec833, %vec.epilog.iter.check864 ], [ %n.vec870, %vec.epilog.middle.block881 ]
  %.ph = phi double [ %i.brd, %iter.check863 ], [ %i.bsi, %vec.epilog.iter.check864 ], [ %i.bsr, %vec.epilog.middle.block881 ]
  br label %vec.epilog.scalar.ph865

._crit_edge540:                                   ; preds = %vec.epilog.scalar.ph865, %vec.epilog.middle.block881, %middle.block858
  %.lcssa797 = phi double [ %i.bsr, %vec.epilog.middle.block881 ], [ %i.bsi, %middle.block858 ], [ %i.btc, %vec.epilog.scalar.ph865 ]
  store double %.lcssa797, ptr %i.bre, align 8, !tbaa !117
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge540, %bb.ak
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond671.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count680
  br i1 %exitcond671.not, label %._crit_edge545, label %bb.ak

vec.epilog.scalar.ph865:                          ; preds = %vec.epilog.scalar.ph865.preheader, %vec.epilog.scalar.ph865
  %indvars.iv664 = phi i64 [ %indvars.iv.next665, %vec.epilog.scalar.ph865 ], [ %indvars.iv664.ph, %vec.epilog.scalar.ph865.preheader ] ; 4 uses
  %i.bss = phi double [ %i.btc, %vec.epilog.scalar.ph865 ], [ %.ph, %vec.epilog.scalar.ph865.preheader ]
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv664
  %i.bsu = load i32, ptr %i.bst, align 4, !tbaa !125
  %i.bsv = add nsw i32 %i.bsu, %i.brh
  %i.bsw = sext i32 %i.bsv to i64
  %i.bsx = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bsw
  %i.bsy = load double, ptr %i.bsx, align 8, !tbaa !117
  %i.bsz = getelementptr inbounds nuw [8 x i8], ptr %i.brf, i64 %indvars.iv664
  %i.bta = load double, ptr %i.bsz, align 8, !tbaa !117
  %i.btb = fmul reassoc nsz arcp contract afn double %i.bta, %i.bsy
  %i.btc = fsub reassoc nsz arcp contract afn double %i.bss, %i.btb ; 2 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1
  %.not424.not = icmp slt i64 %indvars.iv664, %i.ms
  br i1 %.not424.not, label %vec.epilog.scalar.ph865, label %._crit_edge540, !llvm.loop !115

.lr.ph.i432:                                      ; preds = %.lr.ph.i432.preheader, %.lr.ph.i432
  %indvars.iv.i434 = phi i64 [ %indvars.iv.next.i435.1, %.lr.ph.i432 ], [ 0, %.lr.ph.i432.preheader ] ; 5 uses
  %.03.i = phi double [ %i.bug, %.lr.ph.i432 ], [ 0.000000e+00, %.lr.ph.i432.preheader ]
  %.0261.i = phi double [ %i.bui, %.lr.ph.i432 ], [ 0.000000e+00, %.lr.ph.i432.preheader ] ; 2 uses
  %niter2144 = phi i64 [ %niter2144.next.1, %.lr.ph.i432 ], [ 0, %.lr.ph.i432.preheader ]
  %i.btd = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i434
  %i.bte = load double, ptr %i.btd, align 8, !tbaa !117 ; 2 uses
  %i.btf = fmul reassoc nsz arcp contract afn double %i.bte, %i.bte
  %i.btg = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i434
  %i.bth = load double, ptr %i.btg, align 8, !tbaa !117 ; 2 uses
  %i.bti = fmul reassoc nsz arcp contract afn double %i.bth, %i.bth
  %i.btj = fadd reassoc nsz arcp contract afn double %i.bti, %i.btf
  %i.btk = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i434
  %i.btl = load double, ptr %i.btk, align 8, !tbaa !117 ; 2 uses
  %i.btm = fmul reassoc nsz arcp contract afn double %i.btl, %i.btl
  %i.btn = fadd reassoc nsz arcp contract afn double %i.btj, %i.btm
  %i.bto = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.btn) ; 3 uses
  %i.btp = fmul reassoc nsz arcp contract afn double %i.bto, %i.hy
  %i.btq = fadd reassoc nsz arcp contract afn double %i.btp, %.03.i
  %i.btr = fcmp reassoc nsz arcp contract afn ogt double %.0261.i, %i.bto
  %i.bts = select reassoc nsz arcp contract afn i1 %i.btr, double %.0261.i, double %i.bto ; 2 uses
  %indvars.iv.next.i435 = or disjoint i64 %indvars.iv.i434, 1 ; 3 uses
  %i.btt = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i435
  %i.btu = load double, ptr %i.btt, align 8, !tbaa !117 ; 2 uses
  %i.btv = fmul reassoc nsz arcp contract afn double %i.btu, %i.btu
  %i.btw = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.next.i435
  %i.btx = load double, ptr %i.btw, align 8, !tbaa !117 ; 2 uses
  %i.bty = fmul reassoc nsz arcp contract afn double %i.btx, %i.btx
  %i.btz = fadd reassoc nsz arcp contract afn double %i.bty, %i.btv
  %i.bua = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next.i435
  %i.bub = load double, ptr %i.bua, align 8, !tbaa !117 ; 2 uses
  %i.buc = fmul reassoc nsz arcp contract afn double %i.bub, %i.bub
  %i.bud = fadd reassoc nsz arcp contract afn double %i.btz, %i.buc
  %i.bue = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bud) ; 3 uses
  %i.buf = fmul reassoc nsz arcp contract afn double %i.bue, %i.hz
  %i.bug = fadd reassoc nsz arcp contract afn double %i.buf, %i.btq ; 3 uses
  %i.buh = fcmp reassoc nsz arcp contract afn ogt double %i.bts, %i.bue
  %i.bui = select reassoc nsz arcp contract afn i1 %i.buh, double %i.bts, double %i.bue ; 3 uses
  %indvars.iv.next.i435.1 = add nuw nsw i64 %indvars.iv.i434, 2 ; 2 uses
  %niter2144.next.1 = add i64 %niter2144, 2       ; 2 uses
  %niter2144.ncmp.1 = icmp eq i64 %niter2144.next.1, %unroll_iter2143
  br i1 %niter2144.ncmp.1, label %compute_error.exit.unr-lcssa, label %.lr.ph.i432

compute_error.exit.unr-lcssa:                     ; preds = %.lr.ph.i432
  br i1 %lcmp.mod2139.not, label %compute_error.exit, label %.lr.ph.i432.epil.preheader

.lr.ph.i432.epil.preheader:                       ; preds = %compute_error.exit.unr-lcssa, %.lr.ph.i432.preheader
  %indvars.iv.i434.epil.init = phi i64 [ 0, %.lr.ph.i432.preheader ], [ %indvars.iv.next.i435.1, %compute_error.exit.unr-lcssa ] ; 3 uses
  %.03.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i432.preheader ], [ %i.bug, %compute_error.exit.unr-lcssa ]
  %.0261.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i432.preheader ], [ %i.bui, %compute_error.exit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod2142)
  %i.buj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i434.epil.init
  %i.buk = load double, ptr %i.buj, align 8, !tbaa !117 ; 2 uses
  %i.bul = fmul reassoc nsz arcp contract afn double %i.buk, %i.buk
  %i.bum = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i434.epil.init
  %i.bun = load double, ptr %i.bum, align 8, !tbaa !117 ; 2 uses
  %i.buo = fmul reassoc nsz arcp contract afn double %i.bun, %i.bun
  %i.bup = fadd reassoc nsz arcp contract afn double %i.buo, %i.bul
  %i.buq = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i434.epil.init
  %i.bur = load double, ptr %i.buq, align 8, !tbaa !117 ; 2 uses
  %i.bus = fmul reassoc nsz arcp contract afn double %i.bur, %i.bur
  %i.but = fadd reassoc nsz arcp contract afn double %i.bup, %i.bus
  %i.buu = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.but) ; 3 uses
  %i.buv = fmul reassoc nsz arcp contract afn double %i.buu, %i.ia
  %i.buw = fadd reassoc nsz arcp contract afn double %i.buv, %.03.i.epil.init
  %i.bux = fcmp reassoc nsz arcp contract afn ogt double %.0261.i.epil.init, %i.buu
end_hunk_3
