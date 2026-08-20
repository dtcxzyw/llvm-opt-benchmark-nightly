inline.NumInlined: 9
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@idamax:bb.a
  %lcmp.mod65 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.ak = load double, ptr %gep.epil, align 8, !tbaa !10
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ogt double %i.al, %.03342.epil.init
  %.1.epil = select i1 %i.am, i32 %.03143.epil.init, i32 %.045.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit63.unr-lcssa, %.lr.ph49.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %bb.a
  %.4 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %.3.epil, %.lr.ph49.epil.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ], [ %.1.1, %.loopexit.loopexit63.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %.lr.ph23.preheader, label %bb.c

.lr.ph23.preheader:                               ; preds = %bb.b
  %i.b = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %invariant.gep32 = getelementptr [8 x i8], ptr %2, i64 %i.b ; 2 uses
  %min.iters.check37 = icmp ult i32 %0, 4
  br i1 %min.iters.check37, label %.lr.ph23.preheader50, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph23.preheader
  %n.vec39 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat41 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph38
  %index43 = phi i64 [ 0, %vector.ph38 ], [ %index.next46, %vector.body42 ] ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %invariant.gep32, i64 %index43 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %wide.load44 = load <2 x double>, ptr %i.c, align 8, !tbaa !10
  %wide.load45 = load <2 x double>, ptr %i.d, align 8, !tbaa !10
  %i.e = fmul <2 x double> %broadcast.splat41, %wide.load44
  %i.f = fmul <2 x double> %broadcast.splat41, %wide.load45
  store <2 x double> %i.e, ptr %i.c, align 8, !tbaa !10
  store <2 x double> %i.f, ptr %i.d, align 8, !tbaa !10
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.g = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.g, label %middle.block47, label %vector.body42, !llvm.loop !30

middle.block47:                                   ; preds = %vector.body42
  %cmp.n48 = icmp eq i64 %n.vec39, %wide.trip.count
  br i1 %cmp.n48, label %.loopexit, label %.lr.ph23.preheader50

.lr.ph23.preheader50:                             ; preds = %.lr.ph23.preheader, %middle.block47
  %indvars.iv26.ph = phi i64 [ 0, %.lr.ph23.preheader ], [ %n.vec39, %middle.block47 ]
  br label %.lr.ph23

bb.c:                                             ; preds = %bb.b
  %i.h = mul nsw i32 %4, %0                       ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = sext i32 %4 to i64
  %i.k = sext i32 %3 to i64
  %i.l = zext nneg i32 %i.h to i64
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.k
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.m = load double, ptr %gep, align 8, !tbaa !10
  %i.n = fmul double %1, %i.m
  store double %i.n, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.j ; 2 uses
  %i.o = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.o, label %.lr.ph, label %.loopexit, !llvm.loop !31

.lr.ph23:                                         ; preds = %.lr.ph23.preheader50, %.lr.ph23
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %.lr.ph23 ], [ %indvars.iv26.ph, %.lr.ph23.preheader50 ] ; 2 uses
  %gep33 = getelementptr [8 x i8], ptr %invariant.gep32, i64 %indvars.iv26 ; 2 uses
  %i.p = load double, ptr %gep33, align 8, !tbaa !10
  %i.q = fmul double %1, %i.p
  store double %i.q, ptr %gep33, align 8, !tbaa !10
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph23, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph23, %middle.block47, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %4, 1
  %i.d = icmp ne i32 %7, 1
  %or.cond3 = or i1 %i.c, %i.d
  br i1 %or.cond3, label %.lr.ph49.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %i.f = sext i32 %6 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.e ; 5 uses
  %invariant.gep63 = getelementptr [8 x i8], ptr %5, i64 %i.f ; 5 uses
  %min.iters.check = icmp ult i32 %0, 10
  br i1 %min.iters.check, label %.lr.ph.preheader102, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = add nsw i64 %i.f, %wide.trip.count
  %i.h = shl nsw i64 %i.g, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.h
  %i.i = add nsw i64 %i.e, %wide.trip.count
  %i.j = shl nsw i64 %i.i, 3
  %scevgep70 = getelementptr i8, ptr %2, i64 %i.j
  %bound0 = icmp ult ptr %invariant.gep63, %scevgep70
  %bound1 = icmp ult ptr %invariant.gep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader102, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !10, !alias.scope !33
  %wide.load71 = load <2 x double>, ptr %i.l, align 8, !tbaa !10, !alias.scope !33
  %i.m = getelementptr [8 x i8], ptr %invariant.gep63, i64 %index ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %wide.load72 = load <2 x double>, ptr %i.m, align 8, !tbaa !10, !alias.scope !36, !noalias !33
  %wide.load73 = load <2 x double>, ptr %i.n, align 8, !tbaa !10, !alias.scope !36, !noalias !33
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load72)
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load71, <2 x double> %wide.load73)
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !10, !alias.scope !36, !noalias !33
  store <2 x double> %i.p, ptr %i.n, align 8, !tbaa !10, !alias.scope !36, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader102

.lr.ph.preheader102:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader102
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.r = load double, ptr %gep.prol, align 8, !tbaa !10
  %gep64.prol = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv.ph ; 2 uses
  %i.s = load double, ptr %gep64.prol, align 8, !tbaa !10
  %i.t = tail call double @llvm.fmuladd.f64(double %1, double %i.r, double %i.s)
  store double %i.t, ptr %gep64.prol, align 8, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader102
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader102 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
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
  br i1 %min.iters.check84, label %.lr.ph49.preheader101, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph49.preheader
  %ident.check = icmp ne i32 %7, 1
  %ident.check74 = icmp ne i32 %4, 1
  %i.ai = or i1 %ident.check, %ident.check74
  br i1 %i.ai, label %.lr.ph49.preheader101, label %vector.memcheck75

vector.memcheck75:                                ; preds = %vector.scevcheck
  %8 = add nsw i64 %i.ad, %i.ab
  %i.aj = shl nsw i64 %8, 3                       ; 2 uses
  %scevgep76 = getelementptr i8, ptr %5, i64 %i.aj
  %i.ak = add nsw i32 %0, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = getelementptr i8, ptr %5, i64 %i.aj
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.am
  %scevgep77 = getelementptr i8, ptr %i.ao, i64 8
  %9 = add nsw i64 %i.ag, %i.ae
  %i.ap = shl nsw i64 %9, 3                       ; 2 uses
  %scevgep78.a = getelementptr i8, ptr %2, i64 %i.ap
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.am
  %scevgep79 = getelementptr i8, ptr %i.ar, i64 8
  %bound080 = icmp ult ptr %scevgep76, %scevgep79
  %bound181 = icmp ult ptr %scevgep78.a, %scevgep77
  %found.conflict82 = and i1 %bound080, %bound181
  br i1 %found.conflict82, label %.lr.ph49.preheader101, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck75
  %n.vec86 = and i64 %i.ah, 2147483644            ; 5 uses
  %i.as = add nsw i64 %n.vec86, %i.ae
  %i.at = add nsw i64 %n.vec86, %i.ab
  %i.au = trunc nuw nsw i64 %n.vec86 to i32
  %broadcast.splatinsert87 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat88 = shufflevector <2 x double> %broadcast.splatinsert87, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep106 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %i.ae
  %invariant.gep108 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %i.ab
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body89 ] ; 3 uses
  %gep107 = getelementptr [8 x i8], ptr %invariant.gep106, i64 %index90 ; 2 uses
  %i.av = getelementptr i8, ptr %gep107, i64 16
  %wide.load91 = load <2 x double>, ptr %gep107, align 8, !tbaa !10, !alias.scope !39
  %wide.load92 = load <2 x double>, ptr %i.av, align 8, !tbaa !10, !alias.scope !39
  %gep109 = getelementptr [8 x i8], ptr %invariant.gep108, i64 %index90 ; 3 uses
  %i.aw = getelementptr i8, ptr %gep109, i64 16   ; 2 uses
  %wide.load93 = load <2 x double>, ptr %gep109, align 8, !tbaa !10, !alias.scope !42, !noalias !39
  %wide.load94 = load <2 x double>, ptr %i.aw, align 8, !tbaa !10, !alias.scope !42, !noalias !39
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load91, <2 x double> %wide.load93)
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load92, <2 x double> %wide.load94)
  store <2 x double> %i.ax, ptr %gep109, align 8, !tbaa !10, !alias.scope !42, !noalias !39
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !10, !alias.scope !42, !noalias !39
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.az, label %middle.block96, label %vector.body89, !llvm.loop !44

middle.block96:                                   ; preds = %vector.body89
  %cmp.n97 = icmp eq i64 %n.vec86, %i.ah
  br i1 %cmp.n97, label %.loopexit, label %.lr.ph49.preheader101

.lr.ph49.preheader101:                            ; preds = %vector.memcheck75, %vector.scevcheck, %.lr.ph49.preheader, %middle.block96
  %indvars.iv54.ph = phi i64 [ %i.ae, %vector.memcheck75 ], [ %i.ae, %vector.scevcheck ], [ %i.ae, %.lr.ph49.preheader ], [ %i.as, %middle.block96 ] ; 3 uses
  %indvars.iv52.ph = phi i64 [ %i.ab, %vector.memcheck75 ], [ %i.ab, %vector.scevcheck ], [ %i.ab, %.lr.ph49.preheader ], [ %i.at, %middle.block96 ] ; 3 uses
  %.03846.ph = phi i32 [ 0, %vector.memcheck75 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph49.preheader ], [ %i.au, %middle.block96 ] ; 4 uses
  %i.ba = sub i32 %0, %.03846.ph
  %.neg = add i32 %.03846.ph, 1
  %xtraiter104 = and i32 %i.ba, 1
  %lcmp.mod105.not = icmp eq i32 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader101
  %gep66.prol = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv54.ph
  %i.bb = load double, ptr %gep66.prol, align 8, !tbaa !10
  %gep68.prol = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv52.ph ; 2 uses
  %i.bc = load double, ptr %gep68.prol, align 8, !tbaa !10
  %i.bd = tail call double @llvm.fmuladd.f64(double %1, double %i.bb, double %i.bc)
  store double %i.bd, ptr %gep68.prol, align 8, !tbaa !10
  %indvars.iv.next55.prol = add nsw i64 %indvars.iv54.ph, %i.af
  %indvars.iv.next53.prol = add nsw i64 %indvars.iv52.ph, %i.ac
  %i.be = add nuw nsw i32 %.03846.ph, 1
  br label %.lr.ph49.prol.loopexit

.lr.ph49.prol.loopexit:                           ; preds = %.lr.ph49.prol, %.lr.ph49.preheader101
  %indvars.iv54.unr = phi i64 [ %indvars.iv54.ph, %.lr.ph49.preheader101 ], [ %indvars.iv.next55.prol, %.lr.ph49.prol ]
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %.lr.ph49.preheader101 ], [ %indvars.iv.next53.prol, %.lr.ph49.prol ]
  %.03846.unr = phi i32 [ %.03846.ph, %.lr.ph49.preheader101 ], [ %i.be, %.lr.ph49.prol ]
  %i.bf = icmp eq i32 %0, %.neg
  br i1 %i.bf, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49
  %indvars.iv54 = phi i64 [ %indvars.iv.next55.1, %.lr.ph49 ], [ %indvars.iv54.unr, %.lr.ph49.prol.loopexit ] ; 2 uses
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.1, %.lr.ph49 ], [ %indvars.iv52.unr, %.lr.ph49.prol.loopexit ] ; 2 uses
  %.03846 = phi i32 [ %i.bm, %.lr.ph49 ], [ %.03846.unr, %.lr.ph49.prol.loopexit ]
  %gep66 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv54
  %i.bg = load double, ptr %gep66, align 8, !tbaa !10
  %gep68 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv52 ; 2 uses
  %i.bh = load double, ptr %gep68, align 8, !tbaa !10
  %i.bi = tail call double @llvm.fmuladd.f64(double %1, double %i.bg, double %i.bh)
  store double %i.bi, ptr %gep68, align 8, !tbaa !10
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, %i.af ; 2 uses
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, %i.ac ; 2 uses
  %gep66.1 = getelementptr [8 x i8], ptr %invariant.gep65, i64 %indvars.iv.next55
  %i.bj = load double, ptr %gep66.1, align 8, !tbaa !10
  %gep68.1 = getelementptr [8 x i8], ptr %invariant.gep67, i64 %indvars.iv.next53 ; 2 uses
  %i.bk = load double, ptr %gep68.1, align 8, !tbaa !10
  %i.bl = tail call double @llvm.fmuladd.f64(double %1, double %i.bj, double %i.bk)
  store double %i.bl, ptr %gep68.1, align 8, !tbaa !10
  %indvars.iv.next55.1 = add nsw i64 %indvars.iv.next55, %i.af
  %indvars.iv.next53.1 = add nsw i64 %indvars.iv.next53, %i.ac
  %i.bm = add nuw nsw i32 %.03846, 2              ; 2 uses
  %exitcond59.not.1 = icmp eq i32 %i.bm, %0
  br i1 %exitcond59.not.1, label %.loopexit, label %.lr.ph49, !llvm.loop !45

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bn = load double, ptr %gep, align 8, !tbaa !10
  %gep64 = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv ; 2 uses
  %i.bo = load double, ptr %gep64, align 8, !tbaa !10
  %i.bp = tail call double @llvm.fmuladd.f64(double %1, double %i.bn, double %i.bo)
  store double %i.bp, ptr %gep64, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bq = load double, ptr %gep.1, align 8, !tbaa !10
  %gep64.1 = getelementptr [8 x i8], ptr %invariant.gep63, i64 %indvars.iv.next ; 2 uses
  %i.br = load double, ptr %gep64.1, align 8, !tbaa !10
  %i.bs = tail call double @llvm.fmuladd.f64(double %1, double %i.bq, double %i.br)
  store double %i.bs, ptr %gep64.1, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph49.prol.loopexit, %.lr.ph49, %middle.block, %middle.block96, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dgefa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv69 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next70, %.loopexit ] ; 13 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.a = sub nsw i64 1999, %indvars.iv69          ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv69
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv69 ; 5 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !10 ; 3 uses
  %i.f = tail call double @llvm.fabs.f64(double %i.e) ; 2 uses
  %xtraiter = and i64 %i.a, 1
  %i.g = icmp eq i64 %indvars.iv69, 1998
  br i1 %i.g, label %.lr.ph49.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i, %.new
  %indvars.iv53.i = phi i64 [ 1, %.new ], [ %indvars.iv.next54.i.1, %.lr.ph49.i ] ; 4 uses
  %.248.i = phi i32 [ 0, %.new ], [ %.3.i.1, %.lr.ph49.i ]
  %.23546.i = phi double [ %i.f, %.new ], [ %.336.i.1, %.lr.ph49.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph49.i ]
  %gep61.i = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv53.i
  %i.h = load double, ptr %gep61.i, align 8, !tbaa !10
  %i.i = tail call double @llvm.fabs.f64(double %i.h) ; 2 uses
  %i.j = fcmp ogt double %i.i, %.23546.i          ; 2 uses
  %.336.i = select i1 %i.j, double %i.i, double %.23546.i ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv53.i to i32
  %.3.i = select i1 %i.j, i32 %i.k, i32 %.248.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %gep61.i.1 = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.next54.i
  %i.l = load double, ptr %gep61.i.1, align 8, !tbaa !10
  %i.m = tail call double @llvm.fabs.f64(double %i.l) ; 2 uses
  %i.n = fcmp ogt double %i.m, %.336.i            ; 2 uses
  %.336.i.1 = select i1 %i.n, double %i.m, double %.336.i ; 2 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next54.i to i32
  %.3.i.1 = select i1 %i.n, i32 %i.o, i32 %.3.i   ; 3 uses
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.unr-lcssa, label %.lr.ph49.i, !llvm.loop !29

idamax.exit.unr-lcssa:                            ; preds = %.lr.ph49.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit, label %.lr.ph49.i.epil.preheader

.lr.ph49.i.epil.preheader:                        ; preds = %idamax.exit.unr-lcssa, %bb.b
  %indvars.iv53.i.epil.init = phi i64 [ 1, %bb.b ], [ %indvars.iv.next54.i.1, %idamax.exit.unr-lcssa ] ; 2 uses
  %.248.i.epil.init = phi i32 [ 0, %bb.b ], [ %.3.i.1, %idamax.exit.unr-lcssa ]
  %.23546.i.epil.init = phi double [ %i.f, %bb.b ], [ %.336.i.1, %idamax.exit.unr-lcssa ]
  %lcmp.mod94 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %gep61.i.epil = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv53.i.epil.init
  %i.p = load double, ptr %gep61.i.epil, align 8, !tbaa !10
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp ogt double %i.q, %.23546.i.epil.init
  %i.s = trunc nuw nsw i64 %indvars.iv53.i.epil.init to i32
  %.3.i.epil = select i1 %i.r, i32 %i.s, i32 %.248.i.epil.init
  br label %idamax.exit

idamax.exit:                                      ; preds = %idamax.exit.unr-lcssa, %.lr.ph49.i.epil.preheader
  %.3.i.lcssa = phi i32 [ %.3.i.1, %idamax.exit.unr-lcssa ], [ %.3.i.epil, %.lr.ph49.i.epil.preheader ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.t = trunc nuw nsw i64 %indvars.iv69 to i32
  %i.u = add nsw i32 %.3.i.lcssa, %i.t            ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = sext i32 %i.u to i64                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !10 ; 3 uses
  %i.z = fcmp une double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %idamax.exit
  %.not = icmp eq i32 %.3.i.lcssa, 0              ; 2 uses
  br i1 %.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store double %i.e, ptr %i.x, align 8, !tbaa !10
  store double %i.y, ptr %i.d, align 8, !tbaa !10
end_hunk_0
