inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@daxpy:bb.a
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load71, <2 x double> %wide.load73)
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !10, !alias.scope !36, !noalias !33
  store <2 x double> %i.p, ptr %i.n, align 8, !tbaa !10, !alias.scope !36, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader103
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.r = load double, ptr %gep.prol, align 8, !tbaa !10
  %gep64.prol = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv.ph ; 2 uses
  %i.s = load double, ptr %gep64.prol, align 8, !tbaa !10
  %i.t = tail call double @llvm.fmuladd.f64(double %1, double %i.r, double %i.s)
  store double %i.t, ptr %gep64.prol, align 8, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader103
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader103 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.u = add nsw i64 %wide.trip.count, -1
  %i.v = icmp eq i64 %indvars.iv.ph, %i.u
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph49.preheader:                               ; preds = %bb.b
  %i.w = icmp slt i32 %7, 0
  %i.x = sub nsw i32 1, %0                        ; 2 uses
  %i.y = mul nsw i32 %7, %i.x
  %.0 = select i1 %i.w, i32 %i.y, i32 0
  %i.z = icmp slt i32 %4, 0
  %i.aa = mul nsw i32 %4, %i.x
  %.036 = select i1 %i.z, i32 %i.aa, i32 0
  %i.ab = sext i32 %.0 to i64                     ; 6 uses
  %i.ac = sext i32 %7 to i64                      ; 3 uses
  %i.ad = sext i32 %6 to i64                      ; 2 uses
  %i.ae = sext i32 %.036 to i64                   ; 6 uses
  %i.af = sext i32 %4 to i64                      ; 3 uses
  %i.ag = sext i32 %3 to i64                      ; 2 uses
  %invariant.gep65 = getelementptr [8 x i8], ptr %2, i64 %i.ag ; 4 uses
  %invariant.gep67 = getelementptr [8 x i8], ptr %5, i64 %i.ad ; 4 uses
  %i.ah = zext nneg i32 %0 to i64                 ; 2 uses
  %min.iters.check84 = icmp ult i32 %0, 18
  br i1 %min.iters.check84, label %.lr.ph49.preheader102, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph49.preheader
  %ident.check = icmp ne i32 %7, 1
  %ident.check74 = icmp ne i32 %4, 1
  %i.ai = or i1 %ident.check, %ident.check74
  br i1 %i.ai, label %.lr.ph49.preheader102, label %vector.memcheck75

vector.memcheck75:                                ; preds = %vector.scevcheck
  %i.aj = add nsw i64 %i.ad, %i.ab
  %i.ak = shl nsw i64 %i.aj, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %5, i64 %i.ak
  %i.al = add nsw i32 %0, -1
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %i.ao = getelementptr i8, ptr %5, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  %scevgep77 = getelementptr i8, ptr %i.ap, i64 8
  %i.aq = add nsw i64 %i.ag, %i.ae
  %i.ar = shl nsw i64 %i.aq, 3                    ; 2 uses
  %scevgep78 = getelementptr i8, ptr %2, i64 %i.ar
  %i.as = getelementptr i8, ptr %2, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.an
  %scevgep79 = getelementptr i8, ptr %i.at, i64 8
  %bound080 = icmp ult ptr %scevgep76, %scevgep79
  %bound181 = icmp ult ptr %scevgep78, %scevgep77
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %.lr.ph49.preheader102, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck75
  %n.vec87 = and i64 %i.ah, 2147483644            ; 5 uses
  %i.au = add nsw i64 %n.vec87, %i.ae
  %i.av = add nsw i64 %n.vec87, %i.ab
  %i.aw = trunc nuw nsw i64 %n.vec87 to i32
  %broadcast.splatinsert88 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat89 = shufflevector <2 x double> %broadcast.splatinsert88, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep107 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %i.ae
  %invariant.gep109 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %i.ab
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph85
  %index91 = phi i64 [ 0, %vector.ph85 ], [ %index.next96, %vector.body90 ] ; 3 uses
  %gep108 = getelementptr [8 x i8], ptr %invariant.gep107, i64 %index91 ; 2 uses
  %i.ax = getelementptr i8, ptr %gep108, i64 16
  %wide.load92 = load <2 x double>, ptr %gep108, align 8, !tbaa !10, !alias.scope !39
  %wide.load93 = load <2 x double>, ptr %i.ax, align 8, !tbaa !10, !alias.scope !39
  %gep110 = getelementptr [8 x i8], ptr %invariant.gep109, i64 %index91 ; 3 uses
  %i.ay = getelementptr i8, ptr %gep110, i64 16   ; 2 uses
  %wide.load94 = load <2 x double>, ptr %gep110, align 8, !tbaa !10, !alias.scope !42, !noalias !39
  %wide.load95 = load <2 x double>, ptr %i.ay, align 8, !tbaa !10, !alias.scope !42, !noalias !39
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %wide.load92, <2 x double> %wide.load94)
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %wide.load93, <2 x double> %wide.load95)
  store <2 x double> %i.az, ptr %gep110, align 8, !tbaa !10, !alias.scope !42, !noalias !39
  store <2 x double> %i.ba, ptr %i.ay, align 8, !tbaa !10, !alias.scope !42, !noalias !39
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next96, %n.vec87
  br i1 %i.bb, label %middle.block97, label %vector.body90, !llvm.loop !44

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %n.vec87, %i.ah
  br i1 %cmp.n98, label %.loopexit, label %.lr.ph49.preheader102

.lr.ph49.preheader102:                            ; preds = %vector.memcheck75, %vector.scevcheck, %.lr.ph49.preheader, %middle.block97
  %indvars.iv54.ph = phi i64 [ %i.ae, %vector.memcheck75 ], [ %i.ae, %vector.scevcheck ], [ %i.ae, %.lr.ph49.preheader ], [ %i.au, %middle.block97 ] ; 3 uses
  %indvars.iv52.ph = phi i64 [ %i.ab, %vector.memcheck75 ], [ %i.ab, %vector.scevcheck ], [ %i.ab, %.lr.ph49.preheader ], [ %i.av, %middle.block97 ] ; 3 uses
  %.03846.ph = phi i32 [ 0, %vector.memcheck75 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph49.preheader ], [ %i.aw, %middle.block97 ] ; 4 uses
  %i.bc = sub i32 %0, %.03846.ph
  %.neg = add i32 %.03846.ph, 1
  %xtraiter105 = and i32 %i.bc, 1
  %lcmp.mod106.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader102
  %gep66.prol = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv54.ph
  %i.bd = load double, ptr %gep66.prol, align 8, !tbaa !10
  %gep68.prol = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv52.ph ; 2 uses
  %i.be = load double, ptr %gep68.prol, align 8, !tbaa !10
  %i.bf = tail call double @llvm.fmuladd.f64(double %1, double %i.bd, double %i.be)
  store double %i.bf, ptr %gep68.prol, align 8, !tbaa !10
  %indvars.iv.next55.prol = add nsw i64 %indvars.iv54.ph, %i.af
  %indvars.iv.next53.prol = add nsw i64 %indvars.iv52.ph, %i.ac
  %i.bg = add nuw nsw i32 %.03846.ph, 1
  br label %.lr.ph49.prol.loopexit

.lr.ph49.prol.loopexit:                           ; preds = %.lr.ph49.prol, %.lr.ph49.preheader102
  %indvars.iv54.unr = phi i64 [ %indvars.iv54.ph, %.lr.ph49.preheader102 ], [ %indvars.iv.next55.prol, %.lr.ph49.prol ]
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %.lr.ph49.preheader102 ], [ %indvars.iv.next53.prol, %.lr.ph49.prol ]
  %.03846.unr = phi i32 [ %.03846.ph, %.lr.ph49.preheader102 ], [ %i.bg, %.lr.ph49.prol ]
  %i.bh = icmp eq i32 %0, %.neg
  br i1 %i.bh, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49
  %indvars.iv54 = phi i64 [ %indvars.iv.next55.1, %.lr.ph49 ], [ %indvars.iv54.unr, %.lr.ph49.prol.loopexit ] ; 2 uses
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.1, %.lr.ph49 ], [ %indvars.iv52.unr, %.lr.ph49.prol.loopexit ] ; 2 uses
  %.03846 = phi i32 [ %i.bo, %.lr.ph49 ], [ %.03846.unr, %.lr.ph49.prol.loopexit ]
  %gep66 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv54
  %i.bi = load double, ptr %gep66, align 8, !tbaa !10
  %gep68 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv52 ; 2 uses
  %i.bj = load double, ptr %gep68, align 8, !tbaa !10
  %i.bk = tail call double @llvm.fmuladd.f64(double %1, double %i.bi, double %i.bj)
  store double %i.bk, ptr %gep68, align 8, !tbaa !10
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, %i.af ; 2 uses
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, %i.ac ; 2 uses
  %gep66.1 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv.next55
  %i.bl = load double, ptr %gep66.1, align 8, !tbaa !10
  %gep68.1 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv.next53 ; 2 uses
  %i.bm = load double, ptr %gep68.1, align 8, !tbaa !10
  %i.bn = tail call double @llvm.fmuladd.f64(double %1, double %i.bl, double %i.bm)
  store double %i.bn, ptr %gep68.1, align 8, !tbaa !10
  %indvars.iv.next55.1 = add nsw i64 %indvars.iv.next55, %i.af
  %indvars.iv.next53.1 = add nsw i64 %indvars.iv.next53, %i.ac
  %i.bo = add nuw nsw i32 %.03846, 2              ; 2 uses
  %exitcond59.not.1 = icmp eq i32 %i.bo, %0
  br i1 %exitcond59.not.1, label %.loopexit, label %.lr.ph49, !llvm.loop !45

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bp = load double, ptr %gep, align 8, !tbaa !10
  %gep64 = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv ; 2 uses
  %i.bq = load double, ptr %gep64, align 8, !tbaa !10
  %i.br = tail call double @llvm.fmuladd.f64(double %1, double %i.bp, double %i.bq)
  store double %i.br, ptr %gep64, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bs = load double, ptr %gep.1, align 8, !tbaa !10
  %gep64.1 = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv.next ; 2 uses
  %i.bt = load double, ptr %gep64.1, align 8, !tbaa !10
  %i.bu = tail call double @llvm.fmuladd.f64(double %1, double %i.bs, double %i.bt)
  store double %i.bu, ptr %gep64.1, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph49.prol.loopexit, %.lr.ph49, %middle.block, %middle.block97, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dgefa(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv69 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next70, %.loopexit ] ; 13 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %2 = sub nsw i64 1999, %indvars.iv69            ; 3 uses
  %i.a = sub nsw i64 1999, %indvars.iv69          ; 3 uses
  %i.b = sub nsw i64 1999, %indvars.iv69          ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv69
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv69 ; 5 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !10 ; 3 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.f) ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.h = icmp eq i64 %indvars.iv69, 1998
  br i1 %i.h, label %.lr.ph49.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i, %.new
  %indvars.iv53.i = phi i64 [ 1, %.new ], [ %indvars.iv.next54.i.1, %.lr.ph49.i ] ; 4 uses
  %.248.i = phi i32 [ 0, %.new ], [ %.3.i.1, %.lr.ph49.i ]
  %.23546.i = phi double [ %i.g, %.new ], [ %.336.i.1, %.lr.ph49.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph49.i ]
  %gep61.i = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv53.i
  %i.i = load double, ptr %gep61.i, align 8, !tbaa !10
  %i.j = tail call double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.k = fcmp ogt double %i.j, %.23546.i          ; 2 uses
  %.336.i = select i1 %i.k, double %i.j, double %.23546.i ; 2 uses
  %i.l = trunc nuw nsw i64 %indvars.iv53.i to i32
  %.3.i = select i1 %i.k, i32 %i.l, i32 %.248.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %gep61.i.1 = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next54.i
  %i.m = load double, ptr %gep61.i.1, align 8, !tbaa !10
  %i.n = tail call double @llvm.fabs.f64(double %i.m) ; 2 uses
  %i.o = fcmp ogt double %i.n, %.336.i            ; 2 uses
  %.336.i.1 = select i1 %i.o, double %i.n, double %.336.i ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next54.i to i32
  %.3.i.1 = select i1 %i.o, i32 %i.p, i32 %.3.i   ; 3 uses
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.unr-lcssa, label %.lr.ph49.i, !llvm.loop !29

idamax.exit.unr-lcssa:                            ; preds = %.lr.ph49.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit, label %.lr.ph49.i.epil.preheader

.lr.ph49.i.epil.preheader:                        ; preds = %idamax.exit.unr-lcssa, %bb.b
  %indvars.iv53.i.epil.init = phi i64 [ 1, %bb.b ], [ %indvars.iv.next54.i.1, %idamax.exit.unr-lcssa ] ; 2 uses
  %.248.i.epil.init = phi i32 [ 0, %bb.b ], [ %.3.i.1, %idamax.exit.unr-lcssa ]
  %.23546.i.epil.init = phi double [ %i.g, %bb.b ], [ %.336.i.1, %idamax.exit.unr-lcssa ]
  %lcmp.mod95 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %gep61.i.epil = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv53.i.epil.init
  %i.q = load double, ptr %gep61.i.epil, align 8, !tbaa !10
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ogt double %i.r, %.23546.i.epil.init
  %i.t = trunc nuw nsw i64 %indvars.iv53.i.epil.init to i32
  %.3.i.epil = select i1 %i.s, i32 %i.t, i32 %.248.i.epil.init
  br label %idamax.exit

idamax.exit:                                      ; preds = %idamax.exit.unr-lcssa, %.lr.ph49.i.epil.preheader
  %.3.i.lcssa = phi i32 [ %.3.i.1, %idamax.exit.unr-lcssa ], [ %.3.i.epil, %.lr.ph49.i.epil.preheader ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.u = trunc nuw nsw i64 %indvars.iv69 to i32
  %i.v = add nsw i32 %.3.i.lcssa, %i.u            ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store i32 %i.v, ptr %i.w, align 4, !tbaa !4
  %i.x = sext i32 %i.v to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !10 ; 3 uses
  %i.aa = fcmp une double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %idamax.exit
  %.not = icmp eq i32 %.3.i.lcssa, 0              ; 2 uses
  br i1 %.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store double %i.f, ptr %i.y, align 8, !tbaa !10
  store double %i.z, ptr %i.e, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.ab = phi double [ %i.z, %.thread ], [ %i.f, %bb.c ]
  %i.ac = fdiv double -1.000000e+00, %i.ab        ; 2 uses
  %i.ad = sub nuw nsw i64 1999, %indvars.iv69     ; 2 uses
  %invariant.gep32.i = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.next70 ; 7 uses
  %min.iters.check80 = icmp ult i64 %i.a, 4
  br i1 %min.iters.check80, label %.lr.ph23.i.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %bb.d
  %n.vec83 = and i64 %i.a, -4                     ; 3 uses
  %broadcast.splatinsert84 = insertelement <2 x double> poison, double %i.ac, i64 0
  %broadcast.splat85 = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph81
  %index87 = phi i64 [ 0, %vector.ph81 ], [ %index.next90, %vector.body86 ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %index87 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  %wide.load88 = load <2 x double>, ptr %i.ae, align 8, !tbaa !10
  %wide.load89 = load <2 x double>, ptr %i.af, align 8, !tbaa !10
  %i.ag = fmul <2 x double> %broadcast.splat85, %wide.load88
  %i.ah = fmul <2 x double> %broadcast.splat85, %wide.load89
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !10
  store <2 x double> %i.ah, ptr %i.af, align 8, !tbaa !10
  %index.next90 = add nuw i64 %index87, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next90, %n.vec83
  br i1 %i.ai, label %middle.block91, label %vector.body86, !llvm.loop !47

middle.block91:                                   ; preds = %vector.body86
  %cmp.n92 = icmp eq i64 %i.a, %n.vec83
  br i1 %cmp.n92, label %.lr.ph.preheader, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %bb.d, %middle.block91
  %indvars.iv26.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec83, %middle.block91 ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader, %.lr.ph23.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %.lr.ph23.i ], [ %indvars.iv26.i.ph, %.lr.ph23.i.preheader ] ; 2 uses
  %gep33.i = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv26.i ; 2 uses
  %i.aj = load double, ptr %gep33.i, align 8, !tbaa !10
  %i.ak = fmul double %i.ac, %i.aj
  store double %i.ak, ptr %gep33.i, align 8, !tbaa !10
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next27.i, %i.ad
  br i1 %exitcond.not.i, label %.lr.ph.preheader, label %.lr.ph23.i, !llvm.loop !48

.lr.ph.preheader:                                 ; preds = %.lr.ph23.i, %middle.block91
  %scevgep75 = getelementptr i8, ptr %i.d, i64 16000
  %min.iters.check = icmp ult i64 %i.b, 4
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  %i.al = and i64 %indvars.iv69, 1
  %lcmp.mod97.not.not = icmp eq i64 %i.al, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %daxpy.exit
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %daxpy.exit ], [ %indvars.iv, %.lr.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv66
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 4 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.x ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !10 ; 6 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv69 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10
  store double %i.ar, ptr %i.ao, align 8, !tbaa !10
  store double %i.ap, ptr %i.aq, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.as = fcmp une double %i.ap, 0.000000e+00
  br i1 %i.as, label %bb.g, label %daxpy.exit

bb.g:                                             ; preds = %bb.f
  %invariant.gep63.i = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv.next70 ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %scevgep = getelementptr i8, ptr %i.an, i64 16000
  %bound0 = icmp ult ptr %invariant.gep63.i, %scevgep75
  %bound1 = icmp ult ptr %invariant.gep32.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ap, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %index ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !10, !alias.scope !49
  %wide.load76 = load <2 x double>, ptr %i.au, align 8, !tbaa !10, !alias.scope !49
  %i.av = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %index ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16     ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.av, align 8, !tbaa !10, !alias.scope !52, !noalias !49
  %wide.load78 = load <2 x double>, ptr %i.aw, align 8, !tbaa !10, !alias.scope !52, !noalias !49
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load77)
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load76, <2 x double> %wide.load78)
  store <2 x double> %i.ax, ptr %i.av, align 8, !tbaa !10, !alias.scope !52, !noalias !49
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !10, !alias.scope !52, !noalias !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.g, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.g ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ba = add i64 %indvars.iv69, %indvars.iv.i.ph
  br i1 %lcmp.mod97.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv.i.ph
  %i.bb = load double, ptr %gep.i.prol, align 8, !tbaa !10
  %gep64.i.prol = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bc = load double, ptr %gep64.i.prol, align 8, !tbaa !10
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.bb, double %i.bc)
  store double %i.bd, ptr %gep64.i.prol, align 8, !tbaa !10
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.be = icmp eq i64 %i.ba, 1998
  br i1 %i.be, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv.i
  %i.bf = load double, ptr %gep.i, align 8, !tbaa !10
  %gep64.i = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.i ; 2 uses
  %i.bg = load double, ptr %gep64.i, align 8, !tbaa !10
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.bf, double %i.bg)
  store double %i.bh, ptr %gep64.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep32.i, i64 %indvars.iv.next.i
  %i.bi = load double, ptr %gep.i.1, align 8, !tbaa !10
  %gep64.i.1 = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bj = load double, ptr %gep64.i.1, align 8, !tbaa !10
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.bi, double %i.bj)
  store double %i.bk, ptr %gep64.i.1, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i57.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ad
  br i1 %exitcond.not.i57.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !55

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.f
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, 2000
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !56

.loopexit:                                        ; preds = %daxpy.exit, %idamax.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond72.not = icmp eq i64 %indvars.iv.next70, 1999
  br i1 %exitcond72.not, label %bb.h, label %bb.b, !llvm.loop !57

bb.h:                                             ; preds = %.loopexit
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %i.bl, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dgesl(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %scevgep56 = getelementptr i8, ptr %2, i64 16000
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %daxpy.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %daxpy.exit ] ; 10 uses
  %3 = sub nsw i64 1999, %indvars.iv              ; 3 uses
  %i.a = shl nuw nsw i64 %indvars.iv, 3
  %i.b = getelementptr i8, ptr %2, i64 %i.a
  %scevgep = getelementptr i8, ptr %i.b, i64 8
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !10 ; 6 uses
  %i.h = zext i32 %i.d to i64
  %.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  store double %i.j, ptr %i.f, align 8, !tbaa !10
  store double %i.g, ptr %i.i, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.k = fcmp une double %i.g, 0.000000e+00
  br i1 %i.k, label %bb.e, label %daxpy.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %i.n = sub nuw nsw i64 1999, %indvars.iv
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.next ; 5 uses
  %invariant.gep63.i = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next ; 4 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %scevgep57 = getelementptr i8, ptr %i.m, i64 16000
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !10, !alias.scope !58
  %wide.load58 = load <2 x double>, ptr %i.p, align 8, !tbaa !10, !alias.scope !58
  %i.q = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %index ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %wide.load59 = load <2 x double>, ptr %i.q, align 8, !tbaa !10, !alias.scope !61, !noalias !58
  %wide.load60 = load <2 x double>, ptr %i.r, align 8, !tbaa !10, !alias.scope !61, !noalias !58
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load59)
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load58, <2 x double> %wide.load60)
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !10, !alias.scope !61, !noalias !58
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !10, !alias.scope !61, !noalias !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.e, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.e ], [ %n.vec, %middle.block ] ; 5 uses
  %i.v = add i64 %indvars.iv, %indvars.iv.i.ph
  %i.w = and i64 %indvars.iv, 1
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.ph
  %i.x = load double, ptr %gep.i.prol, align 8, !tbaa !10
  %gep64.i.prol = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.y = load double, ptr %gep64.i.prol, align 8, !tbaa !10
  %i.z = tail call double @llvm.fmuladd.f64(double %i.g, double %i.x, double %i.y)
  store double %i.z, ptr %gep64.i.prol, align 8, !tbaa !10
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.aa = icmp eq i64 %i.v, 1998
  br i1 %i.aa, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ab = load double, ptr %gep.i, align 8, !tbaa !10
  %gep64.i = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.i ; 2 uses
  %i.ac = load double, ptr %gep64.i, align 8, !tbaa !10
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.g, double %i.ab, double %i.ac)
  store double %i.ad, ptr %gep64.i, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ae = load double, ptr %gep.i.1, align 8, !tbaa !10
  %gep64.i.1 = getelementptr [8 x i8], ptr %invariant.gep63.i, i64 %indvars.iv.next.i ; 2 uses
  %i.af = load double, ptr %gep64.i.1, align 8, !tbaa !10
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.g, double %i.ae, double %i.af)
  store double %i.ag, ptr %gep64.i.1, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.n
  br i1 %exitcond.not.i.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !64

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1999
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !65

.preheader:                                       ; preds = %daxpy.exit, %daxpy.exit48
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %daxpy.exit48 ], [ 0, %daxpy.exit ] ; 7 uses
  %i.ah = sub nsw i64 1999, %indvars.iv52         ; 3 uses
  %i.ai = shl i64 %indvars.iv52, 3
  %i.aj = sub i64 15992, %i.ai                    ; 2 uses
  %scevgep62 = getelementptr i8, ptr %2, i64 %i.aj
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ak = sub nuw nsw i64 1999, %indvars.iv52     ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12 ; 7 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load double, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ak ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !10
  %i.ar = fdiv double %i.aq, %i.ao                ; 3 uses
  store double %i.ar, ptr %i.ap, align 8, !tbaa !10
  %i.as = fneg double %i.ar                       ; 4 uses
  %i.at = icmp ne i64 %indvars.iv52, 1999
  %i.au = fcmp une double %i.ar, 0.000000e+00
  %or.cond.i38 = and i1 %i.at, %i.au
  br i1 %or.cond.i38, label %.lr.ph.i42.preheader, label %daxpy.exit48

.lr.ph.i42.preheader:                             ; preds = %.preheader
  %min.iters.check68 = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check68, label %.lr.ph.i42.preheader84, label %vector.memcheck61

vector.memcheck61:                                ; preds = %.lr.ph.i42.preheader
  %scevgep63 = getelementptr i8, ptr %i.am, i64 %i.aj
  %bound064 = icmp ult ptr %2, %scevgep63
  %bound165 = icmp ult ptr %i.am, %scevgep62
  %found.conflict66 = and i1 %bound064, %bound165
  br i1 %found.conflict66, label %.lr.ph.i42.preheader84, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck61
  %n.vec71 = and i64 %i.ah, -4                    ; 3 uses
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %i.as, i64 0
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph69
  %index75 = phi i64 [ 0, %vector.ph69 ], [ %index.next80, %vector.body74 ] ; 3 uses
  %i.av = getelementptr [8 x i8], ptr %i.am, i64 %index75 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load76 = load <2 x double>, ptr %i.av, align 8, !tbaa !10, !alias.scope !66
  %wide.load77 = load <2 x double>, ptr %i.aw, align 8, !tbaa !10, !alias.scope !66
  %i.ax = getelementptr [8 x i8], ptr %2, i64 %index75 ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16     ; 2 uses
  %wide.load78 = load <2 x double>, ptr %i.ax, align 8, !tbaa !10, !alias.scope !69, !noalias !66
  %wide.load79 = load <2 x double>, ptr %i.ay, align 8, !tbaa !10, !alias.scope !69, !noalias !66
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat73, <2 x double> %wide.load76, <2 x double> %wide.load78)
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat73, <2 x double> %wide.load77, <2 x double> %wide.load79)
  store <2 x double> %i.az, ptr %i.ax, align 8, !tbaa !10, !alias.scope !69, !noalias !66
  store <2 x double> %i.ba, ptr %i.ay, align 8, !tbaa !10, !alias.scope !69, !noalias !66
  %index.next80 = add nuw i64 %index75, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next80, %n.vec71
  br i1 %i.bb, label %middle.block81, label %vector.body74, !llvm.loop !71

middle.block81:                                   ; preds = %vector.body74
  %cmp.n82 = icmp eq i64 %i.ah, %n.vec71
  br i1 %cmp.n82, label %daxpy.exit48, label %.lr.ph.i42.preheader84

.lr.ph.i42.preheader84:                           ; preds = %vector.memcheck61, %.lr.ph.i42.preheader, %middle.block81
  %indvars.iv.i43.ph = phi i64 [ 0, %vector.memcheck61 ], [ 0, %.lr.ph.i42.preheader ], [ %n.vec71, %middle.block81 ] ; 5 uses
  %i.bc = add i64 %indvars.iv52, %indvars.iv.i43.ph
  %i.bd = and i64 %indvars.iv52, 1
  %lcmp.mod86.not.not = icmp eq i64 %i.bd, 0
  br i1 %lcmp.mod86.not.not, label %.lr.ph.i42.prol, label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.i42.preheader84
  %gep.i44.prol = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.i43.ph
  %i.be = load double, ptr %gep.i44.prol, align 8, !tbaa !10
  %gep64.i45.prol = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i43.ph ; 2 uses
  %i.bf = load double, ptr %gep64.i45.prol, align 8, !tbaa !10
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.as, double %i.be, double %i.bf)
  store double %i.bg, ptr %gep64.i45.prol, align 8, !tbaa !10
  %indvars.iv.next.i46.prol = or disjoint i64 %indvars.iv.i43.ph, 1
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.i42.preheader84
  %indvars.iv.i43.unr = phi i64 [ %indvars.iv.i43.ph, %.lr.ph.i42.preheader84 ], [ %indvars.iv.next.i46.prol, %.lr.ph.i42.prol ]
  %i.bh = icmp eq i64 %i.bc, 1998
  br i1 %i.bh, label %daxpy.exit48, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i46.1, %.lr.ph.i42 ], [ %indvars.iv.i43.unr, %.lr.ph.i42.prol.loopexit ] ; 4 uses
  %gep.i44 = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.i43
  %i.bi = load double, ptr %gep.i44, align 8, !tbaa !10
  %gep64.i45 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i43 ; 2 uses
  %i.bj = load double, ptr %gep64.i45, align 8, !tbaa !10
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.as, double %i.bi, double %i.bj)
  store double %i.bk, ptr %gep64.i45, align 8, !tbaa !10
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %gep.i44.1 = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv.next.i46
  %i.bl = load double, ptr %gep.i44.1, align 8, !tbaa !10
  %gep64.i45.1 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.next.i46 ; 2 uses
  %i.bm = load double, ptr %gep64.i45.1, align 8, !tbaa !10
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.as, double %i.bl, double %i.bm)
  store double %i.bn, ptr %gep64.i45.1, align 8, !tbaa !10
  %indvars.iv.next.i46.1 = add nuw nsw i64 %indvars.iv.i43, 2 ; 2 uses
  %exitcond.not.i47.1 = icmp eq i64 %indvars.iv.next.i46.1, %i.ak
  br i1 %exitcond.not.i47.1, label %daxpy.exit48, label %.lr.ph.i42, !llvm.loop !72

daxpy.exit48:                                     ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %middle.block81, %.preheader
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, 2000
  br i1 %exitcond55.not, label %bb.f, label %.preheader, !llvm.loop !73

bb.f:                                             ; preds = %daxpy.exit48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.preheader, label %.loopexit.split

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(4) @.str) #12
  %.not = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not, ptr @.str.1, ptr @.str.2
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.preheader, %bb.a
  %.026 = phi ptr [ @.str.2, %bb.a ], [ %i.e, %.preheader ]
  %i.f = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #13 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split, %bb.b
  %indvars.iv = phi i64 [ 0, %.loopexit.split ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #13
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !76

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #13 ; 10 uses
  %i.j = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #13 ; 4 uses
  %seed.promoted25.i = load i64, ptr @seed, align 8, !tbaa !8
  %i.k = xor i64 %seed.promoted25.i, 123459876
  br label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.e, %bb.c
  %indvars.iv33.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next34.i, %bb.e ] ; 2 uses
  %.lcssa2627.i = phi i64 [ %i.k, %bb.c ], [ %spec.select.i.i, %bb.e ]
  br label %bb.d

.preheader22.i:                                   ; preds = %bb.e
  %i.l = xor i64 %spec.select.i.i, 123459876
  store i64 %i.l, ptr @seed, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16000) %i.i, i8 0, i64 16000, i1 false), !tbaa !10
  br label %.preheader.i

bb.d:                                             ; preds = %bb.d, %.preheader23.i
  %indvars.iv.i = phi i64 [ 0, %.preheader23.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.m = phi i64 [ %.lcssa2627.i, %.preheader23.i ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.n = sdiv i64 %i.m, 127773                    ; 2 uses
  %.neg.i.i = mul nsw i64 %i.n, -127773
  %i.o = add i64 %.neg.i.i, %i.m
  %i.p = mul nsw i64 %i.o, 16807
  %.neg2.i.i = mul nsw i64 %i.n, -2836
  %i.q = add i64 %i.p, %.neg2.i.i                 ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = add nsw i64 %i.q, 2147483647
  %spec.select.i.i = select i1 %i.r, i64 %i.s, i64 %i.q ; 4 uses
  %i.t = sitofp i64 %spec.select.i.i to double
  %i.u = fmul nnan double %i.t, f0x3E00000000200FE1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv33.i
  store double %i.u, ptr %i.x, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %bb.e, label %bb.d, !llvm.loop !15

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next34.i, 2000
  br i1 %exitcond36.not.i, label %.preheader22.i, label %.preheader23.i, !llvm.loop !17

.preheader.i:                                     ; preds = %middle.block, %.preheader22.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader22.i ], [ %indvars.iv.next45.i, %middle.block ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv44.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !10
  %wide.load55 = load <2 x double>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load56 = load <2 x double>, ptr %i.ac, align 8, !tbaa !10
  %wide.load57 = load <2 x double>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = fadd <2 x double> %wide.load, %wide.load56
  %i.af = fadd <2 x double> %wide.load55, %wide.load57
  store <2 x double> %i.ae, ptr %i.ac, align 8, !tbaa !10
  store <2 x double> %i.af, ptr %i.ad, align 8, !tbaa !10
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index.next ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.ag, align 8, !tbaa !10
  %wide.load55.1 = load <2 x double>, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index.next ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load56.1 = load <2 x double>, ptr %i.ai, align 8, !tbaa !10
  %wide.load57.1 = load <2 x double>, ptr %i.aj, align 8, !tbaa !10
  %i.ak = fadd <2 x double> %wide.load.1, %wide.load56.1
  %i.al = fadd <2 x double> %wide.load55.1, %wide.load57.1
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !10
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !10
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.am = icmp eq i64 %index.next.1, 2000
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next45.i, 2000
  br i1 %exitcond47.not.i, label %matgen.exit, label %.preheader.i, !llvm.loop !27

matgen.exit:                                      ; preds = %middle.block, %.loopexit.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %.loopexit.i ], [ 0, %middle.block ] ; 13 uses
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29, %.loopexit.i ], [ 1, %middle.block ] ; 2 uses
  %2 = sub nsw i64 1999, %indvars.iv69.i          ; 3 uses
  %i.an = sub nsw i64 1999, %indvars.iv69.i       ; 3 uses
  %i.ao = sub nsw i64 1999, %indvars.iv69.i       ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv69.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv69.i ; 5 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !10 ; 3 uses
  %i.at = tail call double @llvm.fabs.f64(double %i.as) ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.au = icmp eq i64 %indvars.iv69.i, 1998
  br i1 %i.au, label %.lr.ph49.i.i.epil.preheader, label %matgen.exit.new

matgen.exit.new:                                  ; preds = %matgen.exit
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i, %matgen.exit.new
  %indvars.iv53.i.i = phi i64 [ 1, %matgen.exit.new ], [ %indvars.iv.next54.i.i.1, %.lr.ph49.i.i ] ; 4 uses
  %.248.i.i = phi i32 [ 0, %matgen.exit.new ], [ %.3.i.i.1, %.lr.ph49.i.i ]
  %.23546.i.i = phi double [ %i.at, %matgen.exit.new ], [ %.336.i.i.1, %.lr.ph49.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %matgen.exit.new ], [ %niter.next.1, %.lr.ph49.i.i ]
  %gep61.i.i = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv53.i.i
  %i.av = load double, ptr %gep61.i.i, align 8, !tbaa !10
  %i.aw = tail call double @llvm.fabs.f64(double %i.av) ; 2 uses
  %i.ax = fcmp ogt double %i.aw, %.23546.i.i      ; 2 uses
  %.336.i.i = select i1 %i.ax, double %i.aw, double %.23546.i.i ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv53.i.i to i32
  %.3.i.i = select i1 %i.ax, i32 %i.ay, i32 %.248.i.i
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %gep61.i.i.1 = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv.next54.i.i
  %i.az = load double, ptr %gep61.i.i.1, align 8, !tbaa !10
  %i.ba = tail call double @llvm.fabs.f64(double %i.az) ; 2 uses
  %i.bb = fcmp ogt double %i.ba, %.336.i.i        ; 2 uses
  %.336.i.i.1 = select i1 %i.bb, double %i.ba, double %.336.i.i ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next54.i.i to i32
  %.3.i.i.1 = select i1 %i.bb, i32 %i.bc, i32 %.3.i.i ; 3 uses
  %indvars.iv.next54.i.i.1 = add nuw nsw i64 %indvars.iv53.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.i.unr-lcssa, label %.lr.ph49.i.i, !llvm.loop !29

idamax.exit.i.unr-lcssa:                          ; preds = %.lr.ph49.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.i, label %.lr.ph49.i.i.epil.preheader

.lr.ph49.i.i.epil.preheader:                      ; preds = %idamax.exit.i.unr-lcssa, %matgen.exit
  %indvars.iv53.i.i.epil.init = phi i64 [ 1, %matgen.exit ], [ %indvars.iv.next54.i.i.1, %idamax.exit.i.unr-lcssa ] ; 2 uses
  %.248.i.i.epil.init = phi i32 [ 0, %matgen.exit ], [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ]
  %.23546.i.i.epil.init = phi double [ %i.at, %matgen.exit ], [ %.336.i.i.1, %idamax.exit.i.unr-lcssa ]
  %lcmp.mod119 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %gep61.i.i.epil = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv53.i.i.epil.init
  %i.bd = load double, ptr %gep61.i.i.epil, align 8, !tbaa !10
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp ogt double %i.be, %.23546.i.i.epil.init
  %i.bg = trunc nuw nsw i64 %indvars.iv53.i.i.epil.init to i32
  %.3.i.i.epil = select i1 %i.bf, i32 %i.bg, i32 %.248.i.i.epil.init
  br label %idamax.exit.i

idamax.exit.i:                                    ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph49.i.i.epil.preheader
  %.3.i.i.lcssa = phi i32 [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ], [ %.3.i.i.epil, %.lr.ph49.i.i.epil.preheader ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 4 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv69.i to i32
  %i.bi = add nsw i32 %.3.i.i.lcssa, %i.bh        ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv69.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !4
  %i.bk = sext i32 %i.bi to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bk ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !10 ; 3 uses
  %i.bn = fcmp une double %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %idamax.exit.i
  %.not.i = icmp eq i32 %.3.i.i.lcssa, 0          ; 2 uses
  br i1 %.not.i, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  store double %i.as, ptr %i.bl, align 8, !tbaa !10
  store double %i.bm, ptr %i.ar, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  %i.bo = phi double [ %i.bm, %.thread.i ], [ %i.as, %bb.f ]
  %i.bp = fdiv double -1.000000e+00, %i.bo        ; 2 uses
  %i.bq = sub nuw nsw i64 1999, %indvars.iv69.i   ; 2 uses
  %invariant.gep32.i.i = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next70.i ; 7 uses
  %min.iters.check69 = icmp ult i64 %i.an, 4
  br i1 %min.iters.check69, label %.lr.ph23.i.i.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %bb.g
  %n.vec72 = and i64 %i.an, -4                    ; 3 uses
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph70
  %index76 = phi i64 [ 0, %vector.ph70 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %index76 ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16     ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.br, align 8, !tbaa !10
  %wide.load78 = load <2 x double>, ptr %i.bs, align 8, !tbaa !10
  %i.bt = fmul <2 x double> %broadcast.splat74, %wide.load77
  %i.bu = fmul <2 x double> %broadcast.splat74, %wide.load78
  store <2 x double> %i.bt, ptr %i.br, align 8, !tbaa !10
  store <2 x double> %i.bu, ptr %i.bs, align 8, !tbaa !10
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.bv, label %middle.block80, label %vector.body75, !llvm.loop !78

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %i.an, %n.vec72
  br i1 %cmp.n81, label %.lr.ph.i.preheader, label %.lr.ph23.i.i.preheader

.lr.ph23.i.i.preheader:                           ; preds = %bb.g, %middle.block80
  %indvars.iv26.i.i.ph = phi i64 [ 0, %bb.g ], [ %n.vec72, %middle.block80 ]
  br label %.lr.ph23.i.i

.lr.ph23.i.i:                                     ; preds = %.lr.ph23.i.i.preheader, %.lr.ph23.i.i
  %indvars.iv26.i.i = phi i64 [ %indvars.iv.next27.i.i, %.lr.ph23.i.i ], [ %indvars.iv26.i.i.ph, %.lr.ph23.i.i.preheader ] ; 2 uses
  %gep33.i.i = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %indvars.iv26.i.i ; 2 uses
  %i.bw = load double, ptr %gep33.i.i, align 8, !tbaa !10
  %i.bx = fmul double %i.bp, %i.bw
  store double %i.bx, ptr %gep33.i.i, align 8, !tbaa !10
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, %i.bq
  br i1 %exitcond.not.i.i, label %.lr.ph.i.preheader, label %.lr.ph23.i.i, !llvm.loop !79

.lr.ph.i.preheader:                               ; preds = %.lr.ph23.i.i, %middle.block80
  %scevgep58 = getelementptr i8, ptr %i.aq, i64 16000
  %min.iters.check = icmp ult i64 %i.ao, 4
  %n.vec = and i64 %i.ao, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  %i.by = and i64 %indvars.iv69.i, 1
  %lcmp.mod121.not.not = icmp eq i64 %i.by, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %daxpy.exit.i
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %daxpy.exit.i ], [ %indvars.iv.i28, %.lr.ph.i.preheader ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv66.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !12 ; 4 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bk ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !10 ; 6 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv69.i ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !10
  store double %i.ce, ptr %i.cb, align 8, !tbaa !10
  store double %i.cc, ptr %i.cd, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.cf = fcmp une double %i.cc, 0.000000e+00
  br i1 %i.cf, label %bb.j, label %daxpy.exit.i

bb.j:                                             ; preds = %bb.i
  %invariant.gep63.i.i = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv.next70.i ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j
  %scevgep = getelementptr i8, ptr %i.ca, i64 16000
  %bound0 = icmp ult ptr %invariant.gep63.i.i, %scevgep58
  %bound1 = icmp ult ptr %invariant.gep32.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph59
  %index61 = phi i64 [ 0, %vector.ph59 ], [ %index.next66, %vector.body60 ] ; 3 uses
  %i.cg = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %index61 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %wide.load62 = load <2 x double>, ptr %i.cg, align 8, !tbaa !10, !alias.scope !80
  %wide.load63 = load <2 x double>, ptr %i.ch, align 8, !tbaa !10, !alias.scope !80
  %i.ci = getelementptr [8 x i8], ptr %invariant.gep63.i.i, i64 %index61 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 2 uses
  %wide.load64 = load <2 x double>, ptr %i.ci, align 8, !tbaa !10, !alias.scope !83, !noalias !80
  %wide.load65 = load <2 x double>, ptr %i.cj, align 8, !tbaa !10, !alias.scope !83, !noalias !80
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load62, <2 x double> %wide.load64)
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load63, <2 x double> %wide.load65)
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !10, !alias.scope !83, !noalias !80
  store <2 x double> %i.cl, ptr %i.cj, align 8, !tbaa !10, !alias.scope !83, !noalias !80
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.cm = icmp eq i64 %index.next66, %n.vec
  br i1 %i.cm, label %middle.block67, label %vector.body60, !llvm.loop !85

middle.block67:                                   ; preds = %vector.body60
  br i1 %cmp.n, label %daxpy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.j, %middle.block67
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.j ], [ %n.vec, %middle.block67 ] ; 5 uses
  %i.cn = add i64 %indvars.iv69.i, %indvars.iv.i.i.ph
  br i1 %lcmp.mod121.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %indvars.iv.i.i.ph
  %i.co = load double, ptr %gep.i.i.prol, align 8, !tbaa !10
  %gep64.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep63.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.cp = load double, ptr %gep64.i.i.prol, align 8, !tbaa !10
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.co, double %i.cp)
  store double %i.cq, ptr %gep64.i.i.prol, align 8, !tbaa !10
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cr = icmp eq i64 %i.cn, 1998
  br i1 %i.cr, label %daxpy.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %indvars.iv.i.i
  %i.cs = load double, ptr %gep.i.i, align 8, !tbaa !10
  %gep64.i.i = getelementptr [8 x i8], ptr %invariant.gep63.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ct = load double, ptr %gep64.i.i, align 8, !tbaa !10
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cs, double %i.ct)
  store double %i.cu, ptr %gep64.i.i, align 8, !tbaa !10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep32.i.i, i64 %indvars.iv.next.i.i
  %i.cv = load double, ptr %gep.i.i.1, align 8, !tbaa !10
  %gep64.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep63.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cw = load double, ptr %gep64.i.i.1, align 8, !tbaa !10
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cv, double %i.cw)
  store double %i.cx, ptr %gep64.i.i.1, align 8, !tbaa !10
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i57.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %i.bq
  br i1 %exitcond.not.i57.i.1, label %daxpy.exit.i, label %.lr.ph.i.i, !llvm.loop !86

daxpy.exit.i:                                     ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block67, %bb.i
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next67.i, 2000
  br i1 %exitcond.not.i30, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !56

.loopexit.i:                                      ; preds = %daxpy.exit.i, %idamax.exit.i
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next70.i, 1999
  br i1 %exitcond72.not.i, label %dgefa.exit, label %matgen.exit, !llvm.loop !57

dgefa.exit:                                       ; preds = %.loopexit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 7996
  store i32 1999, ptr %i.cy, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %daxpy.exit.i34, %dgefa.exit
  %indvars.iv.i31 = phi i64 [ 0, %dgefa.exit ], [ %indvars.iv.next.i33, %daxpy.exit.i34 ] ; 7 uses
  %3 = sub nsw i64 1999, %indvars.iv.i31          ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i31
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4  ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.db ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !10 ; 4 uses
  %i.de = zext i32 %i.da to i64
  %.not.i32 = icmp eq i64 %indvars.iv.i31, %i.de
  br i1 %.not.i32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i31 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !10
  store double %i.dg, ptr %i.dc, align 8, !tbaa !10
  store double %i.dd, ptr %i.df, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i31, 1 ; 4 uses
  %i.dh = fcmp une double %i.dd, 0.000000e+00
  br i1 %i.dh, label %bb.n, label %daxpy.exit.i34

bb.n:                                             ; preds = %bb.m
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i31
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !12
  %i.dk = sub nuw nsw i64 1999, %indvars.iv.i31
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i33 ; 2 uses
  %invariant.gep63.i.i37 = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.next.i33 ; 2 uses
  %min.iters.check84 = icmp ult i64 %3, 4
  br i1 %min.iters.check84, label %.lr.ph.i.i38.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %bb.n
  %n.vec87 = and i64 %3, -4                       ; 3 uses
  %broadcast.splatinsert88 = insertelement <2 x double> poison, double %i.dd, i64 0
  %broadcast.splat89 = shufflevector <2 x double> %broadcast.splatinsert88, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph85
  %index91 = phi i64 [ 0, %vector.ph85 ], [ %index.next96, %vector.body90 ] ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index91 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dl, align 8, !tbaa !10
  %wide.load93 = load <2 x double>, ptr %i.dm, align 8, !tbaa !10
  %i.dn = getelementptr [8 x i8], ptr %invariant.gep63.i.i37, i64 %index91 ; 3 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 16     ; 2 uses
  %wide.load94 = load <2 x double>, ptr %i.dn, align 8, !tbaa !10
  %wide.load95 = load <2 x double>, ptr %i.do, align 8, !tbaa !10
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %wide.load92, <2 x double> %wide.load94)
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat89, <2 x double> %wide.load93, <2 x double> %wide.load95)
  store <2 x double> %i.dp, ptr %i.dn, align 8, !tbaa !10
  store <2 x double> %i.dq, ptr %i.do, align 8, !tbaa !10
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next96, %n.vec87
  br i1 %i.dr, label %middle.block97, label %vector.body90, !llvm.loop !87

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %3, %n.vec87
  br i1 %cmp.n98, label %daxpy.exit.i34, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %bb.n, %middle.block97
  %indvars.iv.i.i39.ph = phi i64 [ 0, %bb.n ], [ %n.vec87, %middle.block97 ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %indvars.iv.i.i39 = phi i64 [ %indvars.iv.next.i.i42, %.lr.ph.i.i38 ], [ %indvars.iv.i.i39.ph, %.lr.ph.i.i38.preheader ] ; 3 uses
  %gep.i.i40 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i39
  %i.ds = load double, ptr %gep.i.i40, align 8, !tbaa !10
  %gep64.i.i41 = getelementptr [8 x i8], ptr %invariant.gep63.i.i37, i64 %indvars.iv.i.i39 ; 2 uses
  %i.dt = load double, ptr %gep64.i.i41, align 8, !tbaa !10
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.ds, double %i.dt)
  store double %i.du, ptr %gep64.i.i41, align 8, !tbaa !10
  %indvars.iv.next.i.i42 = add nuw nsw i64 %indvars.iv.i.i39, 1 ; 2 uses
  %exitcond.not.i.i43 = icmp eq i64 %indvars.iv.next.i.i42, %i.dk
  br i1 %exitcond.not.i.i43, label %daxpy.exit.i34, label %.lr.ph.i.i38, !llvm.loop !88

daxpy.exit.i34:                                   ; preds = %.lr.ph.i.i38, %middle.block97, %bb.m
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i33, 1999
  br i1 %exitcond.not.i35, label %.preheader.i36, label %bb.k, !llvm.loop !65

.preheader.i36:                                   ; preds = %daxpy.exit.i34, %daxpy.exit48.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %daxpy.exit48.i ], [ 0, %daxpy.exit.i34 ] ; 4 uses
  %i.dv = sub nsw i64 1999, %indvars.iv52.i       ; 3 uses
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.dw = sub nuw nsw i64 1999, %indvars.iv52.i   ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !12 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dw ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !10
  %i.ed = fdiv double %i.ec, %i.ea                ; 3 uses
  store double %i.ed, ptr %i.eb, align 8, !tbaa !10
  %i.ee = fneg double %i.ed                       ; 2 uses
  %i.ef = icmp ne i64 %indvars.iv52.i, 1999
  %i.eg = fcmp une double %i.ed, 0.000000e+00
  %or.cond.i38.i = and i1 %i.ef, %i.eg
  br i1 %or.cond.i38.i, label %.lr.ph.i42.i.preheader, label %daxpy.exit48.i

.lr.ph.i42.i.preheader:                           ; preds = %.preheader.i36
  %min.iters.check101 = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check101, label %.lr.ph.i42.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i42.i.preheader
  %n.vec104 = and i64 %i.dv, -4                   ; 3 uses
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.ee, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph102
  %index108 = phi i64 [ 0, %vector.ph102 ], [ %index.next113, %vector.body107 ] ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dy, i64 %index108 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %wide.load109 = load <2 x double>, ptr %i.eh, align 8, !tbaa !10
  %wide.load110 = load <2 x double>, ptr %i.ei, align 8, !tbaa !10
  %i.ej = getelementptr [8 x i8], ptr %i.i, i64 %index108 ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 16     ; 2 uses
  %wide.load111 = load <2 x double>, ptr %i.ej, align 8, !tbaa !10
  %wide.load112 = load <2 x double>, ptr %i.ek, align 8, !tbaa !10
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat106, <2 x double> %wide.load109, <2 x double> %wide.load111)
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat106, <2 x double> %wide.load110, <2 x double> %wide.load112)
  store <2 x double> %i.el, ptr %i.ej, align 8, !tbaa !10
  store <2 x double> %i.em, ptr %i.ek, align 8, !tbaa !10
  %index.next113 = add nuw i64 %index108, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next113, %n.vec104
  br i1 %i.en, label %middle.block114, label %vector.body107, !llvm.loop !89

middle.block114:                                  ; preds = %vector.body107
  %cmp.n115 = icmp eq i64 %i.dv, %n.vec104
  br i1 %cmp.n115, label %daxpy.exit48.i, label %.lr.ph.i42.i.preheader117

.lr.ph.i42.i.preheader117:                        ; preds = %.lr.ph.i42.i.preheader, %middle.block114
  %indvars.iv.i43.i.ph = phi i64 [ 0, %.lr.ph.i42.i.preheader ], [ %n.vec104, %middle.block114 ]
  br label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.preheader117, %.lr.ph.i42.i
  %indvars.iv.i43.i = phi i64 [ %indvars.iv.next.i46.i, %.lr.ph.i42.i ], [ %indvars.iv.i43.i.ph, %.lr.ph.i42.i.preheader117 ] ; 3 uses
  %gep.i44.i = getelementptr [8 x i8], ptr %i.dy, i64 %indvars.iv.i43.i
  %i.eo = load double, ptr %gep.i44.i, align 8, !tbaa !10
  %gep64.i45.i = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.i43.i ; 2 uses
  %i.ep = load double, ptr %gep64.i45.i, align 8, !tbaa !10
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.eo, double %i.ep)
  store double %i.eq, ptr %gep64.i45.i, align 8, !tbaa !10
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i43.i, 1 ; 2 uses
  %exitcond.not.i47.i = icmp eq i64 %indvars.iv.next.i46.i, %i.dw
  br i1 %exitcond.not.i47.i, label %daxpy.exit48.i, label %.lr.ph.i42.i, !llvm.loop !90

daxpy.exit48.i:                                   ; preds = %.lr.ph.i42.i, %middle.block114, %.preheader.i36
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, 2000
  br i1 %exitcond55.not.i, label %dgesl.exit, label %.preheader.i36, !llvm.loop !73

dgesl.exit:                                       ; preds = %daxpy.exit48.i
  tail call void @free(ptr noundef %i.j) #14
  tail call void @free(ptr noundef nonnull %i.i) #14
  br label %bb.o

bb.o:                                             ; preds = %dgesl.exit, %bb.o
  %indvars.iv48 = phi i64 [ 0, %dgesl.exit ], [ %indvars.iv.next49, %bb.o ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.es) #14
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next49, 2000
  br i1 %exitcond51.not, label %bb.p, label %bb.o, !llvm.loop !91

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.f) #14
  %i.et = load ptr, ptr @stdout, align 8, !tbaa !92
  %i.eu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull %.026, double noundef 0.000000e+00) #14 ; 0 uses
  %i.ev = load ptr, ptr @stdout, align 8, !tbaa !92
  %i.ew = tail call i32 @fflush(ptr noundef %i.ev) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 double", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !16, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !16, !24}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16, !24, !25}
!31 = distinct !{!31, !16, !24}
!32 = distinct !{!32, !16, !25, !24}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !16, !24, !25}
!39 = !{!40}
end_hunk_0
