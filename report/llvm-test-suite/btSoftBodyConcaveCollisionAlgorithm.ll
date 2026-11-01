Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBodyConcaveCollisionAlgorithm?download=true
inline.NumInlined: 432
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.cc = insertelement <2 x float> %i.br, float %i.au, i64 1
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.bz)
  %i.ce = insertelement <2 x float> poison, float %i.t, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <3 x float> %i.ap, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ch = insertelement <2 x float> %i.cg, float %i.ay, i64 1
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.cd) ; 2 uses
  %shift = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ci, %shift
  %i.cj = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ck = shufflevector <1 x float> %i.ae, <1 x float> poison, <3 x i32> zeroinitializer
  %i.cl = fadd <3 x float> %i.an, %i.ck           ; 6 uses
  %i.cm = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bk)
  %i.cn = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bm)
  %i.co = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bo)
  %i.cp = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = fmul <2 x float> %i.cn, %i.cp
  %i.cr = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cr, <2 x float> %i.cq)
  %i.ct = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.ct, <2 x float> %i.cs) ; 2 uses
  %i.cv = extractelement <3 x float> %i.cl, i64 1
  %i.cw = fmul float %i.ai, %i.cv
  %i.cx = extractelement <3 x float> %i.cl, i64 0
  %i.cy = call float @llvm.fmuladd.f32(float %i.ah, float %i.cx, float %i.cw)
  %i.cz = extractelement <3 x float> %i.cl, i64 2
  %i.da = call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.cz, float %i.cy) ; 2 uses
  %i.db = fsub <2 x float> %i.bv, %i.cu
  %i.dc = fsub float %i.cj, %i.da
  %.sroa.3.12.vec.insert.i9.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dc, i64 0
  store <2 x float> %i.db, ptr %i.af, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.3.12.vec.insert.i9.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !142
  %i.dd = fadd <2 x float> %i.bv, %i.cu
  %i.de = fadd float %i.cj, %i.da
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  store <2 x float> %i.dd, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.4.0..sroa_idx.i21, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 776
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 68 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !122  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph31.i.i, label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i

.lr.ph31.i.i:                                     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph31.i.i
  %i.q = phi i32 [ %i.n, %.lr.ph31.i.i ], [ %i.aa, %._crit_edge.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph31.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125  ; 2 uses
  %.not24.i.i = icmp eq ptr %i.t, null
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.h
  %.027.i.i = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.c ] ; 4 uses
  %.01926.i.i = phi ptr [ %.1.i.i, %bb.h ], [ null, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 288
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 280
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i.i
  %.not23.i.i = icmp eq ptr %.01926.i.i, null
  br i1 %.not23.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01926.i.i, i64 288
  store ptr %i.v, ptr %i.z, align 8, !tbaa !127
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.v, ptr %i.s, align 8, !tbaa !125
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %.027.i.i) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.01926.i.i, %bb.g ], [ %.027.i.i, %.lr.ph.i.i ]
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre.i.i = load i32, ptr %i.m, align 4, !tbaa !122
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.aa = phi i32 [ %i.q, %bb.c ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next.i.i, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i

_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i: ; preds = %._crit_edge.i.i
  %.pr.i = load ptr, ptr %i.k, align 8, !tbaa !118
  br label %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i

_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i: ; preds = %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i, %bb.b
  %i.ad = phi ptr [ %.pr.i, %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exitthread-pre-split.i ], [ %i.l, %bb.b ] ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad), !inline_history !130
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN11btSparseSdfILi3EE16RemoveReferencesEP16btCollisionShape.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !42
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %bb.b, label %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit

_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit: ; preds = %bb.j, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E5clearEv(ptr noundef nonnull align 8 dereferenceable(128) %i.al)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !129, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr %1, ptr %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !143
  %i.i = add i32 %i.h, -21
  %i.j = icmp ult i32 %i.i, 9
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef float %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(220) %i.o, float noundef %i.n, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(28) %i.f, ptr noundef nonnull %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %struct.LocalTriangleSphereCastCallback, align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !129, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load float, ptr %i.e, align 4, !tbaa !132 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !132 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !132 ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.n = fsub float %i.g, %i.m                    ; 2 uses
  %i.o = fsub float %i.i, %i.l                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.q = load float, ptr %i.p, align 4, !tbaa !132
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load float, ptr %i.r, align 4, !tbaa !132 ; 3 uses
  %i.t = fsub float %i.q, %i.s                    ; 2 uses
  %i.u = fmul float %i.o, %i.o
  %i.v = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.y = load float, ptr %i.x, align 4, !tbaa !185 ; 2 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fcmp olt float %i.w, %i.z
  br i1 %i.aa, label %bb.j, label %bb.b

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
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !132, !noalias !186 ; 4 uses
  %i.al = load float, ptr %i.ai, align 4, !tbaa !132, !noalias !186 ; 4 uses
  %i.am = load float, ptr %i.aj, align 4, !tbaa !132, !noalias !186 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = load <2 x float>, ptr %i.ab, align 4, !tbaa !132, !noalias !187 ; 3 uses
  %i.at = load <2 x float>, ptr %i.aq, align 4, !tbaa !132, !noalias !187 ; 3 uses
  %i.au = load <2 x float>, ptr %i.ar, align 4, !tbaa !132, !noalias !187 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !132, !noalias !187 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !132, !noalias !187 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ba = load float, ptr %i.az, align 4, !tbaa !132, !noalias !187 ; 2 uses
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
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.m, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.s, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bs = load <2 x float>, ptr %i.ac, align 4, !tbaa !132, !noalias !188 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.bq, align 4, !tbaa !132, !noalias !188 ; 3 uses
  %i.bu = load <2 x float>, ptr %i.br, align 4, !tbaa !132, !noalias !188 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !132, !noalias !188 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.by = load float, ptr %i.bx, align 4, !tbaa !132, !noalias !188 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !132, !noalias !188 ; 2 uses
  %i.cb = fmul <2 x float> %i.bc, %i.bt
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bf, <2 x float> %i.cb)
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bi, <2 x float> %i.cc)
  %i.ce = load <2 x float>, ptr %i.ae, align 4, !tbaa !132, !noalias !186 ; 7 uses
  %i.cf = load <2 x float>, ptr %i.af, align 4, !tbaa !132, !noalias !186 ; 7 uses
  %i.cg = load <2 x float>, ptr %i.ag, align 4, !tbaa !132, !noalias !186 ; 7 uses
  %i.ch = load float, ptr %i.an, align 4, !tbaa !132, !noalias !189
  %i.ci = fneg float %i.ch                        ; 2 uses
  %i.cj = load float, ptr %i.ao, align 4, !tbaa !132, !noalias !189
  %i.ck = fneg float %i.cj                        ; 2 uses
  %i.cl = load float, ptr %i.ap, align 4, !tbaa !132, !noalias !189
  %i.cm = fneg float %i.cl                        ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x float> %i.cn, %i.at
  %i.cp = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.cp, <2 x float> %i.co)
  %i.cr = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.cr, <2 x float> %i.cq)
  %i.ct = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cu = fmul <2 x float> %i.ct, %i.at
  %i.cv = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.cv, <2 x float> %i.cu)
  %i.cx = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.cx, <2 x float> %i.cw)
  %i.cz = extractelement <2 x float> %i.cf, i64 1
  %i.da = extractelement <2 x float> %i.ce, i64 1
  %i.db = extractelement <2 x float> %i.cg, i64 1
  %i.dc = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x float> %i.dc, float %i.ck, i64 1 ; 2 uses
  %i.de = fmul <2 x float> %i.cf, %i.dd
  %i.df = insertelement <2 x float> %i.k, float %i.ci, i64 1 ; 2 uses
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.df, <2 x float> %i.de)
  %i.dh = insertelement <2 x float> poison, float %i.s, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.cm, i64 1 ; 2 uses
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.di, <2 x float> %i.dg) ; 2 uses
  %i.dk = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = fmul <2 x float> %i.cf, %i.dk
  %i.dm = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dm, <2 x float> %i.dl)
  %i.do = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.do, <2 x float> %i.dn) ; 2 uses
  %i.dq = fadd <2 x float> %i.dj, %i.dp           ; 6 uses
  %i.dr = fmul <2 x float> %i.cn, %i.bt
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.cp, <2 x float> %i.dr)
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cr, <2 x float> %i.ds)
  %i.du = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.dv = insertelement <4 x float> %i.du, float %i.al, i64 0
  %i.dw = insertelement <4 x float> poison, float %i.by, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.ay, i64 1
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dz = fmul <4 x float> %i.dv, %i.dy
  %i.ea = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.aw, i64 1
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ed = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ee = insertelement <4 x float> %i.ed, float %i.ak, i64 0
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.ee, <4 x float> %i.dz)
  %i.eg = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ba, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ej = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ek = insertelement <4 x float> %i.ej, float %i.am, i64 0
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> %i.ek, <4 x float> %i.ef) ; 4 uses
  %i.em = fmul <2 x float> %i.ct, %i.bt
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.cv, <2 x float> %i.em)
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cx, <2 x float> %i.en)
  %i.ep = fmul float %i.cz, %i.by
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.da, float %i.ep)
  %i.er = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.db, float %i.eq)
  %i.es = insertelement <2 x float> poison, float %i.g, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <2 x float> %i.dp, <2 x float> %i.dj, <2 x i32> <i32 0, i32 3>
  %9 = load <2 x float>, ptr %i.h, align 4, !tbaa !132, !noalias !190 ; 3 uses
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = insertelement <2 x float> %10, float %i.ck, i64 0
  %i.ev = fmul <2 x float> %i.bc, %i.eu
  %11 = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ew = insertelement <2 x float> %11, float %i.g, i64 1
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.ew, <2 x float> %i.ev)
  %i.ey = insertelement <2 x float> %9, float %i.cm, i64 0
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.ey, <2 x float> %i.ex) ; 3 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = fadd float %i.fa, %i.bp                 ; 5 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fb, i64 0 ; 3 uses
  %12 = fmul <2 x float> %i.cf, %10
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.et, <2 x float> %12)
  %14 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %14, <2 x float> %13)
  %i.fd = fadd <2 x float> %8, %i.fc              ; 5 uses
  %shift = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ez, %shift ; 2 uses
  %i.fe = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %.sroa.3.12.vec.insert.i.i31119 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !136 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !143
  %i.fj = add i32 %i.fi, -21
  %i.fk = icmp ult i32 %i.fj, 9
  br i1 %i.fk, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <2 x float> %i.dq, ptr %5, align 8
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !142
  %i.fl = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.fm = extractelement <2 x float> %i.fd, i64 0 ; 3 uses
  %i.fn = fcmp olt float %i.fm, %i.fl
  br i1 %i.fn, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  store float %i.fm, ptr %5, align 8, !tbaa !132
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.d, %bb.c
  %i.fo = phi float [ %i.fm, %bb.d ], [ %i.fl, %bb.c ]
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.fq = extractelement <2 x float> %i.dq, i64 1 ; 2 uses
  %i.fr = extractelement <2 x float> %i.fd, i64 1 ; 3 uses
  %i.fs = fcmp olt float %i.fr, %i.fq
  br i1 %i.fs, label %bb.e, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.fr, ptr %i.fp, align 4, !tbaa !132
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.e, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ft = phi float [ %i.fr, %bb.e ], [ %i.fq, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.fu = fcmp olt float %i.fe, %i.fb
  %i.fv = select i1 %i.fu, float %i.fe, float %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.sroa.22.48..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !142
  %i.fw = fcmp olt <2 x float> %i.dq, %i.fd
  %i.fx = fcmp olt float %i.fb, %i.fe
  %i.fy = select i1 %i.fx, float %i.fe, float %i.fb
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !191 ; 6 uses
  %i.gb = fsub float %i.fo, %i.ga
  store float %i.gb, ptr %5, align 8, !tbaa !132
  %i.gc = fsub float %i.ft, %i.ga
  store float %i.gc, ptr %i.fp, align 4, !tbaa !132
  %i.gd = fsub float %i.fv, %i.ga
  store float %i.gd, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !132
  %i.ge = select <2 x i1> %i.fw, <2 x float> %i.fd, <2 x float> %i.dq
  %i.gf = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fadd <2 x float> %i.gg, %i.ge
  store <2 x float> %i.gh, ptr %6, align 8, !tbaa !132
  %i.gi = fadd float %i.ga, %i.fy
  store float %i.gi, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !9
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.cs, ptr %i.gj, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gk = extractelement <4 x float> %i.el, i64 1
  store float %i.gk, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !142
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %i.cy, ptr %i.gl, align 8
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gm = extractelement <4 x float> %i.el, i64 3
  store float %i.gm, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !142
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %i.bj, ptr %i.gn, align 8
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %i.bm, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !142
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.dq, ptr %i.go, align 8
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !142
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <2 x float> %i.dt, ptr %i.gp, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.gq = extractelement <4 x float> %i.el, i64 2
  store float %i.gq, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !142
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <2 x float> %i.eo, ptr %i.gr, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.er, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !142
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <2 x float> %i.cd, ptr %i.gs, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.gt = extractelement <4 x float> %i.el, i64 0
  store float %i.gt, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !142
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.fd, ptr %i.gu, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i.i31119, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !142
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.ga, ptr %i.gv, align 8, !tbaa !145
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 260 ; 3 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !192
  store float %i.gy, ptr %i.gw, align 4, !tbaa !146
  %i.gz = load ptr, ptr %i.fg, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  %i.hb = load ptr, ptr %i.ha, align 8
  invoke void %i.hb(ptr noundef nonnull align 8 dereferenceable(28) %i.fg, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.i unwind label %bb.k

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hd = load float, ptr %i.gw, align 4, !tbaa !146 ; 3 uses
  %i.he = load float, ptr %i.gx, align 4, !tbaa !192
  %i.hf = fcmp uge float %i.hd, %i.he
  br i1 %i.hf, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.hd, ptr %i.gx, align 4, !tbaa !192
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %i.hc

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %i.hd, %bb.h ], [ 1.000000e+00, %bb.g ]
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.2 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %.2.ph, %.sink.split ]
  ret float %.2

bb.k:                                             ; preds = %bb.f
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 1 %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: inlinehint uwtable
define internal void @_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v3f32
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS12btDispatcher", !10, i64 0}
!12 = !{!"_ZTS20btCollisionAlgorithm", !11, i64 8}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTS18btTriangleCallback"}
!15 = !{!"p1 _ZTS10btSoftBody", !10, i64 0}
!16 = !{!"p1 _ZTS17btCollisionObject", !10, i64 0}
!17 = !{!"_ZTS9btVector3", !5, i64 0}
!18 = !{!"p1 _ZTS16btManifoldResult", !10, i64 0}
!19 = !{!"p1 _ZTS16btDispatcherInfo", !10, i64 0}
!20 = !{!"float", !5, i64 0}
!21 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!22 = !{!"p1 int", !10, i64 0}
!23 = !{!"_ZTS20btAlignedObjectArrayIiE", !21, i64 0, !6, i64 4, !6, i64 8, !22, i64 16, !13, i64 24}
!24 = !{!"_ZTS18btAlignedAllocatorI10btTriIndexLj16EE"}
!25 = !{!"p1 _ZTS10btTriIndex", !10, i64 0}
!26 = !{!"_ZTS20btAlignedObjectArrayI10btTriIndexE", !24, i64 0, !6, i64 4, !6, i64 8, !25, i64 16, !13, i64 24}
!27 = !{!"_ZTS18btAlignedAllocatorI9btHashKeyI10btTriIndexELj16EE"}
!28 = !{!"p1 _ZTS9btHashKeyI10btTriIndexE", !10, i64 0}
!29 = !{!"_ZTS20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE", !27, i64 0, !6, i64 4, !6, i64 8, !28, i64 16, !13, i64 24}
!30 = !{!"_ZTS9btHashMapI9btHashKeyI10btTriIndexES1_E", !23, i64 0, !23, i64 32, !26, i64 64, !29, i64 96}
!31 = !{!"_ZTS26btSoftBodyTriangleCallback", !14, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !17, i64 40, !18, i64 56, !11, i64 64, !19, i64 72, !20, i64 80, !30, i64 88, !6, i64 216}
!32 = !{!"_ZTS35btSoftBodyConcaveCollisionAlgorithm", !12, i64 0, !13, i64 16, !31, i64 24}
!33 = !{!32, !13, i64 16}
!34 = !{!31, !11, i64 64}
!35 = !{!31, !19, i64 72}
!36 = !{!23, !13, i64 24}
!37 = !{!23, !22, i64 16}
!38 = !{!23, !6, i64 4}
!39 = !{!23, !6, i64 8}
!40 = !{!26, !13, i64 24}
!41 = !{!26, !25, i64 16}
!42 = !{!26, !6, i64 4}
!43 = !{!26, !6, i64 8}
!44 = !{!29, !13, i64 24}
!45 = !{!29, !28, i64 16}
!46 = !{!29, !6, i64 4}
!47 = !{!29, !6, i64 8}
!48 = !{!31, !15, i64 8}
!49 = !{!31, !16, i64 16}
!50 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!51 = !{!"_ZTS11btTransform", !50, i64 0, !17, i64 48}
!52 = !{!"p1 _ZTS17btBroadphaseProxy", !10, i64 0}
!53 = !{!"p1 _ZTS16btCollisionShape", !10, i64 0}
!54 = !{!"_ZTS17btCollisionObject", !51, i64 8, !51, i64 72, !17, i64 136, !17, i64 152, !17, i64 168, !13, i64 184, !20, i64 188, !52, i64 192, !53, i64 200, !53, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !20, i64 232, !20, i64 236, !20, i64 240, !10, i64 248, !6, i64 256, !20, i64 260, !20, i64 264, !20, i64 268, !13, i64 272, !5, i64 273}
!55 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!56 = !{!"any p2 pointer", !10, i64 0}
!57 = !{!"p2 _ZTS17btCollisionObject", !56, i64 0}
!58 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !55, i64 0, !6, i64 4, !6, i64 8, !57, i64 16, !13, i64 24}
!59 = !{!"_ZTSN10btSoftBody10eAeroModel1_E", !5, i64 0}
!60 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8eVSolver1_ELj16EE"}
!61 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8eVSolver1_EE", !60, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !13, i64 24}
!62 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8ePSolver1_ELj16EE"}
!63 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EE", !62, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !13, i64 24}
!64 = !{!"_ZTSN10btSoftBody6ConfigE", !59, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36, !20, i64 40, !20, i64 44, !20, i64 48, !20, i64 52, !20, i64 56, !20, i64 60, !20, i64 64, !20, i64 68, !20, i64 72, !20, i64 76, !20, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !61, i64 104, !63, i64 136, !63, i64 168}
!65 = !{!"_ZTSN10btSoftBody11SolverStateE", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16}
!66 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!67 = !{!"p1 _ZTS9btVector3", !10, i64 0}
!68 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !66, i64 0, !6, i64 4, !6, i64 8, !67, i64 16, !13, i64 24}
!69 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!70 = !{!"p1 float", !10, i64 0}
!71 = !{!"_ZTS20btAlignedObjectArrayIfE", !69, i64 0, !6, i64 4, !6, i64 8, !70, i64 16, !13, i64 24}
!72 = !{!"_ZTSN10btSoftBody4PoseE", !13, i64 0, !13, i64 1, !20, i64 4, !68, i64 8, !71, i64 40, !17, i64 72, !50, i64 88, !50, i64 136, !50, i64 184}
!73 = !{!"p1 _ZTS19btSoftBodyWorldInfo", !10, i64 0}
!74 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NoteELj16EE"}
!75 = !{!"p1 _ZTSN10btSoftBody4NoteE", !10, i64 0}
!76 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NoteEE", !74, i64 0, !6, i64 4, !6, i64 8, !75, i64 16, !13, i64 24}
!77 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NodeELj16EE"}
!78 = !{!"p1 _ZTSN10btSoftBody4NodeE", !10, i64 0}
!79 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NodeEE", !77, i64 0, !6, i64 4, !6, i64 8, !78, i64 16, !13, i64 24}
!80 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4LinkELj16EE"}
!81 = !{!"p1 _ZTSN10btSoftBody4LinkE", !10, i64 0}
!82 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4LinkEE", !80, i64 0, !6, i64 4, !6, i64 8, !81, i64 16, !13, i64 24}
!83 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4FaceELj16EE"}
!84 = !{!"p1 _ZTSN10btSoftBody4FaceE", !10, i64 0}
!85 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4FaceEE", !83, i64 0, !6, i64 4, !6, i64 8, !84, i64 16, !13, i64 24}
!86 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody5TetraELj16EE"}
!87 = !{!"p1 _ZTSN10btSoftBody5TetraE", !10, i64 0}
!88 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody5TetraEE", !86, i64 0, !6, i64 4, !6, i64 8, !87, i64 16, !13, i64 24}
!89 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody6AnchorELj16EE"}
!90 = !{!"p1 _ZTSN10btSoftBody6AnchorE", !10, i64 0}
!91 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody6AnchorEE", !89, i64 0, !6, i64 4, !6, i64 8, !90, i64 16, !13, i64 24}
!92 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8RContactELj16EE"}
!93 = !{!"p1 _ZTSN10btSoftBody8RContactE", !10, i64 0}
!94 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8RContactEE", !92, i64 0, !6, i64 4, !6, i64 8, !93, i64 16, !13, i64 24}
!95 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8SContactELj16EE"}
!96 = !{!"p1 _ZTSN10btSoftBody8SContactE", !10, i64 0}
!97 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8SContactEE", !95, i64 0, !6, i64 4, !6, i64 8, !96, i64 16, !13, i64 24}
!98 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody5JointELj16EE"}
!99 = !{!"p2 _ZTSN10btSoftBody5JointE", !56, i64 0}
!100 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody5JointEE", !98, i64 0, !6, i64 4, !6, i64 8, !99, i64 16, !13, i64 24}
!101 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody8MaterialELj16EE"}
!102 = !{!"p2 _ZTSN10btSoftBody8MaterialE", !56, i64 0}
!103 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody8MaterialEE", !101, i64 0, !6, i64 4, !6, i64 8, !102, i64 16, !13, i64 24}
!104 = !{!"p1 _ZTS10btDbvtNode", !10, i64 0}
!105 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt6sStkNNELj16EE"}
!106 = !{!"p1 _ZTSN6btDbvt6sStkNNE", !10, i64 0}
!107 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt6sStkNNEE", !105, i64 0, !6, i64 4, !6, i64 8, !106, i64 16, !13, i64 24}
!108 = !{!"_ZTS6btDbvt", !104, i64 0, !104, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !107, i64 32}
!109 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody7ClusterELj16EE"}
!110 = !{!"p2 _ZTSN10btSoftBody7ClusterE", !56, i64 0}
!111 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody7ClusterEE", !109, i64 0, !6, i64 4, !6, i64 8, !110, i64 16, !13, i64 24}
!112 = !{!"_ZTS18btAlignedAllocatorIbLj16EE"}
!113 = !{!"p1 bool", !10, i64 0}
!114 = !{!"_ZTS20btAlignedObjectArrayIbE", !112, i64 0, !6, i64 4, !6, i64 8, !113, i64 16, !13, i64 24}
!115 = !{!"_ZTS10btSoftBody", !54, i64 0, !58, i64 280, !64, i64 312, !65, i64 512, !72, i64 536, !10, i64 768, !73, i64 776, !76, i64 784, !79, i64 816, !82, i64 848, !85, i64 880, !88, i64 912, !91, i64 944, !94, i64 976, !97, i64 1008, !100, i64 1040, !103, i64 1072, !20, i64 1104, !5, i64 1108, !13, i64 1140, !108, i64 1144, !108, i64 1208, !108, i64 1272, !111, i64 1336, !114, i64 1368, !51, i64 1400, !23, i64 1464}
!116 = !{!115, !73, i64 776}
!117 = !{!"_ZTS10btTriIndex", !6, i64 0, !53, i64 8}
!118 = !{!117, !53, i64 8}
!119 = !{!"_ZTS18btAlignedAllocatorIPN11btSparseSdfILi3EE4CellELj16EE"}
!120 = !{!"p2 _ZTSN11btSparseSdfILi3EE4CellE", !56, i64 0}
!121 = !{!"_ZTS20btAlignedObjectArrayIPN11btSparseSdfILi3EE4CellEE", !119, i64 0, !6, i64 4, !6, i64 8, !120, i64 16, !13, i64 24}
!122 = !{!121, !6, i64 4}
!123 = !{!121, !120, i64 16}
!124 = !{!"p1 _ZTSN11btSparseSdfILi3EE4CellE", !10, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"_ZTSN11btSparseSdfILi3EE4CellE", !5, i64 0, !5, i64 256, !6, i64 268, !6, i64 272, !53, i64 280, !124, i64 288}
!127 = !{!126, !124, i64 288}
!128 = !{!126, !53, i64 280}
!129 = !{i8 0, i8 2}
!130 = !{ptr @_ZN26btSoftBodyTriangleCallback10clearCacheEv}
!131 = !{!"p1 _ZTS12btIDebugDraw", !10, i64 0}
!132 = !{!20, !20, i64 0}
!133 = !{!"_ZTS9btHashKeyI10btTriIndexE", !6, i64 0}
!134 = !{!133, !6, i64 0}
!135 = !{!"_ZTS16btCollisionShape", !6, i64 8, !10, i64 16}
!136 = !{!54, !53, i64 200}
!137 = !{!31, !18, i64 56}
!138 = !{}
!139 = !{!"llvm.loop.isvectorized", i32 1}
!140 = !{!"llvm.loop.unroll.runtime.disable"}
!141 = !{!"llvm.loop.unroll.disable"}
!142 = !{!5, !5, i64 0}
!143 = !{!135, !6, i64 8}
!144 = !{!"_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback", !14, i64 0, !51, i64 8, !51, i64 72, !51, i64 136, !20, i64 200, !20, i64 204}
!145 = !{!144, !20, i64 200}
!146 = !{!144, !20, i64 204}
!147 = !{!"_ZTS13btConvexShape", !135, i64 0}
!148 = !{!"_ZTS21btConvexInternalShape", !147, i64 0, !17, i64 24, !17, i64 40, !20, i64 56, !20, i64 60}
!149 = !{!148, !20, i64 56}
!150 = !{i64 0, i64 16, !142}
!151 = !{!"p1 _ZTS20btPersistentManifold", !10, i64 0}
!152 = !{!"_ZTS36btCollisionAlgorithmConstructionInfo", !11, i64 0, !151, i64 8}
!153 = !{!152, !11, i64 0}
!154 = !{ptr @_ZN35btSoftBodyConcaveCollisionAlgorithmD2Ev}
!155 = !{!"p1 _ZTS12btStackAlloc", !10, i64 0}
!156 = !{!"_ZTS16btDispatcherInfo", !20, i64 0, !6, i64 4, !6, i64 8, !20, i64 12, !13, i64 16, !131, i64 24, !13, i64 32, !13, i64 33, !13, i64 34, !20, i64 36, !13, i64 40, !20, i64 44, !155, i64 48}
!157 = !{!156, !131, i64 24}
!158 = !{!117, !6, i64 0}
!159 = !{!54, !53, i64 208}
!160 = !{!135, !10, i64 16}
!161 = distinct !{!161, !139, !140}
!162 = distinct !{!162, !141}
!163 = distinct !{!163, !139}
!164 = !{!53, !53, i64 0}
!165 = !{i64 0, i64 4, !7, i64 8, i64 8, !164}
!166 = distinct !{!166, i1 true, !"_ZNK11btTransform7inverseEv"}
!167 = distinct !{!167, !166, !"_ZNK11btTransform7inverseEv: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!169 = distinct !{!169, !168, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!170 = !{!31, !20, i64 80}
!171 = !{!169, !167}
!172 = !{!167}
!173 = distinct !{!173, i1 true, !"_ZNK11btTransform7inverseEv"}
!174 = distinct !{!174, !173, !"_ZNK11btTransform7inverseEv: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!176 = distinct !{!176, !175, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!177 = distinct !{!177, i1 true, !"_ZNK11btTransformmlERKS_"}
!178 = distinct !{!178, !177, !"_ZNK11btTransformmlERKS_: argument 0"}
!179 = distinct !{!179, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!180 = distinct !{!180, !179, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!181 = distinct !{!181, i1 true, !"_ZNK11btTransformmlERKS_"}
!182 = distinct !{!182, !181, !"_ZNK11btTransformmlERKS_: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!184 = distinct !{!184, !183, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!185 = !{!54, !20, i64 268}
!186 = !{!176, !174}
!187 = !{!180, !178}
!188 = !{!184, !182}
!189 = !{!174}
!190 = !{!182}
!191 = !{!54, !20, i64 264}
!192 = !{!54, !20, i64 260}
!193 = !{!"_ZTSN12btConvexCast10CastResultE", !51, i64 8, !51, i64 72, !17, i64 136, !17, i64 152, !20, i64 168, !131, i64 176, !20, i64 184}
!194 = !{!193, !131, i64 176}
!195 = !{!193, !20, i64 184}
!196 = !{!193, !20, i64 168}
!197 = distinct !{!197, !139, !140}
!198 = distinct !{!198, !141}
!199 = distinct !{!199, !139}
!200 = distinct !{!200, !139, !140}
!201 = distinct !{!201, !141}
!202 = distinct !{!202, !139}
end_hunk_1
