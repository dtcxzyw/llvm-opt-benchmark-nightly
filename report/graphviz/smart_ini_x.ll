inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @IMDS_given_dim(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 9 uses
  %.not.i = icmp ne i32 %1, 0                     ; 7 uses
  br i1 %.not.i, label %bb.b, label %._crit_edge266.thread

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #14 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.g = shl nuw nsw i64 %i.a, 3
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.1, i64 noundef %i.g) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit:                                   ; preds = %bb.d
  %i.i = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #14 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %.preheader246.preheader

bb.f:                                             ; preds = %gv_calloc.exit
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.l = shl nuw nsw i64 %i.a, 3
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.1, i64 noundef %i.l) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

._crit_edge266.thread:                            ; preds = %bb.a
  %i.n = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14
  %i.o = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14
  %i.p = tail call ptr @compute_apsp(ptr noundef %0, i32 noundef %1) #15
  %i.q = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14
  %i.r = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #14
  br label %._crit_edge27.i.i

.preheader246.preheader:                          ; preds = %gv_calloc.exit
  %i.s = tail call ptr @compute_apsp(ptr noundef %0, i32 noundef %1) #15 ; 6 uses
  %wide.trip.count313 = zext nneg i32 %1 to i64   ; 15 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count313, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count313
  br label %.preheader246

.preheader246:                                    ; preds = %.preheader246.preheader, %._crit_edge
  %indvars.iv310 = phi i64 [ 0, %.preheader246.preheader ], [ %indvars.iv.next311, %._crit_edge ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv310
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader246, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader246 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !13
  %wide.load419 = load <4 x i32>, ptr %i.w, align 4, !tbaa !13
  %i.x = shl nsw <4 x i32> %wide.load, splat (i32 8)
  %i.y = shl nsw <4 x i32> %wide.load419, splat (i32 8)
  store <4 x i32> %i.x, ptr %i.v, align 4, !tbaa !13
  store <4 x i32> %i.y, ptr %i.w, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader246, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader246 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader245:                                    ; preds = %._crit_edge
  %i.aa = icmp sgt i32 %1, 1                      ; 3 uses
  br i1 %i.aa, label %.preheader244.preheader, label %._crit_edge262

.preheader244.preheader:                          ; preds = %.preheader245
  %wide.trip.count323 = zext nneg i32 %1 to i64
  br label %.preheader244

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  %i.ad = shl nsw i32 %i.ac, 8
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count313
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond314.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count313
  br i1 %exitcond314.not, label %.preheader245, label %.preheader246, !llvm.loop !19

.preheader244:                                    ; preds = %.preheader244.preheader, %bb.h
  %indvars.iv320 = phi i64 [ 1, %.preheader244.preheader ], [ %indvars.iv.next321, %bb.h ] ; 4 uses
  %i.ae = phi <2 x double> [ zeroinitializer, %.preheader244.preheader ], [ %i.av, %bb.h ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv320
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv320
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %.preheader244, %bb.g
  %indvars.iv315 = phi i64 [ 0, %.preheader244 ], [ %indvars.iv.next316, %bb.g ] ; 3 uses
  %i.aj = phi <2 x double> [ %i.ae, %.preheader244 ], [ %i.av, %bb.g ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv315
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13 ; 3 uses
  %5 = sitofp i32 %i.al to double
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv315
  %i.an = load double, ptr %i.am, align 8, !tbaa !20
  %i.ao = fsub double %i.ai, %i.an
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao) ; 2 uses
  %i.aq = mul nsw i32 %i.al, %i.al
  %i.ar = uitofp nneg i32 %i.aq to double
  %6 = fdiv nnan double 1.000000e+00, %i.ar
  %7 = fmul double %6, %i.ap
  %8 = fdiv double 1.000000e+00, %5
  %i.as = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %i.au = insertelement <2 x double> %9, double %7, i64 1
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.at, <2 x double> %i.aj) ; 3 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next316, %indvars.iv320
  br i1 %exitcond319.not, label %bb.h, label %bb.g, !llvm.loop !22

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %wide.trip.count323
  br i1 %exitcond324.not, label %._crit_edge262, label %.preheader244, !llvm.loop !23

._crit_edge262:                                   ; preds = %bb.h, %.preheader245
  %i.aw = phi <2 x double> [ zeroinitializer, %.preheader245 ], [ %i.av, %bb.h ] ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax) #16
  %i.az = fcmp oeq double %i.ay, +inf
  %i.ba = extractelement <2 x double> %i.aw, i64 0
  %i.bb = fdiv double %i.ba, %i.ax
  %i.bc = select i1 %i.az, double 0.000000e+00, double %i.bb
  %.fr = freeze double %i.bc                      ; 4 uses
  %wide.trip.count328 = zext nneg i32 %1 to i64
  %min.iters.check421 = icmp ult i32 %1, 4
  br i1 %min.iters.check421, label %.lr.ph.preheader, label %vector.ph422

vector.ph422:                                     ; preds = %._crit_edge262
  %n.vec423 = and i64 %wide.trip.count313, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.fr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph422
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next428, %vector.body424 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index425 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load426 = load <2 x double>, ptr %i.bd, align 8, !tbaa !20
  %wide.load427 = load <2 x double>, ptr %i.be, align 8, !tbaa !20
  %i.bf = fmul <2 x double> %broadcast.splat, %wide.load426
  %i.bg = fmul <2 x double> %broadcast.splat, %wide.load427
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !20
  store <2 x double> %i.bg, ptr %i.be, align 8, !tbaa !20
  %index.next428 = add nuw i64 %index425, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.bh, label %middle.block429, label %vector.body424, !llvm.loop !24

middle.block429:                                  ; preds = %vector.body424
  %cmp.n430 = icmp eq i64 %n.vec423, %wide.trip.count313
  br i1 %cmp.n430, label %._crit_edge266, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge262, %middle.block429
  %indvars.iv325.ph = phi i64 [ 0, %._crit_edge262 ], [ %n.vec423, %middle.block429 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %.lr.ph ], [ %indvars.iv325.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv325 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !20
  %i.bk = fmul double %.fr, %i.bj
  store double %i.bk, ptr %i.bi, align 8, !tbaa !20
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %._crit_edge266, label %.lr.ph, !llvm.loop !25

._crit_edge266:                                   ; preds = %.lr.ph, %middle.block429
  %i.bl = mul nuw nsw i32 %1, %1                  ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64              ; 4 uses
  %i.bn = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.bm, i64 noundef 4) #14 ; 6 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge266
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.bq = shl nuw nsw i64 %i.bm, 2
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.1, i64 noundef %i.bq) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.j:                                             ; preds = %._crit_edge266
  %i.bs = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #14 ; 10 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.k, label %.lr.ph.preheader.i.i

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.bv = shl nuw nsw i64 %i.a, 3
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.1, i64 noundef %i.bv) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.bx = zext nneg i32 %1 to i64                 ; 13 uses
  %i.by = add nsw i64 %wide.trip.count313, -1     ; 3 uses
  %xtraiter = and i64 %wide.trip.count313, 3      ; 3 uses
  %i.bz = icmp ult i64 %i.by, 3
  br i1 %i.bz, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count313, 2147483644
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ca = mul nuw nsw i64 %indvars.iv.i.i, %i.bx
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i.i
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !26
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cd = mul nuw nsw i64 %indvars.iv.next.i.i, %i.bx
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !26
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cg = mul nuw nsw i64 %indvars.iv.next.i.i.1, %i.bx
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.1
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !26
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cj = mul nuw nsw i64 %indvars.iv.next.i.i.2, %i.bx
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.2
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !26
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !28

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod486)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.cm = mul nuw nsw i64 %indvars.iv.i.i.epil, %i.bx
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i.i.epil
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !26
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !29

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil, %._crit_edge.i.i.unr-lcssa
  %i.cp = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 4) #14 ; 5 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.l, label %.preheader.lr.ph.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.cs = shl nuw nsw i64 %i.a, 2
  %i.ct = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.1, i64 noundef %i.cs) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

.preheader.lr.ph.i.i.i:                           ; preds = %._crit_edge.i.i
  %i.cu = uitofp nneg i32 %1 to float
  %xtraiter487 = and i64 %wide.trip.count313, 3   ; 3 uses
  %i.cv = icmp ult i64 %i.by, 3
  %unroll_iter492 = and i64 %wide.trip.count313, 2147483644
  %lcmp.mod489.not = icmp eq i64 %xtraiter487, 0
  %lcmp.mod491 = icmp ne i64 %xtraiter487, 0
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.lr.ph.i.i.i
  %indvars.iv43.i.i.i = phi i64 [ %indvars.iv.next44.i.i.i, %._crit_edge.us.i.i.i ], [ 0, %.preheader.lr.ph.i.i.i ] ; 3 uses
  %.02938.us.i.i.i = phi double [ %i.em, %._crit_edge.us.i.i.i ], [ 0.000000e+00, %.preheader.lr.ph.i.i.i ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv43.i.i.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !11 ; 5 uses
  %i.cy = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.02938.us.i.i.i, i64 1 ; 2 uses
  br i1 %i.cv, label %.epil.preheader, label %.preheader.us.i.i.i.new

.preheader.us.i.i.i.new:                          ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.preheader.us.i.i.i.new ], [ 0, %.preheader.us.i.i.i ] ; 5 uses
  %i.cz = phi <2 x double> [ %i.ea, %.preheader.us.i.i.i.new ], [ %i.cy, %.preheader.us.i.i.i ]
  %niter493 = phi i64 [ %niter493.next.3, %.preheader.us.i.i.i.new ], [ 0, %.preheader.us.i.i.i ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i
  %i.db = load i32, ptr %i.da, align 4, !tbaa !13
  %i.dc = sitofp i32 %i.db to double
  %i.dd = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.de, <2 x double> %i.cz)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !13
  %i.dj = sitofp i32 %i.di to double
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dl, <2 x double> %i.df)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !13
  %i.dq = sitofp i32 %i.dp to double
  %i.dr = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.ds, <2 x double> %i.dm)
end_hunk_0
