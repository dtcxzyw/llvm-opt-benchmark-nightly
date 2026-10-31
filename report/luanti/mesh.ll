Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mesh?download=true
inline.NumInlined: 1139
inline.NumDeleted: 537
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z12setMeshColorPN5scene5IMeshEN5video6SColorE:bb.a
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !186 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(28) %i.ab), !inline_history !186 ; 9 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph
  %wide.trip.count.i.i = zext i32 %i.x to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.ag = icmp ult i32 %i.x, 8
  br i1 %i.ag, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967288
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.ah = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ai = mul i32 %i.p, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %1, ptr %i.al, align 4, !tbaa !22
  %i.am = trunc i64 %indvars.iv.i.i to i32
  %i.an = or disjoint i32 %i.am, 1
  %i.ao = mul i32 %i.p, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %1, ptr %i.ar, align 4, !tbaa !22
  %i.as = trunc i64 %indvars.iv.i.i to i32
  %i.at = or disjoint i32 %i.as, 2
  %i.au = mul i32 %i.p, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i32 %1, ptr %i.ax, align 4, !tbaa !22
  %i.ay = trunc i64 %indvars.iv.i.i to i32
  %i.az = or disjoint i32 %i.ay, 3
  %i.ba = mul i32 %i.p, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i32 %1, ptr %i.bd, align 4, !tbaa !22
  %i.be = trunc i64 %indvars.iv.i.i to i32
  %i.bf = or disjoint i32 %i.be, 4
  %i.bg = mul i32 %i.p, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i32 %1, ptr %i.bj, align 4, !tbaa !22
  %i.bk = trunc i64 %indvars.iv.i.i to i32
  %i.bl = or disjoint i32 %i.bk, 5
  %i.bm = mul i32 %i.p, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 %1, ptr %i.bp, align 4, !tbaa !22
  %i.bq = trunc i64 %indvars.iv.i.i to i32
  %i.br = or disjoint i32 %i.bq, 6
  %i.bs = mul i32 %i.p, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i32 %1, ptr %i.bv, align 4, !tbaa !22
  %i.bw = trunc i64 %indvars.iv.i.i to i32
  %i.bx = or disjoint i32 %i.bw, 7
  %i.by = mul i32 %i.p, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i32 %1, ptr %i.cb, align 4, !tbaa !22
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.cc = trunc nuw i64 %indvars.iv.i.i.epil to i32
  %i.cd = mul i32 %i.p, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i32 %1, ptr %i.cg, align 4, !tbaa !22
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit, label %.lr.ph.i.i.epil, !llvm.loop !187

_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit: ; preds = %_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.lr.ph
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !188
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ck)
  %i.cl = add nuw i32 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !189

.loopexit:                                        ; preds = %_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEE(ptr noundef %0, i32 %1, float noundef %2, <2 x float> %3, float %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !190 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(28) %i.d), !inline_history !190
  %i.i = load ptr, ptr %0, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !191 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(28) %i.l), !inline_history !191 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(28) %i.t), !inline_history !192
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %"_ZL17applyToMeshBufferIZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEE3$_0EvS2_RKT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext i32 %i.p to i64
  %.sroa.4.4.vec.extract = extractelement <2 x float> %3, i64 0
  %i.y = fneg nsz float %.sroa.4.4.vec.extract
  %.sroa.4.8.vec.extract = extractelement <2 x float> %3, i64 1
  %i.z = fneg nsz float %.sroa.4.8.vec.extract
  %i.aa = fneg nsz float %4
  %i.ab = lshr i32 %1, 16
  %i.ac = and i32 %i.ab, 255
  %i.ad = uitofp nsz nneg i32 %i.ac to float
  %i.ae = and i32 %1, -16777216
  %i.af = lshr i32 %1, 8
  %i.ag = and i32 %i.af, 255
  %i.ah = uitofp nsz nneg i32 %i.ag to float
  %i.ai = and i32 %1, 255
  %i.aj = uitofp nsz nneg i32 %i.ai to float
  br label %bb.b

bb.b:                                             ; preds = %"_ZZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEENK3$_0clINS2_9S3DVertexEEEDaPT_.exit.i", %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %"_ZZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEENK3$_0clINS2_9S3DVertexEEEDaPT_.exit.i" ] ; 2 uses
  %i.ak = trunc nuw i64 %indvars.iv.i to i32
  %i.al = mul i32 %i.h, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  store i32 %1, ptr %i.ao, align 4, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ap, align 4, !tbaa !21 ; 4 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0 ; 3 uses
  %i.as = fcmp nsz oeq float %i.ar, 0.000000e+00
  %i.at = extractelement <2 x float> %i.aq, i64 1 ; 3 uses
  %i.au = fcmp nsz oeq float %i.at, 0.000000e+00
  %or.cond.i.i = select i1 %i.as, i1 %i.au, i1 false
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !78 ; 5 uses
  %i.ax = fcmp nsz oeq float %i.aw, 0.000000e+00
  %or.cond.i = select i1 %or.cond.i.i, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %"_ZZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEENK3$_0clINS2_9S3DVertexEEEDaPT_.exit.i", label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread.i.i

_ZNK4core8vector3dIfEeqERKS1_.exit.thread.i.i:    ; preds = %bb.b
  %i.ay = fmul nsz float %i.at, %i.at
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.ay)
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.az) ; 2 uses
  %i.bb = fcmp nsz oeq float %i.ba, 0.000000e+00
  br i1 %i.bb, label %_ZN4core8vector3dIfE9normalizeEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit.thread.i.i
  %i.bc = fpext nsz float %i.ba to double
  %i.bd = tail call nsz double @llvm.sqrt.f64(double %i.bc)
  %i.be = fdiv nsz double 1.000000e+00, %i.bd     ; 2 uses
  %i.bf = fpext nsz <2 x float> %i.aq to <2 x double>
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul nsz <2 x double> %i.bh, %i.bf
  %i.bj = fptrunc nsz <2 x double> %i.bi to <2 x float> ; 2 uses
  store <2 x float> %i.bj, ptr %i.ap, align 4, !tbaa !21
  %i.bk = fpext nsz float %i.aw to double
  %i.bl = fmul nsz double %i.be, %i.bk
  %i.bm = fptrunc nsz double %i.bl to float       ; 2 uses
  store float %i.bm, ptr %i.av, align 4, !tbaa !78
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i.i

_ZN4core8vector3dIfE9normalizeEv.exit.i.i:        ; preds = %bb.c, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread.i.i
  %i.bn = phi float [ %i.aw, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread.i.i ], [ %i.bm, %bb.c ]
  %i.bo = phi <2 x float> [ %i.aq, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread.i.i ], [ %i.bj, %bb.c ] ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 1
  %i.bq = fmul nsz float %i.bp, %i.z
  %i.br = extractelement <2 x float> %i.bo, i64 0
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.y, float %i.bq)
  %i.bt = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bn, float %i.aa, float %i.bs)
  %i.bu = tail call nsz noundef float @llvm.fabs.f32(float %i.bt)
  %i.bv = fadd nsz float %2, %i.bu                ; 2 uses
  %i.bw = fcmp nsz olt float %i.bv, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.bw, float %i.bv, float 1.000000e+00 ; 3 uses
  %i.bx = fmul nsz float %.sroa.speculated.i.i, %i.ad
  %i.by = fadd nsz float %i.bx, 5.000000e-01
  %i.bz = tail call nsz noundef float @llvm.floor.f32(float %i.by)
  %i.ca = fptosi float %i.bz to i32
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 0)
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 255)
  %i.cd = shl nuw nsw i32 %i.cc, 16
  %i.ce = fmul nsz float %.sroa.speculated.i.i, %i.ah
  %i.cf = fadd nsz float %i.ce, 5.000000e-01
  %i.cg = tail call nsz noundef float @llvm.floor.f32(float %i.cf)
  %i.ch = fptosi float %i.cg to i32
  %i.ci = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 255)
  %i.ck = shl nuw nsw i32 %i.cj, 8
  %i.cl = or disjoint i32 %i.cd, %i.ck
  %i.cm = or disjoint i32 %i.cl, %i.ae
  %i.cn = fmul nsz float %.sroa.speculated.i.i, %i.aj
  %i.co = fadd nsz float %i.cn, 5.000000e-01
  %i.cp = tail call nsz noundef float @llvm.floor.f32(float %i.co)
  %i.cq = fptosi float %i.cp to i32
  %i.cr = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 255)
  %i.ct = or disjoint i32 %i.cm, %i.cs
  store i32 %i.ct, ptr %i.ao, align 4, !tbaa !19
  br label %"_ZZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEENK3$_0clINS2_9S3DVertexEEEDaPT_.exit.i"

"_ZZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEENK3$_0clINS2_9S3DVertexEEEDaPT_.exit.i": ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit.i.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %"_ZL17applyToMeshBufferIZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEE3$_0EvS2_RKT_.exit", label %bb.b, !llvm.loop !193

"_ZL17applyToMeshBufferIZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEE3$_0EvS2_RKT_.exit": ; preds = %"_ZZ18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEEENK3$_0clINS2_9S3DVertexEEEDaPT_.exit.i", %bb.a
  %i.cu = load ptr, ptr %0, align 8, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !194
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.cx)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES3_S3_(ptr noundef %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %"_ZL11applyToMeshIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvS2_RKT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !195
  %i.d = and i32 %i.c, 65535                      ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %"_ZL11applyToMeshIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvS2_RKT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %"_ZL17applyToMeshBufferIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvPNS0_11IMeshBufferERKT_.exit.i"
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %"_ZL17applyToMeshBufferIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvPNS0_11IMeshBufferERKT_.exit.i" ], [ 0, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %indvars.iv.i), !inline_history !195 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !196 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(28) %i.l), !inline_history !196
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !197 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(28) %i.t), !inline_history !197 ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !198 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(28) %i.ab), !inline_history !198
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %"_ZL17applyToMeshBufferIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvPNS0_11IMeshBufferERKT_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %wide.trip.count.i.i = zext i32 %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %"_ZZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES3_S3_ENK3$_0clEPNS2_9S3DVertexE.exit.i.i", %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %"_ZZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES3_S3_ENK3$_0clEPNS2_9S3DVertexE.exit.i.i" ] ; 2 uses
  %i.ag = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ah = mul i32 %i.p, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load <2 x float>, ptr %i.ak, align 4, !tbaa !21
  %i.am = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !202
  %i.ap = tail call nsz float @llvm.fabs.f32(float %i.ao) ; 2 uses
  %i.aq = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.ar = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %i.as = fcmp nsz ult float %i.aq, %i.ar
  %i.at = fcmp nsz ult float %i.aq, %i.ap
  %or.cond.i.i.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i32 %1, ptr %i.au, align 4, !tbaa !22
  br label %"_ZZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES3_S3_ENK3$_0clEPNS2_9S3DVertexE.exit.i.i"

bb.e:                                             ; preds = %bb.c
  %i.av = fcmp nsz ult float %i.ar, %i.ap
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %2, ptr %i.aw, align 4, !tbaa !22
  br label %"_ZZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES3_S3_ENK3$_0clEPNS2_9S3DVertexE.exit.i.i"

bb.g:                                             ; preds = %bb.e
  store i32 %3, ptr %i.aw, align 4, !tbaa !22
  br label %"_ZZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES3_S3_ENK3$_0clEPNS2_9S3DVertexE.exit.i.i"

"_ZZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES3_S3_ENK3$_0clEPNS2_9S3DVertexE.exit.i.i": ; preds = %bb.g, %bb.f, %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %"_ZL17applyToMeshBufferIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvPNS0_11IMeshBufferERKT_.exit.i", label %bb.c, !llvm.loop !199

"_ZL17applyToMeshBufferIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvPNS0_11IMeshBufferERKT_.exit.i": ; preds = %"_ZZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES3_S3_ENK3$_0clEPNS2_9S3DVertexE.exit.i.i", %.lr.ph.i
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !200
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ba)
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %i.d
  br i1 %exitcond.not.i, label %"_ZL11applyToMeshIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvS2_RKT_.exit", label %.lr.ph.i, !llvm.loop !201

"_ZL11applyToMeshIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvS2_RKT_.exit": ; preds = %"_ZL17applyToMeshBufferIZ23setMeshColorByNormalXYZPN5scene5IMeshEN5video6SColorES4_S4_E3$_0EvPNS0_11IMeshBufferERKT_.exit.i", %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorE(ptr noundef %0, <2 x float> %1, float %2, i32 %3) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %"_ZL11applyToMeshIZ20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorEE3$_0EvS2_RKT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !203
  %i.d = and i32 %i.c, 65535                      ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %"_ZL11applyToMeshIZ20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorEE3$_0EvS2_RKT_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %"_ZL17applyToMeshBufferIZ20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorEE3$_0EvPNS0_11IMeshBufferERKT_.exit.i"
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %"_ZL17applyToMeshBufferIZ20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorEE3$_0EvPNS0_11IMeshBufferERKT_.exit.i" ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %indvars.iv.i), !inline_history !203 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !inline_history !204 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(28) %i.l), !inline_history !204 ; 3 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !31
end_hunk_0
begin_hunk_1_@_Z16checkMeshNormalsPN5scene5IMeshE:bb.a
  %i.ag = tail call float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp one float %i.ag, +inf
  %i.ai = fcmp nsz uge float %i.af, 1.000000e-10
  %or.cond.not = and i1 %i.ai, %i.ah
  br i1 %or.cond.not, label %select.unfold, label %.critedge

select.unfold:                                    ; preds = %bb.b, %.lr.ph
  %i.aj = add nuw i32 %.01321, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, %i.c
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !233

.critedge:                                        ; preds = %select.unfold, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %select.unfold ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_Z15cloneMeshBufferPN5scene11IMeshBufferE(ptr noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !234 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(28) %i.d), !inline_history !234
  switch i32 %i.h, label %bb.t [
    i32 0, label %bb.b
    i32 1, label %bb.h
    i32 2, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !235 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(28) %i.l), !inline_history !235
  %i.q = load ptr, ptr %0, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !236 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(28) %i.t), !inline_history !236
  %i.y = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #20 ; 12 uses
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.y)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %0, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !237 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(28) %i.ac), !inline_history !237
  %i.ah = load ptr, ptr %0, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !238 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(28) %i.ak), !inline_history !238
  tail call void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE6appendEPKvjPKtj(ptr noundef nonnull align 8 dereferenceable(200) %i.y, ptr noundef %i.p, i32 noundef %i.ag, ptr noundef %i.x, i32 noundef %i.ao)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.ap, getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene15SSkinMeshBufferE, i64 24)
  br i1 %.not.i, label %bb.e, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit

common.resume:                                    ; preds = %bb.p, %bb.j, %bb.d
  %.sink = phi ptr [ %i.ko, %bb.p ], [ %i.fg, %bb.j ], [ %i.y, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.lg, %bb.p ], [ %i.fy, %bb.j ], [ %i.aq, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 200) #21
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.y), !inline_history !239 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(28) %i.au), !inline_history !239
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.y), !inline_history !240 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef i32 %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.bc), !inline_history !240 ; 2 uses
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.y), !inline_history !241 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.bk), !inline_history !241
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count.i.i = zext i32 %i.bg to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPS1_E_clES7_.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPS1_E_clES7_.exit.i.i ] ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.i.i to i32
  %i.by = mul i32 %i.ay, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bz ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cd = load float, ptr %i.ca, align 4, !tbaa !81 ; 2 uses
  %i.ce = load float, ptr %i.cb, align 4, !tbaa !82 ; 2 uses
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !78 ; 2 uses
  %i.cg = load <2 x float>, ptr %i.bp, align 8, !tbaa !21
  %i.ch = load <2 x float>, ptr %i.bq, align 8, !tbaa !21
  %i.ci = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul nsz <2 x float> %i.cj, %i.ch
  %i.cl = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cg, <2 x float> %i.ck)
  %i.co = load <2 x float>, ptr %i.br, align 8, !tbaa !21
  %i.cp = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.co, <2 x float> %i.cn)
  %i.cs = load <2 x float>, ptr %i.bs, align 8, !tbaa !21
  %i.ct = fadd nsz <2 x float> %i.cr, %i.cs
  %i.cu = load float, ptr %i.bt, align 8, !tbaa !21
  %i.cv = load float, ptr %i.bu, align 8, !tbaa !21
  %i.cw = fmul nsz float %i.ce, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.cd, float %i.cu, float %i.cw)
  %i.cy = load float, ptr %i.bv, align 8, !tbaa !21
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %i.cy, float %i.cx)
  %i.da = load float, ptr %i.bw, align 8, !tbaa !21
  %i.db = fadd nsz float %i.da, %i.cz
  store <2 x float> %i.ct, ptr %i.ca, align 4, !tbaa !21
  store float %i.db, ptr %i.cc, align 4, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 3 uses
  %i.df = load float, ptr %i.dc, align 4, !tbaa !81 ; 2 uses
  %i.dg = load float, ptr %i.dd, align 4, !tbaa !82 ; 2 uses
  %i.dh = load float, ptr %i.de, align 4, !tbaa !78 ; 2 uses
  %i.di = load <2 x float>, ptr %i.bp, align 8, !tbaa !21
  %i.dj = load <2 x float>, ptr %i.bq, align 8, !tbaa !21
  %i.dk = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul nsz <2 x float> %i.dl, %i.dj
  %i.dn = insertelement <2 x float> poison, float %i.df, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.di, <2 x float> %i.dm)
  %i.dq = load <2 x float>, ptr %i.br, align 8, !tbaa !21
  %i.dr = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dq, <2 x float> %i.dp) ; 5 uses
  %i.du = load float, ptr %i.bt, align 8, !tbaa !21
  %i.dv = load float, ptr %i.bu, align 8, !tbaa !21
  %i.dw = fmul nsz float %i.dg, %i.dv
  %i.dx = tail call nsz float @llvm.fmuladd.f32(float %i.df, float %i.du, float %i.dw)
  %i.dy = load float, ptr %i.bv, align 8, !tbaa !21
  %i.dz = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.dy, float %i.dx) ; 4 uses
  store <2 x float> %i.dt, ptr %i.dc, align 4, !tbaa !21
  store float %i.dz, ptr %i.de, align 4, !tbaa !21
  %foldExtExtBinop = fmul nsz <2 x float> %i.dt, %i.dt
  %i.ea = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.eb = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.eb, float %i.ea)
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.ec) ; 2 uses
  %i.ee = fcmp nsz oeq float %i.ed, 0.000000e+00
  br i1 %i.ee, label %_ZZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPS1_E_clES7_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ef = fpext nsz float %i.ed to double
  %i.eg = tail call nsz double @llvm.sqrt.f64(double %i.ef)
  %i.eh = fdiv nsz double 1.000000e+00, %i.eg     ; 2 uses
  %i.ei = fpext nsz <2 x float> %i.dt to <2 x double>
  %i.ej = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul nsz <2 x double> %i.ek, %i.ei
  %i.em = fptrunc nsz <2 x double> %i.el to <2 x float>
  store <2 x float> %i.em, ptr %i.dc, align 4, !tbaa !21
  %i.en = fpext nsz float %i.dz to double
  %i.eo = fmul nsz double %i.eh, %i.en
  %i.ep = fptrunc nsz double %i.eo to float
  store float %i.ep, ptr %i.de, align 4, !tbaa !78
  br label %_ZZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPS1_E_clES7_.exit.i.i

_ZZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPS1_E_clES7_.exit.i.i: ; preds = %bb.g, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split, label %bb.f, !llvm.loop !242

bb.h:                                             ; preds = %bb.a
  %i.eq = load ptr, ptr %0, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef ptr %i.es(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !243 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !31
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = tail call noundef ptr %i.ew(ptr noundef nonnull align 8 dereferenceable(28) %i.et), !inline_history !243
  %i.ey = load ptr, ptr %0, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef ptr %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !244 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !31
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = tail call noundef ptr %i.fe(ptr noundef nonnull align 8 dereferenceable(28) %i.fb), !inline_history !244
  %i.fg = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #20 ; 12 uses
  invoke void @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.fg)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fh = load ptr, ptr %0, align 8, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = tail call noundef ptr %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !245 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = tail call noundef i32 %i.fn(ptr noundef nonnull align 8 dereferenceable(28) %i.fk), !inline_history !245
  %i.fp = load ptr, ptr %0, align 8, !tbaa !31
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !246 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !31
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = tail call noundef i32 %i.fv(ptr noundef nonnull align 8 dereferenceable(28) %i.fs), !inline_history !246
  tail call void @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE6appendEPKvjPKtj(ptr noundef nonnull align 8 dereferenceable(200) %i.fg, ptr noundef %i.ex, i32 noundef %i.fo, ptr noundef %i.ff, i32 noundef %i.fw)
  %i.fx = load ptr, ptr %0, align 8, !tbaa !31
  %.not.i5 = icmp eq ptr %i.fx, getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene15SSkinMeshBufferE, i64 24)
  br i1 %.not.i5, label %bb.k, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit

bb.j:                                             ; preds = %bb.h
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.k:                                             ; preds = %bb.i
  %i.fz = load ptr, ptr %i.fg, align 8, !tbaa !31
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = tail call noundef ptr %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.fg), !inline_history !247 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !31
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = tail call noundef i32 %i.gf(ptr noundef nonnull align 8 dereferenceable(28) %i.gc), !inline_history !247
  %i.gh = load ptr, ptr %i.fg, align 8, !tbaa !31
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = tail call noundef ptr %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %i.fg), !inline_history !248 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !31
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = tail call noundef i32 %i.gn(ptr noundef nonnull align 8 dereferenceable(28) %i.gk), !inline_history !248 ; 2 uses
  %i.gp = load ptr, ptr %i.fg, align 8, !tbaa !31
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = tail call noundef ptr %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.fg), !inline_history !249 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !31
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = tail call noundef ptr %i.gv(ptr noundef nonnull align 8 dereferenceable(28) %i.gs), !inline_history !249
  %.not.i.i6 = icmp eq i32 %i.go, 0
  br i1 %.not.i.i6, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.k
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count.i.i8 = zext i32 %i.go to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZZL15cloneMeshBufferIN5video17S3DVertex2TCoordsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i, %.lr.ph.i.i7
  %indvars.iv.i.i9 = phi i64 [ 0, %.lr.ph.i.i7 ], [ %indvars.iv.next.i.i14, %_ZZL15cloneMeshBufferIN5video17S3DVertex2TCoordsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i ] ; 2 uses
  %i.hf = trunc nuw i64 %indvars.iv.i.i9 to i32
  %i.hg = mul i32 %i.gg, %i.hf
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hh ; 7 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hl = load float, ptr %i.hi, align 4, !tbaa !81 ; 2 uses
  %i.hm = load float, ptr %i.hj, align 4, !tbaa !82 ; 2 uses
  %i.hn = load float, ptr %i.hk, align 4, !tbaa !78 ; 2 uses
  %i.ho = load <2 x float>, ptr %i.gx, align 8, !tbaa !21
  %i.hp = load <2 x float>, ptr %i.gy, align 8, !tbaa !21
  %i.hq = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul nsz <2 x float> %i.hr, %i.hp
  %i.ht = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.ho, <2 x float> %i.hs)
  %i.hw = load <2 x float>, ptr %i.gz, align 8, !tbaa !21
  %i.hx = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.hw, <2 x float> %i.hv)
  %i.ia = load <2 x float>, ptr %i.ha, align 8, !tbaa !21
  %i.ib = fadd nsz <2 x float> %i.hz, %i.ia
  %i.ic = load float, ptr %i.hb, align 8, !tbaa !21
  %i.id = load float, ptr %i.hc, align 8, !tbaa !21
  %i.ie = fmul nsz float %i.hm, %i.id
  %i.if = tail call nsz float @llvm.fmuladd.f32(float %i.hl, float %i.ic, float %i.ie)
  %i.ig = load float, ptr %i.hd, align 8, !tbaa !21
  %i.ih = tail call nsz float @llvm.fmuladd.f32(float %i.hn, float %i.ig, float %i.if)
  %i.ii = load float, ptr %i.he, align 8, !tbaa !21
  %i.ij = fadd nsz float %i.ii, %i.ih
  store <2 x float> %i.ib, ptr %i.hi, align 4, !tbaa !21
  store float %i.ij, ptr %i.hk, align 4, !tbaa !21
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hi, i64 12 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %i.hi, i64 20 ; 3 uses
  %i.in = load float, ptr %i.ik, align 4, !tbaa !81 ; 2 uses
  %i.io = load float, ptr %i.il, align 4, !tbaa !82 ; 2 uses
  %i.ip = load float, ptr %i.im, align 4, !tbaa !78 ; 2 uses
  %i.iq = load <2 x float>, ptr %i.gx, align 8, !tbaa !21
  %i.ir = load <2 x float>, ptr %i.gy, align 8, !tbaa !21
  %i.is = insertelement <2 x float> poison, float %i.io, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = fmul nsz <2 x float> %i.it, %i.ir
  %i.iv = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.iq, <2 x float> %i.iu)
  %i.iy = load <2 x float>, ptr %i.gz, align 8, !tbaa !21
  %i.iz = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ja, <2 x float> %i.iy, <2 x float> %i.ix) ; 5 uses
  %i.jc = load float, ptr %i.hb, align 8, !tbaa !21
  %i.jd = load float, ptr %i.hc, align 8, !tbaa !21
  %i.je = fmul nsz float %i.io, %i.jd
  %i.jf = tail call nsz float @llvm.fmuladd.f32(float %i.in, float %i.jc, float %i.je)
  %i.jg = load float, ptr %i.hd, align 8, !tbaa !21
  %i.jh = tail call nsz float @llvm.fmuladd.f32(float %i.ip, float %i.jg, float %i.jf) ; 4 uses
  store <2 x float> %i.jb, ptr %i.ik, align 4, !tbaa !21
  store float %i.jh, ptr %i.im, align 4, !tbaa !21
  %foldExtExtBinop42 = fmul nsz <2 x float> %i.jb, %i.jb
  %i.ji = extractelement <2 x float> %foldExtExtBinop42, i64 1
  %i.jj = extractelement <2 x float> %i.jb, i64 0 ; 2 uses
  %i.jk = tail call nsz float @llvm.fmuladd.f32(float %i.jj, float %i.jj, float %i.ji)
  %i.jl = tail call nsz float @llvm.fmuladd.f32(float %i.jh, float %i.jh, float %i.jk) ; 2 uses
  %i.jm = fcmp nsz oeq float %i.jl, 0.000000e+00
  br i1 %i.jm, label %_ZZL15cloneMeshBufferIN5video17S3DVertex2TCoordsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jn = fpext nsz float %i.jl to double
  %i.jo = tail call nsz double @llvm.sqrt.f64(double %i.jn)
  %i.jp = fdiv nsz double 1.000000e+00, %i.jo     ; 2 uses
  %i.jq = fpext nsz <2 x float> %i.jb to <2 x double>
  %i.jr = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fmul nsz <2 x double> %i.js, %i.jq
  %i.ju = fptrunc nsz <2 x double> %i.jt to <2 x float>
  store <2 x float> %i.ju, ptr %i.ik, align 4, !tbaa !21
  %i.jv = fpext nsz float %i.jh to double
  %i.jw = fmul nsz double %i.jp, %i.jv
  %i.jx = fptrunc nsz double %i.jw to float
  store float %i.jx, ptr %i.im, align 4, !tbaa !78
  br label %_ZZL15cloneMeshBufferIN5video17S3DVertex2TCoordsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i

_ZZL15cloneMeshBufferIN5video17S3DVertex2TCoordsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i: ; preds = %bb.m, %bb.l
  %indvars.iv.next.i.i14 = add nuw nsw i64 %indvars.iv.i.i9, 1 ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %indvars.iv.next.i.i14, %wide.trip.count.i.i8
  br i1 %exitcond.not.i.i15, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split, label %bb.l, !llvm.loop !250

bb.n:                                             ; preds = %bb.a
  %i.jy = load ptr, ptr %0, align 8, !tbaa !31
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = tail call noundef ptr %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !251 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !31
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 56
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = tail call noundef ptr %i.ke(ptr noundef nonnull align 8 dereferenceable(28) %i.kb), !inline_history !251
  %i.kg = load ptr, ptr %0, align 8, !tbaa !31
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = tail call noundef ptr %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !252 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !31
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 56
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = tail call noundef ptr %i.km(ptr noundef nonnull align 8 dereferenceable(28) %i.kj), !inline_history !252
  %i.ko = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #20 ; 12 uses
  invoke void @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.ko)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.kp = load ptr, ptr %0, align 8, !tbaa !31
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = tail call noundef ptr %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !253 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !31
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = tail call noundef i32 %i.kv(ptr noundef nonnull align 8 dereferenceable(28) %i.ks), !inline_history !253
  %i.kx = load ptr, ptr %0, align 8, !tbaa !31
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = tail call noundef ptr %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !254 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !31
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = tail call noundef i32 %i.ld(ptr noundef nonnull align 8 dereferenceable(28) %i.la), !inline_history !254
  tail call void @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE6appendEPKvjPKtj(ptr noundef nonnull align 8 dereferenceable(200) %i.ko, ptr noundef %i.kf, i32 noundef %i.kw, ptr noundef %i.kn, i32 noundef %i.le)
  %i.lf = load ptr, ptr %0, align 8, !tbaa !31
  %.not.i16 = icmp eq ptr %i.lf, getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene15SSkinMeshBufferE, i64 24)
  br i1 %.not.i16, label %bb.q, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit

bb.p:                                             ; preds = %bb.n
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.q:                                             ; preds = %bb.o
  %i.lh = load ptr, ptr %i.ko, align 8, !tbaa !31
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = tail call noundef ptr %i.lj(ptr noundef nonnull align 8 dereferenceable(8) %i.ko), !inline_history !255 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !31
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = tail call noundef i32 %i.ln(ptr noundef nonnull align 8 dereferenceable(28) %i.lk), !inline_history !255
  %i.lp = load ptr, ptr %i.ko, align 8, !tbaa !31
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = tail call noundef ptr %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %i.ko), !inline_history !256 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !31
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = tail call noundef i32 %i.lv(ptr noundef nonnull align 8 dereferenceable(28) %i.ls), !inline_history !256 ; 2 uses
  %i.lx = load ptr, ptr %i.ko, align 8, !tbaa !31
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = tail call noundef ptr %i.lz(ptr noundef nonnull align 8 dereferenceable(8) %i.ko), !inline_history !257 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !31
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = tail call noundef ptr %i.md(ptr noundef nonnull align 8 dereferenceable(28) %i.ma), !inline_history !257
  %.not.i.i17 = icmp eq i32 %i.lw, 0
  br i1 %.not.i.i17, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.q
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count.i.i19 = zext i32 %i.lw to i64
  br label %bb.r

bb.r:                                             ; preds = %_ZZL15cloneMeshBufferIN5video17S3DVertexTangentsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i, %.lr.ph.i.i18
  %indvars.iv.i.i20 = phi i64 [ 0, %.lr.ph.i.i18 ], [ %indvars.iv.next.i.i25, %_ZZL15cloneMeshBufferIN5video17S3DVertexTangentsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i ] ; 2 uses
  %i.mn = trunc nuw i64 %indvars.iv.i.i20 to i32
  %i.mo = mul i32 %i.lo, %i.mn
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mp ; 7 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.mt = load float, ptr %i.mq, align 4, !tbaa !81 ; 2 uses
  %i.mu = load float, ptr %i.mr, align 4, !tbaa !82 ; 2 uses
  %i.mv = load float, ptr %i.ms, align 4, !tbaa !78 ; 2 uses
  %i.mw = load <2 x float>, ptr %i.mf, align 8, !tbaa !21
  %i.mx = load <2 x float>, ptr %i.mg, align 8, !tbaa !21
  %i.my = insertelement <2 x float> poison, float %i.mu, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = fmul nsz <2 x float> %i.mz, %i.mx
  %i.nb = insertelement <2 x float> poison, float %i.mt, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> %i.mw, <2 x float> %i.na)
  %i.ne = load <2 x float>, ptr %i.mh, align 8, !tbaa !21
  %i.nf = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> %i.ne, <2 x float> %i.nd)
  %i.ni = load <2 x float>, ptr %i.mi, align 8, !tbaa !21
  %i.nj = fadd nsz <2 x float> %i.nh, %i.ni
  %i.nk = load float, ptr %i.mj, align 8, !tbaa !21
  %i.nl = load float, ptr %i.mk, align 8, !tbaa !21
  %i.nm = fmul nsz float %i.mu, %i.nl
  %i.nn = tail call nsz float @llvm.fmuladd.f32(float %i.mt, float %i.nk, float %i.nm)
  %i.no = load float, ptr %i.ml, align 8, !tbaa !21
  %i.np = tail call nsz float @llvm.fmuladd.f32(float %i.mv, float %i.no, float %i.nn)
  %i.nq = load float, ptr %i.mm, align 8, !tbaa !21
  %i.nr = fadd nsz float %i.nq, %i.np
  store <2 x float> %i.nj, ptr %i.mq, align 4, !tbaa !21
  store float %i.nr, ptr %i.ms, align 4, !tbaa !21
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mq, i64 12 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mq, i64 20 ; 3 uses
  %i.nv = load float, ptr %i.ns, align 4, !tbaa !81 ; 2 uses
  %i.nw = load float, ptr %i.nt, align 4, !tbaa !82 ; 2 uses
  %i.nx = load float, ptr %i.nu, align 4, !tbaa !78 ; 2 uses
  %i.ny = load <2 x float>, ptr %i.mf, align 8, !tbaa !21
  %i.nz = load <2 x float>, ptr %i.mg, align 8, !tbaa !21
  %i.oa = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ob = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oc = fmul nsz <2 x float> %i.ob, %i.nz
  %i.od = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> zeroinitializer
  %i.of = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oe, <2 x float> %i.ny, <2 x float> %i.oc)
  %i.og = load <2 x float>, ptr %i.mh, align 8, !tbaa !21
  %i.oh = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oi, <2 x float> %i.og, <2 x float> %i.of) ; 5 uses
  %i.ok = load float, ptr %i.mj, align 8, !tbaa !21
  %i.ol = load float, ptr %i.mk, align 8, !tbaa !21
  %i.om = fmul nsz float %i.nw, %i.ol
  %i.on = tail call nsz float @llvm.fmuladd.f32(float %i.nv, float %i.ok, float %i.om)
  %i.oo = load float, ptr %i.ml, align 8, !tbaa !21
  %i.op = tail call nsz float @llvm.fmuladd.f32(float %i.nx, float %i.oo, float %i.on) ; 4 uses
  store <2 x float> %i.oj, ptr %i.ns, align 4, !tbaa !21
  store float %i.op, ptr %i.nu, align 4, !tbaa !21
  %foldExtExtBinop44 = fmul nsz <2 x float> %i.oj, %i.oj
  %i.oq = extractelement <2 x float> %foldExtExtBinop44, i64 1
  %i.or = extractelement <2 x float> %i.oj, i64 0 ; 2 uses
  %i.os = tail call nsz float @llvm.fmuladd.f32(float %i.or, float %i.or, float %i.oq)
  %i.ot = tail call nsz float @llvm.fmuladd.f32(float %i.op, float %i.op, float %i.os) ; 2 uses
  %i.ou = fcmp nsz oeq float %i.ot, 0.000000e+00
  br i1 %i.ou, label %_ZZL15cloneMeshBufferIN5video17S3DVertexTangentsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ov = fpext nsz float %i.ot to double
  %i.ow = tail call nsz double @llvm.sqrt.f64(double %i.ov)
  %i.ox = fdiv nsz double 1.000000e+00, %i.ow     ; 2 uses
  %i.oy = fpext nsz <2 x float> %i.oj to <2 x double>
  %i.oz = insertelement <2 x double> poison, double %i.ox, i64 0
  %i.pa = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pb = fmul nsz <2 x double> %i.pa, %i.oy
  %i.pc = fptrunc nsz <2 x double> %i.pb to <2 x float>
  store <2 x float> %i.pc, ptr %i.ns, align 4, !tbaa !21
  %i.pd = fpext nsz float %i.op to double
  %i.pe = fmul nsz double %i.ox, %i.pd
  %i.pf = fptrunc nsz double %i.pe to float
  store float %i.pf, ptr %i.nu, align 4, !tbaa !78
  br label %_ZZL15cloneMeshBufferIN5video17S3DVertexTangentsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i

_ZZL15cloneMeshBufferIN5video17S3DVertexTangentsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i: ; preds = %bb.s, %bb.r
  %indvars.iv.next.i.i25 = add nuw nsw i64 %indvars.iv.i.i20, 1 ; 2 uses
  %exitcond.not.i.i26 = icmp eq i64 %indvars.iv.next.i.i25, %wide.trip.count.i.i19
  br i1 %exitcond.not.i.i26, label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split, label %bb.r, !llvm.loop !258

bb.t:                                             ; preds = %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 351, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15cloneMeshBufferPN5scene11IMeshBufferE) #22
  unreachable

_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split: ; preds = %_ZZL15cloneMeshBufferIN5video17S3DVertexTangentsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i, %_ZZL15cloneMeshBufferIN5video17S3DVertex2TCoordsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i, %_ZZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPS1_E_clES7_.exit.i.i, %bb.q, %bb.k, %bb.e
  %.sink38 = phi ptr [ %i.fg, %bb.k ], [ %i.y, %bb.e ], [ %i.ko, %bb.q ], [ %i.fg, %_ZZL15cloneMeshBufferIN5video17S3DVertex2TCoordsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i ], [ %i.y, %_ZZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPS1_E_clES7_.exit.i.i ], [ %i.ko, %_ZZL15cloneMeshBufferIN5video17S3DVertexTangentsEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_ENKUlPNS0_9S3DVertexEE_clES8_.exit.i.i ] ; 3 uses
  %i.pg = load ptr, ptr %.sink38, align 8, !tbaa !31
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = tail call noundef ptr %i.pi(ptr noundef nonnull align 8 dereferenceable(8) %.sink38)
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.pj)
  tail call void @_ZN5scene15SSkinMeshBuffer22recalculateBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  br label %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit

_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit: ; preds = %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split, %bb.o, %bb.i, %bb.c
  %.0 = phi ptr [ %i.fg, %bb.i ], [ %i.ko, %bb.o ], [ %i.y, %bb.c ], [ %.sink38, %_ZL15cloneMeshBufferIN5video9S3DVertexEN5scene11CMeshBufferIS1_EEEPNS2_11IMeshBufferES6_.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_Z15cloneStaticMeshPN5scene5IMeshE(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %i.c, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.a, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %i.e = load ptr, ptr %0, align 8, !tbaa !31
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.a
  ret ptr %i.a

bb.b:                                             ; preds = %.lr.ph, %_ZNK17IReferenceCounted4dropEv.exit
  %i.j = phi i32 [ 0, %.lr.ph ], [ %i.am, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %.016 = phi i16 [ 0, %.lr.ph ], [ %i.al, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.j)
  %i.o = tail call noundef ptr @_Z15cloneMeshBufferPN5scene11IMeshBufferE(ptr noundef %i.n) ; 3 uses
  tail call void @_ZN5scene5SMesh13addMeshBufferEPNS_11IMeshBufferE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull %i.o)
  %i.p = load ptr, ptr %0, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.j)
  %i.t = zext i16 %.016 to i64                    ; 3 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.z, %i.t
  br i1 %.not.i.i.i, label %_ZN5scene5SMesh14setTextureSlotEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef %i.t, i64 noundef %i.z) #22
  unreachable

_ZN5scene5SMesh14setTextureSlotEjj.exit:          ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store i32 %i.s, ptr %i.aa, align 4, !tbaa !22
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.o, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !29
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %_ZN5scene5SMesh14setTextureSlotEjj.exit
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #19, !inline_history !0
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %_ZN5scene5SMesh14setTextureSlotEjj.exit, %bb.d
  %i.al = add i16 %.016, 1                        ; 2 uses
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.aq = icmp ugt i32 %i.ap, %i.am
  br i1 %i.aq, label %bb.b, label %._crit_edge, !llvm.loop !259
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_Z22convertNodeboxesToMeshRKSt6vectorIN4core8aabbox3dIfEESaIS2_EEPKff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(address_is_null) %1, float noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [24 x %"struct.video::S3DVertex"], align 16 ; 205 uses
  %i.a = alloca [6 x i16], align 2                ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 1, ptr %i.d, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.b, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #20 ; 7 uses
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.f)
          to label %bb.b unwind label %bb.n

_ZN4core8aabbox3dIfE6repairEv.exit.lr.ph:         ; preds = %_ZNK17IReferenceCounted4dropEv.exit.5
  %.not = icmp eq ptr %1, null                    ; 12 uses
  %.sroa.gep195 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.gep197 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.sroa.gep200 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 132
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 156
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %.sroa.gep203 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.gep206 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 180
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 188
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 200
  %.sroa.gep209 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 212
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 228
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 236
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 240
  %.sroa.gep212 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 244
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 252
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 268
end_hunk_1
