begin_hunk_0_@dtranspose:bb.a
  %or.cond41 = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %5, %scevgep28
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %6, 0
  %i.l = or i1 %found.conflict, %stride.check
  %min.iters.check29 = icmp ult i32 %0, 16
  %n.mod.vf = and i64 %i.b, 12
  %n.vec = and i64 %i.b, 4294967280               ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec34 = and i64 %i.b, 4294967292             ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat36 = shufflevector <4 x double> %broadcast.splatinsert35, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n40 = icmp eq i64 %n.vec34, %i.b
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.m = mul nsw i64 %indvars.iv22, %i.c
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %indvars.iv22 ; 11 uses
  %invariant.gep26 = getelementptr [8 x i8], ptr %5, i64 %i.m ; 11 uses
  %or.cond41.not = xor i1 %or.cond41, true
  %brmerge = select i1 %or.cond41.not, i1 true, i1 %i.l
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = getelementptr i8, ptr %i.n, i64 64
  %i.q = getelementptr i8, ptr %i.n, i64 96
  %wide.load = load <4 x double>, ptr %i.n, align 8, !tbaa !12, !alias.scope !45
  %wide.load30 = load <4 x double>, ptr %i.o, align 8, !tbaa !12, !alias.scope !45
  %wide.load31 = load <4 x double>, ptr %i.p, align 8, !tbaa !12, !alias.scope !45
  %wide.load32 = load <4 x double>, ptr %i.q, align 8, !tbaa !12, !alias.scope !45
  %i.r = fmul <4 x double> %broadcast.splat, %wide.load
  %i.s = fmul <4 x double> %broadcast.splat, %wide.load30
  %i.t = fmul <4 x double> %broadcast.splat, %wide.load31
  %i.u = fmul <4 x double> %broadcast.splat, %wide.load32
  %i.v = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = getelementptr i8, ptr %i.v, i64 64
  %i.y = getelementptr i8, ptr %i.v, i64 96
  store <4 x double> %i.r, ptr %i.v, align 8, !tbaa !12, !alias.scope !48, !noalias !45
  store <4 x double> %i.s, ptr %i.w, align 8, !tbaa !12, !alias.scope !48, !noalias !45
  store <4 x double> %i.t, ptr %i.x, align 8, !tbaa !12, !alias.scope !48, !noalias !45
  store <4 x double> %i.u, ptr %i.y, align 8, !tbaa !12, !alias.scope !48, !noalias !45
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %invariant.gep, i64 %index37
  %wide.load38 = load <4 x double>, ptr %i.aa, align 8, !tbaa !12, !alias.scope !45
  %i.ab = fmul <4 x double> %broadcast.splat36, %wide.load38
  %i.ac = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index37
  store <4 x double> %i.ab, ptr %i.ac, align 8, !tbaa !12, !alias.scope !48, !noalias !45
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n40, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec34, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.ae = sub nsw i64 %i.b, %indvars.iv.ph
  %xtraiter = and i64 %i.ae, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.af = mul nsw i64 %indvars.iv.prol, %i.a
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.af
  %i.ag = load double, ptr %gep.prol, align 8, !tbaa !12
  %i.ah = fmul double %2, %i.ag
  %gep27.prol = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.prol
  store double %i.ah, ptr %gep27.prol, align 8, !tbaa !12
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !52

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ai = sub nsw i64 %indvars.iv.ph, %i.b
  %i.aj = icmp ugt i64 %i.ai, -8
  br i1 %i.aj, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ak = mul nsw i64 %indvars.iv, %i.a
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ak
  %i.al = load double, ptr %gep, align 8, !tbaa !12
  %i.am = fmul double %2, %i.al
  %gep27 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv
  store double %i.am, ptr %gep27, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = mul nsw i64 %indvars.iv.next, %i.a
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.an
  %i.ao = load double, ptr %gep.1, align 8, !tbaa !12
  %i.ap = fmul double %2, %i.ao
  %gep27.1 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next
  store double %i.ap, ptr %gep27.1, align 8, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aq = mul nsw i64 %indvars.iv.next.1, %i.a
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aq
  %i.ar = load double, ptr %gep.2, align 8, !tbaa !12
  %i.as = fmul double %2, %i.ar
  %gep27.2 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.1
  store double %i.as, ptr %gep27.2, align 8, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = mul nsw i64 %indvars.iv.next.2, %i.a
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.at
  %i.au = load double, ptr %gep.3, align 8, !tbaa !12
  %i.av = fmul double %2, %i.au
  %gep27.3 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.2
  store double %i.av, ptr %gep27.3, align 8, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.aw = mul nsw i64 %indvars.iv.next.3, %i.a
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aw
  %i.ax = load double, ptr %gep.4, align 8, !tbaa !12
  %i.ay = fmul double %2, %i.ax
  %gep27.4 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.3
  store double %i.ay, ptr %gep27.4, align 8, !tbaa !12
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.az = mul nsw i64 %indvars.iv.next.4, %i.a
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.az
  %i.ba = load double, ptr %gep.5, align 8, !tbaa !12
  %i.bb = fmul double %2, %i.ba
  %gep27.5 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.4
  store double %i.bb, ptr %gep27.5, align 8, !tbaa !12
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bc = mul nsw i64 %indvars.iv.next.5, %i.a
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bc
  %i.bd = load double, ptr %gep.6, align 8, !tbaa !12
  %i.be = fmul double %2, %i.bd
  %gep27.6 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.5
  store double %i.be, ptr %gep27.6, align 8, !tbaa !12
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bf = mul nsw i64 %indvars.iv.next.6, %i.a
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bf
  %i.bg = load double, ptr %gep.7, align 8, !tbaa !12
  %i.bh = fmul double %2, %i.bg
  %gep27.7 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.6
  store double %i.bh, ptr %gep27.7, align 8, !tbaa !12
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not15.7 = icmp eq i64 %indvars.iv.next.7, %i.b
  br i1 %.not15.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next23, %i.d
  br i1 %.not, label %._crit_edge20.split, label %iter.check, !llvm.loop !54

._crit_edge20.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ctranspose(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %6, 1                            ; 2 uses
  %i.b = shl i32 %4, 1                            ; 3 uses
  %i.c = shl i32 %1, 1
  %.not41 = icmp eq i32 %1, 0
  br i1 %.not41, label %._crit_edge43.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not3839 = icmp eq i32 %0, 0
  %i.d = sitofp i32 %7 to float                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = fneg float %i.d                          ; 2 uses
  br i1 %.not3839, label %._crit_edge43.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.g = shl i32 %0, 1
  %i.h = sext i32 %i.b to i64                     ; 5 uses
  %i.i = zext i32 %i.g to i64                     ; 4 uses
  %i.j = sext i32 %i.a to i64                     ; 3 uses
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %i.l = add nsw i64 %i.i, -2                     ; 4 uses
  %i.m = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.n = shl nsw i64 %i.j, 2
  %i.o = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.p = mul nsw i64 %i.h, -4                     ; 2 uses
  %scevgep62.a = getelementptr i8, ptr %2, i64 8
  %i.q = add nuw i64 %i.k, 9223372036854775806
  %i.r = lshr exact i64 %i.q, 1
  %i.s = mul i64 %i.r, %i.j
  %i.t = add nsw i64 %i.i, -2                     ; 2 uses
  %i.u = lshr exact i64 %i.t, 1
  %i.v = add i64 %i.s, %i.t
  %i.w = shl i64 %i.v, 2
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %scevgep63.a = getelementptr i8, ptr %i.x, i64 8 ; 3 uses
  %i.y = mul i64 %i.u, %i.h
  %i.z = shl i64 %i.y, 2                          ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.d, i64 1
  %i.ac = getelementptr i8, ptr %3, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = getelementptr i8, ptr %3, i64 %i.z
  %i.af = add nsw i64 %i.i, -2                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 1
  %i.ah = add nuw i64 %i.ag, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 62
  %mul.result = shl nsw i64 %i.l, 2
  %mul.result52 = shl nsw i64 %i.l, 2
  %mul.overflow53 = icmp ugt i64 %i.l, 4611686018427387902
  %i.ai = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.aj = select i1 %i.ai, i64 %i.p, i64 %i.o
  %mul55 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 %i.m) ; 2 uses
  %mul.result56 = extractvalue { i64, i1 } %mul55, 0 ; 2 uses
  %mul.overflow57 = extractvalue { i64, i1 } %mul55, 1
  %i.ak = sub i64 0, %mul.result56
  %i.al = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.am = select i1 %i.al, i64 %i.p, i64 %i.o
  %mul59 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.am, i64 %i.m) ; 2 uses
  %mul.result60 = extractvalue { i64, i1 } %mul59, 0 ; 2 uses
  %mul.overflow61 = extractvalue { i64, i1 } %mul59, 1
  %i.an = sub i64 0, %mul.result60
  %bound0 = icmp ult ptr %2, %scevgep63.a
  %bound1 = icmp ult ptr %5, %scevgep62.a
  %found.conflict = and i1 %bound0, %bound1
  %stride.check75 = icmp slt i32 %i.a, 0
  %invariant.op = or i1 %stride.check75, %found.conflict
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.ao = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 3 uses
  %i.ap = shl i64 %indvar, 3                      ; 4 uses
  %scevgep64.a = getelementptr i8, ptr %i.ad, i64 %i.ap ; 4 uses
  %i.aq = getelementptr i8, ptr %3, i64 %i.ap
  %scevgep65.a = getelementptr i8, ptr %i.aq, i64 4 ; 4 uses
  %i.ar = icmp ult ptr %scevgep64.a, %scevgep65.a
  %umin = select i1 %i.ar, ptr %scevgep64.a, ptr %scevgep65.a
  %i.as = icmp ugt ptr %scevgep64.a, %scevgep65.a
  %umax = select i1 %i.as, ptr %scevgep64.a, ptr %scevgep65.a
  %scevgep66 = getelementptr i8, ptr %umax, i64 4
  %scevgep67 = getelementptr i8, ptr %3, i64 %i.ap ; 4 uses
  %scevgep68.a = getelementptr i8, ptr %i.ae, i64 %i.ap ; 4 uses
  %i.at = icmp ult ptr %scevgep67, %scevgep68.a
  %umin69 = select i1 %i.at, ptr %scevgep67, ptr %scevgep68.a
  %i.au = icmp ugt ptr %scevgep67, %scevgep68.a
  %umax70 = select i1 %i.au, ptr %scevgep67, ptr %scevgep68.a
  %scevgep71 = getelementptr i8, ptr %umax70, i64 4
  %i.av = lshr exact i64 %indvars.iv45, 1
  %i.aw = mul nsw i64 %i.av, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %indvars.iv45 ; 2 uses
  %invariant.gep48 = getelementptr [4 x i8], ptr %5, i64 %i.aw ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ax = shl i64 %indvar, 3                      ; 2 uses
  %i.ay = getelementptr i8, ptr %3, i64 %i.ax
  %scevgep58 = getelementptr i8, ptr %i.ay, i64 4 ; 4 uses
  %scevgep54 = getelementptr i8, ptr %3, i64 %i.ax ; 4 uses
  %i.az = mul i64 %i.n, %indvar                   ; 2 uses
  %i.ba = getelementptr i8, ptr %5, i64 %i.az
  %scevgep50 = getelementptr i8, ptr %i.ba, i64 4 ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %scevgep
  %i.bd = getelementptr i8, ptr %scevgep50, i64 %mul.result52
  %i.be = icmp ult ptr %i.bd, %scevgep50
  %i.bf = or i1 %i.be, %mul.overflow53
  %i.bg = getelementptr i8, ptr %scevgep54, i64 %mul.result56
  %i.bh = getelementptr i8, ptr %scevgep54, i64 %i.ak
  %i.bi = icmp ult ptr %i.bg, %scevgep54
  %i.bj = icmp ugt ptr %i.bh, %scevgep54
  %i.bk = select i1 %i.ai, i1 %i.bj, i1 %i.bi
  %i.bl = or i1 %i.bk, %mul.overflow57
  %i.bm = getelementptr i8, ptr %scevgep58, i64 %mul.result60
  %i.bn = getelementptr i8, ptr %scevgep58, i64 %i.an
  %i.bo = icmp ult ptr %i.bm, %scevgep58
  %i.bp = icmp ugt ptr %i.bn, %scevgep58
  %i.bq = select i1 %i.al, i1 %i.bp, i1 %i.bo
  %i.br = or i1 %i.bq, %mul.overflow61
  %i.bs = or i1 %i.bc, %i.bf
  %i.bt = or i1 %i.bs, %i.bl
  %i.bu = or i1 %i.bt, %i.br
  br i1 %i.bu, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound072 = icmp ult ptr %5, %scevgep66
  %bound173 = icmp ult ptr %umin, %scevgep63.a
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx.reass = or i1 %found.conflict74, %invariant.op
  %bound076 = icmp ult ptr %5, %scevgep71
  %bound177 = icmp ult ptr %umin69, %scevgep63.a
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx80 = or i1 %found.conflict78, %conflict.rdx.reass
  br i1 %conflict.rdx80, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bv = load float, ptr %2, align 4, !tbaa !8, !alias.scope !55, !noalias !58
  %broadcast.splatinsert85 = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat86 = shufflevector <8 x float> %broadcast.splatinsert85, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bw = load <2 x float>, ptr %2, align 4, !tbaa !8, !alias.scope !55, !noalias !58
  %i.bx = fmul <2 x float> %i.bw, %i.ab           ; 2 uses
  %broadcast.splat84 = shufflevector <2 x float> %i.bx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat92 = shufflevector <2 x float> %i.bx, <2 x float> poison, <8 x i32> zeroinitializer
  %i.by = load float, ptr %i.e, align 4, !tbaa !8, !alias.scope !55, !noalias !58
  %broadcast.splatinsert89 = insertelement <8 x float> poison, float %i.by, i64 0
  %broadcast.splat90 = shufflevector <8 x float> %broadcast.splatinsert89, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bz = lshr exact <8 x i64> %vec.ind, splat (i64 1)
  %i.ca = mul nsw <8 x i64> %i.bz, %broadcast.splat
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep, <8 x i64> %i.ca ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !8, !alias.scope !60
  %wide.gep81 = getelementptr i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  %wide.masked.gather82 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep81, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !8, !alias.scope !62
  %i.cb = fmul <8 x float> %broadcast.splat84, %wide.masked.gather82
  %i.cc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat86, <8 x float> %wide.masked.gather, <8 x float> %i.cb)
  %.idx = shl i64 %index, 3
  %i.cd = getelementptr i8, ptr %invariant.gep48, i64 %.idx
  %wide.masked.gather87 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep81, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !8, !alias.scope !62
  %wide.masked.gather88 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !8, !alias.scope !60
  %i.ce = fmul <8 x float> %broadcast.splat90, %wide.masked.gather88
  %i.cf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat92, <8 x float> %wide.masked.gather87, <8 x float> %i.ce)
  %interleaved.vec = shufflevector <8 x float> %i.cc, <8 x float> %i.cf, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.cd, align 4, !tbaa !8, !alias.scope !58, !noalias !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ch = load float, ptr %2, align 4, !tbaa !8
  %i.ci = lshr exact i64 %indvars.iv, 1
  %i.cj = mul nsw i64 %i.ci, %i.h
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cj ; 3 uses
  %i.ck = load float, ptr %gep, align 4, !tbaa !8
  %i.cl = load float, ptr %i.e, align 4, !tbaa !8
  %i.cm = fmul float %i.cl, %i.d
  %i.cn = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !8
  %i.cp = fmul float %i.cm, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ck, float %i.cp)
  %gep49 = getelementptr [4 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store float %i.cq, ptr %gep49, align 4, !tbaa !8
  %i.cr = load float, ptr %2, align 4, !tbaa !8
  %i.cs = fmul float %i.cr, %i.f
  %i.ct = load float, ptr %i.cn, align 4, !tbaa !8
  %i.cu = load float, ptr %i.e, align 4, !tbaa !8
  %i.cv = load float, ptr %gep, align 4, !tbaa !8
  %i.cw = fmul float %i.cu, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.ct, float %i.cw)
  %i.cy = getelementptr i8, ptr %gep49, i64 4
  store float %i.cx, ptr %i.cy, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not38, label %._crit_edge, label %scalar.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next46, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !67

._crit_edge43.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ztranspose(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %6, 1                            ; 2 uses
  %i.b = shl i32 %4, 1                            ; 3 uses
  %i.c = shl i32 %1, 1
  %.not41 = icmp eq i32 %1, 0
  br i1 %.not41, label %._crit_edge43.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not3839 = icmp eq i32 %0, 0
  %i.d = sitofp i32 %7 to double                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %.not3839, label %._crit_edge43.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = fneg double %i.d
  %i.g = shl i32 %0, 1
  %i.h = sext i32 %i.b to i64                     ; 5 uses
  %i.i = zext i32 %i.g to i64                     ; 4 uses
  %i.j = sext i32 %i.a to i64                     ; 3 uses
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %i.l = add nsw i64 %i.i, -2                     ; 4 uses
  %i.m = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.n = shl nsw i64 %i.j, 3
  %i.o = shl nsw i64 %i.h, 3                      ; 2 uses
  %i.p = mul nsw i64 %i.h, -8                     ; 2 uses
  %scevgep62.a = getelementptr i8, ptr %2, i64 16
  %i.q = add nuw nsw i64 %i.k, 4611686018427387902
  %i.r = lshr exact i64 %i.q, 1
  %i.s = mul i64 %i.r, %i.j
  %i.t = add nsw i64 %i.i, -2                     ; 2 uses
  %i.u = lshr exact i64 %i.t, 1
  %i.v = add i64 %i.s, %i.t
  %i.w = shl i64 %i.v, 3
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %scevgep63.a = getelementptr i8, ptr %i.x, i64 16 ; 3 uses
  %i.y = mul i64 %i.u, %i.h
  %i.z = shl i64 %i.y, 3                          ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.f, i64 0 ; 2 uses
  %i.ab = insertelement <2 x double> %i.aa, double %i.d, i64 1
  %i.ac = getelementptr i8, ptr %3, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = getelementptr i8, ptr %3, i64 %i.z
  %i.af = add nsw i64 %i.i, -2                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 1
  %i.ah = add nuw i64 %i.ag, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 62
  %mul.result = shl nsw i64 %i.l, 3
  %mul.result52 = shl nsw i64 %i.l, 3
  %mul.overflow53 = icmp ugt i64 %i.l, 2305843009213693950
  %i.ai = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.aj = select i1 %i.ai, i64 %i.p, i64 %i.o
  %mul55 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 %i.m) ; 2 uses
  %mul.result56 = extractvalue { i64, i1 } %mul55, 0 ; 2 uses
  %mul.overflow57 = extractvalue { i64, i1 } %mul55, 1
  %i.ak = sub i64 0, %mul.result56
  %i.al = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.am = select i1 %i.al, i64 %i.p, i64 %i.o
  %mul59 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.am, i64 %i.m) ; 2 uses
  %mul.result60 = extractvalue { i64, i1 } %mul59, 0 ; 2 uses
  %mul.overflow61 = extractvalue { i64, i1 } %mul59, 1
  %i.an = sub i64 0, %mul.result60
  %bound0 = icmp ult ptr %2, %scevgep63.a
  %bound1 = icmp ult ptr %5, %scevgep62.a
  %found.conflict = and i1 %bound0, %bound1
  %stride.check75 = icmp slt i32 %i.a, 0
  %invariant.op = or i1 %stride.check75, %found.conflict
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.ao = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 3 uses
  %i.ap = shl i64 %indvar, 4                      ; 4 uses
  %scevgep64.a = getelementptr i8, ptr %i.ad, i64 %i.ap ; 4 uses
  %i.aq = getelementptr i8, ptr %3, i64 %i.ap
  %scevgep65.a = getelementptr i8, ptr %i.aq, i64 8 ; 4 uses
  %i.ar = icmp ult ptr %scevgep64.a, %scevgep65.a
  %umin = select i1 %i.ar, ptr %scevgep64.a, ptr %scevgep65.a
  %i.as = icmp ugt ptr %scevgep64.a, %scevgep65.a
  %umax = select i1 %i.as, ptr %scevgep64.a, ptr %scevgep65.a
  %scevgep66 = getelementptr i8, ptr %umax, i64 8
  %scevgep67 = getelementptr i8, ptr %3, i64 %i.ap ; 4 uses
  %scevgep68.a = getelementptr i8, ptr %i.ae, i64 %i.ap ; 4 uses
  %i.at = icmp ult ptr %scevgep67, %scevgep68.a
  %umin69 = select i1 %i.at, ptr %scevgep67, ptr %scevgep68.a
  %i.au = icmp ugt ptr %scevgep67, %scevgep68.a
  %umax70 = select i1 %i.au, ptr %scevgep67, ptr %scevgep68.a
  %scevgep71 = getelementptr i8, ptr %umax70, i64 8
  %i.av = lshr exact i64 %indvars.iv45, 1
  %i.aw = mul nsw i64 %i.av, %i.j
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %indvars.iv45 ; 2 uses
  %invariant.gep48 = getelementptr [8 x i8], ptr %5, i64 %i.aw ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ax = shl i64 %indvar, 4                      ; 2 uses
  %i.ay = getelementptr i8, ptr %3, i64 %i.ax
  %scevgep58 = getelementptr i8, ptr %i.ay, i64 8 ; 4 uses
  %scevgep54 = getelementptr i8, ptr %3, i64 %i.ax ; 4 uses
  %i.az = mul i64 %i.n, %indvar                   ; 2 uses
  %i.ba = getelementptr i8, ptr %5, i64 %i.az
  %scevgep50 = getelementptr i8, ptr %i.ba, i64 8 ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %scevgep
  %i.bd = getelementptr i8, ptr %scevgep50, i64 %mul.result52
  %i.be = icmp ult ptr %i.bd, %scevgep50
  %i.bf = or i1 %i.be, %mul.overflow53
  %i.bg = getelementptr i8, ptr %scevgep54, i64 %mul.result56
  %i.bh = getelementptr i8, ptr %scevgep54, i64 %i.ak
  %i.bi = icmp ult ptr %i.bg, %scevgep54
  %i.bj = icmp ugt ptr %i.bh, %scevgep54
  %i.bk = select i1 %i.ai, i1 %i.bj, i1 %i.bi
  %i.bl = or i1 %i.bk, %mul.overflow57
  %i.bm = getelementptr i8, ptr %scevgep58, i64 %mul.result60
  %i.bn = getelementptr i8, ptr %scevgep58, i64 %i.an
  %i.bo = icmp ult ptr %i.bm, %scevgep58
  %i.bp = icmp ugt ptr %i.bn, %scevgep58
  %i.bq = select i1 %i.al, i1 %i.bp, i1 %i.bo
  %i.br = or i1 %i.bq, %mul.overflow61
  %i.bs = or i1 %i.bc, %i.bf
  %i.bt = or i1 %i.bs, %i.bl
  %i.bu = or i1 %i.bt, %i.br
  br i1 %i.bu, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound072 = icmp ult ptr %5, %scevgep66
  %bound173 = icmp ult ptr %umin, %scevgep63.a
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx.reass = or i1 %found.conflict74, %invariant.op
  %bound076 = icmp ult ptr %5, %scevgep71
  %bound177 = icmp ult ptr %umin69, %scevgep63.a
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx80 = or i1 %found.conflict78, %conflict.rdx.reass
  br i1 %conflict.rdx80, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bv = load double, ptr %2, align 8, !tbaa !12, !alias.scope !68, !noalias !71
  %broadcast.splatinsert85 = insertelement <4 x double> poison, double %i.bv, i64 0
  %broadcast.splat86 = shufflevector <4 x double> %broadcast.splatinsert85, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bw = load <2 x double>, ptr %2, align 8, !tbaa !12, !alias.scope !68, !noalias !71 ; 2 uses
  %i.bx = fmul <2 x double> %i.bw, %i.ab          ; 2 uses
  %broadcast.splat84 = shufflevector <2 x double> %i.bx, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat92 = shufflevector <2 x double> %i.bx, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat90 = shufflevector <2 x double> %i.bw, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.by = lshr exact <4 x i64> %vec.ind, splat (i64 1)
  %i.bz = mul nsw <4 x i64> %i.by, %broadcast.splat
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep, <4 x i64> %i.bz ; 3 uses
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12, !alias.scope !73
  %wide.gep81 = getelementptr i8, <4 x ptr> %wide.gep, i64 8 ; 2 uses
  %wide.masked.gather82 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep81, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12, !alias.scope !75
  %i.ca = fmul <4 x double> %broadcast.splat84, %wide.masked.gather82
  %i.cb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat86, <4 x double> %wide.masked.gather, <4 x double> %i.ca)
  %.idx = shl i64 %index, 4
  %i.cc = getelementptr i8, ptr %invariant.gep48, i64 %.idx
  %wide.masked.gather87 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep81, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12, !alias.scope !75
  %wide.masked.gather88 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12, !alias.scope !73
  %i.cd = fmul <4 x double> %broadcast.splat90, %wide.masked.gather88
  %i.ce = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat92, <4 x double> %wide.masked.gather87, <4 x double> %i.cd)
  %interleaved.vec = shufflevector <4 x double> %i.cb, <4 x double> %i.ce, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.cc, align 8, !tbaa !12, !alias.scope !71, !noalias !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cg = load double, ptr %2, align 8, !tbaa !12
  %i.ch = lshr exact i64 %indvars.iv, 1
  %i.ci = mul nsw i64 %i.ch, %i.h
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ci ; 3 uses
  %i.cj = load double, ptr %gep, align 8, !tbaa !12
  %i.ck = load double, ptr %i.e, align 8, !tbaa !12
  %i.cl = fmul double %i.ck, %i.d
  %i.cm = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !12
  %i.co = fmul double %i.cl, %i.cn
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cj, double %i.co)
  %gep49 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store double %i.cp, ptr %gep49, align 8, !tbaa !12
  %i.cq = load double, ptr %i.cm, align 8, !tbaa !12
  %i.cr = load double, ptr %gep, align 8, !tbaa !12
  %i.cs = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.ct = insertelement <2 x double> %i.aa, double %i.cr, i64 1
  %i.cu = fmul <2 x double> %i.cs, %i.ct          ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = extractelement <2 x double> %i.cu, i64 1
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cq, double %i.cw)
  %i.cy = getelementptr i8, ptr %gep49, i64 8
  store double %i.cx, ptr %i.cy, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not38, label %._crit_edge, label %scalar.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next46, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !80

._crit_edge43.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @my_scopy(i32 noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %.not18 = icmp eq i32 %0, 0
  %.not1516 = icmp eq i32 %1, 0
  %or.cond = or i1 %.not18, %.not1516
  br i1 %or.cond, label %._crit_edge20.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 10 uses
  %i.b = sext i32 %4 to i64                       ; 2 uses
  %i.c = sext i32 %6 to i64                       ; 2 uses
  %i.d = zext i32 %0 to i64                       ; 2 uses
  %i.e = add nsw i64 %i.d, -1                     ; 2 uses
  %i.f = mul i64 %i.e, %i.c
  %i.g = add i64 %i.f, %i.a
  %i.h = shl i64 %i.g, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.h
  %i.i = mul i64 %i.e, %i.b
  %i.j = add i64 %i.i, %i.a
  %i.k = shl i64 %i.j, 2
  %scevgep28 = getelementptr i8, ptr %3, i64 %i.k
  %min.iters.check = icmp ult i32 %1, 4
  %bound0 = icmp ult ptr %5, %scevgep28
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.l = or i32 %4, %6
  %i.m = icmp slt i32 %i.l, 0
  %i.n = or i1 %found.conflict, %i.m
  %min.iters.check30 = icmp ult i32 %1, 32
  %n.mod.vf = and i64 %i.a, 28
  %n.vec = and i64 %i.a, 4294967264               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec35 = and i64 %i.a, 4294967292             ; 3 uses
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat37 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec35, %i.a
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.o = mul nsw i64 %indvars.iv22, %i.b
  %i.p = mul nsw i64 %indvars.iv22, %i.c
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.o ; 11 uses
  %invariant.gep26 = getelementptr [4 x i8], ptr %5, i64 %i.p ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.n
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.q = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = getelementptr i8, ptr %i.q, i64 64
  %i.t = getelementptr i8, ptr %i.q, i64 96
  %wide.load = load <8 x float>, ptr %i.q, align 4, !tbaa !8, !alias.scope !81
  %wide.load31 = load <8 x float>, ptr %i.r, align 4, !tbaa !8, !alias.scope !81
  %wide.load32 = load <8 x float>, ptr %i.s, align 4, !tbaa !8, !alias.scope !81
  %wide.load33 = load <8 x float>, ptr %i.t, align 4, !tbaa !8, !alias.scope !81
  %i.u = fmul <8 x float> %broadcast.splat, %wide.load
  %i.v = fmul <8 x float> %broadcast.splat, %wide.load31
  %i.w = fmul <8 x float> %broadcast.splat, %wide.load32
  %i.x = fmul <8 x float> %broadcast.splat, %wide.load33
  %i.y = getelementptr [4 x i8], ptr %invariant.gep26, i64 %index ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = getelementptr i8, ptr %i.y, i64 64
  %i.ab = getelementptr i8, ptr %i.y, i64 96
  store <8 x float> %i.u, ptr %i.y, align 4, !tbaa !8, !alias.scope !84, !noalias !81
  store <8 x float> %i.v, ptr %i.z, align 4, !tbaa !8, !alias.scope !84, !noalias !81
  store <8 x float> %i.w, ptr %i.aa, align 4, !tbaa !8, !alias.scope !84, !noalias !81
  store <8 x float> %i.x, ptr %i.ab, align 4, !tbaa !8, !alias.scope !84, !noalias !81
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_0
begin_hunk_1_@my_dcopy:bb.a
  %i.e = add nsw i64 %i.d, -1                     ; 2 uses
  %i.f = mul i64 %i.e, %i.c
  %i.g = add i64 %i.f, %i.a
  %i.h = shl i64 %i.g, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.h
  %i.i = mul i64 %i.e, %i.b
  %i.j = add i64 %i.i, %i.a
  %i.k = shl i64 %i.j, 3
  %scevgep28 = getelementptr i8, ptr %3, i64 %i.k
  %min.iters.check = icmp ult i32 %1, 4
  %bound0 = icmp ult ptr %5, %scevgep28
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.l = or i32 %4, %6
  %i.m = icmp slt i32 %i.l, 0
  %i.n = or i1 %found.conflict, %i.m
  %min.iters.check30 = icmp ult i32 %1, 16
  %n.mod.vf = and i64 %i.a, 12
  %n.vec = and i64 %i.a, 4294967280               ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec35 = and i64 %i.a, 4294967292             ; 3 uses
  %broadcast.splatinsert36 = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat37 = shufflevector <4 x double> %broadcast.splatinsert36, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n41 = icmp eq i64 %n.vec35, %i.a
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.o = mul nsw i64 %indvars.iv22, %i.b
  %i.p = mul nsw i64 %indvars.iv22, %i.c
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.o ; 11 uses
  %invariant.gep26 = getelementptr [8 x i8], ptr %5, i64 %i.p ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.n
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = getelementptr i8, ptr %i.q, i64 64
  %i.t = getelementptr i8, ptr %i.q, i64 96
  %wide.load = load <4 x double>, ptr %i.q, align 8, !tbaa !12, !alias.scope !91
  %wide.load31 = load <4 x double>, ptr %i.r, align 8, !tbaa !12, !alias.scope !91
  %wide.load32 = load <4 x double>, ptr %i.s, align 8, !tbaa !12, !alias.scope !91
  %wide.load33 = load <4 x double>, ptr %i.t, align 8, !tbaa !12, !alias.scope !91
  %i.u = fmul <4 x double> %broadcast.splat, %wide.load
  %i.v = fmul <4 x double> %broadcast.splat, %wide.load31
  %i.w = fmul <4 x double> %broadcast.splat, %wide.load32
  %i.x = fmul <4 x double> %broadcast.splat, %wide.load33
  %i.y = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = getelementptr i8, ptr %i.y, i64 64
  %i.ab = getelementptr i8, ptr %i.y, i64 96
  store <4 x double> %i.u, ptr %i.y, align 8, !tbaa !12, !alias.scope !94, !noalias !91
  store <4 x double> %i.v, ptr %i.z, align 8, !tbaa !12, !alias.scope !94, !noalias !91
  store <4 x double> %i.w, ptr %i.aa, align 8, !tbaa !12, !alias.scope !94, !noalias !91
  store <4 x double> %i.x, ptr %i.ab, align 8, !tbaa !12, !alias.scope !94, !noalias !91
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %invariant.gep, i64 %index38
  %wide.load39 = load <4 x double>, ptr %i.ad, align 8, !tbaa !12, !alias.scope !91
  %i.ae = fmul <4 x double> %broadcast.splat37, %wide.load39
  %i.af = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index38
  store <4 x double> %i.ae, ptr %i.af, align 8, !tbaa !12, !alias.scope !94, !noalias !91
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n41, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec35, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.ah = sub nsw i64 %i.a, %indvars.iv.ph
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ai = load double, ptr %gep.prol, align 8, !tbaa !12
  %i.aj = fmul double %2, %i.ai
  %gep27.prol = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.prol
  store double %i.aj, ptr %gep27.prol, align 8, !tbaa !12
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !98

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.ph, %i.a
  %i.al = icmp ugt i64 %i.ak, -8
  br i1 %i.al, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.am = load double, ptr %gep, align 8, !tbaa !12
  %i.an = fmul double %2, %i.am
  %gep27 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv
  store double %i.an, ptr %gep27, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ao = load double, ptr %gep.1, align 8, !tbaa !12
  %i.ap = fmul double %2, %i.ao
  %gep27.1 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next
  store double %i.ap, ptr %gep27.1, align 8, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.aq = load double, ptr %gep.2, align 8, !tbaa !12
  %i.ar = fmul double %2, %i.aq
  %gep27.2 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.1
  store double %i.ar, ptr %gep27.2, align 8, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.as = load double, ptr %gep.3, align 8, !tbaa !12
  %i.at = fmul double %2, %i.as
  %gep27.3 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.2
  store double %i.at, ptr %gep27.3, align 8, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.au = load double, ptr %gep.4, align 8, !tbaa !12
  %i.av = fmul double %2, %i.au
  %gep27.4 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.3
  store double %i.av, ptr %gep27.4, align 8, !tbaa !12
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.aw = load double, ptr %gep.5, align 8, !tbaa !12
  %i.ax = fmul double %2, %i.aw
  %gep27.5 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.4
  store double %i.ax, ptr %gep27.5, align 8, !tbaa !12
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.ay = load double, ptr %gep.6, align 8, !tbaa !12
  %i.az = fmul double %2, %i.ay
  %gep27.6 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.5
  store double %i.az, ptr %gep27.6, align 8, !tbaa !12
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.ba = load double, ptr %gep.7, align 8, !tbaa !12
  %i.bb = fmul double %2, %i.ba
  %gep27.7 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.6
  store double %i.bb, ptr %gep27.7, align 8, !tbaa !12
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not15.7 = icmp eq i64 %indvars.iv.next.7, %i.a
  br i1 %.not15.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next23, %i.d
  br i1 %.not, label %._crit_edge20.split, label %iter.check, !llvm.loop !100

._crit_edge20.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @my_ccopy(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %6, 1                            ; 3 uses
  %i.b = shl i32 %4, 1                            ; 2 uses
  %.not41 = icmp eq i32 %0, 0
  br i1 %.not41, label %._crit_edge43.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not3839 = icmp eq i32 %1, 0
  %i.c = sitofp i32 %7 to float                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.e = fneg float %i.c                          ; 2 uses
  br i1 %.not3839, label %._crit_edge43.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = shl i32 %1, 1
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = sext i32 %i.b to i64                     ; 3 uses
  %i.i = sext i32 %i.a to i64                     ; 3 uses
  %i.j = zext i32 %0 to i64                       ; 2 uses
  %i.k = add nsw i64 %i.g, -2                     ; 5 uses
  %i.l = shl nsw i64 %i.i, 2
  %i.m = shl nsw i64 %i.h, 2
  %scevgep62 = getelementptr i8, ptr %2, i64 8
  %i.n = add nsw i64 %i.j, -1                     ; 2 uses
  %i.o = mul i64 %i.n, %i.i
  %i.p = add i64 %i.o, %i.g
  %i.q = shl i64 %i.p, 2
  %scevgep63 = getelementptr i8, ptr %5, i64 %i.q ; 2 uses
  %i.r = mul i64 %i.n, %i.h
  %i.s = add i64 %i.r, %i.g
  %i.t = shl i64 %i.s, 2
  %scevgep64 = getelementptr i8, ptr %3, i64 %i.t
  %i.u = insertelement <2 x float> poison, float %i.e, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.c, i64 1
  %i.w = add nsw i64 %i.g, -2                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 1
  %i.y = add nuw i64 %i.x, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 62
  %mul.result = shl nsw i64 %i.k, 2
  %mul.result52 = shl nsw i64 %i.k, 2
  %mul.overflow53 = icmp ugt i64 %i.k, 4611686018427387902
  %mul.result56 = shl nsw i64 %i.k, 2
  %mul.result60 = shl nsw i64 %i.k, 2
  %bound0 = icmp ult ptr %2, %scevgep63
  %bound1 = icmp ult ptr %5, %scevgep62
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.a, 0
  %i.z = or i1 %found.conflict, %stride.check
  %bound065 = icmp ult ptr %5, %scevgep64
  %bound166 = icmp ult ptr %3, %scevgep63
  %found.conflict67 = and i1 %bound065, %bound166
  %i.aa = or i32 %i.b, %i.a
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = or i1 %found.conflict67, %i.ab
  %conflict.rdx = or i1 %i.z, %i.ac
  %n.vec = and i64 %i.y, -8                       ; 3 uses
  %i.ad = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 5 uses
  %i.ae = mul nsw i64 %indvars.iv45, %i.h
  %i.af = mul nsw i64 %indvars.iv45, %i.i
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.ae ; 2 uses
  %invariant.gep48 = getelementptr [4 x i8], ptr %5, i64 %i.af ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ag = mul i64 %i.m, %indvars.iv45             ; 2 uses
  %i.ah = getelementptr i8, ptr %3, i64 %i.ag
  %scevgep58 = getelementptr i8, ptr %i.ah, i64 4 ; 2 uses
  %scevgep54 = getelementptr i8, ptr %3, i64 %i.ag ; 2 uses
  %i.ai = mul i64 %i.l, %indvars.iv45             ; 2 uses
  %i.aj = getelementptr i8, ptr %5, i64 %i.ai
  %scevgep50 = getelementptr i8, ptr %i.aj, i64 4 ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.ai  ; 2 uses
  %i.ak = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.al = icmp ult ptr %i.ak, %scevgep
  %i.am = getelementptr i8, ptr %scevgep50, i64 %mul.result52
  %i.an = icmp ult ptr %i.am, %scevgep50
  %8 = or i1 %i.an, %mul.overflow53
  %9 = getelementptr i8, ptr %scevgep54, i64 %mul.result56
  %10 = icmp ult ptr %9, %scevgep54
  %i.ao = getelementptr i8, ptr %scevgep58, i64 %mul.result60
  %i.ap = icmp ult ptr %i.ao, %scevgep58
  %i.aq = or i1 %i.al, %8
  %i.ar = or i1 %10, %i.aq
  %i.as = or i1 %i.ap, %i.ar
  %brmerge = select i1 %i.as, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.at = load float, ptr %2, align 4, !tbaa !8, !alias.scope !101, !noalias !104
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.at, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %i.au = load <2 x float>, ptr %2, align 4, !tbaa !8, !alias.scope !101, !noalias !104
  %i.av = fmul <2 x float> %i.au, %i.v            ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.av, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat79 = shufflevector <2 x float> %i.av, <2 x float> poison, <8 x i32> zeroinitializer
  %i.aw = load float, ptr %i.d, align 4, !tbaa !8, !alias.scope !101, !noalias !104
  %broadcast.splatinsert76 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat77 = shufflevector <8 x float> %broadcast.splatinsert76, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl nuw i64 %index, 1                   ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ax
  %wide.vec = load <16 x float>, ptr %i.ay, align 4, !tbaa !8, !alias.scope !106 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec70 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.az = fmul <8 x float> %broadcast.splat, %strided.vec70
  %i.ba = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat72, <8 x float> %strided.vec, <8 x float> %i.az)
  %i.bb = getelementptr [4 x i8], ptr %invariant.gep48, i64 %i.ax
  %strided.vec74 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec75 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bc = fmul <8 x float> %broadcast.splat77, %strided.vec74
  %i.bd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat79, <8 x float> %strided.vec75, <8 x float> %i.bc)
  %interleaved.vec = shufflevector <8 x float> %i.ba, <8 x float> %i.bd, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bb, align 4, !tbaa !8, !alias.scope !104, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ad, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bf = load float, ptr %2, align 4, !tbaa !8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.bg = load float, ptr %gep, align 4, !tbaa !8
  %i.bh = load float, ptr %i.d, align 4, !tbaa !8
  %i.bi = fmul float %i.bh, %i.c
  %i.bj = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !8
  %i.bl = fmul float %i.bi, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.bl)
  %gep49 = getelementptr [4 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store float %i.bm, ptr %gep49, align 4, !tbaa !8
  %i.bn = load float, ptr %2, align 4, !tbaa !8
  %i.bo = fmul float %i.bn, %i.e
  %i.bp = load float, ptr %i.bj, align 4, !tbaa !8
  %i.bq = load float, ptr %i.d, align 4, !tbaa !8
  %i.br = load float, ptr %gep, align 4, !tbaa !8
  %i.bs = fmul float %i.bq, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bp, float %i.bs)
  %i.bu = getelementptr i8, ptr %gep49, i64 4
  store float %i.bt, ptr %i.bu, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %.not38, label %._crit_edge, label %scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next46, %i.j
  br i1 %.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !110

._crit_edge43.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @my_zcopy(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %6, 1                            ; 3 uses
  %i.b = shl i32 %4, 1                            ; 2 uses
  %.not41 = icmp eq i32 %0, 0
  br i1 %.not41, label %._crit_edge43.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not3839 = icmp eq i32 %1, 0
  %i.c = sitofp i32 %7 to double                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %.not3839, label %._crit_edge43.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.e = fneg double %i.c
  %i.f = shl i32 %1, 1
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = sext i32 %i.b to i64                     ; 3 uses
  %i.i = sext i32 %i.a to i64                     ; 3 uses
  %i.j = zext i32 %0 to i64                       ; 2 uses
  %i.k = add nsw i64 %i.g, -2                     ; 5 uses
  %i.l = shl nsw i64 %i.i, 3
  %i.m = shl nsw i64 %i.h, 3
  %scevgep62 = getelementptr i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1                     ; 2 uses
  %i.o = mul i64 %i.n, %i.i
  %i.p = add i64 %i.o, %i.g
  %i.q = shl i64 %i.p, 3
  %scevgep63 = getelementptr i8, ptr %5, i64 %i.q ; 2 uses
  %i.r = mul i64 %i.n, %i.h
  %i.s = add i64 %i.r, %i.g
  %i.t = shl i64 %i.s, 3
  %scevgep64 = getelementptr i8, ptr %3, i64 %i.t
  %i.u = insertelement <2 x double> poison, double %i.e, i64 0 ; 2 uses
  %i.v = insertelement <2 x double> %i.u, double %i.c, i64 1
  %i.w = add nsw i64 %i.g, -2                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 1
  %i.y = add nuw i64 %i.x, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 54
  %mul.result = shl nsw i64 %i.k, 3
  %mul.result52 = shl nsw i64 %i.k, 3
  %mul.overflow53 = icmp ugt i64 %i.k, 2305843009213693950
  %mul.result56 = shl nsw i64 %i.k, 3
  %mul.result60 = shl nsw i64 %i.k, 3
  %bound0 = icmp ult ptr %2, %scevgep63
  %bound1 = icmp ult ptr %5, %scevgep62
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.a, 0
  %i.z = or i1 %found.conflict, %stride.check
  %bound065 = icmp ult ptr %5, %scevgep64
  %bound166 = icmp ult ptr %3, %scevgep63
  %found.conflict67 = and i1 %bound065, %bound166
  %i.aa = or i32 %i.b, %i.a
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = or i1 %found.conflict67, %i.ab
  %conflict.rdx = or i1 %i.z, %i.ac
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.ad = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 5 uses
  %i.ae = mul nsw i64 %indvars.iv45, %i.h
  %i.af = mul nsw i64 %indvars.iv45, %i.i
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.ae ; 2 uses
  %invariant.gep48 = getelementptr [8 x i8], ptr %5, i64 %i.af ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ag = mul i64 %i.m, %indvars.iv45             ; 2 uses
  %i.ah = getelementptr i8, ptr %3, i64 %i.ag
  %scevgep58 = getelementptr i8, ptr %i.ah, i64 8 ; 2 uses
  %scevgep54 = getelementptr i8, ptr %3, i64 %i.ag ; 2 uses
  %i.ai = mul i64 %i.l, %indvars.iv45             ; 2 uses
  %i.aj = getelementptr i8, ptr %5, i64 %i.ai
  %scevgep50 = getelementptr i8, ptr %i.aj, i64 8 ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.ai  ; 2 uses
  %i.ak = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.al = icmp ult ptr %i.ak, %scevgep
  %i.am = getelementptr i8, ptr %scevgep50, i64 %mul.result52
  %i.an = icmp ult ptr %i.am, %scevgep50
  %8 = or i1 %i.an, %mul.overflow53
  %9 = getelementptr i8, ptr %scevgep54, i64 %mul.result56
  %10 = icmp ult ptr %9, %scevgep54
  %i.ao = getelementptr i8, ptr %scevgep58, i64 %mul.result60
  %i.ap = icmp ult ptr %i.ao, %scevgep58
  %i.aq = or i1 %i.al, %8
  %i.ar = or i1 %10, %i.aq
  %i.as = or i1 %i.ap, %i.ar
  %brmerge = select i1 %i.as, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.at = load double, ptr %2, align 8, !tbaa !12, !alias.scope !111, !noalias !114
  %broadcast.splatinsert71 = insertelement <4 x double> poison, double %i.at, i64 0
  %broadcast.splat72 = shufflevector <4 x double> %broadcast.splatinsert71, <4 x double> poison, <4 x i32> zeroinitializer
  %i.au = load <2 x double>, ptr %2, align 8, !tbaa !12, !alias.scope !111, !noalias !114 ; 2 uses
  %i.av = fmul <2 x double> %i.au, %i.v           ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat79 = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat77 = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl nuw i64 %index, 1                   ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.aw
  %wide.vec = load <8 x double>, ptr %i.ax, align 8, !tbaa !12, !alias.scope !116 ; 4 uses
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec70 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ay = fmul <4 x double> %broadcast.splat, %strided.vec70
  %i.az = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat72, <4 x double> %strided.vec, <4 x double> %i.ay)
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.aw
  %strided.vec74 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec75 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bb = fmul <4 x double> %broadcast.splat77, %strided.vec74
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat79, <4 x double> %strided.vec75, <4 x double> %i.bb)
  %interleaved.vec = shufflevector <4 x double> %i.az, <4 x double> %i.bc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ba, align 8, !tbaa !12, !alias.scope !114, !noalias !116
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ad, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.be = load double, ptr %2, align 8, !tbaa !12
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.bf = load double, ptr %gep, align 8, !tbaa !12
  %i.bg = load double, ptr %i.d, align 8, !tbaa !12
  %i.bh = fmul double %i.bg, %i.c
  %i.bi = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !12
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bf, double %i.bk)
  %gep49 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store double %i.bl, ptr %gep49, align 8, !tbaa !12
  %i.bm = load double, ptr %i.bi, align 8, !tbaa !12
  %i.bn = load double, ptr %gep, align 8, !tbaa !12
  %i.bo = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.bp = insertelement <2 x double> %i.u, double %i.bn, i64 1
  %i.bq = fmul <2 x double> %i.bo, %i.bp          ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = extractelement <2 x double> %i.bq, i64 1
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bm, double %i.bs)
  %i.bu = getelementptr i8, ptr %gep49, i64 8
  store double %i.bt, ptr %i.bu, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %.not38, label %._crit_edge, label %scalar.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next46, %i.j
  br i1 %.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !120

._crit_edge43.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = distinct !{!14, !11}
!15 = !{!5, !5, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !11, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = distinct !{!25, !11, !22, !23}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !11, !22}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !27}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !11, !22, !23}
!40 = !{!"branch_weights", i32 4, i32 28}
!41 = distinct !{!41, !11, !22, !23}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !11, !22}
!44 = distinct !{!44, !11}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !11, !22, !23}
!51 = distinct !{!51, !11, !22, !23}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !11, !22}
!54 = distinct !{!54, !11}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = !{!61}
!61 = distinct !{!61, !57}
!62 = !{!63}
!63 = distinct !{!63, !57}
!64 = !{!63, !61}
!65 = distinct !{!65, !11, !22, !23}
!66 = distinct !{!66, !11, !22}
!67 = distinct !{!67, !11}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = !{!74}
!74 = distinct !{!74, !70}
!75 = !{!76}
!76 = distinct !{!76, !70}
!77 = !{!76, !74}
!78 = distinct !{!78, !11, !22, !23}
!79 = distinct !{!79, !11, !22}
!80 = distinct !{!80, !11}
!81 = !{!82}
!82 = distinct !{!82, !83}
!83 = distinct !{!83, !"LVerDomain"}
!84 = !{!85}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !11, !22, !23}
!87 = distinct !{!87, !11, !22, !23}
!88 = distinct !{!88, !27}
!89 = distinct !{!89, !11, !22}
end_hunk_1
