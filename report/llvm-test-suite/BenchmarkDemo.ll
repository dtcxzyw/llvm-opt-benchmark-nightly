Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/BenchmarkDemo?download=true
inline.NumInlined: 797
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_:bb.a
  %i.ef = fsub float %i.eb, %i.cb
  %i.eg = fmul float %i.bu, %i.ea                 ; 2 uses
  %i.eh = fadd float %i.bz, %i.eg
  %i.ei = fsub float 1.000000e+00, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %.sroa.23.1102.us, i64 1 ; 3 uses
  %i.el = fadd <2 x float> %i.ek, %i.dw
  %i.em = fmul <2 x float> %i.ek, %i.dw           ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 3>
  %i.eo = extractelement <2 x float> %i.em, i64 1
  %i.ep = fadd float %i.cd, %i.eo
  %i.eq = fadd float %i.ed, %i.cc
  %i.er = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.cd, i64 1
  %i.es = fsub <2 x float> %i.er, %i.en
  store <2 x float> %i.es, ptr %i.dq, align 8
  store float %i.eq, ptr %.sroa.7.0..sroa_idx.us, align 8
  store float %i.ep, ptr %i.dr, align 8
  store float %i.ei, ptr %.sroa.11.16..sroa_idx.us, align 4
  store float %i.ef, ptr %.sroa.13.16..sroa_idx.us, align 8
  store float %i.ee, ptr %i.ds, align 8
  store float %i.ec, ptr %.sroa.18.32..sroa_idx.us, align 4
  store float %i.dz, ptr %.sroa.19.32..sroa_idx.us, align 8
  %i.et = load ptr, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 136
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(228) %i.et, ptr noundef nonnull %i.bp), !inline_history !62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ex = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !7 ; 3 uses
  %i.ey = fmul float %i.ex, 0.000000e+00          ; 3 uses
  %i.ez = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !7 ; 2 uses
  %i.fa = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <2 x float> %i.bj, %i.fb
  %i.fd = fmul <2 x float> %i.bi, %i.fb
  %i.fe = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ff = insertelement <2 x float> poison, float %i.ey, i64 0 ; 2 uses
  %i.fg = insertelement <2 x float> %i.ff, float %i.ex, i64 1 ; 3 uses
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fg, <2 x float> %i.fc)
  %i.fi = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fi, <2 x float> %i.fd)
  %i.fk = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.fk, <2 x float> %i.fh)
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.fg, <2 x float> %i.fj)
  %i.fn = insertelement <2 x float> %i.ct, float %i.cn, i64 0
  %i.fo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fi, <2 x float> %i.fl) ; 3 uses
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.fk, <2 x float> %i.fm) ; 5 uses
  %i.fq = fneg float %i.ey
  %i.fr = fmul float %i.bs, %i.fq
  %i.fs = call float @llvm.fmuladd.f32(float %.sroa.23.1102.us, float %i.ez, float %i.fr)
  %i.ft = call float @llvm.fmuladd.f32(float %i.cj, float %i.ex, float %i.fs)
  %i.fu = call float @llvm.fmuladd.f32(float %i.cn, float %i.ey, float %i.ft) ; 3 uses
  %i.fv = add nuw nsw i32 %.0103.us, 1            ; 2 uses
  %exitcond121.not = icmp eq i32 %i.fv, %3
  br i1 %exitcond121.not, label %._crit_edge.us, label %bb.j

._crit_edge.us:                                   ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us
  %i.fw = load float, ptr %i.b, align 4, !tbaa !33
  %i.fx = call float @llvm.fmuladd.f32(float %i.fw, float 2.000000e+00, float %.094107.us)
  %i.fy = shufflevector <2 x float> %i.fp, <2 x float> %i.fo, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fz = fneg <2 x float> %i.fy                  ; 3 uses
  %i.ga = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 3 uses
  %i.gb = fmul float %i.ga, 0.000000e+00          ; 3 uses
  %i.gc = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 3 uses
  %i.gd = extractelement <2 x float> %i.fo, i64 0 ; 2 uses
  %i.ge = fmul float %i.gd, %i.gc
  %i.gf = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x float> %i.fp, %i.gg           ; 2 uses
  %i.gi = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gk = insertelement <2 x float> poison, float %i.gb, i64 0 ; 2 uses
  %i.gl = insertelement <2 x float> %i.gk, float %i.ga, i64 1 ; 3 uses
  %i.gm = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gn = insertelement <2 x float> %i.gm, float %i.ge, i64 0
  %i.go = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gl, <2 x float> %i.gn)
  %i.gp = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gp, <2 x float> %i.gh)
  %i.gr = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.gr, <2 x float> %i.go)
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.gl, <2 x float> %i.gq)
  %i.gu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.gp, <2 x float> %i.gs)
  %i.gv = extractelement <2 x float> %i.fp, i64 0
  %i.gw = fneg float %i.gv                        ; 2 uses
  %i.gx = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x float> %i.gx, float %i.gw, i64 1
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gr, <2 x float> %i.gt)
  %i.ha = fneg float %i.gb
  %i.hb = fmul float %i.gd, %i.ha
  %i.hc = call float @llvm.fmuladd.f32(float %i.fu, float %i.gc, float %i.hb)
  %i.hd = call float @llvm.fmuladd.f32(float %i.gw, float %i.ga, float %i.hc)
  %i.he = extractelement <2 x float> %i.fz, i64 0
  %i.hf = call float @llvm.fmuladd.f32(float %i.he, float %i.gb, float %i.hd)
  %i.hg = add nuw nsw i32 %.023112.us, 1          ; 2 uses
  %exitcond122.not = icmp eq i32 %i.hg, %2
  br i1 %exitcond122.not, label %._crit_edge113, label %.preheader.us

.split.us:                                        ; preds = %bb.j
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bp)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.l

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.hi = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hj = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hk = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hl = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hm = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hn = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.ho = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hp = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hq = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hr = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hs = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.ht = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hu = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hv = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hw = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hx = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge113.loopexit143.unr-lcssa, label %.preheader

._crit_edge113.loopexit143.unr-lcssa:             ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge113, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge113.loopexit143.unr-lcssa, %.preheader.preheader
  %lcmp.mod144 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod144)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %epil.iter = phi i32 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.hy = call noundef float @sinf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %i.hz = call noundef float @cosf(float noundef %i.az) #21, !tbaa !7 ; 0 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge113, label %.preheader.epil, !llvm.loop !113

._crit_edge113:                                   ; preds = %._crit_edge113.loopexit143.unr-lcssa, %.preheader.epil, %._crit_edge.us, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.k:                                             ; preds = %bb.a
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ia, %bb.k ], [ %.pn8.i, %bb.g ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.a)
          to label %common.resume unwind label %bb.m

common.resume:                                    ; preds = %.body, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.hh, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

bb.l:                                             ; preds = %.split.us
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #23
  unreachable

bb.m:                                             ; preds = %.body
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  tail call void @__clang_call_terminate(ptr %i.ie) #23
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN7RagDollC2EP15btDynamicsWorldRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 10 uses
  %5 = alloca %class.btTransform, align 4         ; 10 uses
  %6 = alloca %class.btTransform, align 4         ; 10 uses
  %7 = alloca %class.btTransform, align 4         ; 10 uses
  %8 = alloca %class.btTransform, align 4         ; 10 uses
  %9 = alloca %class.btTransform, align 4         ; 10 uses
  %10 = alloca %class.btTransform, align 4        ; 10 uses
  %11 = alloca %class.btTransform, align 16       ; 9 uses
  %12 = alloca %class.btTransform, align 16       ; 9 uses
  %13 = alloca %class.btTransform, align 16       ; 8 uses
  %14 = alloca %class.btTransform, align 16       ; 8 uses
  %15 = alloca %class.btTransform, align 16       ; 31 uses
  %16 = alloca %class.btTransform, align 16       ; 27 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7RagDoll, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !68
  %i.b = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.c = fmul float %3, 1.500000e-01              ; 5 uses
  %17 = fmul float %3, 2.000000e-01               ; 5 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.b, float noundef %i.c, float noundef %17)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !39
  %i.e = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.f = fmul float %3, 2.800000e-01
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.e, float noundef %i.c, float noundef %i.f)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !39
  %i.h = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.i = fmul float %3, 1.000000e-01
  %i.j = fmul float %3, 5.000000e-02              ; 5 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.h, float noundef %i.i, float noundef %i.j)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.k, align 8, !tbaa !39
  %i.l = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.m = fmul float %3, 7.000000e-02              ; 2 uses
  %i.n = fmul float %3, 4.500000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.l, float noundef %i.m, float noundef %i.n)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !39
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.q = fmul float %3, 3.700000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.p, float noundef %i.j, float noundef %i.q)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !39
  %i.s = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.s, float noundef %i.m, float noundef %i.n)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !39
  %i.u = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.u, float noundef %i.j, float noundef %i.q)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !39
  %i.w = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.x = fmul float %3, 3.300000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.w, float noundef %i.j, float noundef %i.x)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !39
  %i.z = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.aa = fmul float %3, 4.000000e-02             ; 2 uses
  %i.ab = fmul float %3, 2.500000e-01             ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.z, float noundef %i.aa, float noundef %i.ab)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !39
  %i.ad = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.ad, float noundef %i.j, float noundef %i.x)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !39
  %i.af = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.af, float noundef %i.aa, float noundef %i.ab)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !39
  %.sroa.131.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.131.48.copyload = load float, ptr %.sroa.131.48..sroa_idx, align 4 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ah = load <2 x float>, ptr %2, align 4       ; 11 uses
  %18 = insertelement <4 x float> poison, float %3, i64 0 ; 2 uses
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ai = fmul <4 x float> %19, <float 0.000000e+00, float 0.000000e+00, float -1.800000e-01, float -1.800000e-01> ; 14 uses
  %i.aj = extractelement <4 x float> %i.ai, i64 0 ; 5 uses
  %i.ak = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 9 uses
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> zeroinitializer ; 11 uses
  store float 1.000000e+00, ptr %4, align 4, !alias.scope !136
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i, align 4, !alias.scope !136
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i, align 4, !alias.scope !136
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.ap = fmul float %3, 1.200000e+00             ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ar = shufflevector <4 x float> %18, <4 x float> %i.ai, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.as = insertelement <4 x float> %i.ar, float %i.ap, i64 2
  %i.at = fmul float %i.ap, 0.000000e+00          ; 2 uses
  %i.au = insertelement <4 x float> %i.as, float %i.at, i64 3
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> zeroinitializer, <4 x float> %i.au) ; 3 uses
  %i.aw = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = shufflevector <4 x float> %i.ai, <4 x float> %i.av, <4 x i32> <i32 0, i32 poison, i32 5, i32 7>
  %i.ay = insertelement <4 x float> %i.ax, float %i.at, i64 1
  %i.az = fadd <4 x float> %i.aw, %i.ay           ; 4 uses
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.av, <2 x i32> <i32 0, i32 4>
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.ba)
  %i.bc = fadd <2 x float> %i.bb, %i.ah
  %i.bd = extractelement <4 x float> %i.az, i64 2
  %i.be = fadd float %i.bd, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i36 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  store <2 x float> %i.bc, ptr %i.am, align 4, !alias.scope !136
  store <2 x float> %.sroa.3.12.vec.insert.i.i36, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !46, !alias.scope !136
  %i.bf = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef %i.an)
  store ptr %i.bf, ptr %i.ao, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bg = shufflevector <4 x float> %i.az, <4 x float> %i.av, <2 x i32> <i32 1, i32 6>
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.bg)
  %i.bi = fadd <2 x float> %i.bh, %i.ah
  %i.bj = extractelement <4 x float> %i.az, i64 3
  %i.bk = fadd float %i.bj, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i44 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bk, i64 0
  store float 1.000000e+00, ptr %5, align 4, !alias.scope !137
  %.sroa.44.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.9.16..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %5, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i45, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i48, align 4, !alias.scope !137
  %.sroa.10.16..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.15.32..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i49, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i52, align 4, !alias.scope !137
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <2 x float> %i.bi, ptr %i.bl, align 4, !alias.scope !137
  %.sroa.4.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i44, ptr %.sroa.4.0..sroa_idx.i54, align 4, !tbaa !46, !alias.scope !137
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.bn = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bp = fmul float %3, 1.600000e+00             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bq = fmul float %i.bp, 0.000000e+00          ; 2 uses
  %i.br = fadd float %i.aj, %i.bq
  %i.bs = insertelement <4 x float> poison, float %i.br, i64 0
  store float 1.000000e+00, ptr %6, align 4, !alias.scope !138
  %.sroa.44.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.9.16..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %6, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i63, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i66, align 4, !alias.scope !138
  %.sroa.10.16..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.15.32..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i67, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i70, align 4, !alias.scope !138
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.4.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bw = fmul float %3, 6.500000e-01             ; 3 uses
  %20 = fmul float %i.bw, 0.000000e+00            ; 4 uses
  %i.bx = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.bq, i64 1
  %21 = insertelement <4 x float> %i.by, float %i.bw, i64 2
  %22 = insertelement <4 x float> %21, float %20, i64 3
  %23 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> zeroinitializer, <4 x float> %22) ; 4 uses
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %25 = shufflevector <4 x float> %i.bs, <4 x float> %23, <2 x i32> <i32 0, i32 4>
  %26 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %25)
  %27 = fadd <2 x float> %26, %i.ah
  %shift = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ai, %shift
  %28 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %29 = fadd float %28, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i62 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %29, i64 0
  store <2 x float> %27, ptr %i.bt, align 4, !alias.scope !138
  store <2 x float> %.sroa.3.12.vec.insert.i.i62, ptr %.sroa.4.0..sroa_idx.i72, align 4, !tbaa !46, !alias.scope !138
  %30 = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef %i.bu)
  store ptr %30, ptr %i.bv, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %shift956 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop957 = fadd <4 x float> %i.ai, %shift956
  %i.bz = extractelement <4 x float> %foldExtExtBinop957, i64 0
  %31 = fadd float %i.bz, %.sroa.131.48.copyload
  %i.ca = insertelement <2 x float> <float poison, float 0.000000e+00>, float %31, i64 0
  store float 1.000000e+00, ptr %7, align 4, !alias.scope !139
  %.sroa.44.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.9.16..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %7, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i81, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i84, align 4, !alias.scope !139
  %.sroa.10.16..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.15.32..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i85, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i88, align 4, !alias.scope !139
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.4.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.ca, ptr %.sroa.4.0..sroa_idx.i90, align 4, !tbaa !46, !alias.scope !139
  %33 = load ptr, ptr %i.o, align 8, !tbaa !39
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.sroa.44.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.9.16..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sroa.10.16..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.15.32..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %35 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.4.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.44.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.9.16..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.sroa.10.16..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.15.32..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %37 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %39 = fmul float %17, 0.000000e+00              ; 4 uses
  %40 = extractelement <4 x float> %i.ai, i64 2   ; 3 uses
  %41 = fadd float %40, %20
  %42 = insertelement <2 x float> %24, float %41, i64 0
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %42)
  %i.cc = fadd <2 x float> %i.cb, %i.ah
  store <2 x float> %i.cc, ptr %32, align 4, !alias.scope !139
  %i.cd = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef %33)
  store ptr %i.cd, ptr %34, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store float 1.000000e+00, ptr %8, align 4, !alias.scope !140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i99, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i102, align 4, !alias.scope !140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i103, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i106, align 4, !alias.scope !140
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !39
  %43 = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %44 = insertelement <2 x float> %43, float %3, i64 1
  %45 = fmul <2 x float> %44, <float 1.000000e+00, float 1.800000e-01> ; 3 uses
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %47 = extractelement <2 x float> %45, i64 1     ; 4 uses
  %48 = insertelement <4 x float> poison, float %17, i64 0
  %49 = insertelement <4 x float> %48, float %i.bw, i64 1
  %50 = insertelement <4 x float> %49, float %39, i64 2
  %51 = insertelement <4 x float> %50, float %20, i64 3
  %52 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %46, <4 x float> zeroinitializer, <4 x float> %51) ; 3 uses
  %53 = shufflevector <4 x float> %46, <4 x float> %i.ai, <4 x i32> <i32 1, i32 4, i32 6, i32 4>
  %54 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 2>
  %i.cf = insertelement <4 x float> %54, float %20, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %39, i64 2
  %55 = fadd <4 x float> %53, %i.cg               ; 4 uses
  %56 = shufflevector <4 x float> %55, <4 x float> %52, <2 x i32> <i32 0, i32 5>
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %56)
  %i.ci = fadd <2 x float> %i.ch, %i.ah
  %i.cj = extractelement <4 x float> %55, i64 1
  %i.ck = fadd float %i.cj, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i116 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ck, i64 0
  %57 = shufflevector <4 x float> %55, <4 x float> %52, <2 x i32> <i32 2, i32 4>
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %57)
  %i.cm = fadd <2 x float> %i.cl, %i.ah
  %i.cn = extractelement <4 x float> %55, i64 3
  %i.co = fadd float %i.cn, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i98 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  store <2 x float> %i.cm, ptr %35, align 4, !alias.scope !140
  store <2 x float> %.sroa.3.12.vec.insert.i.i98, ptr %.sroa.4.0..sroa_idx.i108, align 4, !tbaa !46, !alias.scope !140
  %i.cp = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef %i.ce)
  store ptr %i.cp, ptr %36, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store float 1.000000e+00, ptr %9, align 4, !alias.scope !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i117, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i120, align 4, !alias.scope !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i121, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i124, align 4, !alias.scope !141
  store <2 x float> %i.ci, ptr %37, align 4, !alias.scope !141
  store <2 x float> %.sroa.3.12.vec.insert.i.i116, ptr %.sroa.4.0..sroa_idx.i126, align 4, !tbaa !46, !alias.scope !141
  %i.cq = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.cr = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef %i.cq)
  store ptr %i.cr, ptr %38, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %58 = fadd float %47, %39
  %59 = call float @llvm.fmuladd.f32(float %47, float 0.000000e+00, float %17)
  %60 = insertelement <2 x float> poison, float %58, i64 0
  %i.cs = insertelement <2 x float> %60, float %59, i64 1
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.cs)
  %i.cu = fadd <2 x float> %i.ct, %i.ah
  %61 = call float @llvm.fmuladd.f32(float %47, float 0.000000e+00, float %39)
  %62 = fadd float %i.aj, %61
  %63 = fadd float %62, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i134 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %63, i64 0
  store float 1.000000e+00, ptr %10, align 4, !alias.scope !142
  %.sroa.44.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.9.16..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %10, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.44.0..sroa_idx.i135, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.16..sroa_idx.i138, align 4, !alias.scope !142
  %.sroa.10.16..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.15.32..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.16..sroa_idx.i139, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i142, align 4, !alias.scope !142
  %64 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store <2 x float> %i.cu, ptr %64, align 4, !alias.scope !142
  %.sroa.4.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %10, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i134, ptr %.sroa.4.0..sroa_idx.i144, align 4, !tbaa !46, !alias.scope !142
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.cw = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef %i.cv)
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.cw, ptr %65, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %66 = fmul float %3, -3.500000e-01              ; 3 uses
  %67 = fmul float %3, 1.450000e+00               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %68 = fmul float %67, 0.000000e+00              ; 6 uses
  %69 = fadd float %66, %68
  %i.cx = call float @llvm.fmuladd.f32(float %66, float 0.000000e+00, float %67)
  %70 = insertelement <2 x float> poison, float %69, i64 0
  %i.cy = insertelement <2 x float> %70, float %i.cx, i64 1
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.cy)
  %i.da = fadd <2 x float> %i.cz, %i.ah
  %71 = call float @llvm.fmuladd.f32(float %66, float 0.000000e+00, float %68)
  %72 = fadd float %i.aj, %71
  %i.db = fadd float %72, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %11, align 16, !alias.scope !143
  %73 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <2 x float> <float 1.000000e+00, float f0xB33BBD2E>, ptr %73, align 16, !alias.scope !143
  %.sroa.10.16..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.15.32..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.16..sroa_idx.i157, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i160, align 8, !alias.scope !143
  %74 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store <2 x float> %i.da, ptr %74, align 16, !alias.scope !143
  %.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %11, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i152, ptr %.sroa.4.0..sroa_idx.i162, align 8, !tbaa !46, !alias.scope !143
  %i.dc = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.dd = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %11, ptr noundef %i.dc)
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.dd, ptr %75, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %76 = fmul <4 x float> %19, <float f0xBF333333, float f0xBF333333, float 3.500000e-01, float 3.500000e-01> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %12, align 16, !alias.scope !144
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x float> <float 1.000000e+00, float f0xB33BBD2E>, ptr %i.de, align 16, !alias.scope !144
  %.sroa.10.16..sroa_idx.i175 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.15.32..sroa_idx.i178 = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.16..sroa_idx.i175, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.15.32..sroa_idx.i178, align 8, !alias.scope !144
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.sroa.4.0..sroa_idx.i180 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.dg = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %77 = insertelement <4 x float> poison, float %67, i64 0
  %78 = insertelement <4 x float> %77, float %68, i64 1
  %79 = shufflevector <4 x float> %78, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %80 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %76, <4 x float> zeroinitializer, <4 x float> %79) ; 3 uses
  %81 = shufflevector <4 x float> %76, <4 x float> %i.ai, <4 x i32> <i32 0, i32 2, i32 4, i32 4>
  %82 = insertelement <4 x float> poison, float %68, i64 0
  %83 = shufflevector <4 x float> %82, <4 x float> %80, <4 x i32> <i32 0, i32 0, i32 5, i32 7>
  %84 = fadd <4 x float> %81, %83                 ; 4 uses
  %85 = shufflevector <4 x float> %84, <4 x float> %80, <2 x i32> <i32 0, i32 4>
  %86 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %85)
  %87 = fadd <2 x float> %86, %i.ah
  %i.di = extractelement <4 x float> %84, i64 2
  %i.dj = fadd float %i.di, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i170 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dj, i64 0
  store <2 x float> %87, ptr %i.df, align 16, !alias.scope !144
  store <2 x float> %.sroa.3.12.vec.insert.i.i170, ptr %.sroa.4.0..sroa_idx.i180, align 8, !tbaa !46, !alias.scope !144
  %i.dk = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %12, ptr noundef %i.dg)
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %88 = shufflevector <4 x float> %84, <4 x float> %80, <2 x i32> <i32 1, i32 6>
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %88)
  %i.dm = fadd <2 x float> %i.dl, %i.ah
  %i.dn = extractelement <4 x float> %84, i64 3
  %i.do = fadd float %i.dn, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i188 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.do, i64 0
  store <4 x float> <float f0xB33BBD2E, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %13, align 16, !alias.scope !145
  %89 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <4 x float> <float -1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %89, align 16, !alias.scope !145
  %90 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %90, align 16, !alias.scope !145
  %91 = getelementptr inbounds nuw i8, ptr %13, i64 48
  store <2 x float> %i.dm, ptr %91, align 16, !alias.scope !145
  %.sroa.4.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %13, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i188, ptr %.sroa.4.0..sroa_idx.i198, align 8, !tbaa !46, !alias.scope !145
  %i.dp = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.dq = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %13, ptr noundef %i.dp)
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.dq, ptr %92, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %93 = fmul float %3, f0x3F333333                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %94 = fadd float %93, %68
  %i.dr = call float @llvm.fmuladd.f32(float %93, float 0.000000e+00, float %67)
  %95 = insertelement <2 x float> poison, float %94, i64 0
  %i.ds = insertelement <2 x float> %95, float %i.dr, i64 1
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> zeroinitializer, <2 x float> %i.ds)
  %i.du = fadd <2 x float> %i.dt, %i.ah
  %i.dv = call float @llvm.fmuladd.f32(float %93, float 0.000000e+00, float %68)
  %i.dw = fadd float %i.aj, %i.dv
  %i.dx = fadd float %i.dw, %.sroa.131.48.copyload
  %.sroa.3.12.vec.insert.i.i206 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dx, i64 0
  store <4 x float> <float f0xB33BBD2E, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %14, align 16, !alias.scope !146
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <4 x float> <float -1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.dy, align 16, !alias.scope !146
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.dz, align 16, !alias.scope !146
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 48
  store <2 x float> %i.du, ptr %i.ea, align 16, !alias.scope !146
  %.sroa.4.0..sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %14, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i206, ptr %.sroa.4.0..sroa_idx.i216, align 8, !tbaa !46, !alias.scope !146
  %i.eb = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.ec = call noundef ptr @_ZN7RagDoll20localCreateRigidBodyEfRK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(272) %0, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(64) %14, ptr noundef %i.eb)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ee = load ptr, ptr %i.ao, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.ee, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.ef = load ptr, ptr %i.ao, align 8, !tbaa !70 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 232
  store float 8.000000e-01, ptr %i.eg, align 8, !tbaa !147
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.eh, align 8, !tbaa !33
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.ej, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !70 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 232
  store float 8.000000e-01, ptr %i.el, align 8, !tbaa !147
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.em, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.eo, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !70 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 232
  store float 8.000000e-01, ptr %i.eq, align 8, !tbaa !147
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.er, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.et, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !70 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 232
  store float 8.000000e-01, ptr %i.ev, align 8, !tbaa !147
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.ew, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.ey, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !70 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  store float 8.000000e-01, ptr %i.fa, align 8, !tbaa !147
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.fb, align 8, !tbaa !33
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.fd, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !70 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 232
  store float 8.000000e-01, ptr %i.ff, align 8, !tbaa !147
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.fg, align 8, !tbaa !33
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.fi, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !70 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 232
  store float 8.000000e-01, ptr %i.fk, align 8, !tbaa !147
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.fl, align 8, !tbaa !33
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.fn, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !70 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 232
  store float 8.000000e-01, ptr %i.fp, align 8, !tbaa !147
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.fq, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.fs, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !70 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 232
  store float 8.000000e-01, ptr %i.fu, align 8, !tbaa !147
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.fv, align 8, !tbaa !33
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.fx, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !70 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 232
  store float 8.000000e-01, ptr %i.fz, align 8, !tbaa !147
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.ga, align 8, !tbaa !33
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !70
  call void @_ZN11btRigidBody10setDampingEff(ptr noundef nonnull align 8 dereferenceable(564) %i.gc, float noundef 5.000000e-02, float noundef 8.500000e-01)
  %i.gd = load ptr, ptr %i.gb, align 8, !tbaa !70 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 232
  store float 8.000000e-01, ptr %i.ge, align 8, !tbaa !147
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 504
  store <2 x float> <float 1.600000e+00, float 2.500000e+00>, ptr %i.gf, align 8, !tbaa !33
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0 ; 20 uses
  %.sroa.0.0.vec.insert.i.i73 = insertelement <2 x float> poison, float %40, i64 0
  %.sroa.0.0.vec.insert.i.i109 = insertelement <2 x float> poison, float %47, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.gi = getelementptr inbounds nuw i8, ptr %15, i64 44
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 9 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %15, i64 36
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  %.sroa.0.4.vec.insert.i.i218 = insertelement <2 x float> %i.ak, float %i.c, i64 1
  %i.gm = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 10 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i218, ptr %i.gm, align 16
  %.sroa.4517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 10 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 10 uses
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 10 uses
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  %i.gp = fmul float %3, -1.500000e-01
  %.sroa.0.4.vec.insert.i.i223 = insertelement <2 x float> %i.ak, float %i.gp, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 10 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i223, ptr %i.gq, align 16
  %.sroa.4508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 10 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.gr = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.gs = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.gt = load ptr, ptr %i.bo, align 8, !tbaa !70
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.gr, ptr noundef nonnull align 8 dereferenceable(564) %i.gs, ptr noundef nonnull align 8 dereferenceable(564) %i.gt, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit unwind label %bb.ac

bb.m:                                             ; preds = %bb.a
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.n:                                             ; preds = %bb.b
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.e)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.o:                                             ; preds = %bb.c
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.p:                                             ; preds = %bb.d
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.l)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.q:                                             ; preds = %bb.e
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.r:                                             ; preds = %bb.f
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.s:                                             ; preds = %bb.g
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.u)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.t:                                             ; preds = %bb.h
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.u:                                             ; preds = %bb.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.v:                                             ; preds = %bb.j
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

bb.w:                                             ; preds = %bb.k
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.af)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.an

_ZN17btHingeConstraint8setLimitEfffff.exit:       ; preds = %bb.l
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 752
  store float f0x3FC90FDB, ptr %i.hf, align 8, !tbaa !151
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float f0xBF490FDB>, ptr %i.hg, align 8, !tbaa !33
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.gr, ptr %i.hh, align 8, !tbaa !74
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !13
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 80
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(228) %i.hi, ptr noundef nonnull %i.gr, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  store <4 x float> <float 1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  %i.hm = fmul float %3, 3.000000e-01
  %.sroa.0.4.vec.insert.i.i238 = insertelement <2 x float> %i.ak, float %i.hm, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i238, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float 1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  %i.hn = fmul float %3, -1.400000e-01
  %.sroa.0.4.vec.insert.i.i243 = insertelement <2 x float> %i.ak, float %i.hn, i64 1 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i243, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.ho = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.hp = load ptr, ptr %i.bo, align 8, !tbaa !70
  %i.hq = load ptr, ptr %i.bv, align 8, !tbaa !70
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.ho, ptr noundef nonnull align 8 dereferenceable(564) %i.hp, ptr noundef nonnull align 8 dereferenceable(564) %i.hq, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 492
  store <2 x float> splat (float f0x3F490FDB), ptr %i.hr, align 4, !tbaa !33
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 500
  store float f0x3FC90FDB, ptr %i.hs, align 4, !tbaa !155
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.ht, align 4, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 484
  store float 1.000000e+00, ptr %i.hu, align 4, !tbaa !156
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ho, ptr %i.hv, align 8, !tbaa !74
  %i.hw = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(228) %i.hw, ptr noundef nonnull %i.ho, i1 noundef zeroext true)
  store <4 x float> <float f0xBF3504F4, float f0xBF3504F2, float 0.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  store <4 x float> <float f0x3F3504F2, float f0xBF3504F4, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  %i.ia = fmul float %3, -1.000000e-01            ; 2 uses
  %.sroa.0.4.vec.insert.i.i248 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i73, float %i.ia, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i248, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xBF3504F4, float f0xBF3504F2, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float f0x3F3504F2, float f0xBF3504F4, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  %i.ib = fmul float %3, 2.250000e-01
  %.sroa.0.4.vec.insert.i.i253 = insertelement <2 x float> %i.ak, float %i.ib, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i253, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.ic = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.id = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.ie = load ptr, ptr %34, align 8, !tbaa !70
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.ic, ptr noundef nonnull align 8 dereferenceable(564) %i.id, ptr noundef nonnull align 8 dereferenceable(564) %i.ie, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 492
  store <2 x float> splat (float f0x3F490FDB), ptr %i.if, align 4, !tbaa !33
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 500
  store float 0.000000e+00, ptr %i.ig, align 4, !tbaa !155
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.ih, align 4, !tbaa !33
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 484
  store float 1.000000e+00, ptr %i.ii, align 4, !tbaa !156
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ic, ptr %i.ij, align 8, !tbaa !74
  %i.ik = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !13
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(228) %i.ik, ptr noundef nonnull %i.ic, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  %i.io = fmul float %3, -2.250000e-01
  %.sroa.0.4.vec.insert.i.i258 = insertelement <2 x float> %i.ak, float %i.io, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i258, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  %i.ip = fmul float %3, 1.850000e-01
  %.sroa.0.4.vec.insert.i.i263 = insertelement <2 x float> %i.ak, float %i.ip, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i263, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.iq = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.ir = load ptr, ptr %34, align 8, !tbaa !70
  %i.is = load ptr, ptr %36, align 8, !tbaa !70
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.iq, ptr noundef nonnull align 8 dereferenceable(564) %i.ir, ptr noundef nonnull align 8 dereferenceable(564) %i.is, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit270 unwind label %bb.af

_ZN17btHingeConstraint8setLimitEfffff.exit270:    ; preds = %bb.y
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 752
  store float f0x3FC90FDB, ptr %i.it, align 8, !tbaa !151
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.iu, align 8, !tbaa !33
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.iq, ptr %i.iv, align 8, !tbaa !74
  %i.iw = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !13
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(228) %i.iw, ptr noundef nonnull %i.iq, i1 noundef zeroext true)
  store <4 x float> <float f0x3F3504F3, float f0xBF3504F3, float 0.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  store <4 x float> <float f0x3F3504F3, float f0x3F3504F3, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  %.sroa.0.4.vec.insert.i.i272 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i109, float %i.ia, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i272, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0x3F3504F3, float f0xBF3504F3, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float f0x3F3504F3, float f0x3F3504F3, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  store <2 x float> %.sroa.0.4.vec.insert.i.i253, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.ja = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.jb = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.jc = load ptr, ptr %38, align 8, !tbaa !70
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.ja, ptr noundef nonnull align 8 dereferenceable(564) %i.jb, ptr noundef nonnull align 8 dereferenceable(564) %i.jc, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit270
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 492
  store <2 x float> splat (float f0x3F490FDB), ptr %i.jd, align 4, !tbaa !33
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 500
  store float 0.000000e+00, ptr %i.je, align 4, !tbaa !155
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.jf, align 4, !tbaa !33
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 484
  store float 1.000000e+00, ptr %i.jg, align 4, !tbaa !156
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ja, ptr %i.jh, align 8, !tbaa !74
  %i.ji = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 80
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(228) %i.ji, ptr noundef nonnull %i.ja, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  store <2 x float> %.sroa.0.4.vec.insert.i.i258, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  store <2 x float> %.sroa.0.4.vec.insert.i.i263, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.jm = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.jn = load ptr, ptr %38, align 8, !tbaa !70
  %i.jo = load ptr, ptr %65, align 8, !tbaa !70
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.jm, ptr noundef nonnull align 8 dereferenceable(564) %i.jn, ptr noundef nonnull align 8 dereferenceable(564) %i.jo, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit294 unwind label %bb.ah

_ZN17btHingeConstraint8setLimitEfffff.exit294:    ; preds = %bb.z
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 752
  store float f0x3FC90FDB, ptr %i.jp, align 8, !tbaa !151
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.jq, align 8, !tbaa !33
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.jm, ptr %i.jr, align 8, !tbaa !74
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !13
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 80
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(228) %i.js, ptr noundef nonnull %i.jm, i1 noundef zeroext true)
  store <4 x float> <float -1.000000e+00, float f0x33BBBD2E, float -0.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  store <4 x float> <float f0xB3BBBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  %i.jw = fmul float %3, -2.000000e-01
  %.sroa.0.0.vec.insert.i.i295 = insertelement <2 x float> poison, float %i.jw, i64 0
  %.sroa.0.4.vec.insert.i.i296 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i295, float %i.c, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i296, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float 1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  %.sroa.0.4.vec.insert.i.i301 = insertelement <2 x float> %i.ak, float %40, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i301, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.jx = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.jy = load ptr, ptr %i.bo, align 8, !tbaa !70
  %i.jz = load ptr, ptr %75, align 8, !tbaa !70
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.jx, ptr noundef nonnull align 8 dereferenceable(564) %i.jy, ptr noundef nonnull align 8 dereferenceable(564) %i.jz, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit294
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 492
  store <2 x float> splat (float f0x3FC90FDB), ptr %i.ka, align 4, !tbaa !33
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 500
  store float 0.000000e+00, ptr %i.kb, align 4, !tbaa !155
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.kc, align 4, !tbaa !33
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 484
  store float 1.000000e+00, ptr %i.kd, align 4, !tbaa !156
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.jx, ptr %i.ke, align 8, !tbaa !74
  %i.kf = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 80
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(228) %i.kf, ptr noundef nonnull %i.jx, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  %.sroa.0.4.vec.insert.i.i306 = shufflevector <2 x float> %i.ak, <2 x float> %45, <2 x i32> <i32 0, i32 3> ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i306, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  store <2 x float> %.sroa.0.4.vec.insert.i.i243, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.kj = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.kk = load ptr, ptr %75, align 8, !tbaa !70
  %i.kl = load ptr, ptr %i.dh, align 8, !tbaa !70
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.kj, ptr noundef nonnull align 8 dereferenceable(564) %i.kk, ptr noundef nonnull align 8 dereferenceable(564) %i.kl, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit318 unwind label %bb.aj

_ZN17btHingeConstraint8setLimitEfffff.exit318:    ; preds = %bb.aa
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 752
  store float 0.000000e+00, ptr %i.km, align 8, !tbaa !151
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float f0xBFC90FDB>, ptr %i.kn, align 8, !tbaa !33
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.kj, ptr %i.ko, align 8, !tbaa !74
  %i.kp = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !13
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 80
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(228) %i.kp, ptr noundef nonnull %i.kj, i1 noundef zeroext true)
  store float 1.000000e+00, ptr %15, align 16, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gg, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>, ptr %i.gh, align 4, !tbaa !33
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.gl, align 4, !tbaa !33
  store float 0.000000e+00, ptr %i.gi, align 4, !tbaa !33
  %.sroa.0.0.vec.insert.i.i319 = insertelement <2 x float> poison, float %17, i64 0
  %.sroa.0.4.vec.insert.i.i320 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i319, float %i.c, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i320, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xB33BBD2E, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float 1.000000e+00, float f0xB33BBD2E, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  store <2 x float> %.sroa.0.4.vec.insert.i.i301, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.kt = call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 8 uses
  %i.ku = load ptr, ptr %i.bo, align 8, !tbaa !70
  %i.kv = load ptr, ptr %92, align 8, !tbaa !70
  invoke void @_ZN21btConeTwistConstraintC1ER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(640) %i.kt, ptr noundef nonnull align 8 dereferenceable(564) %i.ku, ptr noundef nonnull align 8 dereferenceable(564) %i.kv, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit318
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 492
  store <2 x float> splat (float f0x3FC90FDB), ptr %i.kw, align 4, !tbaa !33
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 500
  store float 0.000000e+00, ptr %i.kx, align 4, !tbaa !155
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 476
  store <2 x float> <float 1.000000e+00, float 3.000000e-01>, ptr %i.ky, align 4, !tbaa !33
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 484
  store float 1.000000e+00, ptr %i.kz, align 4, !tbaa !156
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.kt, ptr %i.la, align 8, !tbaa !74
  %i.lb = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !13
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(228) %i.lb, ptr noundef nonnull %i.kt, i1 noundef zeroext true)
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 16, !tbaa !33
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.gk, align 16, !tbaa !33
  store <2 x float> %.sroa.0.4.vec.insert.i.i306, ptr %i.gm, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4517.0..sroa_idx, align 8, !tbaa !46
  store <4 x float> <float f0xB33BBD2E, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %16, align 16, !tbaa !33
  store <4 x float> <float -0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gn, align 16, !tbaa !33
  store <4 x float> <float -1.000000e+00, float -0.000000e+00, float f0xB33BBD2E, float 0.000000e+00>, ptr %i.go, align 16, !tbaa !33
  store <2 x float> %.sroa.0.4.vec.insert.i.i243, ptr %i.gq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4508.0..sroa_idx, align 8, !tbaa !46
  %i.lf = call noalias noundef nonnull dereferenceable(792) ptr @_Znwm(i64 noundef 792) #20 ; 6 uses
  %i.lg = load ptr, ptr %92, align 8, !tbaa !70
  %i.lh = load ptr, ptr %i.ed, align 8, !tbaa !70
  invoke void @_ZN17btHingeConstraintC1ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %i.lf, ptr noundef nonnull align 8 dereferenceable(564) %i.lg, ptr noundef nonnull align 8 dereferenceable(564) %i.lh, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, i1 noundef zeroext false)
          to label %_ZN17btHingeConstraint8setLimitEfffff.exit342 unwind label %bb.al

_ZN17btHingeConstraint8setLimitEfffff.exit342:    ; preds = %bb.ab
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 752
  store float 0.000000e+00, ptr %i.li, align 8, !tbaa !151
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float f0xBFC90FDB>, ptr %i.lj, align 8, !tbaa !33
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.lf, ptr %i.lk, align 8, !tbaa !74
  %i.ll = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !13
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 80
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(228) %i.ll, ptr noundef nonnull %i.lf, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  ret void

bb.ac:                                            ; preds = %bb.l
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ae:                                            ; preds = %bb.x
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.af:                                            ; preds = %bb.y
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit270
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %bb.z
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ai:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit294
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.aa
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %_ZN17btHingeConstraint8setLimitEfffff.exit318
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ab
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sink = phi ptr [ %i.lf, %bb.al ], [ %i.kt, %bb.ak ], [ %i.kj, %bb.aj ], [ %i.jx, %bb.ai ], [ %i.jm, %bb.ah ], [ %i.ja, %bb.ag ], [ %i.iq, %bb.af ], [ %i.ic, %bb.ae ], [ %i.ho, %bb.ad ], [ %i.gr, %bb.ac ]
  %.pn = phi { ptr, i32 } [ %i.ly, %bb.al ], [ %i.lx, %bb.ak ], [ %i.lw, %bb.aj ], [ %i.lv, %bb.ai ], [ %i.lu, %bb.ah ], [ %i.lt, %bb.ag ], [ %i.ls, %bb.af ], [ %i.lr, %bb.ae ], [ %i.lq, %bb.ad ], [ %i.lp, %bb.ac ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZN13btConvexShapedlEPv.exit

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.am ], [ %i.hd, %bb.v ], [ %i.hc, %bb.u ], [ %i.hb, %bb.t ], [ %i.ha, %bb.s ], [ %i.gz, %bb.r ], [ %i.gy, %bb.q ], [ %i.gx, %bb.p ], [ %i.gw, %bb.o ], [ %i.gv, %bb.n ], [ %i.gu, %bb.m ], [ %i.he, %bb.w ]
  resume { ptr, i32 } %.pn.pn

bb.an:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  tail call void @__clang_call_terminate(ptr %i.ma) #23
  unreachable
}

declare void @_ZN17btConvexHullShapeC1EPKfii(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

declare void @_ZN17btConvexHullShape8addPointERK9btVector3(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo19createLargeMeshBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i

bb.b:                                             ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  ret void

_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i: ; preds = %bb.a, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit ] ; 5 uses
  %i.b = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 104, i32 noundef 16) ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV26btTriangleIndexVertexArray, i64 16), ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store i8 1, ptr %i.d, align 8, !tbaa !160
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  store ptr null, ptr %i.e, align 8, !tbaa !161
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 5 uses
  store i32 0, ptr %i.f, align 4, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !163
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.h, align 8, !tbaa !166
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @LandscapeVtx, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !168
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @LandscapeVtxCount, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @LandscapeIdx, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @LandscapeIdxCount, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = sdiv i32 %i.p, 3
  %i.r = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 48, i32 noundef 16) ; 6 uses
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !162 ; 4 uses
  %i.s = icmp sgt i32 %.pre.i.i, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.t = icmp eq i32 %.pre.i.i, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.c ]
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !tbaa.struct !175
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !tbaa.struct !175
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.c

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %.pre.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod54)
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.i.epil.init
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !tbaa.struct !175
  br label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !161 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i5.i.i.i, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  %i.ae = load i8, ptr %i.d, align 8, !tbaa !160, !range !43, !noundef !44
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.e:                                             ; preds = %bb.d
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
  br label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit: ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, %bb.d, %bb.e
  store i8 1, ptr %i.d, align 8, !tbaa !160
  store ptr %i.r, ptr %i.e, align 8, !tbaa !161
  store i32 1, ptr %i.g, align 8, !tbaa !163
  %.pre2.i.i = load i32, ptr %i.f, align 4, !tbaa !162
  %i.ag = sext i32 %.pre2.i.i to i64
  %i.ah = getelementptr inbounds [48 x i8], ptr %i.r, i64 %i.ag ; 8 uses
  store i32 %i.q, ptr %i.ah, align 8, !tbaa !7
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.n, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !172
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
end_hunk_0
