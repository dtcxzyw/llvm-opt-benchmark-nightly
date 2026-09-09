Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHinge2Constraint?download=true
inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_
define dso_local void @_ZN18btHinge2ConstraintC2ER11btRigidBodyS1_R9btVector3S3_S3_(ptr noundef nonnull align 8 dereferenceable(1532) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11btTransform11getIdentityEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11btTransform11getIdentityEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.d, i64 16, i1 false), !tbaa.struct !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #12
  br label %_ZN11btTransform11getIdentityEv.exit

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.p, %bb.i ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #12
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN11btTransform11getIdentityEv.exit:             ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load atomic i8, ptr @_ZGVZN11btTransform11getIdentityEvE17identityTransform acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.j, !prof !9

bb.f:                                             ; preds = %_ZN11btTransform11getIdentityEv.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #12
  %.not.i20 = icmp eq i32 %i.k, 0
  br i1 %.not.i20, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noundef nonnull align 4 dereferenceable(48) ptr @_ZN11btMatrix3x311getIdentityEv()
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(48) %i.l, i64 16, i1 false), !tbaa.struct !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN11btTransform11getIdentityEvE17identityTransform, i64 48), i8 0, i64 16, i1 false)
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN11btTransform11getIdentityEvE17identityTransform) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11btTransform11getIdentityEvE17identityTransform) #12
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.h, %bb.f, %_ZN11btTransform11getIdentityEv.exit
  tail call void @_ZN30btGeneric6DofSpring2ConstraintC2ER11btRigidBodyS1_RK11btTransformS4_11RotateOrder(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, ptr noundef nonnull align 4 dereferenceable(64) @_ZZN11btTransform11getIdentityEvE17identityTransform, i32 noundef 0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV18btHinge2Constraint, i64 16), ptr %0, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1484
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1500
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1516
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !21
  %i.t = load float, ptr %4, align 4, !tbaa !12   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !12 ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !12 ; 3 uses
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ac = fmul float %i.t, %i.ab                  ; 4 uses
  store float %i.ac, ptr %4, align 4, !tbaa !12
  %i.ad = fmul float %i.v, %i.ab                  ; 4 uses
  store float %i.ad, ptr %i.u, align 4, !tbaa !12
  %i.ae = fmul float %i.z, %i.ab                  ; 4 uses
  store float %i.ae, ptr %i.y, align 4, !tbaa !12
  %i.af = load float, ptr %5, align 4, !tbaa !12  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12 ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 3 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.aj)
  %sqrt.i.i22 = tail call noundef float @llvm.sqrt.f32(float %i.am)
  %i.an = fdiv float 1.000000e+00, %sqrt.i.i22    ; 3 uses
  %i.ao = fmul float %i.af, %i.an                 ; 4 uses
  store float %i.ao, ptr %5, align 4, !tbaa !12
  %i.ap = fmul float %i.ah, %i.an                 ; 4 uses
  store float %i.ap, ptr %i.ag, align 4, !tbaa !12
  %i.aq = fmul float %i.al, %i.an                 ; 4 uses
  store float %i.aq, ptr %i.ak, align 4, !tbaa !12
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
  %i.bg = load float, ptr %i.bd, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %i.bh = load float, ptr %i.be, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %i.bi = load float, ptr %i.bf, align 8, !tbaa !12, !noalias !24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load <2 x float>, ptr %i.ba, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.bb, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.bc, align 8, !tbaa !12, !noalias !24 ; 3 uses
  %i.bn = load <3 x float>, ptr %i.bj, align 8, !tbaa !12, !noalias !25
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
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bk, <2 x float> %i.by)
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
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
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
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dg = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dh = fmul <4 x float> %i.dg, %i.cr
  %i.di = shufflevector <4 x float> %i.cw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.di, <4 x float> %i.dh)
  %i.dk = shufflevector <4 x float> %i.dc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dk, <4 x float> %i.dj)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dn = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bh, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dp = fmul <4 x float> %i.do, %i.cr
  %i.dq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bg, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.dr, <4 x float> %i.dp)
  %i.dt = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bi, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.du, <4 x float> %i.ds)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.20115.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ee = load <2 x float>, ptr %.sroa.42.48..sroa_idx, align 4 ; 5 uses
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.bm, <2 x float> %i.ca)
  %6 = shufflevector <2 x float> %i.bu, <2 x float> %i.ee, <2 x i32> <i32 3, i32 1>
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %6, <2 x float> %i.cj) ; 2 uses
  %i.ei = fadd <2 x float> %i.eg, %i.bv
  %shift = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.eh, %shift
  %.sroa.3.12.vec.insert.i4.i.i155 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <4 x float> %i.de, ptr %i.cm, align 8
  store <4 x float> %i.dl, ptr %i.df, align 8
  store <4 x float> %i.dv, ptr %i.dm, align 8
  store <2 x float> %i.ei, ptr %i.dw, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i155, ptr %.sroa.20115.48..sroa_idx, align 8, !tbaa !10
  %i.ej = load <2 x float>, ptr %i.dx, align 8, !tbaa !12, !noalias !26 ; 3 uses
  %i.ek = load <2 x float>, ptr %i.dy, align 8, !tbaa !12, !noalias !26 ; 3 uses
  %i.el = load <2 x float>, ptr %i.dz, align 8, !tbaa !12, !noalias !26 ; 3 uses
  %i.em = load float, ptr %i.ea, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.en = load float, ptr %i.eb, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.eo = load float, ptr %i.ec, align 8, !tbaa !12, !noalias !26 ; 2 uses
  %i.ep = load <3 x float>, ptr %i.ed, align 8, !tbaa !12, !noalias !27
  %i.eq = fneg <3 x float> %i.ep                  ; 5 uses
  %i.er = shufflevector <3 x float> %i.eq, <3 x float> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %i.es = shufflevector <3 x float> %i.eq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x float> %i.ek, %i.es
  %i.eu = shufflevector <3 x float> %i.eq, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.eu, <2 x float> %i.et)
  %i.ew = shufflevector <3 x float> %i.eq, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.ew, <2 x float> %i.ev)
  %i.ey = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ey, %i.ek
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ej, <2 x float> %i.ez)
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.el, <2 x float> %i.fa)
  %7 = insertelement <2 x float> poison, float %i.en, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <2 x float> %i.ee, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %10 = shufflevector <3 x float> %i.eq, <3 x float> %9, <2 x i32> <i32 3, i32 1>
  %i.fc = fmul <2 x float> %8, %10
  %i.fd = shufflevector <3 x float> %i.cd, <3 x float> %i.er, <2 x i32> <i32 0, i32 4>
  %i.fe = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ff, <2 x float> %i.fc)
  %11 = insertelement <2 x float> poison, float %i.eo, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <2 x float> %i.ew, <2 x float> %i.ee, <2 x i32> <i32 3, i32 1>
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %13, <2 x float> %i.fg) ; 2 uses
  %i.fi = fadd <2 x float> %i.fb, %i.ex
  %shift152 = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop153 = fadd <2 x float> %i.fh, %shift152
  %.sroa.3.12.vec.insert.i4.i.i39156 = insertelement <2 x float> %foldExtExtBinop153, float 0.000000e+00, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fk = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fm = fmul <4 x float> %i.fl, %i.cr
  %i.fn = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.fo, <4 x float> %i.fm)
  %i.fq = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.fr, <4 x float> %i.fp)
  store <4 x float> %i.fs, ptr %i.fj, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fu = shufflevector <4 x float> %i.fk, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fv = fmul <4 x float> %i.fu, %i.cr
  %i.fw = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.fw, <4 x float> %i.fv)
  %i.fy = shufflevector <4 x float> %i.fq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.fy, <4 x float> %i.fx)
  store <4 x float> %i.fz, ptr %i.ft, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gb = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.en, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gd = fmul <4 x float> %i.gc, %i.cr
  %i.ge = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.em, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.gf, <4 x float> %i.gd)
  %i.gh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.eo, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.gi, <4 x float> %i.gg)
  store <4 x float> %i.gj, ptr %i.ga, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x float> %i.fi, ptr %i.gk, align 8
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i39156, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !10
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 704
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.gn, align 8, !tbaa !12
  store <2 x float> zeroinitializer, ptr %i.go, align 8, !tbaa !12
  store <2 x float> <float f0xBF490FDB, float f0x3F490FDB>, ptr %i.gp, align 8, !tbaa !12
  tail call void @_ZN30btGeneric6DofSpring2Constraint12enableSpringEib(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef 2, i1 noundef zeroext true)
  tail call void @_ZN30btGeneric6DofSpring2Constraint12setStiffnessEifb(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef 2, float noundef f0x421DE9E7, i1 noundef zeroext true)
  tail call void @_ZN30btGeneric6DofSpring2Constraint10setDampingEifb(ptr noundef nonnull align 8 dereferenceable(1484) %0, i32 noundef 2, float noundef f0x3C23D70A, i1 noundef zeroext true)
  tail call void @_ZN30btGeneric6DofSpring2Constraint19setEquilibriumPointEv(ptr noundef nonnull align 8 dereferenceable(1484) %0)
  ret void
}

declare void @_ZN30btGeneric6DofSpring2ConstraintC2ER11btRigidBodyS1_RK11btTransformS4_11RotateOrder(ptr noundef nonnull align 8 dereferenceable(1484), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN30btGeneric6DofSpring2Constraint12enableSpringEib(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint12setStiffnessEifb(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, float noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint10setDampingEifb(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, float noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint19setEquilibriumPointEv(ptr noundef nonnull align 8 dereferenceable(1484)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, float noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18btHinge2ConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1532) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN18btHinge2ConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #13
  unreachable

_ZN18btHinge2ConstraintdlEPv.exit:                ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN30btGeneric6DofSpring2Constraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1484) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN30btGeneric6DofSpring2Constraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(1484), ptr noundef) unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1484), ptr noundef) unnamed_addr #1

declare void @_ZN30btGeneric6DofSpring2Constraint8setParamEifi(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, float noundef, i32 noundef) unnamed_addr #1

declare noundef float @_ZNK30btGeneric6DofSpring2Constraint8getParamEii(ptr noundef nonnull align 8 dereferenceable(1484), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK30btGeneric6DofSpring2Constraint28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(1484) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 656
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK30btGeneric6DofSpring2Constraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(1484) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load float, ptr %i.b, align 8, !tbaa !12
  store float %i.d, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.f, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load float, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.i, ptr %i.j, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.l, ptr %i.m, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load float, ptr %i.n, align 8, !tbaa !12
  store float %i.p, ptr %i.o, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.r, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load float, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.u, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = load float, ptr %i.w, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.x, ptr %i.y, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load float, ptr %i.z, align 8, !tbaa !12
  store float %i.ab, ptr %i.aa, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.ad, ptr %i.ae, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load float, ptr %i.af, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.ag, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.aj, ptr %i.ak, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.an = load float, ptr %i.al, align 8, !tbaa !12
  store float %i.an, ptr %i.am, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.ap, ptr %i.aq, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = load float, ptr %i.ar, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.as, ptr %i.at, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.av, ptr %i.aw, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load float, ptr %i.ax, align 8, !tbaa !12
  store float %i.az, ptr %i.ay, align 4, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140
end_hunk_0
