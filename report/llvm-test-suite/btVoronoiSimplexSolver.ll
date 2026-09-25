Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btVoronoiSimplexSolver?download=true
inline.NumInlined: 152
inline.NumDeleted: 19
begin_hunk_0_@_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv:bb.a
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.lf = load float, ptr %i.le, align 4, !tbaa !20
  %i.lg = fmul float %i.jg, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.li = load float, ptr %i.lh, align 4, !tbaa !20
  %i.lj = fmul float %i.jg, %i.li
  %i.lk = fadd float %i.ky, %i.ld
  %i.ll = fadd float %i.kz, %i.lg
  %i.lm = fadd float %i.la, %i.lj
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !20
  %i.lp = fmul float %i.ju, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !20
  %i.ls = fmul float %i.ju, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !20
  %i.lv = fmul float %i.ju, %i.lu
  %i.lw = fadd float %i.lk, %i.lp                 ; 2 uses
  %i.lx = fadd float %i.ll, %i.ls                 ; 2 uses
  %i.ly = fadd float %i.lm, %i.lv                 ; 2 uses
  %.sroa.0.0.vec.insert.i224 = insertelement <2 x float> poison, float %i.lw, i64 0
  %.sroa.0.4.vec.insert.i225 = insertelement <2 x float> %.sroa.0.0.vec.insert.i224, float %i.lx, i64 1
  %.sroa.3.12.vec.insert.i226 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ly, i64 0
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 260
  store <2 x float> %.sroa.0.4.vec.insert.i225, ptr %i.lz, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 268
  store <2 x float> %.sroa.3.12.vec.insert.i226, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !15
  %i.ma = fsub float %i.kc, %i.lw
  %i.mb = fsub float %i.kd, %i.lx
  %i.mc = fsub float %i.ke, %i.ly
  %.sroa.0.0.vec.insert.i229 = insertelement <2 x float> poison, float %i.ma, i64 0
  %.sroa.0.4.vec.insert.i230 = insertelement <2 x float> %.sroa.0.0.vec.insert.i229, float %i.mb, i64 1
  %.sroa.3.12.vec.insert.i231 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mc, i64 0
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 276
  store <2 x float> %.sroa.0.4.vec.insert.i230, ptr %i.md, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 284
  store <2 x float> %.sroa.3.12.vec.insert.i231, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %i.me = load i32, ptr %0, align 4, !tbaa !14    ; 6 uses
  %i.mf = icmp sgt i32 %i.me, 3
  br i1 %i.mf, label %bb.s, label %thread-pre-split.i234

bb.s:                                             ; preds = %bb.r
  %i.mg = load i8, ptr %i.f, align 4              ; 3 uses
  %i.mh = and i8 %i.mg, 8
  %.not.i242 = icmp eq i8 %i.mh, 0
  br i1 %.not.i242, label %bb.t, label %thread-pre-split.thread.i240

bb.t:                                             ; preds = %bb.s
  %i.mi = add nsw i32 %i.me, -1                   ; 3 uses
  store i32 %i.mi, ptr %0, align 4, !tbaa !14
  %i.mj = zext nneg i32 %i.mi to i64              ; 3 uses
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.mj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.id, ptr noundef nonnull align 4 dereferenceable(16) %i.mk, i64 16, i1 false), !tbaa.struct !16
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.mj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jr, ptr noundef nonnull align 4 dereferenceable(16) %i.ml, i64 16, i1 false), !tbaa.struct !16
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.mj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ln, ptr noundef nonnull align 4 dereferenceable(16) %i.mm, i64 16, i1 false), !tbaa.struct !16
  br label %thread-pre-split.thread.i240

thread-pre-split.i234:                            ; preds = %bb.r
  %i.mn = icmp eq i32 %i.me, 3
  br i1 %i.mn, label %thread-pre-split.i234.thread-pre-split.thread.i240_crit_edge, label %bb.v

thread-pre-split.i234.thread-pre-split.thread.i240_crit_edge: ; preds = %thread-pre-split.i234
  %.pre = load i8, ptr %i.f, align 4
  br label %thread-pre-split.thread.i240

thread-pre-split.thread.i240:                     ; preds = %thread-pre-split.i234.thread-pre-split.thread.i240_crit_edge, %bb.t, %bb.s
  %i.mo = phi i8 [ %.pre, %thread-pre-split.i234.thread-pre-split.thread.i240_crit_edge ], [ %i.mg, %bb.t ], [ %i.mg, %bb.s ] ; 3 uses
  %i.mp = phi i32 [ 3, %thread-pre-split.i234.thread-pre-split.thread.i240_crit_edge ], [ %i.mi, %bb.t ], [ %i.me, %bb.s ] ; 2 uses
  %i.mq = and i8 %i.mo, 4
  %.not5.i241 = icmp eq i8 %i.mq, 0
  br i1 %.not5.i241, label %bb.u, label %.thread.i238

bb.u:                                             ; preds = %thread-pre-split.thread.i240
  %i.mr = add nsw i32 %i.mp, -1                   ; 3 uses
  store i32 %i.mr, ptr %0, align 4, !tbaa !14
  %i.ms = zext nneg i32 %i.mr to i64              ; 3 uses
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.ms
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ic, ptr noundef nonnull align 4 dereferenceable(16) %i.mt, i64 16, i1 false), !tbaa.struct !16
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.ms
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(16) %i.mu, i64 16, i1 false), !tbaa.struct !16
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.ms
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lb, ptr noundef nonnull align 4 dereferenceable(16) %i.mv, i64 16, i1 false), !tbaa.struct !16
  br label %.thread.i238

bb.v:                                             ; preds = %thread-pre-split.i234
  %i.mw = icmp sgt i32 %i.me, 1
  br i1 %i.mw, label %..thread.i238_crit_edge, label %thread-pre-split8.i235

..thread.i238_crit_edge:                          ; preds = %bb.v
  %.pre368 = load i8, ptr %i.f, align 4
  br label %.thread.i238

.thread.i238:                                     ; preds = %..thread.i238_crit_edge, %bb.u, %thread-pre-split.thread.i240
  %i.mx = phi i8 [ %.pre368, %..thread.i238_crit_edge ], [ %i.mo, %thread-pre-split.thread.i240 ], [ %i.mo, %bb.u ] ; 3 uses
  %i.my = phi i32 [ 2, %..thread.i238_crit_edge ], [ %i.mp, %thread-pre-split.thread.i240 ], [ %i.mr, %bb.u ] ; 2 uses
  %i.mz = and i8 %i.mx, 2
  %.not6.i239 = icmp eq i8 %i.mz, 0
  br i1 %.not6.i239, label %bb.w, label %thread-pre-split8.thread.i236

bb.w:                                             ; preds = %.thread.i238
  %i.na = add nsw i32 %i.my, -1                   ; 3 uses
  store i32 %i.na, ptr %0, align 4, !tbaa !14
  %i.nb = zext nneg i32 %i.na to i64              ; 3 uses
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.nb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ib, ptr noundef nonnull align 4 dereferenceable(16) %i.nc, i64 16, i1 false), !tbaa.struct !16
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.nb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ip, ptr noundef nonnull align 4 dereferenceable(16) %i.nd, i64 16, i1 false), !tbaa.struct !16
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.nb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kp, ptr noundef nonnull align 4 dereferenceable(16) %i.ne, i64 16, i1 false), !tbaa.struct !16
  br label %thread-pre-split8.thread.i236

thread-pre-split8.i235:                           ; preds = %bb.v
  %i.nf = icmp eq i32 %i.me, 1
  br i1 %i.nf, label %thread-pre-split8.i235.thread-pre-split8.thread.i236_crit_edge, label %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243

thread-pre-split8.i235.thread-pre-split8.thread.i236_crit_edge: ; preds = %thread-pre-split8.i235
  %.pre369 = load i8, ptr %i.f, align 4
  br label %thread-pre-split8.thread.i236

thread-pre-split8.thread.i236:                    ; preds = %thread-pre-split8.i235.thread-pre-split8.thread.i236_crit_edge, %bb.w, %.thread.i238
  %i.ng = phi i8 [ %.pre369, %thread-pre-split8.i235.thread-pre-split8.thread.i236_crit_edge ], [ %i.mx, %bb.w ], [ %i.mx, %.thread.i238 ]
  %i.nh = phi i32 [ 1, %thread-pre-split8.i235.thread-pre-split8.thread.i236_crit_edge ], [ %i.na, %bb.w ], [ %i.my, %.thread.i238 ]
  %i.ni = and i8 %i.ng, 1
  %.not7.i237 = icmp eq i8 %i.ni, 0
  br i1 %.not7.i237, label %bb.x, label %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243

bb.x:                                             ; preds = %thread-pre-split8.thread.i236
  %i.nj = add nsw i32 %i.nh, -1                   ; 2 uses
  store i32 %i.nj, ptr %0, align 4, !tbaa !14
  %i.nk = zext nneg i32 %i.nj to i64              ; 3 uses
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ia, ptr noundef nonnull align 4 dereferenceable(16) %i.nl, i64 16, i1 false), !tbaa.struct !16
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.if, ptr noundef nonnull align 4 dereferenceable(16) %i.nm, i64 16, i1 false), !tbaa.struct !16
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kg, ptr noundef nonnull align 4 dereferenceable(16) %i.nn, i64 16, i1 false), !tbaa.struct !16
  br label %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243

_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243: ; preds = %thread-pre-split8.i235, %thread-pre-split8.thread.i236, %bb.x
  %i.no = load <4 x float>, ptr %i.e, align 4
  %.fr = freeze <4 x float> %i.no
  %i.np = fcmp ult <4 x float> %.fr, zeroinitializer
  %i.nq = bitcast <4 x i1> %i.np to i4
  %i.nr = icmp eq i4 %i.nq, 0
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.nt = zext i1 %i.nr to i8                     ; 2 uses
  store i8 %i.nt, ptr %i.ns, align 4, !tbaa !17
  br label %bb.ab

bb.y:                                             ; preds = %bb.q
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.nv = load i8, ptr %i.nu, align 4, !tbaa !23, !range !21, !noundef !22
  %i.nw = trunc nuw i8 %i.nv to i1
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  br i1 %i.nw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.nx, align 4, !tbaa !17
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i8 1, ptr %i.nx, align 4, !tbaa !17
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ny, i8 0, i64 16, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243
  %i.nz = phi i8 [ 0, %bb.z ], [ 1, %bb.aa ], [ %i.nt, %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.ad

bb.ac:                                            ; preds = %bb.b
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 0, ptr %i.oa, align 4, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.c, %bb.d, %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit, %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit156, %bb.ab, %bb.ac
  %i.ob = phi i8 [ %.pre373, %._crit_edge ], [ 0, %bb.c ], [ 1, %bb.d ], [ %i.cy, %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit ], [ %i.hz, %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit156 ], [ %i.nz, %bb.ab ], [ 0, %bb.ac ]
  %i.oc = trunc nuw i8 %i.ob to i1
  ret i1 %i.oc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nofree nonnull readnone align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(37) initializes((0, 16), (20, 36)) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -16                         ; 8 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !20 ; 4 uses
  %i.g = load <2 x float>, ptr %3, align 4, !tbaa !20 ; 6 uses
  %i.h = load <2 x float>, ptr %4, align 4, !tbaa !20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !20 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %i.m = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 1, i32 3>
  %i.n = insertelement <2 x float> poison, float %i.f, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.j, i64 1
  %i.p = load float, ptr %2, align 4, !tbaa !20   ; 5 uses
  %i.q = load <2 x float>, ptr %i.d, align 4, !tbaa !20 ; 5 uses
  %i.r = insertelement <2 x float> poison, float %i.p, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fsub <2 x float> %i.l, %i.s              ; 7 uses
  %i.u = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fsub <2 x float> %i.m, %i.u              ; 7 uses
  %i.w = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fsub <2 x float> %i.o, %i.w              ; 7 uses
  %7 = load float, ptr %i.k, align 4, !tbaa !20   ; 3 uses
  %i.y = load float, ptr %1, align 4, !tbaa !20   ; 3 uses
  %8 = load float, ptr %6, align 4, !tbaa !20     ; 3 uses
  %9 = extractelement <2 x float> %i.q, i64 0     ; 3 uses
  %10 = fsub float %7, %9
  %i.z = fsub float %i.y, %i.p
  %11 = extractelement <2 x float> %i.q, i64 1    ; 3 uses
  %12 = fsub float %8, %11
  %13 = insertelement <2 x float> poison, float %10, i64 0
  %i.aa = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.v, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ad, <2 x float> %i.ab)
  %14 = insertelement <2 x float> poison, float %12, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %15, <2 x float> %i.ae) ; 4 uses
  %i.ag = fcmp ugt <2 x float> %i.af, zeroinitializer
  %i.ah = bitcast <2 x i1> %i.ag to i2
  %i.ai = icmp eq i2 %i.ah, 0
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !16
  %i.aj = or disjoint i8 %i.c, 1
  store i8 %i.aj, ptr %i.a, align 4
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.ak = extractelement <2 x float> %i.g, i64 0
  %16 = extractelement <2 x float> %i.g, i64 1
  %17 = fsub float %7, %16
  %i.al = fsub float %i.y, %i.ak
  %18 = fsub float %8, %i.f
  %19 = insertelement <2 x float> poison, float %17, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.v, %20
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ao, <2 x float> %i.am)
  %i.aq = insertelement <2 x float> poison, float %18, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.ar, <2 x float> %i.ap) ; 3 uses
  %i.at = extractelement <2 x float> %i.as, i64 0 ; 6 uses
  %i.au = fcmp ult float %i.at, 0.000000e+00
  %i.av = extractelement <2 x float> %i.as, i64 1 ; 4 uses
  %i.aw = fcmp ugt float %i.av, %i.at
  %or.cond118 = or i1 %i.au, %i.aw
  br i1 %or.cond118, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !16
  %i.ax = or disjoint i8 %i.c, 2
  store i8 %i.ax, ptr %i.a, align 4
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.ay = extractelement <2 x float> %i.af, i64 1 ; 5 uses
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.at, %i.az
  %i.bb = extractelement <2 x float> %i.af, i64 0 ; 4 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.av, float %i.ba) ; 3 uses
  %i.bd = fcmp ole float %i.bc, 0.000000e+00
  %i.be = fcmp oge float %i.bb, 0.000000e+00
  %or.cond3 = and i1 %i.be, %i.bd
  %i.bf = fcmp ole float %i.at, 0.000000e+00
  %or.cond5 = and i1 %i.bf, %or.cond3
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop = fsub <2 x float> %i.af, %i.as
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = fdiv float %i.bb, %i.bg                 ; 5 uses
  %i.bi = extractelement <2 x float> %i.t, i64 0
  %i.bj = fmul float %i.bi, %i.bh
  %i.bk = extractelement <2 x float> %i.v, i64 0
  %i.bl = fmul float %i.bk, %i.bh
  %i.bm = extractelement <2 x float> %i.x, i64 0
  %i.bn = fmul float %i.bm, %i.bh
  %i.bo = fadd float %i.p, %i.bj
  %i.bp = fadd float %9, %i.bl
  %i.bq = fadd float %11, %i.bn
  %.sroa.0.0.vec.insert.i135 = insertelement <2 x float> poison, float %i.bo, i64 0
  %.sroa.0.4.vec.insert.i136 = insertelement <2 x float> %.sroa.0.0.vec.insert.i135, float %i.bp, i64 1
  %.sroa.3.12.vec.insert.i137 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bq, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i136, ptr %5, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i137, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !15
  %i.br = or disjoint i8 %i.c, 3
  store i8 %i.br, ptr %i.a, align 4
  %i.bs = fsub float 1.000000e+00, %i.bh
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.bt = extractelement <2 x float> %i.h, i64 0
  %21 = extractelement <2 x float> %i.h, i64 1
  %i.bu = fsub float %7, %21
  %i.bv = fsub float %i.y, %i.bt
  %22 = fsub float %8, %i.j
  %23 = insertelement <2 x float> poison, float %i.bu, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.v, %24
  %i.bx = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.by, <2 x float> %i.bw)
  %i.ca = insertelement <2 x float> poison, float %22, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.cb, <2 x float> %i.bz) ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 1 ; 7 uses
  %i.ce = fcmp ult float %i.cd, 0.000000e+00
  %i.cf = extractelement <2 x float> %i.cc, i64 0 ; 4 uses
  %i.cg = fcmp ugt float %i.cf, %i.cd
  %or.cond119 = or i1 %i.ce, %i.cg
  br i1 %or.cond119, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !16
  %i.ch = or disjoint i8 %i.c, 4
  store i8 %i.ch, ptr %i.a, align 4
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ci = fneg float %i.cd
  %i.cj = fmul float %i.bb, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ay, float %i.cj) ; 3 uses
  %i.cl = fcmp ole float %i.ck, 0.000000e+00
  %i.cm = fcmp oge float %i.ay, 0.000000e+00
  %or.cond7 = and i1 %i.cm, %i.cl
  %i.cn = fcmp ole float %i.cd, 0.000000e+00
  %or.cond9 = and i1 %i.cn, %or.cond7
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = fsub float %i.ay, %i.cd
  %i.cp = fdiv float %i.ay, %i.co                 ; 5 uses
  %i.cq = extractelement <2 x float> %i.t, i64 1
  %i.cr = fmul float %i.cq, %i.cp
  %i.cs = extractelement <2 x float> %i.v, i64 1
  %i.ct = fmul float %i.cs, %i.cp
  %i.cu = extractelement <2 x float> %i.x, i64 1
  %i.cv = fmul float %i.cu, %i.cp
  %i.cw = fadd float %i.p, %i.cr
  %i.cx = fadd float %9, %i.ct
  %i.cy = fadd float %11, %i.cv
  %.sroa.0.0.vec.insert.i150 = insertelement <2 x float> poison, float %i.cw, i64 0
  %.sroa.0.4.vec.insert.i151 = insertelement <2 x float> %.sroa.0.0.vec.insert.i150, float %i.cx, i64 1
  %.sroa.3.12.vec.insert.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cy, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i151, ptr %5, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i152, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !15
  %i.cz = or disjoint i8 %i.c, 5
  store i8 %i.cz, ptr %i.a, align 4
  %i.da = fsub float 1.000000e+00, %i.cp
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.db = fneg float %i.av
  %i.dc = fmul float %i.cf, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.at, float %i.cd, float %i.dc) ; 2 uses
  %i.de = fcmp ugt float %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = fsub float %i.av, %i.at                 ; 3 uses
  %i.dg = fcmp ult float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = fsub float %i.cf, %i.cd                 ; 2 uses
  %i.di = fcmp ult float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = fadd float %i.df, %i.dh
  %i.dk = fdiv float %i.df, %i.dj                 ; 4 uses
  %i.dl = fsub <2 x float> %i.h, %i.g
  %i.dm = fsub float %i.j, %i.f
  %i.dn = fmul float %i.dm, %i.dk
  %i.do = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dl, %i.dp
  %i.dr = fadd <2 x float> %i.g, %i.dq
  %i.ds = fadd float %i.f, %i.dn
  %.sroa.3.12.vec.insert.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  store <2 x float> %i.dr, ptr %5, align 4
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i167, ptr %.sroa.412.0..sroa_idx, align 4, !tbaa !15
  %i.dt = or disjoint i8 %i.c, 6
  store i8 %i.dt, ptr %i.a, align 4
  %i.du = fsub float 1.000000e+00, %i.dk
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.dv = fadd float %i.dd, %i.ck
  %i.dw = fadd float %i.bc, %i.dv
  %i.dx = fdiv float 1.000000e+00, %i.dw          ; 2 uses
  %i.dy = extractelement <2 x float> %i.t, i64 0
  %i.dz = extractelement <2 x float> %i.t, i64 1
  %i.ea = fmul float %i.ck, %i.dx                 ; 4 uses
  %i.eb = fmul float %i.bc, %i.dx                 ; 4 uses
  %i.ec = fmul float %i.dy, %i.ea
  %i.ed = shufflevector <2 x float> %i.v, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ee = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.ed, %i.ef
  %i.eh = fadd float %i.p, %i.ec
  %i.ei = fadd <2 x float> %i.q, %i.eg
  %i.ej = fmul float %i.dz, %i.eb
  %i.ek = shufflevector <2 x float> %i.v, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.ek, %i.em
  %i.eo = fadd float %i.ej, %i.eh
  %i.ep = fadd <2 x float> %i.en, %i.ei           ; 2 uses
  %.sroa.0.0.vec.insert.i185 = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eq = shufflevector <2 x float> %.sroa.0.0.vec.insert.i185, <2 x float> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.er = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ep, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.eq, ptr %5, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.er, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %i.es = or disjoint i8 %i.c, 7
  store i8 %i.es, ptr %i.a, align 4
  %i.et = fsub float 1.000000e+00, %i.ea
  %i.eu = fsub float %i.et, %i.eb
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.o, %bb.n, %bb.h, %bb.b
  %.sink293 = phi float [ 0.000000e+00, %bb.d ], [ %i.bs, %bb.f ], [ %i.da, %bb.j ], [ %i.eu, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.h ], [ 1.000000e+00, %bb.b ]
  %.sink291 = phi float [ 1.000000e+00, %bb.d ], [ %i.bh, %bb.f ], [ 0.000000e+00, %bb.j ], [ %i.ea, %bb.o ], [ %i.du, %bb.n ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %.sink = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.cp, %bb.j ], [ %i.eb, %bb.o ], [ %i.dk, %bb.n ], [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sink293, ptr %i.ev, align 4, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink291, ptr %i.ew, align 4, !tbaa !20
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %.sink, ptr %i.ex, align 4, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !20
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult(ptr nofree nonnull readnone align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(37) initializes((0, 16)) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca %struct.btSubSimplexClosestResult, align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -16
  store i8 %i.c, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, -16
  %i.g = or i8 %i.e, 15
  store i8 %i.g, ptr %i.d, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load <2 x float>, ptr %3, align 4, !tbaa !20 ; 5 uses
  %i.o = load <2 x float>, ptr %2, align 4, !tbaa !20 ; 7 uses
  %8 = load float, ptr %i.i, align 4, !tbaa !20   ; 2 uses
  %9 = load <2 x float>, ptr %4, align 4, !tbaa !20 ; 2 uses
  %10 = insertelement <2 x float> poison, float %8, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = shufflevector <2 x float> %9, <2 x float> %i.n, <2 x i32> <i32 0, i32 3>
  %i.q = fsub <2 x float> %i.p, %i.o              ; 7 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %12 = load <2 x float>, ptr %5, align 4, !tbaa !20 ; 2 uses
  %13 = load float, ptr %i.m, align 4, !tbaa !20  ; 2 uses
  %14 = extractelement <2 x float> %i.o, i64 1    ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.n, %i.o  ; 5 uses
  %15 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %16 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = load float, ptr %i.l, align 4, !tbaa !20 ; 2 uses
  %17 = fsub <2 x float> %12, %i.o                ; 7 uses
  %i.t = extractelement <2 x float> %17, i64 1
  %i.u = extractelement <2 x float> %17, i64 0
  %i.v = fneg float %i.u
  %i.w = fneg float %16
  %i.x = fmul float %i.t, %i.w
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <2 x float> %i.r, <2 x float> %17, <2 x i32> <i32 0, i32 3>
  %i.aa = fneg <2 x float> %i.z
  %i.ab = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ac = shufflevector <2 x float> %17, <2 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %i.ad = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ae = shufflevector <2 x float> %i.q, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.af = load <2 x float>, ptr %i.h, align 4, !tbaa !20 ; 5 uses
  %i.ag = load <2 x float>, ptr %i.j, align 4, !tbaa !20 ; 3 uses
  %18 = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 3, i32 1>
  %19 = fsub <2 x float> %18, %11                 ; 7 uses
  %20 = extractelement <2 x float> %i.ag, i64 0
  %i.ah = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 4 uses
  %i.ai = load float, ptr %i.k, align 4, !tbaa !20 ; 2 uses
  %21 = fsub float %i.ai, %14                     ; 2 uses
  %foldExtExtBinop243 = fsub <2 x float> %i.ah, %i.o ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.s, i64 0 ; 2 uses
  %i.ak = insertelement <2 x float> %i.aj, float %13, i64 1
  %i.al = fsub <2 x float> %i.ak, %11             ; 4 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fsub float %20, %14                     ; 5 uses
  %i.ao = shufflevector <2 x float> %i.q, <2 x float> %19, <3 x i32> <i32 0, i32 poison, i32 2>
  %i.ap = insertelement <3 x float> %i.ao, float %i.an, i64 1
  %i.aq = fneg <3 x float> %i.ap
  %i.ar = shufflevector <2 x float> %i.q, <2 x float> %19, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> %15, <3 x i32> <i32 0, i32 1, i32 3>
  %i.at = fmul <3 x float> %i.as, %i.aq
  %i.au = shufflevector <2 x float> %i.q, <2 x float> %19, <3 x i32> <i32 poison, i32 1, i32 3>
  %i.av = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.aw = shufflevector <3 x float> %i.av, <3 x float> %i.au, <3 x i32> <i32 0, i32 4, i32 5>
  %i.ax = shufflevector <2 x float> %19, <2 x float> %i.q, <3 x i32> <i32 poison, i32 0, i32 2>
  %i.ay = insertelement <3 x float> %i.ax, float %i.an, i64 0
  %i.az = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aw, <3 x float> %i.ay, <3 x float> %i.at) ; 3 uses
  %i.ba = insertelement <2 x float> %17, float %21, i64 0
  %i.bb = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bc = fmul <2 x float> %i.ba, %i.bb
  %i.bd = shufflevector <2 x float> %foldExtExtBinop243, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.be = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.bg, <2 x float> %i.bf) ; 2 uses
  %i.bi = fmul float %i.an, %i.v
  %i.bj = insertelement <2 x float> %i.y, float %i.bi, i64 1
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %17, <2 x float> %i.bj) ; 2 uses
  %i.bl = insertelement <2 x float> poison, float %21, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <2 x float> %foldExtExtBinop243, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = shufflevector <2 x float> %i.al, <2 x float> %19, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bp = fmul <2 x float> %i.bo, %i.aa
  %i.bq = insertelement <2 x float> %i.ab, float %i.an, i64 1
  %i.br = shufflevector <2 x float> %19, <2 x float> %i.al, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp) ; 2 uses
  %i.bt = fneg <2 x float> %i.br
  %i.bu = fmul <2 x float> %i.ac, %i.bt
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.ad, <2 x float> %i.bu) ; 2 uses
  %i.bw = fmul <2 x float> %i.bm, %i.bv
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bs, <2 x float> %i.bw)
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.bk, <2 x float> %i.bx)
  %i.bz = insertelement <2 x float> %i.q, float %i.an, i64 0
  %i.ca = fmul <2 x float> %i.bz, %i.bv
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.bs, <2 x float> %i.ca)
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %i.bk, <2 x float> %i.cb) ; 3 uses
  %i.cd = fmul <2 x float> %i.cc, %i.cc
  %i.ce = fcmp olt <2 x float> %i.cd, splat (float f0x322BCC76)
  %i.cf = fmul <2 x float> %i.by, %i.cc
  %i.cg = fcmp olt <2 x float> %i.cf, zeroinitializer
  %i.ch = zext <2 x i1> %i.cg to <2 x i8>
  %i.ci = select <2 x i1> %i.ce, <2 x i8> splat (i8 -1), <2 x i8> %i.ch ; 3 uses
  %i.cj = shufflevector <2 x float> %12, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ck = insertelement <3 x float> %i.cj, float %13, i64 2
  %i.cl = shufflevector <2 x float> %i.n, <2 x float> %i.af, <3 x i32> <i32 0, i32 2, i32 3>
  %i.cm = fsub <3 x float> %i.ck, %i.cl           ; 2 uses
  %i.cn = shufflevector <2 x float> %9, <2 x float> %i.ag, <3 x i32> <i32 2, i32 3, i32 0>
  %i.co = shufflevector <2 x float> %i.n, <2 x float> %i.af, <3 x i32> <i32 2, i32 3, i32 0>
  %i.cp = fsub <3 x float> %i.cn, %i.co           ; 2 uses
  %i.cq = fneg <3 x float> %i.cp
  %i.cr = shufflevector <3 x float> %i.cm, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.cs = shufflevector <3 x float> %i.cq, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.ct = fmul <3 x float> %i.cr, %i.cs
  %i.cu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cm, <3 x float> %i.cp, <3 x float> %i.ct) ; 3 uses
  %i.cv = shufflevector <2 x float> %i.ah, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.cw = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fsub <2 x float> %i.cv, %i.cw
  %i.cy = shufflevector <2 x float> %i.o, <2 x float> %i.ah, <2 x i32> <i32 3, i32 1>
  %i.cz = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fsub <2 x float> %i.cy, %i.cz
  %i.db = insertelement <2 x float> %i.aj, float %8, i64 1
  %i.dc = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fsub <2 x float> %i.db, %i.dc
  %i.de = shufflevector <3 x float> %i.cu, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.df = fmul <2 x float> %i.da, %i.de
  %i.dg = shufflevector <3 x float> %i.cu, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.dg, <2 x float> %i.df)
  %i.di = shufflevector <3 x float> %i.cu, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.di, <2 x float> %i.dh) ; 2 uses
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> %i.bh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dl = shufflevector <2 x float> %i.dj, <2 x float> %i.bh, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.dm = fmul <4 x float> %i.dk, %i.dl
  %i.dn = fcmp olt <4 x float> %i.dm, <float 0.000000e+00, float 0.000000e+00, float f0x322BCC76, float f0x322BCC76> ; 4 uses
  %i.do = extractelement <4 x i1> %i.dn, i64 1
  %i.dp = zext i1 %i.do to i32
  %i.dq = extractelement <4 x i1> %i.dn, i64 3
  %.0.i = select i1 %i.dq, i32 -1, i32 %i.dp      ; 2 uses
  %i.dr = extractelement <4 x i1> %i.dn, i64 0
  %i.ds = zext i1 %i.dr to i32
  %i.dt = extractelement <4 x i1> %i.dn, i64 2
  %.0.i136 = select i1 %i.dt, i32 -1, i32 %i.ds   ; 2 uses
  %i.du = extractelement <2 x i8> %i.ci, i64 0
  %i.dv = extractelement <2 x i8> %i.ci, i64 1
  %i.dw = or i8 %i.du, %i.dv
  %i.dx = sext i8 %i.dw to i32
  %i.dy = or i32 %.0.i, %i.dx
  %i.dz = or i32 %i.dy, %.0.i136                  ; 2 uses
  %or.cond5.not = icmp sgt i32 %i.dz, -1
  br i1 %or.cond5.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 1, ptr %i.ea, align 4, !tbaa !24
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.eb = icmp eq <2 x i8> %i.ci, zeroinitializer ; 2 uses
  %.not127 = icmp eq i32 %.0.i136, 0
  %or.cond11.not = icmp eq i32 %i.dz, 0
  br i1 %or.cond11.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ec = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.ed = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8232.0.copyload = load float, ptr %.sroa.8232.0..sroa_idx, align 8 ; 2 uses
  %foldExtExtBinop245 = fsub <2 x float> %i.ed, %i.ah
  %i.ee = extractelement <2 x float> %foldExtExtBinop245, i64 0 ; 2 uses
  %i.ef = extractelement <2 x float> %i.ed, i64 1
  %i.eg = fsub float %i.ef, %i.ai                 ; 2 uses
  %i.eh = fsub float %.sroa.8232.0.copyload, %i.s ; 2 uses
  %i.ei = fmul float %i.eg, %i.eg
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %i.ei)
  %i.ek = tail call noundef float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.ej) ; 2 uses
  %i.el = fcmp olt float %i.ek, f0x7F7FFFFF
  br i1 %i.el, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.10236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10236.0.copyload = load float, ptr %.sroa.10236.0..sroa_idx, align 4, !tbaa !15
  store <2 x float> %i.ed, ptr %6, align 4
  %.sroa.8232.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8232.0.copyload, ptr %.sroa.8232.0..sroa_idx233, align 4
  %.sroa.10236.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10236.0.copyload, ptr %.sroa.10236.0..sroa_idx237, align 4, !tbaa !15
  %i.em = load i8, ptr %i.a, align 8
  %i.en = and i8 %i.em, 7
  %i.eo = or disjoint i8 %i.en, %i.f
  store i8 %i.eo, ptr %i.d, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.er = load float, ptr %i.eq, align 4, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.et = load <2 x float>, ptr %i.ep, align 4, !tbaa !20
  store <2 x float> %i.et, ptr %i.es, align 4, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.er, ptr %i.eu, align 4, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.ev, align 4, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi float [ f0x7F7FFFFF, %bb.d ], [ %i.ek, %bb.f ], [ f0x7F7FFFFF, %bb.e ] ; 3 uses
  %i.ew = extractelement <2 x i1> %i.eb, i64 1
  br i1 %i.ew, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ex = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.ey = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8214.0.copyload = load float, ptr %.sroa.8214.0..sroa_idx, align 8 ; 2 uses
  %i.ez = load float, ptr %1, align 4, !tbaa !20
  %i.fa = extractelement <2 x float> %i.ey, i64 0
  %i.fb = fsub float %i.fa, %i.ez                 ; 2 uses
  %i.fc = load float, ptr %i.k, align 4, !tbaa !20
  %i.fd = extractelement <2 x float> %i.ey, i64 1
  %i.fe = fsub float %i.fd, %i.fc                 ; 2 uses
  %i.ff = load float, ptr %i.l, align 4, !tbaa !20
  %i.fg = fsub float %.sroa.8214.0.copyload, %i.ff ; 2 uses
  %i.fh = fmul float %i.fe, %i.fe
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fh)
  %i.fj = tail call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fi) ; 2 uses
  %i.fk = fcmp olt float %i.fj, %.1
  br i1 %i.fk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.10218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10218.0.copyload = load float, ptr %.sroa.10218.0..sroa_idx, align 4, !tbaa !15
  store <2 x float> %i.ey, ptr %6, align 4
  %.sroa.8214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8214.0.copyload, ptr %.sroa.8214.0..sroa_idx215, align 4
  %.sroa.10218.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10218.0.copyload, ptr %.sroa.10218.0..sroa_idx219, align 4, !tbaa !15
  %i.fl = load i8, ptr %i.d, align 4
  %i.fm = and i8 %i.fl, -16
  %i.fn = load i8, ptr %i.a, align 8              ; 2 uses
  %i.fo = and i8 %i.fn, 1
  %i.fp = shl i8 %i.fn, 1
  %i.fq = and i8 %i.fp, 12
  %i.fr = or disjoint i8 %i.fo, %i.fq
  %i.fs = or disjoint i8 %i.fr, %i.fm
  store i8 %i.fs, ptr %i.d, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.fu, ptr %i.fw, align 4, !tbaa !20
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float 0.000000e+00, ptr %i.fx, align 4, !tbaa !20
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.fz = load <2 x float>, ptr %i.fv, align 8, !tbaa !20
  store <2 x float> %i.fz, ptr %i.fy, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.3 = phi float [ %.1, %bb.g ], [ %i.fj, %bb.i ], [ %.1, %bb.h ] ; 3 uses
  %i.ga = extractelement <2 x i1> %i.eb, i64 0
  br i1 %i.ga, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gb = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.gc = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8196.0.copyload = load float, ptr %.sroa.8196.0..sroa_idx, align 8 ; 2 uses
  %i.gd = load float, ptr %1, align 4, !tbaa !20
  %i.ge = extractelement <2 x float> %i.gc, i64 0
  %i.gf = fsub float %i.ge, %i.gd                 ; 2 uses
  %i.gg = load float, ptr %i.k, align 4, !tbaa !20
  %i.gh = extractelement <2 x float> %i.gc, i64 1
  %i.gi = fsub float %i.gh, %i.gg                 ; 2 uses
  %i.gj = load float, ptr %i.l, align 4, !tbaa !20
  %i.gk = fsub float %.sroa.8196.0.copyload, %i.gj ; 2 uses
  %i.gl = fmul float %i.gi, %i.gi
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.gf, float %i.gl)
  %i.gn = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gm) ; 2 uses
  %i.go = fcmp olt float %i.gn, %.3
  br i1 %i.go, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10200.0.copyload = load float, ptr %.sroa.10200.0..sroa_idx, align 4, !tbaa !15
  store <2 x float> %i.gc, ptr %6, align 4
  %.sroa.8196.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8196.0.copyload, ptr %.sroa.8196.0..sroa_idx197, align 4
  %.sroa.10200.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10200.0.copyload, ptr %.sroa.10200.0..sroa_idx201, align 4, !tbaa !15
  %i.gp = load i8, ptr %i.d, align 4
  %i.gq = and i8 %i.gp, -16
  %i.gr = load i8, ptr %i.a, align 8              ; 3 uses
  %i.gs = and i8 %i.gr, 1
  %i.gt = lshr i8 %i.gr, 1
  %i.gu = and i8 %i.gt, 2
  %i.gv = shl i8 %i.gr, 2
  %i.gw = and i8 %i.gv, 8
  %i.gx = or disjoint i8 %i.gs, %i.gu
  %i.gy = or disjoint i8 %i.gx, %i.gw
  %i.gz = or disjoint i8 %i.gy, %i.gq
  store i8 %i.gz, ptr %i.d, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !20
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !20
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hf = load float, ptr %i.he, align 8, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.hb, ptr %i.hg, align 4, !tbaa !20
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.hd, ptr %i.hh, align 4, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %i.hi, align 4, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.hf, ptr %i.hj, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.5 = phi float [ %.3, %bb.j ], [ %i.gn, %bb.l ], [ %.3, %bb.k ]
  br i1 %.not127, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hk = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.hl = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.hm = load float, ptr %1, align 4, !tbaa !20
  %i.hn = extractelement <2 x float> %i.hl, i64 0
  %i.ho = fsub float %i.hn, %i.hm                 ; 2 uses
  %i.hp = load float, ptr %i.k, align 4, !tbaa !20
  %i.hq = extractelement <2 x float> %i.hl, i64 1
  %i.hr = fsub float %i.hq, %i.hp                 ; 2 uses
  %i.hs = load float, ptr %i.l, align 4, !tbaa !20
  %i.ht = fsub float %.sroa.8.0.copyload, %i.hs   ; 2 uses
  %i.hu = fmul float %i.hr, %i.hr
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.ho, float %i.hu)
  %i.hw = tail call noundef float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.hv)
  %i.hx = fcmp olt float %i.hw, %.5
  br i1 %i.hx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !15
  store <2 x float> %i.hl, ptr %6, align 4
  %.sroa.8.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx180, align 4
  %.sroa.10.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx183, align 4, !tbaa !15
  %i.hy = load i8, ptr %i.d, align 4
  %i.hz = and i8 %i.hy, -16
  %i.ia = load i8, ptr %i.a, align 8              ; 3 uses
  %i.ib = shl i8 %i.ia, 1
  %i.ic = and i8 %i.ib, 2
  %i.id = and i8 %i.ia, 4
  %i.ie = shl i8 %i.ia, 2
  %i.if = and i8 %i.ie, 8
  %i.ig = or disjoint i8 %i.id, %i.ic
  %i.ih = or disjoint i8 %i.ig, %i.if
  %i.ii = or disjoint i8 %i.ih, %i.hz
  store i8 %i.ii, ptr %i.d, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float 0.000000e+00, ptr %i.im, align 4, !tbaa !20
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.ik, ptr %i.in, align 4, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ip = load <2 x float>, ptr %i.il, align 8, !tbaa !20
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.iq, ptr %i.io, align 4, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.c, %bb.b
end_hunk_0
