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
  %i.b = sext i32 %i.a to i64                     ; 35 uses
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
  %.idx715.a = mul nuw nsw i64 %indvars.iv, 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.idx715.a ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !12 ; 3 uses
  %i.n = mul nuw nsw i64 %indvars.iv, %i.g
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %invariant.gep747.a = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader458
  %.idx716.prol = mul nuw nsw i64 %indvars.iv, 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx716.prol ; 2 uses
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
  %gep748.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep747.a, i64 %indvars.iv
  store double %i.ah, ptr %gep748.prol, align 8, !tbaa !12
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
  %invariant.gep749.a = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.al ; 9 uses
  %invariant.gep751.a = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.an ; 9 uses
  %i.ao = add nsw i64 %wide.trip.count582, -1     ; 4 uses
  %xtraiter2016 = and i64 %wide.trip.count582, 7  ; 3 uses
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
  %.idx716.a = mul nuw nsw i64 %indvars.iv578, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx716.a ; 2 uses
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
  %gep748.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep747.a, i64 %indvars.iv578
  store double %i.bj, ptr %gep748.a, align 8, !tbaa !12
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 3 uses
  %.idx716.1.a = mul nuw nsw i64 %indvars.iv.next579, 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx716.1.a ; 2 uses
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
  %gep748.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep747.a, i64 %indvars.iv.next579
  store double %i.ce, ptr %gep748.1.a, align 8, !tbaa !12
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next579.1, %wide.trip.count582
  br i1 %exitcond.not.1, label %.unr-lcssa, label %.preheader458.new

.lr.ph482.unr-lcssa:                              ; preds = %bb.g
  %lcmp.mod2017.not = icmp eq i64 %xtraiter2016, 0
  br i1 %lcmp.mod2017.not, label %.lr.ph482, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph482.unr-lcssa, %.lr.ph
  %indvars.iv584.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next585.7, %.lr.ph482.unr-lcssa ]
  %lcmp.mod2018 = icmp ne i64 %xtraiter2016, 0
  tail call void @llvm.assume(i1 %lcmp.mod2018)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv584.epil = phi i64 [ %indvars.iv584.epil.init, %.epil.preheader ], [ %indvars.iv.next585.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep750.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749.a, i64 %indvars.iv584.epil
  store double 1.000000e+00, ptr %gep750.epil.a, align 8, !tbaa !12
  %i.cg = mul nuw nsw i64 %indvars.iv584.epil, %i.am
  %gep752.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep751.a, i64 %i.cg
  store double 1.000000e+00, ptr %gep752.epil.a, align 8, !tbaa !12
  %indvars.iv.next585.epil = add nuw nsw i64 %indvars.iv584.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2016
  br i1 %epil.iter.cmp.not, label %.lr.ph482, label %bb.f, !llvm.loop !14

.lr.ph482:                                        ; preds = %bb.f, %.lr.ph482.unr-lcssa
  %i.ch = add nuw nsw i32 %2, 1
  %i.ci = mul nuw nsw i32 %i.ch, %i.a
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = zext nneg i32 %i.a to i64               ; 5 uses
  %i.cl = zext nneg i32 %2 to i64
  %invariant.gep753.a = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cj ; 5 uses
  %invariant.gep755.a = getelementptr [8 x i8], ptr %i.e, i64 %i.cl ; 5 uses
  %xtraiter2020 = and i64 %wide.trip.count582, 3  ; 3 uses
  %i.cm = icmp ult i64 %i.ao, 3
  br i1 %i.cm, label %.epil.preheader2019, label %.lr.ph482.new

.lr.ph482.new:                                    ; preds = %.lr.ph482
  %unroll_iter2024 = and i64 %wide.trip.count582, 2147483644
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv584 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next585.7, %bb.g ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.g ]
  %gep750.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749.a, i64 %indvars.iv584
  store double 1.000000e+00, ptr %gep750.a, align 8, !tbaa !12
  %i.cn = mul nuw nsw i64 %indvars.iv584, %i.am
  %gep752.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep751.a, i64 %i.cn
  store double 1.000000e+00, ptr %gep752.a, align 8, !tbaa !12
  %indvars.iv.next585 = or disjoint i64 %indvars.iv584, 1 ; 2 uses
  %gep750.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749.a, i64 %indvars.iv.next585
  store double 1.000000e+00, ptr %gep750.1.a, align 8, !tbaa !12
  %i.co = mul nuw nsw i64 %indvars.iv.next585, %i.am
  %gep752.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep751.a, i64 %i.co
  store double 1.000000e+00, ptr %gep752.1.a, align 8, !tbaa !12
  %indvars.iv.next585.1 = or disjoint i64 %indvars.iv584, 2 ; 2 uses
  %gep750.2.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep749.a, i64 %indvars.iv.next585.1
  store double 1.000000e+00, ptr %gep750.2.a, align 8, !tbaa !12
  %i.cp = mul nuw nsw i64 %indvars.iv.next585.1, %i.am
  %gep752.2.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep751.a, i64 %i.cp
end_hunk_0
begin_hunk_1_@thinplate_match:bb.a

vec.epilog.scalar.ph1283:                         ; preds = %vec.epilog.scalar.ph1283.preheader, %vec.epilog.scalar.ph1283
  %indvars.iv997.i.i = phi i64 [ %indvars.iv.next998.i.i, %vec.epilog.scalar.ph1283 ], [ %indvars.iv997.i.i.ph, %vec.epilog.scalar.ph1283.preheader ] ; 3 uses
  %.4678824.i.i = phi double [ %i.ani, %vec.epilog.scalar.ph1283 ], [ %.4678824.i.i.ph, %vec.epilog.scalar.ph1283.preheader ]
  %gep1196.i.i = getelementptr [8 x i8], ptr %i.alk, i64 %indvars.iv997.i.i
  %i.ane = load double, ptr %gep1196.i.i, align 8, !tbaa !12
  %i.anf = mul nsw i64 %indvars.iv997.i.i, %i.oa
  %gep1198.i.i = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.anf
  %i.ang = load double, ptr %gep1198.i.i, align 8, !tbaa !12
  %i.anh = fmul reassoc nsz arcp contract afn double %i.ang, %i.ane
  %i.ani = fadd reassoc nsz arcp contract afn double %i.anh, %.4678824.i.i ; 2 uses
  %indvars.iv.next998.i.i = add nuw nsw i64 %indvars.iv997.i.i, 1 ; 2 uses
  %exitcond1001.not.i.i = icmp eq i64 %indvars.iv.next998.i.i, %i.oa
  br i1 %exitcond1001.not.i.i, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1283, !llvm.loop !84

.lr.ph829.i.i.preheader:                          ; preds = %vec.epilog.scalar.ph1283, %vec.epilog.middle.block1302, %middle.block1274
  %.lcssa783 = phi double [ %i.and, %vec.epilog.middle.block1302 ], [ %i.amw, %middle.block1274 ], [ %i.ani, %vec.epilog.scalar.ph1283 ] ; 5 uses
  br i1 %lcmp.mod2071.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol

.lr.ph829.i.i.prol:                               ; preds = %.lr.ph829.i.i.preheader, %.lr.ph829.i.i.prol
  %indvars.iv1002.i.i.prol = phi i64 [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ], [ %i.alj, %.lr.ph829.i.i.preheader ] ; 2 uses
  %prol.iter2072 = phi i64 [ %prol.iter2072.next, %.lr.ph829.i.i.prol ], [ 0, %.lr.ph829.i.i.preheader ]
  %i.anj = mul nsw i64 %indvars.iv1002.i.i.prol, %i.oa ; 2 uses
  %gep1200.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.anj
  %i.ank = load double, ptr %gep1200.i.i.prol, align 8, !tbaa !12
  %i.anl = fmul reassoc nsz arcp contract afn double %i.ank, %.lcssa783
  %gep1202.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.anj ; 2 uses
  %i.anm = load double, ptr %gep1202.i.i.prol, align 8, !tbaa !12
  %i.ann = fadd reassoc nsz arcp contract afn double %i.anm, %i.anl
  store double %i.ann, ptr %gep1202.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.prol = add nuw nsw i64 %indvars.iv1002.i.i.prol, 1 ; 2 uses
  %prol.iter2072.next = add i64 %prol.iter2072, 1 ; 2 uses
  %prol.iter2072.cmp.not = icmp eq i64 %prol.iter2072.next, %xtraiter2070
  br i1 %prol.iter2072.cmp.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol, !llvm.loop !85

.lr.ph829.i.i.prol.loopexit:                      ; preds = %.lr.ph829.i.i.prol, %.lr.ph829.i.i.preheader
  %indvars.iv1002.i.i.unr = phi i64 [ %i.alj, %.lr.ph829.i.i.preheader ], [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ]
  br i1 %i.ame, label %._crit_edge830.i.i, label %.lr.ph829.i.i

._crit_edge830.i.i:                               ; preds = %.lr.ph829.i.i, %.lr.ph829.i.i.prol.loopexit
  %indvars.iv.next1008.i.i = add nuw nsw i64 %indvars.iv1007.i.i, 1 ; 2 uses
  %exitcond1011.not.i.i = icmp eq i64 %indvars.iv.next1008.i.i, %i.oa
  br i1 %exitcond1011.not.i.i, label %.loopexit747.i.i, label %iter.check1282

.lr.ph829.i.i:                                    ; preds = %.lr.ph829.i.i.prol.loopexit, %.lr.ph829.i.i
  %indvars.iv1002.i.i = phi i64 [ %indvars.iv.next1003.i.i.3, %.lr.ph829.i.i ], [ %indvars.iv1002.i.i.unr, %.lr.ph829.i.i.prol.loopexit ] ; 5 uses
  %i.ano = mul nsw i64 %indvars.iv1002.i.i, %i.oa ; 2 uses
  %gep1200.i.i = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.ano
  %i.anp = load double, ptr %gep1200.i.i, align 8, !tbaa !12
  %i.anq = fmul reassoc nsz arcp contract afn double %i.anp, %.lcssa783
  %gep1202.i.i = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.ano ; 2 uses
  %i.anr = load double, ptr %gep1202.i.i, align 8, !tbaa !12
  %i.ans = fadd reassoc nsz arcp contract afn double %i.anr, %i.anq
  store double %i.ans, ptr %gep1202.i.i, align 8, !tbaa !12
  %indvars.iv.next1003.i.i = add nuw nsw i64 %indvars.iv1002.i.i, 1
  %i.ant = mul nsw i64 %indvars.iv.next1003.i.i, %i.oa ; 2 uses
  %gep1200.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.ant
  %i.anu = load double, ptr %gep1200.i.i.1, align 8, !tbaa !12
  %i.anv = fmul reassoc nsz arcp contract afn double %i.anu, %.lcssa783
  %gep1202.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.ant ; 2 uses
  %i.anw = load double, ptr %gep1202.i.i.1, align 8, !tbaa !12
  %i.anx = fadd reassoc nsz arcp contract afn double %i.anw, %i.anv
  store double %i.anx, ptr %gep1202.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.1 = add nuw nsw i64 %indvars.iv1002.i.i, 2
  %i.any = mul nsw i64 %indvars.iv.next1003.i.i.1, %i.oa ; 2 uses
  %gep1200.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.any
  %i.anz = load double, ptr %gep1200.i.i.2, align 8, !tbaa !12
  %i.aoa = fmul reassoc nsz arcp contract afn double %i.anz, %.lcssa783
  %gep1202.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.any ; 2 uses
  %i.aob = load double, ptr %gep1202.i.i.2, align 8, !tbaa !12
  %i.aoc = fadd reassoc nsz arcp contract afn double %i.aob, %i.aoa
  store double %i.aoc, ptr %gep1202.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.2 = add nuw nsw i64 %indvars.iv1002.i.i, 3
  %i.aod = mul nsw i64 %indvars.iv.next1003.i.i.2, %i.oa ; 2 uses
  %gep1200.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.aod
  %i.aoe = load double, ptr %gep1200.i.i.3, align 8, !tbaa !12
  %i.aof = fmul reassoc nsz arcp contract afn double %i.aoe, %.lcssa783
  %gep1202.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.aod ; 2 uses
  %i.aog = load double, ptr %gep1202.i.i.3, align 8, !tbaa !12
  %i.aoh = fadd reassoc nsz arcp contract afn double %i.aog, %i.aof
  store double %i.aoh, ptr %gep1202.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1003.i.i.3 = add nuw nsw i64 %indvars.iv1002.i.i, 4 ; 2 uses
  %exitcond1006.not.i.i.3 = icmp eq i64 %indvars.iv.next1003.i.i.3, %i.oa
  br i1 %exitcond1006.not.i.i.3, label %._crit_edge830.i.i, label %.lr.ph829.i.i

.loopexit747.i.i:                                 ; preds = %._crit_edge830.i.i, %bb.r
  br i1 %i.alh, label %iter.check1219, label %.loopexit745.i.i

iter.check1219:                                   ; preds = %.loopexit747.i.i
  %i.aoi = mul i32 %i.nz, %indvars.i
  %i.aoj = add i32 %i.aoi, %indvars116.i
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = shl nsw i64 %i.aok, 3
  %scevgep.i.i = getelementptr i8, ptr %i.il, i64 %i.aol
  %i.aom = sub i32 %i.ny, %indvars116.i
  %i.aon = zext i32 %i.aom to i64
  %i.aoo = shl nuw nsw i64 %i.aon, 3
  %i.aop = add nuw nsw i64 %i.aoo, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.aop, i1 false), !tbaa !12
  %sext174.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.aoq = ashr exact i64 %sext174.i, 32          ; 5 uses
  %invariant.gep1203.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1017.i.i ; 6 uses
  %min.iters.check1193.a = icmp ult i64 %i.alf, 4
  br i1 %min.iters.check1193.a, label %vec.epilog.scalar.ph1220.preheader, label %vector.main.loop.iter.check1194

vector.main.loop.iter.check1194:                  ; preds = %iter.check1219
  %min.iters.check1195 = icmp ult i64 %i.alf, 16
  br i1 %min.iters.check1195, label %vec.epilog.ph1223, label %vector.ph1196

vector.ph1196:                                    ; preds = %vector.main.loop.iter.check1194
  %i.aor = and i64 %i.alf, 12
  %n.vec1197 = and i64 %i.alf, -16                ; 4 uses
  %i.aos = add nsw i64 %i.aoq, %n.vec1197         ; 2 uses
  %broadcast.splatinsert1200 = insertelement <4 x i64> poison, i64 %i.aoq, i64 0
  %broadcast.splat1201 = shufflevector <4 x i64> %broadcast.splatinsert1200, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1202 = add nuw nsw <4 x i64> %broadcast.splat1201, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %vector.ph1196
  %index1204 = phi i64 [ 0, %vector.ph1196 ], [ %index.next1213, %vector.body1203 ]
  %vec.ind1205 = phi <4 x i64> [ %induction1202, %vector.ph1196 ], [ %vec.ind.next1214, %vector.body1203 ] ; 5 uses
  %step.add1206 = add nuw nsw <4 x i64> %vec.ind1205, splat (i64 4)
  %step.add.21207 = add nuw nsw <4 x i64> %vec.ind1205, splat (i64 8)
  %step.add.31208 = add nuw nsw <4 x i64> %vec.ind1205, splat (i64 12)
  %i.aot = mul nsw <4 x i64> %vec.ind1205, %broadcast.splat1199.a
  %i.aou = mul nsw <4 x i64> %step.add1206, %broadcast.splat1199.a
  %i.aov = mul nsw <4 x i64> %step.add.21207, %broadcast.splat1199.a
  %i.aow = mul nsw <4 x i64> %step.add.31208, %broadcast.splat1199.a
  %wide.gep1209.a = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aot
  %wide.gep1210.a = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aou
  %wide.gep1211 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aov
  %wide.gep1212 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aow
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1209.a, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1210.a, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1211, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1212, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next1213 = add nuw i64 %index1204, 16    ; 2 uses
  %vec.ind.next1214 = add nuw nsw <4 x i64> %vec.ind1205, splat (i64 16)
  %i.aox = icmp eq i64 %index.next1213, %n.vec1197
  br i1 %i.aox, label %middle.block1215, label %vector.body1203, !llvm.loop !86

middle.block1215:                                 ; preds = %vector.body1203
  %cmp.n1216 = icmp eq i64 %i.alf, %n.vec1197
  br i1 %cmp.n1216, label %.loopexit745.i.i, label %vec.epilog.iter.check1221

vec.epilog.iter.check1221:                        ; preds = %middle.block1215
  %min.epilog.iters.check1222 = icmp eq i64 %i.aor, 0
  br i1 %min.epilog.iters.check1222, label %vec.epilog.scalar.ph1220.preheader, label %vec.epilog.ph1223, !prof !22

vec.epilog.ph1223:                                ; preds = %vector.main.loop.iter.check1194, %vec.epilog.iter.check1221
  %vec.epilog.resume.val1217 = phi i64 [ %n.vec1197, %vec.epilog.iter.check1221 ], [ 0, %vector.main.loop.iter.check1194 ]
  %bc.resume.val1218 = phi i64 [ %i.aos, %vec.epilog.iter.check1221 ], [ %i.aoq, %vector.main.loop.iter.check1194 ]
  %n.vec1224 = and i64 %i.alf, -4                 ; 3 uses
  %i.aoy = add nsw i64 %i.aoq, %n.vec1224
  %broadcast.splatinsert1227 = insertelement <4 x i64> poison, i64 %bc.resume.val1218, i64 0
  %broadcast.splat1228 = shufflevector <4 x i64> %broadcast.splatinsert1227, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1229 = add nuw nsw <4 x i64> %broadcast.splat1228, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1230

vec.epilog.vector.body1230:                       ; preds = %vec.epilog.vector.body1230, %vec.epilog.ph1223
  %index1231 = phi i64 [ %vec.epilog.resume.val1217, %vec.epilog.ph1223 ], [ %index.next1234, %vec.epilog.vector.body1230 ]
  %vec.ind1232 = phi <4 x i64> [ %induction1229, %vec.epilog.ph1223 ], [ %vec.ind.next1235, %vec.epilog.vector.body1230 ] ; 2 uses
  %i.aoz = mul nsw <4 x i64> %vec.ind1232, %broadcast.splat1226.a
  %wide.gep1233 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aoz
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1233, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next1234 = add nuw i64 %index1231, 4     ; 2 uses
  %vec.ind.next1235 = add nuw nsw <4 x i64> %vec.ind1232, splat (i64 4)
  %i.apa = icmp eq i64 %index.next1234, %n.vec1224
  br i1 %i.apa, label %vec.epilog.middle.block1236, label %vec.epilog.vector.body1230, !llvm.loop !87

vec.epilog.middle.block1236:                      ; preds = %vec.epilog.vector.body1230
  %cmp.n1237 = icmp eq i64 %i.alf, %n.vec1224
  br i1 %cmp.n1237, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1220.preheader

vec.epilog.scalar.ph1220.preheader:               ; preds = %iter.check1219, %vec.epilog.iter.check1221, %vec.epilog.middle.block1236
  %indvars.iv1012.i.i.ph = phi i64 [ %i.aoq, %iter.check1219 ], [ %i.aos, %vec.epilog.iter.check1221 ], [ %i.aoy, %vec.epilog.middle.block1236 ]
  br label %vec.epilog.scalar.ph1220

vec.epilog.scalar.ph1220:                         ; preds = %vec.epilog.scalar.ph1220.preheader, %vec.epilog.scalar.ph1220
  %indvars.iv1012.i.i = phi i64 [ %indvars.iv.next1013.i.i, %vec.epilog.scalar.ph1220 ], [ %indvars.iv1012.i.i.ph, %vec.epilog.scalar.ph1220.preheader ] ; 2 uses
  %i.apb = mul nsw i64 %indvars.iv1012.i.i, %i.oa
  %gep1204.i.i = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, i64 %i.apb
  store double 0.000000e+00, ptr %gep1204.i.i, align 8, !tbaa !12
  %indvars.iv.next1013.i.i = add nuw nsw i64 %indvars.iv1012.i.i, 1 ; 2 uses
  %exitcond1016.not.i.i = icmp eq i64 %indvars.iv.next1013.i.i, %i.oa
  br i1 %exitcond1016.not.i.i, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1220, !llvm.loop !88

.loopexit745.i.i:                                 ; preds = %vec.epilog.scalar.ph1220, %middle.block1215, %vec.epilog.middle.block1236, %.loopexit747.i.i, %._crit_edge818.i.i
  %i.apc = mul i32 %.0645699.i.i, %indvars.i
  %i.apd = sext i32 %i.apc to i64
  %i.ape = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.apd
  store double 1.000000e+00, ptr %i.ape, align 8, !tbaa !12
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv1017.i.i
  %i.apg = load double, ptr %i.apf, align 8, !tbaa !12
  %i.aph = icmp sgt i64 %indvars.iv1017.in.i.i, 1
  %indvar.next1191 = add i32 %indvar1190, 1
  br i1 %i.aph, label %._crit_edge818.i.i, label %.preheader742.i.i

.preheader742.i.i:                                ; preds = %.loopexit745.i.i, %.loopexit735.i.i
  %indvars.iv1052.i.i = phi i64 [ %indvars.iv.next1053.i.i, %.loopexit735.i.i ], [ 0, %.loopexit745.i.i ] ; 8 uses
  %indvars.iv1026.in.i.i = phi i64 [ %indvars.iv1026.i.i, %.loopexit735.i.i ], [ %i.oa, %.loopexit745.i.i ] ; 10 uses
  %i.api = trunc i64 %indvars.iv1052.i.i to i32
  %i.apj = add i32 %i.iy, %i.api                  ; 3 uses
  %i.apk = zext i32 %i.apj to i64
  %i.apl = add nuw nsw i64 %i.apk, 1              ; 5 uses
  %i.apm = mul nsw i64 %indvars.iv1052.i.i, -16   ; 2 uses
  %i.apn = getelementptr i8, ptr %i.in, i64 %i.apm
  %scevgep1060.a = getelementptr i8, ptr %i.apn, i64 8
  %i.apo = mul nsw i64 %indvars.iv1052.i.i, -8    ; 2 uses
  %scevgep1062 = getelementptr i8, ptr %i.ok, i64 %i.apo
  %i.app = trunc i64 %indvars.iv1052.i.i to i32
  %i.apq = add i32 %i.kw, %i.app
  %i.apr = zext i32 %i.apq to i64
  %i.aps = shl nuw nsw i64 %i.apr, 3
  %scevgep1065.a = getelementptr i8, ptr %scevgep1062, i64 %i.aps
  %scevgep1066 = getelementptr i8, ptr %i.in, i64 %i.apm
  %scevgep1067 = getelementptr i8, ptr %i.ol, i64 %i.apo
  %i.apt = add i64 %indvars.iv1052.i.i, %i.b      ; 21 uses
  %indvars.iv1026.i.i = add nsw i64 %indvars.iv1026.in.i.i, -1 ; 23 uses
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1026.i.i
  %i.apv = load double, ptr %i.apu, align 8, !tbaa !12 ; 2 uses
  %i.apw = icmp slt i64 %indvars.iv1026.in.i.i, %i.oa ; 2 uses
  br i1 %i.apw, label %.lr.ph841.i.i, label %.loopexit741.i.i

.lr.ph841.i.i:                                    ; preds = %.preheader742.i.i
  %i.apx = shl nuw nsw i64 %indvars.iv1052.i.i, 3
  %i.apy = add nuw nsw i64 %i.apx, 34359738360
  %i.apz = and i64 %i.apy, 34359738360
  %i.aqa = add nuw nsw i64 %i.apz, 8
  %i.aqb = trunc nuw nsw i64 %indvars.iv1052.i.i to i32
  %i.aqc = mul i32 %i.aqb, %i.iq
  %i.aqd = add i32 %i.of, %i.aqc
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = shl nsw i64 %i.aqe, 3
  %scevgep1020.i.i = getelementptr i8, ptr %i.in, i64 %i.aqf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1020.i.i, i8 0, i64 %i.aqa, i1 false), !tbaa !12
  br label %.loopexit741.i.i

.loopexit741.i.i:                                 ; preds = %.lr.ph841.i.i, %.preheader742.i.i
  %i.aqg = fcmp reassoc nsz arcp contract afn une double %i.apv, 0.000000e+00
  br i1 %i.aqg, label %bb.s, label %.preheader738.i.i

.preheader738.i.i:                                ; preds = %.loopexit741.i.i
  %.not1122.i.i = icmp sgt i64 %indvars.iv1026.in.i.i, %i.b
  br i1 %.not1122.i.i, label %.loopexit735.i.i, label %iter.check1176

iter.check1176:                                   ; preds = %.preheader738.i.i
  %invariant.gep1205.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1026.i.i ; 11 uses
  %min.iters.check1164.a = icmp ugt i64 %i.apt, 3
  %or.cond1913.a = and i1 %min.iters.check1164.a, %ident.check1162.not
  br i1 %or.cond1913.a, label %vector.main.loop.iter.check1165, label %.lr.ph843.i.i.preheader

vector.main.loop.iter.check1165:                  ; preds = %iter.check1176
  %min.iters.check1166 = icmp ult i64 %i.apt, 16
  br i1 %min.iters.check1166, label %vec.epilog.ph1180, label %vector.ph1167

vector.ph1167:                                    ; preds = %vector.main.loop.iter.check1165
  %i.aqh = and i64 %i.apt, 12
  %n.vec1168 = and i64 %i.apt, -16                ; 4 uses
  %i.aqi = add i64 %indvars.iv1026.i.i, %n.vec1168
  %i.aqj = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %indvars.iv1026.i.i
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %vector.ph1167
  %index1170 = phi i64 [ 0, %vector.ph1167 ], [ %index.next1171, %vector.body1169 ] ; 2 uses
  %i.aqk = getelementptr [8 x i8], ptr %i.aqj, i64 %index1170 ; 4 uses
  %i.aql = getelementptr i8, ptr %i.aqk, i64 32
  %i.aqm = getelementptr i8, ptr %i.aqk, i64 64
  %i.aqn = getelementptr i8, ptr %i.aqk, i64 96
  store <4 x double> zeroinitializer, ptr %i.aqk, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.aql, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.aqm, align 8, !tbaa !12
  store <4 x double> zeroinitializer, ptr %i.aqn, align 8, !tbaa !12
  %index.next1171 = add nuw i64 %index1170, 16    ; 2 uses
  %i.aqo = icmp eq i64 %index.next1171, %n.vec1168
  br i1 %i.aqo, label %middle.block1172, label %vector.body1169, !llvm.loop !89

middle.block1172:                                 ; preds = %vector.body1169
  %cmp.n1173 = icmp eq i64 %i.apt, %n.vec1168
  br i1 %cmp.n1173, label %.loopexit735.i.i, label %vec.epilog.iter.check1178

vec.epilog.iter.check1178:                        ; preds = %middle.block1172
  %min.epilog.iters.check1179 = icmp eq i64 %i.aqh, 0
  br i1 %min.epilog.iters.check1179, label %.lr.ph843.i.i.preheader, label %vec.epilog.ph1180, !prof !22

vec.epilog.ph1180:                                ; preds = %vector.main.loop.iter.check1165, %vec.epilog.iter.check1178
  %vec.epilog.resume.val1174 = phi i64 [ %n.vec1168, %vec.epilog.iter.check1178 ], [ 0, %vector.main.loop.iter.check1165 ]
  %n.vec1181 = and i64 %i.apt, -4                 ; 3 uses
  %i.aqp = add i64 %indvars.iv1026.i.i, %n.vec1181
  %i.aqq = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %indvars.iv1026.i.i
  br label %vec.epilog.vector.body1182

vec.epilog.vector.body1182:                       ; preds = %vec.epilog.vector.body1182, %vec.epilog.ph1180
  %index1183 = phi i64 [ %vec.epilog.resume.val1174, %vec.epilog.ph1180 ], [ %index.next1184, %vec.epilog.vector.body1182 ] ; 2 uses
  %i.aqr = getelementptr [8 x i8], ptr %i.aqq, i64 %index1183
  store <4 x double> zeroinitializer, ptr %i.aqr, align 8, !tbaa !12
  %index.next1184 = add nuw i64 %index1183, 4     ; 2 uses
  %i.aqs = icmp eq i64 %index.next1184, %n.vec1181
  br i1 %i.aqs, label %vec.epilog.middle.block1185, label %vec.epilog.vector.body1182, !llvm.loop !90

vec.epilog.middle.block1185:                      ; preds = %vec.epilog.vector.body1182
  %cmp.n1186 = icmp eq i64 %i.apt, %n.vec1181
  br i1 %cmp.n1186, label %.loopexit735.i.i, label %.lr.ph843.i.i.preheader

.lr.ph843.i.i.preheader:                          ; preds = %iter.check1176, %vec.epilog.iter.check1178, %vec.epilog.middle.block1185
  %indvars.iv1028.i.i.ph = phi i64 [ %indvars.iv1026.i.i, %iter.check1176 ], [ %i.aqi, %vec.epilog.iter.check1178 ], [ %i.aqp, %vec.epilog.middle.block1185 ] ; 4 uses
  %i.aqt = sub i64 %i.b, %indvars.iv1028.i.i.ph
  %xtraiter2073 = and i64 %i.aqt, 7               ; 2 uses
  %lcmp.mod2074.not = icmp eq i64 %xtraiter2073, 0
  br i1 %lcmp.mod2074.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol

.lr.ph843.i.i.prol:                               ; preds = %.lr.ph843.i.i.preheader, %.lr.ph843.i.i.prol
  %indvars.iv1028.i.i.prol = phi i64 [ %indvars.iv.next1029.i.i.prol, %.lr.ph843.i.i.prol ], [ %indvars.iv1028.i.i.ph, %.lr.ph843.i.i.preheader ] ; 2 uses
  %prol.iter2075 = phi i64 [ %prol.iter2075.next, %.lr.ph843.i.i.prol ], [ 0, %.lr.ph843.i.i.preheader ]
  %i.aqu = mul nsw i64 %indvars.iv1028.i.i.prol, %i.ih
  %gep1206.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.aqu
  store double 0.000000e+00, ptr %gep1206.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1029.i.i.prol = add nuw nsw i64 %indvars.iv1028.i.i.prol, 1 ; 2 uses
  %prol.iter2075.next = add i64 %prol.iter2075, 1 ; 2 uses
  %prol.iter2075.cmp.not = icmp eq i64 %prol.iter2075.next, %xtraiter2073
  br i1 %prol.iter2075.cmp.not, label %.lr.ph843.i.i.prol.loopexit, label %.lr.ph843.i.i.prol, !llvm.loop !91

.lr.ph843.i.i.prol.loopexit:                      ; preds = %.lr.ph843.i.i.prol, %.lr.ph843.i.i.preheader
  %indvars.iv1028.i.i.unr = phi i64 [ %indvars.iv1028.i.i.ph, %.lr.ph843.i.i.preheader ], [ %indvars.iv.next1029.i.i.prol, %.lr.ph843.i.i.prol ]
  %i.aqv = sub i64 %indvars.iv1028.i.i.ph, %i.b
  %i.aqw = icmp ugt i64 %i.aqv, -8
  br i1 %i.aqw, label %.loopexit735.i.i, label %.lr.ph843.i.i

bb.s:                                             ; preds = %.loopexit741.i.i
  %i.aqx = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.apv ; 12 uses
  %.not696.i.i = icmp ne i64 %indvars.iv1026.i.i, %i.od
  %or.cond906.i.i = and i1 %i.apw, %.not696.i.i
  br i1 %or.cond906.i.i, label %.preheader734.lr.ph.i.i, label %.loopexit737.i.i

.preheader734.lr.ph.i.i:                          ; preds = %bb.s
  %i.aqy = trunc nuw nsw i64 %indvars.iv1026.i.i to i32
  %i.aqz = mul i32 %.0661700.i.i, %i.aqy
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ara
  %invariant.gep1207.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1026.i.i ; 18 uses
  %min.iters.check1117.a = icmp ugt i32 %i.apj, 2
  %or.cond1914.a = and i1 %min.iters.check1117.a, %ident.check1115.not
  %min.iters.check1119 = icmp ult i32 %i.apj, 15
  %i.arc = and i64 %i.apl, 12
  %n.vec1121 = and i64 %i.apl, 8589934576         ; 4 uses
  %i.ard = add i64 %indvars.iv1026.in.i.i, %n.vec1121
  %cmp.n1141 = icmp eq i64 %i.apl, %n.vec1121
  %min.epilog.iters.check1148 = icmp eq i64 %i.arc, 0
  %n.vec1150 = and i64 %i.apl, 8589934588         ; 3 uses
  %i.are = add i64 %indvars.iv1026.in.i.i, %n.vec1150
  %cmp.n1158 = icmp eq i64 %i.apl, %n.vec1150
  %min.iters.check1072.a = icmp ugt i64 %i.apt, 3
  %or.cond1915 = and i1 %min.iters.check1072.a, %ident.check1058.not
  %bound01068 = icmp ult ptr %scevgep1060.a, %scevgep1067
  %bound11069 = icmp ult ptr %scevgep1066, %scevgep1065.a
  %found.conflict1070 = and i1 %bound01068, %bound11069
  %min.iters.check1074 = icmp ult i64 %i.apt, 16
  %i.arf = and i64 %i.apt, 12
  %n.vec1076 = and i64 %i.apt, -16                ; 4 uses
  %i.arg = add i64 %indvars.iv1026.i.i, %n.vec1076
  %cmp.n1093 = icmp eq i64 %i.apt, %n.vec1076
  %min.epilog.iters.check1099 = icmp eq i64 %i.arf, 0
  %n.vec1101 = and i64 %i.apt, -4                 ; 3 uses
  %i.arh = add i64 %indvars.iv1026.i.i, %n.vec1101
  %cmp.n1112 = icmp eq i64 %i.apt, %n.vec1101
  br label %iter.check1145

iter.check1145:                                   ; preds = %._crit_edge852.i.loopexit.i, %.preheader734.lr.ph.i.i
  %indvars.iv1042.i.i = phi i64 [ %indvars.iv1026.in.i.i, %.preheader734.lr.ph.i.i ], [ %indvars.iv.next1043.i.i, %._crit_edge852.i.loopexit.i ] ; 2 uses
  %invariant.gep1209.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1042.i.i ; 18 uses
  br i1 %or.cond1914.a, label %vector.main.loop.iter.check1118, label %.lr.ph846.i.i.preheader

vector.main.loop.iter.check1118:                  ; preds = %iter.check1145
  br i1 %min.iters.check1119, label %vec.epilog.ph1149, label %vector.body1122

vector.body1122:                                  ; preds = %vector.main.loop.iter.check1118, %vector.body1122
  %index1123 = phi i64 [ %index.next1136, %vector.body1122 ], [ 0, %vector.main.loop.iter.check1118 ] ; 2 uses
  %vec.phi1124.a = phi <4 x double> [ %i.arv, %vector.body1122 ], [ zeroinitializer, %vector.main.loop.iter.check1118 ]
  %vec.phi1125.a = phi <4 x double> [ %i.arw, %vector.body1122 ], [ zeroinitializer, %vector.main.loop.iter.check1118 ]
  %vec.phi1126 = phi <4 x double> [ %i.arx, %vector.body1122 ], [ zeroinitializer, %vector.main.loop.iter.check1118 ]
  %vec.phi1127 = phi <4 x double> [ %i.ary, %vector.body1122 ], [ zeroinitializer, %vector.main.loop.iter.check1118 ]
  %i.ari = add i64 %indvars.iv1026.in.i.i, %index1123 ; 2 uses
  %i.arj = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.ari ; 4 uses
  %i.ark = getelementptr i8, ptr %i.arj, i64 32
  %i.arl = getelementptr i8, ptr %i.arj, i64 64
  %i.arm = getelementptr i8, ptr %i.arj, i64 96
  %wide.load1128.a = load <4 x double>, ptr %i.arj, align 8, !tbaa !12
  %wide.load1129.a = load <4 x double>, ptr %i.ark, align 8, !tbaa !12
  %wide.load1130.a = load <4 x double>, ptr %i.arl, align 8, !tbaa !12
  %wide.load1131.a = load <4 x double>, ptr %i.arm, align 8, !tbaa !12
  %i.arn = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.ari ; 4 uses
  %i.aro = getelementptr i8, ptr %i.arn, i64 32
  %i.arp = getelementptr i8, ptr %i.arn, i64 64
  %i.arq = getelementptr i8, ptr %i.arn, i64 96
  %wide.load1132.a = load <4 x double>, ptr %i.arn, align 8, !tbaa !12
  %wide.load1133.a = load <4 x double>, ptr %i.aro, align 8, !tbaa !12
  %wide.load1134 = load <4 x double>, ptr %i.arp, align 8, !tbaa !12
  %wide.load1135 = load <4 x double>, ptr %i.arq, align 8, !tbaa !12
  %i.arr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1132.a, %wide.load1128.a
  %i.ars = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1133.a, %wide.load1129.a
  %i.art = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1134, %wide.load1130.a
  %i.aru = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1135, %wide.load1131.a
  %i.arv = fadd reassoc nsz arcp contract afn <4 x double> %i.arr, %vec.phi1124.a ; 2 uses
  %i.arw = fadd reassoc nsz arcp contract afn <4 x double> %i.ars, %vec.phi1125.a ; 2 uses
  %i.arx = fadd reassoc nsz arcp contract afn <4 x double> %i.art, %vec.phi1126 ; 2 uses
  %i.ary = fadd reassoc nsz arcp contract afn <4 x double> %i.aru, %vec.phi1127 ; 2 uses
  %index.next1136 = add nuw i64 %index1123, 16    ; 2 uses
  %i.arz = icmp eq i64 %index.next1136, %n.vec1121
  br i1 %i.arz, label %middle.block1137, label %vector.body1122, !llvm.loop !92

middle.block1137:                                 ; preds = %vector.body1122
  %bin.rdx1138.a = fadd reassoc nsz arcp contract afn <4 x double> %i.arw, %i.arv
  %bin.rdx1139 = fadd reassoc nsz arcp contract afn <4 x double> %i.arx, %bin.rdx1138.a
  %bin.rdx1140 = fadd reassoc nsz arcp contract afn <4 x double> %i.ary, %bin.rdx1139
  %i.asa = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1140) ; 3 uses
  br i1 %cmp.n1141, label %iter.check1096, label %vec.epilog.iter.check1147

vec.epilog.iter.check1147:                        ; preds = %middle.block1137
  br i1 %min.epilog.iters.check1148, label %.lr.ph846.i.i.preheader, label %vec.epilog.ph1149, !prof !22

vec.epilog.ph1149:                                ; preds = %vector.main.loop.iter.check1118, %vec.epilog.iter.check1147
  %vec.epilog.resume.val1142 = phi i64 [ %n.vec1121, %vec.epilog.iter.check1147 ], [ 0, %vector.main.loop.iter.check1118 ]
  %bc.merge.rdx1144 = phi double [ %i.asa, %vec.epilog.iter.check1147 ], [ 0.000000e+00, %vector.main.loop.iter.check1118 ]
  %i.asb = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1144, i64 0
  br label %vec.epilog.vector.body1151

vec.epilog.vector.body1151:                       ; preds = %vec.epilog.vector.body1151, %vec.epilog.ph1149
  %index1152 = phi i64 [ %vec.epilog.resume.val1142, %vec.epilog.ph1149 ], [ %index.next1156, %vec.epilog.vector.body1151 ] ; 2 uses
  %vec.phi1153 = phi <4 x double> [ %i.asb, %vec.epilog.ph1149 ], [ %i.asg, %vec.epilog.vector.body1151 ]
  %i.asc = add i64 %indvars.iv1026.in.i.i, %index1152 ; 2 uses
  %i.asd = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.asc
  %wide.load1154 = load <4 x double>, ptr %i.asd, align 8, !tbaa !12
  %i.ase = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.asc
  %wide.load1155 = load <4 x double>, ptr %i.ase, align 8, !tbaa !12
  %i.asf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1155, %wide.load1154
  %i.asg = fadd reassoc nsz arcp contract afn <4 x double> %i.asf, %vec.phi1153 ; 2 uses
  %index.next1156 = add nuw i64 %index1152, 4     ; 2 uses
  %i.ash = icmp eq i64 %index.next1156, %n.vec1150
  br i1 %i.ash, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1151, !llvm.loop !93

vec.epilog.middle.block1157:                      ; preds = %vec.epilog.vector.body1151
  %i.asi = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.asg) ; 2 uses
  br i1 %cmp.n1158, label %iter.check1096, label %.lr.ph846.i.i.preheader

.lr.ph846.i.i.preheader:                          ; preds = %iter.check1145, %vec.epilog.iter.check1147, %vec.epilog.middle.block1157
  %indvars.iv1033.i.i.ph = phi i64 [ %indvars.iv1026.in.i.i, %iter.check1145 ], [ %i.ard, %vec.epilog.iter.check1147 ], [ %i.are, %vec.epilog.middle.block1157 ] ; 3 uses
  %.5844.i.i.ph = phi double [ 0.000000e+00, %iter.check1145 ], [ %i.asa, %vec.epilog.iter.check1147 ], [ %i.asi, %vec.epilog.middle.block1157 ] ; 2 uses
  %i.asj = trunc i64 %indvars.iv1033.i.i.ph to i32 ; 2 uses
  %i.ask = sub i32 %i.jd, %i.asj
  %i.asl = sub i32 %i.je, %i.asj
  %xtraiter2076 = and i32 %i.ask, 7               ; 2 uses
  %lcmp.mod2077.not = icmp eq i32 %xtraiter2076, 0
  br i1 %lcmp.mod2077.not, label %.lr.ph846.i.i.prol.loopexit, label %.lr.ph846.i.i.prol

.lr.ph846.i.i.prol:                               ; preds = %.lr.ph846.i.i.preheader, %.lr.ph846.i.i.prol
  %indvars.iv1033.i.i.prol = phi i64 [ %indvars.iv.next1034.i.i.prol, %.lr.ph846.i.i.prol ], [ %indvars.iv1033.i.i.ph, %.lr.ph846.i.i.preheader ] ; 2 uses
  %.5844.i.i.prol = phi double [ %i.asq, %.lr.ph846.i.i.prol ], [ %.5844.i.i.ph, %.lr.ph846.i.i.preheader ]
  %prol.iter2078 = phi i32 [ %prol.iter2078.next, %.lr.ph846.i.i.prol ], [ 0, %.lr.ph846.i.i.preheader ]
  %i.asm = mul nsw i64 %indvars.iv1033.i.i.prol, %i.ih ; 2 uses
  %gep1208.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.asm
  %i.asn = load double, ptr %gep1208.i.i.prol, align 8, !tbaa !12
  %gep1210.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.asm
  %i.aso = load double, ptr %gep1210.i.i.prol, align 8, !tbaa !12
  %i.asp = fmul reassoc nsz arcp contract afn double %i.aso, %i.asn
  %i.asq = fadd reassoc nsz arcp contract afn double %i.asp, %.5844.i.i.prol ; 3 uses
  %indvars.iv.next1034.i.i.prol = add nsw i64 %indvars.iv1033.i.i.prol, 1 ; 2 uses
  %prol.iter2078.next = add i32 %prol.iter2078, 1 ; 2 uses
  %prol.iter2078.cmp.not = icmp eq i32 %prol.iter2078.next, %xtraiter2076
  br i1 %prol.iter2078.cmp.not, label %.lr.ph846.i.i.prol.loopexit, label %.lr.ph846.i.i.prol, !llvm.loop !94

.lr.ph846.i.i.prol.loopexit:                      ; preds = %.lr.ph846.i.i.prol, %.lr.ph846.i.i.preheader
  %.lcssa1979.unr = phi double [ poison, %.lr.ph846.i.i.preheader ], [ %i.asq, %.lr.ph846.i.i.prol ]
  %indvars.iv1033.i.i.unr = phi i64 [ %indvars.iv1033.i.i.ph, %.lr.ph846.i.i.preheader ], [ %indvars.iv.next1034.i.i.prol, %.lr.ph846.i.i.prol ]
  %.5844.i.i.unr = phi double [ %.5844.i.i.ph, %.lr.ph846.i.i.preheader ], [ %i.asq, %.lr.ph846.i.i.prol ]
  %i.asr = icmp ult i32 %i.asl, 7
  br i1 %i.asr, label %iter.check1096, label %.lr.ph846.i.i

iter.check1096:                                   ; preds = %.lr.ph846.i.i.prol.loopexit, %.lr.ph846.i.i, %vec.epilog.middle.block1157, %middle.block1137
  %.lcssa784 = phi double [ %i.asi, %vec.epilog.middle.block1157 ], [ %i.asa, %middle.block1137 ], [ %.lcssa1979.unr, %.lr.ph846.i.i.prol.loopexit ], [ %i.awd, %.lr.ph846.i.i ]
  %i.ass = load double, ptr %i.arb, align 8, !tbaa !12 ; 7 uses
  %i.ast = fmul reassoc nsz arcp contract afn double %.lcssa784, %i.aqx ; 7 uses
  %or.cond1915.not.a = xor i1 %or.cond1915, true
  %brmerge2223 = select i1 %or.cond1915.not.a, i1 true, i1 %found.conflict1070
  br i1 %brmerge2223, label %vec.epilog.scalar.ph1097.preheader, label %vector.main.loop.iter.check1073

vector.main.loop.iter.check1073:                  ; preds = %iter.check1096
  br i1 %min.iters.check1074, label %vec.epilog.ph1100, label %vector.ph1075

vector.ph1075:                                    ; preds = %vector.main.loop.iter.check1073
  %broadcast.splatinsert1077.a = insertelement <4 x double> poison, double %i.ass, i64 0
  %broadcast.splat1078.a = shufflevector <4 x double> %broadcast.splatinsert1077.a, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1079 = insertelement <4 x double> poison, double %i.ast, i64 0
  %broadcast.splat1080 = shufflevector <4 x double> %broadcast.splatinsert1079, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.asu = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1078.a
  %i.asv = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1078.a
  %i.asw = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1078.a
  %i.asx = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1078.a
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1075
  %index1082 = phi i64 [ 0, %vector.ph1075 ], [ %index.next1091, %vector.body1081 ] ; 2 uses
  %i.asy = add nuw i64 %indvars.iv1026.i.i, %index1082 ; 2 uses
  %i.asz = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.asy ; 4 uses
  %i.ata = getelementptr i8, ptr %i.asz, i64 32
  %i.atb = getelementptr i8, ptr %i.asz, i64 64
  %i.atc = getelementptr i8, ptr %i.asz, i64 96
  %wide.load1083.a = load <4 x double>, ptr %i.asz, align 8, !tbaa !12, !alias.scope !95
  %wide.load1084.a = load <4 x double>, ptr %i.ata, align 8, !tbaa !12, !alias.scope !95
  %wide.load1085.a = load <4 x double>, ptr %i.atb, align 8, !tbaa !12, !alias.scope !95
  %wide.load1086.a = load <4 x double>, ptr %i.atc, align 8, !tbaa !12, !alias.scope !95
  %i.atd = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1080, %wide.load1083.a
  %i.ate = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1080, %wide.load1084.a
  %i.atf = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1080, %wide.load1085.a
  %i.atg = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1080, %wide.load1086.a
  %i.ath = fmul reassoc nsz arcp contract afn <4 x double> %i.atd, %i.asu
  %i.ati = fmul reassoc nsz arcp contract afn <4 x double> %i.ate, %i.asv
  %i.atj = fmul reassoc nsz arcp contract afn <4 x double> %i.atf, %i.asw
  %i.atk = fmul reassoc nsz arcp contract afn <4 x double> %i.atg, %i.asx
  %i.atl = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.asy ; 5 uses
  %i.atm = getelementptr i8, ptr %i.atl, i64 32   ; 2 uses
  %i.atn = getelementptr i8, ptr %i.atl, i64 64   ; 2 uses
  %i.ato = getelementptr i8, ptr %i.atl, i64 96   ; 2 uses
  %wide.load1087.a = load <4 x double>, ptr %i.atl, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1088.a = load <4 x double>, ptr %i.atm, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1089 = load <4 x double>, ptr %i.atn, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %wide.load1090 = load <4 x double>, ptr %i.ato, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %i.atp = fadd reassoc nsz arcp contract afn <4 x double> %i.ath, %wide.load1087.a
  %i.atq = fadd reassoc nsz arcp contract afn <4 x double> %i.ati, %wide.load1088.a
  %i.atr = fadd reassoc nsz arcp contract afn <4 x double> %i.atj, %wide.load1089
  %i.ats = fadd reassoc nsz arcp contract afn <4 x double> %i.atk, %wide.load1090
  store <4 x double> %i.atp, ptr %i.atl, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.atq, ptr %i.atm, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.atr, ptr %i.atn, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  store <4 x double> %i.ats, ptr %i.ato, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %index.next1091 = add nuw i64 %index1082, 16    ; 2 uses
  %i.att = icmp eq i64 %index.next1091, %n.vec1076
  br i1 %i.att, label %middle.block1092, label %vector.body1081, !llvm.loop !100

middle.block1092:                                 ; preds = %vector.body1081
  br i1 %cmp.n1093, label %._crit_edge852.i.loopexit.i, label %vec.epilog.iter.check1098

vec.epilog.iter.check1098:                        ; preds = %middle.block1092
  br i1 %min.epilog.iters.check1099, label %vec.epilog.scalar.ph1097.preheader, label %vec.epilog.ph1100, !prof !22

vec.epilog.ph1100:                                ; preds = %vector.main.loop.iter.check1073, %vec.epilog.iter.check1098
  %vec.epilog.resume.val1094 = phi i64 [ %n.vec1076, %vec.epilog.iter.check1098 ], [ 0, %vector.main.loop.iter.check1073 ]
  %broadcast.splatinsert1102.a = insertelement <4 x double> poison, double %i.ass, i64 0
  %broadcast.splat1103.a = shufflevector <4 x double> %broadcast.splatinsert1102.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1104 = insertelement <4 x double> poison, double %i.ast, i64 0
  %broadcast.splat1105 = shufflevector <4 x double> %broadcast.splatinsert1104, <4 x double> poison, <4 x i32> zeroinitializer
  %i.atu = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1103.a
  br label %vec.epilog.vector.body1106

vec.epilog.vector.body1106:                       ; preds = %vec.epilog.vector.body1106, %vec.epilog.ph1100
  %index1107 = phi i64 [ %vec.epilog.resume.val1094, %vec.epilog.ph1100 ], [ %index.next1110, %vec.epilog.vector.body1106 ] ; 2 uses
  %i.atv = add nuw i64 %indvars.iv1026.i.i, %index1107 ; 2 uses
  %i.atw = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.atv
  %wide.load1108 = load <4 x double>, ptr %i.atw, align 8, !tbaa !12, !alias.scope !95
  %i.atx = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat1105, %wide.load1108
  %i.aty = fmul reassoc nsz arcp contract afn <4 x double> %i.atx, %i.atu
  %i.atz = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.atv ; 2 uses
  %wide.load1109 = load <4 x double>, ptr %i.atz, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %i.aua = fadd reassoc nsz arcp contract afn <4 x double> %i.aty, %wide.load1109
  store <4 x double> %i.aua, ptr %i.atz, align 8, !tbaa !12, !alias.scope !98, !noalias !95
  %index.next1110 = add nuw i64 %index1107, 4     ; 2 uses
  %i.aub = icmp eq i64 %index.next1110, %n.vec1101
  br i1 %i.aub, label %vec.epilog.middle.block1111, label %vec.epilog.vector.body1106, !llvm.loop !101

vec.epilog.middle.block1111:                      ; preds = %vec.epilog.vector.body1106
  br i1 %cmp.n1112, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1097.preheader

vec.epilog.scalar.ph1097.preheader:               ; preds = %iter.check1096, %vec.epilog.iter.check1098, %vec.epilog.middle.block1111
  %indvars.iv1037.i.i.ph = phi i64 [ %indvars.iv1026.i.i, %iter.check1096 ], [ %i.arh, %vec.epilog.middle.block1111 ], [ %i.arg, %vec.epilog.iter.check1098 ] ; 4 uses
  %i.auc = sub i64 %i.b, %indvars.iv1037.i.i.ph
  %xtraiter2079 = and i64 %i.auc, 3               ; 2 uses
  %lcmp.mod2080.not = icmp eq i64 %xtraiter2079, 0
  br i1 %lcmp.mod2080.not, label %vec.epilog.scalar.ph1097.prol.loopexit, label %vec.epilog.scalar.ph1097.prol.preheader

vec.epilog.scalar.ph1097.prol.preheader:          ; preds = %vec.epilog.scalar.ph1097.preheader
  %i.aud = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ass
  br label %vec.epilog.scalar.ph1097.prol

vec.epilog.scalar.ph1097.prol:                    ; preds = %vec.epilog.scalar.ph1097.prol, %vec.epilog.scalar.ph1097.prol.preheader
  %indvars.iv1037.i.i.prol = phi i64 [ %indvars.iv.next1038.i.i.prol, %vec.epilog.scalar.ph1097.prol ], [ %indvars.iv1037.i.i.ph, %vec.epilog.scalar.ph1097.prol.preheader ] ; 2 uses
  %prol.iter2081 = phi i64 [ %prol.iter2081.next, %vec.epilog.scalar.ph1097.prol ], [ 0, %vec.epilog.scalar.ph1097.prol.preheader ]
  %i.aue = mul nsw i64 %indvars.iv1037.i.i.prol, %i.ih ; 2 uses
  %gep1212.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.aue
  %i.auf = load double, ptr %gep1212.i.i.prol, align 8, !tbaa !12
  %i.aug = fmul reassoc nsz arcp contract afn double %i.ast, %i.auf
  %i.auh = fmul reassoc nsz arcp contract afn double %i.aug, %i.aud
  %gep1214.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.aue ; 2 uses
  %i.aui = load double, ptr %gep1214.i.i.prol, align 8, !tbaa !12
  %i.auj = fadd reassoc nsz arcp contract afn double %i.auh, %i.aui
  store double %i.auj, ptr %gep1214.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1038.i.i.prol = add nuw nsw i64 %indvars.iv1037.i.i.prol, 1 ; 2 uses
  %prol.iter2081.next = add i64 %prol.iter2081, 1 ; 2 uses
  %prol.iter2081.cmp.not = icmp eq i64 %prol.iter2081.next, %xtraiter2079
  br i1 %prol.iter2081.cmp.not, label %vec.epilog.scalar.ph1097.prol.loopexit, label %vec.epilog.scalar.ph1097.prol, !llvm.loop !102

vec.epilog.scalar.ph1097.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1097.prol, %vec.epilog.scalar.ph1097.preheader
  %indvars.iv1037.i.i.unr = phi i64 [ %indvars.iv1037.i.i.ph, %vec.epilog.scalar.ph1097.preheader ], [ %indvars.iv.next1038.i.i.prol, %vec.epilog.scalar.ph1097.prol ]
  %i.auk = sub i64 %indvars.iv1037.i.i.ph, %i.b
  %i.aul = icmp ugt i64 %i.auk, -4
  br i1 %i.aul, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1097.preheader.new

vec.epilog.scalar.ph1097.preheader.new:           ; preds = %vec.epilog.scalar.ph1097.prol.loopexit
  %i.aum = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ass
  %i.aun = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ass
  %i.auo = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ass
  %i.aup = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ass
  br label %vec.epilog.scalar.ph1097

.lr.ph846.i.i:                                    ; preds = %.lr.ph846.i.i.prol.loopexit, %.lr.ph846.i.i
  %indvars.iv1033.i.i = phi i64 [ %indvars.iv.next1034.i.i.7, %.lr.ph846.i.i ], [ %indvars.iv1033.i.i.unr, %.lr.ph846.i.i.prol.loopexit ] ; 9 uses
  %.5844.i.i = phi double [ %i.awd, %.lr.ph846.i.i ], [ %.5844.i.i.unr, %.lr.ph846.i.i.prol.loopexit ]
  %i.auq = mul nsw i64 %indvars.iv1033.i.i, %i.ih ; 2 uses
  %gep1208.i.i = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.auq
  %i.aur = load double, ptr %gep1208.i.i, align 8, !tbaa !12
  %gep1210.i.i = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.auq
  %i.aus = load double, ptr %gep1210.i.i, align 8, !tbaa !12
  %i.aut = fmul reassoc nsz arcp contract afn double %i.aus, %i.aur
  %i.auu = fadd reassoc nsz arcp contract afn double %i.aut, %.5844.i.i
  %indvars.iv.next1034.i.i = add nsw i64 %indvars.iv1033.i.i, 1
  %i.auv = mul nsw i64 %indvars.iv.next1034.i.i, %i.ih ; 2 uses
  %gep1208.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.auv
  %i.auw = load double, ptr %gep1208.i.i.1, align 8, !tbaa !12
  %gep1210.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.auv
  %i.aux = load double, ptr %gep1210.i.i.1, align 8, !tbaa !12
  %i.auy = fmul reassoc nsz arcp contract afn double %i.aux, %i.auw
  %i.auz = fadd reassoc nsz arcp contract afn double %i.auy, %i.auu
  %indvars.iv.next1034.i.i.1 = add nsw i64 %indvars.iv1033.i.i, 2
  %i.ava = mul nsw i64 %indvars.iv.next1034.i.i.1, %i.ih ; 2 uses
  %gep1208.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.ava
  %i.avb = load double, ptr %gep1208.i.i.2, align 8, !tbaa !12
  %gep1210.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.ava
  %i.avc = load double, ptr %gep1210.i.i.2, align 8, !tbaa !12
  %i.avd = fmul reassoc nsz arcp contract afn double %i.avc, %i.avb
  %i.ave = fadd reassoc nsz arcp contract afn double %i.avd, %i.auz
  %indvars.iv.next1034.i.i.2 = add nsw i64 %indvars.iv1033.i.i, 3
  %i.avf = mul nsw i64 %indvars.iv.next1034.i.i.2, %i.ih ; 2 uses
  %gep1208.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.avf
  %i.avg = load double, ptr %gep1208.i.i.3, align 8, !tbaa !12
  %gep1210.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.avf
  %i.avh = load double, ptr %gep1210.i.i.3, align 8, !tbaa !12
  %i.avi = fmul reassoc nsz arcp contract afn double %i.avh, %i.avg
  %i.avj = fadd reassoc nsz arcp contract afn double %i.avi, %i.ave
  %indvars.iv.next1034.i.i.3 = add nsw i64 %indvars.iv1033.i.i, 4
  %i.avk = mul nsw i64 %indvars.iv.next1034.i.i.3, %i.ih ; 2 uses
  %gep1208.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.avk
  %i.avl = load double, ptr %gep1208.i.i.4, align 8, !tbaa !12
  %gep1210.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.avk
  %i.avm = load double, ptr %gep1210.i.i.4, align 8, !tbaa !12
  %i.avn = fmul reassoc nsz arcp contract afn double %i.avm, %i.avl
  %i.avo = fadd reassoc nsz arcp contract afn double %i.avn, %i.avj
  %indvars.iv.next1034.i.i.4 = add nsw i64 %indvars.iv1033.i.i, 5
  %i.avp = mul nsw i64 %indvars.iv.next1034.i.i.4, %i.ih ; 2 uses
  %gep1208.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.avp
  %i.avq = load double, ptr %gep1208.i.i.5, align 8, !tbaa !12
  %gep1210.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.avp
  %i.avr = load double, ptr %gep1210.i.i.5, align 8, !tbaa !12
  %i.avs = fmul reassoc nsz arcp contract afn double %i.avr, %i.avq
  %i.avt = fadd reassoc nsz arcp contract afn double %i.avs, %i.avo
  %indvars.iv.next1034.i.i.5 = add nsw i64 %indvars.iv1033.i.i, 6
  %i.avu = mul nsw i64 %indvars.iv.next1034.i.i.5, %i.ih ; 2 uses
  %gep1208.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.avu
  %i.avv = load double, ptr %gep1208.i.i.6, align 8, !tbaa !12
  %gep1210.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.avu
  %i.avw = load double, ptr %gep1210.i.i.6, align 8, !tbaa !12
  %i.avx = fmul reassoc nsz arcp contract afn double %i.avw, %i.avv
  %i.avy = fadd reassoc nsz arcp contract afn double %i.avx, %i.avt
  %indvars.iv.next1034.i.i.6 = add nsw i64 %indvars.iv1033.i.i, 7
  %i.avz = mul nsw i64 %indvars.iv.next1034.i.i.6, %i.ih ; 2 uses
  %gep1208.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.avz
  %i.awa = load double, ptr %gep1208.i.i.7, align 8, !tbaa !12
  %gep1210.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.avz
  %i.awb = load double, ptr %gep1210.i.i.7, align 8, !tbaa !12
  %i.awc = fmul reassoc nsz arcp contract afn double %i.awb, %i.awa
  %i.awd = fadd reassoc nsz arcp contract afn double %i.awc, %i.avy ; 2 uses
  %indvars.iv.next1034.i.i.7 = add nsw i64 %indvars.iv1033.i.i, 8 ; 2 uses
  %lftr.wideiv.i.i.7 = trunc i64 %indvars.iv.next1034.i.i.7 to i32
  %exitcond1036.not.i.i.7 = icmp eq i32 %i.a, %lftr.wideiv.i.i.7
  br i1 %exitcond1036.not.i.i.7, label %iter.check1096, label %.lr.ph846.i.i, !llvm.loop !103

._crit_edge852.i.loopexit.i:                      ; preds = %vec.epilog.scalar.ph1097.prol.loopexit, %vec.epilog.scalar.ph1097, %vec.epilog.middle.block1111, %middle.block1092
  %indvars.iv.next1043.i.i = add nuw nsw i64 %indvars.iv1042.i.i, 1 ; 2 uses
  %lftr.wideiv1045.i.i = trunc i64 %indvars.iv.next1043.i.i to i32
  %exitcond1046.not.i.i = icmp eq i32 %i.nz, %lftr.wideiv1045.i.i
  br i1 %exitcond1046.not.i.i, label %.loopexit737.i.i, label %iter.check1145

vec.epilog.scalar.ph1097:                         ; preds = %vec.epilog.scalar.ph1097, %vec.epilog.scalar.ph1097.preheader.new
  %indvars.iv1037.i.i = phi i64 [ %indvars.iv1037.i.i.unr, %vec.epilog.scalar.ph1097.preheader.new ], [ %indvars.iv.next1038.i.i.3, %vec.epilog.scalar.ph1097 ] ; 5 uses
  %i.awe = mul nsw i64 %indvars.iv1037.i.i, %i.ih ; 2 uses
  %gep1212.i.i = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.awe
  %i.awf = load double, ptr %gep1212.i.i, align 8, !tbaa !12
  %i.awg = fmul reassoc nsz arcp contract afn double %i.ast, %i.awf
  %i.awh = fmul reassoc nsz arcp contract afn double %i.awg, %i.aum
  %gep1214.i.i = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.awe ; 2 uses
  %i.awi = load double, ptr %gep1214.i.i, align 8, !tbaa !12
  %i.awj = fadd reassoc nsz arcp contract afn double %i.awh, %i.awi
  store double %i.awj, ptr %gep1214.i.i, align 8, !tbaa !12
  %indvars.iv.next1038.i.i = add nuw nsw i64 %indvars.iv1037.i.i, 1
  %i.awk = mul nsw i64 %indvars.iv.next1038.i.i, %i.ih ; 2 uses
  %gep1212.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.awk
  %i.awl = load double, ptr %gep1212.i.i.1, align 8, !tbaa !12
  %i.awm = fmul reassoc nsz arcp contract afn double %i.ast, %i.awl
  %i.awn = fmul reassoc nsz arcp contract afn double %i.awm, %i.aun
  %gep1214.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.awk ; 2 uses
  %i.awo = load double, ptr %gep1214.i.i.1, align 8, !tbaa !12
  %i.awp = fadd reassoc nsz arcp contract afn double %i.awn, %i.awo
  store double %i.awp, ptr %gep1214.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1038.i.i.1 = add nuw nsw i64 %indvars.iv1037.i.i, 2
  %i.awq = mul nsw i64 %indvars.iv.next1038.i.i.1, %i.ih ; 2 uses
  %gep1212.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.awq
  %i.awr = load double, ptr %gep1212.i.i.2, align 8, !tbaa !12
  %i.aws = fmul reassoc nsz arcp contract afn double %i.ast, %i.awr
  %i.awt = fmul reassoc nsz arcp contract afn double %i.aws, %i.auo
  %gep1214.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.awq ; 2 uses
  %i.awu = load double, ptr %gep1214.i.i.2, align 8, !tbaa !12
  %i.awv = fadd reassoc nsz arcp contract afn double %i.awt, %i.awu
  store double %i.awv, ptr %gep1214.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1038.i.i.2 = add nuw nsw i64 %indvars.iv1037.i.i, 3
  %i.aww = mul nsw i64 %indvars.iv.next1038.i.i.2, %i.ih ; 2 uses
  %gep1212.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1207.i.i, i64 %i.aww
  %i.awx = load double, ptr %gep1212.i.i.3, align 8, !tbaa !12
  %i.awy = fmul reassoc nsz arcp contract afn double %i.ast, %i.awx
  %i.awz = fmul reassoc nsz arcp contract afn double %i.awy, %i.aup
  %gep1214.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1209.i.i, i64 %i.aww ; 2 uses
  %i.axa = load double, ptr %gep1214.i.i.3, align 8, !tbaa !12
  %i.axb = fadd reassoc nsz arcp contract afn double %i.awz, %i.axa
  store double %i.axb, ptr %gep1214.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1038.i.i.3 = add nuw nsw i64 %indvars.iv1037.i.i, 4 ; 2 uses
  %exitcond1041.not.i.i.3 = icmp eq i64 %indvars.iv.next1038.i.i.3, %i.b
  br i1 %exitcond1041.not.i.i.3, label %._crit_edge852.i.loopexit.i, label %vec.epilog.scalar.ph1097, !llvm.loop !104

.loopexit737.i.i:                                 ; preds = %._crit_edge852.i.loopexit.i, %bb.s
  %.not1124.i.i = icmp sgt i64 %indvars.iv1026.in.i.i, %i.b
  br i1 %.not1124.i.i, label %.loopexit735.i.i, label %iter.check1042

iter.check1042:                                   ; preds = %.loopexit737.i.i
  %invariant.gep1215.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1026.i.i ; 11 uses
  %min.iters.check1024.a = icmp ugt i64 %i.apt, 3
  %or.cond1916 = and i1 %min.iters.check1024.a, %ident.check1022.not
  br i1 %or.cond1916, label %vector.main.loop.iter.check1025, label %.lr.ph858.i.i.preheader

vector.main.loop.iter.check1025:                  ; preds = %iter.check1042
  %min.iters.check1026 = icmp ult i64 %i.apt, 16
  br i1 %min.iters.check1026, label %vec.epilog.ph1046, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check1025
  %i.axc = and i64 %i.apt, 12
  %n.vec1028 = and i64 %i.apt, -16                ; 4 uses
  %i.axd = add i64 %indvars.iv1026.i.i, %n.vec1028
  %broadcast.splatinsert1029 = insertelement <4 x double> poison, double %i.aqx, i64 0
  %broadcast.splat1030 = shufflevector <4 x double> %broadcast.splatinsert1029, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.axe = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %indvars.iv1026.i.i
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1027
  %index1032 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1037, %vector.body1031 ] ; 2 uses
  %i.axf = getelementptr [8 x i8], ptr %i.axe, i64 %index1032 ; 5 uses
  %i.axg = getelementptr i8, ptr %i.axf, i64 32   ; 2 uses
  %i.axh = getelementptr i8, ptr %i.axf, i64 64   ; 2 uses
  %i.axi = getelementptr i8, ptr %i.axf, i64 96   ; 2 uses
  %wide.load1033.a = load <4 x double>, ptr %i.axf, align 8, !tbaa !12
  %wide.load1034.a = load <4 x double>, ptr %i.axg, align 8, !tbaa !12
  %wide.load1035 = load <4 x double>, ptr %i.axh, align 8, !tbaa !12
  %wide.load1036 = load <4 x double>, ptr %i.axi, align 8, !tbaa !12
  %i.axj = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1033.a, %broadcast.splat1030
  %i.axk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1034.a, %broadcast.splat1030
  %i.axl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1035, %broadcast.splat1030
  %i.axm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1036, %broadcast.splat1030
  store <4 x double> %i.axj, ptr %i.axf, align 8, !tbaa !12
  store <4 x double> %i.axk, ptr %i.axg, align 8, !tbaa !12
  store <4 x double> %i.axl, ptr %i.axh, align 8, !tbaa !12
  store <4 x double> %i.axm, ptr %i.axi, align 8, !tbaa !12
  %index.next1037 = add nuw i64 %index1032, 16    ; 2 uses
  %i.axn = icmp eq i64 %index.next1037, %n.vec1028
  br i1 %i.axn, label %middle.block1038, label %vector.body1031, !llvm.loop !105

middle.block1038:                                 ; preds = %vector.body1031
  %cmp.n1039 = icmp eq i64 %i.apt, %n.vec1028
  br i1 %cmp.n1039, label %.loopexit735.i.i, label %vec.epilog.iter.check1044

vec.epilog.iter.check1044:                        ; preds = %middle.block1038
  %min.epilog.iters.check1045 = icmp eq i64 %i.axc, 0
  br i1 %min.epilog.iters.check1045, label %.lr.ph858.i.i.preheader, label %vec.epilog.ph1046, !prof !22

vec.epilog.ph1046:                                ; preds = %vector.main.loop.iter.check1025, %vec.epilog.iter.check1044
  %vec.epilog.resume.val1040 = phi i64 [ %n.vec1028, %vec.epilog.iter.check1044 ], [ 0, %vector.main.loop.iter.check1025 ]
  %n.vec1047 = and i64 %i.apt, -4                 ; 3 uses
  %i.axo = add i64 %indvars.iv1026.i.i, %n.vec1047
  %broadcast.splatinsert1048 = insertelement <4 x double> poison, double %i.aqx, i64 0
  %broadcast.splat1049 = shufflevector <4 x double> %broadcast.splatinsert1048, <4 x double> poison, <4 x i32> zeroinitializer
  %i.axp = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %indvars.iv1026.i.i
  br label %vec.epilog.vector.body1050

vec.epilog.vector.body1050:                       ; preds = %vec.epilog.vector.body1050, %vec.epilog.ph1046
  %index1051 = phi i64 [ %vec.epilog.resume.val1040, %vec.epilog.ph1046 ], [ %index.next1053, %vec.epilog.vector.body1050 ] ; 2 uses
  %i.axq = getelementptr [8 x i8], ptr %i.axp, i64 %index1051 ; 2 uses
  %wide.load1052 = load <4 x double>, ptr %i.axq, align 8, !tbaa !12
  %i.axr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1052, %broadcast.splat1049
  store <4 x double> %i.axr, ptr %i.axq, align 8, !tbaa !12
  %index.next1053 = add nuw i64 %index1051, 4     ; 2 uses
  %i.axs = icmp eq i64 %index.next1053, %n.vec1047
  br i1 %i.axs, label %vec.epilog.middle.block1054, label %vec.epilog.vector.body1050, !llvm.loop !106

vec.epilog.middle.block1054:                      ; preds = %vec.epilog.vector.body1050
  %cmp.n1055 = icmp eq i64 %i.apt, %n.vec1047
  br i1 %cmp.n1055, label %.loopexit735.i.i, label %.lr.ph858.i.i.preheader

.lr.ph858.i.i.preheader:                          ; preds = %iter.check1042, %vec.epilog.iter.check1044, %vec.epilog.middle.block1054
  %indvars.iv1047.i.i.ph = phi i64 [ %indvars.iv1026.i.i, %iter.check1042 ], [ %i.axd, %vec.epilog.iter.check1044 ], [ %i.axo, %vec.epilog.middle.block1054 ] ; 4 uses
  %i.axt = sub i64 %i.b, %indvars.iv1047.i.i.ph
  %xtraiter2082 = and i64 %i.axt, 7               ; 2 uses
  %lcmp.mod2083.not = icmp eq i64 %xtraiter2082, 0
  br i1 %lcmp.mod2083.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol

.lr.ph858.i.i.prol:                               ; preds = %.lr.ph858.i.i.preheader, %.lr.ph858.i.i.prol
  %indvars.iv1047.i.i.prol = phi i64 [ %indvars.iv.next1048.i.i.prol, %.lr.ph858.i.i.prol ], [ %indvars.iv1047.i.i.ph, %.lr.ph858.i.i.preheader ] ; 2 uses
  %prol.iter2084 = phi i64 [ %prol.iter2084.next, %.lr.ph858.i.i.prol ], [ 0, %.lr.ph858.i.i.preheader ]
  %i.axu = mul nsw i64 %indvars.iv1047.i.i.prol, %i.ih
  %gep1216.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axu ; 2 uses
  %i.axv = load double, ptr %gep1216.i.i.prol, align 8, !tbaa !12
  %i.axw = fmul reassoc nsz arcp contract afn double %i.axv, %i.aqx
  store double %i.axw, ptr %gep1216.i.i.prol, align 8, !tbaa !12
  %indvars.iv.next1048.i.i.prol = add nuw nsw i64 %indvars.iv1047.i.i.prol, 1 ; 2 uses
  %prol.iter2084.next = add i64 %prol.iter2084, 1 ; 2 uses
  %prol.iter2084.cmp.not = icmp eq i64 %prol.iter2084.next, %xtraiter2082
  br i1 %prol.iter2084.cmp.not, label %.lr.ph858.i.i.prol.loopexit, label %.lr.ph858.i.i.prol, !llvm.loop !107

.lr.ph858.i.i.prol.loopexit:                      ; preds = %.lr.ph858.i.i.prol, %.lr.ph858.i.i.preheader
  %indvars.iv1047.i.i.unr = phi i64 [ %indvars.iv1047.i.i.ph, %.lr.ph858.i.i.preheader ], [ %indvars.iv.next1048.i.i.prol, %.lr.ph858.i.i.prol ]
  %i.axx = sub i64 %indvars.iv1047.i.i.ph, %i.b
  %i.axy = icmp ugt i64 %i.axx, -8
  br i1 %i.axy, label %.loopexit735.i.i, label %.lr.ph858.i.i

.lr.ph858.i.i:                                    ; preds = %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i
  %indvars.iv1047.i.i = phi i64 [ %indvars.iv.next1048.i.i.7, %.lr.ph858.i.i ], [ %indvars.iv1047.i.i.unr, %.lr.ph858.i.i.prol.loopexit ] ; 9 uses
  %i.axz = mul nsw i64 %indvars.iv1047.i.i, %i.ih
  %gep1216.i.i = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.axz ; 2 uses
  %i.aya = load double, ptr %gep1216.i.i, align 8, !tbaa !12
  %i.ayb = fmul reassoc nsz arcp contract afn double %i.aya, %i.aqx
  store double %i.ayb, ptr %gep1216.i.i, align 8, !tbaa !12
  %indvars.iv.next1048.i.i = add nuw nsw i64 %indvars.iv1047.i.i, 1
  %i.ayc = mul nsw i64 %indvars.iv.next1048.i.i, %i.ih
  %gep1216.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.ayc ; 2 uses
  %i.ayd = load double, ptr %gep1216.i.i.1, align 8, !tbaa !12
  %i.aye = fmul reassoc nsz arcp contract afn double %i.ayd, %i.aqx
  store double %i.aye, ptr %gep1216.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1048.i.i.1 = add nuw nsw i64 %indvars.iv1047.i.i, 2
  %i.ayf = mul nsw i64 %indvars.iv.next1048.i.i.1, %i.ih
  %gep1216.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.ayf ; 2 uses
  %i.ayg = load double, ptr %gep1216.i.i.2, align 8, !tbaa !12
  %i.ayh = fmul reassoc nsz arcp contract afn double %i.ayg, %i.aqx
  store double %i.ayh, ptr %gep1216.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1048.i.i.2 = add nuw nsw i64 %indvars.iv1047.i.i, 3
  %i.ayi = mul nsw i64 %indvars.iv.next1048.i.i.2, %i.ih
  %gep1216.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.ayi ; 2 uses
  %i.ayj = load double, ptr %gep1216.i.i.3, align 8, !tbaa !12
  %i.ayk = fmul reassoc nsz arcp contract afn double %i.ayj, %i.aqx
  store double %i.ayk, ptr %gep1216.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1048.i.i.3 = add nuw nsw i64 %indvars.iv1047.i.i, 4
  %i.ayl = mul nsw i64 %indvars.iv.next1048.i.i.3, %i.ih
  %gep1216.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.ayl ; 2 uses
  %i.aym = load double, ptr %gep1216.i.i.4, align 8, !tbaa !12
  %i.ayn = fmul reassoc nsz arcp contract afn double %i.aym, %i.aqx
  store double %i.ayn, ptr %gep1216.i.i.4, align 8, !tbaa !12
  %indvars.iv.next1048.i.i.4 = add nuw nsw i64 %indvars.iv1047.i.i, 5
  %i.ayo = mul nsw i64 %indvars.iv.next1048.i.i.4, %i.ih
  %gep1216.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.ayo ; 2 uses
  %i.ayp = load double, ptr %gep1216.i.i.5, align 8, !tbaa !12
  %i.ayq = fmul reassoc nsz arcp contract afn double %i.ayp, %i.aqx
  store double %i.ayq, ptr %gep1216.i.i.5, align 8, !tbaa !12
  %indvars.iv.next1048.i.i.5 = add nuw nsw i64 %indvars.iv1047.i.i, 6
  %i.ayr = mul nsw i64 %indvars.iv.next1048.i.i.5, %i.ih
  %gep1216.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.ayr ; 2 uses
  %i.ays = load double, ptr %gep1216.i.i.6, align 8, !tbaa !12
  %i.ayt = fmul reassoc nsz arcp contract afn double %i.ays, %i.aqx
  store double %i.ayt, ptr %gep1216.i.i.6, align 8, !tbaa !12
  %indvars.iv.next1048.i.i.6 = add nuw nsw i64 %indvars.iv1047.i.i, 7
  %i.ayu = mul nsw i64 %indvars.iv.next1048.i.i.6, %i.ih
  %gep1216.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1215.i.i, i64 %i.ayu ; 2 uses
  %i.ayv = load double, ptr %gep1216.i.i.7, align 8, !tbaa !12
  %i.ayw = fmul reassoc nsz arcp contract afn double %i.ayv, %i.aqx
  store double %i.ayw, ptr %gep1216.i.i.7, align 8, !tbaa !12
  %indvars.iv.next1048.i.i.7 = add nuw nsw i64 %indvars.iv1047.i.i, 8 ; 2 uses
  %exitcond1051.not.i.i.7 = icmp eq i64 %indvars.iv.next1048.i.i.7, %i.b
  br i1 %exitcond1051.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph858.i.i, !llvm.loop !108

.lr.ph843.i.i:                                    ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i
  %indvars.iv1028.i.i = phi i64 [ %indvars.iv.next1029.i.i.7, %.lr.ph843.i.i ], [ %indvars.iv1028.i.i.unr, %.lr.ph843.i.i.prol.loopexit ] ; 9 uses
  %i.ayx = mul nsw i64 %indvars.iv1028.i.i, %i.ih
  %gep1206.i.i = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayx
  store double 0.000000e+00, ptr %gep1206.i.i, align 8, !tbaa !12
  %indvars.iv.next1029.i.i = add nuw nsw i64 %indvars.iv1028.i.i, 1
  %i.ayy = mul nsw i64 %indvars.iv.next1029.i.i, %i.ih
  %gep1206.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayy
  store double 0.000000e+00, ptr %gep1206.i.i.1, align 8, !tbaa !12
  %indvars.iv.next1029.i.i.1 = add nuw nsw i64 %indvars.iv1028.i.i, 2
  %i.ayz = mul nsw i64 %indvars.iv.next1029.i.i.1, %i.ih
  %gep1206.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.ayz
  store double 0.000000e+00, ptr %gep1206.i.i.2, align 8, !tbaa !12
  %indvars.iv.next1029.i.i.2 = add nuw nsw i64 %indvars.iv1028.i.i, 3
  %i.aza = mul nsw i64 %indvars.iv.next1029.i.i.2, %i.ih
  %gep1206.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.aza
  store double 0.000000e+00, ptr %gep1206.i.i.3, align 8, !tbaa !12
  %indvars.iv.next1029.i.i.3 = add nuw nsw i64 %indvars.iv1028.i.i, 4
  %i.azb = mul nsw i64 %indvars.iv.next1029.i.i.3, %i.ih
  %gep1206.i.i.4 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.azb
  store double 0.000000e+00, ptr %gep1206.i.i.4, align 8, !tbaa !12
  %indvars.iv.next1029.i.i.4 = add nuw nsw i64 %indvars.iv1028.i.i, 5
  %i.azc = mul nsw i64 %indvars.iv.next1029.i.i.4, %i.ih
  %gep1206.i.i.5 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.azc
  store double 0.000000e+00, ptr %gep1206.i.i.5, align 8, !tbaa !12
  %indvars.iv.next1029.i.i.5 = add nuw nsw i64 %indvars.iv1028.i.i, 6
  %i.azd = mul nsw i64 %indvars.iv.next1029.i.i.5, %i.ih
  %gep1206.i.i.6 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.azd
  store double 0.000000e+00, ptr %gep1206.i.i.6, align 8, !tbaa !12
  %indvars.iv.next1029.i.i.6 = add nuw nsw i64 %indvars.iv1028.i.i, 7
  %i.aze = mul nsw i64 %indvars.iv.next1029.i.i.6, %i.ih
  %gep1206.i.i.7 = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %i.aze
  store double 0.000000e+00, ptr %gep1206.i.i.7, align 8, !tbaa !12
  %indvars.iv.next1029.i.i.7 = add nuw nsw i64 %indvars.iv1028.i.i, 8 ; 2 uses
  %exitcond1032.not.i.i.7 = icmp eq i64 %indvars.iv.next1029.i.i.7, %i.b
  br i1 %exitcond1032.not.i.i.7, label %.loopexit735.i.i, label %.lr.ph843.i.i, !llvm.loop !109

.loopexit735.i.i:                                 ; preds = %.lr.ph843.i.i.prol.loopexit, %.lr.ph843.i.i, %.lr.ph858.i.i.prol.loopexit, %.lr.ph858.i.i, %middle.block1172, %vec.epilog.middle.block1185, %middle.block1038, %vec.epilog.middle.block1054, %.loopexit737.i.i, %.preheader738.i.i
  %i.azf = trunc nuw nsw i64 %indvars.iv1026.i.i to i32
  %i.azg = mul i32 %.0661700.i.i, %i.azf
  %i.azh = sext i32 %i.azg to i64
  %i.azi = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.azh ; 2 uses
  %i.azj = load double, ptr %i.azi, align 8, !tbaa !12
  %i.azk = fadd reassoc nsz arcp contract afn double %i.azj, 1.000000e+00
  store double %i.azk, ptr %i.azi, align 8, !tbaa !12
  %indvars.iv.next1053.i.i = add nuw nsw i64 %indvars.iv1052.i.i, 1 ; 2 uses
  %exitcond1058.not.i.i = icmp eq i64 %indvars.iv.next1053.i.i, %wide.trip.count990.i.i
  br i1 %exitcond1058.not.i.i, label %.preheader731.i.i, label %.preheader742.i.i

.preheader731.i.i:                                ; preds = %.loopexit735.i.i, %.thread721.i.i
  %indvar = phi i32 [ %indvar.next, %.thread721.i.i ], [ 0, %.loopexit735.i.i ] ; 2 uses
  %indvars.iv1095.i.i = phi i64 [ %indvars.iv.next1096.i.i, %.thread721.i.i ], [ %i.og, %.loopexit735.i.i ] ; 12 uses
  %indvars.iv1071.i.i = phi i32 [ %indvars.iv.next1072.i.i, %.thread721.i.i ], [ %i.nz, %.loopexit735.i.i ] ; 2 uses
  %indvars118.i = trunc i64 %indvars.iv1095.i.i to i32 ; 4 uses
  %i.azl = tail call i32 @llvm.smax.i32(i32 %indvars118.i, i32 1)
  %i.azm = add nsw i32 %i.azl, -1                 ; 3 uses
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv1095.i.i ; 2 uses
  %i.azo = icmp eq i64 %indvars.iv1095.i.i, 0     ; 2 uses
  %i.azp = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1095.i.i ; 3 uses
  %indvars.iv.next1096.i.i = add nsw i64 %indvars.iv1095.i.i, -1 ; 3 uses
  %i.azq = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %indvars.iv.next1096.i.i
  %i.azr = getelementptr inbounds [8 x i8], ptr %i.pq, i64 %indvars.iv.next1096.i.i
  %.pre.i.i = load double, ptr %i.azn, align 8, !tbaa !12
  %i.azs = zext nneg i32 %i.azm to i64
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.azs
  br label %.preheader730.i.i

.preheader730.i.i:                                ; preds = %._crit_edge897.i.i, %.preheader731.i.i
  %i.azu = phi double [ %.pre.i.i, %.preheader731.i.i ], [ %.0679.lcssa.i.i, %._crit_edge897.i.i ] ; 6 uses
  %.0631900.i.i = phi i32 [ 0, %.preheader731.i.i ], [ %i.bmb, %._crit_edge897.i.i ] ; 2 uses
  %i.azv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.azu)
  %i.azw = fadd reassoc nsz arcp contract afn double %i.azv, %.0672..i.i
  %i.azx = fcmp reassoc nsz arcp contract afn oeq double %i.azw, %.0672..i.i ; 2 uses
  %or.cond706863.i.i = or i1 %i.azo, %i.azx
  br i1 %or.cond706863.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.preheader.i

.lr.ph865.i.preheader.i:                          ; preds = %.preheader730.i.i
  %i.azy = load double, ptr %i.azt, align 8, !tbaa !12
  %i.azz = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.azy)
  %i.baa = fadd reassoc nsz arcp contract afn double %i.azz, %.0672..i.i
  %i.bab = fcmp reassoc nsz arcp contract afn oeq double %i.baa, %.0672..i.i
  br i1 %i.bab, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph865.i.i:                                    ; preds = %.lr.ph.i
  %i.bac = zext nneg i32 %i.bak to i64
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.bac
  %i.bae = load double, ptr %i.bad, align 8, !tbaa !12
  %i.baf = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bae)
  %i.bag = fadd reassoc nsz arcp contract afn double %i.baf, %.0672..i.i
  %i.bah = fcmp reassoc nsz arcp contract afn oeq double %i.bag, %.0672..i.i
  br i1 %i.bah, label %._crit_edge866.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph865.i.preheader.i, %.lr.ph865.i.i
  %indvars.iv1061.i75.i = phi i32 [ %i.bai, %.lr.ph865.i.i ], [ %indvars118.i, %.lr.ph865.i.preheader.i ]
  %i.bai = add i32 %indvars.iv1061.i75.i, -1      ; 6 uses
  %i.baj = tail call i32 @llvm.smax.i32(i32 %i.bai, i32 1)
  %i.bak = add nsw i32 %i.baj, -1                 ; 3 uses
  %i.bal = zext nneg i32 %i.bai to i64            ; 3 uses
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.bal
  %i.ban = load double, ptr %i.bam, align 8, !tbaa !12
  %i.bao = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ban)
  %i.bap = fadd reassoc nsz arcp contract afn double %i.bao, %.0672..i.i
  %i.baq = fcmp reassoc nsz arcp contract afn oeq double %i.bap, %.0672..i.i ; 2 uses
  %i.bar = icmp eq i32 %i.bai, 0
  %or.cond706.i.i = or i1 %i.bar, %i.baq
  br i1 %or.cond706.i.i, label %._crit_edge866.i.i, label %.lr.ph865.i.i

._crit_edge866.i.i:                               ; preds = %.lr.ph.i, %.lr.ph865.i.i, %.lr.ph865.i.preheader.i, %.preheader730.i.i
  %.lcssa862.i.i = phi i64 [ %indvars.iv1095.i.i, %.preheader730.i.i ], [ %indvars.iv1095.i.i, %.lr.ph865.i.preheader.i ], [ %i.bal, %.lr.ph865.i.i ], [ %i.bal, %.lr.ph.i ] ; 2 uses
  %.2664.lcssa.i.i = phi i32 [ %indvars118.i, %.preheader730.i.i ], [ %indvars118.i, %.lr.ph865.i.preheader.i ], [ %i.bai, %.lr.ph865.i.i ], [ %i.bai, %.lr.ph.i ] ; 3 uses
  %.lcssa765.i.i = phi i32 [ %i.azm, %.preheader730.i.i ], [ %i.azm, %.lr.ph865.i.preheader.i ], [ %i.bak, %.lr.ph865.i.i ], [ %i.bak, %.lr.ph.i ]
  %.lcssa.i.i = phi i1 [ %i.azx, %.preheader730.i.i ], [ false, %.lr.ph865.i.preheader.i ], [ %i.baq, %.lr.ph.i ], [ false, %.lr.ph865.i.i ]
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %.lcssa862.i.i
  %i.bat = sext i32 %.2664.lcssa.i.i to i64       ; 6 uses
  %.not880.i.i = icmp slt i64 %indvars.iv1095.i.i, %i.bat
  %or.cond907.i.i = or i1 %.lcssa.i.i, %.not880.i.i
  br i1 %or.cond907.i.i, label %.loopexit729.i.i, label %.lr.ph884.preheader.i.i

.lr.ph884.preheader.i.i:                          ; preds = %._crit_edge866.i.i
  %i.bau = zext i32 %.lcssa765.i.i to i64         ; 2 uses
  %invariant.gep1217.i.i = getelementptr [8 x i8], ptr %i.in, i64 %i.bau ; 5 uses
  %i.bav = shl nuw nsw i64 %i.bau, 3
  %scevgep1000 = getelementptr i8, ptr %scevgep999.a, i64 %i.bav
  %i.baw = shl nsw i64 %i.bat, 3
  %scevgep1001.a = getelementptr i8, ptr %i.in, i64 %i.baw
  %i.bax = add i32 %indvar, %.2664.lcssa.i.i
  %i.bay = sub i32 %i.ny, %i.bax
  %i.baz = zext i32 %i.bay to i64
  %i.bba = add nsw i64 %i.bat, %i.baz
  %i.bbb = shl nsw i64 %i.bba, 3
  %scevgep1003 = getelementptr i8, ptr %scevgep1002, i64 %i.bbb
  %bound0 = icmp ult ptr %invariant.gep1217.i.i, %scevgep1003
  %bound1 = icmp ult ptr %scevgep1001.a, %scevgep1000
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph884.i.i

.lr.ph884.i.i:                                    ; preds = %.loopexit728.i.i, %.lr.ph884.preheader.i.i
  %indvars.iv1068.i.i = phi i64 [ %i.bat, %.lr.ph884.preheader.i.i ], [ %indvars.iv.next1069.i.i, %.loopexit728.i.i ] ; 4 uses
  %.6881.i.i = phi double [ 1.000000e+00, %.lr.ph884.preheader.i.i ], [ %.7.i.i, %.loopexit728.i.i ] ; 2 uses
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv1068.i.i
  %i.bbd = load double, ptr %i.bbc, align 8, !tbaa !12
  %i.bbe = fmul reassoc nsz arcp contract afn double %i.bbd, %.6881.i.i ; 2 uses
  %i.bbf = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bbe) ; 5 uses
  %i.bbg = fadd reassoc nsz arcp contract afn double %i.bbf, %.0672..i.i
  %i.bbh = fcmp reassoc nsz arcp contract afn une double %i.bbg, %.0672..i.i
  br i1 %i.bbh, label %bb.t, label %.loopexit728.i.i

bb.t:                                             ; preds = %.lr.ph884.i.i
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1068.i.i ; 2 uses
  %i.bbj = load double, ptr %i.bbi, align 8, !tbaa !12 ; 3 uses
  %i.bbk = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bbj) ; 4 uses
  %i.bbl = fcmp reassoc nsz arcp contract afn ogt double %i.bbf, %i.bbk
  br i1 %i.bbl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bbm = fdiv reassoc nsz arcp contract afn double %i.bbk, %i.bbf ; 2 uses
  %i.bbn = fmul reassoc nsz arcp contract afn double %i.bbm, %i.bbm
  %i.bbo = fadd reassoc nsz arcp contract afn double %i.bbn, 1.000000e+00
  %i.bbp = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bbo)
  %i.bbq = fmul reassoc nsz arcp contract afn double %i.bbp, %i.bbf
  br label %PYTHAG.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.bbr = fcmp reassoc nsz arcp contract afn ueq double %i.bbj, 0.000000e+00
  br i1 %i.bbr, label %PYTHAG.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bbs = fdiv reassoc nsz arcp contract afn double %i.bbf, %i.bbk ; 2 uses
  %i.bbt = fmul reassoc nsz arcp contract afn double %i.bbs, %i.bbs
  %i.bbu = fadd reassoc nsz arcp contract afn double %i.bbt, 1.000000e+00
  %i.bbv = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bbu)
  %i.bbw = fmul reassoc nsz arcp contract afn double %i.bbv, %i.bbk
  br label %PYTHAG.exit.i.i

PYTHAG.exit.i.i:                                  ; preds = %bb.w, %bb.v, %bb.u
  %.0.i.i.i = phi nsz double [ %i.bbq, %bb.u ], [ %i.bbw, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  store double %.0.i.i.i, ptr %i.bbi, align 8, !tbaa !12
  %i.bbx = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.0.i.i.i ; 2 uses
  %i.bby = fmul reassoc nsz arcp contract afn double %i.bbx, %i.bbj ; 7 uses
  %i.bbz = fneg reassoc nsz arcp contract afn double %i.bbe
  %i.bca = fmul reassoc nsz arcp contract afn double %i.bbx, %i.bbz ; 10 uses
  %invariant.gep1219.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1068.i.i ; 4 uses
  %or.cond1917.not = xor i1 %or.cond1917, true
  %brmerge2224 = select i1 %or.cond1917.not, i1 true, i1 %found.conflict
  br i1 %brmerge2224, label %.lr.ph879.i.i.preheader, label %vector.ph1005

vector.ph1005:                                    ; preds = %PYTHAG.exit.i.i
  %broadcast.splatinsert1007.a = insertelement <4 x double> poison, double %i.bby, i64 0
  %broadcast.splat1008.a = shufflevector <4 x double> %broadcast.splatinsert1007.a, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1009 = insertelement <4 x double> poison, double %i.bca, i64 0
  %broadcast.splat1010 = shufflevector <4 x double> %broadcast.splatinsert1009, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %vector.ph1005
  %index1012 = phi i64 [ 0, %vector.ph1005 ], [ %index.next1017, %vector.body1011 ] ; 3 uses
  %i.bcb = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %index1012 ; 3 uses
  %i.bcc = getelementptr i8, ptr %i.bcb, i64 32   ; 2 uses
  %wide.load1013.a = load <4 x double>, ptr %i.bcb, align 8, !tbaa !12, !alias.scope !110, !noalias !113 ; 2 uses
  %wide.load1014.a = load <4 x double>, ptr %i.bcc, align 8, !tbaa !12, !alias.scope !110, !noalias !113 ; 2 uses
  %i.bcd = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %index1012 ; 3 uses
  %i.bce = getelementptr i8, ptr %i.bcd, i64 32   ; 2 uses
  %wide.load1015 = load <4 x double>, ptr %i.bcd, align 8, !tbaa !12, !alias.scope !113 ; 2 uses
  %wide.load1016 = load <4 x double>, ptr %i.bce, align 8, !tbaa !12, !alias.scope !113 ; 2 uses
  %i.bcf = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1013.a, %broadcast.splat1008.a
  %i.bcg = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1014.a, %broadcast.splat1008.a
  %i.bch = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1015, %broadcast.splat1010
  %i.bci = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1016, %broadcast.splat1010
  %i.bcj = fadd reassoc nsz arcp contract afn <4 x double> %i.bch, %i.bcf
  %i.bck = fadd reassoc nsz arcp contract afn <4 x double> %i.bci, %i.bcg
  store <4 x double> %i.bcj, ptr %i.bcb, align 8, !tbaa !12, !alias.scope !110, !noalias !113
  store <4 x double> %i.bck, ptr %i.bcc, align 8, !tbaa !12, !alias.scope !110, !noalias !113
  %i.bcl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1015, %broadcast.splat1008.a
  %i.bcm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1016, %broadcast.splat1008.a
  %i.bcn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1013.a, %broadcast.splat1010
  %i.bco = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1014.a, %broadcast.splat1010
  %i.bcp = fsub reassoc nsz arcp contract afn <4 x double> %i.bcl, %i.bcn
  %i.bcq = fsub reassoc nsz arcp contract afn <4 x double> %i.bcm, %i.bco
  store <4 x double> %i.bcp, ptr %i.bcd, align 8, !tbaa !12, !alias.scope !113
  store <4 x double> %i.bcq, ptr %i.bce, align 8, !tbaa !12, !alias.scope !113
  %index.next1017 = add nuw i64 %index1012, 8     ; 2 uses
  %i.bcr = icmp eq i64 %index.next1017, %n.vec1006
  br i1 %i.bcr, label %middle.block1018, label %vector.body1011, !llvm.loop !115

middle.block1018:                                 ; preds = %vector.body1011
  br i1 %cmp.n1019, label %.loopexit728.i.i, label %.lr.ph879.i.i.preheader

.lr.ph879.i.i.preheader:                          ; preds = %PYTHAG.exit.i.i, %middle.block1018
  %indvars.iv1063.i.i.ph = phi i64 [ %n.vec1006, %middle.block1018 ], [ 0, %PYTHAG.exit.i.i ] ; 4 uses
  br i1 %lcmp.mod2086.not, label %.lr.ph879.i.i.prol.loopexit, label %.lr.ph879.i.i.prol

.lr.ph879.i.i.prol:                               ; preds = %.lr.ph879.i.i.preheader
  %i.bcs = mul nsw i64 %indvars.iv1063.i.i.ph, %i.ih ; 2 uses
  %gep1218.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1217.i.i, i64 %i.bcs ; 2 uses
  %i.bct = load double, ptr %gep1218.i.i.prol, align 8, !tbaa !12 ; 2 uses
  %gep1220.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1219.i.i, i64 %i.bcs ; 2 uses
  %i.bcu = load double, ptr %gep1220.i.i.prol, align 8, !tbaa !12 ; 2 uses
  %i.bcv = fmul reassoc nsz arcp contract afn double %i.bct, %i.bby
  %i.bcw = fmul reassoc nsz arcp contract afn double %i.bcu, %i.bca
end_hunk_1
