Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv:bb.a
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !89 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !19
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 4 dereferenceable(64) %i.eb, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ef = load ptr, ptr %i.cr, align 8, !tbaa !90
  invoke void @_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bd

bb.aw:                                            ; preds = %bb.au, %bb.ar, %bb.ap
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.eh = load i32, ptr %i.ck, align 4, !tbaa !69
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next131, %i.ei
  br i1 %i.ej, label %bb.af, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.aw, %.preheader116
  %i.ek = load ptr, ptr %0, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef ptr %i.em(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %bb.ax unwind label %.loopexit.split-lp

bb.ax:                                            ; preds = %._crit_edge125
  %.not53 = icmp eq ptr %i.en, null
  br i1 %.not53, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eo = load ptr, ptr %0, align 8, !tbaa !19
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef ptr %i.eq(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %bb.az unwind label %.loopexit.split-lp ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !19
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %bb.ba unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %.not54 = icmp eq i32 %i.ev, 0
  br i1 %.not54, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ba
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !61
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph127, label %.loopexit

.lr.ph127:                                        ; preds = %.preheader
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph127, %bb.bc
  %indvars.iv133 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next134, %bb.bc ] ; 2 uses
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !60
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv133
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !91 ; 2 uses
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !90
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !19
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef %i.fe)
          to label %bb.bc unwind label %.loopexit115

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.fi = load i32, ptr %i.ew, align 4, !tbaa !61
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next134, %i.fj
  br i1 %i.fk, label %bb.bb, label %.loopexit

.loopexit:                                        ; preds = %bb.bc, %.preheader, %bb.ax, %bb.ba, %bb.ae, %bb.ab
  call void @_ZN15CProfileManager12Stop_ProfileEv()
  ret void

bb.bd:                                            ; preds = %.loopexit115, %.loopexit.split-lp, %bb.v, %bb.w, %bb.aa, %bb.y, %bb.al, %bb.am, %bb.av, %bb.i, %bb.p, %bb.h
  %.pn64.pn.pn = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.v, %bb.i ], [ %.pn64, %bb.p ], [ %i.bk, %bb.w ], [ %i.br, %bb.y ], [ %i.bj, %bb.v ], [ %i.bw, %bb.aa ], [ %i.dm, %bb.am ], [ %i.eg, %bb.av ], [ %i.dl, %bb.al ], [ %lpad.loopexit, %.loopexit115 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.be

_ZN14CProfileSampleD2Ev.exit:                     ; preds = %bb.bd
  resume { ptr, i32 } %.pn64.pn.pn

bb.be:                                            ; preds = %bb.bd
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #19
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 12 uses
  %3 = alloca %class.btTransform, align 16        ; 15 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 4           ; 4 uses
  %7 = alloca %class.btTransform, align 16        ; 23 uses
  %8 = alloca %class.btVector3, align 8           ; 6 uses
  %9 = alloca %class.btVector3, align 8           ; 7 uses
  %10 = alloca %class.btVector3, align 4          ; 4 uses
  %11 = alloca %class.btVector3, align 4          ; 4 uses
  %12 = alloca %class.btVector3, align 4          ; 4 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 8          ; 5 uses
  %15 = alloca %class.btVector3, align 4          ; 4 uses
  %16 = alloca %class.btTransform, align 16       ; 21 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 8          ; 8 uses
  %19 = alloca %class.btVector3, align 4          ; 4 uses
  %20 = alloca %class.btVector3, align 8          ; 6 uses
  %21 = alloca %class.btVector3, align 8          ; 6 uses
  %22 = alloca %class.btVector3, align 4          ; 4 uses
  %23 = alloca %class.btVector3, align 4          ; 4 uses
  %24 = alloca %class.btVector3, align 4          ; 4 uses
  %25 = alloca %class.btVector3, align 4          ; 4 uses
  %26 = alloca %class.btVector3, align 4          ; 4 uses
  %27 = alloca %class.btTransform, align 4        ; 10 uses
  %28 = alloca %class.btVector3, align 8          ; 5 uses
  %29 = alloca %class.btVector3, align 8          ; 5 uses
  %30 = alloca %class.btVector3, align 4          ; 4 uses
  %31 = alloca %class.btVector3, align 8          ; 5 uses
  %32 = alloca %class.btVector3, align 8          ; 5 uses
  %33 = alloca %class.btVector3, align 4          ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.i = and i32 %i.h, 2048
  %.not = icmp eq i32 %i.i, 0                     ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.r = and i32 %i.q, 4096
  %.not160 = icmp eq i32 %i.r, 0                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load float, ptr %i.s, align 4, !tbaa !93 ; 24 uses
  %i.u = fcmp ugt float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !96
  switch i32 %i.w, label %bb.aj [
    i32 3, label %bb.c
    i32 4, label %bb.f
    i32 5, label %bb.k
    i32 6, label %bb.w
    i32 7, label %bb.ae
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store float 1.000000e+00, ptr %2, align 4, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 4, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 348
  %.sroa.0492.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 4 uses
  %.sroa.12500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 356
  %.sroa.12500.0.copyload = load <2 x float>, ptr %.sroa.12500.0..sroa_idx, align 4, !tbaa !88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97, !nonnull !68, !align !98 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0492.0.vec.extract = extractelement <2 x float> %.sroa.0492.0.copyload, i64 0
  %.sroa.0492.4.vec.extract = extractelement <2 x float> %.sroa.0492.0.copyload, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !8
  %.sroa.12500.8.vec.extract = extractelement <2 x float> %.sroa.12500.0.copyload, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.al = load float, ptr %i.ak, align 8, !tbaa !8
  %i.am = load <2 x float>, ptr %i.af, align 8, !tbaa !8 ; 2 uses
  %i.an = load <2 x float>, ptr %i.aj, align 8, !tbaa !8 ; 2 uses
  %i.ao = shufflevector <2 x float> %.sroa.0492.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.aq = fmul <2 x float> %i.ao, %i.ap
  %i.ar = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.as = shufflevector <2 x float> %.sroa.0492.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.as, <2 x float> %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.al, i64 1
  %i.aw = shufflevector <2 x float> %.sroa.12500.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.aw, <2 x float> %i.at)
  %i.ay = load <2 x float>, ptr %i.ai, align 8, !tbaa !8
  %i.az = fadd <2 x float> %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !8
  %i.be = fmul float %.sroa.0492.4.vec.extract, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %.sroa.0492.0.vec.extract, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !8
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %.sroa.12500.8.vec.extract, float %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !8
  %i.bl = fadd float %i.bk, %i.bi
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store <2 x float> %i.az, ptr %i.bm, align 4
  %.sroa.12500.0..sroa_idx503 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.12500.0..sroa_idx503, align 4, !tbaa !88
  %i.bn = load ptr, ptr %0, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef %i.t)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.sroa.0492.0.copyload495 = load <2 x float>, ptr %i.br, align 4 ; 4 uses
  %.sroa.12500.0..sroa_idx501 = getelementptr inbounds nuw i8, ptr %1, i64 372
  %.sroa.12500.0.copyload502 = load <2 x float>, ptr %.sroa.12500.0..sroa_idx501, align 4, !tbaa !88 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !99, !nonnull !68, !align !98 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.0492.0.vec.extract494 = extractelement <2 x float> %.sroa.0492.0.copyload495, i64 0
  %.sroa.0492.4.vec.extract499 = extractelement <2 x float> %.sroa.0492.0.copyload495, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !8
  %.sroa.12500.8.vec.extract508 = extractelement <2 x float> %.sroa.12500.0.copyload502, i64 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !8
  %i.cb = load <2 x float>, ptr %i.bu, align 8, !tbaa !8 ; 2 uses
  %i.cc = load <2 x float>, ptr %i.by, align 8, !tbaa !8 ; 2 uses
  %i.cd = shufflevector <2 x float> %.sroa.0492.0.copyload495, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x float> %.sroa.0492.0.copyload495, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ch, <2 x float> %i.cf)
  %i.cj = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.ca, i64 1
  %i.cl = shufflevector <2 x float> %.sroa.12500.0.copyload502, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cl, <2 x float> %i.ci)
  %i.cn = load <2 x float>, ptr %i.bx, align 8, !tbaa !8
  %i.co = fadd <2 x float> %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !8
  %i.ct = fmul float %.sroa.0492.4.vec.extract499, %i.cs
  %i.cu = call float @llvm.fmuladd.f32(float %i.cq, float %.sroa.0492.0.vec.extract494, float %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !8
  %i.cx = call noundef float @llvm.fmuladd.f32(float %i.cw, float %.sroa.12500.8.vec.extract508, float %i.cu)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !8
  %i.da = fadd float %i.cz, %i.cx
  %.sroa.3.12.vec.insert.i.i169 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.da, i64 0
  store <2 x float> %i.co, ptr %i.bm, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i169, ptr %.sroa.12500.0..sroa_idx503, align 4, !tbaa !88
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = load ptr, ptr %0, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef %i.t)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.aj

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !97, !nonnull !68, !align !98 ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 636
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !8, !noalias !103 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !8, !noalias !100 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 652
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !8, !noalias !100 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !8, !noalias !100 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !8, !noalias !100
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = load <2 x float>, ptr %i.dh, align 8, !tbaa !8, !noalias !103 ; 4 uses
  %i.ei = load <2 x float>, ptr %i.di, align 8, !tbaa !8, !noalias !103 ; 2 uses
  %i.ej = load <2 x float>, ptr %i.dj, align 8, !tbaa !8, !noalias !103 ; 3 uses
  %i.ek = load <2 x float>, ptr %i.dl, align 8, !tbaa !8, !noalias !103 ; 2 uses
  %i.el = shufflevector <2 x float> %i.ej, <2 x float> %i.eh, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float 0.000000e+00, i64 3
  %i.en = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eo = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.en, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ep = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eq = shufflevector <4 x float> %i.eo, <4 x float> %i.ep, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.er = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.es = insertelement <4 x float> %i.er, float 0.000000e+00, i64 3
  %i.et = shufflevector <2 x float> %i.eh, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.eu = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %i.eu, float 0.000000e+00, i64 3
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ex = load <2 x float>, ptr %i.ds, align 8, !tbaa !8, !noalias !103 ; 3 uses
  %i.ey = load <2 x float>, ptr %i.dn, align 4, !tbaa !8, !noalias !103 ; 2 uses
  %i.ez = load float, ptr %i.dq, align 8, !tbaa !8, !noalias !103
  %i.fa = load <2 x float>, ptr %i.dm, align 4, !tbaa !8, !noalias !103 ; 2 uses
  %i.fb = load float, ptr %i.dp, align 8, !tbaa !8, !noalias !103
  %i.fc = load <2 x float>, ptr %i.do, align 4, !tbaa !8, !noalias !103 ; 2 uses
  %i.fd = load float, ptr %i.dr, align 8, !tbaa !8, !noalias !103
  %i.fe = load <2 x float>, ptr %i.ee, align 8, !tbaa !8, !noalias !100
  %i.ff = load <2 x float>, ptr %i.dk, align 4, !tbaa !8, !noalias !103 ; 3 uses
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fi = load <2 x float>, ptr %i.dt, align 4, !tbaa !8, !noalias !103 ; 3 uses
  %i.fj = shufflevector <2 x float> %i.ff, <2 x float> %i.fi, <2 x i32> <i32 0, i32 2>
  %i.fk = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fj, %i.fl
  %i.fn = shufflevector <2 x float> %i.eh, <2 x float> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.fo = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fp, <2 x float> %i.fm)
  %i.fr = shufflevector <2 x float> %i.ff, <2 x float> %i.fi, <2 x i32> <i32 1, i32 3>
  %i.fs = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.ft, <2 x float> %i.fq)
  %i.fv = fadd <2 x float> %i.fe, %i.fu
  %i.fw = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x float> %i.eq, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fy = fmul <4 x float> %i.em, %i.fx
  %i.fz = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ga = shufflevector <4 x float> %i.es, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.et, <4 x float> %i.fy)
  %i.gc = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x float> %i.ev, <4 x float> %i.gc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.fh, <4 x float> %i.gb)
  %i.gf = shufflevector <2 x float> %i.ex, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.gg = shufflevector <2 x float> %i.ej, <2 x float> %i.ey, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gh = insertelement <4 x float> %i.gg, float 1.000000e+00, i64 3 ; 2 uses
  %i.gi = fmul <4 x float> %i.gf, %i.gh
  %i.gj = shufflevector <2 x float> %i.ei, <2 x float> %i.fa, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gk = insertelement <4 x float> %i.gj, float 0.000000e+00, i64 3 ; 2 uses
  %i.gl = shufflevector <2 x float> %i.ex, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.gl, <4 x float> %i.gi)
  %i.gn = shufflevector <2 x float> %i.ek, <2 x float> %i.fc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.go = insertelement <4 x float> %i.gn, float 0.000000e+00, i64 3 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gq, <4 x float> %i.gm)
  store <4 x float> %i.ge, ptr %3, align 16, !alias.scope !100
  store <4 x float> %i.gr, ptr %i.ew, align 16, !alias.scope !100
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gt = load <2 x float>, ptr %i.du, align 8, !tbaa !8, !noalias !103 ; 4 uses
  %i.gu = load float, ptr %i.dv, align 4, !tbaa !8, !noalias !103
  %i.gv = fmul float %i.gu, %i.eb
  %i.gw = extractelement <2 x float> %i.gt, i64 0
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.dz, float %i.gv)
  %i.gy = tail call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.ed, float %i.gx)
  %i.gz = fadd float %i.gy, %i.eg
  %.sroa.3.12.vec.insert.i.i174 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gz, i64 0
  %i.ha = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.hb = insertelement <4 x float> %i.ha, float 0.000000e+00, i64 3
  %i.hc = insertelement <4 x float> %i.hb, float %i.ez, i64 2
  %i.hd = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.he = shufflevector <4 x float> %i.gh, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hf = fmul <4 x float> %i.hc, %i.he
  %i.hg = insertelement <4 x float> %i.gk, float %i.fb, i64 2
  %i.hh = shufflevector <2 x float> %i.gt, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.hh, <4 x float> %i.hf)
  %i.hj = insertelement <4 x float> %i.go, float %i.fd, i64 2
  %i.hk = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dx, i64 0
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hj, <4 x float> %i.hl, <4 x float> %i.hi)
  store <4 x float> %i.hm, ptr %i.gs, align 16, !alias.scope !100
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  store <2 x float> %i.fv, ptr %i.hn, align 16, !alias.scope !100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i174, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !88, !alias.scope !100
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ho = load ptr, ptr %0, align 8, !tbaa !19
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = tail call noundef ptr %i.hq(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull align 4 dereferenceable(64) %3, float noundef %i.t)
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !99, !nonnull !68, !align !98 ; 9 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 668
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 684
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 44
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !8, !noalias !106 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.im = load float, ptr %i.il, align 8, !tbaa !8, !noalias !111 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 716
  %i.io = load float, ptr %i.in, align 4, !tbaa !8, !noalias !111 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.iq = load float, ptr %i.ip, align 8, !tbaa !8, !noalias !111 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.is = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %i.it = load float, ptr %i.is, align 8, !tbaa !8, !noalias !111
  %i.iu = load <2 x float>, ptr %i.hu, align 8, !tbaa !8, !noalias !106 ; 4 uses
  %i.iv = load <2 x float>, ptr %i.hv, align 8, !tbaa !8, !noalias !106 ; 2 uses
  %i.iw = load <2 x float>, ptr %i.hw, align 8, !tbaa !8, !noalias !106 ; 3 uses
  %i.ix = load <2 x float>, ptr %i.hy, align 8, !tbaa !8, !noalias !106 ; 2 uses
  %i.iy = shufflevector <2 x float> %i.iw, <2 x float> %i.iu, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.iz = insertelement <4 x float> %i.iy, float 0.000000e+00, i64 3
  %i.ja = shufflevector <2 x float> %i.iu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
end_hunk_0
