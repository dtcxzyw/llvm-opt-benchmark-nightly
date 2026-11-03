Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/shape?download=true
inline.NumInlined: 200
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2GetShapePerimeter:bb.a
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.aa, align 4, !tbaa !68 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i32 %i.t, 1
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.02760 = phi float [ %i.w, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %.sroa.07.058 = phi <2 x float> [ %.sroa.07.0.copyload, %.lr.ph.preheader.new ], [ %.sroa.03.0.copyload.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.ac, align 4, !tbaa !68 ; 2 uses
  %i.ad = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.07.058 ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ad
  %i.af = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ae)
  %sqrt.i39 = tail call float @llvm.sqrt.f32(float %i.af)
  %i.ag = fadd float %.02760, %sqrt.i39
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.03.0.copyload.1 = load <2 x float>, ptr %i.ai, align 4, !tbaa !68 ; 3 uses
  %i.aj = fsub <2 x float> %.sroa.03.0.copyload.1, %.sroa.03.0.copyload ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj
  %i.al = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ak)
  %sqrt.i39.1 = tail call float @llvm.sqrt.f32(float %i.al)
  %i.am = fadd float %i.ag, %sqrt.i39.1           ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !216

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ap = load <2 x float>, ptr %i.an, align 8
  %i.aq = load <2 x float>, ptr %i.ao, align 8
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = fmul <2 x float> %i.ar, %i.ar
  %i.at = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.as)
  %sqrt.i48 = tail call float @llvm.sqrt.f32(float %i.at)
  %i.au = fmul float %sqrt.i48, 2.000000e+00
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ax = load <2 x float>, ptr %i.av, align 8
  %i.ay = load <2 x float>, ptr %i.aw, align 8
  %i.az = fsub <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.az
  %i.bb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ba)
  %sqrt.i57 = tail call float @llvm.sqrt.f32(float %i.bb)
  %i.bc = fmul float %sqrt.i57, 2.000000e+00
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.02760.epil.init = phi float [ %i.w, %.lr.ph.preheader ], [ %i.am, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.07.058.epil.init = phi <2 x float> [ %.sroa.07.0.copyload, %.lr.ph.preheader ], [ %.sroa.03.0.copyload.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  %.sroa.03.0.copyload.epil = load <2 x float>, ptr %i.bd, align 4, !tbaa !68
  %i.be = fsub <2 x float> %.sroa.03.0.copyload.epil, %.sroa.07.058.epil.init ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.be
  %i.bg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bf)
  %sqrt.i39.epil = tail call float @llvm.sqrt.f32(float %i.bg)
  %i.bh = fadd float %.02760.epil.init, %sqrt.i39.epil
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.a, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.n, %bb.b ], [ %i.q, %bb.c ], [ %i.bc, %bb.f ], [ %i.au, %bb.e ], [ %i.w, %bb.d ], [ %i.am, %.loopexit.loopexit.unr-lcssa ], [ %i.bh, %.lr.ph.epil.preheader ]
  ret float %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden float @b2GetShapeProjectedPerimeter(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  switch i32 %i.b, label %bb.g [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load <2 x float>, ptr %i.d, align 8
  %i.f = load <2 x float>, ptr %i.c, align 8
  %i.g = fsub <2 x float> %i.e, %i.f
  %i.h = fmul <2 x float> %1, %i.g
  %i.i = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.h) ; 3 uses
  %i.j = fcmp olt float %i.i, 0.000000e+00
  %i.k = fneg float %i.i
  %i.l = select i1 %i.j, float %i.k, float %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load float, ptr %i.m, align 8, !tbaa !85
  %i.o = fmul float %i.n, 2.000000e+00
  %i.p = fadd float %i.o, %i.l
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load float, ptr %i.q, align 8, !tbaa !85
  %i.s = fmul float %i.r, 2.000000e+00
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.v = load i32, ptr %i.u, align 4, !tbaa !85   ; 3 uses
  %i.w = load <2 x float>, ptr %i.t, align 4
  %i.x = fmul <2 x float> %1, %i.w
  %i.y = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.x) ; 6 uses
  %i.z = icmp sgt i32 %i.v, 1
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.v to i64
  %i.aa = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.ab = icmp eq i32 %i.v, 2
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03970.epil.init = phi float [ %i.y, %.lr.ph.preheader ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.04069.epil.init = phi float [ %i.y, %.lr.ph.preheader ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.epil.init
  %i.ad = load <2 x float>, ptr %i.ac, align 4
  %i.ae = fmul <2 x float> %1, %i.ad
  %i.af = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ae) ; 4 uses
  %i.ag = fcmp olt float %.04069.epil.init, %i.af
  %i.ah = select i1 %i.ag, float %.04069.epil.init, float %i.af
  %i.ai = fcmp ogt float %.03970.epil.init, %i.af
  %i.aj = select i1 %i.ai, float %.03970.epil.init, float %i.af
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d
  %.040.lcssa = phi float [ %i.y, %bb.d ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.epil.preheader ]
  %.039.lcssa = phi float [ %i.y, %bb.d ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.epil.preheader ]
  %i.ak = fsub float %.039.lcssa, %.040.lcssa
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.am = load float, ptr %i.al, align 8, !tbaa !85
  %i.an = fmul float %i.am, 2.000000e+00
  %i.ao = fadd float %i.ak, %i.an
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.03970 = phi float [ %i.y, %.lr.ph.preheader.new ], [ %i.bf, %.lr.ph ] ; 2 uses
  %.04069 = phi float [ %i.y, %.lr.ph.preheader.new ], [ %i.bd, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.aq = load <2 x float>, ptr %i.ap, align 4
  %i.ar = fmul <2 x float> %1, %i.aq
  %i.as = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ar) ; 4 uses
  %i.at = fcmp olt float %.04069, %i.as
  %i.au = select i1 %i.at, float %.04069, float %i.as ; 2 uses
  %i.av = fcmp ogt float %.03970, %i.as
  %i.aw = select i1 %i.av, float %.03970, float %i.as ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load <2 x float>, ptr %i.ay, align 4
  %i.ba = fmul <2 x float> %1, %i.az
  %i.bb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ba) ; 4 uses
  %i.bc = fcmp olt float %i.au, %i.bb
  %i.bd = select i1 %i.bc, float %i.au, float %i.bb ; 3 uses
  %i.be = fcmp ogt float %i.aw, %i.bb
  %i.bf = select i1 %i.be, float %i.aw, float %i.bb ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !217

bb.e:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %2 = load <2 x float>, ptr %i.bg, align 8       ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %4 = load <2 x float>, ptr %3, align 8          ; 2 uses
  %5 = shufflevector <2 x float> %4, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.bh = fmul <2 x float> %1, %5
  %i.bi = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = shufflevector <2 x float> %2, <2 x float> %4, <2 x i32> <i32 3, i32 0>
  %i.bk = fmul <2 x float> %i.bi, %i.bj
  %i.bl = fadd <2 x float> %i.bk, %i.bh           ; 2 uses
  %shift = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bl, %shift
  %i.bm = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %i.bo = fneg float %i.bm
  %i.bp = select i1 %i.bn, float %i.bo, float %i.bm
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %6 = load <2 x float>, ptr %i.bq, align 8       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %8 = load <2 x float>, ptr %7, align 8          ; 2 uses
  %9 = shufflevector <2 x float> %8, <2 x float> %6, <2 x i32> <i32 0, i32 3>
  %i.br = fmul <2 x float> %1, %9
  %i.bs = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = shufflevector <2 x float> %6, <2 x float> %8, <2 x i32> <i32 3, i32 0>
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fadd <2 x float> %i.bu, %i.br           ; 2 uses
  %shift79 = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop80 = fsub <2 x float> %i.bv, %shift79
  %i.bw = extractelement <2 x float> %foldExtExtBinop80, i64 0 ; 3 uses
  %i.bx = fcmp olt float %i.bw, 0.000000e+00
  %i.by = fneg float %i.bw
  %i.bz = select i1 %i.bx, float %i.by, float %i.bw
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %._crit_edge, %bb.c, %bb.b
  %.0 = phi float [ %i.bz, %bb.f ], [ %i.p, %bb.b ], [ %i.s, %bb.c ], [ %i.ao, %._crit_edge ], [ %i.bp, %bb.e ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, <2 x float> } @b2ComputeShapeMass(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  switch i32 %i.b, label %bb.e [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load float, ptr %i.d, align 8, !tbaa !142
  %i.f = tail call { <2 x float>, <2 x float> } @b2ComputeCapsuleMass(ptr noundef nonnull %i.c, float noundef %i.e) #9 ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load float, ptr %i.j, align 8, !tbaa !142
  %i.l = tail call { <2 x float>, <2 x float> } @b2ComputeCircleMass(ptr noundef nonnull %i.i, float noundef %i.k) #9 ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load float, ptr %i.p, align 8, !tbaa !142
  %i.r = tail call { <2 x float>, <2 x float> } @b2ComputePolygonMass(ptr noundef nonnull %i.o, float noundef %i.q) #9 ; 2 uses
  %i.s = extractvalue { <2 x float>, <2 x float> } %i.r, 0
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.r, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %i.s, %bb.d ], [ %i.g, %bb.b ], [ %i.m, %bb.c ], [ zeroinitializer, %bb.a ]
  %.sroa.6.0 = phi <2 x float> [ %i.t, %bb.d ], [ %i.h, %bb.b ], [ %i.n, %bb.c ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare { <2 x float>, <2 x float> } @b2ComputeCapsuleMass(ptr noundef, float noundef) local_unnamed_addr #3

declare { <2 x float>, <2 x float> } @b2ComputeCircleMass(ptr noundef, float noundef) local_unnamed_addr #3

declare { <2 x float>, <2 x float> } @b2ComputePolygonMass(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden <2 x float> @b2ComputeShapeExtent(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  switch i32 %i.b, label %bb.h [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.f
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load float, ptr %i.d, align 8, !tbaa !85 ; 2 uses
  %.sroa.049.0.vec.insert = insertelement <2 x float> poison, float %i.e, i64 0
  %i.f = load <2 x float>, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load <2 x float>, ptr %i.g, align 8
  %i.i = fsub <2 x float> %i.f, %1                ; 2 uses
  %i.j = fmul <2 x float> %i.i, %i.i
  %i.k = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.j) ; 2 uses
  %i.l = fsub <2 x float> %i.h, %1                ; 2 uses
  %i.m = fmul <2 x float> %i.l, %i.l
  %i.n = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.m) ; 2 uses
  %i.o = fcmp ogt float %i.k, %i.n
  %i.p = select i1 %i.o, float %i.k, float %i.n
  %sqrt = tail call float @llvm.sqrt.f32(float %i.p)
  %i.q = fadd float %i.e, %sqrt
  %.sroa.049.4.vec.insert = insertelement <2 x float> %.sroa.049.0.vec.insert, float %i.q, i64 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load float, ptr %i.s, align 8, !tbaa !85 ; 2 uses
  %.sroa.049.0.vec.insert52 = insertelement <2 x float> poison, float %i.t, i64 0
  %i.u = load <2 x float>, ptr %i.r, align 8
  %i.v = fsub <2 x float> %i.u, %1                ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.v
  %i.x = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.w)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.x)
  %i.y = fadd float %i.t, %sqrt.i
  %.sroa.049.4.vec.insert60 = insertelement <2 x float> %.sroa.049.0.vec.insert52, float %i.y, i64 1
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = tail call float @b2GetLengthUnitsPerMeter() #9
  %i.ab = fmul float %i.aa, 1.000000e+05          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !149 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ah = load <2 x float>, ptr %i.ag, align 4    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ad to i64
  %i.ai = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %1, <2 x i32> <i32 0, i32 2>
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.al = extractelement <2 x float> %i.bi, i64 1
  %i.am = tail call float @llvm.sqrt.f32(float %i.al)
  %i.an = extractelement <2 x float> %i.bi, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.067.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %i.am, %._crit_edge.loopexit ]
  %.0.lcssa = phi float [ %i.ab, %bb.d ], [ %i.an, %._crit_edge.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !219 ; 2 uses
  %i.aq = fadd float %.0.lcssa, %i.ap
  %.sroa.049.0.vec.insert54 = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ar = fadd float %.067.lcssa, %i.ap
  %.sroa.049.4.vec.insert62 = insertelement <2 x float> %.sroa.049.0.vec.insert54, float %i.ar, i64 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.as = phi <2 x float> [ %i.ai, %.lr.ph ], [ %i.bi, %bb.e ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.at, align 4, !tbaa !68 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.av = load <2 x float>, ptr %i.au, align 4    ; 2 uses
  %i.aw = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fsub <2 x float> %i.aw, %i.aj           ; 2 uses
  %i.ay = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fsub <2 x float> %i.ay, %i.ak           ; 2 uses
  %i.ba = shufflevector <2 x float> %i.av, <2 x float> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.bb = fmul <2 x float> %i.ba, %i.ax
  %i.bc = shufflevector <2 x float> %i.av, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bd = fmul <2 x float> %i.bc, %i.az
  %i.be = fadd <2 x float> %i.bb, %i.bd           ; 3 uses
  %i.bf = shufflevector <2 x float> %i.as, <2 x float> %i.be, <2 x i32> <i32 0, i32 3>
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.as, <2 x i32> <i32 0, i32 3>
  %i.bh = fcmp olt <2 x float> %i.bf, %i.bg
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.as, <2 x float> %i.be ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !218

bb.f:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bk = load <2 x float>, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bm = load <2 x float>, ptr %i.bl, align 8
  %i.bn = fsub <2 x float> %i.bk, %1              ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bo) ; 2 uses
  %i.bq = fsub <2 x float> %i.bm, %1              ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %i.bq
  %i.bs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.br) ; 2 uses
  %i.bt = fcmp ogt float %i.bp, %i.bs
  %i.bu = select i1 %i.bt, float %i.bp, float %i.bs
  %sqrt138 = tail call float @llvm.sqrt.f32(float %i.bu)
  %.sroa.049.4.vec.insert64 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt138, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bw = load <2 x float>, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = load <2 x float>, ptr %i.bx, align 8
  %i.bz = fsub <2 x float> %i.bw, %1              ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bz
  %i.cb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ca) ; 2 uses
end_hunk_0
