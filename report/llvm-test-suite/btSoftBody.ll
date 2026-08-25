Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody13setVolumeMassEf:bb.a
  br i1 %.not.i.i.i29.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1035.171)
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %.loopexit, %bb.l
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody16setVolumeDensityEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.b = load i32, ptr %i.a, align 4, !tbaa !122  ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01013.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load float, ptr %i.h, align 8, !tbaa !274
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.i) ; 4 uses
  %i.k = fadd float %.01013.epil.init, %i.j
  %i.l = fadd float %i.k, %i.j
  %i.m = fadd float %i.l, %i.j
  %i.n = fadd float %i.m, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.010.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.epil.preheader ]
  %i.o = fmul float %1, %.010.lcssa
  %i.p = fdiv float %i.o, 6.000000e+00
  tail call void @_ZN10btSoftBody13setVolumeMassEf(ptr noundef nonnull align 8 dereferenceable(1496) %0, float noundef %i.p)
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.01013 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.af, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load float, ptr %i.r, align 8, !tbaa !274
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s) ; 4 uses
  %i.u = fadd float %.01013, %i.t
  %i.v = fadd float %i.u, %i.t
  %i.w = fadd float %i.v, %i.t
  %i.x = fadd float %i.w, %i.t
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.aa = load float, ptr %i.z, align 8, !tbaa !274
  %i.ab = tail call noundef float @llvm.fabs.f32(float %i.aa) ; 4 uses
  %i.ac = fadd float %i.x, %i.ab
  %i.ad = fadd float %i.ac, %i.ab
  %i.ae = fadd float %i.ad, %i.ab
  %i.af = fadd float %i.ae, %i.ab                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody9transformERK11btTransform(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.4.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %wide.trip.count = zext nneg i32 %i.h to i64
  %i.t = insertelement <2 x float> poison, float %i.f, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @_ZN10btSoftBody13updateNormalsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !183  ; 5 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef float %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %i.y), !inline_history !184 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.w, align 4, !tbaa !159
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fsub <2 x float> %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !159
  %i.aj = fsub float %i.ai, %i.ac
  %.sroa.3.12.vec.insert.i8.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 2 uses
  store <2 x float> %i.ag, ptr %i.ak, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store <2 x float> %.sroa.3.12.vec.insert.i8.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !185
  %i.al = load <2 x float>, ptr %i.x, align 4, !tbaa !159
  %i.am = fadd <2 x float> %i.af, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ao = load float, ptr %i.an, align 4, !tbaa !159
  %i.ap = fadd float %i.ac, %i.ao
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  store <2 x float> %i.am, ptr %i.aq, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1132
  store <2 x float> %.sroa.3.12.vec.insert.i13.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !185
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !186 ; 2 uses
  %.not5.i = icmp eq ptr %i.as, null
  br i1 %.not5.i, label %_ZN10btSoftBody12updateBoundsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !187 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !195
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef %i.ay), !inline_history !184
  br label %_ZN10btSoftBody12updateBoundsEv.exit

bb.d:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bc, i8 0, i64 32, i1 false)
  br label %_ZN10btSoftBody12updateBoundsEv.exit

_ZN10btSoftBody12updateBoundsEv.exit:             ; preds = %bb.b, %bb.c, %bb.d
  call void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !198
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 4 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !198
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !198
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !198
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.bl = getelementptr inbounds nuw [120 x i8], ptr %i.bk, i64 %indvars.iv ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !159 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !159 ; 2 uses
  %3 = load <4 x float>, ptr %i.k, align 4
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !159 ; 2 uses
  %i.bs = load float, ptr %i.n, align 4, !tbaa !159
  %i.bt = load <2 x float>, ptr %1, align 4, !tbaa !159 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.m, align 4, !tbaa !159 ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.by = fmul <2 x float> %i.bw, %i.bx
  %i.bz = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.ca = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cb, <2 x float> %i.by)
  %i.cd = insertelement <2 x float> %4, float %i.bs, i64 1
  %i.ce = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cc)
  %i.ch = load <2 x float>, ptr %i.l, align 4, !tbaa !159
  %i.ci = fadd <2 x float> %i.cg, %i.ch           ; 3 uses
  %i.cj = load float, ptr %i.o, align 4, !tbaa !159
  %i.ck = load float, ptr %i.p, align 4, !tbaa !159
  %i.cl = fmul float %i.bp, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.cj, float %i.bn, float %i.cl)
  %i.cn = load float, ptr %i.q, align 4, !tbaa !159
  %i.co = call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.br, float %i.cm)
  %i.cp = load float, ptr %i.r, align 4, !tbaa !159
  %i.cq = fadd float %i.cp, %i.co                 ; 3 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cq, i64 0
  store <2 x float> %i.ci, ptr %i.bm, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.bq, align 8, !tbaa !185
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !159 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !159 ; 2 uses
  %5 = load <4 x float>, ptr %i.k, align 4
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !159 ; 2 uses
  %i.cx = load float, ptr %i.n, align 4, !tbaa !159
  %i.cy = load <2 x float>, ptr %1, align 4, !tbaa !159 ; 2 uses
  %i.cz = load <2 x float>, ptr %i.m, align 4, !tbaa !159 ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %i.de = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.df = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.dg, <2 x float> %i.dd)
  %i.di = insertelement <2 x float> %6, float %i.cx, i64 1
  %i.dj = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dk, <2 x float> %i.dh)
  %i.dm = load <2 x float>, ptr %i.l, align 4, !tbaa !159
  %i.dn = fadd <2 x float> %i.dl, %i.dm
  %i.do = load float, ptr %i.o, align 4, !tbaa !159
  %i.dp = load float, ptr %i.p, align 4, !tbaa !159
  %i.dq = fmul float %i.cu, %i.dp
  %i.dr = call float @llvm.fmuladd.f32(float %i.do, float %i.cs, float %i.dq)
  %i.ds = load float, ptr %i.q, align 4, !tbaa !159
  %i.dt = call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.cw, float %i.dr)
  %i.du = load float, ptr %i.r, align 4, !tbaa !159
  %i.dv = fadd float %i.du, %i.dt
  %.sroa.3.12.vec.insert.i.i23 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  store <2 x float> %i.dn, ptr %i.cr, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i23, ptr %i.cv, align 8, !tbaa !185
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bl, i64 80 ; 2 uses
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !159 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bl, i64 84
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !159 ; 2 uses
  %7 = load <4 x float>, ptr %i.k, align 4
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bl, i64 88 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !159 ; 2 uses
  %i.ec = load float, ptr %i.n, align 4, !tbaa !159
  %i.ed = load <2 x float>, ptr %1, align 4, !tbaa !159 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.m, align 4, !tbaa !159 ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 1, i32 3>
  %i.ei = fmul <2 x float> %i.eg, %i.eh
  %i.ej = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ek = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.el, <2 x float> %i.ei)
  %i.en = insertelement <2 x float> %8, float %i.ec, i64 1
  %i.eo = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ep, <2 x float> %i.em)
  %i.er = load float, ptr %i.o, align 4, !tbaa !159
  %i.es = load float, ptr %i.p, align 4, !tbaa !159
  %i.et = fmul float %i.dz, %i.es
  %i.eu = call float @llvm.fmuladd.f32(float %i.er, float %i.dx, float %i.et)
  %i.ev = load float, ptr %i.q, align 4, !tbaa !159
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.eb, float %i.eu)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ew, i64 0
  store <2 x float> %i.eq, ptr %i.dw, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ea, align 8, !tbaa !185
  %i.ex = fsub <2 x float> %i.ci, %i.u
  %i.ey = fsub float %i.cq, %i.f
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ey, i64 0
  %i.ez = fadd <2 x float> %i.u, %i.ci
  %i.fa = fadd float %i.f, %i.cq
  %.sroa.3.12.vec.insert.i8.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fa, i64 0
  store <2 x float> %i.ex, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx26, align 8, !tbaa !185
  store <2 x float> %i.ez, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i8.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !185
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !210
  call void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef %i.fc, ptr noundef nonnull align 4 dereferenceable(32) %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e
}

declare void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody13updateNormalsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %i.b, 4
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 440
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.r, i64 %indvars.iv.epil
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !339

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.v = load i32, ptr %i.u, align 4, !tbaa !118  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 896
  %wide.trip.count66 = zext nneg i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph56, %bb.d
  %indvars.iv63 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next64, %bb.d ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !117
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %indvars.iv63 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !251 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !251 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load float, ptr %i.ad, align 4, !tbaa !159
  %i.ah = load float, ptr %i.af, align 4, !tbaa !159
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !251 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load float, ptr %i.am, align 4, !tbaa !159
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.ai, align 4, !tbaa !159 ; 2 uses
  %i.as = load <2 x float>, ptr %i.aj, align 4, !tbaa !159 ; 3 uses
  %i.at = fsub <2 x float> %i.ar, %i.as           ; 2 uses
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %i.ag, i64 1
  %i.aw = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ax = insertelement <2 x float> %i.aw, float %i.ah, i64 1 ; 2 uses
  %i.ay = fsub <2 x float> %i.av, %i.ax           ; 2 uses
  %i.az = load <2 x float>, ptr %i.ao, align 4, !tbaa !159 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bb = insertelement <2 x float> %i.ba, float %i.an, i64 1
  %i.bc = fsub <2 x float> %i.bb, %i.ax           ; 2 uses
  %i.bd = fsub <2 x float> %i.az, %i.as           ; 2 uses
  %i.be = fneg <2 x float> %i.bd
  %i.bf = fmul <2 x float> %i.ay, %i.be
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.bc, <2 x float> %i.bf) ; 7 uses
  %i.bh = extractelement <2 x float> %i.bc, i64 1
  %i.bi = fneg float %i.bh
  %i.bj = extractelement <2 x float> %i.at, i64 0
  %i.bk = fmul float %i.bj, %i.bi
  %i.bl = extractelement <2 x float> %i.ay, i64 1
  %i.bm = extractelement <2 x float> %i.bd, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bm, float %i.bk) ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %i.bg, %i.bg
  %i.bo = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bp = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bo)
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bq)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.br)
  %i.bs = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.bg, %i.bu
  %i.bw = fmul float %i.bn, %i.bs
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bw, i64 0
  store <2 x float> %i.bv, ptr %i.ap, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !185
  %i.bx = load <2 x float>, ptr %i.aq, align 4, !tbaa !159
  %i.by = fadd <2 x float> %i.bg, %i.bx
  store <2 x float> %i.by, ptr %i.aq, align 4, !tbaa !159
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !159
  %i.cb = fadd float %i.bn, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !159
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.cc, align 4, !tbaa !159
  %i.ce = fadd <2 x float> %i.bg, %i.cd
  store <2 x float> %i.ce, ptr %i.cc, align 4, !tbaa !159
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 88 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !159
  %i.ch = fadd float %i.bn, %i.cg
  store float %i.ch, ptr %i.cf, align 4, !tbaa !159
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !159
  %i.ck = fadd <2 x float> %i.bg, %i.cj
  store <2 x float> %i.ck, ptr %i.ci, align 4, !tbaa !159
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 88 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !159
  %i.cn = fadd float %i.bn, %i.cm
  store float %i.cn, ptr %i.cl, align 4, !tbaa !159
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge57, label %bb.d

._crit_edge57:                                    ; preds = %bb.d, %._crit_edge
  %i.co = load i32, ptr %i.a, align 4, !tbaa !110 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph60, label %._crit_edge61

end_hunk_0
begin_hunk_1_@_ZN10btSoftBody7setPoseEbb:bb.a
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ij, i64 0
  %i.ik = load ptr, ptr %i.ia, align 8, !tbaa !36
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %indvars.iv125 ; 2 uses
  store <2 x float> %i.ig, ptr %i.il, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !185
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.im = load ptr, ptr %i.hz, align 8, !tbaa !109
  %i.in = getelementptr inbounds nuw [120 x i8], ptr %i.im, i64 %indvars.iv.next126 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load <2 x float>, ptr %i.io, align 4, !tbaa !159
  %i.iq = fsub <2 x float> %i.ip, %.sroa.07.1.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.is = load float, ptr %i.ir, align 4, !tbaa !159
  %i.it = fsub float %i.is, %.sroa.6100.8.vec.extract
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.it, i64 0
  %i.iu = load ptr, ptr %i.ia, align 8, !tbaa !36
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %indvars.iv.next126 ; 2 uses
  store <2 x float> %i.iq, ptr %i.iv, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !185
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter250.next.1 = add i64 %niter250, 2         ; 2 uses
  %niter250.ncmp.1 = icmp eq i64 %niter250.next.1, %unroll_iter249
  br i1 %niter250.ncmp.1, label %._crit_edge108.loopexit.unr-lcssa, label %bb.o

._crit_edge108.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %._crit_edge108.loopexit, label %.epil.preheader245

.epil.preheader245:                               ; preds = %._crit_edge108.loopexit.unr-lcssa, %.lr.ph107
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next126.1, %._crit_edge108.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod248 = trunc i32 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod248)
  %i.iw = load ptr, ptr %i.hz, align 8, !tbaa !109
  %i.ix = getelementptr inbounds nuw [120 x i8], ptr %i.iw, i64 %indvars.iv125.epil.init ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load <2 x float>, ptr %i.iy, align 4, !tbaa !159
  %i.ja = fsub <2 x float> %i.iz, %.sroa.07.1.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !159
  %i.jd = fsub float %i.jc, %.sroa.6100.8.vec.extract
  %.sroa.3.12.vec.insert.i.epil = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jd, i64 0
  %i.je = load ptr, ptr %i.ia, align 8, !tbaa !36
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %indvars.iv125.epil.init ; 2 uses
  store <2 x float> %i.ja, ptr %i.jf, align 4
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.epil, ptr %.sroa.4.0..sroa_idx.epil, align 4, !tbaa !185
  br label %._crit_edge108.loopexit

._crit_edge108.loopexit:                          ; preds = %._crit_edge108.loopexit.unr-lcssa, %.epil.preheader245
  %.pre137.pre = load i32, ptr %i.e, align 4, !tbaa !110
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %.pre137 = phi i32 [ %.pre137.pre, %._crit_edge108.loopexit ], [ %i.hx, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit ] ; 3 uses
  %i.jg = icmp sgt i32 %.pre137, 0
  %or.cond = select i1 %1, i1 %i.jg, i1 false
  br i1 %or.cond, label %bb.p, label %_ZNK10btSoftBody9getVolumeEv.exit

bb.p:                                             ; preds = %._crit_edge108
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !109 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %.sroa.027.0.copyload.i = load float, ptr %i.jj, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.jk = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !118 ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph.i63, label %._crit_edge.i

.lr.ph.i63:                                       ; preds = %bb.p
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !117
  %wide.trip.count.i64 = zext nneg i32 %i.jm to i64
  %i.jq = extractelement <2 x float> %i.jk, i64 0 ; 2 uses
  %i.jr = extractelement <2 x float> %i.jk, i64 1 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i63
  %indvars.iv.i65 = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i66, %bb.q ] ; 2 uses
  %.035.i = phi float [ 0.000000e+00, %.lr.ph.i63 ], [ %i.ll, %bb.q ]
  %i.js = getelementptr inbounds nuw [72 x i8], ptr %i.jp, i64 %indvars.iv.i65 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !251 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !159
  %i.jx = fsub float %i.jw, %.sroa.027.0.copyload.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  %i.jz = load <2 x float>, ptr %i.jy, align 4, !tbaa !159
  %i.ka = fsub <2 x float> %i.jz, %i.jk           ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !251 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !159
  %i.kf = fsub float %i.ke, %.sroa.027.0.copyload.i ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !159
  %i.ki = fsub float %i.kh, %i.jq                 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !159
  %i.kl = fsub float %i.kk, %i.jr                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !251 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !159
  %i.kq = fsub float %i.kp, %.sroa.027.0.copyload.i ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !159
  %i.kt = fsub float %i.ks, %i.jq                 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !159
  %i.kw = fsub float %i.kv, %i.jr                 ; 2 uses
  %i.kx = fneg float %i.kt
  %i.ky = fmul float %i.kl, %i.kx
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.kw, float %i.ky)
  %i.la = fneg float %i.kw
  %i.lb = fmul float %i.kf, %i.la
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.kq, float %i.lb)
  %i.ld = fneg float %i.kq
  %i.le = fmul float %i.ki, %i.ld
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.kt, float %i.le)
  %i.lg = extractelement <2 x float> %i.ka, i64 0
  %i.lh = fmul float %i.lg, %i.lc
  %i.li = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.kz, float %i.lh)
  %i.lj = extractelement <2 x float> %i.ka, i64 1
  %i.lk = tail call noundef float @llvm.fmuladd.f32(float %i.lj, float %i.lf, float %i.li)
  %i.ll = fadd float %.035.i, %i.lk               ; 2 uses
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i64
  br i1 %exitcond.not.i67, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %bb.q, %bb.p
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.p ], [ %i.ll, %bb.q ]
  %i.lm = fdiv float %.0.lcssa.i, 6.000000e+00
  br label %_ZNK10btSoftBody9getVolumeEv.exit

_ZNK10btSoftBody9getVolumeEv.exit:                ; preds = %._crit_edge.i, %._crit_edge108
  %i.ln = phi float [ 0.000000e+00, %._crit_edge108 ], [ %i.lm, %._crit_edge.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 540
  store float %i.ln, ptr %i.lo, align 4, !tbaa !163
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 608
  store <2 x float> %.sroa.07.1.i, ptr %i.lp, align 8
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store <2 x float> %.sroa.7.1.i, ptr %.sroa.6100.0..sroa_idx, align 8, !tbaa !185
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float 1.000000e+00, ptr %i.lq, align 8, !tbaa !159
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ls, align 4, !tbaa !159
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.lu, align 8, !tbaa !159
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float 1.000000e+00, ptr %i.lv, align 8, !tbaa !159
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 692
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.lx, align 4, !tbaa !159
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.lz, align 8, !tbaa !159
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 756 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 4 uses
  %i.me = icmp sgt i32 %.pre137, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ma, i8 0, i64 52, i1 false)
  br i1 %i.me, label %.lr.ph110, label %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge

_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge: ; preds = %_ZNK10btSoftBody9getVolumeEv.exit
  %.phi.trans.insert138 = getelementptr inbounds nuw i8, ptr %0, i64 740
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.pre142 = load float, ptr %i.md, align 8, !tbaa !159, !noalias !355
  %.pre143 = load float, ptr %i.mb, align 8, !tbaa !159, !noalias !355 ; 2 uses
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %0, i64 724
  %.phi.trans.insert146 = getelementptr inbounds nuw i8, ptr %0, i64 728
  %.pre141 = load float, ptr %.phi.trans.insert140, align 8, !tbaa !159, !noalias !355
  %.pre139 = load float, ptr %.phi.trans.insert138, align 4, !tbaa !159, !noalias !355
  %.pre147 = load float, ptr %.phi.trans.insert146, align 8, !tbaa !159, !noalias !355 ; 2 uses
  %.pre145 = load float, ptr %.phi.trans.insert144, align 4, !tbaa !159, !noalias !355
  %i.mf = insertelement <2 x float> poison, float %.pre147, i64 0
  %i.mg = insertelement <2 x float> %i.mf, float %.pre143, i64 1
  br label %._crit_edge111

.lr.ph110:                                        ; preds = %_ZNK10btSoftBody9getVolumeEv.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !36
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !43
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %.promoted = load float, ptr %i.mb, align 8, !tbaa !159
  %.promoted112 = load float, ptr %i.ml, align 4, !tbaa !159
  %3 = load <4 x float>, ptr %i.mm, align 8
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.mo = load <2 x float>, ptr %i.md, align 8, !tbaa !159
  %.promoted116 = load float, ptr %i.mn, align 8, !tbaa !159
  %wide.trip.count133 = zext nneg i32 %.pre137 to i64
  %i.mp = insertelement <2 x float> %4, float %.promoted, i64 1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph110, %bb.r
  %indvars.iv130 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next131, %bb.r ] ; 3 uses
  %i.mq = phi float [ 0.000000e+00, %.lr.ph110 ], [ %i.of, %bb.r ]
  %i.mr = phi float [ %.promoted116, %.lr.ph110 ], [ %i.oa, %bb.r ]
  %i.ms = phi float [ %.promoted112, %.lr.ph110 ], [ %i.ni, %bb.r ]
  %i.mt = phi <2 x float> [ zeroinitializer, %.lr.ph110 ], [ %i.og, %bb.r ]
  %i.mu = phi <2 x float> [ %i.mp, %.lr.ph110 ], [ %i.nq, %bb.r ]
  %i.mv = phi <2 x float> [ %i.mo, %.lr.ph110 ], [ %i.nz, %bb.r ]
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %indvars.iv130 ; 5 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv130
  %i.my = load float, ptr %i.mw, align 4, !tbaa !159 ; 2 uses
  %i.mz = load float, ptr %i.mx, align 4, !tbaa !159 ; 3 uses
  %i.na = fmul float %i.my, %i.mz                 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 4 ; 2 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !159 ; 2 uses
  %i.nd = fmul float %i.mz, %i.nc                 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !159 ; 2 uses
  %i.ng = fmul float %i.mz, %i.nf                 ; 2 uses
  %i.nh = fmul float %i.na, %i.nc
  %i.ni = fadd float %i.nh, %i.ms                 ; 3 uses
  store float %i.ni, ptr %i.ml, align 4, !tbaa !159
  %i.nj = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nl = insertelement <2 x float> poison, float %i.nf, i64 0
  %i.nm = insertelement <2 x float> %i.nl, float %i.my, i64 1
  %i.nn = insertelement <2 x float> poison, float %i.na, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = fmul <2 x float> %i.nm, %i.no
  %i.nq = fadd <2 x float> %i.np, %i.mu           ; 4 uses
  %i.nr = extractelement <2 x float> %i.nq, i64 1 ; 2 uses
  %i.ns = extractelement <2 x float> %i.nq, i64 0 ; 2 uses
  store float %i.nr, ptr %i.mb, align 8, !tbaa !159
  store float %i.ns, ptr %i.mm, align 8, !tbaa !159
  %i.nt = load float, ptr %i.ne, align 4, !tbaa !159
  %i.nu = fmul float %i.nd, %i.nt
  %i.nv = load <2 x float>, ptr %i.mw, align 4, !tbaa !159
  %i.nw = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.nx = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x float> %i.nx, %i.nv
  %i.nz = fadd <2 x float> %i.ny, %i.mv           ; 4 uses
  store <2 x float> %i.nz, ptr %i.md, align 8, !tbaa !159
  %i.oa = fadd float %i.nu, %i.mr                 ; 3 uses
  store float %i.oa, ptr %i.mn, align 8, !tbaa !159
  %i.ob = load float, ptr %i.mw, align 4, !tbaa !159
  %i.oc = fmul float %i.ng, %i.ob
  %i.od = load <2 x float>, ptr %i.nb, align 4, !tbaa !159
  %i.oe = fmul <2 x float> %i.nk, %i.od
  %i.of = fadd float %i.oc, %i.mq                 ; 3 uses
  store float %i.of, ptr %i.mc, align 8, !tbaa !159
  %i.og = fadd <2 x float> %i.oe, %i.mt           ; 5 uses
  store <2 x float> %i.og, ptr %.sroa.495.0..sroa_idx, align 4, !tbaa !159
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge111.loopexit, label %bb.r

._crit_edge111.loopexit:                          ; preds = %bb.r
  %i.oh = extractelement <2 x float> %i.nz, i64 1
  %i.oi = extractelement <2 x float> %i.nz, i64 0
  %i.oj = extractelement <2 x float> %i.og, i64 0
  %i.ok = extractelement <2 x float> %i.og, i64 1
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge
  %i.ol = phi float [ %.pre147, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.ns, %._crit_edge111.loopexit ] ; 2 uses
  %i.om = phi float [ %.pre145, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.ni, %._crit_edge111.loopexit ] ; 5 uses
  %i.on = phi float [ %.pre143, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.nr, %._crit_edge111.loopexit ] ; 3 uses
  %i.oo = phi float [ %.pre142, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.oi, %._crit_edge111.loopexit ] ; 4 uses
  %i.op = phi float [ 0.000000e+00, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.of, %._crit_edge111.loopexit ] ; 4 uses
  %i.oq = phi float [ 0.000000e+00, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.oj, %._crit_edge111.loopexit ]
  %i.or = phi float [ %.pre141, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.oa, %._crit_edge111.loopexit ] ; 4 uses
  %i.os = phi float [ 0.000000e+00, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.ok, %._crit_edge111.loopexit ]
  %i.ot = phi float [ %.pre139, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.oh, %._crit_edge111.loopexit ] ; 4 uses
  %i.ou = phi <2 x float> [ zeroinitializer, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.og, %._crit_edge111.loopexit ] ; 2 uses
  %i.ov = phi <2 x float> [ %i.mg, %_ZNK10btSoftBody9getVolumeEv.exit.._crit_edge111_crit_edge ], [ %i.nq, %._crit_edge111.loopexit ] ; 3 uses
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.ox = fneg <2 x float> %i.ou                  ; 3 uses
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oz = extractelement <2 x float> %i.ox, i64 1
  %i.pa = fmul float %i.oo, %i.oz
  %i.pb = tail call noundef float @llvm.fmuladd.f32(float %i.or, float %i.op, float %i.pa) ; 2 uses
  %i.pc = insertelement <2 x float> poison, float %i.or, i64 0
  %i.pd = insertelement <2 x float> %i.pc, float %i.op, i64 1
  %i.pe = fneg <2 x float> %i.pd
  %i.pf = fneg float %i.op
  %i.pg = fmul float %i.ot, %i.pf
  %i.ph = tail call noundef float @llvm.fmuladd.f32(float %i.oo, float %i.oq, float %i.pg) ; 2 uses
  %i.pi = fmul float %i.om, %i.pb
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.pk = fneg float %i.ot
  %i.pl = fmul float %i.ol, %i.pk
  %i.pm = tail call noundef float @llvm.fmuladd.f32(float %i.om, float %i.or, float %i.pl)
  %i.pn = extractelement <2 x float> %i.ox, i64 0
  %i.po = fmul float %i.on, %i.pn
  %i.pp = tail call noundef float @llvm.fmuladd.f32(float %i.om, float %i.op, float %i.po)
  %i.pq = fneg float %i.oo
  %i.pr = fmul float %i.om, %i.pq
  %i.ps = tail call noundef float @llvm.fmuladd.f32(float %i.on, float %i.ot, float %i.pr)
  %i.pt = insertelement <2 x float> poison, float %i.om, i64 0
  %i.pu = insertelement <2 x float> %i.pt, float %i.or, i64 1
  %i.pv = fmul <2 x float> %i.pu, %i.oy
  %i.pw = insertelement <2 x float> %i.ov, float %i.ot, i64 1
  %i.px = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pw, <2 x float> %i.ou, <2 x float> %i.pv) ; 2 uses
  %i.py = extractelement <2 x float> %i.px, i64 1
  %i.pz = tail call float @llvm.fmuladd.f32(float %i.on, float %i.py, float %i.pi)
  %i.qa = tail call noundef float @llvm.fmuladd.f32(float %i.ol, float %i.ph, float %i.pz)
  %i.qb = fdiv float 1.000000e+00, %i.qa          ; 6 uses
  %i.qc = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qe = fmul <2 x float> %i.px, %i.qd
  %i.qf = fmul float %i.pm, %i.qb
  %i.qg = fmul float %i.pb, %i.qb
  %i.qh = fmul float %i.ph, %i.qb
  %i.qi = fmul float %i.pp, %i.qb
  %i.qj = fmul float %i.ps, %i.qb
  %i.qk = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qk, ptr %i.mb, align 8
  store float %i.qf, ptr %i.pj, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 732
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !185
  store float %i.qg, ptr %i.md, align 8
  %i.ql = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qm = fmul <2 x float> %i.ql, %i.pe
  %i.qn = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.qo = insertelement <2 x float> %i.qn, float %i.os, i64 1
  %i.qp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ov, <2 x float> %i.qo, <2 x float> %i.qm)
  %i.qq = fmul <2 x float> %i.qp, %i.qd
  %i.qr = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qr, ptr %i.ow, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 748
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !185
  store float %i.qh, ptr %i.mc, align 8
  store float %i.qi, ptr %.sroa.495.0..sroa_idx, align 4
  store float %i.qj, ptr %.sroa.596.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.697.0..sroa_idx, align 4, !tbaa !185
  tail call void @_ZN10btSoftBody15updateConstantsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK10btSoftBody11evaluateComEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 537
  %i.b = load i8, ptr %i.a, align 1, !tbaa !162, !range !179, !noundef !180
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110  ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %.sroa.7.020 = phi <2 x float> [ zeroinitializer, %.lr.ph.new ], [ %.sroa.7.8.vec.insert18.1, %bb.c ] ; 2 uses
  %.sroa.07.019 = phi <2 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.aj, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.l = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !159 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !159
  %i.r = fmul float %i.o, %i.q
  %i.s = load <2 x float>, ptr %i.m, align 4, !tbaa !159
  %i.t = insertelement <2 x float> poison, float %i.o, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = fadd <2 x float> %.sroa.07.019, %i.v
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.7.020, i64 0
  %i.x = fadd float %.sroa.7.8.vec.extract, %i.r
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.h, i64 %indvars.iv.next ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !159 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !159
  %i.ae = fmul float %i.ab, %i.ad
  %i.af = load <2 x float>, ptr %i.z, align 4, !tbaa !159
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody13predictMotionEf:bb.a
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count155 = zext nneg i32 %i.em to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph144, %bb.m
  %indvars.iv152 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next153, %bb.m ] ; 2 uses
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !109
  %i.er = getelementptr inbounds nuw [120 x i8], ptr %i.eq, i64 %indvars.iv152 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load float, ptr %i.v, align 4, !tbaa !462 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !159, !noalias !491 ; 2 uses
  %i.ew = fsub float %i.ev, %i.et
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ew, i64 0
  %i.ex = load <2 x float>, ptr %i.es, align 4, !tbaa !159, !noalias !491 ; 2 uses
  %i.ey = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = fsub <2 x float> %i.ex, %i.ez
  %i.fb = fadd <2 x float> %i.ez, %i.ex
  %i.fc = fadd float %i.et, %i.ev
  %.sroa.3.12.vec.insert.i8.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fc, i64 0
  store <2 x float> %i.fa, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !185
  store <2 x float> %i.fb, ptr %.sroa.5124.0..sroa_idx, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i8.i.i, ptr %.sroa.6125.0..sroa_idx, align 8, !tbaa !185
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 104
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.fg = load float, ptr %i.o, align 8, !tbaa !159 ; 2 uses
  %i.fh = load <2 x float>, ptr %i.ff, align 8, !tbaa !159
  %i.fi = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !159
  %i.fn = fmul float %i.fg, %i.fm
  %.sroa.3.12.vec.insert.i55 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  store <2 x float> %i.fk, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i55, ptr %i.ep, align 8
  %i.fo = load float, ptr %i.x, align 8, !tbaa !490
  %i.fp = call noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(64) %i.df, ptr noundef %i.fe, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %i.fo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge145, label %bb.m

._crit_edge145:                                   ; preds = %bb.m, %_ZN10btSoftBody12updateBoundsEv.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !479
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %.loopexit141, label %.preheader

.preheader:                                       ; preds = %._crit_edge145
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !118
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph147, label %.loopexit141

.lr.ph147:                                        ; preds = %.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.10112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.12115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph147, %bb.n
  %indvars.iv157 = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next158, %bb.n ] ; 2 uses
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !117
  %i.fz = getelementptr inbounds nuw [72 x i8], ptr %i.fy, i64 %indvars.iv157 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !251 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !251 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !159
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !159
  %i.gk = fadd float %i.gh, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !251 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.gp = load float, ptr %i.go, align 4, !tbaa !159
  %i.gq = fadd float %i.gk, %i.gp
  %i.gr = fmul float %i.gq, f0x3EAAAAAB
  %i.gs = load float, ptr %i.v, align 4, !tbaa !462 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %.sroa.17.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gy = load <2 x float>, ptr %.sroa.17.16..sroa_idx, align 4 ; 3 uses
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ha = load <2 x float>, ptr %i.gw, align 4, !tbaa !159, !noalias !496 ; 3 uses
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hc = shufflevector <2 x float> %i.gy, <2 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hd = shufflevector <2 x float> %i.ha, <2 x float> %i.gy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.he = fcmp olt <4 x float> %i.hc, %i.hd
  %i.hf = shufflevector <4 x i1> %i.he, <4 x i1> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.hg = select <4 x i1> %i.hf, <4 x float> %i.hb, <4 x float> %i.gz ; 3 uses
  %i.hh = load <2 x float>, ptr %i.gx, align 4, !tbaa !159, !noalias !496
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> %i.hg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hk = shufflevector <4 x float> %i.hg, <4 x float> %i.hi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hl = fcmp olt <4 x float> %i.hj, %i.hk
  %i.hm = select <4 x i1> %i.hl, <4 x float> %i.hi, <4 x float> %i.hg ; 4 uses
  %i.hn = extractelement <4 x float> %i.hm, i64 0
  %i.ho = fsub float %i.hn, %i.gs
  %i.hp = extractelement <4 x float> %i.hm, i64 2
  %i.hq = fadd float %i.gs, %i.hp
  %i.hr = load <2 x float>, ptr %i.gt, align 4    ; 4 uses
  %i.hs = load <2 x float>, ptr %i.gu, align 4, !tbaa !159, !noalias !496 ; 4 uses
  %i.ht = fcmp olt <2 x float> %i.hs, %i.hr
  %i.hu = select <2 x i1> %i.ht, <2 x float> %i.hs, <2 x float> %i.hr ; 2 uses
  %i.hv = load <2 x float>, ptr %i.gv, align 4, !tbaa !159, !noalias !496 ; 4 uses
  %i.hw = fcmp olt <2 x float> %i.hv, %i.hu
  %i.hx = select <2 x i1> %i.hw, <2 x float> %i.hv, <2 x float> %i.hu
  %i.hy = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ia = fsub <2 x float> %i.hx, %i.hz
  store <2 x float> %i.ia, ptr %2, align 8
  store float %i.ho, ptr %.sroa.8109.0..sroa_idx, align 8
  %i.ib = extractelement <4 x float> %i.hm, i64 1
  store float %i.ib, ptr %.sroa.10112.0..sroa_idx, align 4, !tbaa !185
  %i.ic = fcmp olt <2 x float> %i.hr, %i.hs
  %i.id = select <2 x i1> %i.ic, <2 x float> %i.hs, <2 x float> %i.hr ; 2 uses
  %i.ie = fcmp olt <2 x float> %i.id, %i.hv
  %i.if = select <2 x i1> %i.ie, <2 x float> %i.hv, <2 x float> %i.id
  %i.ig = fadd <2 x float> %i.hz, %i.if
  store <2 x float> %i.ig, ptr %.sroa.12115.0..sroa_idx, align 8
  store float %i.hq, ptr %.sroa.17.0..sroa_idx, align 8
  %i.ih = extractelement <4 x float> %i.hm, i64 3
  store float %i.ih, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !185
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ik = load float, ptr %i.o, align 8, !tbaa !159 ; 2 uses
  %i.il = load <2 x float>, ptr %i.gc, align 4, !tbaa !159
  %i.im = load <2 x float>, ptr %i.gf, align 4, !tbaa !159
  %i.in = fadd <2 x float> %i.il, %i.im
  %i.io = load <2 x float>, ptr %i.gn, align 4, !tbaa !159
  %i.ip = fadd <2 x float> %i.in, %i.io
  %i.iq = fmul <2 x float> %i.ip, splat (float f0x3EAAAAAB)
  %i.ir = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.iq, %i.is
  %i.iu = fmul float %i.gr, %i.ik
  %.sroa.3.12.vec.insert.i70 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iu, i64 0
  store <2 x float> %i.it, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i70, ptr %i.fx, align 8
  %i.iv = load float, ptr %i.x, align 8, !tbaa !490
  %i.iw = call noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(64) %i.fq, ptr noundef %i.ij, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %i.iv) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.ix = load i32, ptr %i.ft, align 4, !tbaa !118
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next158, %i.iy
  br i1 %i.iz, label %bb.n, label %.loopexit141

.loopexit141:                                     ; preds = %bb.n, %.preheader, %._crit_edge145
  call void @_ZN10btSoftBody10updatePoseEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 537
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !162, !range !179, !noundef !180
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.loopexit141
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.je = load float, ptr %i.jd, align 8, !tbaa !501
  %i.jf = fcmp ogt float %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.sroa.10103.32.copyload = load float, ptr %i.jg, align 8
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.12.32.copyload = load float, ptr %.sroa.12.32..sroa_idx, align 4
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 8
  %i.jh = load i32, ptr %i.aj, align 4, !tbaa !110 ; 2 uses
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %.lr.ph150, label %.loopexit

.lr.ph150:                                        ; preds = %bb.p
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.sroa.9.16.copyload = load float, ptr %.sroa.9.16..sroa_idx, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.jk = load <2 x float>, ptr %i.jj, align 8    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.jm = load <2 x float>, ptr %i.jl, align 8    ; 2 uses
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632
  %5 = load <4 x float>, ptr %.sroa.5101.0..sroa_idx, align 8
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %wide.trip.count163 = zext nneg i32 %i.jh to i64
  %i.jr = insertelement <2 x float> %6, float %.sroa.9.16.copyload, i64 1
  %i.js = shufflevector <2 x float> %i.jm, <2 x float> %i.jk, <2 x i32> <i32 0, i32 2>
  %i.jt = shufflevector <2 x float> %i.jm, <2 x float> %i.jk, <2 x i32> <i32 1, i32 3>
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph150, %bb.s
  %indvars.iv160 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next161, %bb.s ] ; 3 uses
  %i.ju = load ptr, ptr %i.jn, align 8, !tbaa !109
  %i.jv = getelementptr inbounds nuw [120 x i8], ptr %i.ju, i64 %indvars.iv160 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  %i.jx = load float, ptr %i.jw, align 8, !tbaa !199
  %i.jy = fcmp ogt float %i.jx, 0.000000e+00
  br i1 %i.jy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jz = load ptr, ptr %i.jo, align 8, !tbaa !36
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %indvars.iv160 ; 3 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !159 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !159 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !159 ; 2 uses
  %i.kg = fmul float %.sroa.12.32.copyload, %i.kd
  %i.kh = call float @llvm.fmuladd.f32(float %.sroa.10103.32.copyload, float %i.kb, float %i.kg)
  %i.ki = call noundef float @llvm.fmuladd.f32(float %.sroa.13.32.copyload, float %i.kf, float %i.kh)
  %i.kj = load float, ptr %i.jq, align 8, !tbaa !159
  %i.kk = fadd float %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.km = load float, ptr %i.jd, align 8, !tbaa !501 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 8, !tbaa !159 ; 2 uses
  %i.kp = fsub float %i.kk, %i.ko
  %i.kq = fmul float %i.km, %i.kp
  %i.kr = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = fmul <2 x float> %i.jt, %i.ks
  %i.ku = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.kv, <2 x float> %i.kt)
  %i.kx = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.ky, <2 x float> %i.kw)
  %i.la = load <2 x float>, ptr %i.jp, align 8, !tbaa !159
  %i.lb = fadd <2 x float> %i.la, %i.kz
  %i.lc = load <2 x float>, ptr %i.kl, align 8, !tbaa !159 ; 2 uses
  %i.ld = fsub <2 x float> %i.lb, %i.lc
  %i.le = insertelement <2 x float> poison, float %i.km, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = fmul <2 x float> %i.lf, %i.ld
  %i.lh = fadd <2 x float> %i.lc, %i.lg
  %i.li = fadd float %i.ko, %i.kq
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.li, i64 0
  store <2 x float> %i.lh, ptr %i.kl, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.kn, align 8, !tbaa !185
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %.loopexit, label %bb.q

.loopexit:                                        ; preds = %bb.s, %bb.p, %bb.o, %.loopexit141
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !130 ; 3 uses
  %i.ll = icmp slt i32 %i.lk, 0
  br i1 %i.ll, label %bb.t, label %_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE6resizeEiRKS1_.exit

bb.t:                                             ; preds = %.loopexit
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !131
  %i.lo = icmp slt i32 %i.ln, 0
  br i1 %i.lo, label %_ZNK20btAlignedObjectArrayIN10btSoftBody8RContactEE4copyEiiPS1_.exit.i.i, label %.lr.ph.i83

_ZNK20btAlignedObjectArrayIN10btSoftBody8RContactEE4copyEiiPS1_.exit.i.i: ; preds = %bb.t
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !129 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.lq, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE10deallocateEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody8RContactEE4copyEiiPS1_.exit.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !128, !range !179, !noundef !180
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.v, label %_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE10deallocateEv.exit.i.i

bb.v:                                             ; preds = %bb.u
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.lq)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE10deallocateEv.exit.i.i: ; preds = %bb.v, %bb.u, %_ZNK20btAlignedObjectArrayIN10btSoftBody8RContactEE4copyEiiPS1_.exit.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i8 1, ptr %i.lu, align 8, !tbaa !128
  store ptr null, ptr %i.lp, align 8, !tbaa !129
  store i32 0, ptr %i.lm, align 8, !tbaa !131
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE10deallocateEv.exit.i.i, %bb.t
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 5 uses
  %i.lw = sext i32 %i.lk to i64                   ; 3 uses
  %i.lx = sub nsw i64 0, %i.lw
  %xtraiter175 = and i64 %i.lx, 3                 ; 2 uses
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i83, %.prol.preheader
  %indvars.iv.i84.prol = phi i64 [ %indvars.iv.next.i85.prol, %.prol.preheader ], [ %i.lw, %.lr.ph.i83 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i83 ]
  %i.ly = load ptr, ptr %i.lv, align 8, !tbaa !129
  %i.lz = getelementptr inbounds [120 x i8], ptr %i.ly, i64 %indvars.iv.i84.prol
  %indvars.iv.next.i85.prol = add nsw i64 %indvars.iv.i84.prol, 1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %i.lz, i8 0, i64 116, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter175
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !502

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i83
  %indvars.iv.i84.unr = phi i64 [ %i.lw, %.lr.ph.i83 ], [ %indvars.iv.next.i85.prol, %.prol.preheader ]
  %i.ma = icmp ugt i32 %i.lk, -4
  br i1 %i.ma, label %_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE6resizeEiRKS1_.exit, label %.lr.ph.i83.new

.lr.ph.i83.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i83.new
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i85.3, %.lr.ph.i83.new ], [ %indvars.iv.i84.unr, %.prol.loopexit ] ; 5 uses
  %i.mb = load ptr, ptr %i.lv, align 8, !tbaa !129
  %i.mc = getelementptr inbounds [120 x i8], ptr %i.mb, i64 %indvars.iv.i84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %i.mc, i8 0, i64 116, i1 false)
  %i.md = load ptr, ptr %i.lv, align 8, !tbaa !129
  %i.me = getelementptr [120 x i8], ptr %i.md, i64 %indvars.iv.i84
  %i.mf = getelementptr i8, ptr %i.me, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %i.mf, i8 0, i64 116, i1 false)
  %i.mg = load ptr, ptr %i.lv, align 8, !tbaa !129
  %i.mh = getelementptr [120 x i8], ptr %i.mg, i64 %indvars.iv.i84
  %i.mi = getelementptr i8, ptr %i.mh, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %i.mi, i8 0, i64 116, i1 false)
  %i.mj = load ptr, ptr %i.lv, align 8, !tbaa !129
  %i.mk = getelementptr [120 x i8], ptr %i.mj, i64 %indvars.iv.i84
  %i.ml = getelementptr i8, ptr %i.mk, i64 360
  %indvars.iv.next.i85.3 = add nsw i64 %indvars.iv.i84, 4 ; 2 uses
  %exitcond.not.i86.3 = icmp eq i64 %indvars.iv.next.i85.3, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(116) %i.ml, i8 0, i64 116, i1 false)
  br i1 %exitcond.not.i86.3, label %_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE6resizeEiRKS1_.exit, label %.lr.ph.i83.new

_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE6resizeEiRKS1_.exit: ; preds = %.prol.loopexit, %.lr.ph.i83.new, %.loopexit
  store i32 0, ptr %i.lj, align 4, !tbaa !130
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !134 ; 3 uses
  %i.mo = icmp slt i32 %i.mn, 0
  br i1 %i.mo, label %bb.w, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE6resizeEiRKS1_.exit

bb.w:                                             ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody8RContactEE6resizeEiRKS1_.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !135
  %i.mr = icmp slt i32 %i.mq, 0
  br i1 %i.mr, label %_ZNK20btAlignedObjectArrayIN10btSoftBody8SContactEE4copyEiiPS1_.exit.i.i, label %.lr.ph.i87

_ZNK20btAlignedObjectArrayIN10btSoftBody8SContactEE4copyEiiPS1_.exit.i.i: ; preds = %bb.w
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !133 ; 2 uses
  %.not.i5.i.i91 = icmp eq ptr %i.mt, null
  br i1 %.not.i5.i.i91, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody8SContactEE4copyEiiPS1_.exit.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.mv = load i8, ptr %i.mu, align 8, !tbaa !132, !range !179, !noundef !180
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.y, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i

bb.y:                                             ; preds = %bb.x
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.mt)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i: ; preds = %bb.y, %bb.x, %_ZNK20btAlignedObjectArrayIN10btSoftBody8SContactEE4copyEiiPS1_.exit.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i8 1, ptr %i.mx, align 8, !tbaa !132
  store ptr null, ptr %i.ms, align 8, !tbaa !133
  store i32 0, ptr %i.mp, align 8, !tbaa !135
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE10deallocateEv.exit.i.i, %bb.w
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  %i.mz = sext i32 %i.mn to i64                   ; 3 uses
  %i.na = sub nsw i64 0, %i.mz
  %xtraiter179 = and i64 %i.na, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %.prol.loopexit178, label %.prol.preheader177

.prol.preheader177:                               ; preds = %.lr.ph.i87, %.prol.preheader177
  %indvars.iv.i88.prol = phi i64 [ %indvars.iv.next.i89.prol, %.prol.preheader177 ], [ %i.mz, %.lr.ph.i87 ] ; 2 uses
  %prol.iter181 = phi i64 [ %prol.iter181.next, %.prol.preheader177 ], [ 0, %.lr.ph.i87 ]
  %i.nb = load ptr, ptr %i.my, align 8, !tbaa !133
  %i.nc = getelementptr inbounds [64 x i8], ptr %i.nb, i64 %indvars.iv.i88.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nc, i8 0, i64 64, i1 false)
  %indvars.iv.next.i89.prol = add nsw i64 %indvars.iv.i88.prol, 1 ; 2 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %.prol.loopexit178, label %.prol.preheader177, !llvm.loop !503

.prol.loopexit178:                                ; preds = %.prol.preheader177, %.lr.ph.i87
  %indvars.iv.i88.unr = phi i64 [ %i.mz, %.lr.ph.i87 ], [ %indvars.iv.next.i89.prol, %.prol.preheader177 ]
  %i.nd = icmp ugt i32 %i.mn, -4
  br i1 %i.nd, label %_ZN20btAlignedObjectArrayIN10btSoftBody8SContactEE6resizeEiRKS1_.exit, label %.lr.ph.i87.new

end_hunk_2
begin_hunk_3_@_ZN10btSoftBody6LJoint7PrepareEfi:bb.a
  br i1 %i.fs, label %bb.z, label %bb.ac, !prof !196

bb.z:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit34
  %i.ft = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i39 = icmp eq i32 %i.ft, 0
  br i1 %.not.i39, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fu = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.ab unwind label %bb.ae     ; 4 uses

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.fu, i64 16, i1 false), !tbaa.struct !198
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !198
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.fw, i64 16, i1 false), !tbaa.struct !198
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.fx, i64 16, i1 false), !tbaa.struct !198
  %i.fy = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %_ZNK10btSoftBody4Body5xformEv.exit34
  %i.fz = load ptr, ptr %i.bs, align 8, !tbaa !291 ; 2 uses
  %.not5.i35 = icmp eq ptr %i.fz, null
  br i1 %.not5.i35, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 72
  br label %_ZNK10btSoftBody4Body5xformEv.exit40

bb.ae:                                            ; preds = %bb.aa
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.af:                                            ; preds = %bb.ac
  %i.gc = load ptr, ptr %i.bj, align 8, !tbaa !293 ; 2 uses
  %.not6.i37 = icmp eq ptr %i.gc, null
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 96
  %spec.select.i38 = select i1 %.not6.i37, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.gd
  br label %_ZNK10btSoftBody4Body5xformEv.exit40

_ZNK10btSoftBody4Body5xformEv.exit40:             ; preds = %bb.ad, %bb.af
  %.0.i36 = phi ptr [ %i.ga, %bb.ad ], [ %spec.select.i38, %bb.af ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i36, i64 48
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !159
  %i.gg = load float, ptr %i.cw, align 8, !tbaa !159
  %i.gh = fsub float %i.gg, %i.gf
  store float %i.gh, ptr %i.cw, align 8, !tbaa !159
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i36, i64 52
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !159
  %i.gk = load float, ptr %i.cy, align 4, !tbaa !159
  %i.gl = fsub float %i.gk, %i.gj
  store float %i.gl, ptr %i.cy, align 4, !tbaa !159
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i36, i64 56
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !159
  %i.go = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !159
  %i.gp = fsub float %i.go, %i.gn
  store float %i.gp, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !592 ; 2 uses
  %.not.i41 = icmp eq ptr %i.gq, null
  br i1 %.not.i41, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK10btSoftBody4Body5xformEv.exit40
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 360
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !523
  br label %_ZNK10btSoftBody4Body7invMassEv.exit

bb.ah:                                            ; preds = %_ZNK10btSoftBody4Body5xformEv.exit40
  %i.gt = load ptr, ptr %i.e, align 8, !tbaa !293 ; 2 uses
  %.not4.i = icmp eq ptr %i.gt, null
  br i1 %.not4.i, label %_ZNK10btSoftBody4Body7invMassEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 164
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !449
  br label %_ZNK10btSoftBody4Body7invMassEv.exit

_ZNK10btSoftBody4Body7invMassEv.exit:             ; preds = %bb.ag, %bb.ah, %bb.ai
  %.0.i42 = phi float [ %i.gs, %bb.ag ], [ %i.gv, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %i.gw = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.gx = icmp eq i8 %i.gw, 0
  br i1 %i.gx, label %bb.aj, label %bb.al, !prof !196

bb.aj:                                            ; preds = %_ZNK10btSoftBody4Body7invMassEv.exit
  %i.gy = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i47 = icmp eq i32 %i.gy, 0
  br i1 %.not.i47, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.gz = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %_ZNK10btSoftBody4Body7invMassEv.exit
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !592 ; 2 uses
  %.not5.i43 = icmp eq ptr %i.ha, null
  br i1 %.not5.i43, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.an:                                            ; preds = %bb.al
  %i.hc = load ptr, ptr %i.e, align 8, !tbaa !293 ; 2 uses
  %.not6.i45 = icmp eq ptr %i.hc, null
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 216
  %spec.select.i46 = select i1 %.not6.i45, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.hd
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.am, %bb.an
  %.0.i44 = phi ptr [ %i.hb, %bb.am ], [ %spec.select.i46, %bb.an ]
  %i.he = load ptr, ptr %i.c, align 8, !tbaa !592 ; 2 uses
  %.not.i48 = icmp eq ptr %i.he, null
  br i1 %.not.i48, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 360
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !523
  br label %_ZNK10btSoftBody4Body7invMassEv.exit51

bb.ap:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.hh = load ptr, ptr %i.bj, align 8, !tbaa !293 ; 2 uses
  %.not4.i50 = icmp eq ptr %i.hh, null
  br i1 %.not4.i50, label %_ZNK10btSoftBody4Body7invMassEv.exit51, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 164
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !449
  br label %_ZNK10btSoftBody4Body7invMassEv.exit51

_ZNK10btSoftBody4Body7invMassEv.exit51:           ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.i49 = phi float [ %i.hg, %bb.ao ], [ %i.hj, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %i.hk = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.hl = icmp eq i8 %i.hk, 0
  br i1 %i.hl, label %bb.ar, label %bb.at, !prof !196

bb.ar:                                            ; preds = %_ZNK10btSoftBody4Body7invMassEv.exit51
  %i.hm = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i56 = icmp eq i32 %i.hm, 0
  br i1 %.not.i56, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.hn = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZNK10btSoftBody4Body7invMassEv.exit51
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !592 ; 2 uses
  %.not5.i52 = icmp eq ptr %i.ho, null
  br i1 %.not5.i52, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57

bb.av:                                            ; preds = %bb.at
  %i.hq = load ptr, ptr %i.bj, align 8, !tbaa !293 ; 2 uses
  %.not6.i54 = icmp eq ptr %i.hq, null
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 216
  %spec.select.i55 = select i1 %.not6.i54, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.hr
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57:  ; preds = %bb.au, %bb.av
  %.0.i53 = phi ptr [ %i.hp, %bb.au ], [ %spec.select.i55, %bb.av ]
  call fastcc void @_ZL13ImpulseMatrixfRK11btMatrix3x3RK9btVector3fS1_S4_(ptr dead_on_unwind noalias writable align 4 %3, float noundef %.0.i42, ptr noundef nonnull align 4 dereferenceable(48) %.0.i44, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, float noundef %.0.i49, ptr noundef nonnull align 4 dereferenceable(48) %.0.i53, ptr noundef nonnull align 4 dereferenceable(16) %i.cw)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.hs, ptr noundef nonnull align 4 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !198
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hu, ptr noundef nonnull align 4 dereferenceable(16) %i.ht, i64 16, i1 false), !tbaa.struct !198
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hw, ptr noundef nonnull align 4 dereferenceable(16) %i.hv, i64 16, i1 false), !tbaa.struct !198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hy = load float, ptr %i.hx, align 8, !tbaa !308 ; 5 uses
  %i.hz = fcmp ogt float %i.hy, 0.000000e+00
  %.pre = load float, ptr %i.er, align 4, !tbaa !159 ; 3 uses
  br i1 %i.hz, label %bb.aw, label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge: ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load float, ptr %.phi.trans.insert, align 8, !tbaa !159
  %.pre80 = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57
  %i.ia = fmul float %i.hy, %.pre                 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 8, !tbaa !159 ; 2 uses
  %i.id = fmul float %i.hy, %i.ic                 ; 2 uses
  %i.ie = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159 ; 2 uses
  %i.if = fmul float %i.hy, %i.ie                 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 140
  %4 = load <4 x float>, ptr %i.ig, align 4
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !159
  %i.ij = load <2 x float>, ptr %i.hs, align 4, !tbaa !159 ; 2 uses
  %i.ik = load <2 x float>, ptr %i.hu, align 4, !tbaa !159 ; 2 uses
  %i.il = insertelement <2 x float> poison, float %i.id, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.io = fmul <2 x float> %i.im, %i.in
  %i.ip = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ir, <2 x float> %i.io)
  %i.it = insertelement <2 x float> %5, float %i.ii, i64 1
  %i.iu = insertelement <2 x float> poison, float %i.if, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iv, <2 x float> %i.is)
  %i.ix = load float, ptr %i.hw, align 4, !tbaa !159
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !159
  %i.ja = fmul float %i.id, %i.iz
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ia, float %i.ja)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !159
  %i.je = tail call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.if, float %i.jb)
  %.sroa.3.12.vec.insert.i65 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.je, i64 0
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.iw, ptr %i.jf, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> %.sroa.3.12.vec.insert.i65, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !185
  %i.jg = fsub float 1.000000e+00, %i.hy          ; 3 uses
  %i.jh = fmul float %i.jg, %.pre                 ; 2 uses
  store float %i.jh, ptr %i.er, align 4, !tbaa !159
  %i.ji = fmul float %i.jg, %i.ic                 ; 2 uses
  store float %i.ji, ptr %i.ib, align 8, !tbaa !159
  %i.jj = fmul float %i.jg, %i.ie                 ; 2 uses
  store float %i.jj, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge, %bb.aw
  %i.jk = phi float [ %i.jj, %bb.aw ], [ %.pre80, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge ]
  %i.jl = phi float [ %i.ji, %bb.aw ], [ %.pre79, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge ]
  %i.jm = phi float [ %i.jh, %bb.aw ], [ %.pre, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit57._crit_edge ]
  %i.jn = sitofp i32 %2 to float
  %i.jo = fdiv float 1.000000e+00, %i.jn          ; 3 uses
  %i.jp = fmul float %i.jo, %i.jm
  store float %i.jp, ptr %i.er, align 4, !tbaa !159
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jr = fmul float %i.jo, %i.jl
  store float %i.jr, ptr %i.jq, align 8, !tbaa !159
  %i.js = fmul float %i.jo, %i.jk
  store float %i.js, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfRK11btMatrix3x3RK9btVector3fS1_S4_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, float noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !159, !noalias !593 ; 5 uses
  %i.c = fneg float %i.b                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = load float, ptr %i.h, align 4, !tbaa !159, !noalias !598 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !159, !noalias !601 ; 5 uses
  %i.l = fneg float %i.k                          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = load float, ptr %i.r, align 4, !tbaa !159, !noalias !606 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.u = load float, ptr %i.t, align 4, !tbaa !159, !noalias !606 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !159, !alias.scope !609
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !159, !alias.scope !609
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load <2 x float>, ptr %3, align 4, !tbaa !159, !noalias !593 ; 3 uses
  %i.ac = load <4 x float>, ptr %3, align 4       ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ae = load <2 x float>, ptr %2, align 4, !tbaa !159, !noalias !598 ; 2 uses
  %i.af = load <2 x float>, ptr %i.d, align 4, !tbaa !159, !noalias !598 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.e, align 4, !tbaa !159, !noalias !598 ; 3 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.ai = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float -0.000000e+00>, <4 x float> %i.ah, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aj = insertelement <4 x float> %i.ah, float 1.000000e+00, i64 3
  %i.ak = insertelement <4 x float> %i.aj, float %i.c, i64 1 ; 3 uses
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.am = fmul <4 x float> %i.ai, %i.al
  %i.an = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.aq = insertelement <4 x float> poison, float %i.b, i64 0
  %i.ar = insertelement <4 x float> %i.ap, float %i.b, i64 0
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.ar, <4 x float> %i.am)
  %i.at = shufflevector <2 x float> %i.ag, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.au = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.av = insertelement <4 x float> %i.au, float -0.000000e+00, i64 3
  %i.aw = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ax = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aw, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.ak, <4 x i32> <i32 1, i32 5, i32 5, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float 1.000000e+00, i64 3
  %i.ba = fmul <4 x float> %i.ax, %i.az
  %i.bb = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.an, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bc = shufflevector <4 x float> %i.aq, <4 x float> %i.an, <4 x i32> <i32 0, i32 5, i32 5, i32 poison>
  %i.bd = insertelement <4 x float> %i.bc, float -0.000000e+00, i64 3
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.bd, <4 x float> %i.ba) ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ag, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.bg = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.c, i64 1
  %i.bh = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.b, i64 0 ; 2 uses
  %i.bi = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bk = extractelement <2 x float> %i.ag, i64 0
  %i.bl = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.c, i64 1
  %i.bm = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.b, i64 1
  %i.bn = shufflevector <4 x float> %i.ak, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 1, i32 7>
  %i.bo = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %1, i64 2
  %i.bp = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, float %1, i64 2
  %i.bq = load <2 x float>, ptr %6, align 4, !tbaa !159, !noalias !601 ; 4 uses
  %i.br = load float, ptr %i.m, align 4, !tbaa !159, !noalias !601 ; 2 uses
  %i.bs = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.bt = load <2 x float>, ptr %5, align 4, !tbaa !159, !noalias !606 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.n, align 4, !tbaa !159, !noalias !606 ; 3 uses
  %i.bv = load float, ptr %i.q, align 4, !tbaa !159, !noalias !606
  %i.bw = load <2 x float>, ptr %i.o, align 4, !tbaa !159, !noalias !606 ; 3 uses
  %i.bx = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.by = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float -0.000000e+00>, <4 x float> %i.bx, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bz = insertelement <4 x float> %i.bx, float 1.000000e+00, i64 3
  %i.ca = insertelement <4 x float> %i.bz, float %i.l, i64 1 ; 3 uses
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.cc = fmul <4 x float> %i.by, %i.cb
  %i.cd = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.cg = insertelement <4 x float> poison, float %i.k, i64 0
  %i.ch = insertelement <4 x float> %i.cf, float %i.k, i64 0
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ch, <4 x float> %i.cc)
  %i.cj = load <2 x float>, ptr %i.f, align 4, !tbaa !159, !noalias !598 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.g, align 4, !tbaa !159, !noalias !598 ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cm = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cl, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.cn = shufflevector <4 x float> %i.bh, <4 x float> %i.cl, <4 x i32> <i32 0, i32 5, i32 5, i32 3>
  %i.co = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cp = fmul <4 x float> %i.co, %i.bg
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.cn, <4 x float> %i.cq)
  %i.cs = insertelement <2 x float> %i.ad, float %i.br, i64 1 ; 2 uses
  %i.ct = fneg <2 x float> %i.cs                  ; 3 uses
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.cv = shufflevector <2 x float> %i.ab, <2 x float> %i.bq, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.cw = shufflevector <2 x float> %i.af, <2 x float> %i.bu, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.cx = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> %i.cx, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cz = fmul <4 x float> %i.cv, %i.cy
  %i.da = shufflevector <2 x float> %i.ae, <2 x float> %i.bt, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.db = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.cu, <4 x float> %i.cz) ; 3 uses
  %i.de = extractelement <4 x float> %i.dd, i64 0
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float 0.000000e+00, float %i.de) ; 2 uses
  %i.dg = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dd, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.be, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %i.di = shufflevector <4 x float> %i.bh, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 0, i32 7>
  %i.dj = insertelement <4 x float> %i.cu, float 0.000000e+00, i64 3
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %i.au, <4 x i32> <i32 0, i32 4, i32 poison, i32 3> ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.dm = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.df, i64 0
  %i.dn = shufflevector <4 x float> %i.dk, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.do = shufflevector <2 x float> %i.bw, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dp = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.dq = insertelement <4 x float> %i.dp, float -0.000000e+00, i64 3
  %i.dr = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dr, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> %i.ca, <4 x i32> <i32 1, i32 5, i32 5, i32 poison>
  %i.du = insertelement <4 x float> %i.dt, float 1.000000e+00, i64 3
  %i.dv = fmul <4 x float> %i.ds, %i.du
  %i.dw = fmul float %i.bs, %i.bv
  %i.dx = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cd, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.dy = shufflevector <4 x float> %i.cg, <4 x float> %i.cd, <4 x i32> <i32 0, i32 5, i32 5, i32 poison>
  %i.dz = insertelement <4 x float> %i.dy, float -0.000000e+00, i64 3
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dz, <4 x float> %i.dv) ; 2 uses
  %i.eb = shufflevector <2 x float> %i.bw, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.ec = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ed = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.l, i64 1
  %i.ee = fmul float %i.bs, %i.s
  %i.ef = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.k, i64 0 ; 2 uses
  %i.eg = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.eh = fmul <4 x float> %i.eg, %i.ed
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.ej = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.u, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.el = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.l, i64 1
  %i.em = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.k, i64 1
  %i.en = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eo = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.en, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> %i.dp, <4 x i32> <i32 0, i32 4, i32 poison, i32 3> ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.er = shufflevector <4 x float> %i.ca, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 1, i32 7>
  %i.es = shufflevector <4 x float> %i.ep, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.et = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, float %4, i64 2 ; 2 uses
  %i.eu = shufflevector <2 x float> %i.ab, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.ev = fneg <2 x float> %i.eu                  ; 5 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
end_hunk_3
begin_hunk_4_@_ZL13ImpulseMatrixfRK11btMatrix3x3RK9btVector3fS1_S4_:bb.a
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ke = fmul <2 x float> %i.iw, %i.kd
  %i.kf = fmul float %i.jd, %i.kb
  %i.kg = fmul <2 x float> %i.jq, %i.kd
  %i.kh = fmul float %i.jg, %i.kb
  %i.ki = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.kb, i64 0
  %i.kj = shufflevector <4 x float> %i.ki, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kk = fmul <4 x float> %i.jy, %i.kj
  store <2 x float> %i.ke, ptr %0, align 4, !tbaa !159, !alias.scope !609
  store float %i.kf, ptr %i.v, align 4, !tbaa !159, !alias.scope !609
  store <2 x float> %i.kg, ptr %i.x, align 4, !tbaa !159, !alias.scope !609
  store float %i.kh, ptr %i.y, align 4, !tbaa !159, !alias.scope !609
  store <4 x float> %i.kk, ptr %i.aa, align 4, !tbaa !159, !alias.scope !609
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6LJoint5SolveEff(ptr noundef nonnull align 8 dereferenceable(216) %0, float %1, float noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.btSoftBody::Impulse", align 8 ; 9 uses
  %4 = alloca %"struct.btSoftBody::Impulse", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !592  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !293  ; 5 uses
  %.not2.i.i = icmp eq ptr %i.e, null
  br i1 %.not2.i.i, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %.sroa.5.0.copyload.i.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.j = load float, ptr %i.b, align 8, !tbaa !159 ; 2 uses
  %i.k = load float, ptr %i.g, align 4, !tbaa !159 ; 2 uses
  %i.l = load <2 x float>, ptr %i.h, align 4, !tbaa !159 ; 3 uses
  %i.m = load <2 x float>, ptr %i.i, align 4, !tbaa !159 ; 3 uses
  %i.n = fneg <2 x float> %i.m
  %i.o = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.k, i64 1
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.j, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.s, <2 x float> %i.q)
  %i.u = fneg float %i.j
  %i.v = extractelement <2 x float> %i.l, i64 0
  %i.w = fmul float %i.v, %i.u
  %i.x = extractelement <2 x float> %i.m, i64 0
  %i.y = tail call float @llvm.fmuladd.f32(float %i.k, float %i.x, float %i.w)
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %.sroa.5.0.copyload8.i.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !tbaa !185
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %.sroa.0.0.copyload6.i.i = load <2 x float>, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 372
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ad = load float, ptr %i.b, align 8, !tbaa !159 ; 2 uses
  %i.ae = load float, ptr %i.aa, align 8, !tbaa !159 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !159 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.ac, align 4, !tbaa !159 ; 3 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ae, i64 1
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.ad, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = fneg float %i.ad
  %i.ap = extractelement <2 x float> %i.af, i64 0
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ag, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ar, float %i.aq)
  %.sroa.3.12.vec.insert.i.i7.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i17.i = phi <2 x float> [ %.sroa.5.0.copyload.i.i, %bb.c ], [ %.sroa.5.0.copyload8.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.0.0.i15.i = phi <2 x float> [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.0.0.copyload6.i.i, %bb.d ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.0.0.i3.i = phi <2 x float> [ %i.t, %bb.c ], [ %i.an, %bb.d ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.5.0.i4.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i, %bb.c ], [ %.sroa.3.12.vec.insert.i.i7.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.i15.i, %.sroa.0.0.i3.i
  %i.at = shufflevector <2 x float> %.sroa.0.0.i15.i, <2 x float> %.sroa.5.0.i17.i, <2 x i32> <i32 1, i32 2>
  %i.au = shufflevector <2 x float> %.sroa.0.0.i3.i, <2 x float> %.sroa.5.0.i4.i, <2 x i32> <i32 1, i32 2>
  %i.av = fadd <2 x float> %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !592 ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.az, null
  br i1 %.not.i.i1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !293 ; 5 uses
  %.not2.i.i23 = icmp eq ptr %i.ba, null
  br i1 %.not2.i.i23, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30, label %bb.g

bb.f:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.0.0.copyload.i.i2 = load <2 x float>, ptr %i.bb, align 4
  %.sroa.5.0..sroa_idx.i.i3 = getelementptr inbounds nuw i8, ptr %i.az, i64 336
  %.sroa.5.0.copyload.i.i4 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i3, align 4, !tbaa !185
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 344
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 348
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bf = load float, ptr %i.ax, align 8, !tbaa !159 ; 2 uses
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !159 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bd, align 4, !tbaa !159 ; 3 uses
  %i.bi = load <2 x float>, ptr %i.be, align 4, !tbaa !159 ; 3 uses
  %i.bj = fneg <2 x float> %i.bi
  %i.bk = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bl = insertelement <2 x float> %i.bk, float %i.bg, i64 1
  %i.bm = fmul <2 x float> %i.bl, %i.bj
  %i.bn = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bo = insertelement <2 x float> %i.bn, float %i.bf, i64 1
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = fneg float %i.bf
  %i.br = extractelement <2 x float> %i.bh, i64 0
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = extractelement <2 x float> %i.bi, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bt, float %i.bs)
  %.sroa.3.12.vec.insert.i.i.i.i7 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bu, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30

bb.g:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx7.i.i24 = getelementptr inbounds nuw i8, ptr %i.ba, i64 360
  %.sroa.5.0.copyload8.i.i25 = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i.i24, align 8, !tbaa !185
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 352
  %.sroa.0.0.copyload6.i.i26 = load <2 x float>, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 368
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 372
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bz = load float, ptr %i.ax, align 8, !tbaa !159 ; 2 uses
  %i.ca = load float, ptr %i.bw, align 8, !tbaa !159 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bx, align 4, !tbaa !159 ; 3 uses
  %i.cc = load <2 x float>, ptr %i.by, align 4, !tbaa !159 ; 3 uses
  %i.cd = fneg <2 x float> %i.cc
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %i.ca, i64 1
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x float> %i.ch, float %i.bz, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ci, <2 x float> %i.cg)
  %i.ck = fneg float %i.bz
  %i.cl = extractelement <2 x float> %i.cb, i64 0
  %i.cm = fmul float %i.cl, %i.ck
  %i.cn = extractelement <2 x float> %i.cc, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cn, float %i.cm)
  %.sroa.3.12.vec.insert.i.i7.i.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i17.i8 = phi <2 x float> [ %.sroa.5.0.copyload.i.i4, %bb.f ], [ %.sroa.5.0.copyload8.i.i25, %bb.g ], [ zeroinitializer, %bb.e ]
  %.sroa.0.0.i15.i9 = phi <2 x float> [ %.sroa.0.0.copyload.i.i2, %bb.f ], [ %.sroa.0.0.copyload6.i.i26, %bb.g ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.0.0.i3.i10 = phi <2 x float> [ %i.bp, %bb.f ], [ %i.cj, %bb.g ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.5.0.i4.i11 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i7, %bb.f ], [ %.sroa.3.12.vec.insert.i.i7.i.i29, %bb.g ], [ zeroinitializer, %bb.e ]
  %foldExtExtBinop73 = fadd <2 x float> %.sroa.0.0.i15.i9, %.sroa.0.0.i3.i10
  %foldExtExtBinop75 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop73
  %i.cp = extractelement <2 x float> %foldExtExtBinop75, i64 0
  %i.cq = shufflevector <2 x float> %.sroa.0.0.i15.i9, <2 x float> %.sroa.5.0.i17.i8, <2 x i32> <i32 1, i32 2>
  %i.cr = shufflevector <2 x float> %.sroa.0.0.i3.i10, <2 x float> %.sroa.5.0.i4.i11, <2 x i32> <i32 1, i32 2>
  %i.cs = fadd <2 x float> %i.cq, %i.cr
  %i.ct = fsub <2 x float> %i.av, %i.cs           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  %i.cw = load i8, ptr %i.cu, align 8
  %i.cx = and i8 %i.cw, -4
  %i.cy = or disjoint i8 %i.cx, 1
  store i8 %i.cy, ptr %i.cu, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dc = load float, ptr %i.db, align 8, !tbaa !159 ; 3 uses
  %i.dd = fmul float %i.cp, %i.dc
  %i.de = extractelement <2 x float> %i.ct, i64 0
  %i.df = fmul float %i.de, %i.dc
  %i.dg = extractelement <2 x float> %i.ct, i64 1
  %i.dh = fmul float %i.dg, %i.dc
  %i.di = load float, ptr %i.da, align 4, !tbaa !159
  %i.dj = fadd float %i.di, %i.dd                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !159
  %i.dm = fadd float %i.df, %i.dl                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.do = load float, ptr %i.dn, align 4, !tbaa !159
  %i.dp = fadd float %i.dh, %i.do                 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 140
  %5 = load <4 x float>, ptr %i.dq, align 4
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !159
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.dv = load float, ptr %i.du, align 4, !tbaa !159
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !159
  %i.dy = fmul float %i.dm, %i.dx
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dj, float %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !159
  %i.ec = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.dp, float %i.dz)
  %i.ed = load <2 x float>, ptr %i.cz, align 4, !tbaa !159 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.dr, align 4, !tbaa !159 ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 1, i32 3>
  %i.ei = fmul <2 x float> %i.eg, %i.eh
  %i.ej = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ek = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.el, <2 x float> %i.ei)
  %i.en = insertelement <2 x float> %6, float %i.dt, i64 1
  %i.eo = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ep, <2 x float> %i.em)
  %i.er = insertelement <2 x float> poison, float %2, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %i.es, %i.eq
  %i.eu = fmul float %2, %i.ec
  %.sroa.3.12.vec.insert.i48 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  store <2 x float> %i.et, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i48, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !612
  %i.ev = load <2 x float>, ptr %4, align 8, !tbaa !159, !alias.scope !613
  %i.ew = fneg <2 x float> %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !159, !alias.scope !613
  %i.ez = fneg float %i.ey
  %.sroa.3.12.vec.insert.i.i53 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ez, i64 0
  store <2 x float> %i.ew, ptr %4, align 8, !alias.scope !613
  store <2 x float> %.sroa.3.12.vec.insert.i.i53, ptr %i.ex, align 8, !tbaa !185, !alias.scope !613
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.fb = load <2 x float>, ptr %i.fa, align 8, !tbaa !159, !alias.scope !613
  %i.fc = fneg <2 x float> %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !159, !alias.scope !613
  %i.ff = fneg float %i.fe
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ff, i64 0
  store <2 x float> %i.fc, ptr %i.fa, align 8, !alias.scope !613
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %i.fd, align 8, !tbaa !185, !alias.scope !613
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 8             ; 2 uses
  %i.fi = and i8 %i.fh, 1
  %.not.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i = load i8, ptr %i.fg, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30
  %i.fj = phi i8 [ %.pre.i, %bb.h ], [ %i.fh, %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30 ]
  %.mask.i = and i8 %i.fj, 2
  %.not7.i = icmp eq i8 %.mask.i, 0
  br i1 %.not7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.fa, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i55 = load i8, ptr %i.cu, align 8
  %.mask.i56 = and i8 %.pre.i55, 2
  %.not7.i57 = icmp eq i8 %.mask.i56, 0
  br i1 %.not7.i57, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit58, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.fk, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit58

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit58: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6LJoint9TerminateEf(ptr noundef nonnull align 8 dereferenceable(216) %0, float %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load float, ptr %i.a, align 8, !tbaa !308
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !159
  %i.g = fneg <2 x float> %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !159
  %i.j = fneg float %i.i
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.j, i64 0
  store <2 x float> %i.g, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !293    ; 14 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.e = load float, ptr %i.d, align 4, !tbaa !159 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !159 ; 3 uses
  %i.h = fmul float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !159 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !159 ; 2 uses
  %i.n = load float, ptr %2, align 4, !tbaa !159  ; 2 uses
  %i.o = fneg float %i.g
  %i.p = fmul float %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.r = load float, ptr %i.q, align 4, !tbaa !159
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.u = load float, ptr %i.t, align 4, !tbaa !159
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.w = load float, ptr %i.v, align 4, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 252
  %i.y = load float, ptr %i.x, align 4, !tbaa !159
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.aa = load float, ptr %i.z, align 4, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 2 uses
  %i.ac = load <2 x float>, ptr %1, align 4, !tbaa !159 ; 3 uses
  %i.ad = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ae, %i.ac
  %i.ag = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.ah = fneg float %i.ag
  %i.ai = fmul float %i.m, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.k, float %i.g, float %i.ai) ; 2 uses
  %i.ak = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ak, float %i.p) ; 2 uses
  %i.am = fneg float %i.ak
  %i.an = fmul float %i.k, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ag, float %i.an) ; 2 uses
  %i.ap = fmul float %i.al, %i.y
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.w, float %i.aj, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ao, float %i.aq)
  %i.as = load <2 x float>, ptr %i.ab, align 4, !tbaa !159
  %i.at = fadd <2 x float> %i.af, %i.as
  store <2 x float> %i.at, ptr %i.ab, align 4, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 320 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !159
  %i.aw = fadd float %i.h, %i.av
  store float %i.aw, ptr %i.au, align 4, !tbaa !159
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.i, align 4, !tbaa !159 ; 2 uses
  %i.az = load <2 x float>, ptr %i.s, align 4, !tbaa !159 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bb = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.ba, %i.bc
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bf = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bg, <2 x float> %i.bd)
  %i.bi = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.u, i64 1
  %i.bk = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bl, <2 x float> %i.bh)
  %i.bn = load <2 x float>, ptr %i.ax, align 4, !tbaa !159
  %i.bo = fadd <2 x float> %i.bm, %i.bn
  store <2 x float> %i.bo, ptr %i.ax, align 4, !tbaa !159
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !159
  %i.br = fadd float %i.ar, %i.bq
  store float %i.br, ptr %i.bp, align 4, !tbaa !159
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 348 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !365
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !365
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6AJoint7PrepareEfi(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !592  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK10btSoftBody4Body8activateEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.f, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit.i

_ZNK10btSoftBody4Body8activateEv.exit.i:          ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !592  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN10btSoftBody5Joint7PrepareEfi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.h, i1 noundef zeroext false)
  br label %_ZN10btSoftBody5Joint7PrepareEfi.exit

_ZN10btSoftBody5Joint7PrepareEfi.exit:            ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.g, !prof !196

bb.d:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 16, i1 false), !tbaa.struct !198
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !198
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !198
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !198
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !291  ; 2 uses
  %.not5.i = icmp eq ptr %i.s, null
  br i1 %.not5.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  br label %_ZNK10btSoftBody4Body5xformEv.exit

common.resume:                                    ; preds = %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.bt, %bb.p ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !293  ; 2 uses
  %.not6.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.w
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.h, %bb.j
  %.0.i = phi ptr [ %i.t, %bb.h ], [ %spec.select.i, %bb.j ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load float, ptr %i.x, align 8, !tbaa !159 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aa = load float, ptr %i.z, align 4, !tbaa !159 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !159 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159
  %i.ai = load <2 x float>, ptr %.0.i, align 4, !tbaa !159 ; 2 uses
  %i.aj = load <2 x float>, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.ap = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.an)
  %i.as = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ah, i64 1
  %i.au = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.av, <2 x float> %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !159
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.ba = load float, ptr %i.az, align 4, !tbaa !159
  %i.bb = fmul float %i.aa, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.y, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.be = load float, ptr %i.bd, align 4, !tbaa !159
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.ae, float %i.bc)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <2 x float> %i.aw, ptr %i.bg, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !185
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %bb.n, !prof !196

bb.k:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i16 = icmp eq i32 %i.bk, 0
  br i1 %.not.i16, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.m unwind label %bb.p       ; 4 uses

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.bl, i64 16, i1 false), !tbaa.struct !198
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !198
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !198
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !198
  %i.bp = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !291 ; 2 uses
  %.not5.i12 = icmp eq ptr %i.br, null
  br i1 %.not5.i12, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

bb.p:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.bh, align 8, !tbaa !293 ; 2 uses
  %.not6.i14 = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %spec.select.i15 = select i1 %.not6.i14, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.bv
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

_ZNK10btSoftBody4Body5xformEv.exit17:             ; preds = %bb.o, %bb.q
  %.0.i13 = phi ptr [ %i.bs, %bb.o ], [ %spec.select.i15, %bb.q ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load <4 x float>, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %4 = load <4 x float>, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !159
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = load <4 x float>, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i13, i64 24
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !159
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i13, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i13, i64 40
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !159 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cj = load float, ptr %i.bg, align 8, !tbaa !159 ; 3 uses
  %i.ck = load <2 x float>, ptr %.0.i13, align 4, !tbaa !159 ; 2 uses
  %i.cl = load <2 x float>, ptr %i.cb, align 4, !tbaa !159 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.ce, align 4, !tbaa !159 ; 4 uses
  %i.cn = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = shufflevector <2 x float> %i.cm, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cr = fmul <2 x float> %i.cq, %i.cn
  %i.cs = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.ct = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cp)
  %i.cv = shufflevector <2 x float> %i.cm, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.ct, <2 x float> %i.cr)
  %i.cx = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cg, i64 1
  %i.cz = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cz, <2 x float> %i.cu) ; 6 uses
  %i.db = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.bz, i64 1
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.cz, <2 x float> %i.cw) ; 3 uses
  %i.de = shufflevector <2 x float> %i.da, <2 x float> %i.dd, <2 x i32> <i32 3, i32 0>
  %i.df = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.da, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.de, ptr %i.ch, align 8
  store <2 x float> %i.df, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !185
  %i.dg = load <2 x float>, ptr %i.ci, align 4, !tbaa !159 ; 5 uses
  %i.dh = fneg <2 x float> %i.dg
  %i.di = fmul <2 x float> %i.dd, %i.dh
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x float> %i.dj, float %i.cj, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dk, <2 x float> %i.di) ; 4 uses
  %i.dm = fneg float %i.cj
  %i.dn = extractelement <2 x float> %i.da, i64 0
  %i.do = fmul float %i.dn, %i.dm
  %i.dp = extractelement <2 x float> %i.dd, i64 1 ; 2 uses
  %i.dq = extractelement <2 x float> %i.dg, i64 0
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dq, float %i.do) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.dl, %i.dl
  %i.ds = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dt = extractelement <2 x float> %i.dl, i64 0 ; 2 uses
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.ds)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.du)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dv) ; 2 uses
  %i.dw = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.dw, label %bb.r, label %_ZL12NormalizeAnyRK9btVector3.exit

bb.r:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17
  %i.dx = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dl, %i.dz
  %i.eb = fmul float %i.dr, %i.dx
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eb, i64 0
  br label %_ZL12NormalizeAnyRK9btVector3.exit

_ZL12NormalizeAnyRK9btVector3.exit:               ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17, %bb.r
  %.sroa.0.0.i = phi <2 x float> [ %i.ea, %bb.r ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i, %bb.r ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !185
  %foldExtExtBinop77 = fmul <2 x float> %i.da, %i.dg
  %i.ed = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.dp, float %i.ed)
  %i.ef = extractelement <2 x float> %i.da, i64 1
  %i.eg = extractelement <2 x float> %i.dg, i64 1
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.ef, float %i.ee) ; 3 uses
  %i.ei = fcmp olt float %i.eh, -1.000000e+00
  %i.ej = fcmp ogt float %i.eh, 1.000000e+00
  %..i = select i1 %i.ej, float 1.000000e+00, float %i.eh
  %i.ek = select i1 %i.ei, float -1.000000e+00, float %..i
  %i.el = tail call noundef float @acosf(float noundef %i.ek) #34, !tbaa !4 ; 2 uses
  %i.em = fcmp ogt float %i.el, f0x3E490FDB
  %.sroa.speculated61 = select i1 %i.em, float f0x3E490FDB, float %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.eo = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.ep = fmul float %.sroa.speculated61, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.er = load float, ptr %i.eq, align 4, !tbaa !616
  %i.es = fdiv float %i.er, %1                    ; 2 uses
  %i.et = insertelement <2 x float> poison, float %.sroa.speculated61, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.eu, %.sroa.0.0.i
  %i.ew = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.ev, %i.ex
  store <2 x float> %i.ey, ptr %i.ec, align 4, !tbaa !159
  %i.ez = fmul float %i.ep, %i.es
  store float %i.ez, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  %i.fa = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.s, label %bb.u, !prof !196

bb.s:                                             ; preds = %_ZL12NormalizeAnyRK9btVector3.exit
  %i.fc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i29 = icmp eq i32 %i.fc, 0
  br i1 %.not.i29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fd = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZL12NormalizeAnyRK9btVector3.exit
  %i.fe = load ptr, ptr %i.e, align 8, !tbaa !592 ; 2 uses
  %.not5.i25 = icmp eq ptr %i.fe, null
  br i1 %.not5.i25, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.w:                                             ; preds = %bb.u
  %i.fg = load ptr, ptr %i.i, align 8, !tbaa !293 ; 2 uses
  %.not6.i27 = icmp eq ptr %i.fg, null
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 216
  %spec.select.i28 = select i1 %.not6.i27, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fh
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.v, %bb.w
  %.0.i26 = phi ptr [ %i.ff, %bb.v ], [ %spec.select.i28, %bb.w ] ; 6 uses
  %i.fi = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.x, label %bb.z, !prof !196

bb.x:                                             ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i34 = icmp eq i32 %i.fk, 0
  br i1 %.not.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fl = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fm = load ptr, ptr %i.g, align 8, !tbaa !592 ; 2 uses
  %.not5.i30 = icmp eq ptr %i.fm, null
  br i1 %.not5.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

bb.ab:                                            ; preds = %bb.z
  %i.fo = load ptr, ptr %i.bh, align 8, !tbaa !293 ; 2 uses
  %.not6.i32 = icmp eq ptr %i.fo, null
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 216
  %spec.select.i33 = select i1 %.not6.i32, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fp
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35:  ; preds = %bb.aa, %bb.ab
  %.0.i31 = phi ptr [ %i.fn, %bb.aa ], [ %spec.select.i33, %bb.ab ] ; 6 uses
  %i.fq = load float, ptr %.0.i26, align 4, !tbaa !159, !noalias !617
  %i.fr = load float, ptr %.0.i31, align 4, !tbaa !159, !noalias !617
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i26, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i31, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.fw = load float, ptr %i.fu, align 4, !tbaa !159, !noalias !617
  %i.fx = load float, ptr %i.fv, align 4, !tbaa !159, !noalias !617
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i26, i64 20
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i31, i64 20
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32
  %i.gc = load float, ptr %i.ga, align 4, !tbaa !159, !noalias !617
  %i.gd = load float, ptr %i.gb, align 4, !tbaa !159, !noalias !617
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i26, i64 36
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i31, i64 36
  %i.gg = load <2 x float>, ptr %i.fs, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gh = load <2 x float>, ptr %i.ft, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gi = fadd <2 x float> %i.gg, %i.gh           ; 5 uses
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gk = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gl = insertelement <2 x float> %i.gk, float %i.fq, i64 1
  %i.gm = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gn = insertelement <2 x float> %i.gm, float %i.fr, i64 1
  %i.go = fadd <2 x float> %i.gl, %i.gn           ; 4 uses
  %i.gp = load <2 x float>, ptr %i.fy, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gq = load <2 x float>, ptr %i.fz, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x float> %i.gr, float %i.fw, i64 1
  %i.gt = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x float> %i.gt, float %i.fx, i64 1
  %i.gv = fadd <2 x float> %i.gs, %i.gu           ; 4 uses
  %i.gw = fadd <2 x float> %i.gp, %i.gq           ; 4 uses
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gy = load <2 x float>, ptr %i.ge, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.gz = load <2 x float>, ptr %i.gf, align 4, !tbaa !159, !noalias !617 ; 2 uses
  %i.ha = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hb = insertelement <2 x float> %i.ha, float %i.gc, i64 1
  %i.hc = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hd = insertelement <2 x float> %i.hc, float %i.gd, i64 1
  %i.he = fadd <2 x float> %i.hb, %i.hd           ; 4 uses
  %i.hf = fadd <2 x float> %i.gy, %i.gz           ; 3 uses
  %i.hg = fneg <2 x float> %i.hf                  ; 2 uses
  %i.hh = fneg <2 x float> %i.he
  %i.hi = fmul <2 x float> %i.gv, %i.hg
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.he, <2 x float> %i.hi) ; 3 uses
  %i.hk = extractelement <2 x float> %i.gi, i64 1
  %i.hl = fmul <2 x float> %i.gi, %i.hh
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.hf, <2 x float> %i.hl)
  %i.hn = fneg <2 x float> %i.gw
  %i.ho = fmul <2 x float> %i.go, %i.hn
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gv, <2 x float> %i.ho)
  %i.hq = shufflevector <2 x float> %i.he, <2 x float> %i.gv, <2 x i32> <i32 1, i32 3>
  %i.hr = fneg <2 x float> %i.hq
  %i.hs = shufflevector <2 x float> %i.gw, <2 x float> %i.gi, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.ht = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hv = shufflevector <2 x float> %i.hj, <2 x float> %i.hg, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %i.hw = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hx = shufflevector <4 x float> %i.hv, <4 x float> %i.hw, <4 x i32> <i32 4, i32 1, i32 2, i32 5>
  %i.hy = fmul <4 x float> %i.hu, %i.hx
  %i.hz = shufflevector <2 x float> %i.gv, <2 x float> %i.go, <4 x i32> <i32 1, i32 3, i32 poison, i32 3>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> %i.gj, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
end_hunk_4
begin_hunk_5_@_ZN10btSoftBody6AJoint7PrepareEfi:bb.a
  %i.in = fmul <2 x float> %i.hm, %i.il           ; 3 uses
  %i.io = fmul <2 x float> %i.hp, %i.il           ; 3 uses
  %i.ip = fmul float %i.ig, %i.ij                 ; 2 uses
  %i.iq = extractelement <4 x float> %i.if, i64 2
  %i.ir = fmul float %i.iq, %i.ij                 ; 2 uses
  %i.is = extractelement <4 x float> %i.if, i64 3
  %i.it = fmul float %i.is, %i.ij                 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.iv = extractelement <2 x float> %i.im, i64 0
  store float %i.iv, ptr %i.iu, align 4
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.iw = extractelement <2 x float> %i.in, i64 0
  store float %i.iw, ptr %.sroa.4.0..sroa_idx50, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ix = extractelement <2 x float> %i.io, i64 0
  store float %i.ix, ptr %.sroa.551.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.iy = shufflevector <2 x float> %i.im, <2 x float> %i.in, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.iz = insertelement <4 x float> %i.iy, float 0.000000e+00, i64 0
  %i.ja = shufflevector <2 x float> %i.io, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.jb = shufflevector <4 x float> %i.iz, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.jb, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 8, !tbaa !185
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.ip, ptr %i.jc, align 4
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %i.ir, ptr %.sroa.14.32..sroa_idx, align 8
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.it, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 8, !tbaa !185
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.je = load float, ptr %i.jd, align 8, !tbaa !308 ; 5 uses
  %i.jf = fcmp ogt float %i.je, 0.000000e+00
  %.pre = load float, ptr %i.ec, align 4, !tbaa !159 ; 3 uses
  %.pre64 = load float, ptr %i.en, align 8, !tbaa !159 ; 3 uses
  %.pre65 = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159 ; 3 uses
  br i1 %i.jf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35
  %i.jg = fmul float %i.je, %.pre                 ; 2 uses
  %i.jh = fmul float %i.je, %.pre64               ; 2 uses
  %i.ji = fmul float %i.je, %.pre65               ; 2 uses
  %i.jj = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.jk, %i.in
  %i.jm = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.jn, <2 x float> %i.jl)
  %i.jp = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jq = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> %i.jq, <2 x float> %i.jo)
  %i.js = fmul float %i.jh, %i.ir
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.jg, float %i.js)
  %i.ju = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.ji, float %i.jt)
  %.sroa.3.12.vec.insert.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ju, i64 0
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.jr, ptr %i.jv, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> %.sroa.3.12.vec.insert.i43, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !185
  %i.jw = fsub float 1.000000e+00, %i.je          ; 3 uses
  %i.jx = fmul float %i.jw, %.pre                 ; 2 uses
  store float %i.jx, ptr %i.ec, align 4, !tbaa !159
  %i.jy = fmul float %i.jw, %.pre64               ; 2 uses
  store float %i.jy, ptr %i.en, align 8, !tbaa !159
  %i.jz = fmul float %i.jw, %.pre65               ; 2 uses
  store float %i.jz, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35
  %i.ka = phi float [ %i.jz, %bb.ac ], [ %.pre65, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35 ]
  %i.kb = phi float [ %i.jy, %bb.ac ], [ %.pre64, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35 ]
  %i.kc = phi float [ %i.jx, %bb.ac ], [ %.pre, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35 ]
  %i.kd = sitofp i32 %2 to float
  %i.ke = fdiv float 1.000000e+00, %i.kd          ; 3 uses
  %i.kf = fmul float %i.ke, %i.kc
  store float %i.kf, ptr %i.ec, align 4, !tbaa !159
  %i.kg = fmul float %i.ke, %i.kb
  store float %i.kg, ptr %i.en, align 8, !tbaa !159
  %i.kh = fmul float %i.ke, %i.ka
  store float %i.kh, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6AJoint5SolveEff(ptr noundef nonnull align 8 dereferenceable(224) %0, float %1, float noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.btSoftBody::Impulse", align 8 ; 9 uses
  %4 = alloca %"struct.btSoftBody::Impulse", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !592  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.d, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !185
  br label %_ZNK10btSoftBody4Body15angularVelocityEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !293  ; 3 uses
  %.not2.i = icmp eq ptr %i.e, null
  br i1 %.not2.i, label %_ZNK10btSoftBody4Body15angularVelocityEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %.sroa.0.0.copyload6.i = load <2 x float>, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %.sroa.5.0.copyload8.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i, align 8, !tbaa !185
  br label %_ZNK10btSoftBody4Body15angularVelocityEv.exit

_ZNK10btSoftBody4Body15angularVelocityEv.exit:    ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload6.i, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.0.copyload.i, %bb.b ], [ %.sroa.5.0.copyload8.i, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !592  ; 3 uses
  %.not.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK10btSoftBody4Body15angularVelocityEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  %.sroa.0.0.copyload.i3 = load <2 x float>, ptr %i.j, align 4
  %.sroa.5.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %.sroa.5.0.copyload.i5 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i4, align 4, !tbaa !185
  br label %_ZNK10btSoftBody4Body15angularVelocityEv.exit14

bb.f:                                             ; preds = %_ZNK10btSoftBody4Body15angularVelocityEv.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !293  ; 3 uses
  %.not2.i10 = icmp eq ptr %i.k, null
  br i1 %.not2.i10, label %_ZNK10btSoftBody4Body15angularVelocityEv.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %.sroa.0.0.copyload6.i11 = load <2 x float>, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx7.i12 = getelementptr inbounds nuw i8, ptr %i.k, i64 376
  %.sroa.5.0.copyload8.i13 = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i12, align 8, !tbaa !185
  br label %_ZNK10btSoftBody4Body15angularVelocityEv.exit14

_ZNK10btSoftBody4Body15angularVelocityEv.exit14:  ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i6 = phi <2 x float> [ %.sroa.0.0.copyload.i3, %bb.e ], [ %.sroa.0.0.copyload6.i11, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %.sroa.5.0.i7 = phi <2 x float> [ %.sroa.5.0.copyload.i5, %bb.e ], [ %.sroa.5.0.copyload8.i13, %bb.g ], [ zeroinitializer, %bb.f ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.0.0.i, %.sroa.0.0.i6
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop77 = fsub <2 x float> %.sroa.0.0.i, %.sroa.0.0.i6
  %i.n = extractelement <2 x float> %foldExtExtBinop77, i64 1 ; 2 uses
  %foldExtExtBinop79 = fsub <2 x float> %.sroa.5.0.i, %.sroa.5.0.i7
  %i.o = extractelement <2 x float> %foldExtExtBinop79, i64 0 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !159
  %i.t = fmul float %i.n, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.m, float %i.q, float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !159
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.w, float %i.u)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !326  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef float %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %0, float noundef %i.x) ; 3 uses
  %i.ae = load float, ptr %i.p, align 8, !tbaa !159
  %i.af = fmul float %i.ad, %i.ae
  %i.ag = load float, ptr %i.r, align 4, !tbaa !159
  %i.ah = fmul float %i.ad, %i.ag
  %i.ai = load float, ptr %i.v, align 8, !tbaa !159
  %i.aj = fmul float %i.ad, %i.ai
  %i.ak = fsub float %i.m, %i.af
  %i.al = fsub float %i.n, %i.ah
  %i.am = fsub float %i.o, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = load i8, ptr %i.an, align 8
  %i.aq = and i8 %i.ap, -4
  %i.ar = or disjoint i8 %i.aq, 1
  store i8 %i.ar, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load float, ptr %i.au, align 8, !tbaa !159 ; 3 uses
  %i.aw = fmul float %i.ak, %i.av
  %i.ax = fmul float %i.al, %i.av
  %i.ay = fmul float %i.am, %i.av
  %i.az = load float, ptr %i.at, align 4, !tbaa !159
  %i.ba = fadd float %i.az, %i.aw                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !159
  %i.bd = fadd float %i.ax, %i.bc                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bf = load float, ptr %i.be, align 4, !tbaa !159
  %i.bg = fadd float %i.ay, %i.bf                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 140
  %5 = load <4 x float>, ptr %i.bh, align 4
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !159
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !159
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !159
  %i.bp = fmul float %i.bd, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.ba, float %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bs = load float, ptr %i.br, align 4, !tbaa !159
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bs, float %i.bg, float %i.bq)
  %i.bu = load <2 x float>, ptr %i.as, align 4, !tbaa !159 ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bi, align 4, !tbaa !159 ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 1, i32 3>
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.cb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cc, <2 x float> %i.bz)
  %i.ce = insertelement <2 x float> %6, float %i.bk, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cd)
  %i.ci = insertelement <2 x float> poison, float %2, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.cj, %i.ch
  %i.cl = fmul float %2, %i.bt
  %.sroa.3.12.vec.insert.i44 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  store <2 x float> %i.ck, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i44, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !612
  %i.cm = load <2 x float>, ptr %4, align 8, !tbaa !159, !alias.scope !622
  %i.cn = fneg <2 x float> %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 8, !tbaa !159, !alias.scope !622
  %i.cq = fneg float %i.cp
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cq, i64 0
  store <2 x float> %i.cn, ptr %4, align 8, !alias.scope !622
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.co, align 8, !tbaa !185, !alias.scope !622
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cs = load <2 x float>, ptr %i.cr, align 8, !tbaa !159, !alias.scope !622
  %i.ct = fneg <2 x float> %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !159, !alias.scope !622
  %i.cw = fneg float %i.cv
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cw, i64 0
  store <2 x float> %i.ct, ptr %i.cr, align 8, !alias.scope !622
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %i.cu, align 8, !tbaa !185, !alias.scope !622
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8             ; 2 uses
  %i.cz = and i8 %i.cy, 1
  %.not.i47 = icmp eq i8 %i.cz, 0
  br i1 %.not.i47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK10btSoftBody4Body15angularVelocityEv.exit14
  call void @_ZNK10btSoftBody4Body14applyVAImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %4)
  %.pre.i = load i8, ptr %i.cx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK10btSoftBody4Body15angularVelocityEv.exit14
  %i.da = phi i8 [ %.pre.i, %bb.h ], [ %i.cy, %_ZNK10btSoftBody4Body15angularVelocityEv.exit14 ]
  %.mask.i = and i8 %i.da, 2
  %.not5.i = icmp eq i8 %.mask.i, 0
  br i1 %.not5.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNK10btSoftBody4Body14applyDAImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.cr)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZNK10btSoftBody4Body14applyVAImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(33) %3)
  %.pre.i49 = load i8, ptr %i.an, align 8
  %.mask.i50 = and i8 %.pre.i49, 2
  %.not5.i51 = icmp eq i8 %.mask.i50, 0
  br i1 %.not5.i51, label %_ZNK10btSoftBody4Body13applyAImpulseERKNS_7ImpulseE.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZNK10btSoftBody4Body14applyDAImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.db)
  br label %_ZNK10btSoftBody4Body13applyAImpulseERKNS_7ImpulseE.exit52

_ZNK10btSoftBody4Body13applyAImpulseERKNS_7ImpulseE.exit52: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6AJoint9TerminateEf(ptr noundef nonnull align 8 dereferenceable(224) %0, float %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load float, ptr %i.a, align 8, !tbaa !308
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !159
  %i.g = fneg <2 x float> %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !159
  %i.j = fneg float %i.i
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.j, i64 0
  store <2 x float> %i.g, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.k, align 8
  call void @_ZNK10btSoftBody4Body14applyDAImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNK10btSoftBody4Body14applyDAImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK10btSoftBody4Body14applyDAImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592  ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.d = load float, ptr %1, align 4, !tbaa !159  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !159 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.h = load float, ptr %i.g, align 4, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !159 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.m = load float, ptr %i.l, align 4, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.o = load float, ptr %i.n, align 4, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.q = load float, ptr %i.p, align 4, !tbaa !159
  %i.r = fmul float %i.f, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.d, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.u = load float, ptr %i.t, align 4, !tbaa !159
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.j, float %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.y = load float, ptr %i.x, align 4, !tbaa !159
  %i.z = fmul float %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.c, align 4, !tbaa !159 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.k, align 4, !tbaa !159 ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.ag = fmul <2 x float> %i.ae, %i.af
  %i.ah = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.ai = insertelement <2 x float> poison, float %i.d, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.aj, <2 x float> %i.ag)
  %i.al = insertelement <2 x float> poison, float %i.h, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.m, i64 1
  %i.an = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ao, <2 x float> %i.ak)
  %i.aq = load <2 x float>, ptr %i.w, align 4, !tbaa !159
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  %i.as = load <2 x float>, ptr %i.aa, align 4, !tbaa !159
  %i.at = fadd <2 x float> %i.ar, %i.as
  store <2 x float> %i.at, ptr %i.aa, align 4, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !159
  %i.aw = fadd float %i.z, %i.av
  store float %i.aw, ptr %i.au, align 4, !tbaa !159
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ax = load ptr, ptr %0, align 8, !tbaa !293   ; 11 uses
  %.not4 = icmp eq ptr %i.ax, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %i.az = load float, ptr %1, align 4, !tbaa !159 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !159 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !159
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !159 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 232
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 240
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !159
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !159
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 252
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !159
  %i.bn = fmul float %i.bb, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.az, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 256
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !159
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bf, float %i.bo)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 328 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.ay, align 4, !tbaa !159 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bg, align 4, !tbaa !159 ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.by = fmul <2 x float> %i.bw, %i.bx
  %i.bz = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.ca = insertelement <2 x float> poison, float %i.az, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cb, <2 x float> %i.by)
  %i.cd = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.bi, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cc)
  %i.ci = load <2 x float>, ptr %i.bs, align 4, !tbaa !159
  %i.cj = fadd <2 x float> %i.ch, %i.ci
  store <2 x float> %i.cj, ptr %i.bs, align 4, !tbaa !159
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 336 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !159
  %i.cm = fadd float %i.br, %i.cl
  store float %i.cm, ptr %i.ck, align 4, !tbaa !159
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ax, i64 348 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !365
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !365
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6CJoint7PrepareEfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(244) initializes((112, 116), (180, 181)) %0, float noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK10btSoftBody4Body8activateEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit.i

_ZNK10btSoftBody4Body8activateEv.exit.i:          ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !592  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.d, null
  br i1 %.not.i1.i, label %_ZN10btSoftBody5Joint7PrepareEfi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i1 noundef zeroext false)
  br label %_ZN10btSoftBody5Joint7PrepareEfi.exit

_ZN10btSoftBody5Joint7PrepareEfi.exit:            ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !625  ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = add nsw i32 %i.f, 1
  store i32 %i.h, ptr %i.e, align 8, !tbaa !625
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.j = load i32, ptr %i.i, align 4, !tbaa !627
  %i.k = icmp sge i32 %i.f, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 4, !tbaa !562
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.p = load float, ptr %i.n, align 4, !tbaa !159
  %i.q = load float, ptr %i.o, align 4, !tbaa !159 ; 3 uses
  %i.r = fmul float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !159
  %i.u = fmul float %i.q, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !159
  %i.x = fmul float %i.q, %i.w
  %i.y = fdiv float 1.000000e+00, %1              ; 3 uses
  %i.z = fmul float %i.y, %i.r                    ; 3 uses
  %i.aa = fmul float %i.y, %i.u                   ; 3 uses
  %i.ab = fmul float %i.y, %i.x                   ; 4 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.v, align 4, !tbaa !185
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !308 ; 5 uses
  %i.ae = fcmp ogt float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ag = fmul float %i.ad, %i.z                  ; 2 uses
  %i.ah = fmul float %i.ad, %i.aa                 ; 2 uses
  %i.ai = fmul float %i.ad, %i.ab                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 140
  %3 = load <4 x float>, ptr %i.aj, align 4
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.am = load float, ptr %i.al, align 4, !tbaa !159
  %i.an = load <2 x float>, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %i.ao = load <2 x float>, ptr %i.ak, align 4, !tbaa !159 ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.au = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.av, <2 x float> %i.as)
  %i.ax = insertelement <2 x float> %4, float %i.am, i64 1
  %i.ay = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.aw)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !159
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.be = load float, ptr %i.bd, align 8, !tbaa !159
  %i.bf = fmul float %i.ah, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ag, float %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !159
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.ai, float %i.bg)
  %.sroa.3.12.vec.insert.i12 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 116
  store <2 x float> %i.ba, ptr %i.bk, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> %.sroa.3.12.vec.insert.i12, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !185
  %i.bl = fsub float 1.000000e+00, %i.ad          ; 3 uses
  %i.bm = fmul float %i.bl, %i.z
  %i.bn = fmul float %i.bl, %i.aa
  %i.bo = fmul float %i.bl, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bp = phi float [ %i.bo, %bb.e ], [ %i.ab, %bb.d ]
  %i.bq = phi float [ %i.bn, %bb.e ], [ %i.aa, %bb.d ]
  %i.br = phi float [ %i.bm, %bb.e ], [ %i.z, %bb.d ]
  %i.bs = sitofp i32 %2 to float
  %i.bt = fdiv float 1.000000e+00, %i.bs          ; 3 uses
  %i.bu = fmul float %i.bt, %i.br
  store float %i.bu, ptr %i.n, align 4, !tbaa !159
  %i.bv = fmul float %i.bt, %i.bq
  store float %i.bv, ptr %i.s, align 8, !tbaa !159
  %i.bw = fmul float %i.bt, %i.bp
  store float %i.bw, ptr %i.v, align 4, !tbaa !159
  br label %bb.h

bb.g:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6CJoint5SolveEff(ptr noundef nonnull align 8 dereferenceable(244) %0, float %1, float noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.btSoftBody::Impulse", align 8 ; 14 uses
  %4 = alloca %"struct.btSoftBody::Impulse", align 8 ; 9 uses
  %5 = alloca %"struct.btSoftBody::Impulse", align 8 ; 10 uses
  %6 = alloca %"struct.btSoftBody::Impulse", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !592  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !293  ; 5 uses
  %.not2.i.i = icmp eq ptr %i.e, null
  br i1 %.not2.i.i, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %.sroa.5.0.copyload.i.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.j = load float, ptr %i.b, align 8, !tbaa !159 ; 2 uses
  %i.k = load float, ptr %i.g, align 4, !tbaa !159 ; 2 uses
  %i.l = load <2 x float>, ptr %i.h, align 4, !tbaa !159 ; 3 uses
  %i.m = load <2 x float>, ptr %i.i, align 4, !tbaa !159 ; 3 uses
  %i.n = fneg <2 x float> %i.m
  %i.o = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.k, i64 1
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.j, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.s, <2 x float> %i.q)
  %i.u = fneg float %i.j
  %i.v = extractelement <2 x float> %i.l, i64 0
  %i.w = fmul float %i.v, %i.u
  %i.x = extractelement <2 x float> %i.m, i64 0
  %i.y = tail call float @llvm.fmuladd.f32(float %i.k, float %i.x, float %i.w)
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %.sroa.5.0.copyload8.i.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !tbaa !185
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %.sroa.0.0.copyload6.i.i = load <2 x float>, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 372
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ad = load float, ptr %i.b, align 8, !tbaa !159 ; 2 uses
  %i.ae = load float, ptr %i.aa, align 8, !tbaa !159 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !159 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.ac, align 4, !tbaa !159 ; 3 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ae, i64 1
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.ad, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = fneg float %i.ad
  %i.ap = extractelement <2 x float> %i.af, i64 0
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ag, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ar, float %i.aq)
  %.sroa.3.12.vec.insert.i.i7.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.5.0.i17.i = phi <2 x float> [ %.sroa.5.0.copyload.i.i, %bb.c ], [ %.sroa.5.0.copyload8.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.0.0.i15.i = phi <2 x float> [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.0.0.copyload6.i.i, %bb.d ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.0.0.i3.i = phi <2 x float> [ %i.t, %bb.c ], [ %i.an, %bb.d ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.5.0.i4.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i, %bb.c ], [ %.sroa.3.12.vec.insert.i.i7.i.i, %bb.d ], [ zeroinitializer, %bb.b ]
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.i15.i, %.sroa.0.0.i3.i
  %i.at = shufflevector <2 x float> %.sroa.0.0.i15.i, <2 x float> %.sroa.5.0.i17.i, <2 x i32> <i32 1, i32 2>
  %i.au = shufflevector <2 x float> %.sroa.0.0.i3.i, <2 x float> %.sroa.5.0.i4.i, <2 x i32> <i32 1, i32 2>
  %i.av = fadd <2 x float> %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !592 ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.az, null
  br i1 %.not.i.i1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !293 ; 5 uses
  %.not2.i.i23 = icmp eq ptr %i.ba, null
  br i1 %.not2.i.i23, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30, label %bb.g

bb.f:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.0.0.copyload.i.i2 = load <2 x float>, ptr %i.bb, align 4
  %.sroa.5.0..sroa_idx.i.i3 = getelementptr inbounds nuw i8, ptr %i.az, i64 336
  %.sroa.5.0.copyload.i.i4 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i3, align 4, !tbaa !185
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 344
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 348
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bf = load float, ptr %i.ax, align 8, !tbaa !159 ; 2 uses
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !159 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bd, align 4, !tbaa !159 ; 3 uses
  %i.bi = load <2 x float>, ptr %i.be, align 4, !tbaa !159 ; 3 uses
  %i.bj = fneg <2 x float> %i.bi
  %i.bk = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bl = insertelement <2 x float> %i.bk, float %i.bg, i64 1
  %i.bm = fmul <2 x float> %i.bl, %i.bj
  %i.bn = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bo = insertelement <2 x float> %i.bn, float %i.bf, i64 1
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = fneg float %i.bf
  %i.br = extractelement <2 x float> %i.bh, i64 0
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = extractelement <2 x float> %i.bi, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bt, float %i.bs)
  %.sroa.3.12.vec.insert.i.i.i.i7 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bu, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30

bb.g:                                             ; preds = %bb.e
  %.sroa.5.0..sroa_idx7.i.i24 = getelementptr inbounds nuw i8, ptr %i.ba, i64 360
  %.sroa.5.0.copyload8.i.i25 = load <2 x float>, ptr %.sroa.5.0..sroa_idx7.i.i24, align 8, !tbaa !185
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 352
  %.sroa.0.0.copyload6.i.i26 = load <2 x float>, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 368
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 372
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bz = load float, ptr %i.ax, align 8, !tbaa !159 ; 2 uses
  %i.ca = load float, ptr %i.bw, align 8, !tbaa !159 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bx, align 4, !tbaa !159 ; 3 uses
  %i.cc = load <2 x float>, ptr %i.by, align 4, !tbaa !159 ; 3 uses
  %i.cd = fneg <2 x float> %i.cc
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %i.ca, i64 1
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x float> %i.ch, float %i.bz, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ci, <2 x float> %i.cg)
  %i.ck = fneg float %i.bz
  %i.cl = extractelement <2 x float> %i.cb, i64 0
  %i.cm = fmul float %i.cl, %i.ck
  %i.cn = extractelement <2 x float> %i.cc, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cn, float %i.cm)
  %.sroa.3.12.vec.insert.i.i7.i.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i17.i8 = phi <2 x float> [ %.sroa.5.0.copyload.i.i4, %bb.f ], [ %.sroa.5.0.copyload8.i.i25, %bb.g ], [ zeroinitializer, %bb.e ]
  %.sroa.0.0.i15.i9 = phi <2 x float> [ %.sroa.0.0.copyload.i.i2, %bb.f ], [ %.sroa.0.0.copyload6.i.i26, %bb.g ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.0.0.i3.i10 = phi <2 x float> [ %i.bp, %bb.f ], [ %i.cj, %bb.g ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.5.0.i4.i11 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i7, %bb.f ], [ %.sroa.3.12.vec.insert.i.i7.i.i29, %bb.g ], [ zeroinitializer, %bb.e ]
  %foldExtExtBinop137 = fadd <2 x float> %.sroa.0.0.i15.i9, %.sroa.0.0.i3.i10
  %foldExtExtBinop139 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop137
  %i.cp = extractelement <2 x float> %foldExtExtBinop139, i64 0 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !159 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ct = shufflevector <2 x float> %.sroa.0.0.i15.i9, <2 x float> %.sroa.5.0.i17.i8, <2 x i32> <i32 1, i32 2>
  %i.cu = shufflevector <2 x float> %.sroa.0.0.i3.i10, <2 x float> %.sroa.5.0.i4.i11, <2 x i32> <i32 1, i32 2>
  %i.cv = fadd <2 x float> %i.ct, %i.cu
  %i.cw = fsub <2 x float> %i.av, %i.cv           ; 3 uses
  %i.cx = load <2 x float>, ptr %i.cs, align 4, !tbaa !159 ; 3 uses
  %foldExtExtBinop141 = fmul <2 x float> %i.cw, %i.cx
  %i.cy = extractelement <2 x float> %foldExtExtBinop141, i64 0
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cr, float %i.cy)
  %i.da = extractelement <2 x float> %i.cx, i64 1
  %i.db = extractelement <2 x float> %i.cw, i64 1
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.da, float %i.cz) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.de = load i8, ptr %i.dd, align 8
  %i.df = and i8 %i.de, -4
  %i.dg = or disjoint i8 %i.df, 1
  store i8 %i.dg, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.dh, i64 16, i1 false), !tbaa.struct !198
  %i.dj = fcmp olt float %i.dc, 0.000000e+00
  %.pre = load float, ptr %3, align 8, !tbaa !159 ; 2 uses
  br i1 %i.dj, label %bb.h, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge: ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dk = load <2 x float>, ptr %.phi.trans.insert, align 4, !tbaa !159
  br label %bb.i

bb.h:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30
  %i.dl = fmul float %i.cr, %i.dc                 ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.cx, %i.dn           ; 2 uses
  %i.dp = fsub float %i.cp, %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !159 ; 2 uses
  %i.ds = fmul float %i.dp, %i.dr
  %i.dt = fadd float %i.dl, %i.ds
  %i.du = fadd float %.pre, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dw = fsub <2 x float> %i.cw, %i.do
  %i.dx = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dw, %i.dy
  %i.ea = fadd <2 x float> %i.do, %i.dz
  %i.eb = load <2 x float>, ptr %i.dv, align 4, !tbaa !159
  %i.ec = fadd <2 x float> %i.ea, %i.eb
  br label %bb.i

bb.i:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge, %bb.h
  %i.ed = phi float [ %i.du, %bb.h ], [ %.pre, %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.ec, %bb.h ], [ %i.dk, %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 140
  %7 = load <4 x float>, ptr %i.eg, align 4
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !159
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.em = load float, ptr %i.el, align 4, !tbaa !159
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eo = load float, ptr %i.en, align 8, !tbaa !159
  %i.ep = extractelement <2 x float> %i.ee, i64 0
  %i.eq = fmul float %i.ep, %i.eo
  %i.er = tail call float @llvm.fmuladd.f32(float %i.em, float %i.ed, float %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.et = load float, ptr %i.es, align 4, !tbaa !159
  %i.eu = extractelement <2 x float> %i.ee, i64 1
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.et, float %i.eu, float %i.er)
  %i.ew = load <2 x float>, ptr %i.ef, align 4, !tbaa !159 ; 2 uses
  %i.ex = load <2 x float>, ptr %i.ei, align 4, !tbaa !159 ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ew, <2 x float> %i.ex, <2 x i32> <i32 1, i32 3>
  %i.ez = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.ey, %i.ez
  %i.fb = shufflevector <2 x float> %i.ew, <2 x float> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.fc = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fd, <2 x float> %i.fa)
  %i.ff = insertelement <2 x float> %8, float %i.ek, i64 1
  %i.fg = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.fg, <2 x float> %i.fe)
  %i.fi = insertelement <2 x float> poison, float %2, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.fj, %i.fh           ; 4 uses
  %i.fl = fmul float %2, %i.ev                    ; 5 uses
  %.sroa.3.12.vec.insert.i58 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fl, i64 0
  store <2 x float> %i.fk, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i58, ptr %i.eh, align 8, !tbaa !185
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !293 ; 3 uses
  %i.fn = load ptr, ptr %i.aw, align 8, !tbaa !293
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.fp = extractelement <2 x float> %i.fk, i64 0 ; 3 uses
  %i.fq = extractelement <2 x float> %i.fk, i64 1 ; 3 uses
  %or.cond = fcmp ord float %i.fp, %i.fq
  %i.fr = fcmp ord float %i.fl, 0.000000e+00
  %or.cond135 = and i1 %or.cond, %i.fr
  br i1 %or.cond135, label %bb.k, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

bb.k:                                             ; preds = %bb.j
  %i.fs = fmul float %i.fq, %i.fq
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fp, float %i.fs)
  %i.fu = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.ft)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 408
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !628
  %i.fx = fcmp olt float %sqrt.i, %i.fw
  br i1 %i.fx, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.fy = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.fz = fneg <2 x float> %i.fk
  %i.ga = fneg float %i.fl                        ; 2 uses
  %.sroa.3.12.vec.insert.i.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ga, i64 0
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 412
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !629 ; 4 uses
  %.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i63, ptr %.sroa.7.0..sroa_idx86, align 8, !tbaa !185
  %.sroa.9.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.12.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x float> <float -0.000000e+00, float 0.000000e+00>, ptr %.sroa.12.0..sroa_idx90, align 8, !tbaa !185
  %.sroa.14.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i32 %i.fy, ptr %.sroa.14.0..sroa_idx92, align 8
  %i.gd = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.ge, %i.fz
  store <2 x float> %i.gf, ptr %4, align 8, !tbaa !159, !alias.scope !630
  %i.gg = fmul float %i.gc, %i.ga
  store float %i.gg, ptr %.sroa.7.0..sroa_idx86, align 8, !tbaa !159, !alias.scope !630
  %i.gh = fmul float %i.gc, -0.000000e+00         ; 2 uses
  store float %i.gh, ptr %.sroa.9.0..sroa_idx88, align 8, !tbaa !159, !alias.scope !630
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.gj = fmul float %i.gc, -0.000000e+00
  store float %i.gj, ptr %i.gi, align 4, !tbaa !159, !alias.scope !630
  store float %i.gh, ptr %.sroa.12.0..sroa_idx90, align 8, !tbaa !159, !alias.scope !630
  %i.gk = trunc i32 %i.fy to i8                   ; 2 uses
  %i.gl = and i8 %i.gk, 1
  %.not.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i = load i8, ptr %.sroa.14.0..sroa_idx92, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gm = phi i8 [ %.pre.i, %bb.m ], [ %i.gk, %bb.l ]
  %.mask.i = and i8 %i.gm, 2
  %.not7.i = icmp eq i8 %.mask.i, 0
  br i1 %.not7.i, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx88, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 412
  %i.gp = load float, ptr %i.go, align 4, !tbaa !629 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !612
  %i.gq = load <2 x float>, ptr %5, align 8, !tbaa !159, !alias.scope !633
  %i.gr = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = fmul <2 x float> %i.gs, %i.gq
  store <2 x float> %i.gt, ptr %5, align 8, !tbaa !159, !alias.scope !633
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !159, !alias.scope !633
  %i.gw = fmul float %i.gp, %i.gv
  store float %i.gw, ptr %i.gu, align 8, !tbaa !159, !alias.scope !633
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.gy = load <2 x float>, ptr %i.gx, align 8, !tbaa !159, !alias.scope !633
  %i.gz = fmul <2 x float> %i.gs, %i.gy
  store <2 x float> %i.gz, ptr %i.gx, align 8, !tbaa !159, !alias.scope !633
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !159, !alias.scope !633
  %i.hc = fmul float %i.gp, %i.hb
  store float %i.hc, ptr %i.ha, align 8, !tbaa !159, !alias.scope !633
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 8             ; 2 uses
  %i.hf = and i8 %i.he, 1
  %.not.i64 = icmp eq i8 %i.hf, 0
  br i1 %.not.i64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i65 = load i8, ptr %i.hd, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit
  %i.hg = phi i8 [ %.pre.i65, %bb.p ], [ %i.he, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit ]
  %.mask.i66 = and i8 %i.hg, 2
  %.not7.i67 = icmp eq i8 %.mask.i66, 0
  br i1 %.not7.i67, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.gx, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !612
  %i.hh = load <2 x float>, ptr %6, align 8, !tbaa !159, !alias.scope !636
  %i.hi = fneg <2 x float> %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hk = load float, ptr %i.hj, align 8, !tbaa !159, !alias.scope !636
  %i.hl = fneg float %i.hk
  %.sroa.3.12.vec.insert.i.i71 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hl, i64 0
  store <2 x float> %i.hi, ptr %6, align 8, !alias.scope !636
  store <2 x float> %.sroa.3.12.vec.insert.i.i71, ptr %i.hj, align 8, !tbaa !185, !alias.scope !636
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.hn = load <2 x float>, ptr %i.hm, align 8, !tbaa !159, !alias.scope !636
  %i.ho = fneg <2 x float> %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.hq = load float, ptr %i.hp, align 8, !tbaa !159, !alias.scope !636
  %i.hr = fneg float %i.hq
  %.sroa.3.12.vec.insert.i5.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hr, i64 0
  store <2 x float> %i.ho, ptr %i.hm, align 8, !alias.scope !636
  store <2 x float> %.sroa.3.12.vec.insert.i5.i74, ptr %i.hp, align 8, !tbaa !185, !alias.scope !636
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 8             ; 2 uses
  %i.hu = and i8 %i.ht, 1
  %.not.i75 = icmp eq i8 %i.hu, 0
  br i1 %.not.i75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i76 = load i8, ptr %i.hs, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hv = phi i8 [ %.pre.i76, %bb.t ], [ %i.ht, %bb.s ]
  %.mask.i77 = and i8 %i.hv, 2
  %.not7.i78 = icmp eq i8 %.mask.i77, 0
  br i1 %.not7.i78, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.hm, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i81 = load i8, ptr %i.dd, align 8
  %.mask.i82 = and i8 %.pre.i81, 2
  %.not7.i83 = icmp eq i8 %.mask.i82, 0
  br i1 %.not7.i83, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.hw, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84: ; preds = %bb.x, %bb.w, %bb.j, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6CJoint9TerminateEf(ptr noundef nonnull align 8 dereferenceable(244) %0, float %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load float, ptr %i.a, align 8, !tbaa !308
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
end_hunk_5
begin_hunk_6_@_ZN10btSoftBody14PSolve_AnchorsEPS_ff:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !159
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.ag = load float, ptr %i.af, align 4, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 348
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.am = load float, ptr %i.al, align 8, !tbaa !159 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 352
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !159 ; 2 uses
  %i.aq = fneg float %i.ap
  %i.ar = load <2 x float>, ptr %i.o, align 4, !tbaa !159 ; 2 uses
  %i.as = load <2 x float>, ptr %i.q, align 8, !tbaa !159 ; 2 uses
  %i.at = load <2 x float>, ptr %i.x, align 4, !tbaa !159 ; 2 uses
  %i.au = load <2 x float>, ptr %i.ac, align 4, !tbaa !159
  %i.av = load <2 x float>, ptr %i.ak, align 4, !tbaa !159 ; 2 uses
  %i.aw = load float, ptr %i.an, align 4, !tbaa !159
  %i.ax = shufflevector <2 x float> %i.ar, <2 x float> %i.at, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ay = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ba = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bc = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x float> %i.bc, float %i.aq, i64 1
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bf = fmul <4 x float> %i.bb, %i.be
  %i.bg = shufflevector <2 x float> %i.ar, <2 x float> %i.at, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bj = insertelement <2 x float> %i.as, float %i.am, i64 1
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.bk, <4 x float> %i.bf) ; 4 uses
  %i.bm = extractelement <4 x float> %i.bl, i64 0
  %i.bn = call noundef float @llvm.fmuladd.f32(float %i.s, float %i.u, float %i.bm)
  %i.bo = fadd float %i.bn, %i.w
  %i.bp = extractelement <4 x float> %i.bl, i64 1
  %i.bq = call noundef float @llvm.fmuladd.f32(float %i.z, float %i.u, float %i.bp)
  %i.br = fadd float %i.ab, %i.bq
  %i.bs = extractelement <4 x float> %i.bl, i64 2
  %i.bt = call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.u, float %i.bs)
  %i.bu = fadd float %i.ag, %i.bt
  %i.bv = load float, ptr %i.ah, align 8, !tbaa !159 ; 2 uses
  %i.bw = load float, ptr %i.aj, align 4, !tbaa !159 ; 2 uses
  %i.bx = fneg float %i.am
  %i.by = fmul float %i.bw, %i.bx
  %i.bz = call float @llvm.fmuladd.f32(float %i.aw, float %i.bv, float %i.by)
  %i.ca = fneg float %i.bv
  %i.cb = extractelement <2 x float> %i.av, i64 0
  %i.cc = fmul float %i.cb, %i.ca
  %i.cd = call float @llvm.fmuladd.f32(float %i.bw, float %i.ap, float %i.cc)
  %i.ce = load float, ptr %i.ai, align 4, !tbaa !159
  %i.cf = extractelement <4 x float> %i.bl, i64 3
  %i.cg = fadd float %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 332
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !159
  %i.cj = fadd float %i.ci, %i.bz
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !159
  %i.cm = fadd float %i.cd, %i.cl
  %i.cn = fmul float %i.e, %i.cg
  %i.co = fmul float %i.e, %i.cj
  %i.cp = fmul float %i.e, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !159 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !159
  %i.cw = fsub float %i.ct, %i.cv
  %i.cx = fsub float %i.cp, %i.cw
  %i.cy = fsub float %i.bu, %i.ct
  %i.cz = fmul float %i.c, %i.cy
  %i.da = fadd float %i.cz, %i.cx                 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !159
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.dg = load float, ptr %i.df, align 8, !tbaa !159
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.di = load float, ptr %i.dh, align 8, !tbaa !159
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !159
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !159
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.do = load float, ptr %i.dn, align 8, !tbaa !159 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.cq, align 4, !tbaa !159 ; 4 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  %i.dr = extractelement <2 x float> %i.dp, i64 1
  %i.ds = load <2 x float>, ptr %i.cr, align 4, !tbaa !159
  %i.dt = fsub <2 x float> %i.dp, %i.ds           ; 2 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  %i.dv = fsub float %i.cn, %i.du
  %i.dw = extractelement <2 x float> %i.dt, i64 1
  %i.dx = fsub float %i.co, %i.dw
  %i.dy = fsub float %i.bo, %i.dq
  %i.dz = fsub float %i.br, %i.dr
  %i.ea = fmul float %i.c, %i.dy
  %i.eb = fmul float %i.c, %i.dz
  %i.ec = fadd float %i.ea, %i.dv                 ; 2 uses
  %i.ed = fadd float %i.eb, %i.dx                 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.db, align 8, !tbaa !159 ; 2 uses
  %i.ef = load <2 x float>, ptr %i.de, align 8, !tbaa !159 ; 2 uses
  %i.eg = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 1, i32 3>
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  %i.ek = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 0, i32 2>
  %i.el = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.em, <2 x float> %i.ej)
  %i.eo = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.dg, i64 1
  %i.eq = insertelement <2 x float> poison, float %i.da, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.er, <2 x float> %i.en) ; 2 uses
  %i.et = fmul float %i.ed, %i.dk
  %i.eu = call float @llvm.fmuladd.f32(float %i.di, float %i.ec, float %i.et)
  %i.ev = call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.da, float %i.eu) ; 2 uses
  %i.ew = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.es, %i.ex
  %i.ez = fmul float %i.do, %i.ev
  %i.fa = fadd <2 x float> %i.dp, %i.ey
  store <2 x float> %i.fa, ptr %i.cq, align 4, !tbaa !159
  %i.fb = fadd float %i.ct, %i.ez
  store float %i.fb, ptr %i.cs, align 4, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.fc = fneg <2 x float> %i.es
  %i.fd = fneg float %i.ev
  %.sroa.3.12.vec.insert.i59 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fd, i64 0
  store <2 x float> %i.fc, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i59, ptr %i.j, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load float, ptr %i.a, align 8, !tbaa !523 ; 3 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.i = load float, ptr %i.h, align 4, !tbaa !159 ; 2 uses
  %i.j = fmul float %i.g, %i.i
  %i.k = fmul float %i.b, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !159
  %i.n = load <2 x float>, ptr %i.d, align 4, !tbaa !159 ; 3 uses
  %i.o = fmul <2 x float> %i.m, %i.n
  %i.p = insertelement <2 x float> poison, float %i.b, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.q, %i.o
  %i.s = load <2 x float>, ptr %i.l, align 8, !tbaa !159
  %i.t = fadd <2 x float> %i.r, %i.s
  store <2 x float> %i.t, ptr %i.l, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !159
  %i.w = fadd float %i.k, %i.v
  store float %i.w, ptr %i.u, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.y = load float, ptr %1, align 4, !tbaa !159
  %i.z = extractelement <2 x float> %i.n, i64 0
  %i.aa = fmul float %i.z, %i.y                   ; 2 uses
  %i.ab = load float, ptr %i.e, align 4, !tbaa !159
  %i.ac = extractelement <2 x float> %i.n, i64 1
  %i.ad = fmul float %i.ab, %i.ac                 ; 2 uses
  %i.ae = load float, ptr %i.f, align 4, !tbaa !159
  %i.af = fmul float %i.ae, %i.i                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !159 ; 2 uses
  %i.ak = fneg float %i.ad
  %i.al = fmul float %i.aj, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %i.al) ; 2 uses
  %i.an = load float, ptr %2, align 4, !tbaa !159 ; 2 uses
  %i.ao = fneg float %i.af
  %i.ap = fmul float %i.an, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aa, float %i.ap) ; 2 uses
  %i.ar = fneg float %i.aa
  %i.as = fmul float %i.ah, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ad, float %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 288
  %3 = load <4 x float>, ptr %i.av, align 8
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !159
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ba = load float, ptr %i.az, align 8, !tbaa !159
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !159
  %i.bd = fmul float %i.aq, %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.am, float %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !159
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.at, float %i.be)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !159
  %i.bk = fmul float %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.au, align 8, !tbaa !159 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.aw, align 8, !tbaa !159 ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.bp = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bo, %i.bq
  %i.bs = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bt = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.br)
  %i.bw = insertelement <2 x float> %4, float %i.ay, i64 1
  %i.bx = insertelement <2 x float> poison, float %i.at, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.by, <2 x float> %i.bv)
  %i.ca = load <2 x float>, ptr %i.x, align 4, !tbaa !159
  %i.cb = fmul <2 x float> %i.bz, %i.ca
  %i.cc = load <2 x float>, ptr %i.bl, align 8, !tbaa !159
  %i.cd = fadd <2 x float> %i.cb, %i.cc
  store <2 x float> %i.cd, ptr %i.bl, align 8, !tbaa !159
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !159
  %i.cg = fadd float %i.bk, %i.cf
  store float %i.cg, ptr %i.ce, align 8, !tbaa !159
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody16PSolve_RContactsEPS_ff(ptr nofree noundef readonly captures(none) %0, float noundef %1, float %2) #0 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load float, ptr %i.a, align 8, !tbaa !487 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.j = load i32, ptr %i.i, align 4, !tbaa !130  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.j to i64
  %i.n = insertelement <2 x float> poison, float %i.b, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %indvars.iv ; 18 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !570  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.t = load i32, ptr %i.s, align 8, !tbaa !156
  %i.u = icmp ne i32 %i.t, 2
  %.not128 = icmp eq ptr %i.r, null
  %.not = or i1 %.not128, %i.u                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 348
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.aa = load float, ptr %i.v, align 8, !tbaa !159 ; 2 uses
  %i.ab = load float, ptr %i.x, align 8, !tbaa !159 ; 2 uses
  %i.ac = fneg float %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !159
  %i.af = load <2 x float>, ptr %i.y, align 4, !tbaa !159 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.z, align 4, !tbaa !159 ; 3 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ab, i64 1
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.aa, i64 1
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = extractelement <2 x float> %i.af, i64 0
  %i.ap = fmul float %i.ao, %i.ac
  %i.aq = extractelement <2 x float> %i.ag, i64 0
  %i.ar = call float @llvm.fmuladd.f32(float %i.ab, float %i.aq, float %i.ap)
  %i.as = load <2 x float>, ptr %i.w, align 8, !tbaa !159
  %i.at = fadd <2 x float> %i.an, %i.as
  %i.au = fadd float %i.ar, %i.ae
  %i.av = fmul <2 x float> %i.o, %i.at
  %i.aw = fmul float %i.b, %i.au
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0121.0 = phi <2 x float> [ %i.av, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.7.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !640 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = load float, ptr %i.az, align 4, !tbaa !159 ; 2 uses
  %i.bc = load float, ptr %i.ba, align 4, !tbaa !159
  %i.bd = fsub float %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %.sroa.0121.0.vec.extract = extractelement <2 x float> %.sroa.0121.0, i64 0
  %i.bg = fsub float %i.bd, %.sroa.0121.0.vec.extract ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !159 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.be, align 4, !tbaa !159 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.bf, align 4, !tbaa !159
  %i.bm = fsub <2 x float> %i.bk, %i.bl
  %i.bn = shufflevector <2 x float> %.sroa.0121.0, <2 x float> %.sroa.7.0, <2 x i32> <i32 1, i32 2>
  %i.bo = fsub <2 x float> %i.bm, %i.bn           ; 4 uses
  %i.bp = load <2 x float>, ptr %i.bj, align 4, !tbaa !159 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bo, %i.bp
  %i.bq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.br = call float @llvm.fmuladd.f32(float %i.bg, float %i.bi, float %i.bq)
  %i.bs = extractelement <2 x float> %i.bo, i64 1
  %i.bt = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bu = call noundef float @llvm.fmuladd.f32(float %i.bs, float %i.bt, float %i.br) ; 3 uses
  %i.bv = fcmp ugt float %i.bu, f0x34000000
  br i1 %i.bv, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop135 = fmul <2 x float> %i.bk, %i.bp
  %i.bw = extractelement <2 x float> %foldExtExtBinop135, i64 0
  %i.bx = call float @llvm.fmuladd.f32(float %i.bb, float %i.bi, float %i.bw)
  %i.by = extractelement <2 x float> %i.bk, i64 1
  %i.bz = call noundef float @llvm.fmuladd.f32(float %i.by, float %i.bt, float %i.bx)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !572
  %i.cc = fadd float %i.bz, %i.cb                 ; 2 uses
  %i.cd = fcmp olt float %i.cc, %i.h
  %.sroa.speculated = select i1 %i.cd, float %i.cc, float %i.h
  %i.ce = fmul float %i.bi, %i.bu
  %i.cf = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.bp, %i.cg
  %i.ci = fsub float %i.bg, %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 108
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !159 ; 2 uses
  %i.cm = fmul float %i.ci, %i.cl
  %i.cn = fsub float %i.bg, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.cp = load float, ptr %i.co, align 8, !tbaa !642
  %i.cq = fmul float %.sroa.speculated, %i.cp     ; 2 uses
  %i.cr = load float, ptr %i.bh, align 8, !tbaa !159
  %i.cs = fmul float %i.cr, %i.cq
  %i.ct = fadd float %i.cn, %i.cs
  %i.cu = fsub <2 x float> %i.bo, %i.ch
  %i.cv = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.cu, %i.cw
  %i.cy = fsub <2 x float> %i.bo, %i.cx
  %i.cz = load <2 x float>, ptr %i.bj, align 4, !tbaa !159
  %i.da = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.db, %i.cz
  %i.dd = fadd <2 x float> %i.cy, %i.dc           ; 2 uses
  %i.de = fmul float %1, %i.ct                    ; 2 uses
  %i.df = extractelement <2 x float> %i.dd, i64 0
  %i.dg = fmul float %1, %i.df                    ; 2 uses
  %i.dh = extractelement <2 x float> %i.dd, i64 1
  %i.di = fmul float %1, %i.dh                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !159
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !159
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.dp = load float, ptr %i.do, align 8, !tbaa !159
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !159
  %i.ds = fmul float %i.dg, %i.dr
  %i.dt = call float @llvm.fmuladd.f32(float %i.dp, float %i.de, float %i.ds)
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.dv = load float, ptr %i.du, align 8, !tbaa !159
  %i.dw = call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.di, float %i.dt) ; 2 uses
  %.sroa.3.12.vec.insert.i77 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.dy = load <2 x float>, ptr %i.cj, align 8, !tbaa !159 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.dl, align 8, !tbaa !159 ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 1, i32 3>
  %i.eb = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.ea, %i.ec
  %i.ee = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.ef = insertelement <2 x float> poison, float %i.de, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.eg, <2 x float> %i.ed)
  %i.ei = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.dn, i64 1
  %i.ek = insertelement <2 x float> poison, float %i.di, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.el, <2 x float> %i.eh) ; 2 uses
  store <2 x float> %i.em, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i77, ptr %i.m, align 8
  %i.en = load float, ptr %i.dx, align 8, !tbaa !159 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN20btAlignedObjectArrayI9NodeLinksE7reserveEi:bb.a
  %min.iters.check = icmp ult i32 %i.s, 8
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.x
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond34 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond34, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %i.u, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %wide.load18 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !4
  store <4 x i32> %wide.load18, ptr %i.bh, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !702

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br i1 %cmp.n, label %_ZN9NodeLinksC2ERKS_.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i6.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter35 = and i64 %i.u, 3                   ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter37 = phi i64 [ %prol.iter37.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i6.i.i.i.prol
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i6.i.i.i.prol
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !4
  %indvars.iv.next.i7.i.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.i.prol, 1 ; 2 uses
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !703

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.i6.i.i.i.ph, %i.u
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZN9NodeLinksC2ERKS_.exit.i, label %scalar.ph

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i.i: ; preds = %bb.d
  store i32 %i.s, ptr %i.p, align 4, !tbaa !154
  br label %_ZN9NodeLinksC2ERKS_.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i.i.i = phi i64 [ %indvars.iv.next.i7.i.i.i.3, %scalar.ph ], [ %indvars.iv.i6.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i6.i.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i6.i.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !4
  %indvars.iv.next.i7.i.i.i = add nuw nsw i64 %indvars.iv.i6.i.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next.i7.i.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i.1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i.1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !4
  %indvars.iv.next.i7.i.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i.2
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !4
  %indvars.iv.next.i7.i.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.i.3, %i.u
  br i1 %exitcond.not.i8.i.i.i.3, label %_ZN9NodeLinksC2ERKS_.exit.i, label %scalar.ph, !llvm.loop !704

_ZN9NodeLinksC2ERKS_.exit.i:                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.ca, label %_ZNK20btAlignedObjectArrayI9NodeLinksE4copyEiiPS0_.exit, label %bb.d

_ZNK20btAlignedObjectArrayI9NodeLinksE4copyEiiPS0_.exit: ; preds = %_ZN9NodeLinksC2ERKS_.exit.i
  %.pre = load i32, ptr %i.g, align 4, !tbaa !371 ; 2 uses
  %i.cb = icmp sgt i32 %.pre, 0
  br i1 %i.cb, label %.lr.ph.i5, label %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit

.lr.ph.i5:                                        ; preds = %_ZNK20btAlignedObjectArrayI9NodeLinksE4copyEiiPS0_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext11 = zext nneg i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN9NodeLinksD2Ev.exit.i, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i7, %_ZN9NodeLinksD2Ev.exit.i ] ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !370
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %indvars.iv.i6 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ci = load i8, ptr %i.ch, align 8, !range !179
  %i.cj = trunc nuw i8 %i.ci to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.cj, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN9NodeLinksD2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cg)
  br label %_ZN9NodeLinksD2Ev.exit.i

_ZN9NodeLinksD2Ev.exit.i:                         ; preds = %bb.g, %bb.f
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i6, 1 ; 2 uses
  %i.ck = icmp eq i64 %indvars.iv.next.i7, %zext11
  br i1 %i.ck, label %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit, label %bb.f

_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit: ; preds = %_ZN9NodeLinksD2Ev.exit.i, %_ZN20btAlignedObjectArrayI9NodeLinksE8allocateEi.exit, %_ZNK20btAlignedObjectArrayI9NodeLinksE4copyEiiPS0_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !370 ; 2 uses
  %.not.i10 = icmp eq ptr %i.cm, null
  br i1 %.not.i10, label %_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !366, !range !179, !noundef !180
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.i, label %_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cm)
  br label %_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit

_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit: ; preds = %bb.h, %bb.i, %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cq, align 8, !tbaa !366
  store ptr %.0.i, ptr %i.cl, align 8, !tbaa !370
  store i32 %1, ptr %i.a, align 8, !tbaa !372
  br label %bb.j

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI9NodeLinksE10deallocateEv.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(296) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 21 uses
  %3 = alloca %"struct.btGjkEpaSolver2::sResults", align 4 ; 12 uses
  %4 = alloca %class.btVector3, align 8           ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !4
  %i.d = sitofp i32 %i.c to float
  %i.e = load <2 x i32>, ptr %i.a, align 8, !tbaa !4
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = fmul nnan <2 x float> %i.f, splat (float 3.000000e+00)
  %i.h = fmul nnan float %i.d, 3.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !159 ; 2 uses
  %i.k = insertelement <2 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.g, %i.l              ; 2 uses
  %i.n = fmul float %i.j, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.w = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  %i.x = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv41 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next42, %bb.d ] ; 3 uses
  %i.y = load float, ptr %i.i, align 8, !tbaa !705
  %i.z = trunc nuw nsw i64 %indvars.iv41 to i32
  %i.aa = uitofp nneg i32 %i.z to float
  %i.ab = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  %i.ac = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.aa, i64 0
  %i.ad = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ac, <2 x float> %i.w) ; 2 uses
  %invariant.gep36 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41
  %i.ae = insertelement <2 x float> %i.ad, float 0.000000e+00, i64 1 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, 4
  br i1 %exitcond44.not, label %bb.b, label %bb.c

bb.e:                                             ; preds = %bb.c, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3 ] ; 3 uses
  %5 = load <4 x float>, ptr %i.i, align 8
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = uitofp nneg i32 %i.af to float
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep36, i64 %indvars.iv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ah = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ai = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ag, i64 1
  %i.aj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ai, <2 x float> %i.m) ; 2 uses
  store <2 x float> %i.aj, ptr %4, align 8, !tbaa !159
  store <2 x float> %i.ae, ptr %i.p, align 8, !tbaa !159
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !581 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !171
  %i.an = icmp slt i32 %i.am, 20
  br i1 %i.an, label %bb.f, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ao = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.ak, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !581
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit: ; preds = %bb.e, %bb.f
  %i.ap = phi ptr [ %.pre, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %.0.i = phi float [ %i.ao, %bb.f ], [ 0.000000e+00, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  store float %.0.i, ptr %gep, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aq = load float, ptr %i.i, align 8, !tbaa !705
  %i.ar = fadd float %i.aq, %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store float %i.ar, ptr %4, align 8, !tbaa !159
  %i.as = extractelement <2 x float> %i.aj, i64 1 ; 3 uses
  store float %i.as, ptr %i.o, align 4, !tbaa !159
  store <2 x float> %i.ae, ptr %i.p, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !171
  %i.av = icmp slt i32 %i.au, 20
  br i1 %i.av, label %bb.g, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1

bb.g:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.aw = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.ap, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre45 = load ptr, ptr %i.q, align 8, !tbaa !581
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1: ; preds = %bb.g, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit
  %i.ax = phi ptr [ %.pre45, %bb.g ], [ %i.ap, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit ] ; 3 uses
  %.0.i.1 = phi float [ %i.aw, %bb.g ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %gep35.1 = getelementptr inbounds nuw i8, ptr %gep, i64 64
  store float %.0.i.1, ptr %gep35.1, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ay = load float, ptr %i.i, align 8, !tbaa !705
  %i.az = call float @llvm.fmuladd.f32(float %i.ay, float 2.000000e+00, float %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store float %i.az, ptr %4, align 8, !tbaa !159
  store float %i.as, ptr %i.o, align 4, !tbaa !159
  store <2 x float> %i.ae, ptr %i.p, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !171
  %i.bc = icmp slt i32 %i.bb, 20
  br i1 %i.bc, label %bb.h, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2

bb.h:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.bd = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.ax, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre46 = load ptr, ptr %i.q, align 8, !tbaa !581
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2: ; preds = %bb.h, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1
  %i.be = phi ptr [ %.pre46, %bb.h ], [ %i.ax, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1 ] ; 2 uses
  %.0.i.2 = phi float [ %i.bd, %bb.h ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %gep35.2 = getelementptr inbounds nuw i8, ptr %gep, i64 128
  store float %.0.i.2, ptr %gep35.2, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bf = load float, ptr %i.i, align 8, !tbaa !705
  %i.bg = call float @llvm.fmuladd.f32(float %i.bf, float 3.000000e+00, float %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store float %i.bg, ptr %4, align 8, !tbaa !159
  store float %i.as, ptr %i.o, align 4, !tbaa !159
  store <2 x float> %i.ad, ptr %i.p, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !171
  %i.bj = icmp slt i32 %i.bi, 20
  br i1 %i.bj, label %bb.i, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.bk = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.be, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.3: ; preds = %bb.i, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2
  %.0.i.3 = phi float [ %i.bk, %bb.i ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3P16btCollisionShape.exit.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %gep35.3 = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store float %.0.i.3, ptr %gep35.3, align 4, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

declare noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #25

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
end_hunk_7
