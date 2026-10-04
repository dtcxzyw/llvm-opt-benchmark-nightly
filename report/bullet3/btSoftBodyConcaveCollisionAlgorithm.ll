Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyConcaveCollisionAlgorithm?download=true
inline.NumInlined: 428
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv:bb.a

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
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = insertelement <2 x float> %i.co, float %i.ck, i64 0
  %i.cq = fmul <2 x float> %i.bc, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.g, i64 1
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = insertelement <2 x float> %i.cn, float %i.cm, i64 0
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.cu, <2 x float> %i.ct) ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = fmul <2 x float> %i.cw, %i.at
  %i.cy = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.cy, <2 x float> %i.cx)
  %i.da = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.da, <2 x float> %i.cz)
  %i.dc = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = fmul <2 x float> %i.dc, %i.at
  %i.de = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dg = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.dg, <2 x float> %i.df)
  %i.di = extractelement <2 x float> %i.cf, i64 1
  %i.dj = extractelement <2 x float> %i.ce, i64 1
  %i.dk = extractelement <2 x float> %i.cg, i64 1
  %i.dl = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dm = insertelement <2 x float> %i.dl, float %i.ck, i64 1 ; 2 uses
  %i.dn = fmul <2 x float> %i.cf, %i.dm
  %i.do = insertelement <2 x float> %i.k, float %i.ci, i64 1 ; 2 uses
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.ce, <2 x float> %i.dn)
  %i.dq = insertelement <2 x float> poison, float %i.s, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.cm, i64 1 ; 2 uses
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.cg, <2 x float> %i.dp) ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.du = fmul <2 x float> %i.cf, %i.dt
  %i.dv = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dv, <2 x float> %i.du)
  %i.dx = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.dx, <2 x float> %i.dw) ; 2 uses
  %i.dz = fadd <2 x float> %i.ds, %i.dy           ; 6 uses
  %i.ea = extractelement <2 x float> %i.cv, i64 0
  %i.eb = fadd float %i.ea, %i.bp                 ; 5 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eb, i64 0 ; 3 uses
  %i.ec = fmul <2 x float> %i.cw, %i.bt
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.cy, <2 x float> %i.ec)
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.da, <2 x float> %i.ed)
  %i.ef = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.eg = insertelement <4 x float> %i.ef, float %i.al, i64 0
  %i.eh = insertelement <4 x float> poison, float %i.by, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.ay, i64 1
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ek = fmul <4 x float> %i.eg, %i.ej
  %i.el = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.em = insertelement <4 x float> %i.el, float %i.aw, i64 1
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eo = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ep = insertelement <4 x float> %i.eo, float %i.ak, i64 0
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.ep, <4 x float> %i.ek)
  %8 = insertelement <4 x float> poison, float %i.ca, i64 0
  %9 = insertelement <4 x float> %8, float %i.ba, i64 1
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %11 = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %12 = insertelement <4 x float> %11, float %i.am, i64 0
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %12, <4 x float> %i.eq) ; 4 uses
  %i.er = fmul <2 x float> %i.dc, %i.bt
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.de, <2 x float> %i.er)
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.dg, <2 x float> %i.es)
  %i.eu = fmul float %i.di, %i.by
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.dj, float %i.eu)
  %i.ew = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.dk, float %i.ev)
  %i.ex = fmul <2 x float> %i.cf, %i.co
  %i.ey = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.ce, <2 x float> %i.ex)
  %i.fb = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.cg, <2 x float> %i.fa)
  %i.fd = shufflevector <2 x float> %i.dy, <2 x float> %i.ds, <2 x i32> <i32 0, i32 3>
  %i.fe = fadd <2 x float> %i.fd, %i.fc           ; 5 uses
  %shift = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cv, %shift ; 2 uses
  %i.ff = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %.sroa.3.12.vec.insert.i4.i.i31119 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !176 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !185
  %i.fk = add i32 %i.fj, -21
  %i.fl = icmp ult i32 %i.fk, 9
  br i1 %i.fl, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <2 x float> %i.dz, ptr %5, align 8
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !184
  %i.fm = extractelement <2 x float> %i.dz, i64 0 ; 2 uses
  %i.fn = extractelement <2 x float> %i.fe, i64 0 ; 3 uses
  %i.fo = fcmp olt float %i.fn, %i.fm
  br i1 %i.fo, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  store float %i.fn, ptr %5, align 8, !tbaa !172
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.d, %bb.c
  %i.fp = phi float [ %i.fn, %bb.d ], [ %i.fm, %bb.c ]
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.fr = extractelement <2 x float> %i.dz, i64 1 ; 2 uses
  %i.fs = extractelement <2 x float> %i.fe, i64 1 ; 3 uses
  %i.ft = fcmp olt float %i.fs, %i.fr
  br i1 %i.ft, label %bb.e, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.fs, ptr %i.fq, align 4, !tbaa !172
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.e, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.fu = phi float [ %i.fs, %bb.e ], [ %i.fr, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.fv = fcmp olt float %i.ff, %i.eb
  %i.fw = select i1 %i.fv, float %i.ff, float %i.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %.sroa.22.48..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !184
  %i.fx = fcmp olt <2 x float> %i.dz, %i.fe
  %i.fy = fcmp olt float %i.eb, %i.ff
  %i.fz = select i1 %i.fy, float %i.ff, float %i.eb
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.gb = load float, ptr %i.ga, align 8, !tbaa !241 ; 6 uses
  %i.gc = fsub float %i.fp, %i.gb
  store float %i.gc, ptr %5, align 8, !tbaa !172
  %i.gd = fsub float %i.fu, %i.gb
  store float %i.gd, ptr %i.fq, align 4, !tbaa !172
  %i.ge = fsub float %i.fw, %i.gb
  store float %i.ge, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !172
  %i.gf = select <2 x i1> %i.fx, <2 x float> %i.fe, <2 x float> %i.dz
  %i.gg = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fadd <2 x float> %i.gh, %i.gf
  store <2 x float> %i.gi, ptr %6, align 8, !tbaa !172
  %i.gj = fadd float %i.gb, %i.fz
  store float %i.gj, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !14
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.db, ptr %i.gk, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %14 = extractelement <4 x float> %13, i64 1
  store float %14, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !184
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %i.dh, ptr %i.gl, align 8
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %15 = extractelement <4 x float> %13, i64 3
  store float %15, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !184
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %i.bj, ptr %i.gm, align 8
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %i.bm, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !184
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.dz, ptr %i.gn, align 8
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !184
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <2 x float> %i.ee, ptr %i.go, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  %16 = extractelement <4 x float> %13, i64 2
  store float %16, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !184
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <2 x float> %i.et, ptr %i.gp, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.ew, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !184
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <2 x float> %i.cd, ptr %i.gq, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  %17 = extractelement <4 x float> %13, i64 0
  store float %17, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !184
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.fe, ptr %i.gr, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i31119, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !184
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.gb, ptr %i.gs, align 8, !tbaa !187
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 3 uses
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !242
  store float %i.gv, ptr %i.gt, align 4, !tbaa !188
  %i.gw = load ptr, ptr %i.fh, align 8, !tbaa !14
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  %i.gy = load ptr, ptr %i.gx, align 8
  invoke void %i.gy(ptr noundef nonnull align 8 dereferenceable(36) %i.fh, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.gz

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.ha = load float, ptr %i.gt, align 4, !tbaa !188 ; 3 uses
  %i.hb = load float, ptr %i.gu, align 4, !tbaa !242
  %i.hc = fcmp uge float %i.ha, %i.hb
  br i1 %i.hc, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.ha, ptr %i.gu, align 4, !tbaa !242
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %i.ha, %bb.h ], [ 1.000000e+00, %bb.g ]
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
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
end_hunk_0
