Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_iterative?download=true
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SUNQRsol:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.y = extractelement <2 x double> %i.x, i64 1
  br i1 %exitcond.not, label %.lr.ph56.preheader, label %.lr.ph

.loopexit.unr-lcssa:                              ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %.loopexit.unr-lcssa, %.lr.ph52.preheader
  %indvars.iv60.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next61.1, %.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %indvars.iv6782 to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.z = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.epil.init
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next7083
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60.epil.init ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14
  %i.ag = fneg double %i.z
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ad, double %i.af)
  store double %i.ah, ptr %i.ae, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.lr.ph52.epil.preheader
  %indvars.iv.next68 = add nsw i64 %indvars.iv6782, -1
  %indvars.iv.next70 = add nsw i64 %indvars.iv.next7083, -1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next70
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next70
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = fcmp oeq double %i.al, 0.000000e+00
  %indvar.next = add i64 %indvar, 1
  br i1 %i.am, label %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph84 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %i.an = phi double [ %i.f, %.lr.ph84 ], [ %i.al, %.loopexit ]
  %indvars.iv.next7083 = phi i64 [ %indvars.iv.next7080, %.lr.ph84 ], [ %indvars.iv.next70, %.loopexit ] ; 7 uses
  %indvars.iv6782 = phi i64 [ %i.i, %.lr.ph84 ], [ %indvars.iv.next68, %.loopexit ] ; 4 uses
  %indvars.iv6981 = phi i64 [ %i.b, %.lr.ph84 ], [ %indvars.iv.next7083, %.loopexit ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next7083 ; 5 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aq = fdiv double %i.ap, %i.an
  store double %i.aq, ptr %i.ao, align 8, !tbaa !14
  %i.ar = icmp samesign ugt i64 %indvars.iv6981, 1
  br i1 %i.ar, label %.lr.ph52.preheader, label %._crit_edge

.lr.ph52.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %indvars.iv6782, 1
  %i.as = icmp eq i64 %indvar, %i.j
  br i1 %i.as, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %indvars.iv6782, -2
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %indvars.iv60 = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %indvars.iv.next61.1, %.lr.ph52 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.1, %.lr.ph52 ]
  %i.at = load double, ptr %i.ao, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next7083
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !14
  %i.ba = fneg double %i.at
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ax, double %i.az)
  store double %i.bb, ptr %i.ay, align 8, !tbaa !14
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.bc = load double, ptr %i.ao, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next7083
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next61 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = fneg double %i.bc
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bg, double %i.bi)
  store double %i.bk, ptr %i.bh, align 8, !tbaa !14
  %indvars.iv.next61.1 = add nuw nsw i64 %indvars.iv60, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %.lr.ph52

.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge: ; preds = %.loopexit
  %i.bl = trunc nuw nsw i64 %indvars.iv.next7083 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph56.preheader, %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %0, %.lr.ph56.preheader ], [ %i.bl, %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNQRAdd_MGS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.a) #7
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = mul nsw i32 %4, %3
  %i.e = sext i32 %i.d to i64
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.048 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = load ptr, ptr %5, align 8, !tbaa !16
  %i.i = tail call double @N_VDotProd(ptr noundef %i.g, ptr noundef %i.h) #7 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.048
  store double %i.i, ptr %gep, align 8, !tbaa !14
  %i.j = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.k = fneg double %i.i
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !10
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.j, double noundef %i.k, ptr noundef %i.l, ptr noundef %i.j) #7
  %i.m = add nuw nsw i64 %.048, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.n = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.o = tail call double @N_VDotProd(ptr noundef %i.n, ptr noundef %i.n) #7 ; 2 uses
  %i.p = fcmp ugt double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.q = tail call double @sqrt(double noundef %i.o) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.r = phi double [ %i.q, %bb.c ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.s = add i32 %4, 1
  %i.t = mul i32 %i.s, %3
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  store double %i.r, ptr %i.v, align 8, !tbaa !14
  %i.w = fdiv double 1.000000e+00, %i.r
  %i.x = load ptr, ptr %5, align 8, !tbaa !16
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  tail call void @N_VScale(double noundef %i.w, ptr noundef %i.x, ptr noundef %i.z) #7
  ret i32 0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i32 @SUNQRAdd_ICWY(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.a) #7
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %3, -1                       ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = mul nsw i32 %i.c, %4                     ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j
  %i.l = tail call i32 @N_VDotProdMulti(i32 noundef %3, ptr noundef %i.f, ptr noundef %0, ptr noundef %i.k) #7 ; 0 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.n = add nsw i32 %i.i, %i.c
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !14
  %i.q = load ptr, ptr %5, align 8, !tbaa !16
  %i.r = mul nsw i32 %4, %3
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %1, i64 %i.s ; 7 uses
  %i.u = tail call i32 @N_VDotProdMulti(i32 noundef %3, ptr noundef %i.q, ptr noundef %0, ptr noundef %i.t) #7 ; 0 uses
  %i.v = zext nneg i32 %3 to i64                  ; 7 uses
  %i.w = sext i32 %4 to i64                       ; 3 uses
  %i.x = shl nsw i64 %i.s, 3                      ; 2 uses
  %i.y = shl nuw nsw i64 %i.v, 3                  ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %i.x
  %scevgep88 = getelementptr i8, ptr %i.z, i64 %i.y
  %i.aa = getelementptr i8, ptr %1, i64 %i.x
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %ident.check.not = icmp eq i32 %4, 1
  %i.ac = add nsw i64 %i.v, -1
  br label %bb.c

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %exitcond84.not = icmp eq i64 %i.af, %i.v
  br i1 %exitcond84.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  %.083 = phi i64 [ 0, %bb.b ], [ %i.af, %.loopexit ] ; 6 uses
  %i.ad = shl nuw nsw i64 %.083, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.ae = shl nuw nsw i64 %.083, 4
  %i.af = add nuw nsw i64 %.083, 1                ; 7 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.v
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %gep82 = getelementptr [8 x i8], ptr %i.t, i64 %.083 ; 4 uses
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !17  ; 3 uses
  %invariant.gep79 = getelementptr [8 x i8], ptr %i.ah, i64 %.083 ; 4 uses
  %6 = xor i64 %.083, -1
  %7 = add nsw i64 %6, %i.v                       ; 3 uses
  %min.iters.check = icmp ugt i64 %7, 3
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ae
  %scevgep89 = getelementptr i8, ptr %i.ai, i64 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.y
  %scevgep90 = getelementptr i8, ptr %i.aj, i64 %i.ad
  %bound0 = icmp ult ptr %scevgep, %scevgep90
  %bound1 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, -4                         ; 3 uses
  %i.ak = add i64 %i.af, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add nuw i64 %i.af, %index               ; 2 uses
  %i.am = load double, ptr %gep82, align 8, !tbaa !14, !alias.scope !28
  %i.an = getelementptr [8 x i8], ptr %invariant.gep79, i64 %i.al ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !14, !alias.scope !29
  %wide.load91 = load <2 x double>, ptr %i.ao, align 8, !tbaa !14, !alias.scope !29
  %i.ap = getelementptr [8 x i8], ptr %i.t, i64 %i.al ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %wide.load92 = load <2 x double>, ptr %i.ap, align 8, !tbaa !14, !alias.scope !30, !noalias !29
  %wide.load93 = load <2 x double>, ptr %i.aq, align 8, !tbaa !14, !alias.scope !30, !noalias !29
  %.scalar = fneg double %i.am
  %i.ar = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %wide.load, <2 x double> %wide.load92)
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %wide.load91, <2 x double> %wide.load93)
  store <2 x double> %i.at, ptr %i.ap, align 8, !tbaa !14, !alias.scope !30, !noalias !29
  store <2 x double> %i.au, ptr %i.aq, align 8, !tbaa !14, !alias.scope !30, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.07478.ph = phi i64 [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph ], [ %i.ak, %middle.block ] ; 6 uses
  %i.aw = sub i64 %i.v, %.07478.ph
  %xtraiter = and i64 %i.aw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ax = load double, ptr %gep82, align 8, !tbaa !14
  %i.ay = mul nsw i64 %.07478.ph, %i.w
  %gep80.prol = getelementptr [8 x i8], ptr %invariant.gep79, i64 %i.ay
  %i.az = load double, ptr %gep80.prol, align 8, !tbaa !14
  %gep.prol = getelementptr [8 x i8], ptr %i.t, i64 %.07478.ph ; 2 uses
  %i.ba = load double, ptr %gep.prol, align 8, !tbaa !14
  %i.bb = fneg double %i.ax
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.az, double %i.ba)
  store double %i.bc, ptr %gep.prol, align 8, !tbaa !14
  %i.bd = add nuw nsw i64 %.07478.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07478.unr = phi i64 [ %.07478.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = icmp eq i64 %.07478.ph, %i.ac
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07478 = phi i64 [ %i.bs, %scalar.ph ], [ %.07478.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bf = load double, ptr %gep82, align 8, !tbaa !14
  %i.bg = mul nsw i64 %.07478, %i.w
  %gep80 = getelementptr [8 x i8], ptr %invariant.gep79, i64 %i.bg
  %i.bh = load double, ptr %gep80, align 8, !tbaa !14
  %gep = getelementptr [8 x i8], ptr %i.t, i64 %.07478 ; 2 uses
  %i.bi = load double, ptr %gep, align 8, !tbaa !14
  %i.bj = fneg double %i.bf
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bh, double %i.bi)
  store double %i.bk, ptr %gep, align 8, !tbaa !14
  %i.bl = add nuw nsw i64 %.07478, 1              ; 2 uses
  %i.bm = load double, ptr %gep82, align 8, !tbaa !14
  %i.bn = mul nsw i64 %i.bl, %i.w
  %gep80.1 = getelementptr [8 x i8], ptr %invariant.gep79, i64 %i.bn
  %i.bo = load double, ptr %gep80.1, align 8, !tbaa !14
  %gep.1 = getelementptr [8 x i8], ptr %i.t, i64 %i.bl ; 2 uses
  %i.bp = load double, ptr %gep.1, align 8, !tbaa !14
  %i.bq = fneg double %i.bm
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bo, double %i.bp)
  store double %i.br, ptr %gep.1, align 8, !tbaa !14
  %i.bs = add nuw nsw i64 %.07478, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bs, %i.v
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !27

bb.d:                                             ; preds = %.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.bv = tail call i32 @N_VLinearCombination(i32 noundef %3, ptr noundef %i.t, ptr noundef %0, ptr noundef %i.bu) #7 ; 0 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !20
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bw, double noundef -1.000000e+00, ptr noundef %i.bx, ptr noundef %i.bw) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.by = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bz = tail call double @N_VDotProd(ptr noundef %i.by, ptr noundef %i.by) #7 ; 2 uses
  %i.ca = fcmp ugt double %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = tail call double @sqrt(double noundef %i.bz) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cc = phi double [ %i.cb, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.cd = add i32 %4, 1
  %i.ce = mul i32 %i.cd, %3
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cf
  store double %i.cc, ptr %i.cg, align 8, !tbaa !14
  %i.ch = fdiv double 1.000000e+00, %i.cc
  %i.ci = load ptr, ptr %5, align 8, !tbaa !16
  %i.cj = sext i32 %3 to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10
  tail call void @N_VScale(double noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cl) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNQRAdd_ICWY_SB(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.b) #7
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %3, -1                       ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = mul nsw i32 %i.d, %4                     ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.k
  %i.m = tail call i32 @N_VDotProdMultiLocal(i32 noundef %3, ptr noundef %i.g, ptr noundef %0, ptr noundef %i.l) #7 ; 0 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !16
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.k
  %i.q = zext nneg i32 %3 to i64                  ; 13 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = tail call i32 @N_VDotProdMultiLocal(i32 noundef %3, ptr noundef %i.n, ptr noundef %0, ptr noundef nonnull %i.r) #7 ; 0 uses
  %i.t = shl nuw nsw i32 %3, 1
  %i.u = load ptr, ptr %5, align 8, !tbaa !16
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.k
  %i.x = tail call i32 @N_VDotProdMultiAllReduce(i32 noundef %i.t, ptr noundef %i.u, ptr noundef %i.w) #7 ; 0 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !17   ; 6 uses
  %i.z = add nsw i32 %i.j, %3
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.y, i64 %i.aa ; 6 uses
  %i.ab = mul i32 %4, %3
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %invariant.gep97 = getelementptr [8 x i8], ptr %1, i64 %i.ac ; 12 uses
  %min.iters.check = icmp ult i32 %3, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.ad = ptrtoaddr ptr %i.y to i64
  %i.ae = shl nsw i64 %i.ac, 3
  %i.af = add i64 %i.ae, %i.a
  %i.ag = shl nsw i64 %i.aa, 3
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = sub i64 %i.ah, %i.af
  %diff.check = icmp ugt i64 %i.ai, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %wide.load = load <2 x double>, ptr %i.aj, align 8, !tbaa !14
  %wide.load113 = load <2 x double>, ptr %i.ak, align 8, !tbaa !14
  %i.al = getelementptr [8 x i8], ptr %invariant.gep97, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  store <2 x double> %wide.load, ptr %i.al, align 8, !tbaa !14
  store <2 x double> %wide.load113, ptr %i.am, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %.loopexit132, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.099.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.099.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.099.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.099.prol
  %i.ao = load double, ptr %gep.prol, align 8, !tbaa !14
  %gep98.prol = getelementptr [8 x i8], ptr %invariant.gep97, i64 %.099.prol
  store double %i.ao, ptr %gep98.prol, align 8, !tbaa !14
  %i.ap = add nuw nsw i64 %.099.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !32

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.099.unr = phi i64 [ %.099.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = sub nsw i64 %.099.ph, %i.q
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %.loopexit132, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.099 = phi i64 [ %i.az, %scalar.ph ], [ %.099.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.099
  %i.as = load double, ptr %gep, align 8, !tbaa !14
  %gep98 = getelementptr [8 x i8], ptr %invariant.gep97, i64 %.099
  store double %i.as, ptr %gep98, align 8, !tbaa !14
  %i.at = add nuw nsw i64 %.099, 1                ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.at
  %i.au = load double, ptr %gep.1, align 8, !tbaa !14
  %gep98.1 = getelementptr [8 x i8], ptr %invariant.gep97, i64 %i.at
  store double %i.au, ptr %gep98.1, align 8, !tbaa !14
  %i.av = add nuw nsw i64 %.099, 2                ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.av
  %i.aw = load double, ptr %gep.2, align 8, !tbaa !14
  %gep98.2 = getelementptr [8 x i8], ptr %invariant.gep97, i64 %i.av
  store double %i.aw, ptr %gep98.2, align 8, !tbaa !14
  %i.ax = add nuw nsw i64 %.099, 3                ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ax
  %i.ay = load double, ptr %gep.3, align 8, !tbaa !14
  %gep98.3 = getelementptr [8 x i8], ptr %invariant.gep97, i64 %i.ax
  store double %i.ay, ptr %gep98.3, align 8, !tbaa !14
  %i.az = add nuw nsw i64 %.099, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.az, %i.q
  br i1 %exitcond.not.3, label %.loopexit132, label %scalar.ph, !llvm.loop !33

.loopexit132:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ba = add nsw i32 %i.j, %i.d
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bb
  store double 1.000000e+00, ptr %i.bc, align 8, !tbaa !14
  %i.bd = sext i32 %4 to i64                      ; 3 uses
  %i.be = shl nsw i64 %i.ac, 3                    ; 2 uses
  %i.bf = shl nuw nsw i64 %i.q, 3                 ; 2 uses
  %i.bg = getelementptr i8, ptr %1, i64 %i.be
  %scevgep115 = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bh = getelementptr i8, ptr %1, i64 %i.be
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = getelementptr i8, ptr %i.y, i64 %i.bf
  %ident.check.not = icmp eq i32 %4, 1
  %i.bk = add nsw i64 %i.q, -1
  br label %bb.c

.loopexit:                                        ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118, %middle.block129, %bb.c
  %exitcond109.not = icmp eq i64 %i.bo, %i.q
  br i1 %exitcond109.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit132, %.loopexit
  %.1105 = phi i64 [ 0, %.loopexit132 ], [ %i.bo, %.loopexit ] ; 6 uses
  %i.bl = shl nuw nsw i64 %.1105, 3               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.bl
  %i.bm = shl nuw nsw i64 %.1105, 4
  %i.bn = getelementptr i8, ptr %i.y, i64 %i.bm
  %scevgep116 = getelementptr i8, ptr %i.bn, i64 8
  %scevgep117 = getelementptr i8, ptr %i.bj, i64 %i.bl
  %i.bo = add nuw nsw i64 %.1105, 1               ; 7 uses
  %invariant.gep100 = getelementptr [8 x i8], ptr %i.y, i64 %.1105 ; 4 uses
  %i.bp = icmp samesign ult i64 %i.bo, %i.q
  br i1 %i.bp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %gep107 = getelementptr [8 x i8], ptr %invariant.gep97, i64 %.1105 ; 4 uses
  %6 = xor i64 %.1105, -1
  %7 = add nsw i64 %6, %i.q                       ; 3 uses
  %min.iters.check119 = icmp ugt i64 %7, 3
  %or.cond = and i1 %min.iters.check119, %ident.check.not
  br i1 %or.cond, label %vector.memcheck114, label %scalar.ph118.preheader

vector.memcheck114:                               ; preds = %.lr.ph
  %bound0 = icmp ult ptr %scevgep, %scevgep117
  %bound1 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck114
  %n.vec121 = and i64 %7, -4                      ; 3 uses
  %i.bq = add i64 %i.bo, %n.vec121
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next128, %vector.body122 ] ; 2 uses
  %i.br = add nuw i64 %i.bo, %index123            ; 2 uses
  %i.bs = load double, ptr %gep107, align 8, !tbaa !14, !alias.scope !40
  %i.bt = getelementptr [8 x i8], ptr %invariant.gep100, i64 %i.br ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %wide.load124 = load <2 x double>, ptr %i.bt, align 8, !tbaa !14, !alias.scope !41
  %wide.load125 = load <2 x double>, ptr %i.bu, align 8, !tbaa !14, !alias.scope !41
  %i.bv = getelementptr [8 x i8], ptr %invariant.gep97, i64 %i.br ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16     ; 2 uses
  %wide.load126 = load <2 x double>, ptr %i.bv, align 8, !tbaa !14, !alias.scope !42, !noalias !41
  %wide.load127 = load <2 x double>, ptr %i.bw, align 8, !tbaa !14, !alias.scope !42, !noalias !41
  %.scalar = fneg double %i.bs
  %i.bx = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %wide.load124, <2 x double> %wide.load126)
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %wide.load125, <2 x double> %wide.load127)
  store <2 x double> %i.bz, ptr %i.bv, align 8, !tbaa !14, !alias.scope !42, !noalias !41
  store <2 x double> %i.ca, ptr %i.bw, align 8, !tbaa !14, !alias.scope !42, !noalias !41
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.cb, label %middle.block129, label %vector.body122, !llvm.loop !38

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %7, %n.vec121
  br i1 %cmp.n130, label %.loopexit, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %vector.memcheck114, %.lr.ph, %middle.block129
  %.093102.ph = phi i64 [ %i.bo, %vector.memcheck114 ], [ %i.bo, %.lr.ph ], [ %i.bq, %middle.block129 ] ; 6 uses
  %i.cc = sub i64 %i.q, %.093102.ph
  %xtraiter133 = and i64 %i.cc, 1
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %scalar.ph118.prol.loopexit, label %scalar.ph118.prol

scalar.ph118.prol:                                ; preds = %scalar.ph118.preheader
  %i.cd = load double, ptr %gep107, align 8, !tbaa !14
  %i.ce = mul nsw i64 %.093102.ph, %i.bd
  %gep101.prol = getelementptr [8 x i8], ptr %invariant.gep100, i64 %i.ce
  %i.cf = load double, ptr %gep101.prol, align 8, !tbaa !14
  %gep104.prol = getelementptr [8 x i8], ptr %invariant.gep97, i64 %.093102.ph ; 2 uses
  %i.cg = load double, ptr %gep104.prol, align 8, !tbaa !14
  %i.ch = fneg double %i.cd
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cf, double %i.cg)
  store double %i.ci, ptr %gep104.prol, align 8, !tbaa !14
  %i.cj = add nuw nsw i64 %.093102.ph, 1
  br label %scalar.ph118.prol.loopexit

scalar.ph118.prol.loopexit:                       ; preds = %scalar.ph118.prol, %scalar.ph118.preheader
  %.093102.unr = phi i64 [ %.093102.ph, %scalar.ph118.preheader ], [ %i.cj, %scalar.ph118.prol ]
  %i.ck = icmp eq i64 %.093102.ph, %i.bk
  br i1 %i.ck, label %.loopexit, label %scalar.ph118

scalar.ph118:                                     ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118
  %.093102 = phi i64 [ %i.cy, %scalar.ph118 ], [ %.093102.unr, %scalar.ph118.prol.loopexit ] ; 4 uses
  %i.cl = load double, ptr %gep107, align 8, !tbaa !14
  %i.cm = mul nsw i64 %.093102, %i.bd
  %gep101 = getelementptr [8 x i8], ptr %invariant.gep100, i64 %i.cm
  %i.cn = load double, ptr %gep101, align 8, !tbaa !14
  %gep104 = getelementptr [8 x i8], ptr %invariant.gep97, i64 %.093102 ; 2 uses
  %i.co = load double, ptr %gep104, align 8, !tbaa !14
  %i.cp = fneg double %i.cl
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cn, double %i.co)
  store double %i.cq, ptr %gep104, align 8, !tbaa !14
  %i.cr = add nuw nsw i64 %.093102, 1             ; 2 uses
  %i.cs = load double, ptr %gep107, align 8, !tbaa !14
  %i.ct = mul nsw i64 %i.cr, %i.bd
  %gep101.1 = getelementptr [8 x i8], ptr %invariant.gep100, i64 %i.ct
  %i.cu = load double, ptr %gep101.1, align 8, !tbaa !14
  %gep104.1 = getelementptr [8 x i8], ptr %invariant.gep97, i64 %i.cr ; 2 uses
  %i.cv = load double, ptr %gep104.1, align 8, !tbaa !14
  %i.cw = fneg double %i.cs
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cu, double %i.cv)
  store double %i.cx, ptr %gep104.1, align 8, !tbaa !14
  %i.cy = add nuw nsw i64 %.093102, 2             ; 2 uses
  %exitcond108.not.1 = icmp eq i64 %i.cy, %i.q
  br i1 %exitcond108.not.1, label %.loopexit, label %scalar.ph118, !llvm.loop !39

bb.d:                                             ; preds = %.loopexit
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !20
  %i.db = tail call i32 @N_VLinearCombination(i32 noundef %3, ptr noundef %invariant.gep97, ptr noundef %0, ptr noundef %i.da) #7 ; 0 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !20
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dc, double noundef -1.000000e+00, ptr noundef %i.dd, ptr noundef %i.dc) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.de = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.df = tail call double @N_VDotProd(ptr noundef %i.de, ptr noundef %i.de) #7 ; 2 uses
  %i.dg = fcmp ugt double %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dh = tail call double @sqrt(double noundef %i.df) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.di = phi double [ %i.dh, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.dj = add i32 %4, 1
  %i.dk = mul i32 %i.dj, %3
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dl
  store double %i.di, ptr %i.dm, align 8, !tbaa !14
  %i.dn = fdiv double 1.000000e+00, %i.di
  %i.do = load ptr, ptr %5, align 8, !tbaa !16
  %i.dp = sext i32 %3 to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !10
  tail call void @N_VScale(double noundef %i.dn, ptr noundef %i.do, ptr noundef %i.dr) #7
  ret i32 0
}

declare i32 @N_VDotProdMultiLocal(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @N_VDotProdMultiAllReduce(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i32 @SUNQRAdd_CGS2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.a) #7
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !16
  %i.d = mul nsw i32 %4, %3
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.e ; 9 uses
  %i.g = tail call i32 @N_VDotProdMulti(i32 noundef %3, ptr noundef %i.c, ptr noundef %0, ptr noundef %i.f) #7 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = tail call i32 @N_VLinearCombination(i32 noundef %3, ptr noundef %i.f, ptr noundef %0, ptr noundef %i.i) #7 ; 0 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.k, double noundef -1.000000e+00, ptr noundef %i.l, ptr noundef %i.l) #7
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = tail call i32 @N_VDotProdMulti(i32 noundef %3, ptr noundef %i.m, ptr noundef %0, ptr noundef %i.o) #7 ; 0 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.r = zext nneg i32 %3 to i64                  ; 8 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = tail call i32 @N_VLinearCombination(i32 noundef %3, ptr noundef %i.q, ptr noundef %0, ptr noundef %i.t) #7 ; 0 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.x = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.v, double noundef -1.000000e+00, ptr noundef %i.w, ptr noundef %i.x) #7
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !17   ; 8 uses
  %min.iters.check = icmp ult i32 %3, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.z = shl nuw nsw i64 %i.r, 3
  %i.aa = add nsw i64 %i.e, %i.r
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.y, i64 %i.z
  %bound0 = icmp ult ptr %i.f, %i.ad
  %bound1 = icmp ult ptr %i.y, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !14, !alias.scope !49, !noalias !50
  %wide.load75 = load <2 x double>, ptr %i.af, align 8, !tbaa !14, !alias.scope !49, !noalias !50
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load76 = load <2 x double>, ptr %i.ag, align 8, !tbaa !14, !alias.scope !50
  %wide.load77 = load <2 x double>, ptr %i.ah, align 8, !tbaa !14, !alias.scope !50
  %i.ai = fadd <2 x double> %wide.load, %wide.load76
  %i.aj = fadd <2 x double> %wide.load75, %wide.load77
  store <2 x double> %i.ai, ptr %i.ae, align 8, !tbaa !14, !alias.scope !49, !noalias !50
  store <2 x double> %i.aj, ptr %i.af, align 8, !tbaa !14, !alias.scope !49, !noalias !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !46
end_hunk_0
