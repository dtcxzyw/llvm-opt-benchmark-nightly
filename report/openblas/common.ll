Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/common?download=true
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dtranspose:bb.a
  %i.f = mul i64 %i.e, %i.c
  %i.g = add i64 %i.f, %i.b
  %i.h = shl i64 %i.g, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.h
  %i.i = add nuw nsw i64 %i.d, %i.b
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr i8, ptr %3, i64 %i.j
  %scevgep28 = getelementptr i8, ptr %i.k, i64 -8
  %min.iters.check = icmp ugt i32 %0, 3
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond40 = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %5, %scevgep28
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %6, 0
  %i.l = or i1 %found.conflict, %stride.check
  %min.iters.check29 = icmp ult i32 %0, 16
  %i.m = and i64 %i.b, 12
  %n.vec = and i64 %i.b, 4294967280               ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  %n.vec33 = and i64 %i.b, 4294967292             ; 3 uses
  %broadcast.splatinsert34 = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat35 = shufflevector <4 x double> %broadcast.splatinsert34, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n39 = icmp eq i64 %n.vec33, %i.b
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.n = mul nsw i64 %indvars.iv22, %i.c
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %indvars.iv22 ; 11 uses
  %invariant.gep26 = getelementptr [8 x i8], ptr %5, i64 %i.n ; 11 uses
  %or.cond40.not = xor i1 %or.cond40, true
  %brmerge = select i1 %or.cond40.not, i1 true, i1 %i.l
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %i.q = getelementptr i8, ptr %i.o, i64 64
  %i.r = getelementptr i8, ptr %i.o, i64 96
  %wide.load = load <4 x double>, ptr %i.o, align 8, !tbaa !12, !alias.scope !53
  %wide.load30 = load <4 x double>, ptr %i.p, align 8, !tbaa !12, !alias.scope !53
  %wide.load31 = load <4 x double>, ptr %i.q, align 8, !tbaa !12, !alias.scope !53
  %wide.load32 = load <4 x double>, ptr %i.r, align 8, !tbaa !12, !alias.scope !53
  %i.s = fmul <4 x double> %broadcast.splat, %wide.load
  %i.t = fmul <4 x double> %broadcast.splat, %wide.load30
  %i.u = fmul <4 x double> %broadcast.splat, %wide.load31
  %i.v = fmul <4 x double> %broadcast.splat, %wide.load32
  %i.w = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %i.y = getelementptr i8, ptr %i.w, i64 64
  %i.z = getelementptr i8, ptr %i.w, i64 96
  store <4 x double> %i.s, ptr %i.w, align 8, !tbaa !12, !alias.scope !54, !noalias !53
  store <4 x double> %i.t, ptr %i.x, align 8, !tbaa !12, !alias.scope !54, !noalias !53
  store <4 x double> %i.u, ptr %i.y, align 8, !tbaa !12, !alias.scope !54, !noalias !53
  store <4 x double> %i.v, ptr %i.z, align 8, !tbaa !12, !alias.scope !54, !noalias !53
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %invariant.gep, i64 %index36
  %wide.load37 = load <4 x double>, ptr %i.ab, align 8, !tbaa !12, !alias.scope !53
  %i.ac = fmul <4 x double> %broadcast.splat35, %wide.load37
  %i.ad = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index36
  store <4 x double> %i.ac, ptr %i.ad, align 8, !tbaa !12, !alias.scope !54, !noalias !53
  %index.next38 = add nuw i64 %index36, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n39, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec33, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.af = sub nsw i64 %i.b, %indvars.iv.ph
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ag = mul nsw i64 %indvars.iv.prol, %i.a
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ag
  %i.ah = load double, ptr %gep.prol, align 8, !tbaa !12
  %i.ai = fmul double %2, %i.ah
  %gep27.prol = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.prol
  store double %i.ai, ptr %gep27.prol, align 8, !tbaa !12
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %i.b
  %i.ak = icmp ugt i64 %i.aj, -8
  br i1 %i.ak, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.al = mul nsw i64 %indvars.iv, %i.a
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.al
  %i.am = load double, ptr %gep, align 8, !tbaa !12
  %i.an = fmul double %2, %i.am
  %gep27 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv
  store double %i.an, ptr %gep27, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = mul nsw i64 %indvars.iv.next, %i.a
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ao
  %i.ap = load double, ptr %gep.1, align 8, !tbaa !12
  %i.aq = fmul double %2, %i.ap
  %gep27.1 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next
  store double %i.aq, ptr %gep27.1, align 8, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ar = mul nsw i64 %indvars.iv.next.1, %i.a
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ar
  %i.as = load double, ptr %gep.2, align 8, !tbaa !12
  %i.at = fmul double %2, %i.as
  %gep27.2 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.1
  store double %i.at, ptr %gep27.2, align 8, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.au = mul nsw i64 %indvars.iv.next.2, %i.a
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.au
  %i.av = load double, ptr %gep.3, align 8, !tbaa !12
  %i.aw = fmul double %2, %i.av
  %gep27.3 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.2
  store double %i.aw, ptr %gep27.3, align 8, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ax = mul nsw i64 %indvars.iv.next.3, %i.a
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ax
  %i.ay = load double, ptr %gep.4, align 8, !tbaa !12
  %i.az = fmul double %2, %i.ay
  %gep27.4 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.3
  store double %i.az, ptr %gep27.4, align 8, !tbaa !12
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.ba = mul nsw i64 %indvars.iv.next.4, %i.a
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ba
  %i.bb = load double, ptr %gep.5, align 8, !tbaa !12
  %i.bc = fmul double %2, %i.bb
  %gep27.5 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.4
  store double %i.bc, ptr %gep27.5, align 8, !tbaa !12
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bd = mul nsw i64 %indvars.iv.next.5, %i.a
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bd
  %i.be = load double, ptr %gep.6, align 8, !tbaa !12
  %i.bf = fmul double %2, %i.be
  %gep27.6 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.5
  store double %i.bf, ptr %gep27.6, align 8, !tbaa !12
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bg = mul nsw i64 %indvars.iv.next.6, %i.a
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load double, ptr %gep.7, align 8, !tbaa !12
  %i.bi = fmul double %2, %i.bh
  %gep27.7 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.6
  store double %i.bi, ptr %gep27.7, align 8, !tbaa !12
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not15.7 = icmp eq i64 %indvars.iv.next.7, %i.b
  br i1 %.not15.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next23, %i.d
  br i1 %.not, label %._crit_edge20.split, label %iter.check, !llvm.loop !52

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
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  br i1 %.not3839, label %._crit_edge43.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = fneg float %i.d
  %i.g = shl i32 %0, 1
  %i.h = sext i32 %i.b to i64                     ; 5 uses
  %i.i = zext i32 %i.g to i64                     ; 4 uses
  %i.j = sext i32 %i.a to i64                     ; 3 uses
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %i.l = add nsw i64 %i.i, -2                     ; 3 uses
  %i.m = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.n = shl nsw i64 %i.j, 2
  %i.o = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.p = mul nsw i64 %i.h, -4                     ; 2 uses
  %scevgep57 = getelementptr i8, ptr %2, i64 8
  %i.q = add nuw i64 %i.k, 9223372036854775806
  %i.r = lshr exact i64 %i.q, 1
  %i.s = mul i64 %i.r, %i.j
  %i.t = add nsw i64 %i.i, -2                     ; 2 uses
  %i.u = lshr exact i64 %i.t, 1
  %i.v = add i64 %i.s, %i.t
  %i.w = shl i64 %i.v, 2
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %scevgep58 = getelementptr i8, ptr %i.x, i64 8  ; 3 uses
  %i.y = mul i64 %i.u, %i.h
  %i.z = shl i64 %i.y, 2                          ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.f, i64 0 ; 2 uses
  %i.ab = insertelement <2 x float> %i.aa, float %i.d, i64 1
  %i.ac = getelementptr i8, ptr %3, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = getelementptr i8, ptr %3, i64 %i.z
  %i.af = add nsw i64 %i.i, -2                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 1
  %i.ah = add nuw i64 %i.ag, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 62
  %mul.result = shl nsw i64 %i.l, 2               ; 2 uses
  %mul.overflow = icmp ugt i64 %i.l, 4611686018427387902
  %i.ai = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.aj = select i1 %i.ai, i64 %i.p, i64 %i.o
  %mul50 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 %i.m) ; 2 uses
  %mul.result51 = extractvalue { i64, i1 } %mul50, 0 ; 2 uses
  %mul.overflow52 = extractvalue { i64, i1 } %mul50, 1
  %i.ak = sub i64 0, %mul.result51
  %i.al = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.am = select i1 %i.al, i64 %i.p, i64 %i.o
  %mul54 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.am, i64 %i.m) ; 2 uses
  %mul.result55 = extractvalue { i64, i1 } %mul54, 0 ; 2 uses
  %mul.overflow56 = extractvalue { i64, i1 } %mul54, 1
  %i.an = sub i64 0, %mul.result55
  %bound0 = icmp ult ptr %2, %scevgep58
  %bound1 = icmp ult ptr %5, %scevgep57
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.a, 0
  %i.ao = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.ap = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 3 uses
  %i.aq = shl i64 %indvar, 3                      ; 4 uses
  %scevgep59 = getelementptr i8, ptr %i.ad, i64 %i.aq ; 4 uses
  %i.ar = getelementptr i8, ptr %3, i64 %i.aq
  %scevgep60 = getelementptr i8, ptr %i.ar, i64 4 ; 4 uses
  %i.as = icmp ult ptr %scevgep59, %scevgep60
  %umin = select i1 %i.as, ptr %scevgep59, ptr %scevgep60
  %i.at = icmp ugt ptr %scevgep59, %scevgep60
  %umax = select i1 %i.at, ptr %scevgep59, ptr %scevgep60
  %scevgep61 = getelementptr i8, ptr %umax, i64 4
  %scevgep62 = getelementptr i8, ptr %3, i64 %i.aq ; 4 uses
  %scevgep63 = getelementptr i8, ptr %i.ae, i64 %i.aq ; 4 uses
  %i.au = icmp ult ptr %scevgep62, %scevgep63
  %umin64 = select i1 %i.au, ptr %scevgep62, ptr %scevgep63
  %i.av = icmp ugt ptr %scevgep62, %scevgep63
  %umax65 = select i1 %i.av, ptr %scevgep62, ptr %scevgep63
  %scevgep66 = getelementptr i8, ptr %umax65, i64 4
  %i.aw = lshr exact i64 %indvars.iv45, 1
  %i.ax = mul nsw i64 %i.aw, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %indvars.iv45 ; 6 uses
  %invariant.gep48 = getelementptr [4 x i8], ptr %5, i64 %i.ax ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ay = shl i64 %indvar, 3
  %i.az = getelementptr i8, ptr %3, i64 %i.ay
  %scevgep53 = getelementptr i8, ptr %i.az, i64 4 ; 4 uses
  %i.ba = mul i64 %i.n, %indvar
  %i.bb = getelementptr i8, ptr %5, i64 %i.ba
  %scevgep = getelementptr i8, ptr %i.bb, i64 4   ; 2 uses
  %i.bc = getelementptr i8, ptr %invariant.gep48, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %invariant.gep48
  %i.be = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bf = icmp ult ptr %i.be, %scevgep
  %i.bg = or i1 %i.bf, %mul.overflow
  %i.bh = getelementptr i8, ptr %invariant.gep, i64 %mul.result51
  %i.bi = getelementptr i8, ptr %invariant.gep, i64 %i.ak
  %i.bj = icmp ult ptr %i.bh, %invariant.gep
  %i.bk = icmp ugt ptr %i.bi, %invariant.gep
  %i.bl = select i1 %i.ai, i1 %i.bk, i1 %i.bj
  %i.bm = or i1 %i.bl, %mul.overflow52
  %i.bn = getelementptr i8, ptr %scevgep53, i64 %mul.result55
  %i.bo = getelementptr i8, ptr %scevgep53, i64 %i.an
  %i.bp = icmp ult ptr %i.bn, %scevgep53
  %i.bq = icmp ugt ptr %i.bo, %scevgep53
  %i.br = select i1 %i.al, i1 %i.bq, i1 %i.bp
  %i.bs = or i1 %i.br, %mul.overflow56
  %i.bt = or i1 %i.bd, %i.bg
  %i.bu = or i1 %i.bt, %i.bm
  %i.bv = or i1 %i.bu, %i.bs
  br i1 %i.bv, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound067 = icmp ult ptr %5, %scevgep61
  %bound168 = icmp ult ptr %umin, %scevgep58
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %i.ao, %found.conflict69
  %bound070 = icmp ult ptr %5, %scevgep66
  %bound171 = icmp ult ptr %umin64, %scevgep58
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  br i1 %conflict.rdx73, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bw = load <2 x float>, ptr %2, align 4, !tbaa !9, !alias.scope !63, !noalias !64 ; 3 uses
  %broadcast.splat79 = shufflevector <2 x float> %i.bw, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat77.a = shufflevector <2 x float> %i.bw, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %8 = fmul <2 x float> %i.bw, %i.ab              ; 2 uses
  %broadcast.splat77 = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat81 = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bx = lshr exact <8 x i64> %vec.ind, splat (i64 1)
  %i.by = mul nsw <8 x i64> %i.bx, %broadcast.splat
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep, <8 x i64> %i.by ; 2 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !9, !alias.scope !65 ; 2 uses
  %wide.gep74 = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather75 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep74, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !9, !alias.scope !66 ; 2 uses
  %i.bz = fmul <8 x float> %broadcast.splat77, %wide.masked.gather75
  %i.ca = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat79, <8 x float> %wide.masked.gather, <8 x float> %i.bz)
  %.idx = shl i64 %index, 3
  %i.cb = getelementptr i8, ptr %invariant.gep48, i64 %.idx
  %i.cc = fmul <8 x float> %broadcast.splat77.a, %wide.masked.gather
  %i.cd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat81, <8 x float> %wide.masked.gather75, <8 x float> %i.cc)
  %interleaved.vec = shufflevector <8 x float> %i.ca, <8 x float> %i.cd, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.cb, align 4, !tbaa !9, !alias.scope !64, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cf = load float, ptr %2, align 4, !tbaa !9
  %i.cg = lshr exact i64 %indvars.iv, 1
  %i.ch = mul nsw i64 %i.cg, %i.h
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ch ; 3 uses
  %i.ci = load float, ptr %gep, align 4, !tbaa !9
  %i.cj = load float, ptr %i.e, align 4, !tbaa !9
  %i.ck = fmul float %i.cj, %i.d
  %i.cl = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !9
  %i.cn = fmul float %i.ck, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ci, float %i.cn)
  %gep49 = getelementptr [4 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store float %i.co, ptr %gep49, align 4, !tbaa !9
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !9
  %i.cq = load float, ptr %gep, align 4, !tbaa !9
  %i.cr = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.cs = insertelement <2 x float> %i.aa, float %i.cq, i64 1
  %i.ct = fmul <2 x float> %i.cr, %i.cs           ; 2 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 0
  %i.cv = extractelement <2 x float> %i.ct, i64 1
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cp, float %i.cv)
  %i.cx = getelementptr i8, ptr %gep49, i64 4
  store float %i.cw, ptr %i.cx, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not38, label %._crit_edge, label %scalar.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next46, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !62

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
  %i.l = add nsw i64 %i.i, -2                     ; 3 uses
  %i.m = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.n = shl nsw i64 %i.j, 3
  %i.o = shl nsw i64 %i.h, 3                      ; 2 uses
  %i.p = mul nsw i64 %i.h, -8                     ; 2 uses
  %scevgep57 = getelementptr i8, ptr %2, i64 16
  %i.q = add nuw nsw i64 %i.k, 4611686018427387902
  %i.r = lshr exact i64 %i.q, 1
  %i.s = mul i64 %i.r, %i.j
  %i.t = add nsw i64 %i.i, -2                     ; 2 uses
  %i.u = lshr exact i64 %i.t, 1
  %i.v = add i64 %i.s, %i.t
  %i.w = shl i64 %i.v, 3
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %scevgep58 = getelementptr i8, ptr %i.x, i64 16 ; 3 uses
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
  %min.iters.check = icmp ult i64 %i.af, 54
  %mul.result = shl nsw i64 %i.l, 3               ; 2 uses
  %mul.overflow = icmp ugt i64 %i.l, 2305843009213693950
  %i.ai = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.aj = select i1 %i.ai, i64 %i.p, i64 %i.o
  %mul50 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 %i.m) ; 2 uses
  %mul.result51 = extractvalue { i64, i1 } %mul50, 0 ; 2 uses
  %mul.overflow52 = extractvalue { i64, i1 } %mul50, 1
  %i.ak = sub i64 0, %mul.result51
  %i.al = icmp slt i32 %i.b, 0                    ; 2 uses
  %i.am = select i1 %i.al, i64 %i.p, i64 %i.o
  %mul54 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.am, i64 %i.m) ; 2 uses
  %mul.result55 = extractvalue { i64, i1 } %mul54, 0 ; 2 uses
  %mul.overflow56 = extractvalue { i64, i1 } %mul54, 1
  %i.an = sub i64 0, %mul.result55
  %bound0 = icmp ult ptr %2, %scevgep58
  %bound1 = icmp ult ptr %5, %scevgep57
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.a, 0
  %i.ao = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.ap = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 3 uses
  %i.aq = shl i64 %indvar, 4                      ; 4 uses
  %scevgep59 = getelementptr i8, ptr %i.ad, i64 %i.aq ; 4 uses
  %i.ar = getelementptr i8, ptr %3, i64 %i.aq
  %scevgep60 = getelementptr i8, ptr %i.ar, i64 8 ; 4 uses
  %i.as = icmp ult ptr %scevgep59, %scevgep60
  %umin = select i1 %i.as, ptr %scevgep59, ptr %scevgep60
  %i.at = icmp ugt ptr %scevgep59, %scevgep60
  %umax = select i1 %i.at, ptr %scevgep59, ptr %scevgep60
  %scevgep61 = getelementptr i8, ptr %umax, i64 8
  %scevgep62 = getelementptr i8, ptr %3, i64 %i.aq ; 4 uses
  %scevgep63 = getelementptr i8, ptr %i.ae, i64 %i.aq ; 4 uses
  %i.au = icmp ult ptr %scevgep62, %scevgep63
  %umin64 = select i1 %i.au, ptr %scevgep62, ptr %scevgep63
  %i.av = icmp ugt ptr %scevgep62, %scevgep63
  %umax65 = select i1 %i.av, ptr %scevgep62, ptr %scevgep63
  %scevgep66 = getelementptr i8, ptr %umax65, i64 8
  %i.aw = lshr exact i64 %indvars.iv45, 1
  %i.ax = mul nsw i64 %i.aw, %i.j
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %indvars.iv45 ; 6 uses
  %invariant.gep48 = getelementptr [8 x i8], ptr %5, i64 %i.ax ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ay = shl i64 %indvar, 4
  %i.az = getelementptr i8, ptr %3, i64 %i.ay
  %scevgep53 = getelementptr i8, ptr %i.az, i64 8 ; 4 uses
  %i.ba = mul i64 %i.n, %indvar
  %i.bb = getelementptr i8, ptr %5, i64 %i.ba
  %scevgep = getelementptr i8, ptr %i.bb, i64 8   ; 2 uses
  %i.bc = getelementptr i8, ptr %invariant.gep48, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %invariant.gep48
  %i.be = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bf = icmp ult ptr %i.be, %scevgep
  %i.bg = or i1 %i.bf, %mul.overflow
  %i.bh = getelementptr i8, ptr %invariant.gep, i64 %mul.result51
  %i.bi = getelementptr i8, ptr %invariant.gep, i64 %i.ak
  %i.bj = icmp ult ptr %i.bh, %invariant.gep
  %i.bk = icmp ugt ptr %i.bi, %invariant.gep
  %i.bl = select i1 %i.ai, i1 %i.bk, i1 %i.bj
  %i.bm = or i1 %i.bl, %mul.overflow52
  %i.bn = getelementptr i8, ptr %scevgep53, i64 %mul.result55
  %i.bo = getelementptr i8, ptr %scevgep53, i64 %i.an
  %i.bp = icmp ult ptr %i.bn, %scevgep53
  %i.bq = icmp ugt ptr %i.bo, %scevgep53
  %i.br = select i1 %i.al, i1 %i.bq, i1 %i.bp
  %i.bs = or i1 %i.br, %mul.overflow56
  %i.bt = or i1 %i.bd, %i.bg
  %i.bu = or i1 %i.bt, %i.bm
  %i.bv = or i1 %i.bu, %i.bs
  br i1 %i.bv, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound067 = icmp ult ptr %5, %scevgep61
  %bound168 = icmp ult ptr %umin, %scevgep58
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %i.ao, %found.conflict69
  %bound070 = icmp ult ptr %5, %scevgep66
  %bound171 = icmp ult ptr %umin64, %scevgep58
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  br i1 %conflict.rdx73, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %8 = load <2 x double>, ptr %2, align 8, !tbaa !12, !alias.scope !76, !noalias !77 ; 3 uses
  %broadcast.splat79 = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat81 = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bw = fmul <2 x double> %8, %i.ab             ; 2 uses
  %broadcast.splat77 = shufflevector <2 x double> %i.bw, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat83 = shufflevector <2 x double> %i.bw, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bx = lshr exact <4 x i64> %vec.ind, splat (i64 1)
  %i.by = mul nsw <4 x i64> %i.bx, %broadcast.splat
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep, <4 x i64> %i.by ; 2 uses
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12, !alias.scope !78 ; 2 uses
  %wide.gep74 = getelementptr i8, <4 x ptr> %wide.gep, i64 8
  %wide.masked.gather75 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep74, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12, !alias.scope !79 ; 2 uses
  %i.bz = fmul <4 x double> %broadcast.splat77, %wide.masked.gather75
  %i.ca = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat79, <4 x double> %wide.masked.gather, <4 x double> %i.bz)
  %.idx = shl i64 %index, 4
  %i.cb = getelementptr i8, ptr %invariant.gep48, i64 %.idx
  %i.cc = fmul <4 x double> %broadcast.splat81, %wide.masked.gather
  %i.cd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat83, <4 x double> %wide.masked.gather75, <4 x double> %i.cc)
  %interleaved.vec = shufflevector <4 x double> %i.ca, <4 x double> %i.cd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.cb, align 8, !tbaa !12, !alias.scope !77, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cf = load double, ptr %2, align 8, !tbaa !12
  %i.cg = lshr exact i64 %indvars.iv, 1
  %i.ch = mul nsw i64 %i.cg, %i.h
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ch ; 3 uses
  %i.ci = load double, ptr %gep, align 8, !tbaa !12
  %i.cj = load double, ptr %i.e, align 8, !tbaa !12
  %i.ck = fmul double %i.cj, %i.d
  %i.cl = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !12
  %i.cn = fmul double %i.ck, %i.cm
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ci, double %i.cn)
  %gep49 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store double %i.co, ptr %gep49, align 8, !tbaa !12
  %i.cp = load double, ptr %i.cl, align 8, !tbaa !12
  %i.cq = load double, ptr %gep, align 8, !tbaa !12
  %i.cr = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.cs = insertelement <2 x double> %i.aa, double %i.cq, i64 1
  %i.ct = fmul <2 x double> %i.cr, %i.cs          ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0
  %i.cv = extractelement <2 x double> %i.ct, i64 1
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cp, double %i.cv)
  %i.cx = getelementptr i8, ptr %gep49, i64 8
  store double %i.cw, ptr %i.cx, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not38, label %._crit_edge, label %scalar.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next46, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !75

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
  %i.o = and i64 %i.a, 28
  %n.vec = and i64 %i.a, 4294967264               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  %n.vec34 = and i64 %i.a, 4294967292             ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n40 = icmp eq i64 %n.vec34, %i.a
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.p = mul nsw i64 %indvars.iv22, %i.b
  %i.q = mul nsw i64 %indvars.iv22, %i.c
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.p ; 11 uses
  %invariant.gep26 = getelementptr [4 x i8], ptr %5, i64 %i.q ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.n
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.r = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = getelementptr i8, ptr %i.r, i64 64
  %i.u = getelementptr i8, ptr %i.r, i64 96
  %wide.load = load <8 x float>, ptr %i.r, align 4, !tbaa !9, !alias.scope !89
  %wide.load31 = load <8 x float>, ptr %i.s, align 4, !tbaa !9, !alias.scope !89
  %wide.load32 = load <8 x float>, ptr %i.t, align 4, !tbaa !9, !alias.scope !89
  %wide.load33 = load <8 x float>, ptr %i.u, align 4, !tbaa !9, !alias.scope !89
  %i.v = fmul <8 x float> %broadcast.splat, %wide.load
  %i.w = fmul <8 x float> %broadcast.splat, %wide.load31
  %i.x = fmul <8 x float> %broadcast.splat, %wide.load32
  %i.y = fmul <8 x float> %broadcast.splat, %wide.load33
  %i.z = getelementptr [4 x i8], ptr %invariant.gep26, i64 %index ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = getelementptr i8, ptr %i.z, i64 64
  %i.ac = getelementptr i8, ptr %i.z, i64 96
  store <8 x float> %i.v, ptr %i.z, align 4, !tbaa !9, !alias.scope !90, !noalias !89
  store <8 x float> %i.w, ptr %i.aa, align 4, !tbaa !9, !alias.scope !90, !noalias !89
  store <8 x float> %i.x, ptr %i.ab, align 4, !tbaa !9, !alias.scope !90, !noalias !89
  store <8 x float> %i.y, ptr %i.ac, align 4, !tbaa !9, !alias.scope !90, !noalias !89
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %invariant.gep, i64 %index37
  %wide.load38 = load <4 x float>, ptr %i.ae, align 4, !tbaa !9, !alias.scope !89
  %i.af = fmul <4 x float> %broadcast.splat36, %wide.load38
  %i.ag = getelementptr [4 x i8], ptr %invariant.gep26, i64 %index37
  store <4 x float> %i.af, ptr %i.ag, align 4, !tbaa !9, !alias.scope !90, !noalias !89
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n40, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec34, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.ai = sub nsw i64 %i.a, %indvars.iv.ph
  %xtraiter = and i64 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.aj = load float, ptr %gep.prol, align 4, !tbaa !9
  %i.ak = fmul float %2, %i.aj
  %gep27.prol = getelementptr [4 x i8], ptr %invariant.gep26, i64 %indvars.iv.prol
  store float %i.ak, ptr %gep27.prol, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !86

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv.ph, %i.a
end_hunk_0
begin_hunk_1_@my_dcopy:bb.a
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
  %i.o = and i64 %i.a, 12
  %n.vec = and i64 %i.a, 4294967280               ; 4 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  %n.vec34 = and i64 %i.a, 4294967292             ; 3 uses
  %broadcast.splatinsert35 = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat36 = shufflevector <4 x double> %broadcast.splatinsert35, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n40 = icmp eq i64 %n.vec34, %i.a
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 3 uses
  %i.p = mul nsw i64 %indvars.iv22, %i.b
  %i.q = mul nsw i64 %indvars.iv22, %i.c
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.p ; 11 uses
  %invariant.gep26 = getelementptr [8 x i8], ptr %5, i64 %i.q ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.n
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = getelementptr i8, ptr %i.r, i64 64
  %i.u = getelementptr i8, ptr %i.r, i64 96
  %wide.load = load <4 x double>, ptr %i.r, align 8, !tbaa !12, !alias.scope !99
  %wide.load31 = load <4 x double>, ptr %i.s, align 8, !tbaa !12, !alias.scope !99
  %wide.load32 = load <4 x double>, ptr %i.t, align 8, !tbaa !12, !alias.scope !99
  %wide.load33 = load <4 x double>, ptr %i.u, align 8, !tbaa !12, !alias.scope !99
  %i.v = fmul <4 x double> %broadcast.splat, %wide.load
  %i.w = fmul <4 x double> %broadcast.splat, %wide.load31
  %i.x = fmul <4 x double> %broadcast.splat, %wide.load32
  %i.y = fmul <4 x double> %broadcast.splat, %wide.load33
  %i.z = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = getelementptr i8, ptr %i.z, i64 64
  %i.ac = getelementptr i8, ptr %i.z, i64 96
  store <4 x double> %i.v, ptr %i.z, align 8, !tbaa !12, !alias.scope !100, !noalias !99
  store <4 x double> %i.w, ptr %i.aa, align 8, !tbaa !12, !alias.scope !100, !noalias !99
  store <4 x double> %i.x, ptr %i.ab, align 8, !tbaa !12, !alias.scope !100, !noalias !99
  store <4 x double> %i.y, ptr %i.ac, align 8, !tbaa !12, !alias.scope !100, !noalias !99
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %invariant.gep, i64 %index37
  %wide.load38 = load <4 x double>, ptr %i.ae, align 8, !tbaa !12, !alias.scope !99
  %i.af = fmul <4 x double> %broadcast.splat36, %wide.load38
  %i.ag = getelementptr [8 x i8], ptr %invariant.gep26, i64 %index37
  store <4 x double> %i.af, ptr %i.ag, align 8, !tbaa !12, !alias.scope !100, !noalias !99
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n40, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec34, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.ai = sub nsw i64 %i.a, %indvars.iv.ph
  %xtraiter = and i64 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.aj = load double, ptr %gep.prol, align 8, !tbaa !12
  %i.ak = fmul double %2, %i.aj
  %gep27.prol = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.prol
  store double %i.ak, ptr %gep27.prol, align 8, !tbaa !12
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !96

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv.ph, %i.a
  %i.am = icmp ugt i64 %i.al, -8
  br i1 %i.am, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.an = load double, ptr %gep, align 8, !tbaa !12
  %i.ao = fmul double %2, %i.an
  %gep27 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv
  store double %i.ao, ptr %gep27, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ap = load double, ptr %gep.1, align 8, !tbaa !12
  %i.aq = fmul double %2, %i.ap
  %gep27.1 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next
  store double %i.aq, ptr %gep27.1, align 8, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ar = load double, ptr %gep.2, align 8, !tbaa !12
  %i.as = fmul double %2, %i.ar
  %gep27.2 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.1
  store double %i.as, ptr %gep27.2, align 8, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.at = load double, ptr %gep.3, align 8, !tbaa !12
  %i.au = fmul double %2, %i.at
  %gep27.3 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.2
  store double %i.au, ptr %gep27.3, align 8, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.av = load double, ptr %gep.4, align 8, !tbaa !12
  %i.aw = fmul double %2, %i.av
  %gep27.4 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.3
  store double %i.aw, ptr %gep27.4, align 8, !tbaa !12
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.ax = load double, ptr %gep.5, align 8, !tbaa !12
  %i.ay = fmul double %2, %i.ax
  %gep27.5 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.4
  store double %i.ay, ptr %gep27.5, align 8, !tbaa !12
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.az = load double, ptr %gep.6, align 8, !tbaa !12
  %i.ba = fmul double %2, %i.az
  %gep27.6 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.5
  store double %i.ba, ptr %gep27.6, align 8, !tbaa !12
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bb = load double, ptr %gep.7, align 8, !tbaa !12
  %i.bc = fmul double %2, %i.bb
  %gep27.7 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.6
  store double %i.bc, ptr %gep27.7, align 8, !tbaa !12
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not15.7 = icmp eq i64 %indvars.iv.next.7, %i.a
  br i1 %.not15.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next23, %i.d
  br i1 %.not, label %._crit_edge20.split, label %iter.check, !llvm.loop !98

._crit_edge20.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @my_ccopy(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %6, 1                            ; 2 uses
  %i.b = shl i32 %4, 1                            ; 2 uses
  %.not41 = icmp eq i32 %0, 0
  br i1 %.not41, label %._crit_edge43.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not3839 = icmp eq i32 %1, 0
  %i.c = sitofp i32 %7 to float                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  br i1 %.not3839, label %._crit_edge43.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.e = fneg float %i.c
  %i.f = shl i32 %1, 1
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = sext i32 %i.b to i64                     ; 3 uses
  %i.i = sext i32 %i.a to i64                     ; 3 uses
  %i.j = zext i32 %0 to i64                       ; 2 uses
  %i.k = add nsw i64 %i.g, -2                     ; 2 uses
  %i.l = shl nsw i64 %i.i, 2
  %i.m = shl nsw i64 %i.h, 2
  %scevgep51 = getelementptr i8, ptr %2, i64 8
  %i.n = add nsw i64 %i.j, -1                     ; 2 uses
  %i.o = mul i64 %i.n, %i.i
  %i.p = add i64 %i.o, %i.g
  %i.q = shl i64 %i.p, 2
  %scevgep52 = getelementptr i8, ptr %5, i64 %i.q ; 2 uses
  %i.r = mul i64 %i.n, %i.h
  %i.s = add i64 %i.r, %i.g
  %i.t = shl i64 %i.s, 2
  %scevgep53 = getelementptr i8, ptr %3, i64 %i.t
  %i.u = insertelement <2 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.v = insertelement <2 x float> %i.u, float %i.c, i64 1
  %i.w = add nsw i64 %i.g, -2                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 1
  %i.y = add nuw i64 %i.x, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 30
  %mul.result = shl nsw i64 %i.k, 2               ; 4 uses
  %mul.overflow = icmp ugt i64 %i.k, 4611686018427387902
  %bound0 = icmp ult ptr %2, %scevgep52
  %bound1 = icmp ult ptr %5, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.a, 0
  %i.z = or i1 %found.conflict, %stride.check
  %bound054 = icmp ult ptr %5, %scevgep53
  %bound155 = icmp ult ptr %3, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i32 %i.b, 0
  %i.aa = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.z, %i.aa
  %n.vec = and i64 %i.y, -8                       ; 3 uses
  %i.ab = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 5 uses
  %i.ac = mul nsw i64 %indvars.iv45, %i.h
  %i.ad = mul nsw i64 %indvars.iv45, %i.i
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.ac ; 4 uses
  %invariant.gep48 = getelementptr [4 x i8], ptr %5, i64 %i.ad ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ae = mul i64 %i.m, %indvars.iv45
  %i.af = getelementptr i8, ptr %3, i64 %i.ae
  %scevgep50 = getelementptr i8, ptr %i.af, i64 4 ; 2 uses
  %i.ag = mul i64 %i.l, %indvars.iv45
  %i.ah = getelementptr i8, ptr %5, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 4   ; 2 uses
  %i.ai = getelementptr i8, ptr %invariant.gep48, i64 %mul.result
  %i.aj = icmp ult ptr %i.ai, %invariant.gep48
  %i.ak = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.al = icmp ult ptr %i.ak, %scevgep
  %i.am = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.an = icmp ult ptr %i.am, %invariant.gep
  %i.ao = or i1 %i.an, %mul.overflow
  %i.ap = getelementptr i8, ptr %scevgep50, i64 %mul.result
  %i.aq = icmp ult ptr %i.ap, %scevgep50
  %i.ar = or i1 %i.al, %i.aj
  %i.as = or i1 %i.ar, %i.ao
  %i.at = or i1 %i.aq, %i.as
  %brmerge = select i1 %i.at, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.au = load <2 x float>, ptr %2, align 4, !tbaa !9, !alias.scope !108, !noalias !109 ; 3 uses
  %broadcast.splat60 = shufflevector <2 x float> %i.au, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat.a = shufflevector <2 x float> %i.au, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %8 = fmul <2 x float> %i.au, %i.v               ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat65 = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl nuw i64 %index, 1                   ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.av
  %wide.vec = load <16 x float>, ptr %i.aw, align 4, !tbaa !9, !alias.scope !110 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec58 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ax = fmul <8 x float> %broadcast.splat, %strided.vec58
  %i.ay = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat60, <8 x float> %strided.vec, <8 x float> %i.ax)
  %i.az = getelementptr [4 x i8], ptr %invariant.gep48, i64 %i.av
  %strided.vec62 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec63 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ba = fmul <8 x float> %broadcast.splat.a, %strided.vec62
  %i.bb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat65, <8 x float> %strided.vec63, <8 x float> %i.ba)
  %interleaved.vec = shufflevector <8 x float> %i.ay, <8 x float> %i.bb, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.az, align 4, !tbaa !9, !alias.scope !109, !noalias !110
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ab, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bd = load float, ptr %2, align 4, !tbaa !9
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.be = load float, ptr %gep, align 4, !tbaa !9
  %i.bf = load float, ptr %i.d, align 4, !tbaa !9
  %i.bg = fmul float %i.bf, %i.c
  %i.bh = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !9
  %i.bj = fmul float %i.bg, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.be, float %i.bj)
  %gep49 = getelementptr [4 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store float %i.bk, ptr %gep49, align 4, !tbaa !9
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !9
  %i.bm = load float, ptr %gep, align 4, !tbaa !9
  %i.bn = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.bo = insertelement <2 x float> %i.u, float %i.bm, i64 1
  %i.bp = fmul <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = extractelement <2 x float> %i.bp, i64 1
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bl, float %i.br)
  %i.bt = getelementptr i8, ptr %gep49, i64 4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %.not38, label %._crit_edge, label %scalar.ph, !llvm.loop !106

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next46, %i.j
  br i1 %.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !107

._crit_edge43.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @my_zcopy(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %6, 1                            ; 2 uses
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
  %i.k = add nsw i64 %i.g, -2                     ; 2 uses
  %i.l = shl nsw i64 %i.i, 3
  %i.m = shl nsw i64 %i.h, 3
  %scevgep51 = getelementptr i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1                     ; 2 uses
  %i.o = mul i64 %i.n, %i.i
  %i.p = add i64 %i.o, %i.g
  %i.q = shl i64 %i.p, 3
  %scevgep52 = getelementptr i8, ptr %5, i64 %i.q ; 2 uses
  %i.r = mul i64 %i.n, %i.h
  %i.s = add i64 %i.r, %i.g
  %i.t = shl i64 %i.s, 3
  %scevgep53 = getelementptr i8, ptr %3, i64 %i.t
  %i.u = insertelement <2 x double> poison, double %i.e, i64 0 ; 2 uses
  %i.v = insertelement <2 x double> %i.u, double %i.c, i64 1
  %i.w = add nsw i64 %i.g, -2                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 1
  %i.y = add nuw i64 %i.x, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 30
  %mul.result = shl nsw i64 %i.k, 3               ; 4 uses
  %mul.overflow = icmp ugt i64 %i.k, 2305843009213693950
  %bound0 = icmp ult ptr %2, %scevgep52
  %bound1 = icmp ult ptr %5, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.a, 0
  %i.z = or i1 %found.conflict, %stride.check
  %bound054 = icmp ult ptr %5, %scevgep53
  %bound155 = icmp ult ptr %3, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %stride.check57 = icmp slt i32 %i.b, 0
  %i.aa = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.z, %i.aa
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.ab = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 5 uses
  %i.ac = mul nsw i64 %indvars.iv45, %i.h
  %i.ad = mul nsw i64 %indvars.iv45, %i.i
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.ac ; 4 uses
  %invariant.gep48 = getelementptr [8 x i8], ptr %5, i64 %i.ad ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ae = mul i64 %i.m, %indvars.iv45
  %i.af = getelementptr i8, ptr %3, i64 %i.ae
  %scevgep50 = getelementptr i8, ptr %i.af, i64 8 ; 2 uses
  %i.ag = mul i64 %i.l, %indvars.iv45
  %i.ah = getelementptr i8, ptr %5, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 8   ; 2 uses
  %i.ai = getelementptr i8, ptr %invariant.gep48, i64 %mul.result
  %i.aj = icmp ult ptr %i.ai, %invariant.gep48
  %i.ak = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.al = icmp ult ptr %i.ak, %scevgep
  %i.am = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.an = icmp ult ptr %i.am, %invariant.gep
  %i.ao = or i1 %i.an, %mul.overflow
  %i.ap = getelementptr i8, ptr %scevgep50, i64 %mul.result
  %i.aq = icmp ult ptr %i.ap, %scevgep50
  %i.ar = or i1 %i.al, %i.aj
  %i.as = or i1 %i.ar, %i.ao
  %i.at = or i1 %i.aq, %i.as
  %brmerge = select i1 %i.at, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %8 = load <2 x double>, ptr %2, align 8, !tbaa !12, !alias.scope !118, !noalias !119 ; 3 uses
  %broadcast.splat60 = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat65 = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.au = fmul <2 x double> %8, %i.v              ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat67 = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl nuw i64 %index, 1                   ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.av
  %wide.vec = load <8 x double>, ptr %i.aw, align 8, !tbaa !12, !alias.scope !120 ; 4 uses
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec58 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ax = fmul <4 x double> %broadcast.splat, %strided.vec58
  %i.ay = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat60, <4 x double> %strided.vec, <4 x double> %i.ax)
  %i.az = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.av
  %strided.vec62 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec63 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fmul <4 x double> %broadcast.splat65, %strided.vec62
  %i.bb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat67, <4 x double> %strided.vec63, <4 x double> %i.ba)
  %interleaved.vec = shufflevector <4 x double> %i.ay, <4 x double> %i.bb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.az, align 8, !tbaa !12, !alias.scope !119, !noalias !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ab, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bd = load double, ptr %2, align 8, !tbaa !12
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.be = load double, ptr %gep, align 8, !tbaa !12
  %i.bf = load double, ptr %i.d, align 8, !tbaa !12
  %i.bg = fmul double %i.bf, %i.c
  %i.bh = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !12
  %i.bj = fmul double %i.bg, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.be, double %i.bj)
  %gep49 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store double %i.bk, ptr %gep49, align 8, !tbaa !12
  %i.bl = load double, ptr %i.bh, align 8, !tbaa !12
  %i.bm = load double, ptr %gep, align 8, !tbaa !12
  %i.bn = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.bo = insertelement <2 x double> %i.u, double %i.bm, i64 1
  %i.bp = fmul <2 x double> %i.bn, %i.bo          ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = extractelement <2 x double> %i.bp, i64 1
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bl, double %i.br)
  %i.bt = getelementptr i8, ptr %gep49, i64 8
  store double %i.bs, ptr %i.bt, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %.not38, label %._crit_edge, label %scalar.ph, !llvm.loop !116

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next46, %i.j
  br i1 %.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !117

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"double", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, i1 false, !"LVerDomain"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !10, !13, !14}
!24 = distinct !{!24, !10, !13, !14}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !10, !13}
!27 = distinct !{!27, !10}
!28 = !{!5, !5, i64 0}
!29 = !{!21}
!30 = !{!22}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, i1 false, !"LVerDomain"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !10, !13, !14}
!39 = distinct !{!39, !10, !13, !14}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !10, !13}
!42 = distinct !{!42, !10}
!43 = !{!36}
!44 = !{!37}
!45 = distinct !{!45, i1 false, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !10, !13, !14}
!49 = distinct !{!49, !10, !13, !14}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !10, !13}
!52 = distinct !{!52, !10}
!53 = !{!46}
!54 = !{!47}
!55 = distinct !{!55, i1 false, !"LVerDomain"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !55}
!59 = distinct !{!59, !55}
!60 = distinct !{!60, !10, !13, !14}
!61 = distinct !{!61, !10, !13}
!62 = distinct !{!62, !10}
!63 = !{!56}
!64 = !{!57}
!65 = !{!58}
!66 = !{!59}
!67 = !{!59, !58}
!68 = distinct !{!68, i1 false, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !68}
!73 = distinct !{!73, !10, !13, !14}
!74 = distinct !{!74, !10, !13}
!75 = distinct !{!75, !10}
!76 = !{!69}
!77 = !{!70}
!78 = !{!71}
!79 = !{!72}
!80 = !{!72, !71}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !10, !13, !14}
!85 = distinct !{!85, !10, !13, !14}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !10, !13}
!88 = distinct !{!88, !10}
!89 = !{!82}
!90 = !{!83}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !10, !13, !14}
!95 = distinct !{!95, !10, !13, !14}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !10, !13}
!98 = distinct !{!98, !10}
!99 = !{!92}
!100 = !{!93}
!101 = distinct !{!101, i1 false, !"LVerDomain"}
!102 = distinct !{!102, !101}
end_hunk_1
