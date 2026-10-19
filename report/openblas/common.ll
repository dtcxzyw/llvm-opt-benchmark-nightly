Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/common?download=true
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dtranspose:bb.a
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
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
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
  %stride.check70 = icmp slt i32 %i.a, 0
  %invariant.op = or i1 %stride.check70, %found.conflict
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
  %scevgep59 = getelementptr i8, ptr %i.ad, i64 %i.ap ; 4 uses
  %i.aq = getelementptr i8, ptr %3, i64 %i.ap
  %scevgep60 = getelementptr i8, ptr %i.aq, i64 4 ; 4 uses
  %i.ar = icmp ult ptr %scevgep59, %scevgep60
  %umin = select i1 %i.ar, ptr %scevgep59, ptr %scevgep60
  %i.as = icmp ugt ptr %scevgep59, %scevgep60
  %umax = select i1 %i.as, ptr %scevgep59, ptr %scevgep60
  %scevgep61 = getelementptr i8, ptr %umax, i64 4
  %scevgep62 = getelementptr i8, ptr %3, i64 %i.ap ; 4 uses
  %scevgep63 = getelementptr i8, ptr %i.ae, i64 %i.ap ; 4 uses
  %i.at = icmp ult ptr %scevgep62, %scevgep63
  %umin64 = select i1 %i.at, ptr %scevgep62, ptr %scevgep63
  %i.au = icmp ugt ptr %scevgep62, %scevgep63
  %umax65 = select i1 %i.au, ptr %scevgep62, ptr %scevgep63
  %scevgep66 = getelementptr i8, ptr %umax65, i64 4
  %i.av = lshr exact i64 %indvars.iv45, 1
  %i.aw = mul nsw i64 %i.av, %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %indvars.iv45 ; 6 uses
  %invariant.gep48 = getelementptr [4 x i8], ptr %5, i64 %i.aw ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ax = shl i64 %indvar, 3
  %i.ay = getelementptr i8, ptr %3, i64 %i.ax
  %scevgep53 = getelementptr i8, ptr %i.ay, i64 4 ; 4 uses
  %i.az = mul i64 %i.n, %indvar
  %i.ba = getelementptr i8, ptr %5, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 4   ; 2 uses
  %i.bb = getelementptr i8, ptr %invariant.gep48, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %invariant.gep48
  %i.bd = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %scevgep
  %i.bf = or i1 %i.be, %mul.overflow
  %i.bg = getelementptr i8, ptr %invariant.gep, i64 %mul.result51
  %i.bh = getelementptr i8, ptr %invariant.gep, i64 %i.ak
  %i.bi = icmp ult ptr %i.bg, %invariant.gep
  %i.bj = icmp ugt ptr %i.bh, %invariant.gep
  %i.bk = select i1 %i.ai, i1 %i.bj, i1 %i.bi
  %i.bl = or i1 %i.bk, %mul.overflow52
  %i.bm = getelementptr i8, ptr %scevgep53, i64 %mul.result55
  %i.bn = getelementptr i8, ptr %scevgep53, i64 %i.an
  %i.bo = icmp ult ptr %i.bm, %scevgep53
  %i.bp = icmp ugt ptr %i.bn, %scevgep53
  %i.bq = select i1 %i.al, i1 %i.bp, i1 %i.bo
  %i.br = or i1 %i.bq, %mul.overflow56
  %i.bs = or i1 %i.bc, %i.bf
  %i.bt = or i1 %i.bs, %i.bl
  %i.bu = or i1 %i.bt, %i.br
  br i1 %i.bu, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound067 = icmp ult ptr %5, %scevgep61
  %bound168 = icmp ult ptr %umin, %scevgep58
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx.reass = or i1 %found.conflict69, %invariant.op
  %bound071 = icmp ult ptr %5, %scevgep66
  %bound172 = icmp ult ptr %umin64, %scevgep58
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx75 = or i1 %found.conflict73, %conflict.rdx.reass
  br i1 %conflict.rdx75, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bv = load float, ptr %2, align 4, !tbaa !9, !alias.scope !63, !noalias !64
  %broadcast.splatinsert80.a = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat81.a = shufflevector <8 x float> %broadcast.splatinsert80.a, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bw = load <2 x float>, ptr %2, align 4, !tbaa !9, !alias.scope !63, !noalias !64
  %i.bx = fmul <2 x float> %i.bw, %i.ab           ; 2 uses
  %broadcast.splat79 = shufflevector <2 x float> %i.bx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat85 = shufflevector <2 x float> %i.bx, <2 x float> poison, <8 x i32> zeroinitializer
  %i.by = load float, ptr %i.e, align 4, !tbaa !9, !alias.scope !63, !noalias !64
  %broadcast.splatinsert82 = insertelement <8 x float> poison, float %i.by, i64 0
  %broadcast.splat83 = shufflevector <8 x float> %broadcast.splatinsert82, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bz = lshr exact <8 x i64> %vec.ind, splat (i64 1)
  %i.ca = mul nsw <8 x i64> %i.bz, %broadcast.splat
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep, <8 x i64> %i.ca ; 2 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !9, !alias.scope !65 ; 2 uses
  %wide.gep76 = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather77 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep76, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !9, !alias.scope !66 ; 2 uses
  %i.cb = fmul <8 x float> %broadcast.splat79, %wide.masked.gather77
  %i.cc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat81.a, <8 x float> %wide.masked.gather, <8 x float> %i.cb)
  %.idx = shl i64 %index, 3
  %i.cd = getelementptr i8, ptr %invariant.gep48, i64 %.idx
  %i.ce = fmul <8 x float> %broadcast.splat83, %wide.masked.gather
  %i.cf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat85, <8 x float> %wide.masked.gather77, <8 x float> %i.ce)
  %interleaved.vec = shufflevector <8 x float> %i.cc, <8 x float> %i.cf, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.cd, align 4, !tbaa !9, !alias.scope !64, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ch = load float, ptr %2, align 4, !tbaa !9
  %i.ci = lshr exact i64 %indvars.iv, 1
  %i.cj = mul nsw i64 %i.ci, %i.h
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cj ; 3 uses
  %i.ck = load float, ptr %gep, align 4, !tbaa !9
  %i.cl = load float, ptr %i.e, align 4, !tbaa !9
  %i.cm = fmul float %i.cl, %i.d
  %i.cn = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9
  %i.cp = fmul float %i.cm, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ck, float %i.cp)
  %gep49 = getelementptr [4 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store float %i.cq, ptr %gep49, align 4, !tbaa !9
  %i.cr = load float, ptr %i.cn, align 4, !tbaa !9
  %i.cs = load float, ptr %gep, align 4, !tbaa !9
  %i.ct = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.cu = insertelement <2 x float> %i.aa, float %i.cs, i64 1
  %i.cv = fmul <2 x float> %i.ct, %i.cu           ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = extractelement <2 x float> %i.cv, i64 1
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cr, float %i.cx)
  %i.cz = getelementptr i8, ptr %gep49, i64 4
  store float %i.cy, ptr %i.cz, align 4, !tbaa !9
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
  %stride.check70 = icmp slt i32 %i.a, 0
  %invariant.op = or i1 %stride.check70, %found.conflict
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
  %scevgep59 = getelementptr i8, ptr %i.ad, i64 %i.ap ; 4 uses
  %i.aq = getelementptr i8, ptr %3, i64 %i.ap
  %scevgep60 = getelementptr i8, ptr %i.aq, i64 8 ; 4 uses
  %i.ar = icmp ult ptr %scevgep59, %scevgep60
  %umin = select i1 %i.ar, ptr %scevgep59, ptr %scevgep60
  %i.as = icmp ugt ptr %scevgep59, %scevgep60
  %umax = select i1 %i.as, ptr %scevgep59, ptr %scevgep60
  %scevgep61 = getelementptr i8, ptr %umax, i64 8
  %scevgep62 = getelementptr i8, ptr %3, i64 %i.ap ; 4 uses
  %scevgep63 = getelementptr i8, ptr %i.ae, i64 %i.ap ; 4 uses
  %i.at = icmp ult ptr %scevgep62, %scevgep63
  %umin64 = select i1 %i.at, ptr %scevgep62, ptr %scevgep63
  %i.au = icmp ugt ptr %scevgep62, %scevgep63
  %umax65 = select i1 %i.au, ptr %scevgep62, ptr %scevgep63
  %scevgep66 = getelementptr i8, ptr %umax65, i64 8
  %i.av = lshr exact i64 %indvars.iv45, 1
  %i.aw = mul nsw i64 %i.av, %i.j
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %indvars.iv45 ; 6 uses
  %invariant.gep48 = getelementptr [8 x i8], ptr %5, i64 %i.aw ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ax = shl i64 %indvar, 4
  %i.ay = getelementptr i8, ptr %3, i64 %i.ax
  %scevgep53 = getelementptr i8, ptr %i.ay, i64 8 ; 4 uses
  %i.az = mul i64 %i.n, %indvar
  %i.ba = getelementptr i8, ptr %5, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 8   ; 2 uses
  %i.bb = getelementptr i8, ptr %invariant.gep48, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %invariant.gep48
  %i.bd = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %scevgep
  %i.bf = or i1 %i.be, %mul.overflow
  %i.bg = getelementptr i8, ptr %invariant.gep, i64 %mul.result51
  %i.bh = getelementptr i8, ptr %invariant.gep, i64 %i.ak
  %i.bi = icmp ult ptr %i.bg, %invariant.gep
  %i.bj = icmp ugt ptr %i.bh, %invariant.gep
  %i.bk = select i1 %i.ai, i1 %i.bj, i1 %i.bi
  %i.bl = or i1 %i.bk, %mul.overflow52
  %i.bm = getelementptr i8, ptr %scevgep53, i64 %mul.result55
  %i.bn = getelementptr i8, ptr %scevgep53, i64 %i.an
  %i.bo = icmp ult ptr %i.bm, %scevgep53
  %i.bp = icmp ugt ptr %i.bn, %scevgep53
  %i.bq = select i1 %i.al, i1 %i.bp, i1 %i.bo
  %i.br = or i1 %i.bq, %mul.overflow56
  %i.bs = or i1 %i.bc, %i.bf
  %i.bt = or i1 %i.bs, %i.bl
  %i.bu = or i1 %i.bt, %i.br
  br i1 %i.bu, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound067 = icmp ult ptr %5, %scevgep61
  %bound168 = icmp ult ptr %umin, %scevgep58
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx.reass = or i1 %found.conflict69, %invariant.op
  %bound071 = icmp ult ptr %5, %scevgep66
  %bound172 = icmp ult ptr %umin64, %scevgep58
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx75 = or i1 %found.conflict73, %conflict.rdx.reass
  br i1 %conflict.rdx75, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bv = load double, ptr %2, align 8, !tbaa !12, !alias.scope !76, !noalias !77
  %broadcast.splatinsert80 = insertelement <4 x double> poison, double %i.bv, i64 0
  %broadcast.splat81.a = shufflevector <4 x double> %broadcast.splatinsert80, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bw = load <2 x double>, ptr %2, align 8, !tbaa !12, !alias.scope !76, !noalias !77 ; 2 uses
  %i.bx = fmul <2 x double> %i.bw, %i.ab          ; 2 uses
  %broadcast.splat79 = shufflevector <2 x double> %i.bx, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat85 = shufflevector <2 x double> %i.bx, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat83 = shufflevector <2 x double> %i.bw, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.by = lshr exact <4 x i64> %vec.ind, splat (i64 1)
  %i.bz = mul nsw <4 x i64> %i.by, %broadcast.splat
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep, <4 x i64> %i.bz ; 2 uses
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12, !alias.scope !78 ; 2 uses
  %wide.gep76 = getelementptr i8, <4 x ptr> %wide.gep, i64 8
  %wide.masked.gather77 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep76, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !12, !alias.scope !79 ; 2 uses
  %i.ca = fmul <4 x double> %broadcast.splat79, %wide.masked.gather77
  %i.cb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat81.a, <4 x double> %wide.masked.gather, <4 x double> %i.ca)
  %.idx = shl i64 %index, 4
  %i.cc = getelementptr i8, ptr %invariant.gep48, i64 %.idx
  %i.cd = fmul <4 x double> %broadcast.splat83, %wide.masked.gather
  %i.ce = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat85, <4 x double> %wide.masked.gather77, <4 x double> %i.cd)
  %interleaved.vec = shufflevector <4 x double> %i.cb, <4 x double> %i.ce, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.cc, align 8, !tbaa !12, !alias.scope !77, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !73

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
end_hunk_0
begin_hunk_1_@my_scopy:bb.a

._crit_edge20.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @my_dcopy(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #4 {
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
  %i.a = shl i32 %6, 1                            ; 3 uses
  %i.b = shl i32 %4, 1                            ; 2 uses
  %.not41 = icmp eq i32 %0, 0
  br i1 %.not41, label %._crit_edge43.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not3839 = icmp eq i32 %1, 0
  %i.c = sitofp i32 %7 to float                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
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
  %8 = or i32 %i.b, %i.a
  %i.aa = icmp slt i32 %8, 0
  %i.ab = or i1 %found.conflict56, %i.aa
  %conflict.rdx = or i1 %i.z, %i.ab
  %n.vec = and i64 %i.y, -8                       ; 3 uses
  %i.ac = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 5 uses
  %i.ad = mul nsw i64 %indvars.iv45, %i.h
  %i.ae = mul nsw i64 %indvars.iv45, %i.i
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.ad ; 4 uses
  %invariant.gep48 = getelementptr [4 x i8], ptr %5, i64 %i.ae ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.af = mul i64 %i.m, %indvars.iv45
  %i.ag = getelementptr i8, ptr %3, i64 %i.af
  %scevgep50 = getelementptr i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ah = mul i64 %i.l, %indvars.iv45
  %i.ai = getelementptr i8, ptr %5, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 4   ; 2 uses
  %i.aj = getelementptr i8, ptr %invariant.gep48, i64 %mul.result
  %i.ak = icmp ult ptr %i.aj, %invariant.gep48
  %i.al = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.am = icmp ult ptr %i.al, %scevgep
  %i.an = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.ao = icmp ult ptr %i.an, %invariant.gep
  %i.ap = or i1 %i.ao, %mul.overflow
  %i.aq = getelementptr i8, ptr %scevgep50, i64 %mul.result
  %i.ar = icmp ult ptr %i.aq, %scevgep50
  %i.as = or i1 %i.am, %i.ak
  %i.at = or i1 %i.as, %i.ap
  %i.au = or i1 %i.ar, %i.at
  %brmerge = select i1 %i.au, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.av = load float, ptr %2, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  %broadcast.splatinsert60 = insertelement <8 x float> poison, float %i.av, i64 0
  %broadcast.splat61 = shufflevector <8 x float> %broadcast.splatinsert60, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aw = load <2 x float>, ptr %2, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  %i.ax = fmul <2 x float> %i.aw, %i.v            ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.ax, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat68 = shufflevector <2 x float> %i.ax, <2 x float> poison, <8 x i32> zeroinitializer
  %i.ay = load float, ptr %i.d, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  %broadcast.splatinsert65 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat66 = shufflevector <8 x float> %broadcast.splatinsert65, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl nuw i64 %index, 1                   ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.az
  %wide.vec = load <16 x float>, ptr %i.ba, align 4, !tbaa !9, !alias.scope !110 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec59 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bb = fmul <8 x float> %broadcast.splat, %strided.vec59
  %i.bc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat61, <8 x float> %strided.vec, <8 x float> %i.bb)
  %i.bd = getelementptr [4 x i8], ptr %invariant.gep48, i64 %i.az
  %strided.vec63.a = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec64 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.be = fmul <8 x float> %broadcast.splat66, %strided.vec63.a
  %i.bf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat68, <8 x float> %strided.vec64, <8 x float> %i.be)
  %interleaved.vec = shufflevector <8 x float> %i.bc, <8 x float> %i.bf, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bd, align 4, !tbaa !9, !alias.scope !109, !noalias !110
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ac, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = load float, ptr %2, align 4, !tbaa !9
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.bi = load float, ptr %gep, align 4, !tbaa !9
  %i.bj = load float, ptr %i.d, align 4, !tbaa !9
  %i.bk = fmul float %i.bj, %i.c
  %i.bl = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !9
  %i.bn = fmul float %i.bk, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bi, float %i.bn)
  %gep49 = getelementptr [4 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store float %i.bo, ptr %gep49, align 4, !tbaa !9
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !9
  %i.bq = load float, ptr %gep, align 4, !tbaa !9
  %i.br = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.bs = insertelement <2 x float> %i.u, float %i.bq, i64 1
  %i.bt = fmul <2 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  %i.bv = extractelement <2 x float> %i.bt, i64 1
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bp, float %i.bv)
  %i.bx = getelementptr i8, ptr %gep49, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !9
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
  %8 = or i32 %i.b, %i.a
  %i.aa = icmp slt i32 %8, 0
  %i.ab = or i1 %found.conflict56, %i.aa
  %conflict.rdx = or i1 %i.z, %i.ab
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.ac = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 5 uses
  %i.ad = mul nsw i64 %indvars.iv45, %i.h
  %i.ae = mul nsw i64 %indvars.iv45, %i.i
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.ad ; 4 uses
  %invariant.gep48 = getelementptr [8 x i8], ptr %5, i64 %i.ae ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.af = mul i64 %i.m, %indvars.iv45
  %i.ag = getelementptr i8, ptr %3, i64 %i.af
  %scevgep50 = getelementptr i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ah = mul i64 %i.l, %indvars.iv45
  %i.ai = getelementptr i8, ptr %5, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 8   ; 2 uses
  %i.aj = getelementptr i8, ptr %invariant.gep48, i64 %mul.result
  %i.ak = icmp ult ptr %i.aj, %invariant.gep48
  %i.al = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.am = icmp ult ptr %i.al, %scevgep
  %i.an = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.ao = icmp ult ptr %i.an, %invariant.gep
  %i.ap = or i1 %i.ao, %mul.overflow
  %i.aq = getelementptr i8, ptr %scevgep50, i64 %mul.result
  %i.ar = icmp ult ptr %i.aq, %scevgep50
  %i.as = or i1 %i.am, %i.ak
  %i.at = or i1 %i.as, %i.ap
  %i.au = or i1 %i.ar, %i.at
  %brmerge = select i1 %i.au, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.av = load double, ptr %2, align 8, !tbaa !12, !alias.scope !118, !noalias !119
  %broadcast.splatinsert60 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat61 = shufflevector <4 x double> %broadcast.splatinsert60, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aw = load <2 x double>, ptr %2, align 8, !tbaa !12, !alias.scope !118, !noalias !119 ; 2 uses
  %i.ax = fmul <2 x double> %i.aw, %i.v           ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %i.ax, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat68 = shufflevector <2 x double> %i.ax, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat66 = shufflevector <2 x double> %i.aw, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl nuw i64 %index, 1                   ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ay
  %wide.vec = load <8 x double>, ptr %i.az, align 8, !tbaa !12, !alias.scope !120 ; 4 uses
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec59 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fmul <4 x double> %broadcast.splat, %strided.vec59
  %i.bb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat61, <4 x double> %strided.vec, <4 x double> %i.ba)
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep48, i64 %i.ay
  %strided.vec63.a = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec64 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bd = fmul <4 x double> %broadcast.splat66, %strided.vec63.a
  %i.be = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat68, <4 x double> %strided.vec64, <4 x double> %i.bd)
  %interleaved.vec = shufflevector <4 x double> %i.bb, <4 x double> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bc, align 8, !tbaa !12, !alias.scope !119, !noalias !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ac, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bg = load double, ptr %2, align 8, !tbaa !12
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.bh = load double, ptr %gep, align 8, !tbaa !12
  %i.bi = load double, ptr %i.d, align 8, !tbaa !12
  %i.bj = fmul double %i.bi, %i.c
  %i.bk = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !12
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bh, double %i.bm)
  %gep49 = getelementptr [8 x i8], ptr %invariant.gep48, i64 %indvars.iv ; 2 uses
  store double %i.bn, ptr %gep49, align 8, !tbaa !12
  %i.bo = load double, ptr %i.bk, align 8, !tbaa !12
  %i.bp = load double, ptr %gep, align 8, !tbaa !12
  %i.bq = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.br = insertelement <2 x double> %i.u, double %i.bp, i64 1
  %i.bs = fmul <2 x double> %i.bq, %i.br          ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %i.bu = extractelement <2 x double> %i.bs, i64 1
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bo, double %i.bu)
  %i.bw = getelementptr i8, ptr %gep49, i64 8
  store double %i.bv, ptr %i.bw, align 8, !tbaa !12
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
end_hunk_1
