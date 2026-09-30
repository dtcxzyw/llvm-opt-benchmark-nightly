Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBodyConcaveCollisionAlgorithm?download=true
inline.NumInlined: 432
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult:bb.a

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
  %8 = load <2 x float>, ptr %i.ab, align 4, !tbaa !132, !noalias !187 ; 3 uses
  %9 = load <2 x float>, ptr %i.aq, align 4, !tbaa !132, !noalias !187 ; 3 uses
  %10 = load <2 x float>, ptr %i.ar, align 4, !tbaa !132, !noalias !187 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = load float, ptr %i.as, align 4, !tbaa !132, !noalias !187 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.av = load float, ptr %i.au, align 4, !tbaa !132, !noalias !187 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !132, !noalias !187 ; 3 uses
  %11 = insertelement <2 x float> poison, float %i.al, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %13 = fmul <2 x float> %12, %9
  %14 = insertelement <2 x float> poison, float %i.ak, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %15, <2 x float> %13)
  %17 = insertelement <2 x float> poison, float %i.am, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %18, <2 x float> %16)
  %20 = fmul float %i.al, %i.av
  %21 = tail call float @llvm.fmuladd.f32(float %i.at, float %i.ak, float %20)
  %22 = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.am, float %21)
  %23 = fmul float %i.al, %i.l
  %24 = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.m, float %23)
  %25 = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.s, float %24)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %26 = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.az = load <2 x float>, ptr %i.ac, align 4, !tbaa !132, !noalias !188 ; 3 uses
  %i.ba = load <2 x float>, ptr %i.ay, align 4, !tbaa !132, !noalias !188 ; 3 uses
  %i.bb = load <2 x float>, ptr %26, align 4, !tbaa !132, !noalias !188 ; 3 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bc = load float, ptr %27, align 4, !tbaa !132, !noalias !188 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bd = load float, ptr %28, align 4, !tbaa !132, !noalias !188 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.be = load float, ptr %29, align 4, !tbaa !132, !noalias !188 ; 3 uses
  %30 = fmul <2 x float> %12, %i.ba
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %15, <2 x float> %30)
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %18, <2 x float> %31)
  %i.bf = load <2 x float>, ptr %i.ae, align 4, !tbaa !132, !noalias !186 ; 7 uses
  %i.bg = load <2 x float>, ptr %i.af, align 4, !tbaa !132, !noalias !186 ; 7 uses
  %33 = load <2 x float>, ptr %i.ag, align 4, !tbaa !132, !noalias !186 ; 7 uses
  %34 = load float, ptr %i.an, align 4, !tbaa !132, !noalias !189
  %35 = fneg float %34                            ; 2 uses
  %36 = load float, ptr %i.ao, align 4, !tbaa !132, !noalias !189
  %37 = fneg float %36                            ; 2 uses
  %38 = load float, ptr %i.ap, align 4, !tbaa !132, !noalias !189
  %39 = fneg float %38                            ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %9
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.bl, <2 x float> %i.bk)
  %i.bn = extractelement <2 x float> %33, i64 0   ; 2 uses
  %40 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %41 = fmul <2 x float> %40, %9
  %i.bo = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.bo, <2 x float> %41)
  %i.bp = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.bp, <2 x float> %42)
  %43 = extractelement <2 x float> %i.bg, i64 1
  %44 = extractelement <2 x float> %i.bf, i64 1
  %45 = extractelement <2 x float> %33, i64 1     ; 2 uses
  %i.br = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = insertelement <2 x float> %i.br, float %37, i64 1 ; 2 uses
  %i.bt = fmul <2 x float> %i.bg, %i.bs
  %i.bu = insertelement <2 x float> %i.k, float %35, i64 1 ; 2 uses
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bw = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %39, i64 1 ; 2 uses
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %i.bx, <2 x float> %i.bv) ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ca = fmul <2 x float> %i.bg, %i.bz
  %i.cb = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.cb, <2 x float> %i.ca)
  %i.cd = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %i.cd, <2 x float> %i.cc) ; 2 uses
  %i.cf = fadd <2 x float> %i.by, %i.ce           ; 6 uses
  %i.cg = fmul <2 x float> %i.bh, %i.ba
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.bj, <2 x float> %i.cg)
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bl, <2 x float> %i.ch)
  %i.cj = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ck = insertelement <4 x float> %i.cj, float %i.al, i64 0
  %i.cl = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.av, i64 1
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.co = fmul <4 x float> %i.ck, %i.cn
  %i.cp = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.at, i64 1
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cs = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ct = insertelement <4 x float> %i.cs, float %i.ak, i64 0
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.ct, <4 x float> %i.co) ; 4 uses
  %i.cv = extractelement <4 x float> %i.cu, i64 0
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.am, float %i.cv)
  %i.cx = extractelement <4 x float> %i.cu, i64 1
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.bn, float %i.cx)
  %i.cz = extractelement <4 x float> %i.cu, i64 3
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %45, float %i.cz)
  %i.db = extractelement <4 x float> %i.cu, i64 2
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.bn, float %i.db)
  %i.dd = fmul <2 x float> %40, %i.ba
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.bo, <2 x float> %i.dd)
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bp, <2 x float> %i.de)
  %i.dg = fmul float %43, %i.bd
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.bc, float %44, float %i.dg)
  %i.di = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %45, float %i.dh)
  %i.dj = insertelement <2 x float> poison, float %i.g, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = shufflevector <2 x float> %i.ce, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.dm = load <2 x float>, ptr %i.h, align 4, !tbaa !132, !noalias !190 ; 3 uses
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = insertelement <2 x float> %i.dn, float %37, i64 0
  %i.dp = fmul <2 x float> %12, %i.do
  %i.dq = insertelement <2 x float> poison, float %35, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.g, i64 1
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = insertelement <2 x float> %i.dm, float %39, i64 0
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %i.dt, <2 x float> %i.ds) ; 3 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = fadd float %i.dv, %25                   ; 5 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0 ; 3 uses
  %i.dx = fmul <2 x float> %i.bg, %i.dn
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.dk, <2 x float> %i.dx)
  %i.dz = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %i.dz, <2 x float> %i.dy)
  %i.eb = fadd <2 x float> %i.dl, %i.ea           ; 5 uses
  %shift = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.du, %shift ; 2 uses
  %i.ec = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %.sroa.3.12.vec.insert.i.i31119 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !136 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !143
  %i.eh = add i32 %i.eg, -21
  %i.ei = icmp ult i32 %i.eh, 9
  br i1 %i.ei, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <2 x float> %i.cf, ptr %5, align 8
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !142
  %i.ej = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.ek = extractelement <2 x float> %i.eb, i64 0 ; 3 uses
  %i.el = fcmp olt float %i.ek, %i.ej
  br i1 %i.el, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  store float %i.ek, ptr %5, align 8, !tbaa !132
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.d, %bb.c
  %i.em = phi float [ %i.ek, %bb.d ], [ %i.ej, %bb.c ]
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.eo = extractelement <2 x float> %i.cf, i64 1 ; 2 uses
  %i.ep = extractelement <2 x float> %i.eb, i64 1 ; 3 uses
  %i.eq = fcmp olt float %i.ep, %i.eo
  br i1 %i.eq, label %bb.e, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.ep, ptr %i.en, align 4, !tbaa !132
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.e, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.er = phi float [ %i.ep, %bb.e ], [ %i.eo, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.es = fcmp olt float %i.ec, %i.dw
  %i.et = select i1 %i.es, float %i.ec, float %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.sroa.22.48..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !142
  %i.eu = fcmp olt <2 x float> %i.cf, %i.eb
  %i.ev = fcmp olt float %i.dw, %i.ec
  %i.ew = select i1 %i.ev, float %i.ec, float %i.dw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !191 ; 6 uses
  %i.ez = fsub float %i.em, %i.ey
  store float %i.ez, ptr %5, align 8, !tbaa !132
  %i.fa = fsub float %i.er, %i.ey
  store float %i.fa, ptr %i.en, align 4, !tbaa !132
  %i.fb = fsub float %i.et, %i.ey
  store float %i.fb, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !132
  %i.fc = select <2 x i1> %i.eu, <2 x float> %i.eb, <2 x float> %i.cf
  %i.fd = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fadd <2 x float> %i.fe, %i.fc
  store <2 x float> %i.ff, ptr %6, align 8, !tbaa !132
  %i.fg = fadd float %i.ey, %i.ew
  store float %i.fg, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.bm, ptr %i.fh, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %i.cy, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !142
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %i.bq, ptr %i.fi, align 8
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.da, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !142
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %19, ptr %i.fj, align 8
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %22, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !142
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.cf, ptr %i.fk, align 8
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !142
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <2 x float> %i.ci, ptr %i.fl, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store float %i.dc, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !142
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <2 x float> %i.df, ptr %i.fm, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.di, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !142
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <2 x float> %32, ptr %i.fn, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  store float %i.cw, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !142
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.eb, ptr %i.fo, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i.i31119, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !142
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.ey, ptr %i.fp, align 8, !tbaa !145
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 260 ; 3 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !192
  store float %i.fs, ptr %i.fq, align 4, !tbaa !146
  %i.ft = load ptr, ptr %i.ee, align 8, !tbaa !9
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  %i.fv = load ptr, ptr %i.fu, align 8
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(28) %i.ee, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.i unwind label %bb.k

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.fx = load float, ptr %i.fq, align 4, !tbaa !146 ; 3 uses
  %i.fy = load float, ptr %i.fr, align 4, !tbaa !192
  %i.fz = fcmp uge float %i.fx, %i.fy
  br i1 %i.fz, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.fx, ptr %i.fr, align 4, !tbaa !192
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %i.fw

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %i.fx, %bb.h ], [ 1.000000e+00, %bb.g ]
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.2 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %.2.ph, %.sink.split ]
  ret float %.2

bb.k:                                             ; preds = %bb.f
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #12
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
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define internal void @_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 11 uses
  %5 = alloca %"struct.btConvexCast::CastResult", align 8 ; 8 uses
  %6 = alloca %class.btSphereShape, align 8       ; 11 uses
  %7 = alloca %class.btTriangleShape, align 8     ; 12 uses
  %8 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %9 = alloca %class.btSubsimplexConvexCast, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store float 1.000000e+00, ptr %4, align 4, !tbaa !132
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %5, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr null, ptr %i.g, align 8, !tbaa !194
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 184
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !146
  store float %i.j, ptr %i.f, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load float, ptr %i.k, align 8, !tbaa !145 ; 2 uses
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %6, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 8, ptr %i.m, align 8, !tbaa !143
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.l, ptr %i.n, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 56
  store float %i.l, ptr %i.o, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %7, align 8, !tbaa !9
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !150
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !150
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !150
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 328 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -16
  store i8 %i.w, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = invoke noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(64) %i.x, ptr noundef nonnull align 4 dereferenceable(64) %i.y, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.aa = load float, ptr %i.i, align 4, !tbaa !146
  %i.ab = load float, ptr %i.f, align 8, !tbaa !196 ; 2 uses
  %i.ac = fcmp ogt float %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store float %i.ab, ptr %i.i, align 4, !tbaa !146
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.j, %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
end_hunk_0
