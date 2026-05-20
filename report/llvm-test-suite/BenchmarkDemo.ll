inline.NumInlined: 797
inline.NumDeleted: 176
begin_hunk_0_@_ZN13BenchmarkDemo13createPyramidERK9btVector3iS2_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.l:                                             ; preds = %.split.us
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #23
  unreachable

._crit_edge:                                      ; preds = %._crit_edge68.split.us, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.m:                                             ; preds = %.body
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z6rotateRK12btQuaternionRK9btVector3(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !36 ; 6 uses
  %i.c = load float, ptr %1, align 4, !tbaa !36   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !36 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !36 ; 4 uses
  %i.h = fmul float %i.e, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.b, float %i.c, float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !36 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !36 ; 4 uses
  %i.n = fneg float %i.k
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.m, float %i.i) ; 3 uses
  %i.p = fmul float %i.c, %i.k
  %i.q = tail call float @llvm.fmuladd.f32(float %i.b, float %i.m, float %i.p)
  %i.r = load float, ptr %0, align 4, !tbaa !36   ; 6 uses
  %i.s = fneg float %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.g, float %i.q) ; 3 uses
  %i.u = fmul float %i.m, %i.r
  %i.v = tail call float @llvm.fmuladd.f32(float %i.b, float %i.g, float %i.u)
  %i.w = fneg float %i.e
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.c, float %i.v) ; 3 uses
  %i.y = fmul float %i.e, %i.m
  %i.z = tail call float @llvm.fmuladd.f32(float %i.r, float %i.c, float %i.y)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.k, float %i.g, float %i.z) ; 3 uses
  %i.ab = fmul float %i.b, %i.o
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.r, float %i.ab)
  %i.ad = fneg float %i.t
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.k, float %i.ac)
  %i.af = tail call float @llvm.fmuladd.f32(float %i.x, float %i.e, float %i.ae)
  %i.ag = fmul float %i.b, %i.t
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.e, float %i.ag)
  %i.ai = fneg float %i.x
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.r, float %i.ah)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.o, float %i.k, float %i.aj)
  %i.al = fmul float %i.b, %i.x
  %i.am = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.k, float %i.al)
  %i.an = fneg float %i.o
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.e, float %i.am)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.t, float %i.r, float %i.ao)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.af, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ak, i64 1
  %.sroa.3.12.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define dso_local void @_ZN13BenchmarkDemo17createTowerCircleERK9btVector3iiS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 4           ; 6 uses
  %6 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16) ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.c = load <2 x float>, ptr %4, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !36
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV10btBoxShape, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !73
  %i.g = load ptr, ptr getelementptr inbounds nuw inrange(-104, 120) (i8, ptr @_ZTV10btBoxShape, i64 104), align 8
  %i.h = invoke noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef float %i.o(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn8.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ], [ %i.s, %bb.f ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !36
  %i.y = fmul float %i.e, %i.x
  %i.z = load <2 x float>, ptr %i.v, align 4, !tbaa !36
  %i.aa = fmul <2 x float> %i.c, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.l, i64 1
  %i.ad = fsub <2 x float> %i.aa, %i.ac
  %i.ae = fsub float %i.y, %i.p
  %.sroa.3.12.vec.insert.i12.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ae, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x float> %i.ad, ptr %i.af, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i12.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.aj = sitofp i32 %3 to float                  ; 3 uses
  %i.ak = fmul nnan float %i.aj, 1.300000e+00
  %i.al = load float, ptr %4, align 4, !tbaa !36
  %i.am = fmul float %i.ak, %i.al
  %i.an = fdiv float %i.am, f0x40490FDB           ; 4 uses
  %i.ao = icmp sgt i32 %2, 0
  br i1 %i.ao, label %.preheader.lr.ph, label %._crit_edge113

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.ap = icmp sgt i32 %3, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = fmul nnan float %i.aj, 5.000000e-01
  %i.au = fdiv nnan float f0x40490FDB, %i.at
  %i.av = fmul nnan float %i.au, 5.000000e-01     ; 2 uses
  %i.aw = fdiv nnan float f0x40490FDB, %i.aj
  %i.ax = fmul nnan float %i.aw, 5.000000e-01     ; 20 uses
  br i1 %i.ap, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i32 %2, 7                       ; 3 uses
  %i.ay = icmp ult i32 %2, 8
  br i1 %i.ay, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %2, 2147483640
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.az = load float, ptr %i.b, align 4, !tbaa !36
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.023112.us = phi i32 [ %i.fc, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.094107.us = phi float [ %i.em, %._crit_edge.us ], [ %i.az, %.preheader.us.preheader ] ; 5 uses
  %i.ba = phi <4 x float> [ %i.fb, %._crit_edge.us ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.preheader.us.preheader ]
  br label %bb.j

bb.j:                                             ; preds = %.preheader.us, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us
  %.0103.us = phi i32 [ 0, %.preheader.us ], [ %i.ek, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ]
  %i.bb = phi <4 x float> [ %i.ba, %.preheader.us ], [ %i.ej, %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us ] ; 8 uses
  %i.bc = load float, ptr %1, align 4, !tbaa !36
  %i.bd = load float, ptr %i.aq, align 4, !tbaa !36
  %i.be = load float, ptr %i.ar, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(24) %i.a, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %5), !inline_history !75
  %i.bi = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 568, i32 noundef 16) ; 17 uses
  invoke void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %i.bi, float noundef 1.000000e+00, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us unwind label %.split.us

_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us: ; preds = %bb.j
  %i.bj = extractelement <4 x float> %i.bb, i64 3 ; 10 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = extractelement <4 x float> %i.bb, i64 0 ; 11 uses
  %i.bm = call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bk)
  %i.bn = extractelement <4 x float> %i.bb, i64 2 ; 9 uses
  %i.bo = call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bm)
  %i.bp = extractelement <4 x float> %i.bb, i64 1 ; 11 uses
  %i.bq = call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bo)
  %i.br = fdiv float 2.000000e+00, %i.bq          ; 3 uses
  %i.bs = fmul float %i.bl, %i.br                 ; 2 uses
  %i.bt = fmul float %i.bl, %i.bs                 ; 2 uses
  %i.bu = fmul float %i.bj, %i.br                 ; 3 uses
  %i.bv = fmul float %i.bj, %i.bu                 ; 2 uses
  %i.bw = fadd float %i.bt, %i.bv
  %i.bx = fsub float 1.000000e+00, %i.bw
  %i.by = fmul float %i.bn, %i.br                 ; 4 uses
  %i.bz = fmul float %i.bj, %i.by                 ; 2 uses
  %i.ca = fmul float %i.bp, %i.bs                 ; 2 uses
  %i.cb = fadd float %i.bz, %i.ca
  %i.cc = fmul float %i.bl, %i.by                 ; 2 uses
  %i.cd = fmul float %i.bp, %i.bu                 ; 2 uses
  %i.ce = fsub float %i.cc, %i.cd
  %i.cf = fsub float %i.bz, %i.ca
  %i.cg = fmul float %i.bn, %i.by                 ; 2 uses
  %i.ch = fadd float %i.bt, %i.cg
  %i.ci = fsub float 1.000000e+00, %i.ch
  %i.cj = fmul float %i.bl, %i.bu                 ; 2 uses
  %i.ck = fmul float %i.bp, %i.by                 ; 2 uses
  %i.cl = fadd float %i.cj, %i.ck
  %i.cm = fadd float %i.cc, %i.cd
  %i.cn = fsub float %i.cj, %i.ck
  %i.co = fadd float %i.bv, %i.cg
  %i.cp = fsub float 1.000000e+00, %i.co
  %7 = fneg <4 x float> %i.bb                     ; 5 uses
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  %i.cq = fmul float %i.bn, 0.000000e+00
  %i.cr = call float @llvm.fmuladd.f32(float %i.bp, float %.094107.us, float %i.cq)
  %10 = extractelement <4 x float> %7, i64 0
  %11 = call float @llvm.fmuladd.f32(float %10, float %i.an, float %i.cr) ; 3 uses
  %i.cs = fmul float %i.an, %i.bj
  %i.ct = call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.cs)
  %12 = extractelement <4 x float> %7, i64 2
  %i.cu = call float @llvm.fmuladd.f32(float %12, float %.094107.us, float %i.ct) ; 3 uses
  %i.cv = fneg float %i.cu
  %i.cw = fmul float %.094107.us, %i.bj
  %i.cx = call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %i.cw)
  %i.cy = call float @llvm.fmuladd.f32(float %i.bn, float %i.an, float %i.cx) ; 3 uses
  %13 = fmul float %.094107.us, %i.bl
  %14 = call float @llvm.fmuladd.f32(float %i.bp, float %i.an, float %13)
  %15 = extractelement <4 x float> %7, i64 3
  %i.cz = call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %14) ; 3 uses
  %i.da = fmul float %i.bp, %i.cz
  %i.db = call float @llvm.fmuladd.f32(float %i.cy, float %i.bn, float %i.da)
  %i.dc = call float @llvm.fmuladd.f32(float %i.cv, float %i.bj, float %i.db)
  %i.dd = call float @llvm.fmuladd.f32(float %11, float %i.bl, float %i.dc)
  %i.de = fadd float %i.dd, %i.be
  %.sroa.3.12.vec.insert.i27.us = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.df = fneg float %11
  %i.dg = fmul float %i.bp, %i.cu
  %i.dh = call float @llvm.fmuladd.f32(float %i.cy, float %i.bl, float %i.dg)
  %i.di = call float @llvm.fmuladd.f32(float %i.df, float %i.bn, float %i.dh)
  %i.dj = call float @llvm.fmuladd.f32(float %i.cz, float %i.bj, float %i.di)
  %i.dk = fadd float %i.dj, %i.bc
  %.sroa.0.0.vec.insert.i25.us = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dl = fneg float %i.cz
  %i.dm = fmul float %i.bp, %11
  %i.dn = call float @llvm.fmuladd.f32(float %i.cy, float %i.bj, float %i.dm)
  %i.do = call float @llvm.fmuladd.f32(float %i.dl, float %i.bl, float %i.dn)
  %i.dp = call float @llvm.fmuladd.f32(float %i.cu, float %i.bn, float %i.do)
  %i.dq = fadd float %i.dp, %i.bd
  %.sroa.0.4.vec.insert.i26.us = insertelement <2 x float> %.sroa.0.0.vec.insert.i25.us, float %i.dq, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.cp, ptr %i.dr, align 8
  %.sroa.582.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store float %i.cn, ptr %.sroa.582.0..sroa_idx.us, align 4
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store float %i.cm, ptr %.sroa.7.0..sroa_idx.us, align 8
  %.sroa.883.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store float 0.000000e+00, ptr %.sroa.883.0..sroa_idx.us, align 4, !tbaa !60
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store float %i.cl, ptr %i.ds, align 8
  %.sroa.11.16..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store float %i.ci, ptr %.sroa.11.16..sroa_idx.us, align 4
  %.sroa.13.16..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store float %i.cf, ptr %.sroa.13.16..sroa_idx.us, align 8
  %.sroa.15.16..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  store float 0.000000e+00, ptr %.sroa.15.16..sroa_idx.us, align 4, !tbaa !60
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store float %i.ce, ptr %i.dt, align 8
  %.sroa.18.32..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 44
  store float %i.cb, ptr %.sroa.18.32..sroa_idx.us, align 4
  %.sroa.19.32..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store float %i.bx, ptr %.sroa.19.32..sroa_idx.us, align 8
  %.sroa.21.32..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  store float 0.000000e+00, ptr %.sroa.21.32..sroa_idx.us, align 4, !tbaa !60
  %i.du = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store <2 x float> %.sroa.0.4.vec.insert.i26.us, ptr %i.du, align 8
  %.sroa.25.48..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i27.us, ptr %.sroa.25.48..sroa_idx.us, align 8, !tbaa !60
  %i.dv = load ptr, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(228) %i.dv, ptr noundef nonnull %i.bi), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.dz = call noundef float @sinf(float noundef %i.av) #21, !tbaa !4 ; 2 uses
  %16 = fmul float %i.dz, 0.000000e+00            ; 2 uses
  %17 = call noundef float @cosf(float noundef %i.av) #21, !tbaa !4 ; 2 uses
  %i.ea = fneg float %16
  %i.eb = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ec = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ed = insertelement <4 x float> %i.ec, float %17, i64 1
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.ef = fmul <4 x float> %i.eb, %i.ee
  %i.eg = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eh = insertelement <4 x float> poison, float %16, i64 0
  %18 = insertelement <4 x float> %i.eh, float %17, i64 1
  %19 = insertelement <4 x float> %18, float %i.dz, i64 3 ; 3 uses
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ei = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eg, <4 x float> %20, <4 x float> %i.ef)
  %21 = shufflevector <4 x float> %i.bb, <4 x float> %7, <4 x i32> <i32 3, i32 7, i32 0, i32 2>
  %22 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 3, i32 0>
  %23 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %22, <4 x float> %i.ei)
  %24 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 0>
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %24, <4 x float> %23) ; 5 uses
  %i.ek = add nuw nsw i32 %.0103.us, 1            ; 2 uses
  %exitcond121.not = icmp eq i32 %i.ek, %3
  br i1 %exitcond121.not, label %._crit_edge.us, label %bb.j

._crit_edge.us:                                   ; preds = %_ZN15DemoApplication20localCreateRigidBodyEfRK11btTransformP16btCollisionShape.exit.us
  %i.el = load float, ptr %i.b, align 4, !tbaa !36
  %i.em = call float @llvm.fmuladd.f32(float %i.el, float 2.000000e+00, float %.094107.us)
  %i.en = fneg <4 x float> %i.ej                  ; 2 uses
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 3, i32 0>
  %i.eq = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4
  %i.er = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4
  %i.es = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eu = fmul <2 x float> %i.et, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0> ; 2 uses
  %25 = insertelement <2 x float> %i.et, float %i.er, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %27 = fmul <4 x float> %26, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %28 = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %29 = fneg <4 x float> %i.ev
  %30 = shufflevector <4 x float> %26, <4 x float> %29, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.ew = fmul <4 x float> %28, %30
  %i.ex = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %27, <4 x float> %i.ew)
  %i.ez = shufflevector <4 x float> %i.ej, <4 x float> %i.en, <4 x i32> <i32 3, i32 7, i32 0, i32 2>
  %31 = shufflevector <2 x float> %i.eu, <2 x float> %i.et, <4 x i32> <i32 0, i32 3, i32 3, i32 0>
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> %31, <4 x float> %i.ey)
  %i.fb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.ev, <4 x float> %i.fa)
  %i.fc = add nuw nsw i32 %.023112.us, 1          ; 2 uses
  %exitcond122.not = icmp eq i32 %i.fc, %2
  br i1 %exitcond122.not, label %._crit_edge113, label %.preheader.us

.split.us:                                        ; preds = %bb.j
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bi)
          to label %_ZN17btCollisionObjectdlEPv.exit.i unwind label %bb.l

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.fe = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.ff = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fg = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fh = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fi = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fj = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fk = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fl = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fm = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fn = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fo = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fp = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fq = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fr = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fs = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.ft = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge113.loopexit140.unr-lcssa, label %.preheader

._crit_edge113.loopexit140.unr-lcssa:             ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge113, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge113.loopexit140.unr-lcssa, %.preheader.preheader
  %lcmp.mod141 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod141)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %epil.iter = phi i32 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.fu = call noundef float @sinf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %i.fv = call noundef float @cosf(float noundef %i.ax) #21, !tbaa !4 ; 0 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge113, label %.preheader.epil, !llvm.loop !88

._crit_edge113:                                   ; preds = %._crit_edge113.loopexit140.unr-lcssa, %.preheader.epil, %._crit_edge.us, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.k:                                             ; preds = %bb.a
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.fw, %bb.k ], [ %.pn8.i, %bb.g ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.a)
          to label %common.resume unwind label %bb.m

common.resume:                                    ; preds = %.body, %_ZN17btCollisionObjectdlEPv.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.fd, %_ZN17btCollisionObjectdlEPv.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZN17btCollisionObjectdlEPv.exit.i:               ; preds = %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

bb.l:                                             ; preds = %.split.us
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #23
  unreachable

bb.m:                                             ; preds = %.body
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  tail call void @__clang_call_terminate(ptr %i.ga) #23
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
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7RagDoll, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !89
  %i.b = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.c = fmul float %3, 1.500000e-01              ; 5 uses
  %i.d = fmul float %3, 2.000000e-01              ; 5 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.b, float noundef %i.c, float noundef %i.d)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !47
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.g = fmul float %3, 2.800000e-01
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.f, float noundef %i.c, float noundef %i.g)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !47
  %i.i = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.j = fmul float %3, 1.000000e-01
  %i.k = fmul float %3, 5.000000e-02              ; 5 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.i, float noundef %i.j, float noundef %i.k)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.l, align 8, !tbaa !47
  %i.m = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.n = fmul float %3, 7.000000e-02              ; 2 uses
  %i.o = fmul float %3, 4.500000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.m, float noundef %i.n, float noundef %i.o)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.m, ptr %i.p, align 8, !tbaa !47
  %i.q = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.r = fmul float %3, 3.700000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.q, float noundef %i.k, float noundef %i.r)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !47
  %i.t = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.t, float noundef %i.n, float noundef %i.o)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !47
  %i.v = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.v, float noundef %i.k, float noundef %i.r)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !47
  %i.x = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.y = fmul float %3, 3.300000e-01              ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.x, float noundef %i.k, float noundef %i.y)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !47
  %i.aa = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  %i.ab = fmul float %3, 4.000000e-02             ; 2 uses
  %i.ac = fmul float %3, 2.500000e-01             ; 2 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.aa, float noundef %i.ab, float noundef %i.ac)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !47
  %i.ae = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.ae, float noundef %i.k, float noundef %i.y)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !47
  %i.ag = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 72, i32 noundef 16) ; 3 uses
  invoke void @_ZN14btCapsuleShapeC1Eff(ptr noundef nonnull align 8 dereferenceable(68) %i.ag, float noundef %i.ab, float noundef %i.ac)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !47
  %.sroa.108.48.copyload = load float, ptr %2, align 4 ; 11 uses
  %.sroa.120.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.120.48.copyload = load float, ptr %.sroa.120.48..sroa_idx, align 4 ; 11 uses
  %.sroa.131.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.131.48.copyload = load float, ptr %.sroa.131.48..sroa_idx, align 4 ; 11 uses
  %i.ai = fmul float %3, 0.000000e+00             ; 46 uses
end_hunk_0
