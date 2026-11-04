Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE:bb.a
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep36, i64 %index ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %i.ba = getelementptr i8, ptr %i.ay, i64 64
  %i.bb = getelementptr i8, ptr %i.ay, i64 96
  store <8 x float> %wide.load, ptr %i.ay, align 4, !tbaa !108
  store <8 x float> %wide.load39, ptr %i.az, align 4, !tbaa !108
  store <8 x float> %wide.load40, ptr %i.ba, align 4, !tbaa !108
  store <8 x float> %wide.load41, ptr %i.bb, align 4, !tbaa !108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.bd = getelementptr [4 x i8], ptr %invariant.gep, i64 %index43
  %wide.load44 = load <4 x float>, ptr %i.bd, align 4, !tbaa !108
  %i.be = getelementptr [4 x i8], ptr %invariant.gep36, i64 %index43
  store <4 x float> %wide.load44, ptr %i.be, align 4, !tbaa !108
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !258

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n46, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 4 uses
  %i.bg = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bh = load float, ptr %gep.prol, align 4, !tbaa !108
  %gep37.prol = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.prol
  store float %i.bh, ptr %gep37.prol, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !259

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bi = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bj = icmp ugt i64 %i.bi, -8
  br i1 %i.bj, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bk = load float, ptr %gep, align 4, !tbaa !108
  %gep37 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv
  store float %i.bk, ptr %gep37, align 4, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bl = load float, ptr %gep.1, align 4, !tbaa !108
  %gep37.1 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next
  store float %i.bl, ptr %gep37.1, align 4, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bm = load float, ptr %gep.2, align 4, !tbaa !108
  %gep37.2 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.1
  store float %i.bm, ptr %gep37.2, align 4, !tbaa !108
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bn = load float, ptr %gep.3, align 4, !tbaa !108
  %gep37.3 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.2
  store float %i.bn, ptr %gep37.3, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.bo = load float, ptr %gep.4, align 4, !tbaa !108
  %gep37.4 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.3
  store float %i.bo, ptr %gep37.4, align 4, !tbaa !108
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bp = load float, ptr %gep.5, align 4, !tbaa !108
  %gep37.5 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.4
  store float %i.bp, ptr %gep37.5, align 4, !tbaa !108
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bq = load float, ptr %gep.6, align 4, !tbaa !108
  %gep37.6 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.5
  store float %i.bq, ptr %gep37.6, align 4, !tbaa !108
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.br = load float, ptr %gep.7, align 4, !tbaa !108
  %gep37.7 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.6
  store float %i.br, ptr %gep37.7, align 4, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !260

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge19, label %iter.check, !llvm.loop !261

._crit_edge19:                                    ; preds = %._crit_edge
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %.loopexit, label %.preheader16, !llvm.loop !262

.loopexit:                                        ; preds = %._crit_edge19, %bb.a, %.preheader16.lr.ph, %bb.b
  %i.bs = icmp eq i32 %i.z, 1
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !263
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.bu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %3, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.e)
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !144
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %i.bv = phi ptr [ %.pre34, %bb.c ], [ %0, %.loopexit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !263
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.bx)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE.omp_outlined.2, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %3, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.g = load i32, ptr %i.f, align 4, !tbaa !103  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.i, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.j = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !10
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !10
  %i.m = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %.not32 = icmp sgt i32 %i.m, %i.l
  br i1 %.not32, label %._crit_edge35, label %.preheader28.lr.ph

.preheader28.lr.ph:                               ; preds = %bb.b
  %i.n = load i32, ptr %3, align 4, !tbaa !10     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.preheader28.lr.ph.split.us, label %._crit_edge35

.preheader28.lr.ph.split.us:                      ; preds = %.preheader28.lr.ph
  %i.p = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader28.lr.ph.split.us.split, label %._crit_edge35

.preheader28.lr.ph.split.us.split:                ; preds = %.preheader28.lr.ph.split.us
  %i.r = load i32, ptr %6, align 4, !tbaa !10
  %i.s = load i32, ptr %8, align 4, !tbaa !10     ; 2 uses
  %i.t = load i32, ptr %7, align 4, !tbaa !10
  %i.u = sext i32 %i.s to i64
  %i.v = sext i32 %i.m to i64
  %i.w = sext i32 %i.r to i64
  %i.x = add nsw i32 %i.l, 1
  %wide.trip.count41 = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.y = icmp ult i32 %i.p, 8
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod51 = icmp ne i64 %xtraiter, 0
  br label %.preheader28.us

.preheader28.us:                                  ; preds = %.preheader28.lr.ph.split.us.split, %._crit_edge31.us
  %indvars.iv43 = phi i64 [ %i.v, %.preheader28.lr.ph.split.us.split ], [ %indvars.iv.next44, %._crit_edge31.us ] ; 2 uses
  %i.z = mul nsw i64 %indvars.iv43, %i.w          ; 2 uses
  %i.aa = trunc nsw i64 %i.z to i32
  %invariant.op.us = add i32 %i.t, %i.aa
  br label %.preheader

.preheader:                                       ; preds = %.preheader28.us, %._crit_edge.us
  %indvars.iv38 = phi i64 [ 0, %.preheader28.us ], [ %indvars.iv.next39, %._crit_edge.us ] ; 3 uses
  %9 = add nsw i64 %i.z, %indvars.iv38
  %10 = mul nsw i64 %9, %i.u                      ; 9 uses
  %11 = trunc nuw nsw i64 %indvars.iv38 to i32
  %.reass = add i32 %invariant.op.us, %11
  %12 = mul nsw i32 %.reass, %i.s
  %13 = sext i32 %12 to i64                       ; 9 uses
  br i1 %i.y, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader.us.new ], [ 0, %.preheader ] ; 10 uses
  %niter = phi i64 [ %niter.next.7, %.preheader.us.new ], [ 0, %.preheader ]
  %i.ab = load i64, ptr %5, align 8
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %10
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load float, ptr %i.ae, align 4, !tbaa !108
  %i.ag = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %13
  store float %i.af, ptr %i.ah, align 4, !tbaa !108
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i64, ptr %5, align 8
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %10
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv.next
  %i.am = load float, ptr %i.al, align 4, !tbaa !108
  %i.an = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %13
  store float %i.am, ptr %i.ao, align 4, !tbaa !108
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ap = load i64, ptr %5, align 8
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %10
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv.next.1
  %i.at = load float, ptr %i.as, align 4, !tbaa !108
  %i.au = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv.next.1
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %13
  store float %i.at, ptr %i.av, align 4, !tbaa !108
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aw = load i64, ptr %5, align 8
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %10
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %indvars.iv.next.2
  %i.ba = load float, ptr %i.az, align 4, !tbaa !108
  %i.bb = getelementptr [4 x i8], ptr %i.ax, i64 %indvars.iv.next.2
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %13
  store float %i.ba, ptr %i.bc, align 4, !tbaa !108
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.bd = load i64, ptr %5, align 8
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %10
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv.next.3
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !108
  %i.bi = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.next.3
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %13
  store float %i.bh, ptr %i.bj, align 4, !tbaa !108
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.bk = load i64, ptr %5, align 8
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %10
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv.next.4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !108
  %i.bp = getelementptr [4 x i8], ptr %i.bl, i64 %indvars.iv.next.4
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %13
  store float %i.bo, ptr %i.bq, align 4, !tbaa !108
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.br = load i64, ptr %5, align 8
  %i.bs = inttoptr i64 %i.br to ptr               ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %10
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv.next.5
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !108
  %i.bw = getelementptr [4 x i8], ptr %i.bs, i64 %indvars.iv.next.5
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %13
  store float %i.bv, ptr %i.bx, align 4, !tbaa !108
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.by = load i64, ptr %5, align 8
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %10
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.next.6
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !108
  %i.cd = getelementptr [4 x i8], ptr %i.bz, i64 %indvars.iv.next.6
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %13
  store float %i.cc, ptr %i.ce, align 4, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !264

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.7, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.cf = load i64, ptr %5, align 8
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %10
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.epil
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !108
  %i.ck = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.epil
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %13
  store float %i.cj, ptr %i.cl, align 4, !tbaa !108
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !265

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge31.us, label %.preheader, !llvm.loop !266

._crit_edge31.us:                                 ; preds = %._crit_edge.us
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32
  %exitcond46.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond46.not, label %._crit_edge35, label %.preheader28.us

._crit_edge35:                                    ; preds = %._crit_edge31.us, %.preheader28.lr.ph, %.preheader28.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge35, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !146 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.g = load i32, ptr %i.f, align 4, !tbaa !103  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.i, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.j = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !10
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !10
  %i.m = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %.not31 = icmp sgt i32 %i.m, %i.l
  br i1 %.not31, label %._crit_edge34, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !144
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.p = load i32, ptr %i.o, align 8, !tbaa !105  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader27.lr.ph.split.us, label %._crit_edge34

.preheader27.lr.ph.split.us:                      ; preds = %.preheader27.lr.ph
  %i.r = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader27.lr.ph.split.us.split, label %._crit_edge34

.preheader27.lr.ph.split.us.split:                ; preds = %.preheader27.lr.ph.split.us
  %i.t = load i32, ptr %5, align 4, !tbaa !10
  %i.u = load i32, ptr %6, align 4, !tbaa !10
  %i.v = load i32, ptr %7, align 4, !tbaa !10
  %i.w = sext i32 %i.u to i64
  %i.x = sext i32 %i.m to i64
  %i.y = sext i32 %i.t to i64
  %i.z = add nsw i32 %i.l, 1
  %wide.trip.count40 = zext nneg i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.aa = icmp ult i32 %i.r, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  br label %.preheader27.us

.preheader27.us:                                  ; preds = %.preheader27.lr.ph.split.us.split, %._crit_edge30.us
  %indvars.iv42 = phi i64 [ %i.x, %.preheader27.lr.ph.split.us.split ], [ %indvars.iv.next43, %._crit_edge30.us ] ; 2 uses
  %i.ab = mul nsw i64 %indvars.iv42, %i.y
  br label %.preheader

.preheader:                                       ; preds = %.preheader27.us, %._crit_edge.us
  %indvars.iv37 = phi i64 [ 0, %.preheader27.us ], [ %indvars.iv.next38, %._crit_edge.us ] ; 2 uses
  %8 = add nsw i64 %i.ab, %indvars.iv37
  %9 = mul nsw i64 %8, %i.w                       ; 6 uses
  %10 = trunc nsw i64 %9 to i32
  %invariant.op = add i32 %i.v, %10               ; 5 uses
  br i1 %i.aa, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader ]
  %i.ac = load i64, ptr %4, align 8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %9
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !108
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %.reass.us = add i32 %invariant.op, %i.ah
  %i.ai = sext i32 %.reass.us to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ai
  store float %i.ag, ptr %i.aj, align 4, !tbaa !108
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i64, ptr %4, align 8
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %9
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.ao = load float, ptr %i.an, align 4, !tbaa !108
  %i.ap = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.us.1 = add i32 %invariant.op, %i.ap
  %i.aq = sext i32 %.reass.us.1 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.aq
  store float %i.ao, ptr %i.ar, align 4, !tbaa !108
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.as = load i64, ptr %4, align 8
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %9
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.next.1
  %i.aw = load float, ptr %i.av, align 4, !tbaa !108
  %i.ax = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %.reass.us.2 = add i32 %invariant.op, %i.ax
  %i.ay = sext i32 %.reass.us.2 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ay
  store float %i.aw, ptr %i.az, align 4, !tbaa !108
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ba = load i64, ptr %4, align 8
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %9
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %indvars.iv.next.2
  %i.be = load float, ptr %i.bd, align 4, !tbaa !108
  %i.bf = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %.reass.us.3 = add i32 %invariant.op, %i.bf
  %i.bg = sext i32 %.reass.us.3 to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bg
  store float %i.be, ptr %i.bh, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !267

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod50)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bi = load i64, ptr %4, align 8
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %9
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %indvars.iv.epil
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !108
  %i.bn = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.reass.us.epil = add i32 %invariant.op, %i.bn
  %i.bo = sext i32 %.reass.us.epil to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bo
  store float %i.bm, ptr %i.bp, align 4, !tbaa !108
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.c, !llvm.loop !268

._crit_edge.us:                                   ; preds = %bb.c, %._crit_edge.us.unr-lcssa
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge30.us, label %.preheader, !llvm.loop !269

._crit_edge30.us:                                 ; preds = %._crit_edge.us
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next43 to i32
  %exitcond45.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond45.not, label %._crit_edge34, label %.preheader27.us

._crit_edge34:                                    ; preds = %._crit_edge30.us, %.preheader27.lr.ph, %.preheader27.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge34, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z18set_grid_alignmentPii(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %1, 5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !10
  %i.c = add nsw i32 %i.b, 3
  %i.d = and i32 %i.c, -4
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z13pmegrids_initP10pmegrids_tiiiiibiiiN3gmx8ArrayRefISt6vectorIfNS1_9AllocatorIfNS1_23AlignedAllocationPolicyEEEEEE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef byval(%"class.gmx::ArrayRef.88") align 8 %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca [3 x i32], align 4                ; 10 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %i.a, align 8, !tbaa !148
  store i32 %5, ptr %i.b, align 4, !tbaa !10
  store i32 %7, ptr %i.c, align 4, !tbaa !10
  %.sroa.01.0.copyload.i = load ptr, ptr %10, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8
  %i.g = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ13pmegrids_initP10pmegrids_tiiiiibiiiN3gmx8ArrayRefISt6vectorIfNS1_9AllocatorIfNS1_23AlignedAllocationPolicyEEEEEEENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 696) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.h = add i32 %5, -1                           ; 8 uses
  %i.i = sub nsw i32 %1, %i.h                     ; 4 uses
  store i32 %i.i, ptr %i.d, align 4, !tbaa !10
  %i.j = sub nsw i32 %2, %i.h                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !10
  %i.l = sub nsw i32 %3, %i.h                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !10
  tail call fastcc void @_ZL12pmegrid_initP9pmegrid_tiiiiiiiiibiPSt6vectorIfN3gmx9AllocatorIfNS2_23AlignedAllocationPolicyEEEE(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.l, i1 noundef zeroext false, i32 noundef %5, ptr noundef %.sroa.01.0.copyload.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %7, ptr %i.n, align 8, !tbaa !275
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %.not74.i = icmp slt i32 %7, 1
  br i1 %.not74.i, label %._crit_edge.i, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = add i32 %i.i, -1
  %i.s = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %4, i64 1
  %i.u = add <2 x i32> %i.t, splat (i32 -1)
  %i.v = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %..loopexit_crit_edge.i, %.lr.ph78.i
  %.077.i = phi i32 [ -1, %.lr.ph78.i ], [ %.3.i, %..loopexit_crit_edge.i ] ; 2 uses
  %.05975.i = phi i32 [ 1, %.lr.ph78.i ], [ %i.ay, %..loopexit_crit_edge.i ] ; 7 uses
  %i.x = urem i32 %7, %.05975.i
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.preheader.i, label %..loopexit_crit_edge.i

.preheader.i:                                     ; preds = %bb.d
  %i.z = add i32 %i.r, %.05975.i
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %.preheader.i
  %.173.i = phi i32 [ %.077.i, %.preheader.i ], [ %.2.i, %bb.m ] ; 8 uses
  %.05872.i = phi i32 [ 1, %.preheader.i ], [ %i.ax, %bb.m ] ; 6 uses
  %i.aa = mul nuw nsw i32 %.05872.i, %.05975.i    ; 3 uses
  %.not70.i = icmp sgt i32 %i.aa, %7
  br i1 %.not70.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = urem i32 %7, %i.aa
  %i.ac = udiv i32 %7, %i.aa                      ; 4 uses
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %i.z, %.05975.i
  %i.af = add nsw i32 %i.ae, %i.h
  %i.ag = insertelement <2 x i32> poison, i32 %.05872.i, i64 0
  %i.ah = insertelement <2 x i32> %i.ag, i32 %i.ac, i64 1 ; 2 uses
  %i.ai = add <2 x i32> %i.u, %i.ah
  %i.aj = sdiv <2 x i32> %i.ai, %i.ah
  %i.ak = add nsw <2 x i32> %i.aj, %i.w           ; 2 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 0
  %i.am = mul nsw i32 %i.al, %i.af
  %i.an = extractelement <2 x i32> %i.ak, i64 1
  %i.ao = mul nsw i32 %i.am, %i.an                ; 3 uses
  %i.ap = icmp eq i32 %.173.i, -1
  %i.aq = icmp slt i32 %i.ao, %.173.i
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp eq i32 %i.ao, %.173.i
  br i1 %i.ar, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.p, align 4, !tbaa !10  ; 2 uses
  %i.at = icmp slt i32 %i.ac, %i.as
  br i1 %i.at, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = icmp eq i32 %i.ac, %i.as
  br i1 %i.au, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.q, align 8, !tbaa !10
  %i.aw = icmp slt i32 %.05872.i, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  store i32 %.05975.i, ptr %i.o, align 4, !tbaa !10
  store i32 %.05872.i, ptr %i.q, align 8, !tbaa !10
  store i32 %i.ac, ptr %i.p, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.f, %bb.e
  %.2.i = phi i32 [ %i.ao, %bb.l ], [ %.173.i, %bb.k ], [ %.173.i, %bb.j ], [ %.173.i, %bb.h ], [ %.173.i, %bb.f ], [ %.173.i, %bb.e ] ; 2 uses
  %i.ax = add nuw i32 %.05872.i, 1
  %exitcond.not.i = icmp eq i32 %.05872.i, %7
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.i, label %bb.e, !llvm.loop !270

..loopexit_crit_edge.i:                           ; preds = %bb.m, %bb.d
  %.3.i = phi i32 [ %.077.i, %bb.d ], [ %.2.i, %bb.m ]
  %i.ay = add nuw i32 %.05975.i, 1
  %exitcond79.not.i = icmp eq i32 %.05975.i, %7
  br i1 %exitcond79.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !271

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i, %bb.c
  %i.az = tail call ptr @getenv(ptr noundef nonnull @.str.21) #7 ; 2 uses
  %.not67.i = icmp eq ptr %i.az, null
  br i1 %.not67.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bc = tail call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb) #7 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %i.bd = load <2 x i32>, ptr %i.o, align 4, !tbaa !10 ; 4 uses
  %i.be = extractelement <2 x i32> %i.bd, i64 0   ; 2 uses
  %i.bf = extractelement <2 x i32> %i.bd, i64 1   ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !10 ; 4 uses
  %i.bj = mul nsw i32 %i.bg, %i.bi
  %.not68.i = icmp eq i32 %i.bj, %7
  br i1 %.not68.i, label %_ZL21make_subgrid_divisionPKiiiPi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(63) @.str.6, i8 noundef zeroext 2)
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !10
  %i.bm = load i32, ptr %i.bk, align 8, !tbaa !10
  %i.bn = load i32, ptr %i.bh, align 4, !tbaa !10
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 674, ptr noundef nonnull @.str.23, i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.bn, i32 noundef %7) #22
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

end_hunk_0
