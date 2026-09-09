Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btHinge2Constraint?download=true
inline.NumInlined: 138
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_
define dso_local void @_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_(ptr noundef nonnull align 8 dereferenceable(1392) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11btTransform11getIdentityEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11btTransform11getIdentityEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.d, i64 16, i1 false), !tbaa.struct !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  br label %_ZN11btTransform11getIdentityEv.exit

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.p, %bb.i ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11btTransform11getIdentityEv.exit:             ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %_ZN11btTransform11getIdentityEv.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  %.not.i20 = icmp eq i32 %i.k, 0
  br i1 %.not.i20, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.l, i64 16, i1 false), !tbaa.struct !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #10
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.h, %bb.f, %_ZN11btTransform11getIdentityEv.exit
  tail call void @_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1344) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, i1 noundef zeroext true)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV18btHinge2Constraint, i64 16), ptr %0, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !20
  %i.t = load float, ptr %4, align 4, !tbaa !10   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !10 ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !10 ; 3 uses
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ac = fmul float %i.t, %i.ab                  ; 4 uses
  store float %i.ac, ptr %4, align 4, !tbaa !10
  %i.ad = fmul float %i.v, %i.ab                  ; 4 uses
  store float %i.ad, ptr %i.u, align 4, !tbaa !10
  %i.ae = fmul float %i.z, %i.ab                  ; 4 uses
  store float %i.ae, ptr %i.y, align 4, !tbaa !10
  %i.af = load float, ptr %5, align 4, !tbaa !10  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !10 ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.aj)
  %sqrt.i.i22 = tail call noundef float @llvm.sqrt.f32(float %i.am)
  %i.an = fdiv float 1.000000e+00, %sqrt.i.i22    ; 3 uses
  %i.ao = fmul float %i.af, %i.an                 ; 4 uses
  store float %i.ao, ptr %5, align 4, !tbaa !10
  %i.ap = fmul float %i.ah, %i.an                 ; 4 uses
  store float %i.ap, ptr %i.ag, align 4, !tbaa !10
  %i.aq = fmul float %i.al, %i.an                 ; 4 uses
  store float %i.aq, ptr %i.ak, align 4, !tbaa !10
  %i.ar = fneg float %i.ap
  %i.as = fmul float %i.ae, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.aq, float %i.as)
  %i.au = fneg float %i.aq
  %i.av = fmul float %i.ac, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ao, float %i.av)
  %i.ax = fneg float %i.ao
  %i.ay = fmul float %i.ad, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ap, float %i.ay)
  %.sroa.42.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load float, ptr %i.bd, align 8, !tbaa !10, !noalias !23 ; 2 uses
  %i.bh = load float, ptr %i.be, align 8, !tbaa !10, !noalias !23 ; 2 uses
  %i.bi = load float, ptr %i.bf, align 8, !tbaa !10, !noalias !23 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load <2 x float>, ptr %i.ba, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.bb, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.bc, align 8, !tbaa !10, !noalias !23 ; 3 uses
  %i.bn = load <3 x float>, ptr %i.bj, align 8, !tbaa !10, !noalias !24
  %i.bo = fneg <3 x float> %i.bn                  ; 5 uses
  %i.bp = shufflevector <3 x float> %i.bo, <3 x float> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %i.bq = shufflevector <3 x float> %i.bo, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = fmul <2 x float> %i.bl, %i.bq
  %i.bs = shufflevector <3 x float> %i.bo, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bs, <2 x float> %i.br)
  %i.bu = shufflevector <3 x float> %i.bo, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bw = load <2 x float>, ptr %3, align 4       ; 3 uses
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul <2 x float> %i.bx, %i.bl
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bz, <2 x float> %i.by)
  %i.cb = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = shufflevector <2 x float> %i.bw, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.ce = shufflevector <3 x float> %i.bo, <3 x float> %i.cd, <2 x i32> <i32 4, i32 1>
  %i.cf = fmul <2 x float> %i.cc, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <3 x float> %i.bp, <3 x float> %i.cd, <2 x i32> <i32 3, i32 1>
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ci, <2 x float> %i.cf)
  %i.ck = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cn = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.cp = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ap, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.aw, i64 1
  %i.cr = insertelement <4 x float> %i.cq, float %i.ad, i64 2 ; 6 uses
  %i.cs = fmul <4 x float> %i.co, %i.cr
  %i.ct = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ao, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.at, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.ac, i64 2 ; 6 uses
  %i.cw = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.cx, <4 x float> %i.cs)
  %i.cz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aq, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.az, i64 1
  %i.db = insertelement <4 x float> %i.da, float %i.ae, i64 2 ; 6 uses
  %i.dc = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dd, <4 x float> %i.cy)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dh = fmul <4 x float> %i.dg, %i.cr
  %i.di = shufflevector <4 x float> %i.cw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.di, <4 x float> %i.dh)
  %i.dk = shufflevector <4 x float> %i.dc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dk, <4 x float> %i.dj)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dn = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bh, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dp = fmul <4 x float> %i.do, %i.cr
  %i.dq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bg, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.dr, <4 x float> %i.dp)
  %i.dt = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bi, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.du, <4 x float> %i.ds)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.20115.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ee = load <2 x float>, ptr %.sroa.42.48..sroa_idx, align 4 ; 6 uses
  %6 = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ef, <2 x float> %i.ca)
  %i.eh = fadd <2 x float> %i.eg, %i.bv
  %7 = shufflevector <2 x float> %6, <2 x float> %i.bu, <2 x i32> <i32 0, i32 3>
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %7, <2 x float> %i.cj) ; 2 uses
  %shift = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ei, %shift
  %.sroa.3.12.vec.insert.i.i155 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <4 x float> %i.de, ptr %i.cm, align 8
  store <4 x float> %i.dl, ptr %i.df, align 8
  store <4 x float> %i.dv, ptr %i.dm, align 8
  store <2 x float> %i.eh, ptr %i.dw, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i155, ptr %.sroa.20115.48..sroa_idx, align 8, !tbaa !19
  %i.ej = load <2 x float>, ptr %i.dx, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %i.ek = load <2 x float>, ptr %i.dy, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %i.el = load <2 x float>, ptr %i.dz, align 8, !tbaa !10, !noalias !25 ; 3 uses
  %i.em = load float, ptr %i.ea, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.en = load float, ptr %i.eb, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.eo = load float, ptr %i.ec, align 8, !tbaa !10, !noalias !25 ; 2 uses
  %i.ep = load <3 x float>, ptr %i.ed, align 8, !tbaa !10, !noalias !26
  %i.eq = fneg <3 x float> %i.ep                  ; 6 uses
  %i.er = shufflevector <3 x float> %i.eq, <3 x float> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %i.es = shufflevector <3 x float> %i.eq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x float> %i.ek, %i.es
  %i.eu = shufflevector <3 x float> %i.eq, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.eu, <2 x float> %i.et)
  %i.ew = shufflevector <3 x float> %i.eq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.ew, <2 x float> %i.ev)
  %i.ey = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ey, %i.ek
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.bz, <2 x float> %i.ez)
  %8 = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %8, <2 x float> %i.fa)
  %i.fc = fadd <2 x float> %i.fb, %i.ex
  %9 = shufflevector <2 x float> %i.ee, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %10 = shufflevector <2 x float> %i.ee, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %11 = shufflevector <3 x float> %10, <3 x float> %i.eq, <2 x i32> <i32 0, i32 4>
  %12 = insertelement <2 x float> poison, float %i.en, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %11, %13
  %i.fe = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = shufflevector <3 x float> %i.cd, <3 x float> %i.er, <2 x i32> <i32 0, i32 4>
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.fg, <2 x float> %i.fd)
  %i.fi = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = shufflevector <3 x float> %9, <3 x float> %i.eq, <2 x i32> <i32 0, i32 5>
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %14, <2 x float> %i.fh) ; 2 uses
  %shift152 = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop153 = fadd <2 x float> %i.fk, %shift152
  %.sroa.3.12.vec.insert.i.i39156 = insertelement <2 x float> %foldExtExtBinop153, float 0.000000e+00, i64 1
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fm = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fo = fmul <4 x float> %i.fn, %i.cr
  %i.fp = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.fq, <4 x float> %i.fo)
  %i.fs = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.ft, <4 x float> %i.fr)
  store <4 x float> %i.fu, ptr %i.fl, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fw = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fx = fmul <4 x float> %i.fw, %i.cr
  %i.fy = shufflevector <4 x float> %i.fp, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.fy, <4 x float> %i.fx)
  %i.ga = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.ga, <4 x float> %i.fz)
  store <4 x float> %i.gb, ptr %i.fv, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.en, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gf = fmul <4 x float> %i.ge, %i.cr
  %i.gg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.em, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.gh, <4 x float> %i.gf)
  %i.gj = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.eo, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.gk, <4 x float> %i.gi)
  store <4 x float> %i.gl, ptr %i.gc, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %i.fc, ptr %i.gm, align 8
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x float> %.sroa.3.12.vec.insert.i.i39156, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !19
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 744
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 980
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.gp, align 4, !tbaa !10
  store <2 x float> zeroinitializer, ptr %i.gq, align 4, !tbaa !10
  store <2 x float> <float f0xBF490FDB, float f0x3F490FDB>, ptr %i.gr, align 4, !tbaa !10
  tail call void @_ZN29btGeneric6DofSpringConstraint12enableSpringEib(ptr noundef nonnull align 8 dereferenceable(1344) %0, i32 noundef 2, i1 noundef zeroext true)
  tail call void @_ZN29btGeneric6DofSpringConstraint12setStiffnessEif(ptr noundef nonnull align 8 dereferenceable(1344) %0, i32 noundef 2, float noundef f0x421DE9E7)
  tail call void @_ZN29btGeneric6DofSpringConstraint10setDampingEif(ptr noundef nonnull align 8 dereferenceable(1344) %0, i32 noundef 2, float noundef f0x3C23D70A)
  tail call void @_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv(ptr noundef nonnull align 8 dereferenceable(1344) %0)
  ret void
}

declare void @_ZN29btGeneric6DofSpringConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1344), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN29btGeneric6DofSpringConstraint12enableSpringEib(ptr noundef nonnull align 8 dereferenceable(1344), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN29btGeneric6DofSpringConstraint12setStiffnessEif(ptr noundef nonnull align 8 dereferenceable(1344), i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN29btGeneric6DofSpringConstraint10setDampingEif(ptr noundef nonnull align 8 dereferenceable(1344), i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN29btGeneric6DofSpringConstraint19setEquilibriumPointEv(ptr noundef nonnull align 8 dereferenceable(1344)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN18btHinge2ConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1392) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

declare void @_ZN23btGeneric6DofConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1266)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(1266), ptr noundef) unnamed_addr #1

declare void @_ZN29btGeneric6DofSpringConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1344), ptr noundef) unnamed_addr #1

declare void @_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr noundef nonnull align 8 dereferenceable(1266), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), float noundef) unnamed_addr #1

declare void @_ZN23btGeneric6DofConstraint13calcAnchorPosEv(ptr noundef nonnull align 8 dereferenceable(1266)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv() local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 20), align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix, i64 40), align 4, !tbaa !10
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btMatrix3x311getIdentityEvE14identityMatrix) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN11btMatrix3x311getIdentityEvE14identityMatrix
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !"_ZNK11btTransform7inverseEv"}
!12 = distinct !{!12, !11, !"_ZNK11btTransform7inverseEv: argument 0"}
!13 = distinct !{!13, !"_ZNK11btMatrix3x39transposeEv"}
!14 = distinct !{!14, !13, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!15 = distinct !{!15, !"_ZNK11btTransform7inverseEv"}
!16 = distinct !{!16, !15, !"_ZNK11btTransform7inverseEv: argument 0"}
!17 = distinct !{!17, !"_ZNK11btMatrix3x39transposeEv"}
!18 = distinct !{!18, !17, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!19 = !{!5, !5, i64 0}
!20 = !{i64 0, i64 16, !19}
!21 = !{!"vtable pointer", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!14, !12}
!24 = !{!12}
!25 = !{!18, !16}
!26 = !{!16}
end_hunk_0
