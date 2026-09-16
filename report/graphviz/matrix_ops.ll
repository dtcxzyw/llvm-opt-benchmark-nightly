Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/matrix_ops?download=true
inline.NumInlined: 30
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@power_iteration:bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %.059.i225, i64 16
  %i.it = load double, ptr %i.in, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.068.i226, i64 16 ; 2 uses
  %i.iv = load double, ptr %i.ip, align 8, !tbaa !18
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.it, double %i.iv)
  store double %i.iw, ptr %i.ip, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.059.i225, i64 24
  %i.iy = load double, ptr %i.is, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.068.i226, i64 24 ; 2 uses
  %i.ja = load double, ptr %i.iu, align 8, !tbaa !18
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.iy, double %i.ja)
  store double %i.jb, ptr %i.iu, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %.059.i225, i64 32
  %i.jd = load double, ptr %i.ix, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.068.i226, i64 32
  %i.jf = load double, ptr %i.iz, align 8, !tbaa !18
  %i.jg = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.jd, double %i.jf)
  store double %i.jg, ptr %i.iz, align 8, !tbaa !18
  %i.jh = add nsw i32 %.010.i224, -4              ; 2 uses
  %.not.i227.3 = icmp eq i32 %i.jh, 0
  br i1 %.not.i227.3, label %scadd.exit228.loopexit, label %.lr.ph.i223, !llvm.loop !64

scadd.exit228.loopexit:                           ; preds = %.lr.ph.i223.prol.loopexit, %.lr.ph.i223, %middle.block440
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %indvars.iv358
  br i1 %exitcond357.not, label %.lr.ph.i.i207.preheader, label %.lr.ph.preheader.i214, !llvm.loop !65

.lr.ph.preheader.i229:                            ; preds = %norm.exit212.loopexit
  %i.ji = fdiv double 1.000000e+00, %i.gu         ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i231.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i229
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ji, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jj, align 8, !tbaa !18
  %wide.load424 = load <2 x double>, ptr %i.jk, align 8, !tbaa !18
  %i.jl = fmul <2 x double> %broadcast.splat, %wide.load
  %i.jm = fmul <2 x double> %broadcast.splat, %wide.load424
  store <2 x double> %i.jl, ptr %i.jj, align 8, !tbaa !18
  store <2 x double> %i.jm, ptr %i.jk, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i239.preheader, label %.lr.ph.i231.preheader

.lr.ph.i231.preheader:                            ; preds = %.lr.ph.preheader.i229, %middle.block
  %indvars.iv.i232.ph = phi i64 [ 0, %.lr.ph.preheader.i229 ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.lr.ph.i231.preheader, %.lr.ph.i231
  %indvars.iv.i232 = phi i64 [ %indvars.iv.next.i233, %.lr.ph.i231 ], [ %indvars.iv.i232.ph, %.lr.ph.i231.preheader ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i232 ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !18
  %i.jq = fmul double %i.ji, %i.jp
  store double %i.jq, ptr %i.jo, align 8, !tbaa !18
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i232, 1 ; 2 uses
  %exitcond.not.i234 = icmp eq i64 %indvars.iv.next.i233, %wide.trip.count.i
  br i1 %exitcond.not.i234, label %.lr.ph.i239.preheader, label %.lr.ph.i231, !llvm.loop !67

.lr.ph.i239.preheader:                            ; preds = %.lr.ph.i231, %middle.block
  br i1 %i.bb, label %.lr.ph.i239.epil.preheader, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %.lr.ph.i239
  %indvars.iv.i240 = phi i64 [ %indvars.iv.next.i242.3, %.lr.ph.i239 ], [ 0, %.lr.ph.i239.preheader ] ; 6 uses
  %.010.i241 = phi double [ %i.kk, %.lr.ph.i239 ], [ 0.000000e+00, %.lr.ph.i239.preheader ]
  %niter580 = phi i64 [ %niter580.next.3, %.lr.ph.i239 ], [ 0, %.lr.ph.i239.preheader ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i240
  %i.js = load double, ptr %i.jr, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i240
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !18
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.js, double %i.ju, double %.010.i241)
  %indvars.iv.next.i242 = or disjoint i64 %indvars.iv.i240, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i242
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i242
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !18
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.jx, double %i.jz, double %i.jv)
  %indvars.iv.next.i242.1 = or disjoint i64 %indvars.iv.i240, 2 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i242.1
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i242.1
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !18
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.ke, double %i.ka)
  %indvars.iv.next.i242.2 = or disjoint i64 %indvars.iv.i240, 3 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i242.2
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !18
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i242.2
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !18
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kh, double %i.kj, double %i.kf) ; 3 uses
  %indvars.iv.next.i242.3 = add nuw nsw i64 %indvars.iv.i240, 4 ; 2 uses
  %niter580.next.3 = add i64 %niter580, 4         ; 2 uses
  %niter580.ncmp.3 = icmp eq i64 %niter580.next.3, %unroll_iter579
  br i1 %niter580.ncmp.3, label %vectors_inner_product.exit244.loopexit.unr-lcssa, label %.lr.ph.i239, !llvm.loop !0

vectors_inner_product.exit244.loopexit.unr-lcssa: ; preds = %.lr.ph.i239
  br i1 %lcmp.mod576.not, label %vectors_inner_product.exit244.loopexit, label %.lr.ph.i239.epil.preheader

.lr.ph.i239.epil.preheader:                       ; preds = %vectors_inner_product.exit244.loopexit.unr-lcssa, %.lr.ph.i239.preheader
  %indvars.iv.i240.epil.init = phi i64 [ 0, %.lr.ph.i239.preheader ], [ %indvars.iv.next.i242.3, %vectors_inner_product.exit244.loopexit.unr-lcssa ]
  %.010.i241.epil.init = phi double [ 0.000000e+00, %.lr.ph.i239.preheader ], [ %i.kk, %vectors_inner_product.exit244.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod578)
  br label %.lr.ph.i239.epil

.lr.ph.i239.epil:                                 ; preds = %.lr.ph.i239.epil, %.lr.ph.i239.epil.preheader
  %indvars.iv.i240.epil = phi i64 [ %indvars.iv.next.i242.epil, %.lr.ph.i239.epil ], [ %indvars.iv.i240.epil.init, %.lr.ph.i239.epil.preheader ] ; 3 uses
  %.010.i241.epil = phi double [ %i.kp, %.lr.ph.i239.epil ], [ %.010.i241.epil.init, %.lr.ph.i239.epil.preheader ]
  %epil.iter575 = phi i64 [ %epil.iter575.next, %.lr.ph.i239.epil ], [ 0, %.lr.ph.i239.epil.preheader ]
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i240.epil
  %i.km = load double, ptr %i.kl, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i240.epil
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !18
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.km, double %i.ko, double %.010.i241.epil) ; 2 uses
  %indvars.iv.next.i242.epil = add nuw nsw i64 %indvars.iv.i240.epil, 1
  %epil.iter575.next = add i64 %epil.iter575, 1   ; 2 uses
  %epil.iter575.cmp.not = icmp eq i64 %epil.iter575.next, %xtraiter574
  br i1 %epil.iter575.cmp.not, label %vectors_inner_product.exit244.loopexit, label %.lr.ph.i239.epil, !llvm.loop !68

vectors_inner_product.exit244.loopexit:           ; preds = %.lr.ph.i239.epil, %vectors_inner_product.exit244.loopexit.unr-lcssa
  %.lcssa533 = phi double [ %i.kk, %vectors_inner_product.exit244.loopexit.unr-lcssa ], [ %i.kp, %.lr.ph.i239.epil ] ; 2 uses
  %i.kq = tail call double @llvm.fabs.f64(double %.lcssa533)
  %i.kr = fcmp olt double %i.kq, f0x3FEFF7CED916872B
  br i1 %i.kr, label %.preheader.lr.ph.i, label %bb.m, !llvm.loop !69

bb.m:                                             ; preds = %vectors_inner_product.exit244.loopexit
  %i.ks = fmul double %i.gu, %.lcssa533
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv358
  store double %i.ks, ptr %i.kt, align 8, !tbaa !18
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count361
  br i1 %exitcond362.not, label %.preheader, label %bb.k, !llvm.loop !70

.loopexit.loopexit:                               ; preds = %norm.exit212.loopexit
  %i.ku = trunc nuw nsw i64 %indvars.iv358 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %gv_calloc.exit187, %.loopexit.loopexit
  %i.kv = phi ptr [ %i.v, %.loopexit.loopexit ], [ %i.aa, %gv_calloc.exit187 ] ; 3 uses
  %.0160302 = phi i32 [ %i.ku, %.loopexit.loopexit ], [ 0, %gv_calloc.exit187 ] ; 2 uses
  %.2167 = phi i32 [ %i.gb, %.loopexit.loopexit ], [ 0, %gv_calloc.exit187 ] ; 2 uses
  %i.kw = icmp slt i32 %.0160302, %spec.select
  br i1 %i.kw, label %.lr.ph318, label %.preheader

.lr.ph318:                                        ; preds = %.loopexit
  %i.kx = icmp sgt i32 %1, 0
  %wide.trip.count.i263 = zext i32 %1 to i64      ; 9 uses
  %i.ky = zext i32 %.0160302 to i64
  %i.kz = add i32 %1, -1
  %i.la = zext i32 %i.kz to i64
  %i.lb = shl nuw nsw i64 %i.la, 3
  %i.lc = add nuw nsw i64 %i.lb, 8                ; 2 uses
  %i.ld = add nsw i64 %wide.trip.count.i263, -1   ; 2 uses
  %xtraiter581 = and i64 %wide.trip.count.i263, 3 ; 3 uses
  %i.le = icmp ult i64 %i.ld, 3
  %unroll_iter586 = and i64 %wide.trip.count.i263, 4294967292
  %lcmp.mod583.not = icmp eq i64 %xtraiter581, 0
  %lcmp.mod585 = icmp ne i64 %xtraiter581, 0
  %i.lf = add i32 %1, -1                          ; 2 uses
  %i.lg = zext i32 %i.lf to i64
  %i.lh = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %min.iters.check506 = icmp ult i32 %i.lf, 3
  %n.vec508 = and i64 %i.lh, 8589934588           ; 4 uses
  %i.li = trunc i64 %n.vec508 to i32
  %i.lj = sub i32 %1, %i.li
  %i.lk = shl nuw nsw i64 %n.vec508, 3            ; 2 uses
  %cmp.n521 = icmp eq i64 %i.lh, %n.vec508
  %xtraiter591 = and i64 %wide.trip.count.i263, 3 ; 3 uses
  %i.ll = icmp ult i64 %i.ld, 3
  %unroll_iter596 = and i64 %wide.trip.count.i263, 4294967292
  %lcmp.mod593.not = icmp eq i64 %xtraiter591, 0
  %lcmp.mod595 = icmp ne i64 %xtraiter591, 0
  %min.iters.check486 = icmp ult i32 %1, 4
  %n.vec488 = and i64 %wide.trip.count.i263, 4294967292 ; 3 uses
  %cmp.n497 = icmp eq i64 %n.vec488, %wide.trip.count.i263
  br label %bb.n

.preheader:                                       ; preds = %bb.m, %vectors_scalar_mult.exit260.loopexit, %.loopexit
  %.2167395 = phi i32 [ %.2167, %vectors_scalar_mult.exit260.loopexit ], [ %.2167, %.loopexit ], [ %i.gb, %bb.m ]
  %i.lm = phi ptr [ %i.kv, %vectors_scalar_mult.exit260.loopexit ], [ %i.kv, %.loopexit ], [ %i.v, %bb.m ] ; 6 uses
  %i.ln = icmp sgt i32 %spec.select, 1
  br i1 %i.ln, label %.lr.ph328, label %._crit_edge329

.lr.ph328:                                        ; preds = %.preheader
  %i.lo = add nsw i32 %spec.select, -1
  %i.lp = zext nneg i32 %1 to i64
  %i.lq = shl nuw nsw i64 %i.lp, 3                ; 3 uses
  %wide.trip.count386 = zext nneg i32 %i.lo to i64
  %wide.trip.count381 = zext nneg i32 %spec.select to i64 ; 3 uses
  %i.lr = add nsw i64 %wide.trip.count381, -2
  br label %.lr.ph323.preheader

bb.n:                                             ; preds = %.lr.ph318, %vectors_scalar_mult.exit260.loopexit
  %indvars.iv373 = phi i64 [ %i.ky, %.lr.ph318 ], [ %indvars.iv.next374, %vectors_scalar_mult.exit260.loopexit ] ; 5 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv373
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !16 ; 19 uses
  br i1 %i.kx, label %.lr.ph313, label %.preheader286

.preheader286:                                    ; preds = %.lr.ph313, %bb.n
  %.not331 = icmp eq i64 %indvars.iv373, 0
  br i1 %.not331, label %.lr.ph.i.i248.preheader, label %.lr.ph.preheader.i262.preheader

.lr.ph.i.i248.preheader:                          ; preds = %scadd.exit276.loopexit, %.preheader286
  br i1 %i.ll, label %.lr.ph.i.i248.epil.preheader, label %.lr.ph.i.i248

.lr.ph.preheader.i262.preheader:                  ; preds = %.preheader286
  %scevgep500 = getelementptr i8, ptr %i.lt, i64 %i.lc
  %i.lu = getelementptr i8, ptr %i.lt, i64 %i.lk
  br label %.lr.ph.preheader.i262

.lr.ph313:                                        ; preds = %bb.n, %.lr.ph313
  %indvars.iv363 = phi i64 [ %indvars.iv.next364, %.lr.ph313 ], [ 0, %bb.n ] ; 2 uses
  %i.lv = tail call i32 @rand() #23
  %i.lw = srem i32 %i.lv, 100
  %i.lx = sitofp i32 %i.lw to double
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv363
  store double %i.lx, ptr %i.ly, align 8, !tbaa !18
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %exitcond367.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count.i263
  br i1 %exitcond367.not, label %.preheader286, label %.lr.ph313, !llvm.loop !71

.lr.ph.i.i248:                                    ; preds = %.lr.ph.i.i248.preheader, %.lr.ph.i.i248
  %indvars.iv.i.i249 = phi i64 [ %indvars.iv.next.i.i251.3, %.lr.ph.i.i248 ], [ 0, %.lr.ph.i.i248.preheader ] ; 5 uses
  %.010.i.i250 = phi double [ %i.mn, %.lr.ph.i.i248 ], [ 0.000000e+00, %.lr.ph.i.i248.preheader ]
  %niter597 = phi i64 [ %niter597.next.3, %.lr.ph.i.i248 ], [ 0, %.lr.ph.i.i248.preheader ]
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i.i249
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !18 ; 2 uses
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.ma, double %i.ma, double %.010.i.i250)
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i.i249
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load double, ptr %i.md, align 8, !tbaa !18 ; 2 uses
  %i.mf = tail call double @llvm.fmuladd.f64(double %i.me, double %i.me, double %i.mb)
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i.i249
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !18 ; 2 uses
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.mi, double %i.mi, double %i.mf)
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i.i249
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !18 ; 2 uses
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.mm, double %i.mm, double %i.mj) ; 3 uses
  %indvars.iv.next.i.i251.3 = add nuw nsw i64 %indvars.iv.i.i249, 4 ; 2 uses
  %niter597.next.3 = add i64 %niter597, 4         ; 2 uses
  %niter597.ncmp.3 = icmp eq i64 %niter597.next.3, %unroll_iter596
  br i1 %niter597.ncmp.3, label %norm.exit253.unr-lcssa, label %.lr.ph.i.i248, !llvm.loop !0

norm.exit253.unr-lcssa:                           ; preds = %.lr.ph.i.i248
  br i1 %lcmp.mod593.not, label %norm.exit253, label %.lr.ph.i.i248.epil.preheader

.lr.ph.i.i248.epil.preheader:                     ; preds = %norm.exit253.unr-lcssa, %.lr.ph.i.i248.preheader
  %indvars.iv.i.i249.epil.init = phi i64 [ 0, %.lr.ph.i.i248.preheader ], [ %indvars.iv.next.i.i251.3, %norm.exit253.unr-lcssa ]
  %.010.i.i250.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i248.preheader ], [ %i.mn, %norm.exit253.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod595)
  br label %.lr.ph.i.i248.epil

.lr.ph.i.i248.epil:                               ; preds = %.lr.ph.i.i248.epil, %.lr.ph.i.i248.epil.preheader
  %indvars.iv.i.i249.epil = phi i64 [ %indvars.iv.next.i.i251.epil, %.lr.ph.i.i248.epil ], [ %indvars.iv.i.i249.epil.init, %.lr.ph.i.i248.epil.preheader ] ; 2 uses
  %.010.i.i250.epil = phi double [ %i.mq, %.lr.ph.i.i248.epil ], [ %.010.i.i250.epil.init, %.lr.ph.i.i248.epil.preheader ]
  %epil.iter592 = phi i64 [ %epil.iter592.next, %.lr.ph.i.i248.epil ], [ 0, %.lr.ph.i.i248.epil.preheader ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i.i249.epil
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !18 ; 2 uses
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.010.i.i250.epil) ; 2 uses
  %indvars.iv.next.i.i251.epil = add nuw nsw i64 %indvars.iv.i.i249.epil, 1
  %epil.iter592.next = add i64 %epil.iter592, 1   ; 2 uses
  %epil.iter592.cmp.not = icmp eq i64 %epil.iter592.next, %xtraiter591
  br i1 %epil.iter592.cmp.not, label %norm.exit253, label %.lr.ph.i.i248.epil, !llvm.loop !72

norm.exit253:                                     ; preds = %.lr.ph.i.i248.epil, %norm.exit253.unr-lcssa
  %.lcssa525 = phi double [ %i.mn, %norm.exit253.unr-lcssa ], [ %i.mq, %.lr.ph.i.i248.epil ]
  %i.mr = tail call double @sqrt(double noundef %.lcssa525) #23
  %i.ms = fdiv double 1.000000e+00, %i.mr         ; 2 uses
  br i1 %min.iters.check486, label %.lr.ph.i256.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %norm.exit253
  %broadcast.splatinsert489 = insertelement <2 x double> poison, double %i.ms, i64 0
  %broadcast.splat490 = shufflevector <2 x double> %broadcast.splatinsert489, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph487
  %index492 = phi i64 [ 0, %vector.ph487 ], [ %index.next495, %vector.body491 ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %index492 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 2 uses
  %wide.load493 = load <2 x double>, ptr %i.mt, align 8, !tbaa !18
  %wide.load494 = load <2 x double>, ptr %i.mu, align 8, !tbaa !18
  %i.mv = fmul <2 x double> %broadcast.splat490, %wide.load493
  %i.mw = fmul <2 x double> %broadcast.splat490, %wide.load494
  store <2 x double> %i.mv, ptr %i.mt, align 8, !tbaa !18
  store <2 x double> %i.mw, ptr %i.mu, align 8, !tbaa !18
  %index.next495 = add nuw i64 %index492, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next495, %n.vec488
  br i1 %i.mx, label %middle.block496, label %vector.body491, !llvm.loop !73

middle.block496:                                  ; preds = %vector.body491
  br i1 %cmp.n497, label %vectors_scalar_mult.exit260.loopexit, label %.lr.ph.i256.preheader

.lr.ph.i256.preheader:                            ; preds = %norm.exit253, %middle.block496
  %indvars.iv.i257.ph = phi i64 [ 0, %norm.exit253 ], [ %n.vec488, %middle.block496 ]
  br label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %.lr.ph.i256.preheader, %.lr.ph.i256
  %indvars.iv.i257 = phi i64 [ %indvars.iv.next.i258, %.lr.ph.i256 ], [ %indvars.iv.i257.ph, %.lr.ph.i256.preheader ] ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i257 ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !18
  %i.na = fmul double %i.ms, %i.mz
  store double %i.na, ptr %i.my, align 8, !tbaa !18
  %indvars.iv.next.i258 = add nuw nsw i64 %indvars.iv.i257, 1 ; 2 uses
  %exitcond.not.i259 = icmp eq i64 %indvars.iv.next.i258, %wide.trip.count.i263
  br i1 %exitcond.not.i259, label %vectors_scalar_mult.exit260.loopexit, label %.lr.ph.i256, !llvm.loop !74

vectors_scalar_mult.exit260.loopexit:             ; preds = %.lr.ph.i256, %middle.block496
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %indvars.iv373
  store double 0.000000e+00, ptr %i.nb, align 8, !tbaa !18
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %i.nc = trunc nuw i64 %indvars.iv.next374 to i32
  %i.nd = icmp sgt i32 %spec.select, %i.nc
  br i1 %i.nd, label %bb.n, label %.preheader, !llvm.loop !75

.lr.ph.preheader.i262:                            ; preds = %.lr.ph.preheader.i262.preheader, %scadd.exit276.loopexit
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %scadd.exit276.loopexit ], [ 0, %.lr.ph.preheader.i262.preheader ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv368
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !16 ; 11 uses
  br i1 %i.le, label %.lr.ph.i264.epil.preheader, label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %.lr.ph.preheader.i262, %.lr.ph.i264
  %indvars.iv.i265 = phi i64 [ %indvars.iv.next.i267.3, %.lr.ph.i264 ], [ 0, %.lr.ph.preheader.i262 ] ; 6 uses
  %.010.i266 = phi double [ %i.nz, %.lr.ph.i264 ], [ 0.000000e+00, %.lr.ph.preheader.i262 ]
  %niter587 = phi i64 [ %niter587.next.3, %.lr.ph.i264 ], [ 0, %.lr.ph.preheader.i262 ]
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.i265
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !18
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i265
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !18
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.nj, double %.010.i266)
  %indvars.iv.next.i267 = or disjoint i64 %indvars.iv.i265, 1 ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next.i267
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !18
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.next.i267
  %i.no = load double, ptr %i.nn, align 8, !tbaa !18
  %i.np = tail call double @llvm.fmuladd.f64(double %i.nm, double %i.no, double %i.nk)
  %indvars.iv.next.i267.1 = or disjoint i64 %indvars.iv.i265, 2 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next.i267.1
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !18
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.next.i267.1
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !18
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.nt, double %i.np)
  %indvars.iv.next.i267.2 = or disjoint i64 %indvars.iv.i265, 3 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.next.i267.2
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !18
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.next.i267.2
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !18
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.nw, double %i.ny, double %i.nu) ; 3 uses
  %indvars.iv.next.i267.3 = add nuw nsw i64 %indvars.iv.i265, 4 ; 2 uses
  %niter587.next.3 = add i64 %niter587, 4         ; 2 uses
  %niter587.ncmp.3 = icmp eq i64 %niter587.next.3, %unroll_iter586
  br i1 %niter587.ncmp.3, label %vectors_inner_product.exit269.loopexit.unr-lcssa, label %.lr.ph.i264, !llvm.loop !0

vectors_inner_product.exit269.loopexit.unr-lcssa: ; preds = %.lr.ph.i264
  br i1 %lcmp.mod583.not, label %vectors_inner_product.exit269.loopexit, label %.lr.ph.i264.epil.preheader

.lr.ph.i264.epil.preheader:                       ; preds = %vectors_inner_product.exit269.loopexit.unr-lcssa, %.lr.ph.preheader.i262
  %indvars.iv.i265.epil.init = phi i64 [ 0, %.lr.ph.preheader.i262 ], [ %indvars.iv.next.i267.3, %vectors_inner_product.exit269.loopexit.unr-lcssa ]
  %.010.i266.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i262 ], [ %i.nz, %vectors_inner_product.exit269.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod585)
  br label %.lr.ph.i264.epil

.lr.ph.i264.epil:                                 ; preds = %.lr.ph.i264.epil, %.lr.ph.i264.epil.preheader
  %indvars.iv.i265.epil = phi i64 [ %indvars.iv.i265.epil.init, %.lr.ph.i264.epil.preheader ], [ %indvars.iv.next.i267.epil, %.lr.ph.i264.epil ] ; 3 uses
  %.010.i266.epil = phi double [ %.010.i266.epil.init, %.lr.ph.i264.epil.preheader ], [ %i.oe, %.lr.ph.i264.epil ]
  %epil.iter582 = phi i64 [ 0, %.lr.ph.i264.epil.preheader ], [ %epil.iter582.next, %.lr.ph.i264.epil ]
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv.i265.epil
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !18
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.i265.epil
  %i.od = load double, ptr %i.oc, align 8, !tbaa !18
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.ob, double %i.od, double %.010.i266.epil) ; 2 uses
  %indvars.iv.next.i267.epil = add nuw nsw i64 %indvars.iv.i265.epil, 1
  %epil.iter582.next = add i64 %epil.iter582, 1   ; 2 uses
  %epil.iter582.cmp.not = icmp eq i64 %epil.iter582.next, %xtraiter581
  br i1 %epil.iter582.cmp.not, label %vectors_inner_product.exit269.loopexit, label %.lr.ph.i264.epil, !llvm.loop !76

vectors_inner_product.exit269.loopexit:           ; preds = %.lr.ph.i264.epil, %vectors_inner_product.exit269.loopexit.unr-lcssa
  %.lcssa = phi double [ %i.nz, %vectors_inner_product.exit269.loopexit.unr-lcssa ], [ %i.oe, %.lr.ph.i264.epil ]
  %i.of = fneg double %.lcssa                     ; 6 uses
  br i1 %min.iters.check506, label %.lr.ph.i271.preheader, label %vector.memcheck499

vector.memcheck499:                               ; preds = %vectors_inner_product.exit269.loopexit
  %scevgep501 = getelementptr i8, ptr %i.nf, i64 %i.lc
  %bound0502 = icmp ult ptr %i.lt, %scevgep501
  %bound1503 = icmp ult ptr %i.nf, %scevgep500
  %found.conflict504 = and i1 %bound0502, %bound1503
  br i1 %found.conflict504, label %.lr.ph.i271.preheader, label %vector.ph507

vector.ph507:                                     ; preds = %vector.memcheck499
  %i.og = getelementptr i8, ptr %i.nf, i64 %i.lk
  %broadcast.splatinsert509 = insertelement <2 x double> poison, double %i.of, i64 0
  %broadcast.splat510 = shufflevector <2 x double> %broadcast.splatinsert509, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph507
  %index512 = phi i64 [ 0, %vector.ph507 ], [ %index.next519, %vector.body511 ] ; 2 uses
  %i.oh = shl i64 %index512, 3                    ; 2 uses
  %next.gep513 = getelementptr i8, ptr %i.nf, i64 %i.oh ; 2 uses
  %next.gep514 = getelementptr i8, ptr %i.lt, i64 %i.oh ; 3 uses
  %i.oi = getelementptr i8, ptr %next.gep513, i64 16
  %wide.load515 = load <2 x double>, ptr %next.gep513, align 8, !tbaa !18, !alias.scope !101
  %wide.load516 = load <2 x double>, ptr %i.oi, align 8, !tbaa !18, !alias.scope !101
  %i.oj = getelementptr i8, ptr %next.gep514, i64 16 ; 2 uses
  %wide.load517 = load <2 x double>, ptr %next.gep514, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  %wide.load518 = load <2 x double>, ptr %i.oj, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  %i.ok = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat510, <2 x double> %wide.load515, <2 x double> %wide.load517)
  %i.ol = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat510, <2 x double> %wide.load516, <2 x double> %wide.load518)
  store <2 x double> %i.ok, ptr %next.gep514, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  store <2 x double> %i.ol, ptr %i.oj, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  %index.next519 = add nuw i64 %index512, 4       ; 2 uses
  %i.om = icmp eq i64 %index.next519, %n.vec508
  br i1 %i.om, label %middle.block520, label %vector.body511, !llvm.loop !80

middle.block520:                                  ; preds = %vector.body511
  br i1 %cmp.n521, label %scadd.exit276.loopexit, label %.lr.ph.i271.preheader

.lr.ph.i271.preheader:                            ; preds = %vector.memcheck499, %vectors_inner_product.exit269.loopexit, %middle.block520
  %.010.i272.ph = phi i32 [ %1, %vector.memcheck499 ], [ %1, %vectors_inner_product.exit269.loopexit ], [ %i.lj, %middle.block520 ] ; 4 uses
  %.059.i273.ph = phi ptr [ %i.nf, %vector.memcheck499 ], [ %i.nf, %vectors_inner_product.exit269.loopexit ], [ %i.og, %middle.block520 ] ; 2 uses
  %.068.i274.ph = phi ptr [ %i.lt, %vector.memcheck499 ], [ %i.lt, %vectors_inner_product.exit269.loopexit ], [ %i.lu, %middle.block520 ] ; 2 uses
  %i.on = add nsw i32 %.010.i272.ph, -1
  %xtraiter588 = and i32 %.010.i272.ph, 3         ; 2 uses
  %lcmp.mod589.not = icmp eq i32 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %.lr.ph.i271.prol.loopexit, label %.lr.ph.i271.prol

.lr.ph.i271.prol:                                 ; preds = %.lr.ph.i271.preheader, %.lr.ph.i271.prol
  %.010.i272.prol = phi i32 [ %i.ot, %.lr.ph.i271.prol ], [ %.010.i272.ph, %.lr.ph.i271.preheader ]
  %.059.i273.prol = phi ptr [ %i.oo, %.lr.ph.i271.prol ], [ %.059.i273.ph, %.lr.ph.i271.preheader ] ; 2 uses
  %.068.i274.prol = phi ptr [ %i.oq, %.lr.ph.i271.prol ], [ %.068.i274.ph, %.lr.ph.i271.preheader ] ; 3 uses
  %prol.iter590 = phi i32 [ %prol.iter590.next, %.lr.ph.i271.prol ], [ 0, %.lr.ph.i271.preheader ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.059.i273.prol, i64 8 ; 2 uses
  %i.op = load double, ptr %.059.i273.prol, align 8, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %.068.i274.prol, i64 8 ; 2 uses
  %i.or = load double, ptr %.068.i274.prol, align 8, !tbaa !18
  %i.os = tail call double @llvm.fmuladd.f64(double %i.of, double %i.op, double %i.or)
  store double %i.os, ptr %.068.i274.prol, align 8, !tbaa !18
  %i.ot = add nsw i32 %.010.i272.prol, -1         ; 2 uses
  %prol.iter590.next = add i32 %prol.iter590, 1   ; 2 uses
  %prol.iter590.cmp.not = icmp eq i32 %prol.iter590.next, %xtraiter588
  br i1 %prol.iter590.cmp.not, label %.lr.ph.i271.prol.loopexit, label %.lr.ph.i271.prol, !llvm.loop !81

.lr.ph.i271.prol.loopexit:                        ; preds = %.lr.ph.i271.prol, %.lr.ph.i271.preheader
  %.010.i272.unr = phi i32 [ %.010.i272.ph, %.lr.ph.i271.preheader ], [ %i.ot, %.lr.ph.i271.prol ]
  %.059.i273.unr = phi ptr [ %.059.i273.ph, %.lr.ph.i271.preheader ], [ %i.oo, %.lr.ph.i271.prol ]
  %.068.i274.unr = phi ptr [ %.068.i274.ph, %.lr.ph.i271.preheader ], [ %i.oq, %.lr.ph.i271.prol ]
  %i.ou = icmp ult i32 %i.on, 3
  br i1 %i.ou, label %scadd.exit276.loopexit, label %.lr.ph.i271

.lr.ph.i271:                                      ; preds = %.lr.ph.i271.prol.loopexit, %.lr.ph.i271
  %.010.i272 = phi i32 [ %i.pp, %.lr.ph.i271 ], [ %.010.i272.unr, %.lr.ph.i271.prol.loopexit ]
  %.059.i273 = phi ptr [ %i.pk, %.lr.ph.i271 ], [ %.059.i273.unr, %.lr.ph.i271.prol.loopexit ] ; 5 uses
  %.068.i274 = phi ptr [ %i.pm, %.lr.ph.i271 ], [ %.068.i274.unr, %.lr.ph.i271.prol.loopexit ] ; 6 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.059.i273, i64 8
  %i.ow = load double, ptr %.059.i273, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw i8, ptr %.068.i274, i64 8 ; 2 uses
  %i.oy = load double, ptr %.068.i274, align 8, !tbaa !18
  %i.oz = tail call double @llvm.fmuladd.f64(double %i.of, double %i.ow, double %i.oy)
  store double %i.oz, ptr %.068.i274, align 8, !tbaa !18
  %i.pa = getelementptr inbounds nuw i8, ptr %.059.i273, i64 16
  %i.pb = load double, ptr %i.ov, align 8, !tbaa !18
  %i.pc = getelementptr inbounds nuw i8, ptr %.068.i274, i64 16 ; 2 uses
  %i.pd = load double, ptr %i.ox, align 8, !tbaa !18
  %i.pe = tail call double @llvm.fmuladd.f64(double %i.of, double %i.pb, double %i.pd)
  store double %i.pe, ptr %i.ox, align 8, !tbaa !18
  %i.pf = getelementptr inbounds nuw i8, ptr %.059.i273, i64 24
  %i.pg = load double, ptr %i.pa, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw i8, ptr %.068.i274, i64 24 ; 2 uses
  %i.pi = load double, ptr %i.pc, align 8, !tbaa !18
  %i.pj = tail call double @llvm.fmuladd.f64(double %i.of, double %i.pg, double %i.pi)
  store double %i.pj, ptr %i.pc, align 8, !tbaa !18
  %i.pk = getelementptr inbounds nuw i8, ptr %.059.i273, i64 32
  %i.pl = load double, ptr %i.pf, align 8, !tbaa !18
  %i.pm = getelementptr inbounds nuw i8, ptr %.068.i274, i64 32
  %i.pn = load double, ptr %i.ph, align 8, !tbaa !18
  %i.po = tail call double @llvm.fmuladd.f64(double %i.of, double %i.pl, double %i.pn)
  store double %i.po, ptr %i.ph, align 8, !tbaa !18
  %i.pp = add nsw i32 %.010.i272, -4              ; 2 uses
  %.not.i275.3 = icmp eq i32 %i.pp, 0
  br i1 %.not.i275.3, label %scadd.exit276.loopexit, label %.lr.ph.i271, !llvm.loop !82

scadd.exit276.loopexit:                           ; preds = %.lr.ph.i271.prol.loopexit, %.lr.ph.i271, %middle.block520
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %exitcond372.not = icmp eq i64 %indvars.iv.next369, %indvars.iv373
  br i1 %exitcond372.not, label %.lr.ph.i.i248.preheader, label %.lr.ph.preheader.i262, !llvm.loop !83

.lr.ph323.preheader:                              ; preds = %bb.o, %.lr.ph328
  %indvars.iv383 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next384, %bb.o ] ; 7 uses
  %indvars.iv376 = phi i64 [ 1, %.lr.ph328 ], [ %indvars.iv.next377, %bb.o ] ; 5 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv383 ; 2 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !18 ; 4 uses
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.ps = trunc nuw nsw i64 %indvars.iv383 to i32 ; 2 uses
  %i.pt = sub nsw i64 %indvars.iv383, %wide.trip.count381
  %i.pu = and i64 %i.pt, 1
  %lcmp.mod599.not.not = icmp eq i64 %i.pu, 0
  br i1 %lcmp.mod599.not.not, label %.lr.ph323.prol, label %.lr.ph323.prol.loopexit

.lr.ph323.prol:                                   ; preds = %.lr.ph323.preheader
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv376
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !18 ; 2 uses
  %i.px = fcmp olt double %i.pr, %i.pw            ; 2 uses
  %i.py = trunc nuw nsw i64 %indvars.iv376 to i32
  %.1154.prol = select i1 %i.px, i32 %i.py, i32 %i.ps ; 2 uses
  %.1.prol = select i1 %i.px, double %i.pw, double %i.pr ; 2 uses
  %indvars.iv.next379.prol = add nuw nsw i64 %indvars.iv376, 1
  br label %.lr.ph323.prol.loopexit

.lr.ph323.prol.loopexit:                          ; preds = %.lr.ph323.prol, %.lr.ph323.preheader
  %.1154.lcssa.unr = phi i32 [ poison, %.lr.ph323.preheader ], [ %.1154.prol, %.lr.ph323.prol ]
  %.1.lcssa.unr = phi double [ poison, %.lr.ph323.preheader ], [ %.1.prol, %.lr.ph323.prol ]
  %indvars.iv378.unr = phi i64 [ %indvars.iv376, %.lr.ph323.preheader ], [ %indvars.iv.next379.prol, %.lr.ph323.prol ]
  %.0152320.unr = phi double [ %i.pr, %.lr.ph323.preheader ], [ %.1.prol, %.lr.ph323.prol ]
  %.0153319.unr = phi i32 [ %i.ps, %.lr.ph323.preheader ], [ %.1154.prol, %.lr.ph323.prol ]
  %i.pz = icmp eq i64 %i.lr, %indvars.iv383
  br i1 %i.pz, label %._crit_edge324, label %.lr.ph323

._crit_edge324:                                   ; preds = %.lr.ph323, %.lr.ph323.prol.loopexit
  %.1154.lcssa = phi i32 [ %.1154.lcssa.unr, %.lr.ph323.prol.loopexit ], [ %.1154.1, %.lr.ph323 ] ; 2 uses
  %.1.lcssa = phi double [ %.1.lcssa.unr, %.lr.ph323.prol.loopexit ], [ %.1.1, %.lr.ph323 ]
  %i.qa = zext i32 %.1154.lcssa to i64
  %.not177 = icmp eq i64 %indvars.iv383, %i.qa
  br i1 %.not177, label %bb.o, label %.lr.ph.preheader.i281

.lr.ph323:                                        ; preds = %.lr.ph323.prol.loopexit, %.lr.ph323
  %indvars.iv378 = phi i64 [ %indvars.iv.next379.1, %.lr.ph323 ], [ %indvars.iv378.unr, %.lr.ph323.prol.loopexit ] ; 4 uses
  %.0152320 = phi double [ %.1.1, %.lr.ph323 ], [ %.0152320.unr, %.lr.ph323.prol.loopexit ] ; 2 uses
  %.0153319 = phi i32 [ %.1154.1, %.lr.ph323 ], [ %.0153319.unr, %.lr.ph323.prol.loopexit ]
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv378
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !18 ; 2 uses
  %i.qd = fcmp olt double %.0152320, %i.qc        ; 2 uses
  %i.qe = trunc nuw nsw i64 %indvars.iv378 to i32
  %.1154 = select i1 %i.qd, i32 %i.qe, i32 %.0153319
  %.1 = select i1 %i.qd, double %i.qc, double %.0152320 ; 2 uses
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.next379
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !18 ; 2 uses
  %i.qh = fcmp olt double %.1, %i.qg              ; 2 uses
  %i.qi = trunc nuw nsw i64 %indvars.iv.next379 to i32
  %.1154.1 = select i1 %i.qh, i32 %i.qi, i32 %.1154 ; 2 uses
  %.1.1 = select i1 %i.qh, double %i.qg, double %.1 ; 2 uses
  %indvars.iv.next379.1 = add nuw nsw i64 %indvars.iv378, 2 ; 2 uses
  %exitcond382.not.1 = icmp eq i64 %indvars.iv.next379.1, %wide.trip.count381
  br i1 %exitcond382.not.1, label %._crit_edge324, label %.lr.ph323, !llvm.loop !84

.lr.ph.preheader.i281:                            ; preds = %._crit_edge324
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv383
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr readonly align 8 %i.qk, i64 %i.lq, i1 false), !tbaa !18, !alias.scope !103
  %i.ql = sext i32 %.1154.lcssa to i64            ; 2 uses
  %i.qm = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ql
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.qk, ptr readonly align 8 %i.qn, i64 %i.lq, i1 false), !tbaa !18, !alias.scope !104
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.qn, ptr readonly align 8 %i.p, i64 %i.lq, i1 false), !tbaa !18, !alias.scope !105
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.ql
  store double %i.pr, ptr %i.qo, align 8, !tbaa !18
  store double %.1.lcssa, ptr %i.pq, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.preheader.i281, %._crit_edge324
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1
  %exitcond387.not = icmp eq i64 %indvars.iv.next384, %wide.trip.count386
  br i1 %exitcond387.not, label %._crit_edge329, label %.lr.ph323.preheader, !llvm.loop !94

._crit_edge329:                                   ; preds = %bb.o, %.preheader
  tail call void @free(ptr noundef %i.lm) #23
  tail call void @free(ptr noundef %i.p) #23
  tail call void @free(ptr noundef %i.q) #23
  %i.qp = icmp sle i32 %.2167395, %i.r
  ret i1 %i.qp
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden double @vectors_inner_product(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %0, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.010 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call double @llvm.fmuladd.f64(double %i.d, double %i.f, double %.010)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.i = load double, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.k = load double, ptr %i.j, align 8, !tbaa !18
  %i.l = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %i.g)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.n = load double, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.l)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.u = load double, ptr %i.t, align 8, !tbaa !18
  %i.v = tail call double @llvm.fmuladd.f64(double %i.s, double %i.u, double %i.q) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.010.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.010.epil = phi double [ %.010.epil.init, %.lr.ph.epil.preheader ], [ %i.aa, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.x = load double, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.z = load double, ptr %i.y, align 8, !tbaa !18
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.x, double %i.z, double %.010.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !106

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @scadd(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 6 uses
  %.not7 = icmp eq i32 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 6
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  %scevgep11 = getelementptr i8, ptr %3, i64 %i.e
  %bound0 = icmp ult ptr %0, %scevgep11
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4294967292               ; 4 uses
  %i.f = trunc nuw i64 %n.vec to i32
  %i.g = sub i32 %i.a, %i.f
  %i.h = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.i = getelementptr i8, ptr %3, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  %broadcast.splatinsert = insertelement <2 x double> poison, double %2, i64 0
end_hunk_0
begin_hunk_1_@invert_vec:bb.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !29 ; 2 uses
  %i.v = fcmp une float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.w = fdiv float 1.000000e+00, %i.u
  store float %i.w, ptr %i.t, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !195

._crit_edge:                                      ; preds = %bb.c, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @sqrt_vecf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load float, ptr %i.c, align 4, !tbaa !29 ; 2 uses
  %i.e = fcmp ult float %i.d, 0.000000e+00
  br i1 %i.e, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call float @sqrtf(float noundef %i.d) #23
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.f, ptr %i.g, align 4, !tbaa !29
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.i = load float, ptr %i.h, align 4, !tbaa !29 ; 2 uses
  %i.j = fcmp ult float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.k = tail call float @sqrtf(float noundef %i.i) #23
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.k, ptr %i.l, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !196

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.n = load float, ptr %i.m, align 4, !tbaa !29 ; 2 uses
  %i.o = fcmp ult float %i.n, 0.000000e+00
  br i1 %i.o, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.p = tail call float @sqrtf(float noundef %i.n) #23
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  store float %i.p, ptr %i.q, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @invert_sqrt_vec(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !29 ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %.lr.ph.1

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call float @sqrtf(float noundef %i.d) #23
  %i.g = fdiv float 1.000000e+00, %i.f
  store float %i.g, ptr %i.c, align 4, !tbaa !29
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !29 ; 2 uses
  %i.k = fcmp ogt float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.1
  %i.l = tail call float @sqrtf(float noundef %i.j) #23
  %i.m = fdiv float 1.000000e+00, %i.l
  store float %i.m, ptr %i.i, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !197

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !29 ; 2 uses
  %i.p = fcmp ogt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.q = tail call float @sqrtf(float noundef %i.o) #23
  %i.r = fdiv float 1.000000e+00, %i.q
  store float %i.r, ptr %i.n, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #14 {
bb.a:
  tail call void @exit(i32 noundef 1) #24
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind }
attributes #24 = { cold noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 double", !12, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"any p2 pointer", !12, i64 0}
!24 = !{!"p2 float", !23, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 float", !12, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"float", !8, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"long", !8, i64 0}
!31 = !{!"p1 int", !12, i64 0}
!32 = !{!"p1 omnipotent char", !12, i64 0}
!33 = !{!"", !30, i64 0, !31, i64 8, !26, i64 16, !26, i64 24, !32, i64 32}
!34 = !{!33, !31, i64 8}
!35 = !{!33, !26, i64 16}
!36 = !{!33, !30, i64 0}
!37 = !{!9, !9, i64 0}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !"LVerDomain"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !19, !21, !22}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !19, !21}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19, !21, !22}
!49 = distinct !{!49, !19, !22, !21}
!50 = distinct !{!50, !"copy_vector"}
!51 = distinct !{!51, !50, !"copy_vector: argument 1"}
!52 = distinct !{!52, !50, !"copy_vector: argument 0"}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !"copy_vector"}
!55 = distinct !{!55, !54, !"copy_vector: argument 1"}
!56 = distinct !{!56, !54, !"copy_vector: argument 0"}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !19, !21, !22}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !19, !21}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19, !21, !22}
!67 = distinct !{!67, !19, !22, !21}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !19, !21, !22}
!74 = distinct !{!74, !19, !22, !21}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !"LVerDomain"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !19, !21, !22}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !19, !21}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !"copy_vector"}
!86 = distinct !{!86, !85, !"copy_vector: argument 1"}
!87 = distinct !{!87, !85, !"copy_vector: argument 0"}
!88 = distinct !{!88, !"copy_vector"}
!89 = distinct !{!89, !88, !"copy_vector: argument 1"}
!90 = distinct !{!90, !88, !"copy_vector: argument 0"}
!91 = distinct !{!91, !"copy_vector"}
!92 = distinct !{!92, !91, !"copy_vector: argument 1"}
!93 = distinct !{!93, !91, !"copy_vector: argument 0"}
!94 = distinct !{!94, !19}
!95 = !{!42}
!96 = !{!43}
!97 = !{!52, !51}
!98 = !{!56, !55}
!99 = !{!60}
!100 = !{!61}
!101 = !{!78}
!102 = !{!79}
!103 = !{!87, !86}
!104 = !{!90, !89}
!105 = !{!93, !92}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !19, !21, !22}
!111 = distinct !{!111, !20}
!112 = distinct !{!112, !19, !21}
!113 = !{!108}
!114 = !{!109}
!115 = distinct !{!115, !20}
!116 = distinct !{!116, !19, !21, !22}
!117 = distinct !{!117, !20}
!118 = distinct !{!118, !19, !21}
!119 = distinct !{!119, !20}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !20}
!126 = distinct !{!126, !20}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !20}
!132 = !{!"p2 double", !23, i64 0}
!133 = !{!132, !132, i64 0}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
!137 = distinct !{!137, !19}
!138 = distinct !{!138, !19}
!139 = distinct !{!139, !20}
!140 = distinct !{!140, !19, !21, !22}
end_hunk_1
