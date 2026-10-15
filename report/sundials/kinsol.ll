Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@AndersonAcc:bb.a
  %i.ja = getelementptr inbounds [8 x i8], ptr %6, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !27
  %i.jc = fdiv double %i.ix, %i.jb                ; 2 uses
  store double %i.jc, ptr %i.iy, align 8, !tbaa !27
  %i.jd = fneg double %i.jc
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv318
  store double %i.jd, ptr %i.je, align 8, !tbaa !27
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.0247307
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !57
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv318
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !57
  %indvars.iv.next319 = add nuw i64 %indvars.iv318, 1
  %i.ji = add nsw i64 %.0247307, -1
  %exitcond321.not = icmp eq i64 %indvars.iv318, %i.ho
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond321.not, label %._crit_edge308.loopexit, label %.preheader

.lr.ph304:                                        ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304
  %i.jj = phi double [ %i.jv, %.lr.ph304 ], [ %.unr, %.lr.ph304.prol.loopexit ]
  %.0246303 = phi i64 [ %.0246.1, %.lr.ph304 ], [ %.0246303.unr, %.lr.ph304.prol.loopexit ] ; 4 uses
  %i.jk = mul nsw i64 %i.ih, %.0246303
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.jk
  %i.jl = load double, ptr %gep, align 8, !tbaa !27
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0246303
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !27
  %i.jo = fneg double %i.jl
  %i.jp = call double @llvm.fmuladd.f64(double %i.jo, double %i.jn, double %i.jj) ; 2 uses
  store double %i.jp, ptr %i.il, align 8, !tbaa !27
  %.0246 = add nuw nsw i64 %.0246303, 1           ; 2 uses
  %i.jq = mul nsw i64 %i.ih, %.0246
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.jq
  %i.jr = load double, ptr %gep.1, align 8, !tbaa !27
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0246
  %i.jt = load double, ptr %i.js, align 8, !tbaa !27
  %i.ju = fneg double %i.jr
  %i.jv = call double @llvm.fmuladd.f64(double %i.ju, double %i.jt, double %i.jp) ; 3 uses
  store double %i.jv, ptr %i.il, align 8, !tbaa !27
  %.0246.1 = add nuw nsw i64 %.0246303, 2         ; 2 uses
  %exitcond317.not.1 = icmp eq i64 %.0246.1, %i.ho
  br i1 %exitcond317.not.1, label %._crit_edge305, label %.lr.ph304

bb.am:                                            ; preds = %._crit_edge308
  %i.jw = load ptr, ptr %i.ht, align 8, !tbaa !52
  %.not281 = icmp eq ptr %i.jw, null
  br i1 %.not281, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge308
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !21
  %i.jz = fsub double 1.000000e+00, %i.jy         ; 5 uses
  %i.ka = fneg double %i.jz
  %i.kb = zext nneg i32 %.0252.lcssa to i64       ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kb
  store double %i.ka, ptr %i.kc, align 8, !tbaa !27
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.kb
  store ptr %2, ptr %i.kd, align 8, !tbaa !57
  %.1253309 = add i32 %.0252.lcssa, 1             ; 2 uses
  br i1 %i.if, label %.lr.ph313, label %.loopexit

.lr.ph313:                                        ; preds = %bb.an
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !165 ; 6 uses
  %i.kg = zext i32 %.1253309 to i64               ; 5 uses
  %min.iters.check395 = icmp ult i64 %i.ho, 12
  br i1 %min.iters.check395, label %scalar.ph394.preheader, label %vector.memcheck396

vector.memcheck396:                               ; preds = %.lr.ph313
  %i.kh = shl nuw nsw i64 %i.kg, 3                ; 3 uses
  %i.ki = getelementptr i8, ptr %i.c, i64 %i.kh
  %i.kj = shl i64 %i.ho, 3                        ; 3 uses
  %i.kk = add i64 %i.kj, %i.kh                    ; 2 uses
  %i.kl = getelementptr i8, ptr %i.c, i64 %i.kk
  %i.km = getelementptr i8, ptr %7, i64 %i.kj
  %i.kn = getelementptr i8, ptr %i.e, i64 %i.kh
  %i.ko = getelementptr i8, ptr %i.e, i64 %i.kk
  %i.kp = getelementptr i8, ptr %i.kf, i64 %i.kj
  %bound0397 = icmp ult ptr %i.ki, %i.km
  %bound1398 = icmp ult ptr %7, %i.kl
  %found.conflict399 = and i1 %bound0397, %bound1398
  %bound0400 = icmp ult ptr %i.kn, %i.kp
  %bound1401 = icmp ult ptr %i.kf, %i.ko
  %found.conflict402 = and i1 %bound0400, %bound1401
  %conflict.rdx = or i1 %found.conflict399, %found.conflict402
  br i1 %conflict.rdx, label %scalar.ph394.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck396
  %n.vec404 = and i64 %i.ho, 9223372036854775806  ; 4 uses
  %i.kq = add nuw i64 %n.vec404, %i.kg            ; 2 uses
  %i.kr = sub i64 %i.ie, %n.vec404
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.ks = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next410, %vector.body405 ] ; 3 uses
  %i.kt = add nuw i64 %index406, %i.kg            ; 2 uses
  %i.ku = sub i64 %i.ie, %index406                ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ku
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -8
  %wide.load407 = load <2 x double>, ptr %i.kw, align 8, !tbaa !27, !alias.scope !176
  %i.kx = shufflevector <2 x double> %wide.load407, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse = fmul <2 x double> %i.ks, %i.kx
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kt
  store <2 x double> %reverse, ptr %i.ky, align 8, !tbaa !27, !alias.scope !177, !noalias !176
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ku
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 -8
  %wide.load408 = load <2 x ptr>, ptr %i.la, align 8, !tbaa !57, !alias.scope !178
  %reverse409 = shufflevector <2 x ptr> %wide.load408, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.kt
  store <2 x ptr> %reverse409, ptr %i.lb, align 8, !tbaa !57, !alias.scope !179, !noalias !178
  %index.next410 = add nuw i64 %index406, 2       ; 2 uses
  %i.lc = icmp eq i64 %index.next410, %n.vec404
  br i1 %i.lc, label %middle.block411, label %vector.body405, !llvm.loop !159

middle.block411:                                  ; preds = %vector.body405
  %cmp.n412 = icmp eq i64 %i.ho, %n.vec404
  br i1 %cmp.n412, label %.loopexit.loopexit, label %scalar.ph394.preheader

scalar.ph394.preheader:                           ; preds = %vector.memcheck396, %.lr.ph313, %middle.block411
  %indvars.iv322.ph = phi i64 [ %i.kg, %vector.memcheck396 ], [ %i.kg, %.lr.ph313 ], [ %i.kq, %middle.block411 ] ; 4 uses
  %.0310.ph = phi i64 [ %i.ie, %vector.memcheck396 ], [ %i.ie, %.lr.ph313 ], [ %i.kr, %middle.block411 ] ; 6 uses
  %i.ld = and i64 %.0310.ph, 1
  %lcmp.mod424.not.not = icmp eq i64 %i.ld, 0
  br i1 %lcmp.mod424.not.not, label %scalar.ph394.prol, label %scalar.ph394.prol.loopexit

scalar.ph394.prol:                                ; preds = %scalar.ph394.preheader
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0310.ph
  %i.lf = load double, ptr %i.le, align 8, !tbaa !27
  %i.lg = fmul double %i.jz, %i.lf
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322.ph
  store double %i.lg, ptr %i.lh, align 8, !tbaa !27
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.0310.ph
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !57
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv322.ph
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !57
  %i.ll = add nsw i64 %.0310.ph, -1
  %indvars.iv.next323.prol = add nuw nsw i64 %indvars.iv322.ph, 1 ; 2 uses
  br label %scalar.ph394.prol.loopexit

scalar.ph394.prol.loopexit:                       ; preds = %scalar.ph394.prol, %scalar.ph394.preheader
  %indvars.iv.next323.lcssa415.unr = phi i64 [ poison, %scalar.ph394.preheader ], [ %indvars.iv.next323.prol, %scalar.ph394.prol ]
  %indvars.iv322.unr = phi i64 [ %indvars.iv322.ph, %scalar.ph394.preheader ], [ %indvars.iv.next323.prol, %scalar.ph394.prol ]
  %.0310.unr = phi i64 [ %.0310.ph, %scalar.ph394.preheader ], [ %i.ll, %scalar.ph394.prol ]
  %i.lm = icmp eq i64 %.0310.ph, 0
  br i1 %i.lm, label %.loopexit.loopexit, label %scalar.ph394

scalar.ph394:                                     ; preds = %scalar.ph394.prol.loopexit, %scalar.ph394
  %indvars.iv322 = phi i64 [ %indvars.iv.next323.1, %scalar.ph394 ], [ %indvars.iv322.unr, %scalar.ph394.prol.loopexit ] ; 4 uses
  %.0310 = phi i64 [ %i.mc, %scalar.ph394 ], [ %.0310.unr, %scalar.ph394.prol.loopexit ] ; 4 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0310
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !27
  %i.lp = fmul double %i.jz, %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322
  store double %i.lp, ptr %i.lq, align 8, !tbaa !27
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.0310
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !57
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv322
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !57
  %i.lu = add nsw i64 %.0310, -1                  ; 3 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.lu
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !27
  %i.lx = fmul double %i.jz, %i.lw
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next323
  store double %i.lx, ptr %i.ly, align 8, !tbaa !27
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.lu
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !57
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next323
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !57
  %i.mc = add nsw i64 %.0310, -2
  %indvars.iv.next323.1 = add nuw nsw i64 %indvars.iv322, 2 ; 2 uses
  %.not356.1 = icmp eq i64 %i.lu, 0
  br i1 %.not356.1, label %.loopexit.loopexit, label %scalar.ph394, !llvm.loop !160

.loopexit.loopexit:                               ; preds = %scalar.ph394.prol.loopexit, %scalar.ph394, %middle.block411
  %indvars.iv.next323.lcssa = phi i64 [ %i.kq, %middle.block411 ], [ %indvars.iv.next323.lcssa415.unr, %scalar.ph394.prol.loopexit ], [ %indvars.iv.next323.1, %scalar.ph394 ]
  %i.md = trunc nuw i64 %indvars.iv.next323.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.an, %bb.am
  %.2254 = phi i32 [ %.0252.lcssa, %bb.am ], [ %.1253309, %bb.an ], [ %i.md, %.loopexit.loopexit ]
  %i.me = call i32 @N_VLinearCombination(i32 noundef %.2254, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %3) #13
  %.not282 = icmp eq i32 %i.me, 0
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
  %wide.trip.count172 = zext i32 %i.a to i64      ; 3 uses
  %i.e = add nsw i64 %i.d, -3
  br label %bb.b

.preheader144.preheader:                          ; preds = %._crit_edge
  %i.f = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count185 = zext nneg i32 %3 to i64
  %wide.trip.count179 = zext i32 %i.a to i64
  %min.iters.check = icmp ult i32 %3, 5
  %n.vec = and i64 %wide.trip.count172, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count172
  br label %.preheader144

bb.b:                                             ; preds = %.lr.ph149, %._crit_edge
  %indvars.iv169 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next170, %._crit_edge ] ; 7 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph149 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %4 = sub nsw i64 %i.d, %indvars.iv169
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next170 to i32
  %i.g = mul nuw nsw i32 %3, %indvars
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv169
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !27 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.k, %i.k
  %i.l = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.m = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.l) ; 2 uses
  %i.o = fcmp ugt double %i.n, 0.000000e+00
  br i1 %i.o, label %5, label %7

5:                                                ; preds = %bb.b
  %6 = tail call double @sqrt(double noundef %i.n) #13
  br label %7

7:                                                ; preds = %bb.b, %5
  %8 = phi double [ %6, %5 ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fdiv <2 x double> %i.k, %10               ; 6 uses
  %12 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %8, i64 0
  store <2 x double> %12, ptr %i.j, align 8, !tbaa !27
  %13 = trunc i64 %indvars.iv169 to i32
  %14 = add i32 %13, 2
  %15 = icmp slt i32 %14, %3
  %16 = extractelement <2 x double> %11, i64 1    ; 2 uses
  %17 = fneg double %16                           ; 2 uses
  br i1 %15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %7
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv169 ; 3 uses
  %i.p = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x double> %i.p, double %17, i64 0 ; 3 uses
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.r = mul nuw nsw i64 %indvars.iv, %i.d
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.r ; 2 uses
  %i.s = load <2 x double>, ptr %gep.prol, align 8, !tbaa !27 ; 2 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %11, %i.t
  %i.v = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.v, <2 x double> %i.u)
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.x, ptr %gep.prol, align 8, !tbaa !27
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv166.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next167.prol, %.prol.loopexit.unr-lcssa ]
  %i.y = icmp eq i64 %i.e, %indvars.iv169
  br i1 %i.y, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph.new ], [ %indvars.iv166.unr, %.prol.loopexit ] ; 3 uses
  %i.z = mul nuw nsw i64 %indvars.iv166, %i.d
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.z ; 2 uses
  %i.aa = load <2 x double>, ptr %gep, align 8, !tbaa !27 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %11, %i.ab
  %i.ad = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.ad, <2 x double> %i.ac)
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.af, ptr %gep, align 8, !tbaa !27
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %i.ag = mul nuw nsw i64 %indvars.iv.next167, %i.d
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ag ; 2 uses
  %i.ah = load <2 x double>, ptr %gep.1, align 8, !tbaa !27 ; 2 uses
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = fmul <2 x double> %11, %i.ai
  %i.ak = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.ak, <2 x double> %i.aj)
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.am, ptr %gep.1, align 8, !tbaa !27
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next167.1, %i.d
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %7
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv169 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next170 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.as = extractelement <2 x double> %11, i64 0  ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.as, ptr noundef %i.ao, double noundef %16, ptr noundef %i.aq, ptr noundef %i.ar) #13
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 2 uses
  tail call void @N_VLinearSum(double noundef %17, ptr noundef %i.at, double noundef %i.as, ptr noundef %i.au, ptr noundef %i.au) #13
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !57
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.av, ptr noundef %i.aw) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.preheader144.preheader, label %bb.b

.preheader144:                                    ; preds = %.preheader144.preheader, %._crit_edge152
  %indvars.iv181 = phi i64 [ 1, %.preheader144.preheader ], [ %indvars.iv.next182, %._crit_edge152 ] ; 3 uses
  %i.ax = mul nuw nsw i64 %indvars.iv181, %i.f
  %i.ay = add nsw i64 %indvars.iv181, -1
  %i.az = mul nuw nsw i64 %i.ay, %i.f
  %invariant.gep206 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ax ; 2 uses
  %invariant.gep208 = getelementptr [8 x i8], ptr %2, i64 %i.az ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader144, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader144 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <2 x double>, ptr %i.ba, align 8, !tbaa !27
  %wide.load2 = load <2 x double>, ptr %i.bb, align 8, !tbaa !27
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep208, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store <2 x double> %wide.load, ptr %i.bc, align 8, !tbaa !27
  store <2 x double> %wide.load2, ptr %i.bd, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge152, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader144, %middle.block
  %indvars.iv175.ph = phi i64 [ 0, %.preheader144 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge154.split:                             ; preds = %._crit_edge152, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !183
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.c, label %.loopexit

._crit_edge152:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge154.split, label %.preheader144

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %scalar.ph ], [ %indvars.iv175.ph, %scalar.ph.preheader ] ; 3 uses
  %gep207 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv175
  %i.bi = load double, ptr %gep207, align 8, !tbaa !27
  %gep209 = getelementptr [8 x i8], ptr %invariant.gep208, i64 %indvars.iv175
  store double %i.bi, ptr %gep209, align 8, !tbaa !27
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge152, label %scalar.ph, !llvm.loop !181

bb.c:                                             ; preds = %._crit_edge154.split
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !184
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %.not164 = icmp eq i32 %3, 2
  br i1 %.not164, label %.lr.ph160, label %.lr.ph156

.lr.ph156:                                        ; preds = %.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bm = zext nneg i32 %3 to i64
  %wide.trip.count191 = zext nneg i32 %3 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph156, %bb.e
  %indvars.iv187 = phi i64 [ 2, %.lr.ph156 ], [ %indvars.iv.next188, %bb.e ] ; 3 uses
  %i.bn = add nsw i64 %indvars.iv187, -1          ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !185
  %i.br = mul nuw nsw i64 %i.bn, %i.bm
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.bu = tail call i32 @N_VDotProdMultiLocal(i32 noundef %i.bt, ptr noundef %i.bp, ptr noundef %1, ptr noundef %i.bs) #13 ; 0 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count191
  br i1 %exitcond192.not, label %.lr.ph160, label %bb.e

.lr.ph160:                                        ; preds = %bb.e, %.preheader
  %i.bv = mul nuw nsw i32 %3, %3
  %i.bw = zext nneg i32 %i.a to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !185
  %i.cb = tail call i32 @N_VDotProdMultiAllReduce(i32 noundef %i.bv, ptr noundef %i.by, ptr noundef %i.ca) #13 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !185 ; 5 uses
  %i.ce = add nuw i32 %3, 1                       ; 5 uses
  %wide.trip.count197 = zext nneg i32 %3 to i64
  %i.cf = add nsw i64 %wide.trip.count197, -1     ; 2 uses
  %xtraiter5 = and i64 %i.cf, 3                   ; 3 uses
  %i.cg = add nsw i32 %3, -2
  %i.ch = icmp ult i32 %i.cg, 3
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph160.new

.lr.ph160.new:                                    ; preds = %.lr.ph160
  %unroll_iter = and i64 %i.cf, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph160.new
  %indvars.iv193 = phi i64 [ 1, %.lr.ph160.new ], [ %indvars.iv.next194.3, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph160.new ], [ %niter.next.3, %bb.f ]
  %i.ci = trunc i64 %indvars.iv193 to i32
  %i.cj = add nsw i32 %i.ci, -1
  %i.ck = mul i32 %i.cj, %i.ce
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cl
  store double 1.000000e+00, ptr %i.cm, align 8, !tbaa !27
  %i.cn = trunc i64 %indvars.iv193 to i32
  %i.co = mul i32 %i.ce, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cp
  store double 1.000000e+00, ptr %i.cq, align 8, !tbaa !27
  %i.cr = trunc i64 %indvars.iv193 to i32
  %i.cs = add i32 %i.cr, 1
  %i.ct = mul i32 %i.cs, %i.ce
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cu
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !27
  %i.cw = trunc i64 %indvars.iv193 to i32
  %i.cx = add i32 %i.cw, 2
  %i.cy = mul i32 %i.cx, %i.ce
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cz
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !27
  %indvars.iv.next194.3 = add nuw nsw i64 %indvars.iv193, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit4.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !185 ; 2 uses
  store double 1.000000e+00, ptr %i.dc, align 8, !tbaa !27
  %i.dd = icmp sgt i32 %3, 2
  br i1 %i.dd, label %.lr.ph163.preheader, label %.loopexit

.lr.ph163.preheader:                              ; preds = %bb.g
  %i.de = zext nneg i32 %3 to i64
  %wide.trip.count203 = zext nneg i32 %3 to i64
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %.lr.ph163
  %i.df = phi ptr [ %i.dc, %.lr.ph163.preheader ], [ %i.dn, %.lr.ph163 ]
  %indvars.iv199 = phi i64 [ 2, %.lr.ph163.preheader ], [ %indvars.iv.next200, %.lr.ph163 ] ; 2 uses
  %i.dg = add nsw i64 %indvars.iv199, -1          ; 4 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !57
  %i.dj = mul nuw nsw i64 %i.dg, %i.de            ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dj
  %i.dl = trunc nuw nsw i64 %i.dg to i32
  %i.dm = tail call i32 @N_VDotProdMulti(i32 noundef %i.dl, ptr noundef %i.di, ptr noundef %1, ptr noundef %i.dk) #13 ; 0 uses
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !185 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %i.dj
  %i.dp = getelementptr [8 x i8], ptr %i.do, i64 %i.dg
  store double 1.000000e+00, ptr %i.dp, align 8, !tbaa !27
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
  %i.dq = trunc i64 %indvars.iv193.epil to i32
  %i.dr = add i32 %i.dq, -1
  %i.ds = mul i32 %i.dr, %i.ce
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.dt
  store double 1.000000e+00, ptr %i.du, align 8, !tbaa !27
  %indvars.iv.next194.epil = add nuw nsw i64 %indvars.iv193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter5
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !182

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!13 = !{!"any p2 pointer", !8, i64 0}
!14 = !{!"p2 _ZTS17_generic_N_Vector", !13, i64 0}
!15 = !{!"p1 double", !8, i64 0}
!16 = !{!"p1 _ZTS10_SUNQRData", !8, i64 0}
!17 = !{!"KINMemRec", !9, i64 0, !8, i64 8, !10, i64 16, !8, i64 24, !8, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !5, i64 200, !10, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !5, i64 360, !5, i64 364, !10, i64 368, !12, i64 376, !12, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !10, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !8, i64 480, !8, i64 488, !5, i64 496, !11, i64 504, !8, i64 512, !16, i64 520, !5, i64 528, !5, i64 532, !15, i64 536, !14, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !5, i64 616, !8, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !5, i64 672, !10, i64 680, !10, i64 688, !10, i64 696, !5, i64 704}
!18 = !{!17, !9, i64 0}
!19 = !{!17, !10, i64 16}
!20 = !{!17, !10, i64 368}
!21 = !{!17, !10, i64 416}
!22 = !{!17, !11, i64 64}
!23 = !{!17, !11, i64 72}
!24 = !{!17, !11, i64 80}
!25 = !{!17, !11, i64 88}
!26 = !{!17, !10, i64 208}
!27 = !{!10, !10, i64 0}
!28 = !{!17, !5, i64 96}
!29 = !{!17, !10, i64 192}
!30 = !{!17, !5, i64 672}
!31 = !{!"p1 _ZTS12SUNProfiler_", !8, i64 0}
!32 = !{!"p1 _ZTS10SUNLogger_", !8, i64 0}
!33 = !{!"p1 _ZTS14SUNErrHandler_", !8, i64 0}
!34 = !{!"SUNContext_", !8, i64 0, !31, i64 8, !5, i64 16, !32, i64 24, !5, i64 32, !5, i64 36, !33, i64 40, !5, i64 48}
!35 = !{!34, !32, i64 24}
!36 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !8, i64 0}
!37 = !{!"_generic_N_Vector", !8, i64 0, !36, i64 8, !9, i64 16}
!38 = !{!37, !36, i64 8}
!39 = !{!"_generic_N_Vector_Ops", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440}
!40 = !{!11, !11, i64 0}
!41 = !{!17, !12, i64 280}
!42 = !{!17, !12, i64 288}
!43 = !{!17, !12, i64 320}
!44 = !{!17, !12, i64 336}
!45 = !{!17, !12, i64 344}
!46 = !{!17, !8, i64 24}
!47 = !{!17, !5, i64 704}
!48 = !{!17, !12, i64 272}
!49 = !{!17, !11, i64 448}
!50 = !{!17, !11, i64 216}
!51 = !{!17, !8, i64 32}
!52 = !{!17, !8, i64 480}
!53 = !{!17, !5, i64 528}
!54 = !{!17, !12, i64 328}
!55 = !{!17, !12, i64 296}
!56 = !{!17, !10, i64 160}
!57 = !{!12, !12, i64 0}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!17, !10, i64 144}
!61 = !{!17, !11, i64 568}
!62 = !{!17, !11, i64 576}
!63 = distinct !{null}
!64 = !{!34, !5, i64 36}
!65 = !{!33, !33, i64 0}
!66 = !{!"SUNErrHandler_", !33, i64 0, !8, i64 8, !8, i64 16}
!67 = !{!66, !8, i64 8}
!68 = !{!66, !8, i64 16}
!69 = !{!39, !8, i64 8}
!70 = !{!39, !8, i64 24}
!71 = !{!39, !8, i64 88}
!72 = !{!39, !8, i64 104}
!73 = !{!39, !8, i64 112}
!74 = !{!39, !8, i64 120}
!75 = !{!39, !8, i64 128}
!76 = !{!39, !8, i64 136}
!77 = !{!39, !8, i64 160}
!78 = !{!39, !8, i64 184}
!79 = !{!39, !8, i64 192}
!80 = !{!39, !8, i64 32}
!81 = !{!17, !11, i64 552}
!82 = !{!17, !11, i64 560}
!83 = !{!17, !8, i64 624}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = distinct !{null, null}
!87 = distinct !{!87, !129}
!88 = distinct !{null}
!89 = distinct !{null}
!90 = distinct !{!90, !129}
!91 = distinct !{null}
!92 = distinct !{!92, !129}
!93 = distinct !{null}
!94 = distinct !{!94, !129}
!95 = !{!17, !12, i64 304}
!96 = !{!17, !12, i64 312}
!97 = !{!17, !5, i64 56}
!98 = !{!17, !5, i64 104}
!99 = !{!17, !11, i64 224}
!100 = !{!17, !11, i64 464}
!101 = !{!17, !5, i64 364}
!102 = !{!17, !15, i64 432}
!103 = !{!17, !15, i64 424}
!104 = !{!17, !10, i64 632}
!105 = !{!17, !10, i64 40}
!106 = !{!17, !5, i64 360}
!107 = !{!39, !8, i64 224}
!108 = !{!39, !8, i64 232}
!109 = !{!17, !10, i64 136}
!110 = !{!17, !10, i64 128}
!111 = !{!17, !5, i64 616}
!112 = !{!17, !5, i64 112}
!113 = !{!17, !10, i64 176}
!114 = !{!17, !5, i64 116}
!115 = !{!17, !8, i64 584}
!116 = !{!17, !10, i64 640}
!117 = !{!17, !10, i64 664}
!118 = !{!17, !11, i64 264}
!119 = !{!17, !5, i64 200}
!120 = !{!17, !5, i64 100}
!121 = !{!17, !10, i64 680}
!122 = !{!17, !10, i64 168}
!123 = !{!17, !11, i64 232}
!124 = !{!17, !5, i64 124}
!125 = !{!17, !5, i64 108}
!126 = !{!17, !8, i64 592}
!127 = !{!17, !11, i64 240}
!128 = !{!17, !8, i64 600}
!129 = !{!"llvm.loop.peeled.count", i32 1}
!130 = !{!17, !10, i64 648}
!131 = !{!17, !10, i64 656}
!132 = !{!17, !10, i64 184}
!133 = !{!17, !5, i64 120}
!134 = !{!17, !10, i64 152}
!135 = !{!17, !10, i64 48}
!136 = !{!17, !11, i64 248}
!137 = !{!17, !11, i64 256}
!138 = !{!17, !10, i64 696}
!139 = !{!17, !10, i64 688}
!140 = !{!8, !8, i64 0}
!141 = !{!17, !8, i64 608}
!142 = !{!17, !8, i64 8}
!143 = !{!5, !5, i64 0}
!144 = distinct !{!144, i1 false, !"LVerDomain"}
!145 = distinct !{!145, !144}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !58, !59}
!148 = distinct !{!148, !58}
!149 = distinct !{!149, i1 false, !"LVerDomain"}
!150 = distinct !{!150, !149}
!151 = distinct !{!151, !149}
!152 = distinct !{!152, !58, !59}
!153 = distinct !{!153, !58}
!154 = distinct !{!154, i1 false, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !154}
!158 = distinct !{!158, !154}
!159 = distinct !{!159, !58, !59}
!160 = distinct !{!160, !58}
!161 = !{!17, !15, i64 536}
!162 = !{!17, !14, i64 544}
!163 = !{!17, !11, i64 472}
!164 = !{!17, !14, i64 400}
!165 = !{!17, !14, i64 392}
!166 = !{!145}
!167 = !{!146}
!168 = !{!17, !14, i64 408}
!169 = !{!17, !12, i64 384}
!170 = !{!17, !12, i64 376}
end_hunk_0
