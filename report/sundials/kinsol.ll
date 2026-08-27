Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@AndersonAcc:bb.a
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
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ac ; 3 uses
  %i.ad = load double, ptr %gep.prol, align 8, !tbaa !28
  %i.ae = getelementptr i8, ptr %gep.prol, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !28
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %i.t, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ak, <2 x double> %i.ai)
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.am, ptr %gep.prol, align 8, !tbaa !28
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv166.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next167.prol, %.prol.loopexit.unr-lcssa ]
  %i.an = icmp eq i64 %i.f, %indvars.iv169
  br i1 %i.an, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph.new ], [ %indvars.iv166.unr, %.prol.loopexit ] ; 3 uses
  %i.ao = mul nuw nsw i64 %indvars.iv166, %i.d
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ao ; 3 uses
  %i.ap = load double, ptr %gep, align 8, !tbaa !28
  %i.aq = getelementptr i8, ptr %gep, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !28
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.t, %i.at
  %i.av = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.aw, <2 x double> %i.au)
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ay, ptr %gep, align 8, !tbaa !28
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %i.az = mul nuw nsw i64 %indvars.iv.next167, %i.d
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.az ; 3 uses
  %i.ba = load double, ptr %gep.1, align 8, !tbaa !28
  %i.bb = getelementptr i8, ptr %gep.1, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !28
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.t, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.bh, <2 x double> %i.bf)
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bj, ptr %gep.1, align 8, !tbaa !28
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next167.1, %i.d
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv169 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !145
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next170 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !145
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.bp = extractelement <2 x double> %i.t, i64 0 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.bp, ptr noundef %i.bl, double noundef %i.x, ptr noundef %i.bn, ptr noundef %i.bo) #13
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !145
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !145 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.y, ptr noundef %i.bq, double noundef %i.bp, ptr noundef %i.br, ptr noundef %i.br) #13
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !145
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bs, ptr noundef %i.bt) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.preheader144.preheader, label %bb.b

.preheader144:                                    ; preds = %.preheader144.preheader, %._crit_edge152
  %indvars.iv181 = phi i64 [ 1, %.preheader144.preheader ], [ %indvars.iv.next182, %._crit_edge152 ] ; 3 uses
  %i.bu = mul nuw nsw i64 %indvars.iv181, %i.g
  %i.bv = add nsw i64 %indvars.iv181, -1
  %i.bw = mul nsw i64 %i.bv, %i.g
  %invariant.gep206 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bu ; 2 uses
  %invariant.gep208 = getelementptr [8 x i8], ptr %2, i64 %i.bw ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader144, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader144 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load = load <2 x double>, ptr %i.bx, align 8, !tbaa !28
  %wide.load2 = load <2 x double>, ptr %i.by, align 8, !tbaa !28
  %i.bz = getelementptr [8 x i8], ptr %invariant.gep208, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store <2 x double> %wide.load, ptr %i.bz, align 8, !tbaa !28
  store <2 x double> %wide.load2, ptr %i.ca, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge152, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader144, %middle.block
  %indvars.iv175.ph = phi i64 [ 0, %.preheader144 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge154.split:                             ; preds = %._crit_edge152, %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !181
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.c, label %.loopexit

._crit_edge152:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge154.split, label %.preheader144

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %scalar.ph ], [ %indvars.iv175.ph, %scalar.ph.preheader ] ; 3 uses
  %gep207 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv175
  %i.cf = load double, ptr %gep207, align 8, !tbaa !28
  %gep209 = getelementptr [8 x i8], ptr %invariant.gep208, i64 %indvars.iv175
  store double %i.cf, ptr %gep209, align 8, !tbaa !28
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge152, label %scalar.ph, !llvm.loop !182

bb.c:                                             ; preds = %._crit_edge154.split
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !183
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %.not164 = icmp eq i32 %3, 2
  br i1 %.not164, label %.lr.ph160, label %.lr.ph156

.lr.ph156:                                        ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cj = zext nneg i32 %3 to i64
  %wide.trip.count191 = zext nneg i32 %3 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph156, %bb.e
  %indvars.iv187 = phi i64 [ 2, %.lr.ph156 ], [ %indvars.iv.next188, %bb.e ] ; 3 uses
  %i.ck = add nsw i64 %indvars.iv187, -1          ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !145
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !184
  %i.co = mul nsw i64 %i.ck, %i.cj
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.cr = tail call i32 @N_VDotProdMultiLocal(i32 noundef %i.cq, ptr noundef %i.cm, ptr noundef %1, ptr noundef %i.cp) #13 ; 0 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count191
  br i1 %exitcond192.not, label %.lr.ph160, label %bb.e

.lr.ph160:                                        ; preds = %bb.e, %.preheader
  %i.cs = mul nuw nsw i32 %3, %3
  %i.ct = zext nneg i32 %i.a to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !145
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !184
  %i.cy = tail call i32 @N_VDotProdMultiAllReduce(i32 noundef %i.cs, ptr noundef %i.cv, ptr noundef %i.cx) #13 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !184 ; 5 uses
  %i.db = add nuw i32 %3, 1                       ; 5 uses
  %wide.trip.count197 = zext nneg i32 %3 to i64
  %i.dc = add nsw i64 %wide.trip.count197, -1     ; 2 uses
  %xtraiter5 = and i64 %i.dc, 3                   ; 3 uses
  %i.dd = add nsw i32 %3, -2
  %i.de = icmp ult i32 %i.dd, 3
  br i1 %i.de, label %.epil.preheader, label %.lr.ph160.new

.lr.ph160.new:                                    ; preds = %.lr.ph160
  %unroll_iter = and i64 %i.dc, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph160.new
  %indvars.iv193 = phi i64 [ 1, %.lr.ph160.new ], [ %indvars.iv.next194.3, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph160.new ], [ %niter.next.3, %bb.f ]
  %i.df = trunc i64 %indvars.iv193 to i32
  %i.dg = add nsw i32 %i.df, -1
  %i.dh = mul i32 %i.dg, %i.db
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.di
  store double 1.000000e+00, ptr %i.dj, align 8, !tbaa !28
  %i.dk = trunc i64 %indvars.iv193 to i32
  %i.dl = mul i32 %i.db, %i.dk
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dm
  store double 1.000000e+00, ptr %i.dn, align 8, !tbaa !28
  %i.do = trunc i64 %indvars.iv193 to i32
  %i.dp = add i32 %i.do, 1
  %i.dq = mul i32 %i.dp, %i.db
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dr
  store double 1.000000e+00, ptr %i.ds, align 8, !tbaa !28
  %i.dt = trunc i64 %indvars.iv193 to i32
  %i.du = add i32 %i.dt, 2
  %i.dv = mul i32 %i.du, %i.db
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dw
  store double 1.000000e+00, ptr %i.dx, align 8, !tbaa !28
  %indvars.iv.next194.3 = add nuw nsw i64 %indvars.iv193, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit4.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !184 ; 2 uses
  store double 1.000000e+00, ptr %i.dz, align 8, !tbaa !28
  %i.ea = icmp sgt i32 %3, 2
  br i1 %i.ea, label %.lr.ph163.preheader, label %.loopexit

.lr.ph163.preheader:                              ; preds = %bb.g
  %i.eb = zext nneg i32 %3 to i64
  %wide.trip.count203 = zext nneg i32 %3 to i64
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %.lr.ph163
  %i.ec = phi ptr [ %i.dz, %.lr.ph163.preheader ], [ %i.ek, %.lr.ph163 ]
  %indvars.iv199 = phi i64 [ 2, %.lr.ph163.preheader ], [ %indvars.iv.next200, %.lr.ph163 ] ; 2 uses
  %i.ed = add nsw i64 %indvars.iv199, -1          ; 4 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !145
  %i.eg = mul nsw i64 %i.ed, %i.eb                ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eg
  %i.ei = trunc nuw nsw i64 %i.ed to i32
  %i.ej = tail call i32 @N_VDotProdMulti(i32 noundef %i.ei, ptr noundef %i.ef, ptr noundef %1, ptr noundef %i.eh) #13 ; 0 uses
  %i.ek = load ptr, ptr %i.dy, align 8, !tbaa !184 ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.eg
  %i.em = getelementptr [8 x i8], ptr %i.el, i64 %i.ed
  store double 1.000000e+00, ptr %i.em, align 8, !tbaa !28
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
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv193.epil = phi i64 [ %indvars.iv193.epil.init, %.epil.preheader ], [ %indvars.iv.next194.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.en = trunc i64 %indvars.iv193.epil to i32
  %i.eo = add i32 %i.en, -1
  %i.ep = mul i32 %i.eo, %i.db
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.eq
  store double 1.000000e+00, ptr %i.er, align 8, !tbaa !28
  %indvars.iv.next194.epil = add nuw nsw i64 %indvars.iv193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter5
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !185

.loopexit:                                        ; preds = %.loopexit.loopexit4.unr-lcssa, %bb.h, %.lr.ph163, %bb.d, %bb.g, %._crit_edge154.split
  ret void
}

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMultiLocal(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMultiAllReduce(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"KINMemRec", !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 48, !5, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !5, i64 200, !12, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !5, i64 360, !5, i64 364, !12, i64 368, !14, i64 376, !14, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !12, i64 416, !17, i64 424, !17, i64 432, !17, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !11, i64 480, !11, i64 488, !5, i64 496, !13, i64 504, !11, i64 512, !18, i64 520, !5, i64 528, !5, i64 532, !17, i64 536, !15, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !5, i64 616, !11, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !5, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !5, i64 704}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!15 = !{!"p2 _ZTS17_generic_N_Vector", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!"p1 _ZTS10_SUNQRData", !11, i64 0}
!19 = !{!9, !12, i64 16}
!20 = !{!9, !12, i64 368}
!21 = !{!9, !12, i64 416}
!22 = !{!9, !13, i64 64}
!23 = !{!9, !13, i64 72}
!24 = !{!9, !13, i64 80}
!25 = !{!9, !13, i64 88}
!26 = !{!9, !12, i64 208}
!27 = !{!9, !12, i64 144}
!28 = !{!12, !12, i64 0}
!29 = !{!9, !5, i64 96}
!30 = !{!9, !12, i64 192}
!31 = !{!9, !5, i64 672}
!32 = !{!9, !13, i64 568}
!33 = !{!9, !13, i64 576}
!34 = !{!35, !37, i64 24}
!35 = !{!"SUNContext_", !11, i64 0, !36, i64 8, !5, i64 16, !37, i64 24, !5, i64 32, !5, i64 36, !38, i64 40, !5, i64 48}
!36 = !{!"p1 _ZTS12SUNProfiler_", !11, i64 0}
!37 = !{!"p1 _ZTS10SUNLogger_", !11, i64 0}
!38 = !{!"p1 _ZTS14SUNErrHandler_", !11, i64 0}
!39 = !{!35, !5, i64 36}
!40 = !{!38, !38, i64 0}
!41 = !{!42, !11, i64 8}
!42 = !{!"SUNErrHandler_", !38, i64 0, !11, i64 8, !11, i64 16}
!43 = !{!42, !11, i64 16}
!44 = distinct !{null}
!45 = !{!46, !47, i64 8}
!46 = !{!"_generic_N_Vector", !11, i64 0, !47, i64 8, !10, i64 16}
!47 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!48 = !{!49, !11, i64 8}
!49 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!50 = !{!49, !11, i64 24}
!51 = !{!49, !11, i64 88}
!52 = !{!49, !11, i64 104}
!53 = !{!49, !11, i64 112}
!54 = !{!49, !11, i64 120}
!55 = !{!49, !11, i64 128}
!56 = !{!49, !11, i64 136}
!57 = !{!49, !11, i64 160}
!58 = !{!49, !11, i64 184}
!59 = !{!49, !11, i64 192}
!60 = !{!49, !11, i64 32}
!61 = !{!13, !13, i64 0}
!62 = !{!9, !13, i64 552}
!63 = !{!9, !13, i64 560}
!64 = !{!9, !14, i64 280}
!65 = !{!9, !14, i64 288}
!66 = !{!9, !14, i64 320}
!67 = !{!9, !14, i64 336}
!68 = !{!9, !14, i64 344}
!69 = !{!9, !11, i64 24}
!70 = !{!9, !11, i64 624}
!71 = !{!9, !5, i64 704}
!72 = !{!9, !14, i64 272}
!73 = !{!9, !14, i64 304}
!74 = !{!9, !14, i64 312}
!75 = !{!9, !5, i64 56}
!76 = !{!9, !13, i64 448}
!77 = !{!9, !5, i64 104}
!78 = !{!9, !13, i64 216}
!79 = !{!9, !11, i64 32}
!80 = distinct !{null}
!81 = !{!9, !13, i64 224}
!82 = !{!9, !13, i64 464}
!83 = !{!9, !5, i64 364}
!84 = !{!9, !11, i64 480}
!85 = !{!9, !17, i64 432}
!86 = !{!9, !17, i64 424}
!87 = !{!9, !5, i64 528}
!88 = !{!9, !12, i64 632}
!89 = !{!9, !12, i64 40}
!90 = !{!9, !5, i64 360}
!91 = !{!9, !14, i64 328}
!92 = !{!49, !11, i64 224}
!93 = !{!49, !11, i64 232}
!94 = !{!9, !12, i64 136}
!95 = !{!9, !12, i64 128}
!96 = !{!9, !5, i64 616}
!97 = !{!9, !5, i64 112}
!98 = !{!9, !12, i64 176}
!99 = !{!9, !5, i64 116}
!100 = distinct !{null}
!101 = !{!9, !11, i64 584}
!102 = !{!9, !12, i64 640}
!103 = !{!9, !12, i64 664}
!104 = !{!9, !13, i64 264}
!105 = !{!9, !5, i64 200}
!106 = !{!9, !5, i64 100}
!107 = !{!9, !12, i64 680}
!108 = !{!9, !14, i64 296}
!109 = !{!9, !12, i64 168}
end_hunk_0
