Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyConcaveCollisionAlgorithm?download=true
inline.NumInlined: 428
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfPK24btCollisionObjectWrapperRK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bx)
  %i.cc = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cd = insertelement <2 x float> %i.cc, float %i.ax, i64 1
  %i.ce = insertelement <2 x float> poison, float %i.s, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cb) ; 2 uses
  %i.ch = fadd <2 x float> %i.bt, %i.bg           ; 2 uses
  %shift = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cg, %shift
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cj = shufflevector <1 x float> %i.ad, <1 x float> poison, <3 x i32> zeroinitializer
  %i.ck = fadd <3 x float> %i.am, %i.cj           ; 6 uses
  %i.cl = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bj)
  %i.cm = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bl)
  %i.cn = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bn)
  %i.co = shufflevector <3 x float> %i.ck, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x float> %i.cm, %i.co
  %i.cq = shufflevector <3 x float> %i.ck, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cl, <2 x float> %i.cp)
  %i.cs = shufflevector <3 x float> %i.ck, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cn, <2 x float> %i.cr) ; 2 uses
  %i.cu = extractelement <3 x float> %i.ck, i64 1
  %i.cv = fmul float %i.ah, %i.cu
  %i.cw = extractelement <3 x float> %i.ck, i64 0
  %i.cx = call float @llvm.fmuladd.f32(float %i.cw, float %i.ag, float %i.cv)
  %i.cy = extractelement <3 x float> %i.ck, i64 2
  %i.cz = call noundef float @llvm.fmuladd.f32(float %i.cy, float %i.ai, float %i.cx) ; 2 uses
  %i.da = fsub <2 x float> %i.ch, %i.ct
  %i.db = fsub float %i.ci, %i.cz
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  store <2 x float> %i.da, ptr %i.ae, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !184
  %i.dc = fadd <2 x float> %i.ch, %i.ct
  %i.dd = fadd float %i.ci, %i.cz
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dd, i64 0
  store <2 x float> %i.dc, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %.sroa.4.0..sroa_idx.i22, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

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
  %i.as = load <2 x float>, ptr %i.ab, align 4, !tbaa !172, !noalias !237 ; 3 uses
  %i.at = load <2 x float>, ptr %i.aq, align 4, !tbaa !172, !noalias !237 ; 3 uses
  %i.au = load <2 x float>, ptr %i.ar, align 4, !tbaa !172, !noalias !237 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !172, !noalias !237 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !172, !noalias !237 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ba = load float, ptr %i.az, align 4, !tbaa !172, !noalias !237 ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bd = fmul <2 x float> %i.bc, %i.at
  %i.be = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = fmul float %i.al, %i.ay
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ak, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.am, float %i.bl)
  %i.bn = fmul float %i.al, %i.l
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ak, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.am, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bs = load <2 x float>, ptr %i.ac, align 4, !tbaa !172, !noalias !238 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.bq, align 4, !tbaa !172, !noalias !238 ; 3 uses
  %i.bu = load <2 x float>, ptr %i.br, align 4, !tbaa !172, !noalias !238 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !172, !noalias !238 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.by = load float, ptr %i.bx, align 4, !tbaa !172, !noalias !238 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !172, !noalias !238 ; 2 uses
  %i.cb = fmul <2 x float> %i.bc, %i.bt
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bf, <2 x float> %i.cb)
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bi, <2 x float> %i.cc)
  %i.ce = load <2 x float>, ptr %i.ae, align 4, !tbaa !172, !noalias !236 ; 7 uses
  %i.cf = load <2 x float>, ptr %i.af, align 4, !tbaa !172, !noalias !236 ; 7 uses
  %i.cg = load <2 x float>, ptr %i.ag, align 4, !tbaa !172, !noalias !236 ; 7 uses
  %i.ch = load float, ptr %i.an, align 4, !tbaa !172, !noalias !239
  %i.ci = fneg float %i.ch                        ; 2 uses
  %i.cj = load float, ptr %i.ao, align 4, !tbaa !172, !noalias !239
  %i.ck = fneg float %i.cj                        ; 2 uses
  %i.cl = load float, ptr %i.ap, align 4, !tbaa !172, !noalias !239
  %i.cm = fneg float %i.cl                        ; 2 uses
  %i.cn = load <2 x float>, ptr %i.h, align 4, !tbaa !172, !noalias !240 ; 3 uses
  %8 = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = insertelement <2 x float> %8, float %i.ck, i64 0
  %i.cp = fmul <2 x float> %i.bc, %i.co
  %9 = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cq = insertelement <2 x float> %9, float %i.g, i64 1
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.cq, <2 x float> %i.cp)
  %i.cs = insertelement <2 x float> %i.cn, float %i.cm, i64 0
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.cs, <2 x float> %i.cr) ; 3 uses
  %i.cu = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.at
  %i.cw = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.cw, <2 x float> %i.cv)
  %i.cy = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.cy, <2 x float> %i.cx)
  %i.da = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.db = fmul <2 x float> %i.da, %i.at
  %i.dc = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.dc, <2 x float> %i.db)
  %i.de = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dg = extractelement <2 x float> %i.cf, i64 1
  %i.dh = extractelement <2 x float> %i.ce, i64 1
  %i.di = extractelement <2 x float> %i.cg, i64 1
  %i.dj = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x float> %i.dj, float %i.ck, i64 1 ; 2 uses
  %i.dl = fmul <2 x float> %i.cf, %i.dk
  %i.dm = insertelement <2 x float> %i.k, float %i.ci, i64 1 ; 2 uses
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.ce, <2 x float> %i.dl)
  %i.do = insertelement <2 x float> poison, float %i.s, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.cm, i64 1 ; 2 uses
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.cg, <2 x float> %i.dn) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = fmul <2 x float> %i.cf, %i.dr
  %i.dt = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dt, <2 x float> %i.ds)
  %i.dv = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.dv, <2 x float> %i.du) ; 2 uses
  %i.dx = fadd <2 x float> %i.dq, %i.dw           ; 6 uses
  %i.dy = extractelement <2 x float> %i.ct, i64 0
  %i.dz = fadd float %i.dy, %i.bp                 ; 5 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dz, i64 0 ; 3 uses
  %i.ea = fmul <2 x float> %i.cu, %i.bt
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.cw, <2 x float> %i.ea)
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cy, <2 x float> %i.eb)
  %i.ed = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ee = insertelement <4 x float> %i.ed, float %i.al, i64 0
  %i.ef = insertelement <4 x float> poison, float %i.by, i64 0
  %i.eg = insertelement <4 x float> %i.ef, float %i.ay, i64 1
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ei = fmul <4 x float> %i.ee, %i.eh
  %i.ej = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.aw, i64 1
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.em = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.en = insertelement <4 x float> %i.em, float %i.ak, i64 0
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.en, <4 x float> %i.ei)
  %i.ep = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.ba, i64 1
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.es = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.et = insertelement <4 x float> %i.es, float %i.am, i64 0
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.et, <4 x float> %i.eo) ; 4 uses
  %i.ev = fmul <2 x float> %i.da, %i.bt
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.dc, <2 x float> %i.ev)
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.de, <2 x float> %i.ew)
  %i.ey = fmul float %i.dg, %i.by
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.dh, float %i.ey)
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.di, float %i.ez)
  %i.fb = fmul <2 x float> %i.cf, %8
  %i.fc = insertelement <2 x float> poison, float %i.g, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ce, <2 x float> %i.fb)
  %10 = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.cg, <2 x float> %i.fe)
  %i.fg = shufflevector <2 x float> %i.dw, <2 x float> %i.dq, <2 x i32> <i32 0, i32 3>
  %i.fh = fadd <2 x float> %i.fg, %i.ff           ; 5 uses
  %shift = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ct, %shift ; 2 uses
  %i.fi = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %.sroa.3.12.vec.insert.i4.i.i31119 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !176 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !185
  %i.fn = add i32 %i.fm, -21
  %i.fo = icmp ult i32 %i.fn, 9
  br i1 %i.fo, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <2 x float> %i.dx, ptr %5, align 8
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !184
  %i.fp = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.fq = extractelement <2 x float> %i.fh, i64 0 ; 3 uses
  %i.fr = fcmp olt float %i.fq, %i.fp
  br i1 %i.fr, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  store float %i.fq, ptr %5, align 8, !tbaa !172
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.d, %bb.c
  %i.fs = phi float [ %i.fq, %bb.d ], [ %i.fp, %bb.c ]
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.fu = extractelement <2 x float> %i.dx, i64 1 ; 2 uses
  %i.fv = extractelement <2 x float> %i.fh, i64 1 ; 3 uses
  %i.fw = fcmp olt float %i.fv, %i.fu
  br i1 %i.fw, label %bb.e, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.fv, ptr %i.ft, align 4, !tbaa !172
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.e, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.fx = phi float [ %i.fv, %bb.e ], [ %i.fu, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.fy = fcmp olt float %i.fi, %i.dz
  %i.fz = select i1 %i.fy, float %i.fi, float %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %.sroa.22.48..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !184
  %i.ga = fcmp olt <2 x float> %i.dx, %i.fh
  %i.gb = fcmp olt float %i.dz, %i.fi
  %i.gc = select i1 %i.gb, float %i.fi, float %i.dz
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.ge = load float, ptr %i.gd, align 8, !tbaa !241 ; 6 uses
  %i.gf = fsub float %i.fs, %i.ge
  store float %i.gf, ptr %5, align 8, !tbaa !172
  %i.gg = fsub float %i.fx, %i.ge
  store float %i.gg, ptr %i.ft, align 4, !tbaa !172
  %i.gh = fsub float %i.fz, %i.ge
  store float %i.gh, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !172
  %i.gi = select <2 x i1> %i.ga, <2 x float> %i.fh, <2 x float> %i.dx
  %i.gj = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fadd <2 x float> %i.gk, %i.gi
  store <2 x float> %i.gl, ptr %6, align 8, !tbaa !172
  %i.gm = fadd float %i.ge, %i.gc
  store float %i.gm, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !14
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.cz, ptr %i.gn, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.go = extractelement <4 x float> %i.eu, i64 1
  store float %i.go, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !184
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %i.df, ptr %i.gp, align 8
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gq = extractelement <4 x float> %i.eu, i64 3
  store float %i.gq, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !184
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %i.bj, ptr %i.gr, align 8
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %i.bm, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !184
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.dx, ptr %i.gs, align 8
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !184
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <2 x float> %i.ec, ptr %i.gt, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.gu = extractelement <4 x float> %i.eu, i64 2
  store float %i.gu, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !184
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <2 x float> %i.ex, ptr %i.gv, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.fa, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !184
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <2 x float> %i.cd, ptr %i.gw, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.gx = extractelement <4 x float> %i.eu, i64 0
  store float %i.gx, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !184
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.fh, ptr %i.gy, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i31119, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !184
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.ge, ptr %i.gz, align 8, !tbaa !187
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 3 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !242
  store float %i.hc, ptr %i.ha, align 4, !tbaa !188
  %i.hd = load ptr, ptr %i.fk, align 8, !tbaa !14
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 128
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(36) %i.fk, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.hg

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hh = load float, ptr %i.ha, align 4, !tbaa !188 ; 3 uses
  %i.hi = load float, ptr %i.hb, align 4, !tbaa !242
  %i.hj = fcmp uge float %i.hh, %i.hi
  br i1 %i.hj, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.hh, ptr %i.hb, align 4, !tbaa !242
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %i.hh, %bb.h ], [ 1.000000e+00, %bb.g ]
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
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v3f32
!39 = !{!"p1 _ZTS20btPersistentManifold", !15, i64 0}
!40 = !{!36, !16, i64 64}
!41 = !{!36, !24, i64 72}
!42 = !{!28, !18, i64 24}
!43 = !{!28, !27, i64 16}
!44 = !{!28, !10, i64 4}
!45 = !{!28, !10, i64 8}
!46 = !{!31, !18, i64 24}
!47 = !{!31, !30, i64 16}
!48 = !{!31, !10, i64 4}
!49 = !{!31, !10, i64 8}
!50 = !{!34, !18, i64 24}
!51 = !{!34, !33, i64 16}
!52 = !{!34, !10, i64 4}
!53 = !{!34, !10, i64 8}
!54 = !{!"p1 _ZTS24btCollisionObjectWrapper", !15, i64 0}
!55 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!56 = !{!"p1 _ZTS11btTransform", !15, i64 0}
!57 = !{!"_ZTS24btCollisionObjectWrapper", !54, i64 0, !55, i64 8, !21, i64 16, !56, i64 24, !56, i64 32, !10, i64 40, !10, i64 44}
!58 = !{!57, !21, i64 16}
!59 = !{!36, !20, i64 8}
!60 = !{!36, !21, i64 16}
!61 = !{!"_ZTS11btMatrix3x3", !9, i64 0}
!62 = !{!"_ZTS11btTransform", !61, i64 0, !22, i64 48}
!63 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!64 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!65 = !{!"any p2 pointer", !15, i64 0}
!66 = !{!"p2 _ZTS17btCollisionObject", !65, i64 0}
!67 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !64, i64 0, !10, i64 4, !10, i64 8, !66, i64 16, !18, i64 24}
!68 = !{!"_ZTS17btCollisionObject", !62, i64 8, !62, i64 72, !22, i64 136, !22, i64 152, !22, i64 168, !10, i64 184, !25, i64 188, !63, i64 192, !55, i64 200, !15, i64 208, !55, i64 216, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !25, i64 244, !25, i64 248, !25, i64 252, !25, i64 256, !25, i64 260, !25, i64 264, !25, i64 268, !10, i64 272, !15, i64 280, !10, i64 288, !10, i64 292, !10, i64 296, !25, i64 300, !25, i64 304, !25, i64 308, !10, i64 312, !67, i64 320, !10, i64 352, !22, i64 356}
!69 = !{!"p1 _ZTS16btSoftBodySolver", !15, i64 0}
!70 = !{!"_ZTSN10btSoftBody10eAeroModel1_E", !9, i64 0}
!71 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8eVSolver1_ELj16EE"}
!72 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8eVSolver1_EE", !71, i64 0, !10, i64 4, !10, i64 8, !15, i64 16, !18, i64 24}
!73 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8ePSolver1_ELj16EE"}
!74 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EE", !73, i64 0, !10, i64 4, !10, i64 8, !15, i64 16, !18, i64 24}
!75 = !{!"_ZTSN10btSoftBody6ConfigE", !70, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28, !25, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !25, i64 48, !25, i64 52, !25, i64 56, !25, i64 60, !25, i64 64, !25, i64 68, !25, i64 72, !25, i64 76, !25, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !72, i64 104, !74, i64 136, !74, i64 168, !25, i64 200, !25, i64 204}
!76 = !{!"_ZTSN10btSoftBody11SolverStateE", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16}
!77 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!78 = !{!"p1 _ZTS9btVector3", !15, i64 0}
!79 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !77, i64 0, !10, i64 4, !10, i64 8, !78, i64 16, !18, i64 24}
!80 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!81 = !{!"p1 float", !15, i64 0}
!82 = !{!"_ZTS20btAlignedObjectArrayIfE", !80, i64 0, !10, i64 4, !10, i64 8, !81, i64 16, !18, i64 24}
!83 = !{!"_ZTSN10btSoftBody4PoseE", !18, i64 0, !18, i64 1, !25, i64 4, !79, i64 8, !82, i64 40, !22, i64 72, !61, i64 88, !61, i64 136, !61, i64 184}
!84 = !{!"p1 _ZTS19btSoftBodyWorldInfo", !15, i64 0}
!85 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NoteELj16EE"}
!86 = !{!"p1 _ZTSN10btSoftBody4NoteE", !15, i64 0}
!87 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NoteEE", !85, i64 0, !10, i64 4, !10, i64 8, !86, i64 16, !18, i64 24}
!88 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NodeELj16EE"}
!89 = !{!"p1 _ZTSN10btSoftBody4NodeE", !15, i64 0}
!90 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NodeEE", !88, i64 0, !10, i64 4, !10, i64 8, !89, i64 16, !18, i64 24}
!91 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody10RenderNodeELj16EE"}
!92 = !{!"p1 _ZTSN10btSoftBody10RenderNodeE", !15, i64 0}
!93 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody10RenderNodeEE", !91, i64 0, !10, i64 4, !10, i64 8, !92, i64 16, !18, i64 24}
!94 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4LinkELj16EE"}
!95 = !{!"p1 _ZTSN10btSoftBody4LinkE", !15, i64 0}
!96 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4LinkEE", !94, i64 0, !10, i64 4, !10, i64 8, !95, i64 16, !18, i64 24}
!97 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4FaceELj16EE"}
!98 = !{!"p1 _ZTSN10btSoftBody4FaceE", !15, i64 0}
!99 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4FaceEE", !97, i64 0, !10, i64 4, !10, i64 8, !98, i64 16, !18, i64 24}
!100 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody10RenderFaceELj16EE"}
!101 = !{!"p1 _ZTSN10btSoftBody10RenderFaceE", !15, i64 0}
!102 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody10RenderFaceEE", !100, i64 0, !10, i64 4, !10, i64 8, !101, i64 16, !18, i64 24}
!103 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody5TetraELj16EE"}
!104 = !{!"p1 _ZTSN10btSoftBody5TetraE", !15, i64 0}
!105 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody5TetraEE", !103, i64 0, !10, i64 4, !10, i64 8, !104, i64 16, !18, i64 24}
!106 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody12TetraScratchELj16EE"}
!107 = !{!"p1 _ZTSN10btSoftBody12TetraScratchE", !15, i64 0}
!108 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody12TetraScratchEE", !106, i64 0, !10, i64 4, !10, i64 8, !107, i64 16, !18, i64 24}
!109 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody6AnchorELj16EE"}
!110 = !{!"p1 _ZTSN10btSoftBody6AnchorE", !15, i64 0}
!111 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody6AnchorEE", !109, i64 0, !10, i64 4, !10, i64 8, !110, i64 16, !18, i64 24}
!112 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody25DeformableNodeRigidAnchorELj16EE"}
!113 = !{!"p1 _ZTSN10btSoftBody25DeformableNodeRigidAnchorE", !15, i64 0}
!114 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE", !112, i64 0, !10, i64 4, !10, i64 8, !113, i64 16, !18, i64 24}
!115 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8RContactELj16EE"}
!116 = !{!"p1 _ZTSN10btSoftBody8RContactE", !15, i64 0}
!117 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8RContactEE", !115, i64 0, !10, i64 4, !10, i64 8, !116, i64 16, !18, i64 24}
!118 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody26DeformableNodeRigidContactELj16EE"}
!119 = !{!"p1 _ZTSN10btSoftBody26DeformableNodeRigidContactE", !15, i64 0}
!120 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody26DeformableNodeRigidContactEE", !118, i64 0, !10, i64 4, !10, i64 8, !119, i64 16, !18, i64 24}
!121 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody25DeformableFaceNodeContactELj16EE"}
!122 = !{!"p1 _ZTSN10btSoftBody25DeformableFaceNodeContactE", !15, i64 0}
!123 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE", !121, i64 0, !10, i64 4, !10, i64 8, !122, i64 16, !18, i64 24}
!124 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody26DeformableFaceRigidContactELj16EE"}
!125 = !{!"p1 _ZTSN10btSoftBody26DeformableFaceRigidContactE", !15, i64 0}
!126 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE", !124, i64 0, !10, i64 4, !10, i64 8, !125, i64 16, !18, i64 24}
!127 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8SContactELj16EE"}
!128 = !{!"p1 _ZTSN10btSoftBody8SContactE", !15, i64 0}
!129 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8SContactEE", !127, i64 0, !10, i64 4, !10, i64 8, !128, i64 16, !18, i64 24}
!130 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody5JointELj16EE"}
!131 = !{!"p2 _ZTSN10btSoftBody5JointE", !65, i64 0}
!132 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody5JointEE", !130, i64 0, !10, i64 4, !10, i64 8, !131, i64 16, !18, i64 24}
!133 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody8MaterialELj16EE"}
!134 = !{!"p2 _ZTSN10btSoftBody8MaterialE", !65, i64 0}
!135 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody8MaterialEE", !133, i64 0, !10, i64 4, !10, i64 8, !134, i64 16, !18, i64 24}
!136 = !{!"p1 _ZTS10btDbvtNode", !15, i64 0}
!137 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt6sStkNNELj16EE"}
!138 = !{!"p1 _ZTSN6btDbvt6sStkNNE", !15, i64 0}
!139 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt6sStkNNEE", !137, i64 0, !10, i64 4, !10, i64 8, !138, i64 16, !18, i64 24}
!140 = !{!"_ZTS6btDbvt", !136, i64 0, !136, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !139, i64 32}
!141 = !{!"p1 _ZTS11btDbvntNode", !15, i64 0}
!142 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody7ClusterELj16EE"}
!143 = !{!"p2 _ZTSN10btSoftBody7ClusterE", !65, i64 0}
!144 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody7ClusterEE", !142, i64 0, !10, i64 4, !10, i64 8, !143, i64 16, !18, i64 24}
!145 = !{!"_ZTS18btAlignedAllocatorI9btVector4Lj16EE"}
!146 = !{!"p1 _ZTS9btVector4", !15, i64 0}
!147 = !{!"_ZTS20btAlignedObjectArrayI9btVector4E", !145, i64 0, !10, i64 4, !10, i64 8, !146, i64 16, !18, i64 24}
!148 = !{!"_ZTS18btAlignedAllocatorI20btAlignedObjectArrayIPKN10btSoftBody4NodeEELj16EE"}
!149 = !{!"p1 _ZTS20btAlignedObjectArrayIPKN10btSoftBody4NodeEE", !15, i64 0}
!150 = !{!"_ZTS20btAlignedObjectArrayIS_IPKN10btSoftBody4NodeEEE", !148, i64 0, !10, i64 4, !10, i64 8, !149, i64 16, !18, i64 24}
!151 = !{!"_ZTS18btAlignedAllocatorIbLj16EE"}
!152 = !{!"p1 bool", !15, i64 0}
!153 = !{!"_ZTS20btAlignedObjectArrayIbE", !151, i64 0, !10, i64 4, !10, i64 8, !152, i64 16, !18, i64 24}
!154 = !{!"_ZTS10btSoftBody", !68, i64 0, !67, i64 376, !69, i64 408, !75, i64 416, !76, i64 624, !83, i64 648, !15, i64 880, !84, i64 888, !87, i64 896, !90, i64 928, !93, i64 960, !96, i64 992, !99, i64 1024, !102, i64 1056, !105, i64 1088, !108, i64 1120, !108, i64 1152, !111, i64 1184, !114, i64 1216, !117, i64 1248, !120, i64 1280, !123, i64 1312, !126, i64 1344, !123, i64 1376, !129, i64 1408, !132, i64 1440, !135, i64 1472, !25, i64 1504, !9, i64 1508, !18, i64 1540, !140, i64 1544, !140, i64 1608, !141, i64 1672, !140, i64 1680, !144, i64 1744, !25, i64 1776, !25, i64 1780, !25, i64 1784, !79, i64 1792, !25, i64 1824, !25, i64 1828, !18, i64 1832, !79, i64 1840, !147, i64 1872, !150, i64 1904, !82, i64 1936, !18, i64 1968, !18, i64 1969, !153, i64 1976, !22, i64 2008, !25, i64 2024, !18, i64 2028, !28, i64 2032}
!155 = !{!154, !84, i64 888}
!156 = !{!"_ZTS10btTriIndex", !10, i64 0, !55, i64 8}
!157 = !{!156, !55, i64 8}
!158 = !{!"_ZTS18btAlignedAllocatorIPN11btSparseSdfILi3EE4CellELj16EE"}
!159 = !{!"p2 _ZTSN11btSparseSdfILi3EE4CellE", !65, i64 0}
!160 = !{!"_ZTS20btAlignedObjectArrayIPN11btSparseSdfILi3EE4CellEE", !158, i64 0, !10, i64 4, !10, i64 8, !159, i64 16, !18, i64 24}
!161 = !{!160, !10, i64 4}
!162 = !{!160, !159, i64 16}
!163 = !{!"p1 _ZTSN11btSparseSdfILi3EE4CellE", !15, i64 0}
!164 = !{!163, !163, i64 0}
!165 = !{!"_ZTSN11btSparseSdfILi3EE4CellE", !9, i64 0, !9, i64 256, !10, i64 268, !10, i64 272, !55, i64 280, !163, i64 288}
!166 = !{!165, !163, i64 288}
!167 = !{!165, !55, i64 280}
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{i8 0, i8 2}
!170 = !{ptr @_ZN26btSoftBodyTriangleCallback10clearCacheEv}
!171 = !{!"p1 _ZTS12btIDebugDraw", !15, i64 0}
!172 = !{!25, !25, i64 0}
!173 = !{!"_ZTS9btHashKeyI10btTriIndexE", !10, i64 0}
!174 = !{!173, !10, i64 0}
!175 = !{!10, !10, i64 0}
!176 = !{!68, !55, i64 200}
!177 = !{!"_ZTS16btCollisionShape", !10, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!178 = !{!57, !55, i64 8}
!179 = !{!36, !23, i64 56}
!180 = !{}
!181 = !{!"llvm.loop.isvectorized", i32 1}
!182 = !{!"llvm.loop.unroll.runtime.disable"}
!183 = !{!"llvm.loop.unroll.disable"}
!184 = !{!9, !9, i64 0}
!185 = !{!177, !10, i64 8}
!186 = !{!"_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback", !19, i64 0, !62, i64 8, !62, i64 72, !62, i64 136, !25, i64 200, !25, i64 204}
!187 = !{!186, !25, i64 200}
!188 = !{!186, !25, i64 204}
!189 = !{!"_ZTS13btConvexShape", !177, i64 0}
!190 = !{!"_ZTS21btConvexInternalShape", !189, i64 0, !22, i64 32, !22, i64 48, !25, i64 64, !25, i64 68}
!191 = !{!190, !25, i64 64}
!192 = !{i64 0, i64 16, !184}
!193 = !{!"_ZTS36btCollisionAlgorithmConstructionInfo", !16, i64 0, !39, i64 8}
!194 = !{!193, !16, i64 0}
!195 = !{ptr @_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev}
!196 = !{!"_ZTS16btDispatcherInfo", !25, i64 0, !10, i64 4, !10, i64 8, !25, i64 12, !18, i64 16, !171, i64 24, !18, i64 32, !18, i64 33, !18, i64 34, !25, i64 36, !18, i64 40, !25, i64 44, !18, i64 48}
!197 = !{!196, !171, i64 24}
!198 = !{!156, !10, i64 0}
!199 = !{!177, !15, i64 16}
!200 = !{!57, !54, i64 0}
!201 = !{!56, !56, i64 0}
!202 = !{!57, !56, i64 32}
!203 = !{!57, !10, i64 40}
!204 = !{!57, !10, i64 44}
!205 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!206 = !{!"_ZTS16btManifoldResult", !205, i64 0, !39, i64 8, !54, i64 16, !54, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !25, i64 48}
!207 = !{!206, !25, i64 48}
!208 = distinct !{!208, !168}
!209 = distinct !{!209, !168, !181, !182}
!210 = distinct !{!210, !183}
!211 = distinct !{!211, !168, !181}
!212 = !{!55, !55, i64 0}
!213 = !{i64 0, i64 4, !175, i64 8, i64 8, !212}
!214 = distinct !{!214, i1 true, !"_ZNK11btTransform7inverseEv"}
!215 = distinct !{!215, !214, !"_ZNK11btTransform7inverseEv: argument 0"}
!216 = distinct !{!216, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!217 = distinct !{!217, !216, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!218 = !{!36, !25, i64 80}
!219 = !{!57, !56, i64 24}
!220 = !{i64 4}
!221 = !{!217, !215}
!222 = !{!215}
!223 = distinct !{!223, i1 true, !"_ZNK11btTransform7inverseEv"}
!224 = distinct !{!224, !223, !"_ZNK11btTransform7inverseEv: argument 0"}
!225 = distinct !{!225, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!226 = distinct !{!226, !225, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!227 = distinct !{!227, i1 true, !"_ZNK11btTransformmlERKS_"}
!228 = distinct !{!228, !227, !"_ZNK11btTransformmlERKS_: argument 0"}
!229 = distinct !{!229, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!230 = distinct !{!230, !229, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!231 = distinct !{!231, i1 true, !"_ZNK11btTransformmlERKS_"}
!232 = distinct !{!232, !231, !"_ZNK11btTransformmlERKS_: argument 0"}
!233 = distinct !{!233, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!234 = distinct !{!234, !233, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!235 = !{!68, !25, i64 308}
!236 = !{!226, !224}
!237 = !{!230, !228}
!238 = !{!234, !232}
!239 = !{!224}
!240 = !{!232}
!241 = !{!68, !25, i64 304}
!242 = !{!68, !25, i64 300}
!243 = !{!"_ZTSN12btConvexCast10CastResultE", !62, i64 8, !62, i64 72, !22, i64 136, !22, i64 152, !25, i64 168, !171, i64 176, !25, i64 184, !10, i64 188, !25, i64 192}
!244 = !{!243, !171, i64 176}
!245 = !{!243, !25, i64 184}
!246 = !{!243, !10, i64 188}
!247 = !{!243, !25, i64 192}
!248 = !{!243, !25, i64 168}
!249 = !{!190, !25, i64 68}
!250 = !{!"short", !9, i64 0}
!251 = !{!"_ZTS15btUsageBitfield", !250, i64 0, !250, i64 0, !250, i64 0, !250, i64 0, !250, i64 0, !250, i64 0, !250, i64 0, !250, i64 0}
!252 = !{!"_ZTS25btSubSimplexClosestResult", !22, i64 0, !251, i64 16, !9, i64 20, !18, i64 36}
!253 = !{!"_ZTS22btVoronoiSimplexSolver", !10, i64 0, !9, i64 4, !9, i64 84, !9, i64 164, !22, i64 244, !22, i64 260, !22, i64 276, !22, i64 292, !25, i64 308, !18, i64 312, !252, i64 316, !18, i64 356}
!254 = !{!253, !25, i64 308}
!255 = !{!"p1 omnipotent char", !15, i64 0}
!256 = !{!"_ZTS20btCollisionShapeData", !255, i64 0, !10, i64 8, !9, i64 12}
!257 = !{!"_ZTS18btVector3FloatData", !9, i64 0}
!258 = !{!"_ZTS25btConvexInternalShapeData", !256, i64 0, !257, i64 16, !257, i64 32, !25, i64 48, !10, i64 52}
!259 = !{!258, !25, i64 48}
!260 = !{!258, !10, i64 52}
!261 = distinct !{!261, !168}
!262 = distinct !{!262, !168, !181, !182}
!263 = distinct !{!263, !183}
!264 = distinct !{!264, !168, !181}
!265 = distinct !{!265, !168, !181, !182}
!266 = distinct !{!266, !183}
!267 = distinct !{!267, !168, !181}
!268 = distinct !{!268, !168}
end_hunk_1
