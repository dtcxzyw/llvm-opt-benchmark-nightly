Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyConcaveCollisionAlgorithm?download=true
inline.NumInlined: 428
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfPK24btCollisionObjectWrapperRK16btDispatcherInfoP16btManifoldResult:bb.a

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 888
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !155  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !157  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 68 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !161  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph31.i.i, label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i

.lr.ph31.i.i:                                     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph31.i.i
  %i.q = phi i32 [ %i.n, %.lr.ph31.i.i ], [ %i.aa, %._crit_edge.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph31.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !164  ; 2 uses
  %.not24.i.i = icmp eq ptr %i.t, null
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.h
  %.027.i.i = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.c ] ; 4 uses
  %.01926.i.i = phi ptr [ %.1.i.i, %bb.h ], [ null, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 288
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 280
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i.i
  %.not23.i.i = icmp eq ptr %.01926.i.i, null
  br i1 %.not23.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01926.i.i, i64 288
  store ptr %i.v, ptr %i.z, align 8, !tbaa !166
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.v, ptr %i.s, align 8, !tbaa !164
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.027.i.i, i64 noundef 296) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.01926.i.i, %bb.g ], [ %.027.i.i, %.lr.ph.i.i ]
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre.i.i = load i32, ptr %i.m, align 4, !tbaa !161
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.aa = phi i32 [ %i.q, %bb.c ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i.i, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i, !llvm.loop !1

_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i: ; preds = %._crit_edge.i.i
  %.pr.i = load ptr, ptr %i.k, align 8, !tbaa !157
  br label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i

_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i: ; preds = %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i, %bb.b
  %i.ad = phi ptr [ %.pr.i, %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i ], [ %i.l, %bb.b ] ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #14, !inline_history !170
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !48
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit, !llvm.loop !2

_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit: ; preds = %bb.j, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.al)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !169, !noundef !180
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr %1, ptr %2           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !185
  %i.i = add i32 %i.h, -21
  %i.j = icmp ult i32 %i.i, 9
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef float %i.m(ptr noundef nonnull align 8 dereferenceable(36) %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfPK24btCollisionObjectWrapperRK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(220) %i.o, float noundef %i.n, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %4)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr noundef nonnull %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %struct.LocalTriangleSphereCastCallback, align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !169, !noundef !180
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load float, ptr %i.e, align 4, !tbaa !172 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !172
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !172 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !172 ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.n = fsub float %i.g, %i.m                    ; 2 uses
  %i.o = fsub float %i.i, %i.l                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.q = load float, ptr %i.p, align 4, !tbaa !172
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load float, ptr %i.r, align 4, !tbaa !172 ; 3 uses
  %i.t = fsub float %i.q, %i.s                    ; 2 uses
  %i.u = fmul float %i.o, %i.o
  %i.v = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  %i.y = load float, ptr %i.x, align 4, !tbaa !235 ; 2 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fcmp olt float %i.w, %i.z
  br i1 %i.aa, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = select i1 %i.c, ptr %1, ptr %2          ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !172, !noalias !236 ; 4 uses
  %i.al = load float, ptr %i.ai, align 4, !tbaa !172, !noalias !236 ; 4 uses
  %i.am = load float, ptr %i.aj, align 4, !tbaa !172, !noalias !236 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %8 = load <2 x float>, ptr %i.ab, align 4, !tbaa !172, !noalias !237 ; 3 uses
  %9 = load <2 x float>, ptr %i.aq, align 4, !tbaa !172, !noalias !237 ; 3 uses
  %10 = load <2 x float>, ptr %i.ar, align 4, !tbaa !172, !noalias !237 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = load float, ptr %i.as, align 4, !tbaa !172, !noalias !237 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.av = load float, ptr %i.au, align 4, !tbaa !172, !noalias !237 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !172, !noalias !237 ; 3 uses
  %11 = insertelement <2 x float> poison, float %i.al, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %13 = fmul <2 x float> %12, %9
  %14 = insertelement <2 x float> poison, float %i.ak, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %15, <2 x float> %13)
  %17 = insertelement <2 x float> poison, float %i.am, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %18, <2 x float> %16)
  %i.ay = fmul float %i.al, %i.av
  %i.az = tail call float @llvm.fmuladd.f32(float %i.at, float %i.ak, float %i.ay)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.am, float %i.az)
  %i.bb = fmul float %i.al, %i.l
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ak, float %i.bb)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.am, float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %20 = load <2 x float>, ptr %i.ac, align 4, !tbaa !172, !noalias !238 ; 3 uses
  %21 = load <2 x float>, ptr %i.be, align 4, !tbaa !172, !noalias !238 ; 3 uses
  %22 = load <2 x float>, ptr %i.bf, align 4, !tbaa !172, !noalias !238 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !172, !noalias !238 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !172, !noalias !238 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !172, !noalias !238 ; 3 uses
  %23 = fmul <2 x float> %12, %21
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %15, <2 x float> %23)
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %18, <2 x float> %24)
  %i.bm = load <2 x float>, ptr %i.ae, align 4, !tbaa !172, !noalias !236 ; 7 uses
  %i.bn = load <2 x float>, ptr %i.af, align 4, !tbaa !172, !noalias !236 ; 7 uses
  %i.bo = load <2 x float>, ptr %i.ag, align 4, !tbaa !172, !noalias !236 ; 7 uses
  %i.bp = load float, ptr %i.an, align 4, !tbaa !172, !noalias !239
  %i.bq = fneg float %i.bp                        ; 2 uses
  %i.br = load float, ptr %i.ao, align 4, !tbaa !172, !noalias !239
  %i.bs = fneg float %i.br                        ; 2 uses
  %i.bt = load float, ptr %i.ap, align 4, !tbaa !172, !noalias !239
  %i.bu = fneg float %i.bt                        ; 2 uses
  %i.bv = load <2 x float>, ptr %i.h, align 4, !tbaa !172, !noalias !240 ; 3 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bx = insertelement <2 x float> %i.bw, float %i.bs, i64 0
  %i.by = fmul <2 x float> %12, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.g, i64 1
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %i.ca, <2 x float> %i.by)
  %i.cc = insertelement <2 x float> %i.bv, float %i.bu, i64 0
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %i.cc, <2 x float> %i.cb) ; 3 uses
  %i.ce = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = fmul <2 x float> %i.ce, %9
  %i.cg = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.cg, <2 x float> %i.cf)
  %i.ci = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.ci, <2 x float> %i.ch)
  %i.ck = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %26 = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %27 = fmul <2 x float> %26, %9
  %i.cl = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.cl, <2 x float> %27)
  %i.cm = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.cm, <2 x float> %28)
  %29 = extractelement <2 x float> %i.bn, i64 1
  %30 = extractelement <2 x float> %i.bm, i64 1
  %31 = extractelement <2 x float> %i.bo, i64 1   ; 2 uses
  %i.co = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cp = insertelement <2 x float> %i.co, float %i.bs, i64 1 ; 2 uses
  %i.cq = fmul <2 x float> %i.bn, %i.cp
  %i.cr = insertelement <2 x float> %i.k, float %i.bq, i64 1 ; 2 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.bm, <2 x float> %i.cq)
  %i.ct = insertelement <2 x float> poison, float %i.s, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.bu, i64 1 ; 2 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.bo, <2 x float> %i.cs) ; 2 uses
  %i.cw = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cx = fmul <2 x float> %i.bn, %i.cw
  %i.cy = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.cy, <2 x float> %i.cx)
  %i.da = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.da, <2 x float> %i.cz) ; 2 uses
  %i.dc = fadd <2 x float> %i.cv, %i.db           ; 6 uses
  %i.dd = extractelement <2 x float> %i.cd, i64 0
  %i.de = fadd float %i.dd, %i.bd                 ; 5 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0 ; 3 uses
  %i.df = fmul <2 x float> %i.ce, %21
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %i.cg, <2 x float> %i.df)
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.ci, <2 x float> %i.dg)
  %i.di = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.dj = insertelement <4 x float> %i.di, float %i.al, i64 0
  %i.dk = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.av, i64 1
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dn = fmul <4 x float> %i.dj, %i.dm
  %i.do = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %i.at, i64 1
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dr = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ds = insertelement <4 x float> %i.dr, float %i.ak, i64 0
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.ds, <4 x float> %i.dn) ; 4 uses
  %i.du = extractelement <4 x float> %i.dt, i64 0
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.am, float %i.du)
  %i.dw = extractelement <4 x float> %i.dt, i64 1
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ck, float %i.dw)
  %i.dy = extractelement <4 x float> %i.dt, i64 3
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %31, float %i.dy)
  %i.ea = extractelement <4 x float> %i.dt, i64 2
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.ck, float %i.ea)
  %i.ec = fmul <2 x float> %26, %21
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %i.cl, <2 x float> %i.ec)
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.cm, <2 x float> %i.ed)
  %i.ef = fmul float %29, %i.bj
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.bh, float %30, float %i.ef)
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %31, float %i.eg)
  %i.ei = fmul <2 x float> %i.bn, %i.bw
  %i.ej = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.bm, <2 x float> %i.ei)
  %i.em = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.bo, <2 x float> %i.el)
  %i.eo = shufflevector <2 x float> %i.db, <2 x float> %i.cv, <2 x i32> <i32 0, i32 3>
  %i.ep = fadd <2 x float> %i.eo, %i.en           ; 5 uses
  %shift = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cd, %shift ; 2 uses
  %i.eq = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %.sroa.3.12.vec.insert.i4.i.i31119 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !176 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !185
  %i.ev = add i32 %i.eu, -21
  %i.ew = icmp ult i32 %i.ev, 9
  br i1 %i.ew, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <2 x float> %i.dc, ptr %5, align 8
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !184
  %i.ex = extractelement <2 x float> %i.dc, i64 0 ; 2 uses
  %i.ey = extractelement <2 x float> %i.ep, i64 0 ; 3 uses
  %i.ez = fcmp olt float %i.ey, %i.ex
  br i1 %i.ez, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  store float %i.ey, ptr %5, align 8, !tbaa !172
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.d, %bb.c
  %i.fa = phi float [ %i.ey, %bb.d ], [ %i.ex, %bb.c ]
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.fc = extractelement <2 x float> %i.dc, i64 1 ; 2 uses
  %i.fd = extractelement <2 x float> %i.ep, i64 1 ; 3 uses
  %i.fe = fcmp olt float %i.fd, %i.fc
  br i1 %i.fe, label %bb.e, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.fd, ptr %i.fb, align 4, !tbaa !172
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.e, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ff = phi float [ %i.fd, %bb.e ], [ %i.fc, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.fg = fcmp olt float %i.eq, %i.de
  %i.fh = select i1 %i.fg, float %i.eq, float %i.de
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %.sroa.22.48..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !184
  %i.fi = fcmp olt <2 x float> %i.dc, %i.ep
  %i.fj = fcmp olt float %i.de, %i.eq
  %i.fk = select i1 %i.fj, float %i.eq, float %i.de
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !241 ; 6 uses
  %i.fn = fsub float %i.fa, %i.fm
  store float %i.fn, ptr %5, align 8, !tbaa !172
  %i.fo = fsub float %i.ff, %i.fm
  store float %i.fo, ptr %i.fb, align 4, !tbaa !172
  %i.fp = fsub float %i.fh, %i.fm
  store float %i.fp, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !172
  %i.fq = select <2 x i1> %i.fi, <2 x float> %i.ep, <2 x float> %i.dc
  %i.fr = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fadd <2 x float> %i.fs, %i.fq
  store <2 x float> %i.ft, ptr %6, align 8, !tbaa !172
  %i.fu = fadd float %i.fm, %i.fk
  store float %i.fu, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !14
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.cj, ptr %i.fv, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %i.dx, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !184
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %i.cn, ptr %i.fw, align 8
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.dz, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !184
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %19, ptr %i.fx, align 8
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %i.ba, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !184
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.dc, ptr %i.fy, align 8
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !184
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <2 x float> %i.dh, ptr %i.fz, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store float %i.eb, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !184
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <2 x float> %i.ee, ptr %i.ga, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.eh, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !184
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <2 x float> %25, ptr %i.gb, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  store float %i.dv, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !184
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.ep, ptr %i.gc, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i31119, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !184
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.fm, ptr %i.gd, align 8, !tbaa !187
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 3 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !242
  store float %i.gg, ptr %i.ge, align 4, !tbaa !188
  %i.gh = load ptr, ptr %i.es, align 8, !tbaa !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 128
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(36) %i.es, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.gk

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.gl = load float, ptr %i.ge, align 4, !tbaa !188 ; 3 uses
  %i.gm = load float, ptr %i.gf, align 4, !tbaa !242
  %i.gn = fcmp uge float %i.gl, %i.gm
  br i1 %i.gn, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.gl, ptr %i.gf, align 4, !tbaa !242
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %i.gl, %bb.h ], [ 1.000000e+00, %bb.g ]
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.2 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %.2.ph, %.sink.split ]
  ret float %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 11 uses
  %5 = alloca %"struct.btConvexCast::CastResult", align 8 ; 10 uses
  %6 = alloca %class.btSphereShape, align 8       ; 15 uses
  %7 = alloca %class.btTriangleShape, align 8     ; 12 uses
  %8 = alloca %class.btVoronoiSimplexSolver, align 4 ; 6 uses
  %9 = alloca %class.btSubsimplexConvexCast, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store float 1.000000e+00, ptr %4, align 4, !tbaa !172
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %5, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr null, ptr %i.g, align 8, !tbaa !244
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 184
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !245
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 188
  store i32 32, ptr %i.i, align 4, !tbaa !246
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192
  store float f0x38D1B717, ptr %i.j, align 8, !tbaa !247
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !188
  store float %i.l, ptr %i.f, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load float, ptr %i.m, align 8, !tbaa !187 ; 2 uses
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6)
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %6, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 8, ptr %i.o, align 8, !tbaa !185
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  store <2 x float> splat (float 1.000000e+00), ptr %i.p, align 8, !tbaa !172
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !172
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  store float %i.n, ptr %i.s, align 8, !tbaa !172
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  store float %i.n, ptr %i.t, align 8, !tbaa !191
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 68
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 264) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %7, align 8, !tbaa !14
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %i.x, align 8, !tbaa !185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !192
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !192
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !192
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 308
  store float f0x38D1B717, ptr %i.aa, align 4, !tbaa !254
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 332 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, -16
  store i8 %i.ad, ptr %i.ab, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = invoke noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(64) %i.af, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(196) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.ag, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ah = load float, ptr %i.k, align 4, !tbaa !188
  %i.ai = load float, ptr %i.f, align 8, !tbaa !248 ; 2 uses
  %i.aj = fcmp ogt float %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store float %i.ai, ptr %i.k, align 4, !tbaa !188
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #14
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #14
end_hunk_0
