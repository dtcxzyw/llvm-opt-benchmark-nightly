Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@AndersonAcc:bb.a
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.jz
  store ptr %2, ptr %i.kb, align 8, !tbaa !145
  %.1253309 = add i32 %.0252.lcssa, 1             ; 2 uses
  br i1 %i.id, label %.lr.ph313, label %.loopexit

.lr.ph313:                                        ; preds = %bb.an
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !146 ; 6 uses
  %i.ke = zext i32 %.1253309 to i64               ; 5 uses
  %min.iters.check396 = icmp ult i64 %i.hm, 12
  br i1 %min.iters.check396, label %scalar.ph395.preheader, label %vector.memcheck382

vector.memcheck382:                               ; preds = %.lr.ph313
  %i.kf = shl nuw nsw i64 %i.ke, 3                ; 3 uses
  %scevgep383 = getelementptr i8, ptr %i.c, i64 %i.kf
  %i.kg = shl i64 %i.hm, 3                        ; 3 uses
  %i.kh = add i64 %i.kg, %i.kf                    ; 2 uses
  %scevgep384 = getelementptr i8, ptr %i.c, i64 %i.kh
  %scevgep385 = getelementptr i8, ptr %7, i64 %i.kg
  %scevgep386 = getelementptr i8, ptr %i.e, i64 %i.kf
  %scevgep387 = getelementptr i8, ptr %i.e, i64 %i.kh
  %scevgep388 = getelementptr i8, ptr %i.kd, i64 %i.kg
  %bound0389 = icmp ult ptr %scevgep383, %scevgep385
  %bound1390 = icmp ult ptr %7, %scevgep384
  %found.conflict391 = and i1 %bound0389, %bound1390
  %bound0392 = icmp ult ptr %scevgep386, %scevgep388
  %bound1393 = icmp ult ptr %i.kd, %scevgep387
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx = or i1 %found.conflict391, %found.conflict394
  br i1 %conflict.rdx, label %scalar.ph395.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck382
  %n.vec398 = and i64 %i.hm, 9223372036854775806  ; 4 uses
  %i.ki = add nuw i64 %n.vec398, %i.ke            ; 2 uses
  %i.kj = sub i64 %i.ic, %n.vec398
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.kk = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next404, %vector.body399 ] ; 3 uses
  %i.kl = add nuw i64 %index400, %i.ke            ; 2 uses
  %i.km = sub i64 %i.ic, %index400                ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.km
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -8
  %wide.load401 = load <2 x double>, ptr %i.ko, align 8, !tbaa !28, !alias.scope !169
  %i.kp = shufflevector <2 x double> %wide.load401, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse = fmul <2 x double> %i.kk, %i.kp
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kl
  store <2 x double> %reverse, ptr %i.kq, align 8, !tbaa !28, !alias.scope !172, !noalias !169
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.km
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -8
  %wide.load402 = load <2 x ptr>, ptr %i.ks, align 8, !tbaa !145, !alias.scope !174
  %reverse403 = shufflevector <2 x ptr> %wide.load402, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.kl
  store <2 x ptr> %reverse403, ptr %i.kt, align 8, !tbaa !145, !alias.scope !176, !noalias !174
  %index.next404 = add nuw i64 %index400, 2       ; 2 uses
  %i.ku = icmp eq i64 %index.next404, %n.vec398
  br i1 %i.ku, label %middle.block405, label %vector.body399, !llvm.loop !178

middle.block405:                                  ; preds = %vector.body399
  %cmp.n406 = icmp eq i64 %i.hm, %n.vec398
  br i1 %cmp.n406, label %.loopexit.loopexit, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %vector.memcheck382, %.lr.ph313, %middle.block405
  %indvars.iv322.ph = phi i64 [ %i.ke, %vector.memcheck382 ], [ %i.ke, %.lr.ph313 ], [ %i.ki, %middle.block405 ] ; 4 uses
  %.0310.ph = phi i64 [ %i.ic, %vector.memcheck382 ], [ %i.ic, %.lr.ph313 ], [ %i.kj, %middle.block405 ] ; 6 uses
  %i.kv = and i64 %.0310.ph, 1
  %lcmp.mod418.not.not = icmp eq i64 %i.kv, 0
  br i1 %lcmp.mod418.not.not, label %scalar.ph395.prol, label %scalar.ph395.prol.loopexit

scalar.ph395.prol:                                ; preds = %scalar.ph395.preheader
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0310.ph
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !28
  %i.ky = fmul double %i.jx, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322.ph
  store double %i.ky, ptr %i.kz, align 8, !tbaa !28
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.0310.ph
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !145
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv322.ph
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !145
  %i.ld = add nsw i64 %.0310.ph, -1
  %indvars.iv.next323.prol = add nuw nsw i64 %indvars.iv322.ph, 1 ; 2 uses
  br label %scalar.ph395.prol.loopexit

scalar.ph395.prol.loopexit:                       ; preds = %scalar.ph395.prol, %scalar.ph395.preheader
  %indvars.iv.next323.lcssa409.unr = phi i64 [ poison, %scalar.ph395.preheader ], [ %indvars.iv.next323.prol, %scalar.ph395.prol ]
  %indvars.iv322.unr = phi i64 [ %indvars.iv322.ph, %scalar.ph395.preheader ], [ %indvars.iv.next323.prol, %scalar.ph395.prol ]
  %.0310.unr = phi i64 [ %.0310.ph, %scalar.ph395.preheader ], [ %i.ld, %scalar.ph395.prol ]
  %i.le = icmp eq i64 %.0310.ph, 0
  br i1 %i.le, label %.loopexit.loopexit, label %scalar.ph395

scalar.ph395:                                     ; preds = %scalar.ph395.prol.loopexit, %scalar.ph395
  %indvars.iv322 = phi i64 [ %indvars.iv.next323.1, %scalar.ph395 ], [ %indvars.iv322.unr, %scalar.ph395.prol.loopexit ] ; 4 uses
  %.0310 = phi i64 [ %i.lu, %scalar.ph395 ], [ %.0310.unr, %scalar.ph395.prol.loopexit ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0310
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !28
  %i.lh = fmul double %i.jx, %i.lg
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322
  store double %i.lh, ptr %i.li, align 8, !tbaa !28
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.0310
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !145
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv322
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !145
  %i.lm = add nsw i64 %.0310, -1                  ; 3 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.lm
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !28
  %i.lp = fmul double %i.jx, %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next323
  store double %i.lp, ptr %i.lq, align 8, !tbaa !28
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.lm
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !145
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next323
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !145
  %i.lu = add nsw i64 %.0310, -2
  %indvars.iv.next323.1 = add nuw nsw i64 %indvars.iv322, 2 ; 2 uses
  %.not356.1 = icmp eq i64 %i.lm, 0
  br i1 %.not356.1, label %.loopexit.loopexit, label %scalar.ph395, !llvm.loop !179

.loopexit.loopexit:                               ; preds = %scalar.ph395.prol.loopexit, %scalar.ph395, %middle.block405
  %indvars.iv.next323.lcssa = phi i64 [ %i.ki, %middle.block405 ], [ %indvars.iv.next323.lcssa409.unr, %scalar.ph395.prol.loopexit ], [ %indvars.iv.next323.1, %scalar.ph395 ]
  %i.lv = trunc nuw i64 %indvars.iv.next323.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.an, %bb.am
  %.2254 = phi i32 [ %.0252.lcssa, %bb.am ], [ %.1253309, %bb.an ], [ %i.lv, %.loopexit.loopexit ]
  %i.lw = call i32 @N_VLinearCombination(i32 noundef %.2254, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %3) #13
  %.not282 = icmp eq i32 %i.lw, 0
  %.290 = select i1 %.not282, i32 0, i32 -16
  br label %bb.ao

bb.ao:                                            ; preds = %.thread, %.loopexit, %bb.af, %bb.l, %bb.m, %bb.ak, %bb.ai, %bb.k, %bb.i
  %.6 = phi i32 [ -18, %bb.i ], [ -18, %bb.k ], [ %.5.ph, %.thread ], [ 0, %bb.l ], [ -18, %bb.ai ], [ -18, %bb.ak ], [ %.290, %.loopexit ], [ -16, %bb.af ], [ 0, %bb.m ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc void @AndersonAccQRDelete(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, -1                           ; 3 uses
  %i.b = icmp sgt i32 %3, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph149, label %._crit_edge154.split

.lr.ph149:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.d = zext nneg i32 %3 to i64                  ; 6 uses
  %i.e = zext nneg i32 %3 to i64
  %wide.trip.count172 = zext i32 %i.a to i64      ; 3 uses
  %i.f = add nsw i64 %i.d, -3
  br label %bb.b

.preheader144.preheader:                          ; preds = %._crit_edge
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count185 = zext nneg i32 %3 to i64
  %wide.trip.count179 = zext i32 %i.a to i64
  %min.iters.check = icmp ult i32 %3, 5
  %n.vec = and i64 %wide.trip.count172, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count172
  br label %.preheader144

bb.b:                                             ; preds = %.lr.ph149, %._crit_edge
  %indvars.iv169 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next170, %._crit_edge ] ; 7 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph149 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next170 to i32
  %i.h = mul nuw nsw i32 %3, %indvars
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv169
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load <2 x double>, ptr %i.k, align 8, !tbaa !28 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.l, %i.l
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.n = extractelement <2 x double> %i.l, i64 0  ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.m) ; 2 uses
  %i.p = fcmp ugt double %i.o, 0.000000e+00
  %sqrt = tail call double @llvm.sqrt.f64(double %i.o)
  %i.q = select i1 %i.p, double %sqrt, double 0.000000e+00 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> %i.l, %i.s             ; 6 uses
  %i.u = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.q, i64 0
  store <2 x double> %i.u, ptr %i.k, align 8, !tbaa !28
  %i.v = add nuw nsw i64 %indvars.iv169, 2
  %i.w = icmp samesign ult i64 %i.v, %i.e
  %i.x = extractelement <2 x double> %i.t, i64 1  ; 2 uses
  %i.y = fneg double %i.x                         ; 2 uses
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.z = sub nsw i64 %i.d, %indvars.iv169
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv169 ; 3 uses
  %i.aa = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ab = insertelement <2 x double> %i.aa, double %i.y, i64 0 ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ac = mul nuw nsw i64 %indvars.iv, %i.d
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ac ; 2 uses
  %4 = load <2 x double>, ptr %gep.prol, align 8, !tbaa !28 ; 2 uses
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x double> %i.t, %5
  %i.ae = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ae, <2 x double> %i.ad)
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ag, ptr %gep.prol, align 8, !tbaa !28
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv166.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next167.prol, %.prol.loopexit.unr-lcssa ]
  %i.ah = icmp eq i64 %i.f, %indvars.iv169
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph.new ], [ %indvars.iv166.unr, %.prol.loopexit ] ; 3 uses
  %i.ai = mul nuw nsw i64 %indvars.iv166, %i.d
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ai ; 2 uses
  %6 = load <2 x double>, ptr %gep, align 8, !tbaa !28 ; 2 uses
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = fmul <2 x double> %i.t, %7
  %i.ak = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ak, <2 x double> %i.aj)
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.am, ptr %gep, align 8, !tbaa !28
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %i.an = mul nuw nsw i64 %indvars.iv.next167, %i.d
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.an ; 2 uses
  %8 = load <2 x double>, ptr %gep.1, align 8, !tbaa !28 ; 2 uses
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fmul <2 x double> %i.t, %9
  %i.ap = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ap, <2 x double> %i.ao)
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ar, ptr %gep.1, align 8, !tbaa !28
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next167.1, %i.d
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv169 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !145
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next170 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !145
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.ax = extractelement <2 x double> %i.t, i64 0 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.ax, ptr noundef %i.at, double noundef %i.x, ptr noundef %i.av, ptr noundef %i.aw) #13
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !145
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !145 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.y, ptr noundef %i.ay, double noundef %i.ax, ptr noundef %i.az, ptr noundef %i.az) #13
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !145
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ba, ptr noundef %i.bb) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.preheader144.preheader, label %bb.b

.preheader144:                                    ; preds = %.preheader144.preheader, %._crit_edge152
  %indvars.iv181 = phi i64 [ 1, %.preheader144.preheader ], [ %indvars.iv.next182, %._crit_edge152 ] ; 3 uses
  %i.bc = mul nuw nsw i64 %indvars.iv181, %i.g
  %i.bd = add nsw i64 %indvars.iv181, -1
  %i.be = mul nuw nsw i64 %i.bd, %i.g
  %invariant.gep206 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bc ; 2 uses
  %invariant.gep208 = getelementptr [8 x i8], ptr %2, i64 %i.be ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader144, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader144 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <2 x double>, ptr %i.bf, align 8, !tbaa !28
  %wide.load2 = load <2 x double>, ptr %i.bg, align 8, !tbaa !28
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep208, i64 %index ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store <2 x double> %wide.load, ptr %i.bh, align 8, !tbaa !28
  store <2 x double> %wide.load2, ptr %i.bi, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge152, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader144, %middle.block
  %indvars.iv175.ph = phi i64 [ 0, %.preheader144 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge154.split:                             ; preds = %._crit_edge152, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !181
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.c, label %.loopexit

._crit_edge152:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge154.split, label %.preheader144

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %scalar.ph ], [ %indvars.iv175.ph, %scalar.ph.preheader ] ; 3 uses
  %gep207 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv175
  %i.bn = load double, ptr %gep207, align 8, !tbaa !28
  %gep209 = getelementptr [8 x i8], ptr %invariant.gep208, i64 %indvars.iv175
  store double %i.bn, ptr %gep209, align 8, !tbaa !28
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge152, label %scalar.ph, !llvm.loop !182

bb.c:                                             ; preds = %._crit_edge154.split
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !183
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %.not164 = icmp eq i32 %3, 2
  br i1 %.not164, label %.lr.ph160, label %.lr.ph156

.lr.ph156:                                        ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.br = zext nneg i32 %3 to i64
  %wide.trip.count191 = zext nneg i32 %3 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph156, %bb.e
  %indvars.iv187 = phi i64 [ 2, %.lr.ph156 ], [ %indvars.iv.next188, %bb.e ] ; 3 uses
  %i.bs = add nsw i64 %indvars.iv187, -1          ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !145
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !184
  %i.bw = mul nuw nsw i64 %i.bs, %i.br
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.bz = tail call i32 @N_VDotProdMultiLocal(i32 noundef %i.by, ptr noundef %i.bu, ptr noundef %1, ptr noundef %i.bx) #13 ; 0 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count191
  br i1 %exitcond192.not, label %.lr.ph160, label %bb.e

.lr.ph160:                                        ; preds = %bb.e, %.preheader
  %i.ca = mul nuw nsw i32 %3, %3
  %i.cb = zext nneg i32 %i.a to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !145
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !184
  %i.cg = tail call i32 @N_VDotProdMultiAllReduce(i32 noundef %i.ca, ptr noundef %i.cd, ptr noundef %i.cf) #13 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !184 ; 5 uses
  %i.cj = add nuw i32 %3, 1                       ; 5 uses
  %wide.trip.count197 = zext nneg i32 %3 to i64
  %i.ck = add nsw i64 %wide.trip.count197, -1     ; 2 uses
  %xtraiter5 = and i64 %i.ck, 3                   ; 3 uses
  %i.cl = add nsw i32 %3, -2
  %i.cm = icmp ult i32 %i.cl, 3
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph160.new

.lr.ph160.new:                                    ; preds = %.lr.ph160
  %unroll_iter = and i64 %i.ck, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph160.new
  %indvars.iv193 = phi i64 [ 1, %.lr.ph160.new ], [ %indvars.iv.next194.3, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph160.new ], [ %niter.next.3, %bb.f ]
  %i.cn = trunc i64 %indvars.iv193 to i32
  %i.co = add nsw i32 %i.cn, -1
  %i.cp = mul i32 %i.co, %i.cj
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cq
  store double 1.000000e+00, ptr %i.cr, align 8, !tbaa !28
  %i.cs = trunc i64 %indvars.iv193 to i32
  %i.ct = mul i32 %i.cj, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cu
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !28
  %i.cw = trunc i64 %indvars.iv193 to i32
  %i.cx = add i32 %i.cw, 1
  %i.cy = mul i32 %i.cx, %i.cj
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cz
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !28
  %i.db = trunc i64 %indvars.iv193 to i32
  %i.dc = add i32 %i.db, 2
  %i.dd = mul i32 %i.dc, %i.cj
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.de
  store double 1.000000e+00, ptr %i.df, align 8, !tbaa !28
  %indvars.iv.next194.3 = add nuw nsw i64 %indvars.iv193, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit4.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !184 ; 2 uses
  store double 1.000000e+00, ptr %i.dh, align 8, !tbaa !28
  %i.di = icmp sgt i32 %3, 2
  br i1 %i.di, label %.lr.ph163.preheader, label %.loopexit

.lr.ph163.preheader:                              ; preds = %bb.g
  %i.dj = zext nneg i32 %3 to i64
  %wide.trip.count203 = zext nneg i32 %3 to i64
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %.lr.ph163
  %i.dk = phi ptr [ %i.dh, %.lr.ph163.preheader ], [ %i.ds, %.lr.ph163 ]
  %indvars.iv199 = phi i64 [ 2, %.lr.ph163.preheader ], [ %indvars.iv.next200, %.lr.ph163 ] ; 2 uses
  %i.dl = add nsw i64 %indvars.iv199, -1          ; 4 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !145
  %i.do = mul nuw nsw i64 %i.dl, %i.dj            ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.do
  %i.dq = trunc nuw nsw i64 %i.dl to i32
  %i.dr = tail call i32 @N_VDotProdMulti(i32 noundef %i.dq, ptr noundef %i.dn, ptr noundef %1, ptr noundef %i.dp) #13 ; 0 uses
  %i.ds = load ptr, ptr %i.dg, align 8, !tbaa !184 ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %i.do
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %i.dl
  store double 1.000000e+00, ptr %i.du, align 8, !tbaa !28
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count203
  br i1 %exitcond204.not, label %.loopexit, label %.lr.ph163

.loopexit.loopexit4.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit4.unr-lcssa, %.lr.ph160
  %indvars.iv193.epil.init = phi i64 [ 1, %.lr.ph160 ], [ %indvars.iv.next194.3, %.loopexit.loopexit4.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter5, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
end_hunk_0
