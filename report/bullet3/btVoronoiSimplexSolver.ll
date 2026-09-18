Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btVoronoiSimplexSolver?download=true
inline.NumInlined: 154
inline.NumDeleted: 20
begin_hunk_0_@_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv:bb.a
  %i.kz = fadd float %i.kl, %i.ku
  %i.la = fadd float %i.ko, %i.kx
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !21
  %i.ld = fmul float %i.jg, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.lf = load float, ptr %i.le, align 4, !tbaa !21
  %i.lg = fmul float %i.jg, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.li = load float, ptr %i.lh, align 4, !tbaa !21
  %i.lj = fmul float %i.jg, %i.li
  %i.lk = fadd float %i.ky, %i.ld
  %i.ll = fadd float %i.kz, %i.lg
  %i.lm = fadd float %i.la, %i.lj
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !21
  %i.lp = fmul float %i.ju, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !21
  %i.ls = fmul float %i.ju, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !21
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
  store <2 x float> %.sroa.3.12.vec.insert.i226, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !17
  %i.ma = fsub float %i.kc, %i.lw
  %i.mb = fsub float %i.kd, %i.lx
  %i.mc = fsub float %i.ke, %i.ly
  %.sroa.0.0.vec.insert.i229 = insertelement <2 x float> poison, float %i.ma, i64 0
  %.sroa.0.4.vec.insert.i230 = insertelement <2 x float> %.sroa.0.0.vec.insert.i229, float %i.mb, i64 1
  %.sroa.3.12.vec.insert.i231 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mc, i64 0
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 276
  store <2 x float> %.sroa.0.4.vec.insert.i230, ptr %i.md, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 284
  store <2 x float> %.sroa.3.12.vec.insert.i231, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !17
  %i.me = load i32, ptr %0, align 4, !tbaa !16    ; 6 uses
  %i.mf = icmp sgt i32 %i.me, 3
  br i1 %i.mf, label %bb.s, label %thread-pre-split.i234

bb.s:                                             ; preds = %bb.r
  %i.mg = load i8, ptr %i.f, align 4              ; 3 uses
  %i.mh = and i8 %i.mg, 8
  %.not.i242 = icmp eq i8 %i.mh, 0
  br i1 %.not.i242, label %bb.t, label %thread-pre-split.thread.i240

bb.t:                                             ; preds = %bb.s
  %i.mi = add nsw i32 %i.me, -1                   ; 3 uses
  store i32 %i.mi, ptr %0, align 4, !tbaa !16
  %i.mj = zext nneg i32 %i.mi to i64              ; 3 uses
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.mj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.id, ptr noundef nonnull align 4 dereferenceable(16) %i.mk, i64 16, i1 false), !tbaa.struct !18
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.mj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jr, ptr noundef nonnull align 4 dereferenceable(16) %i.ml, i64 16, i1 false), !tbaa.struct !18
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.mj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ln, ptr noundef nonnull align 4 dereferenceable(16) %i.mm, i64 16, i1 false), !tbaa.struct !18
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
  store i32 %i.mr, ptr %0, align 4, !tbaa !16
  %i.ms = zext nneg i32 %i.mr to i64              ; 3 uses
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.ms
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ic, ptr noundef nonnull align 4 dereferenceable(16) %i.mt, i64 16, i1 false), !tbaa.struct !18
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.ms
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(16) %i.mu, i64 16, i1 false), !tbaa.struct !18
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.ms
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lb, ptr noundef nonnull align 4 dereferenceable(16) %i.mv, i64 16, i1 false), !tbaa.struct !18
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
  store i32 %i.na, ptr %0, align 4, !tbaa !16
  %i.nb = zext nneg i32 %i.na to i64              ; 3 uses
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.nb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ib, ptr noundef nonnull align 4 dereferenceable(16) %i.nc, i64 16, i1 false), !tbaa.struct !18
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.nb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ip, ptr noundef nonnull align 4 dereferenceable(16) %i.nd, i64 16, i1 false), !tbaa.struct !18
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.nb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kp, ptr noundef nonnull align 4 dereferenceable(16) %i.ne, i64 16, i1 false), !tbaa.struct !18
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
  store i32 %i.nj, ptr %0, align 4, !tbaa !16
  %i.nk = zext nneg i32 %i.nj to i64              ; 3 uses
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %i.ia, i64 %i.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ia, ptr noundef nonnull align 4 dereferenceable(16) %i.nl, i64 16, i1 false), !tbaa.struct !18
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.if, i64 %i.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.if, ptr noundef nonnull align 4 dereferenceable(16) %i.nm, i64 16, i1 false), !tbaa.struct !18
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.nk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kg, ptr noundef nonnull align 4 dereferenceable(16) %i.nn, i64 16, i1 false), !tbaa.struct !18
  br label %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243

_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243: ; preds = %thread-pre-split8.i235, %thread-pre-split8.thread.i236, %bb.x
  %i.no = load <4 x float>, ptr %i.e, align 4
  %.fr = freeze <4 x float> %i.no
  %i.np = fcmp ult <4 x float> %.fr, zeroinitializer
  %i.nq = bitcast <4 x i1> %i.np to i4
  %i.nr = icmp eq i4 %i.nq, 0
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.nt = zext i1 %i.nr to i8                     ; 2 uses
  store i8 %i.nt, ptr %i.ns, align 4, !tbaa !19
  br label %bb.ab

bb.y:                                             ; preds = %bb.q
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.nv = load i8, ptr %i.nu, align 4, !tbaa !25, !range !23, !noundef !24
  %i.nw = trunc nuw i8 %i.nv to i1
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  br i1 %i.nw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.nx, align 4, !tbaa !19
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i8 1, ptr %i.nx, align 4, !tbaa !19
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ny, i8 0, i64 16, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243
  %i.nz = phi i8 [ 0, %bb.z ], [ 1, %bb.aa ], [ %i.nt, %_ZN22btVoronoiSimplexSolver14reduceVerticesERK15btUsageBitfield.exit243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.b
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.oa, align 4, !tbaa !19
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
  %i.f = load float, ptr %i.e, align 4, !tbaa !21 ; 4 uses
  %i.g = load <2 x float>, ptr %3, align 4, !tbaa !21 ; 6 uses
  %i.h = load <2 x float>, ptr %4, align 4, !tbaa !21 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !21 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %i.n = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 1, i32 3>
  %i.o = insertelement <2 x float> poison, float %i.f, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.j, i64 1
  %i.q = load float, ptr %2, align 4, !tbaa !21   ; 5 uses
  %6 = load <2 x float>, ptr %i.d, align 4, !tbaa !21 ; 5 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fsub <2 x float> %i.m, %i.s              ; 7 uses
  %i.u = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fsub <2 x float> %i.n, %i.u              ; 7 uses
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = fsub <2 x float> %i.p, %7                ; 7 uses
  %i.x = load float, ptr %i.k, align 4, !tbaa !21 ; 3 uses
  %i.y = load float, ptr %1, align 4, !tbaa !21   ; 3 uses
  %i.z = load float, ptr %i.l, align 4, !tbaa !21 ; 3 uses
  %8 = extractelement <2 x float> %6, i64 0       ; 3 uses
  %i.aa = fsub float %i.x, %8
  %i.ab = fsub float %i.y, %i.q
  %9 = extractelement <2 x float> %6, i64 1       ; 3 uses
  %i.ac = fsub float %i.z, %9
  %i.ad = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.v, %i.ae
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ah, <2 x float> %i.af)
  %i.aj = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.ak, <2 x float> %i.ai) ; 4 uses
  %i.am = fcmp ugt <2 x float> %i.al, zeroinitializer
  %i.an = bitcast <2 x i1> %i.am to i2
  %or.cond = icmp eq i2 %i.an, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  %i.ao = or disjoint i8 %i.c, 1
  store i8 %i.ao, ptr %i.a, align 4
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.ap = extractelement <2 x float> %i.g, i64 0
  %i.aq = extractelement <2 x float> %i.g, i64 1
  %i.ar = fsub float %i.x, %i.aq
  %i.as = fsub float %i.y, %i.ap
  %i.at = fsub float %i.z, %i.f
  %i.au = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.v, %i.av
  %i.ax = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.bb, <2 x float> %i.az) ; 3 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0 ; 6 uses
  %i.be = fcmp ult float %i.bd, 0.000000e+00
  %i.bf = extractelement <2 x float> %i.bc, i64 1 ; 4 uses
  %i.bg = fcmp ugt float %i.bf, %i.bd
  %or.cond118 = or i1 %i.be, %i.bg
  br i1 %or.cond118, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !18
  %i.bh = or disjoint i8 %i.c, 2
  store i8 %i.bh, ptr %i.a, align 4
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.bi = extractelement <2 x float> %i.al, i64 1 ; 5 uses
  %i.bj = fneg float %i.bi
  %i.bk = fmul float %i.bd, %i.bj
  %i.bl = extractelement <2 x float> %i.al, i64 0 ; 4 uses
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bf, float %i.bk) ; 3 uses
  %i.bn = fcmp ole float %i.bm, 0.000000e+00
  %i.bo = fcmp oge float %i.bl, 0.000000e+00
  %or.cond3 = and i1 %i.bo, %i.bn
  %i.bp = fcmp ole float %i.bd, 0.000000e+00
  %or.cond5 = and i1 %i.bp, %or.cond3
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop296 = fsub <2 x float> %i.al, %i.bc
  %i.bq = extractelement <2 x float> %foldExtExtBinop296, i64 0
  %i.br = fdiv float %i.bl, %i.bq                 ; 5 uses
  %i.bs = extractelement <2 x float> %i.t, i64 0
  %i.bt = fmul float %i.bs, %i.br
  %i.bu = extractelement <2 x float> %i.v, i64 0
  %i.bv = fmul float %i.bu, %i.br
  %i.bw = extractelement <2 x float> %i.w, i64 0
  %i.bx = fmul float %i.bw, %i.br
  %i.by = fadd float %i.q, %i.bt
  %i.bz = fadd float %8, %i.bv
  %i.ca = fadd float %9, %i.bx
  %.sroa.0.0.vec.insert.i135 = insertelement <2 x float> poison, float %i.by, i64 0
  %.sroa.0.4.vec.insert.i136 = insertelement <2 x float> %.sroa.0.0.vec.insert.i135, float %i.bz, i64 1
  %.sroa.3.12.vec.insert.i137 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ca, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i136, ptr %5, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i137, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !17
  %i.cb = or disjoint i8 %i.c, 3
  store i8 %i.cb, ptr %i.a, align 4
  %i.cc = fsub float 1.000000e+00, %i.br
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.cd = extractelement <2 x float> %i.h, i64 0
  %i.ce = extractelement <2 x float> %i.h, i64 1
  %i.cf = fsub float %i.x, %i.ce
  %i.cg = fsub float %i.y, %i.cd
  %i.ch = fsub float %i.z, %i.j
  %i.ci = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.v, %i.cj
  %i.cl = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.cm, <2 x float> %i.ck)
  %i.co = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.cp, <2 x float> %i.cn) ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1 ; 7 uses
  %i.cs = fcmp ult float %i.cr, 0.000000e+00
  %i.ct = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %i.cu = fcmp ugt float %i.ct, %i.cr
  %or.cond119 = or i1 %i.cs, %i.cu
  br i1 %or.cond119, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !18
  %i.cv = or disjoint i8 %i.c, 4
  store i8 %i.cv, ptr %i.a, align 4
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.cw = fneg float %i.cr
  %i.cx = fmul float %i.bl, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bi, float %i.cx) ; 3 uses
  %i.cz = fcmp ole float %i.cy, 0.000000e+00
  %i.da = fcmp oge float %i.bi, 0.000000e+00
  %or.cond7 = and i1 %i.da, %i.cz
  %i.db = fcmp ole float %i.cr, 0.000000e+00
  %or.cond9 = and i1 %i.db, %or.cond7
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dc = fsub float %i.bi, %i.cr
  %i.dd = fdiv float %i.bi, %i.dc                 ; 5 uses
  %i.de = extractelement <2 x float> %i.t, i64 1
  %i.df = fmul float %i.de, %i.dd
  %i.dg = extractelement <2 x float> %i.v, i64 1
  %i.dh = fmul float %i.dg, %i.dd
  %i.di = extractelement <2 x float> %i.w, i64 1
  %i.dj = fmul float %i.di, %i.dd
  %i.dk = fadd float %i.q, %i.df
  %i.dl = fadd float %8, %i.dh
  %i.dm = fadd float %9, %i.dj
  %.sroa.0.0.vec.insert.i150 = insertelement <2 x float> poison, float %i.dk, i64 0
  %.sroa.0.4.vec.insert.i151 = insertelement <2 x float> %.sroa.0.0.vec.insert.i150, float %i.dl, i64 1
  %.sroa.3.12.vec.insert.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dm, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i151, ptr %5, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i152, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !17
  %i.dn = or disjoint i8 %i.c, 5
  store i8 %i.dn, ptr %i.a, align 4
  %i.do = fsub float 1.000000e+00, %i.dd
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.dp = fneg float %i.bf
  %i.dq = fmul float %i.ct, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.cr, float %i.dq) ; 2 uses
  %i.ds = fcmp ugt float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = fsub float %i.bf, %i.bd                 ; 3 uses
  %i.du = fcmp ult float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = fsub float %i.ct, %i.cr                 ; 2 uses
  %i.dw = fcmp ult float %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = fadd float %i.dt, %i.dv
  %i.dy = fdiv float %i.dt, %i.dx                 ; 4 uses
  %i.dz = fsub <2 x float> %i.h, %i.g
  %i.ea = fsub float %i.j, %i.f
  %i.eb = fmul float %i.ea, %i.dy
  %i.ec = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.dz, %i.ed
  %i.ef = fadd <2 x float> %i.g, %i.ee
  %i.eg = fadd float %i.f, %i.eb
  %.sroa.3.12.vec.insert.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eg, i64 0
  store <2 x float> %i.ef, ptr %5, align 4
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i167, ptr %.sroa.412.0..sroa_idx, align 4, !tbaa !17
  %i.eh = or disjoint i8 %i.c, 6
  store i8 %i.eh, ptr %i.a, align 4
  %i.ei = fsub float 1.000000e+00, %i.dy
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ej = fadd float %i.dr, %i.cy
  %i.ek = fadd float %i.bm, %i.ej
  %i.el = fdiv float 1.000000e+00, %i.ek          ; 2 uses
  %10 = extractelement <2 x float> %i.t, i64 0
  %i.em = extractelement <2 x float> %i.t, i64 1
  %i.en = fmul float %i.cy, %i.el                 ; 4 uses
  %11 = fmul float %i.bm, %i.el                   ; 4 uses
  %i.eo = fmul float %10, %i.en
  %12 = shufflevector <2 x float> %i.v, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %13 = insertelement <2 x float> poison, float %i.en, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %12, %14
  %i.ep = fadd float %i.q, %i.eo
  %16 = fadd <2 x float> %6, %15
  %i.eq = fmul float %i.em, %11
  %17 = shufflevector <2 x float> %i.v, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %18 = insertelement <2 x float> poison, float %11, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x float> %17, %19
  %i.er = fadd float %i.eq, %i.ep
  %21 = fadd <2 x float> %20, %16                 ; 2 uses
  %.sroa.0.0.vec.insert.i185 = insertelement <2 x float> poison, float %i.er, i64 0
  %22 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i185, <2 x float> %21, <2 x i32> <i32 0, i32 2>
  %23 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %21, <2 x i32> <i32 3, i32 1>
  store <2 x float> %22, ptr %5, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %23, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !17
  %i.es = or disjoint i8 %i.c, 7
  store i8 %i.es, ptr %i.a, align 4
  %i.et = fsub float 1.000000e+00, %i.en
  %i.eu = fsub float %i.et, %11
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.o, %bb.n, %bb.h, %bb.b
  %.sink293 = phi float [ 0.000000e+00, %bb.d ], [ %i.cc, %bb.f ], [ %i.do, %bb.j ], [ %i.eu, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.h ], [ 1.000000e+00, %bb.b ]
  %.sink291 = phi float [ 1.000000e+00, %bb.d ], [ %i.br, %bb.f ], [ 0.000000e+00, %bb.j ], [ %i.en, %bb.o ], [ %i.ei, %bb.n ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %.sink = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.dd, %bb.j ], [ %11, %bb.o ], [ %i.dy, %bb.n ], [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sink293, ptr %i.ev, align 4, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink291, ptr %i.ew, align 4, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %.sink, ptr %i.ex, align 4, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !21
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult(ptr nofree nonnull readnone align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(37) initializes((0, 16)) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca %struct.btSubSimplexClosestResult, align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -16
  store i8 %i.c, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, -16
  %i.g = or i8 %i.e, 15
  store i8 %i.g, ptr %i.d, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load <2 x float>, ptr %3, align 4, !tbaa !21 ; 5 uses
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !21 ; 7 uses
  %i.o = load <4 x float>, ptr %2, align 4        ; 2 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.q = load <2 x float>, ptr %4, align 4, !tbaa !21 ; 2 uses
  %i.r = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.s = shufflevector <2 x float> %i.q, <2 x float> %i.m, <2 x i32> <i32 0, i32 3>
  %i.t = fsub <2 x float> %i.s, %i.n              ; 7 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.v = load <2 x float>, ptr %5, align 4, !tbaa !21 ; 2 uses
  %i.w = load float, ptr %i.l, align 4, !tbaa !21 ; 2 uses
  %i.x = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.m, %i.n  ; 5 uses
  %i.y = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aa = load float, ptr %i.k, align 4, !tbaa !21 ; 3 uses
  %i.ab = fsub <2 x float> %i.v, %i.n             ; 7 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1
  %i.ad = extractelement <2 x float> %i.ab, i64 0
  %i.ae = fneg float %i.ad
  %i.af = fneg float %i.z
  %i.ag = fmul float %i.ac, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.u, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.aj = fneg <2 x float> %i.ai
  %i.ak = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.al = shufflevector <2 x float> %i.ab, <2 x float> %i.u, <2 x i32> <i32 0, i32 3>
  %i.am = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.an = shufflevector <2 x float> %i.t, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.ao = load <2 x float>, ptr %i.h, align 4, !tbaa !21 ; 5 uses
  %i.ap = load <2 x float>, ptr %i.i, align 4, !tbaa !21 ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 3, i32 1>
  %i.ar = fsub <2 x float> %i.aq, %i.r            ; 7 uses
  %i.as = extractelement <2 x float> %i.ap, i64 0
  %i.at = load <2 x float>, ptr %1, align 4, !tbaa !21 ; 4 uses
  %i.au = load float, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %i.av = fsub float %i.au, %i.x                  ; 2 uses
  %foldExtExtBinop243 = fsub <2 x float> %i.at, %i.n ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.w, i64 1
  %i.ay = fsub <2 x float> %i.ax, %i.r            ; 4 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fsub float %i.as, %i.x                  ; 5 uses
  %i.bb = shufflevector <2 x float> %i.t, <2 x float> %i.ar, <3 x i32> <i32 0, i32 poison, i32 2>
  %i.bc = insertelement <3 x float> %i.bb, float %i.ba, i64 1
  %i.bd = fneg <3 x float> %i.bc
  %i.be = shufflevector <2 x float> %i.t, <2 x float> %i.ar, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bf = shufflevector <3 x float> %i.be, <3 x float> %i.y, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bg = fmul <3 x float> %i.bf, %i.bd
  %i.bh = shufflevector <2 x float> %i.t, <2 x float> %i.ar, <3 x i32> <i32 poison, i32 1, i32 3>
  %i.bi = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> %i.bh, <3 x i32> <i32 0, i32 4, i32 5>
  %i.bk = shufflevector <2 x float> %i.ar, <2 x float> %i.t, <3 x i32> <i32 poison, i32 0, i32 2>
  %i.bl = insertelement <3 x float> %i.bk, float %i.ba, i64 0
  %i.bm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bj, <3 x float> %i.bl, <3 x float> %i.bg) ; 3 uses
  %i.bn = insertelement <2 x float> %i.ab, float %i.av, i64 0
  %i.bo = shufflevector <3 x float> %i.bm, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %foldExtExtBinop243, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.br = shufflevector <3 x float> %i.bm, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = shufflevector <3 x float> %i.bm, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.bt, <2 x float> %i.bs) ; 2 uses
  %i.bv = fmul float %i.ba, %i.ae
  %i.bw = insertelement <2 x float> %i.ah, float %i.bv, i64 1
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ab, <2 x float> %i.bw) ; 2 uses
  %i.by = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = shufflevector <2 x float> %foldExtExtBinop243, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %i.ay, <2 x float> %i.ar, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.aj
  %i.cd = insertelement <2 x float> %i.ak, float %i.ba, i64 1
  %i.ce = shufflevector <2 x float> %i.ar, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ce, <2 x float> %i.cc) ; 2 uses
  %i.cg = fneg <2 x float> %i.ce
  %i.ch = fmul <2 x float> %i.al, %i.cg
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.am, <2 x float> %i.ch) ; 2 uses
  %i.cj = fmul <2 x float> %i.bz, %i.ci
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cf, <2 x float> %i.cj)
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.bx, <2 x float> %i.ck)
  %i.cm = insertelement <2 x float> %i.t, float %i.ba, i64 0
  %i.cn = fmul <2 x float> %i.cm, %i.ci
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.cf, <2 x float> %i.cn)
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.bx, <2 x float> %i.co) ; 3 uses
  %i.cq = fmul <2 x float> %i.cp, %i.cp
  %i.cr = fcmp olt <2 x float> %i.cq, splat (float f0x322BCC76)
  %i.cs = fmul <2 x float> %i.cl, %i.cp
  %i.ct = fcmp olt <2 x float> %i.cs, zeroinitializer
  %i.cu = zext <2 x i1> %i.ct to <2 x i8>
  %i.cv = select <2 x i1> %i.cr, <2 x i8> splat (i8 -1), <2 x i8> %i.cu ; 3 uses
  %i.cw = shufflevector <2 x float> %i.v, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.cx = insertelement <3 x float> %i.cw, float %i.w, i64 2
  %i.cy = shufflevector <2 x float> %i.m, <2 x float> %i.ao, <3 x i32> <i32 0, i32 2, i32 3>
  %i.cz = fsub <3 x float> %i.cx, %i.cy           ; 2 uses
  %i.da = shufflevector <2 x float> %i.q, <2 x float> %i.ap, <3 x i32> <i32 2, i32 3, i32 0>
  %i.db = shufflevector <2 x float> %i.m, <2 x float> %i.ao, <3 x i32> <i32 2, i32 3, i32 0>
  %i.dc = fsub <3 x float> %i.da, %i.db           ; 2 uses
  %i.dd = fneg <3 x float> %i.dc
  %i.de = shufflevector <3 x float> %i.cz, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.df = shufflevector <3 x float> %i.dd, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.dg = fmul <3 x float> %i.de, %i.df
  %i.dh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cz, <3 x float> %i.dc, <3 x float> %i.dg) ; 3 uses
  %i.di = shufflevector <2 x float> %i.n, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.dj = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fsub <2 x float> %i.di, %i.dj
  %i.dl = shufflevector <2 x float> %i.n, <2 x float> %i.at, <2 x i32> <i32 1, i32 3>
  %i.dm = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fsub <2 x float> %i.dl, %i.dm
  %i.do = insertelement <2 x float> %i.p, float %i.aa, i64 1
  %i.dp = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dq = fsub <2 x float> %i.do, %i.dp
  %i.dr = shufflevector <3 x float> %i.dh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ds = fmul <2 x float> %i.dn, %i.dr
  %i.dt = shufflevector <3 x float> %i.dh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dt, <2 x float> %i.ds)
  %i.dv = shufflevector <3 x float> %i.dh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dv, <2 x float> %i.du) ; 2 uses
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> %i.bu, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.dy = shufflevector <2 x float> %i.dw, <2 x float> %i.bu, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.dz = fmul <4 x float> %i.dx, %i.dy
  %i.ea = fcmp olt <4 x float> %i.dz, <float 0.000000e+00, float 0.000000e+00, float f0x322BCC76, float f0x322BCC76> ; 4 uses
  %i.eb = extractelement <4 x i1> %i.ea, i64 1
  %i.ec = zext i1 %i.eb to i32
  %i.ed = extractelement <4 x i1> %i.ea, i64 3
  %.0.i = select i1 %i.ed, i32 -1, i32 %i.ec      ; 2 uses
  %i.ee = extractelement <4 x i1> %i.ea, i64 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = extractelement <4 x i1> %i.ea, i64 2
  %.0.i136 = select i1 %i.eg, i32 -1, i32 %i.ef   ; 2 uses
  %i.eh = extractelement <2 x i8> %i.cv, i64 0
  %i.ei = extractelement <2 x i8> %i.cv, i64 1
  %i.ej = or i8 %i.eh, %i.ei
  %i.ek = sext i8 %i.ej to i32
  %i.el = or i32 %.0.i, %i.ek
  %i.em = or i32 %i.el, %.0.i136                  ; 2 uses
  %or.cond5.not = icmp sgt i32 %i.em, -1
  br i1 %or.cond5.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 1, ptr %i.en, align 4, !tbaa !26
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.eo = icmp eq <2 x i8> %i.cv, zeroinitializer ; 2 uses
  %.not127 = icmp eq i32 %.0.i136, 0
  %or.cond11.not = icmp eq i32 %i.em, 0
  br i1 %or.cond11.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ep = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.eq = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8232.0.copyload = load float, ptr %.sroa.8232.0..sroa_idx, align 8 ; 2 uses
  %foldExtExtBinop245 = fsub <2 x float> %i.eq, %i.at
  %i.er = extractelement <2 x float> %foldExtExtBinop245, i64 0 ; 2 uses
  %i.es = extractelement <2 x float> %i.eq, i64 1
  %i.et = fsub float %i.es, %i.au                 ; 2 uses
  %i.eu = fsub float %.sroa.8232.0.copyload, %i.aa ; 2 uses
  %i.ev = fmul float %i.et, %i.et
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.ev)
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.ew) ; 2 uses
  %i.ey = fcmp olt float %i.ex, f0x7F7FFFFF
  br i1 %i.ey, label %bb.f, label %bb.g

end_hunk_0
