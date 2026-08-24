Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/groupcoord?download=true
inline.NumInlined: 59
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Z15get_center_commRKN3gmx7MpiCommEPA3_fPfiiS5_:bb.a
  ret void
}

declare void @_ZNK3gmx7MpiComm9sumReduceENS_8ArrayRefIdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z11translate_xPA3_fiPKf(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.d = mul nuw nsw i64 %wide.trip.count, 12
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  %scevgep7 = getelementptr i8, ptr %2, i64 12
  %bound0 = icmp ult ptr %0, %scevgep7
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.e = load float, ptr %2, align 4, !tbaa !34, !alias.scope !90
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.e, i64 0
  %i.f = load float, ptr %i.b, align 4, !tbaa !34, !alias.scope !90
  %broadcast.splatinsert10 = insertelement <8 x float> poison, float %i.f, i64 0
  %i.g = load float, ptr %i.c, align 4, !tbaa !34, !alias.scope !90
  %broadcast.splatinsert12 = insertelement <8 x float> poison, float %i.g, i64 0
  %i.h = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert10, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.i = shufflevector <8 x float> %broadcast.splatinsert12, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !93, !noalias !90 ; 2 uses
  %i.k = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.l = fadd <16 x float> %i.k, %i.h
  %i.m = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.n = fadd <16 x float> %i.m, %i.i
  %interleaved.vec = shufflevector <16 x float> %i.l, <16 x float> %i.n, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.j, align 4, !tbaa !34, !alias.scope !93, !noalias !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.prol ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !34
  %i.s = load float, ptr %i.c, align 4, !tbaa !34
  %i.t = fadd float %i.r, %i.s
  %i.u = load <2 x float>, ptr %i.p, align 4, !tbaa !34
  %i.v = load <2 x float>, ptr %2, align 4, !tbaa !34
  %i.w = fadd <2 x float> %i.u, %i.v
  store <2 x float> %i.w, ptr %i.p, align 4, !tbaa !34
  store float %i.t, ptr %i.q, align 4, !tbaa !34
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !96

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.x = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !34
  %i.ac = load float, ptr %i.c, align 4, !tbaa !34
  %i.ad = fadd float %i.ab, %i.ac
  %i.ae = load <2 x float>, ptr %i.z, align 4, !tbaa !34
  %i.af = load <2 x float>, ptr %2, align 4, !tbaa !34
  %i.ag = fadd <2 x float> %i.ae, %i.af
  store <2 x float> %i.ag, ptr %i.z, align 4, !tbaa !34
  store float %i.ad, ptr %i.aa, align 4, !tbaa !34
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !34
  %i.al = load float, ptr %i.c, align 4, !tbaa !34
  %i.am = fadd float %i.ak, %i.al
  %i.an = load <2 x float>, ptr %i.ai, align 4, !tbaa !34
  %i.ao = load <2 x float>, ptr %2, align 4, !tbaa !34
  %i.ap = fadd <2 x float> %i.an, %i.ao
  store <2 x float> %i.ap, ptr %i.ai, align 4, !tbaa !34
  store float %i.am, ptr %i.aj, align 4, !tbaa !34
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !34
  %i.au = load float, ptr %i.c, align 4, !tbaa !34
  %i.av = fadd float %i.at, %i.au
  %i.aw = load <2 x float>, ptr %i.ar, align 4, !tbaa !34
  %i.ax = load <2 x float>, ptr %2, align 4, !tbaa !34
  %i.ay = fadd <2 x float> %i.aw, %i.ax
  store <2 x float> %i.ay, ptr %i.ar, align 4, !tbaa !34
  store float %i.av, ptr %i.as, align 4, !tbaa !34
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 36 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 44 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !34
  %i.bd = load float, ptr %i.c, align 4, !tbaa !34
  %i.be = fadd float %i.bc, %i.bd
  %i.bf = load <2 x float>, ptr %i.ba, align 4, !tbaa !34
  %i.bg = load <2 x float>, ptr %2, align 4, !tbaa !34
  %i.bh = fadd <2 x float> %i.bf, %i.bg
  store <2 x float> %i.bh, ptr %i.ba, align 4, !tbaa !34
  store float %i.be, ptr %i.bb, align 4, !tbaa !34
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z8rotate_xPA3_fiS0_(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader24.preheader, label %._crit_edge

.preheader24.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 4 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.preheader24.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader24.preheader
  %i.b = mul nuw nsw i64 %wide.trip.count, 12
  %scevgep.a = getelementptr i8, ptr %0, i64 %i.b
  %scevgep39 = getelementptr i8, ptr %2, i64 36
  %bound0 = icmp ult ptr %0, %scevgep39
  %bound1 = icmp ult ptr %2, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader24.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %i.c = load float, ptr %2, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.d = load float, ptr %gep.1, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert44 = insertelement <8 x float> poison, float %i.d, i64 0
  %broadcast.splat45 = shufflevector <8 x float> %broadcast.splatinsert44, <8 x float> poison, <8 x i32> zeroinitializer
  %i.e = load float, ptr %gep.2, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert46 = insertelement <8 x float> poison, float %i.e, i64 0
  %broadcast.splat47 = shufflevector <8 x float> %broadcast.splatinsert46, <8 x float> poison, <8 x i32> zeroinitializer
  %i.f = load float, ptr %invariant.gep.1, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert48 = insertelement <8 x float> poison, float %i.f, i64 0
  %broadcast.splat49 = shufflevector <8 x float> %broadcast.splatinsert48, <8 x float> poison, <8 x i32> zeroinitializer
  %i.g = load float, ptr %gep.1.1, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert50 = insertelement <8 x float> poison, float %i.g, i64 0
  %broadcast.splat51 = shufflevector <8 x float> %broadcast.splatinsert50, <8 x float> poison, <8 x i32> zeroinitializer
  %i.h = load float, ptr %gep.2.1, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert52 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat53 = shufflevector <8 x float> %broadcast.splatinsert52, <8 x float> poison, <8 x i32> zeroinitializer
  %i.i = load float, ptr %invariant.gep.2, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert54 = insertelement <8 x float> poison, float %i.i, i64 0
  %broadcast.splat55 = shufflevector <8 x float> %broadcast.splatinsert54, <8 x float> poison, <8 x i32> zeroinitializer
  %i.j = load float, ptr %gep.1.2, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert56 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat57 = shufflevector <8 x float> %broadcast.splatinsert56, <8 x float> poison, <8 x i32> zeroinitializer
  %i.k = load float, ptr %gep.2.2, align 4, !tbaa !34, !alias.scope !98
  %broadcast.splatinsert58 = insertelement <8 x float> poison, float %i.k, i64 0
  %broadcast.splat59 = shufflevector <8 x float> %broadcast.splatinsert58, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = mul nuw nsw i64 %index, 12
  %4 = getelementptr nuw i8, ptr %0, i64 %3
  %wide.vec = load <24 x float>, ptr %4, align 4, !tbaa !34, !alias.scope !101, !noalias !98 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 3 uses
  %strided.vec40 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 3 uses
  %strided.vec41 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 3 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %0, <8 x i64> %vec.ind ; 6 uses
  %5 = extractelement <8 x ptr> %wide.gep, i64 0
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.l = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %strided.vec, <8 x float> zeroinitializer) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.l, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.m = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat45, <8 x float> %strided.vec40, <8 x float> %i.l) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.m, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.n = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat47, <8 x float> %strided.vec41, <8 x float> %i.m)
  %wide.gep47 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 3 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep47, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.o = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat49, <8 x float> %strided.vec, <8 x float> zeroinitializer) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.o, <8 x ptr> align 4 %wide.gep47, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.p = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat51, <8 x float> %strided.vec40, <8 x float> %i.o) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.p, <8 x ptr> align 4 %wide.gep47, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.q = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat53, <8 x float> %strided.vec41, <8 x float> %i.p)
  %wide.gep54 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 3 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep54, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.r = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat55, <8 x float> %strided.vec, <8 x float> zeroinitializer) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.r, <8 x ptr> align 4 %wide.gep54, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.s = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat57, <8 x float> %strided.vec40, <8 x float> %i.r) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.s, <8 x ptr> align 4 %wide.gep54, <8 x i1> splat (i1 true)), !tbaa !34, !alias.scope !101, !noalias !98
  %i.t = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat59, <8 x float> %strided.vec41, <8 x float> %i.s)
  %i.u = shufflevector <8 x float> %i.n, <8 x float> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.v = shufflevector <8 x float> %i.t, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.u, <16 x float> %i.v, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %5, align 4, !tbaa !34, !alias.scope !101, !noalias !98
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.preheader24.preheader60

.preheader24.preheader60:                         ; preds = %vector.memcheck, %.preheader24.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader24.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader60, %.preheader24
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader24 ], [ %indvars.iv.ph, %.preheader24.preheader60 ] ; 3 uses
  %6 = mul nuw nsw i64 %indvars.iv, 12
  %scevgep = getelementptr nuw i8, ptr %0, i64 %6 ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %scevgep, align 4, !tbaa !34 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !34 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !34 ; 3 uses
  %7 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %i.x = load float, ptr %2, align 4, !tbaa !34
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %.sroa.0.0.copyload, float 0.000000e+00) ; 2 uses
  store float %i.y, ptr %7, align 4, !tbaa !34
  %i.z = load float, ptr %gep.1, align 4, !tbaa !34
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %.sroa.6.0.copyload, float %i.y) ; 2 uses
  store float %i.aa, ptr %7, align 4, !tbaa !34
  %i.ab = load float, ptr %gep.2, align 4, !tbaa !34
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %.sroa.9.0.copyload, float %i.aa)
  store float %i.ac, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  store float 0.000000e+00, ptr %8, align 4, !tbaa !34
  %i.ad = load float, ptr %invariant.gep.1, align 4, !tbaa !34
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.0.0.copyload, float 0.000000e+00) ; 2 uses
  store float %i.ae, ptr %8, align 4, !tbaa !34
  %i.af = load float, ptr %gep.1.1, align 4, !tbaa !34
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %.sroa.6.0.copyload, float %i.ae) ; 2 uses
  store float %i.ag, ptr %8, align 4, !tbaa !34
  %i.ah = load float, ptr %gep.2.1, align 4, !tbaa !34
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.9.0.copyload, float %i.ag)
  store float %i.ai, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store float 0.000000e+00, ptr %9, align 4, !tbaa !34
  %i.aj = load float, ptr %invariant.gep.2, align 4, !tbaa !34
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %.sroa.0.0.copyload, float 0.000000e+00) ; 2 uses
  store float %i.ak, ptr %9, align 4, !tbaa !34
  %i.al = load float, ptr %gep.1.2, align 4, !tbaa !34
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %.sroa.6.0.copyload, float %i.ak) ; 2 uses
  store float %i.am, ptr %9, align 4, !tbaa !34
  %i.an = load float, ptr %gep.2.2, align 4, !tbaa !34
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %.sroa.9.0.copyload, float %i.am)
  store float %i.ao, ptr %9, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader24, !llvm.loop !104

._crit_edge:                                      ; preds = %.preheader24, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #9 = { noreturn }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !7, i64 40}
!14 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN11gmx_ga2la_t5EntryESaIS4_EEN3gmx9HashedMapIS4_EEEEE", !7, i64 0, !7, i64 40}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN11gmx_ga2la_t5EntryESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 _ZTSN11gmx_ga2la_t5EntryE", !11, i64 0}
!18 = !{!19, !6, i64 4}
!19 = !{!"_ZTSN11gmx_ga2la_t5EntryE", !6, i64 0, !6, i64 4}
!20 = !{!21, !6, i64 24}
!21 = !{!"_ZTSN3gmx9HashedMapIN11gmx_ga2la_t5EntryEEE", !22, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!22 = !{!"_ZTSSt6vectorIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryESaIS5_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryE", !11, i64 0}
!27 = !{!25, !26, i64 0}
!28 = !{!29, !6, i64 0}
!29 = !{!"_ZTSN3gmx9HashedMapIN11gmx_ga2la_t5EntryEE9hashEntryE", !6, i64 0, !19, i64 4, !6, i64 12}
!30 = !{!29, !6, i64 12}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !7, i64 0}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!40, !6, i64 8}
!40 = !{!"_ZTSN3gmx7MpiCommE", !41, i64 0, !6, i64 8, !6, i64 12, !42, i64 16}
!41 = !{!"p1 _ZTS10tmpi_comm_", !11, i64 0}
!42 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !43, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !44, i64 0}
!44 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !45, i64 0}
!45 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !46, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !47, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !48, i64 0}
!48 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !11, i64 0}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = distinct !{!51, !32}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !32, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !32, !58, !59}
!66 = distinct !{!66, !38}
!67 = distinct !{!67, !32, !58}
!68 = distinct !{!68, !32, !58}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !32, !58, !59}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !32, !58, !59}
!81 = distinct !{!81, !32, !58}
!82 = distinct !{!82, !32, !58}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !38}
!86 = !{!87, !87, i64 0}
!87 = !{!"double", !7, i64 0}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38}
!90 = !{!91}
!91 = distinct !{!91, !92}
!92 = distinct !{!92, !"LVerDomain"}
!93 = !{!94}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !32, !58, !59}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !32, !58}
!98 = !{!99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !{!102}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !32, !58, !59}
!104 = distinct !{!104, !32, !58}
end_hunk_0
