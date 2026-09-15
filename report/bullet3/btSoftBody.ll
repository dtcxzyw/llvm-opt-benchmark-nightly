Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_:bb.a
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !412
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody6AJoint7PrepareEfi(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !390  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !492  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.g, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !382  ; 2 uses
  %.not2.i.i = icmp eq ptr %i.i, null
  br i1 %.not2.i.i, label %_ZNK10btSoftBody4Body8activateEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.i, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit.i

_ZNK10btSoftBody4Body8activateEv.exit.i:          ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !492  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.k, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK10btSoftBody4Body8activateEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !382  ; 2 uses
  %.not2.i2.i = icmp eq ptr %i.m, null
  br i1 %.not2.i2.i, label %_ZN10btSoftBody5Joint7PrepareEfi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.m, i1 noundef zeroext false)
  br label %_ZN10btSoftBody5Joint7PrepareEfi.exit

_ZN10btSoftBody5Joint7PrepareEfi.exit:            ; preds = %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.k, !prof !359

bb.h:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.j unwind label %bb.m       ; 4 uses

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.r, i64 16, i1 false), !tbaa.struct !260
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !260
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !260
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !260
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !382  ; 2 uses
  %.not5.i = icmp eq ptr %i.w, null
  br i1 %.not5.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit

common.resume:                                    ; preds = %bb.t, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.bw, %bb.t ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !383  ; 2 uses
  %.not6.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.aa
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.l, %bb.n
  %.0.i = phi ptr [ %i.x, %bb.l ], [ %spec.select.i, %bb.n ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !253
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !253
  %i.aj = load <2 x float>, ptr %.0.i, align 4, !tbaa !253 ; 2 uses
  %i.ak = load float, ptr %i.ac, align 4, !tbaa !253 ; 2 uses
  %i.al = load float, ptr %i.ab, align 8, !tbaa !253 ; 2 uses
  %i.am = load float, ptr %i.af, align 8, !tbaa !253 ; 2 uses
  %i.an = load <2 x float>, ptr %i.ag, align 4, !tbaa !253 ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = shufflevector <2 x float> %i.aj, <2 x float> %i.an, <2 x i32> <i32 1, i32 3>
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  %i.as = shufflevector <2 x float> %i.aj, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.at = insertelement <2 x float> poison, float %i.al, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.au, <2 x float> %i.ar)
  %i.aw = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.ai, i64 1
  %i.ay = insertelement <2 x float> poison, float %i.am, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.az, <2 x float> %i.av)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !253
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !253
  %i.bf = fmul float %i.ak, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.al, float %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !253
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.am, float %i.bg)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <2 x float> %i.ba, ptr %i.bk, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !259
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.r, !prof !359

bb.o:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  %.not.i16 = icmp eq i32 %i.bo, 0
  br i1 %.not.i16, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.q unwind label %bb.t       ; 4 uses

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.bp, i64 16, i1 false), !tbaa.struct !260
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !260
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !260
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !260
  %i.bt = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #39
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !382 ; 2 uses
  %.not5.i12 = icmp eq ptr %i.bu, null
  br i1 %.not5.i12, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

bb.t:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.u:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !383 ; 2 uses
  %.not6.i14 = icmp eq ptr %i.bx, null
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %spec.select.i15 = select i1 %.not6.i14, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.by
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

_ZNK10btSoftBody4Body5xformEv.exit17:             ; preds = %bb.s, %bb.u
  %.0.i13 = phi ptr [ %i.bv, %bb.s ], [ %spec.select.i15, %bb.u ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !253
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i13, i64 24
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !253
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i13, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i13, i64 40
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !253 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ck = load float, ptr %i.bk, align 8, !tbaa !253 ; 3 uses
  %i.cl = load <2 x float>, ptr %.0.i13, align 4, !tbaa !253 ; 2 uses
  %3 = load <3 x float>, ptr %i.bz, align 8, !tbaa !253 ; 3 uses
  %i.cm = load <2 x float>, ptr %i.cc, align 4, !tbaa !253 ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cf, align 4, !tbaa !253 ; 4 uses
  %4 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.cp = fmul <2 x float> %4, %i.co
  %i.cq = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.cr = fmul <2 x float> %i.cq, %4
  %i.cs = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.ct = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cp)
  %i.cv = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.ct, <2 x float> %i.cr)
  %i.cx = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.ch, i64 1
  %5 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %5, <2 x float> %i.cu) ; 6 uses
  %i.da = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cb, i64 1
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %5, <2 x float> %i.cw) ; 3 uses
  %i.dd = shufflevector <2 x float> %i.cz, <2 x float> %i.dc, <2 x i32> <i32 3, i32 0>
  %i.de = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.cz, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.dd, ptr %i.ci, align 8
  store <2 x float> %i.de, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !259
  %i.df = load <2 x float>, ptr %i.cj, align 4, !tbaa !253 ; 5 uses
  %i.dg = fneg <2 x float> %i.df
  %i.dh = fmul <2 x float> %i.dc, %i.dg
  %i.di = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dj = insertelement <2 x float> %i.di, float %i.ck, i64 1
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.dj, <2 x float> %i.dh) ; 4 uses
  %i.dl = fneg float %i.ck
  %i.dm = extractelement <2 x float> %i.cz, i64 0
  %i.dn = fmul float %i.dm, %i.dl
  %i.do = extractelement <2 x float> %i.dc, i64 1 ; 2 uses
  %i.dp = extractelement <2 x float> %i.df, i64 0
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float %i.dp, float %i.dn) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.dk, %i.dk
  %i.dr = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ds = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %i.dr)
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.dt)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.du) ; 2 uses
  %i.dv = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.dv, label %bb.v, label %_ZL12NormalizeAnyRK9btVector3.exit

bb.v:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17
  %i.dw = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dk, %i.dy
  %i.ea = fmul float %i.dq, %i.dw
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0
  br label %_ZL12NormalizeAnyRK9btVector3.exit

_ZL12NormalizeAnyRK9btVector3.exit:               ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17, %bb.v
  %.sroa.0.0.i = phi <2 x float> [ %i.dz, %bb.v ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i, %bb.v ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !259
  %foldExtExtBinop79 = fmul <2 x float> %i.cz, %i.df
  %i.ec = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.do, float %i.ec)
  %i.ee = extractelement <2 x float> %i.cz, i64 1
  %i.ef = extractelement <2 x float> %i.df, i64 1
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.ee, float %i.ed) ; 3 uses
  %i.eh = fcmp olt float %i.eg, -1.000000e+00
  %i.ei = fcmp ogt float %i.eg, 1.000000e+00
  %..i = select i1 %i.ei, float 1.000000e+00, float %i.eg
  %i.ej = select i1 %i.eh, float -1.000000e+00, float %..i ; 2 uses
  %i.ek = fcmp olt float %i.ej, -1.000000e+00
  %spec.store.select.i = select i1 %i.ek, float -1.000000e+00, float %i.ej
  %i.el = tail call noundef float @acosf(float noundef %spec.store.select.i) #39 ; 2 uses
  %i.em = fcmp ogt float %i.el, f0x3E490FDB
  %.sroa.speculated61 = select i1 %i.em, float f0x3E490FDB, float %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.eo = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.ep = fmul float %.sroa.speculated61, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.er = load float, ptr %i.eq, align 4, !tbaa !494
  %i.es = fdiv float %i.er, %1                    ; 2 uses
  %i.et = insertelement <2 x float> poison, float %.sroa.speculated61, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.eu, %.sroa.0.0.i
  %i.ew = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.ev, %i.ex
  store <2 x float> %i.ey, ptr %i.eb, align 4, !tbaa !253
  %i.ez = fmul float %i.ep, %i.es
  store float %i.ez, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !253
  %i.fa = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %bb.y, !prof !359

bb.w:                                             ; preds = %_ZL12NormalizeAnyRK9btVector3.exit
  %i.fc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  %.not.i29 = icmp eq i32 %i.fc, 0
  br i1 %.not.i29, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fd = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZL12NormalizeAnyRK9btVector3.exit
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !492 ; 2 uses
  %.not5.i25 = icmp eq ptr %i.fe, null
  br i1 %.not5.i25, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 372
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.aa:                                            ; preds = %bb.y
  %i.fg = load ptr, ptr %i.n, align 8, !tbaa !383 ; 2 uses
  %.not6.i27 = icmp eq ptr %i.fg, null
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 216
  %spec.select.i28 = select i1 %.not6.i27, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fh
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.z, %bb.aa
  %.0.i26 = phi ptr [ %i.ff, %bb.z ], [ %spec.select.i28, %bb.aa ] ; 6 uses
  %i.fi = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.ab, label %bb.ad, !prof !359

bb.ab:                                            ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  %.not.i34 = icmp eq i32 %i.fk, 0
  br i1 %.not.i34, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fl = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #39
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !492 ; 2 uses
  %.not5.i30 = icmp eq ptr %i.fm, null
  br i1 %.not5.i30, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 372
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

bb.af:                                            ; preds = %bb.ad
  %i.fo = load ptr, ptr %i.bl, align 8, !tbaa !383 ; 2 uses
  %.not6.i32 = icmp eq ptr %i.fo, null
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 216
  %spec.select.i33 = select i1 %.not6.i32, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fp
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35:  ; preds = %bb.ae, %bb.af
  %.0.i31 = phi ptr [ %i.fn, %bb.ae ], [ %spec.select.i33, %bb.af ] ; 6 uses
  %i.fq = load float, ptr %.0.i26, align 4, !tbaa !253, !noalias !1232
  %i.fr = load float, ptr %.0.i31, align 4, !tbaa !253, !noalias !1232
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i26, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i31, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.fw = load float, ptr %i.fu, align 4, !tbaa !253, !noalias !1232
  %i.fx = load float, ptr %i.fv, align 4, !tbaa !253, !noalias !1232
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i26, i64 20
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i31, i64 20
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32
  %i.gc = load float, ptr %i.ga, align 4, !tbaa !253, !noalias !1232
  %i.gd = load float, ptr %i.gb, align 4, !tbaa !253, !noalias !1232
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i26, i64 36
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i31, i64 36
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !387 ; 5 uses
  %i.gk = fcmp ogt float %i.gj, 0.000000e+00
  %i.gl = load <2 x float>, ptr %i.fs, align 4, !tbaa !253, !noalias !1232 ; 2 uses
  %i.gm = load <2 x float>, ptr %i.ft, align 4, !tbaa !253, !noalias !1232 ; 2 uses
  %i.gn = fadd <2 x float> %i.gl, %i.gm           ; 5 uses
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gp = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gq = insertelement <2 x float> %i.gp, float %i.fq, i64 1
  %i.gr = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x float> %i.gr, float %i.fr, i64 1
  %i.gt = fadd <2 x float> %i.gq, %i.gs           ; 4 uses
  %i.gu = load <2 x float>, ptr %i.fy, align 4, !tbaa !253, !noalias !1232 ; 2 uses
  %i.gv = load <2 x float>, ptr %i.fz, align 4, !tbaa !253, !noalias !1232 ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gx = insertelement <2 x float> %i.gw, float %i.fw, i64 1
  %i.gy = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gz = insertelement <2 x float> %i.gy, float %i.fx, i64 1
  %i.ha = fadd <2 x float> %i.gx, %i.gz           ; 4 uses
  %i.hb = fadd <2 x float> %i.gu, %i.gv           ; 4 uses
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hd = load <2 x float>, ptr %i.ge, align 4, !tbaa !253, !noalias !1232 ; 2 uses
  %i.he = load <2 x float>, ptr %i.gf, align 4, !tbaa !253, !noalias !1232 ; 2 uses
  %i.hf = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hg = insertelement <2 x float> %i.hf, float %i.gc, i64 1
  %i.hh = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hi = insertelement <2 x float> %i.hh, float %i.gd, i64 1
  %i.hj = fadd <2 x float> %i.hg, %i.hi           ; 4 uses
  %i.hk = fadd <2 x float> %i.hd, %i.he           ; 3 uses
  %i.hl = fneg <2 x float> %i.hk                  ; 2 uses
  %i.hm = fneg <2 x float> %i.hj
  %i.hn = fmul <2 x float> %i.ha, %i.hl
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hj, <2 x float> %i.hn) ; 3 uses
  %i.hp = extractelement <2 x float> %i.gn, i64 1
  %i.hq = fmul <2 x float> %i.gn, %i.hm
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.hk, <2 x float> %i.hq)
  %i.hs = fneg <2 x float> %i.hb
  %i.ht = fmul <2 x float> %i.gt, %i.hs
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.ha, <2 x float> %i.ht)
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody17setCollisionShapeEP16btCollisionShape:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK17btCollisionObject24checkCollideWithOverrideEPKS_(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !332
  %i.h = icmp ne ptr %i.g, %1                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %i.h, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.b, label %_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit, !llvm.loop !11

_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit: ; preds = %bb.b, %bb.a
  %.06.i = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.06.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody16getImpulseFactorEi(ptr dead_on_unwind noalias writable sret(%class.btMatrix3x3) align 4 %0, ptr noundef nonnull align 8 dereferenceable(2064) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4, !tbaa !253
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !253
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 4, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK10btSoftBody7getAabbER9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1508
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !260
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !260
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody6LJointD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btSoftBody6LJoint4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody5JointD2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody6AJointD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btSoftBody6AJoint4TypeEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody15RayFromToCasterD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, float noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollide7ProcessEPK11btDbvntNodeS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZN14btConcaveShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24btSoftBodyCollisionShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #39
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN14btConcaveShapedlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #40
  unreachable

_ZN14btConcaveShapedlEPv.exit:                    ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK24btSoftBodyCollisionShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1508
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1512
  %.sroa.1197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1516
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1524
  %.sroa.079.0.copyload = load float, ptr %i.d, align 4 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1528
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1532
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.l, align 4, !tbaa !253 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.793.0.copyload = load float, ptr %.sroa.793.0..sroa_idx, align 4 ; 2 uses
  %.sroa.089.0.copyload = load float, ptr %i.c, align 4 ; 3 uses
  %.sroa.1197.0.copyload = load float, ptr %.sroa.1197.0..sroa_idx, align 4 ; 11 uses
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !253 ; 4 uses
  %i.p = load <2 x float>, ptr %i.e, align 4, !tbaa !253 ; 4 uses
  %i.q = insertelement <2 x float> poison, float %.sroa.793.0.copyload, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 1, i32 3>
  %i.t = fmul <2 x float> %i.r, %i.s              ; 3 uses
  %i.u = insertelement <2 x float> poison, float %.sroa.089.0.copyload, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.w, <2 x float> %i.t) ; 3 uses
  %i.y = insertelement <2 x float> poison, float %.sroa.1197.0.copyload, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = load <2 x float>, ptr %i.n, align 4, !tbaa !253 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !253 ; 8 uses
  %i.ad = extractelement <2 x float> %i.t, i64 0
  %i.ae = extractelement <2 x float> %i.o, i64 0  ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %.sroa.079.0.copyload, float %i.ae, float %i.ad) ; 2 uses
  %i.ag = extractelement <2 x float> %i.t, i64 1
  %i.ah = extractelement <2 x float> %i.p, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %.sroa.079.0.copyload, float %i.ah, float %i.ag) ; 2 uses
  %i.aj = extractelement <2 x float> %i.aa, i64 0 ; 7 uses
  %i.ak = extractelement <2 x float> %i.aa, i64 1 ; 7 uses
  %i.al = extractelement <2 x float> %i.x, i64 0
  %i.am = extractelement <2 x float> %i.x, i64 1
  %4 = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 8 uses
  %i.an = load <2 x float>, ptr %i.f, align 4, !tbaa !253 ; 3 uses
  %i.ao = load float, ptr %i.k, align 4, !tbaa !253
  %i.ap = load <2 x float>, ptr %i.g, align 4, !tbaa !253 ; 3 uses
  %i.aq = load float, ptr %i.h, align 4, !tbaa !253 ; 6 uses
  %i.ar = load <2 x float>, ptr %i.i, align 4, !tbaa !253 ; 2 uses
  %i.as = load float, ptr %i.j, align 4, !tbaa !253 ; 6 uses
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.at, <2 x float> %i.x)
  %i.av = fmul float %.sroa.793.0.copyload, %i.ao ; 2 uses
  %i.aw = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %.sroa.089.0.copyload, float %i.aw, float %i.av) ; 2 uses
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.m, float %i.ax)
  %i.az = fadd <2 x float> %i.au, %i.aa
  %i.ba = fadd float %i.ay, %i.ac
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.aq, float %i.af)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.as, float %i.ai)
  %i.bd = tail call float @llvm.fmuladd.f32(float %.sroa.079.0.copyload, float %i.aw, float %i.av) ; 2 uses
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.m, float %i.bd)
  %i.bf = fadd float %i.bb, %i.aj                 ; 4 uses
  %i.bg = fadd float %i.bc, %i.ak                 ; 4 uses
  %i.bh = fadd float %i.be, %i.ac                 ; 4 uses
  %i.bi = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.an, <2 x float> %i.ap, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.bk = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.bm = fmul <4 x float> %i.bi, %i.bl           ; 3 uses
  %i.bn = extractelement <4 x float> %i.bm, i64 1
  %i.bo = tail call float @llvm.fmuladd.f32(float %.sroa.079.0.copyload, float %i.ae, float %i.bn) ; 2 uses
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.aq, float %i.bo)
  %i.bq = extractelement <4 x float> %i.bm, i64 2
  %i.br = tail call float @llvm.fmuladd.f32(float %.sroa.079.0.copyload, float %i.ah, float %i.bq) ; 2 uses
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.as, float %i.br)
  %i.bt = insertelement <4 x float> poison, float %.sroa.089.0.copyload, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %.sroa.079.0.copyload, i64 1
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.bw = shufflevector <2 x float> %i.o, <2 x float> %i.p, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.bx = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> %i.bw, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.by, <4 x float> %i.bm) ; 5 uses
  %i.ca = extractelement <4 x float> %i.bz, i64 0
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.m, float %i.ca)
  %i.cc = fadd float %i.bp, %i.aj                 ; 4 uses
  %i.cd = fadd float %i.bs, %i.ak                 ; 4 uses
  %i.ce = fadd float %i.cb, %i.ac                 ; 4 uses
  %i.cf = extractelement <4 x float> %i.bz, i64 1
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.aq, float %i.cf)
  %i.ch = extractelement <4 x float> %i.bz, i64 2
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.as, float %i.ch)
  %i.cj = extractelement <4 x float> %i.bz, i64 3
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %.sroa.1197.0.copyload, float %i.m, float %i.cj)
  %i.cl = fadd float %i.cg, %i.aj                 ; 4 uses
  %i.cm = fadd float %i.ci, %i.ak                 ; 4 uses
  %i.cn = fadd float %i.ck, %i.ac                 ; 4 uses
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %i.aq, float %i.al)
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %i.as, float %i.am)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %i.m, float %i.ax)
  %i.cr = fadd float %i.co, %i.aj                 ; 4 uses
  %i.cs = fadd float %i.cp, %i.ak                 ; 4 uses
  %i.ct = fadd float %i.cq, %i.ac                 ; 4 uses
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %i.aq, float %i.af)
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %i.as, float %i.ai)
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %i.m, float %i.bd)
  %i.cx = fadd float %i.cu, %i.aj                 ; 4 uses
  %i.cy = fadd float %i.cv, %i.ak                 ; 4 uses
  %i.cz = fadd float %i.cw, %i.ac                 ; 4 uses
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %i.aq, float %i.bo)
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %i.as, float %i.br)
  %i.dc = fadd float %i.da, %i.aj                 ; 4 uses
  %i.dd = fadd float %i.db, %i.ak                 ; 4 uses
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.de = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.df = insertelement <4 x float> %i.de, float %i.m, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %i.dg, <4 x float> %i.bz) ; 4 uses
  %i.di = extractelement <4 x float> %i.dh, i64 0
  %i.dj = fadd float %i.di, %i.ac                 ; 4 uses
  %i.dk = extractelement <4 x float> %i.dh, i64 1
  %i.dl = fadd float %i.dk, %i.aj                 ; 4 uses
  %i.dm = extractelement <4 x float> %i.dh, i64 2
  %i.dn = fadd float %i.dm, %i.ak                 ; 4 uses
  %i.do = extractelement <4 x float> %i.dh, i64 3
  %i.dp = fadd float %i.do, %i.ac                 ; 4 uses
  store <2 x float> %i.az, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !259
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !260
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 14 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 14 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 14 uses
  %i.dv = load float, ptr %2, align 4, !tbaa !253
  %i.dw = fcmp olt float %i.bf, %i.dv
  br i1 %i.dw, label %bb.b, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  store float %i.bf, ptr %2, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.b, %bb.a
  %i.dx = load float, ptr %i.dq, align 4, !tbaa !253
  %i.dy = fcmp olt float %i.bg, %i.dx
  br i1 %i.dy, label %bb.c, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.c:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.bg, ptr %i.dq, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.c, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.dz = load float, ptr %i.dr, align 4, !tbaa !253
  %i.ea = fcmp olt float %i.bh, %i.dz
  br i1 %i.ea, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit6.i

bb.d:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  store float %i.bh, ptr %i.dr, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit6.i

_Z8btSetMinIfEvRT_RKS0_.exit6.i:                  ; preds = %bb.d, %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.eb = load float, ptr %i.ds, align 4, !tbaa !253
  %i.ec = fcmp ogt float %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.e, label %_ZN9btVector36setMinERKS_.exit

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !253
  br label %_ZN9btVector36setMinERKS_.exit

_ZN9btVector36setMinERKS_.exit:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i, %bb.e
  %i.ed = load float, ptr %3, align 4, !tbaa !253
  %i.ee = fcmp olt float %i.ed, %i.bf
  br i1 %i.ee, label %bb.f, label %_Z8btSetMaxIfEvRT_RKS0_.exit.i

bb.f:                                             ; preds = %_ZN9btVector36setMinERKS_.exit
  store float %i.bf, ptr %3, align 4, !tbaa !253
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit.i

_Z8btSetMaxIfEvRT_RKS0_.exit.i:                   ; preds = %bb.f, %_ZN9btVector36setMinERKS_.exit
  %i.ef = load float, ptr %i.dt, align 4, !tbaa !253
  %i.eg = fcmp olt float %i.ef, %i.bg
  br i1 %i.eg, label %bb.g, label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i

bb.g:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit.i
  store float %i.bg, ptr %i.dt, align 4, !tbaa !253
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i

_Z8btSetMaxIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.g, %_Z8btSetMaxIfEvRT_RKS0_.exit.i
  %i.eh = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !253
  %i.ei = fcmp olt float %i.eh, %i.bh
  br i1 %i.ei, label %bb.h, label %_Z8btSetMaxIfEvRT_RKS0_.exit6.i

bb.h:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit5.i
  store float %i.bh, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !253
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit6.i

_Z8btSetMaxIfEvRT_RKS0_.exit6.i:                  ; preds = %bb.h, %_Z8btSetMaxIfEvRT_RKS0_.exit5.i
  %i.ej = load float, ptr %i.du, align 4, !tbaa !253
  %i.ek = fcmp olt float %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.i, label %_ZN9btVector36setMaxERKS_.exit

bb.i:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit6.i
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !253
  br label %_ZN9btVector36setMaxERKS_.exit

_ZN9btVector36setMaxERKS_.exit:                   ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit6.i, %bb.i
  %i.el = load float, ptr %2, align 4, !tbaa !253
  %i.em = fcmp olt float %i.cc, %i.el
  br i1 %i.em, label %bb.j, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.1

bb.j:                                             ; preds = %_ZN9btVector36setMaxERKS_.exit
  store float %i.cc, ptr %2, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.1

_Z8btSetMinIfEvRT_RKS0_.exit.i.1:                 ; preds = %bb.j, %_ZN9btVector36setMaxERKS_.exit
  %i.en = load float, ptr %i.dq, align 4, !tbaa !253
  %i.eo = fcmp olt float %i.cd, %i.en
  br i1 %i.eo, label %bb.k, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i.1

bb.k:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.1
  store float %i.cd, ptr %i.dq, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i.1

_Z8btSetMinIfEvRT_RKS0_.exit5.i.1:                ; preds = %bb.k, %_Z8btSetMinIfEvRT_RKS0_.exit.i.1
  %i.ep = load float, ptr %i.dr, align 4, !tbaa !253
  %i.eq = fcmp olt float %i.ce, %i.ep
  br i1 %i.eq, label %bb.l, label %_Z8btSetMinIfEvRT_RKS0_.exit6.i.1

bb.l:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i.1
  store float %i.ce, ptr %i.dr, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit6.i.1

_Z8btSetMinIfEvRT_RKS0_.exit6.i.1:                ; preds = %bb.l, %_Z8btSetMinIfEvRT_RKS0_.exit5.i.1
  %i.er = load float, ptr %i.ds, align 4, !tbaa !253
  %i.es = fcmp ogt float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.m, label %_ZN9btVector36setMinERKS_.exit.1

bb.m:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i.1
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !253
  br label %_ZN9btVector36setMinERKS_.exit.1

_ZN9btVector36setMinERKS_.exit.1:                 ; preds = %bb.m, %_Z8btSetMinIfEvRT_RKS0_.exit6.i.1
  %i.et = load float, ptr %3, align 4, !tbaa !253
  %i.eu = fcmp olt float %i.et, %i.cc
  br i1 %i.eu, label %bb.n, label %_Z8btSetMaxIfEvRT_RKS0_.exit.i.1

bb.n:                                             ; preds = %_ZN9btVector36setMinERKS_.exit.1
  store float %i.cc, ptr %3, align 4, !tbaa !253
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit.i.1

_Z8btSetMaxIfEvRT_RKS0_.exit.i.1:                 ; preds = %bb.n, %_ZN9btVector36setMinERKS_.exit.1
  %i.ev = load float, ptr %i.dt, align 4, !tbaa !253
  %i.ew = fcmp olt float %i.ev, %i.cd
  br i1 %i.ew, label %bb.o, label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1

bb.o:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit.i.1
  store float %i.cd, ptr %i.dt, align 4, !tbaa !253
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1

_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1:                ; preds = %bb.o, %_Z8btSetMaxIfEvRT_RKS0_.exit.i.1
  %i.ex = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !253
  %i.ey = fcmp olt float %i.ex, %i.ce
  br i1 %i.ey, label %bb.p, label %_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1

bb.p:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1
  store float %i.ce, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !253
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1

_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1:                ; preds = %bb.p, %_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1
  %i.ez = load float, ptr %i.du, align 4, !tbaa !253
  %i.fa = fcmp olt float %i.ez, 0.000000e+00
  br i1 %i.fa, label %bb.q, label %_ZN9btVector36setMaxERKS_.exit.1

bb.q:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !253
  br label %_ZN9btVector36setMaxERKS_.exit.1

_ZN9btVector36setMaxERKS_.exit.1:                 ; preds = %bb.q, %_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1
  %i.fb = load float, ptr %2, align 4, !tbaa !253
  %i.fc = fcmp olt float %i.cl, %i.fb
  br i1 %i.fc, label %bb.r, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.2

bb.r:                                             ; preds = %_ZN9btVector36setMaxERKS_.exit.1
  store float %i.cl, ptr %2, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.2

_Z8btSetMinIfEvRT_RKS0_.exit.i.2:                 ; preds = %bb.r, %_ZN9btVector36setMaxERKS_.exit.1
  %i.fd = load float, ptr %i.dq, align 4, !tbaa !253
  %i.fe = fcmp olt float %i.cm, %i.fd
  br i1 %i.fe, label %bb.s, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i.2

bb.s:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.2
  store float %i.cm, ptr %i.dq, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i.2

_Z8btSetMinIfEvRT_RKS0_.exit5.i.2:                ; preds = %bb.s, %_Z8btSetMinIfEvRT_RKS0_.exit.i.2
  %i.ff = load float, ptr %i.dr, align 4, !tbaa !253
  %i.fg = fcmp olt float %i.cn, %i.ff
  br i1 %i.fg, label %bb.t, label %_Z8btSetMinIfEvRT_RKS0_.exit6.i.2

bb.t:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i.2
  store float %i.cn, ptr %i.dr, align 4, !tbaa !253
  br label %_Z8btSetMinIfEvRT_RKS0_.exit6.i.2

_Z8btSetMinIfEvRT_RKS0_.exit6.i.2:                ; preds = %bb.t, %_Z8btSetMinIfEvRT_RKS0_.exit5.i.2
  %i.fh = load float, ptr %i.ds, align 4, !tbaa !253
  %i.fi = fcmp ogt float %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.u, label %_ZN9btVector36setMinERKS_.exit.2

bb.u:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i.2
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !253
  br label %_ZN9btVector36setMinERKS_.exit.2

_ZN9btVector36setMinERKS_.exit.2:                 ; preds = %bb.u, %_Z8btSetMinIfEvRT_RKS0_.exit6.i.2
  %i.fj = load float, ptr %3, align 4, !tbaa !253
  %i.fk = fcmp olt float %i.fj, %i.cl
  br i1 %i.fk, label %bb.v, label %_Z8btSetMaxIfEvRT_RKS0_.exit.i.2
end_hunk_1
begin_hunk_2_@_ZN15btSoftColliders12CollideVF_DD7ProcessEPK10btDbvtNodeS3_:bb.a
  %.val26 = load float, ptr %i.w, align 4, !tbaa !253 ; 2 uses
  %i.x = fmul float %.sroa.544.0.copyload, %.val25
  %i.y = extractelement <4 x float> %i.r, i64 0
  %i.z = tail call float @llvm.fmuladd.f32(float %.val, float %i.y, float %i.x)
  %i.aa = extractelement <4 x float> %i.r, i64 2
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %.val26, float %i.aa, float %i.z)
  %i.ac = fcmp ugt float %.val, 0.000000e+00
  %i.ad = fcmp ugt float %.val25, 0.000000e+00
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = fcmp ugt float %.val26, 0.000000e+00
  %or.cond50 = select i1 %or.cond, i1 %i.ae, i1 false
  %.0 = select i1 %or.cond50, float %i.ab, float 0.000000e+00
  %i.af = fadd float %i.t, %.0
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %.sroa.10.48.copyload = load <2 x float>, ptr %i.o, align 8 ; 5 uses
  %.sroa.14.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.14.48.copyload = load <2 x float>, ptr %.sroa.14.48..sroa_idx, align 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !527, !range !262, !noundef !263
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = extractelement <2 x float> %.sroa.14.48.copyload, i64 0
  br i1 %i.aj, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load float, ptr %i.n, align 8, !tbaa !253
  %i.am = load float, ptr %i.m, align 4, !tbaa !253
  %i.an = fsub float %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !253
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !253
  %i.as = fsub <2 x float> %i.aq, %i.ar           ; 2 uses
  %.sroa.10.48.vec.extract = extractelement <2 x float> %.sroa.10.48.copyload, i64 0
  %shift = shufflevector <2 x float> %.sroa.10.48.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.as
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.10.48.vec.extract, float %i.an, float %i.at)
  %.sroa.14.56.vec.extract = extractelement <2 x float> %.sroa.14.48.copyload, i64 0
  %i.av = extractelement <2 x float> %i.as, i64 1
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %.sroa.14.56.vec.extract, float %i.av, float %i.au)
  %i.ax = fcmp olt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ay = fneg <2 x float> %.sroa.10.48.copyload
  %i.az = fneg float %i.ak
  %.sroa.3.12.vec.insert.i30 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.14.0 = phi <2 x float> [ %.sroa.14.48.copyload, %bb.d ], [ %.sroa.3.12.vec.insert.i30, %bb.e ], [ %.sroa.14.48.copyload, %bb.c ]
  %.sroa.10.0 = phi <2 x float> [ %.sroa.10.48.copyload, %bb.d ], [ %i.ay, %bb.e ], [ %.sroa.10.48.copyload, %bb.c ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !466 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 444
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !354
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !466 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 444
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !354
  %i.bi = fmul float %i.bd, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1316 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !215 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 1320 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !216
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.f, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit

bb.f:                                             ; preds = %.critedge
  %.not.i.i = icmp eq i32 %i.bk, 0
  %i.bo = shl nsw i32 %i.bk, 1
  %i.bp = select i1 %.not.i.i, i32 1, i32 %i.bo   ; 4 uses
  %i.bq = icmp slt i32 %i.bk, %i.bp
  br i1 %i.bq, label %bb.g, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = sext i32 %i.bp to i64
  %i.bs = mul nsw i64 %i.br, 88
  %i.bt = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bs, i32 noundef 16)
  %.pre.i = load i32, ptr %i.bj, align 4, !tbaa !215
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bu = phi i32 [ %.pre.i, %bb.h ], [ %i.bk, %bb.g ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.bt, %bb.h ], [ null, %bb.g ] ; 4 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 1328 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.bu to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bx = icmp eq i32 %i.bu, 1
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.by = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !214
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.by, ptr noundef nonnull align 8 dereferenceable(88) %i.ca, i64 88, i1 false), !tbaa.struct !554
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !214
  %i.cd = getelementptr inbounds nuw [88 x i8], ptr %i.cc, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cb, ptr noundef nonnull align 8 dereferenceable(88) %i.cd, i64 88, i1 false), !tbaa.struct !554
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !30

_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod60 = trunc i32 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.ce = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !214
  %i.cg = getelementptr inbounds nuw [88 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noundef nonnull align 8 dereferenceable(88) %i.cg, i64 88, i1 false), !tbaa.struct !554
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE8allocateEi.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 1328 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !214 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 1336
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !213, !range !262, !noundef !263
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ci)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i: ; preds = %bb.k, %bb.j, %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE4copyEiiPS1_.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bb, i64 1336
  store i8 1, ptr %i.cm, align 8, !tbaa !213
  store ptr %.0.i.i.i, ptr %i.ch, align 8, !tbaa !214
  store i32 %i.bp, ptr %i.bl, align 8, !tbaa !216
  %.pre2.i = load i32, ptr %i.bj, align 4, !tbaa !215
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit: ; preds = %.critedge, %bb.f, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i
  %i.cn = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE10deallocateEv.exit.i.i ], [ %i.bk, %bb.f ], [ %i.bk, %.critedge ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 1328
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !214
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [88 x i8], ptr %i.cp, i64 %i.cq ; 10 uses
  store ptr %i.b, ptr %i.cr, align 8, !tbaa !316
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.d, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !553
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x float> %i.r, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.0..sroa_idx, i8 0, i64 16, i1 false)
  store <2 x float> %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store <2 x float> %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !259
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  store float %.val27, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !253
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 68
  store float %i.bi, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !253
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  store <2 x float> zeroinitializer, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !253
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  store ptr %i.bf, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !332
  %i.cs = load i32, ptr %i.bj, align 4, !tbaa !215
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.bj, align 4, !tbaa !215
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE9push_backERKS1_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZL13proximityTestRK9btVector3S1_S1_S1_S1_RKfRS_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, float %.0.val, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %5) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load float, ptr %i.a, align 4, !tbaa !253
  %i.d = load float, ptr %3, align 4, !tbaa !253
  %i.e = load float, ptr %i.b, align 4, !tbaa !253
  %6 = load <3 x float>, ptr %2, align 4, !tbaa !253 ; 5 uses
  %i.f = load float, ptr %2, align 4, !tbaa !253
  %7 = extractelement <3 x float> %6, i64 1
  %i.g = fsub float %i.c, %7                      ; 2 uses
  %i.h = fsub float %i.d, %i.f                    ; 2 uses
  %8 = extractelement <3 x float> %6, i64 2
  %i.i = fsub float %i.e, %8                      ; 2 uses
  %i.j = load float, ptr %4, align 4, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !253
  %i.m = fmul float %i.g, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.h, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !253
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.p, float %i.n)
  %i.r = tail call noundef float @llvm.fabs.f32(float %i.q)
  %i.s = fcmp ogt float %i.r, %.0.val
  br i1 %i.s, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !253
  %i.v = load <4 x float>, ptr %1, align 4
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.x = load <2 x float>, ptr %0, align 4, !tbaa !253 ; 2 uses
  %i.y = load <2 x float>, ptr %1, align 4, !tbaa !253 ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %i.aa = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fsub <2 x float> %i.z, %i.aa            ; 5 uses
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %9 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fsub <2 x float> %i.ac, %9              ; 5 uses
  %i.ae = insertelement <2 x float> %i.w, float %i.u, i64 1
  %10 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.af = fsub <2 x float> %i.ae, %10             ; 5 uses
  %i.ag = fmul <2 x float> %i.ad, %i.ad
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ab, <2 x float> %i.ag)
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.af, <2 x float> %i.ah) ; 3 uses
  %i.aj = extractelement <2 x float> %i.ad, i64 0 ; 3 uses
  %i.ak = extractelement <2 x float> %i.ad, i64 1 ; 3 uses
  %i.al = fmul float %i.ak, %i.aj
  %i.am = extractelement <2 x float> %i.ab, i64 0 ; 3 uses
  %i.an = extractelement <2 x float> %i.ab, i64 1 ; 3 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.am, float %i.al)
  %i.ap = extractelement <2 x float> %i.af, i64 0 ; 3 uses
  %i.aq = extractelement <2 x float> %i.af, i64 1 ; 3 uses
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.ap, float %i.ao) ; 2 uses
  %i.as = fneg float %i.ar                        ; 2 uses
  %i.at = fmul float %i.ar, %i.as
  %i.au = extractelement <2 x float> %i.ai, i64 0
  %i.av = extractelement <2 x float> %i.ai, i64 1
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.au, float %i.at) ; 2 uses
  %i.ax = fcmp olt float %i.aw, f0x34000000
  br i1 %i.ax, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = insertelement <2 x float> poison, float %i.g, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.az, %i.ad
  %i.bb = insertelement <2 x float> poison, float %i.h, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.bc, <2 x float> %i.ba)
  %i.be = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.bf, <2 x float> %i.bd) ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bg, %i.bj
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ai, <2 x float> %i.bk)
  %i.bm = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 4 uses
  %i.bq = fsub float 1.000000e+00, %i.bp
  %i.br = extractelement <2 x float> %i.bo, i64 1 ; 4 uses
  %i.bs = fsub float %i.bq, %i.br                 ; 3 uses
  %i.bt = fpext float %.0.val to double
  %i.bu = fneg float %i.aj
  %i.bv = fmul float %i.aq, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ap, float %i.bv) ; 2 uses
  %i.bx = fneg float %i.ap
  %i.by = fmul float %i.an, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.am, float %i.by) ; 2 uses
  %i.ca = fneg float %i.am
  %i.cb = fmul float %i.ak, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.an, float %i.aj, float %i.cb) ; 2 uses
  %i.cd = fmul float %i.bz, %i.bz
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.ce) ; 2 uses
  %i.cg = fcmp ogt float %i.cf, f0x34000000
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.cf)
  %i.ch = tail call float @llvm.fabs.f32(float %sqrt.i)
  %i.ci = select i1 %i.cg, float %i.ch, float 0.000000e+00
  %i.cj = fpext float %i.ci to double
  %i.ck = fmul double %i.cj, 5.000000e-01
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ck)
  %i.cl = fdiv double %i.bt, %sqrt
  %i.cm = fptrunc double %i.cl to float           ; 2 uses
  store float %i.bp, ptr %5, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.br, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bs, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !259
  %i.cn = fneg float %i.cm                        ; 3 uses
  %i.co = fadd float %i.cm, 1.000000e+00          ; 3 uses
  %i.cp = fcmp olt float %i.bp, %i.cn
  %i.cq = fcmp ogt float %i.bp, %i.co
  %or.cond = or i1 %i.cp, %i.cq
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cr = fcmp olt float %i.br, %i.cn
  %i.cs = fcmp ogt float %i.br, %i.co
  %or.cond.1 = or i1 %i.cr, %i.cs
  br i1 %or.cond.1, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ct = fcmp uge float %i.bs, %i.cn
  %i.cu = fcmp ule float %i.bs, %i.co
  %or.cond.2.not = and i1 %i.ct, %i.cu
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.d, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %or.cond.2.not, %bb.e ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders12CollideFF_DDD0Ev(ptr noundef nonnull align 8 dereferenceable(29) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders12CollideFF_DD7ProcessEPK11btDbvntNodeS3_(ptr noundef nonnull align 8 dereferenceable(29) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !477  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !477  ; 3 uses
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15btSoftColliders12CollideFF_DD5RepelEPN10btSoftBody4FaceES3_(ptr noundef nonnull align 8 dereferenceable(29) %0, ptr noundef %i.b, ptr noundef %i.d)
  tail call void @_ZN15btSoftColliders12CollideFF_DD5RepelEPN10btSoftBody4FaceES3_(ptr noundef nonnull align 8 dereferenceable(29) %0, ptr noundef %i.d, ptr noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btSoftColliders12CollideFF_DD5RepelEPN10btSoftBody4FaceES3_(ptr noundef nonnull align 8 dereferenceable(29) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !316  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !316  ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %.thread47, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !316  ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %.thread47, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !316  ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.thread47, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !316  ; 3 uses
  %i.n = icmp eq ptr %i.d, %i.m
  %i.o = icmp eq ptr %i.g, %i.m
  %or.cond = or i1 %i.n, %i.o
  %i.p = icmp eq ptr %i.j, %i.m
  %or.cond70 = or i1 %or.cond, %i.p
  br i1 %or.cond70, label %.thread47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !316  ; 3 uses
  %i.s = icmp eq ptr %i.d, %i.r
  %i.t = icmp eq ptr %i.g, %i.r
  %or.cond71 = or i1 %i.s, %i.t
  %i.u = icmp eq ptr %i.j, %i.r
  %or.cond72 = or i1 %or.cond71, %i.u
  br i1 %or.cond72, label %.thread47, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.14.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !316 ; 3 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !316
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !316
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !316 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.val = load float, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.al = call fastcc noundef zeroext i1 @_ZL13proximityTestRK9btVector3S1_S1_S1_S1_RKfRS_(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.x, float %.val, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br i1 %i.al, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %.sroa.10.48.copyload = load <2 x float>, ptr %i.x, align 8 ; 5 uses
  %.sroa.14.48.copyload = load <2 x float>, ptr %.sroa.14.48..sroa_idx, align 8 ; 4 uses
  %i.am = load i8, ptr %i.z, align 4, !tbaa !529, !range !262, !noundef !263
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = extractelement <2 x float> %.sroa.14.48.copyload, i64 0
  br i1 %i.an, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load float, ptr %i.ak, align 4, !tbaa !253
end_hunk_2
