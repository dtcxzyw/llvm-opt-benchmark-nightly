Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_:bb.a
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ay, <2 x float> %i.av)
  %i.ba = extractelement <3 x float> %i.ap, i64 2
  %i.bb = fmul float %i.ba, %i.r
  %i.bc = extractelement <3 x float> %i.ap, i64 1
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.p, float %i.bc, float %i.bb)
  %i.be = extractelement <3 x float> %i.ap, i64 0
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.be, float %i.bd)
  store <2 x float> %i.aa, ptr %i.u, align 4, !tbaa !159
  store float %i.ad, ptr %i.ab, align 4, !tbaa !159
  %i.bg = load <2 x float>, ptr %i.ae, align 4, !tbaa !159
  %i.bh = fadd <2 x float> %i.az, %i.bg
  store <2 x float> %i.bh, ptr %i.ae, align 4, !tbaa !159
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !159
  %i.bk = fadd float %i.bf, %i.bj
  store float %i.bk, ptr %i.bi, align 4, !tbaa !159
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 348 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !249
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !249
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6AJoint7PrepareEfi(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !292  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK10btSoftBody4Body8activateEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.f, i1 noundef zeroext false)
  br label %_ZNK10btSoftBody4Body8activateEv.exit.i

_ZNK10btSoftBody4Body8activateEv.exit.i:          ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZN10btSoftBody5Joint7PrepareEfi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i
  tail call void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.h, i1 noundef zeroext false)
  br label %_ZN10btSoftBody5Joint7PrepareEfi.exit

_ZN10btSoftBody5Joint7PrepareEfi.exit:            ; preds = %_ZNK10btSoftBody4Body8activateEv.exit.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.g, !prof !191

bb.d:                                             ; preds = %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.f unwind label %bb.i       ; 4 uses

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 16, i1 false), !tbaa.struct !193
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !193
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !193
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !193
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %_ZN10btSoftBody5Joint7PrepareEfi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !230  ; 2 uses
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
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !231  ; 2 uses
  %.not6.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %spec.select.i = select i1 %.not6.i, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.w
  br label %_ZNK10btSoftBody4Body5xformEv.exit

_ZNK10btSoftBody4Body5xformEv.exit:               ; preds = %bb.h, %bb.j
  %.0.i = phi ptr [ %i.t, %bb.h ], [ %spec.select.i, %bb.j ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !159
  %i.af = load <2 x float>, ptr %.0.i, align 4, !tbaa !159 ; 2 uses
  %i.ag = load float, ptr %i.y, align 4, !tbaa !159 ; 2 uses
  %i.ah = load float, ptr %i.x, align 8, !tbaa !159 ; 2 uses
  %i.ai = load float, ptr %i.ab, align 8, !tbaa !159 ; 2 uses
  %i.aj = load <2 x float>, ptr %i.ac, align 4, !tbaa !159 ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = shufflevector <2 x float> %i.af, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = shufflevector <2 x float> %i.af, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.ap = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.an)
  %i.as = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ae, i64 1
  %i.au = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.av, <2 x float> %i.ar)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !159
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.ba = load float, ptr %i.az, align 4, !tbaa !159
  %i.bb = fmul float %i.ag, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ah, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.be = load float, ptr %i.bd, align 4, !tbaa !159
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.ai, float %i.bc)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <2 x float> %i.aw, ptr %i.bg, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !180
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %bb.n, !prof !191

bb.k:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i16 = icmp eq i32 %i.bk, 0
  br i1 %.not.i16, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.m unwind label %bb.p       ; 4 uses

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.bl, i64 16, i1 false), !tbaa.struct !193
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !193
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !193
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 48), ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !193
  %i.bp = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZNK10btSoftBody4Body5xformEvE8identity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %_ZNK10btSoftBody4Body5xformEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !230 ; 2 uses
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
  %i.bu = load ptr, ptr %i.bh, align 8, !tbaa !231 ; 2 uses
  %.not6.i14 = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %spec.select.i15 = select i1 %.not6.i14, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr %i.bv
  br label %_ZNK10btSoftBody4Body5xformEv.exit17

_ZNK10btSoftBody4Body5xformEv.exit17:             ; preds = %bb.o, %bb.q
  %.0.i13 = phi ptr [ %i.bs, %bb.o ], [ %spec.select.i15, %bb.q ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !159
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i13, i64 24
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !159
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i13, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i13, i64 40
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !159 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ch = load float, ptr %i.bg, align 8, !tbaa !159 ; 3 uses
  %i.ci = load <2 x float>, ptr %.0.i13, align 4, !tbaa !159 ; 2 uses
  %3 = load <3 x float>, ptr %i.bw, align 8, !tbaa !159 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.bz, align 4, !tbaa !159 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cc, align 4, !tbaa !159 ; 4 uses
  %4 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cm = fmul <2 x float> %4, %i.cl
  %i.cn = shufflevector <2 x float> %i.ck, <2 x float> %i.ci, <2 x i32> <i32 1, i32 3>
  %i.co = fmul <2 x float> %i.cn, %4
  %i.cp = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cq = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cq, <2 x float> %i.cm)
  %i.cs = shufflevector <2 x float> %i.ck, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cq, <2 x float> %i.co)
  %i.cu = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.ce, i64 1
  %5 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %5, <2 x float> %i.cr) ; 6 uses
  %i.cx = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.by, i64 1
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %5, <2 x float> %i.ct) ; 3 uses
  %i.da = shufflevector <2 x float> %i.cw, <2 x float> %i.cz, <2 x i32> <i32 3, i32 0>
  %i.db = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.cw, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.da, ptr %i.cf, align 8
  store <2 x float> %i.db, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !180
  %i.dc = load <2 x float>, ptr %i.cg, align 4, !tbaa !159 ; 5 uses
  %i.dd = fneg <2 x float> %i.dc
  %i.de = fmul <2 x float> %i.cz, %i.dd
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.ch, i64 1
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.dg, <2 x float> %i.de) ; 4 uses
  %i.di = fneg float %i.ch
  %i.dj = extractelement <2 x float> %i.cw, i64 0
  %i.dk = fmul float %i.dj, %i.di
  %i.dl = extractelement <2 x float> %i.cz, i64 1 ; 2 uses
  %i.dm = extractelement <2 x float> %i.dc, i64 0
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.dm, float %i.dk) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.dh, %i.dh
  %i.do = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dp = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.do)
  %i.dr = tail call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.dq)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dr) ; 2 uses
  %i.ds = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.ds, label %bb.r, label %_ZL12NormalizeAnyRK9btVector3.exit

bb.r:                                             ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17
  %i.dt = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.dh, %i.dv
  %i.dx = fmul float %i.dn, %i.dt
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dx, i64 0
  br label %_ZL12NormalizeAnyRK9btVector3.exit

_ZL12NormalizeAnyRK9btVector3.exit:               ; preds = %_ZNK10btSoftBody4Body5xformEv.exit17, %bb.r
  %.sroa.0.0.i = phi <2 x float> [ %i.dw, %bb.r ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i, %bb.r ], [ zeroinitializer, %_ZNK10btSoftBody4Body5xformEv.exit17 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !180
  %foldExtExtBinop77 = fmul <2 x float> %i.cw, %i.dc
  %i.dz = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.dl, float %i.dz)
  %i.eb = extractelement <2 x float> %i.cw, i64 1
  %i.ec = extractelement <2 x float> %i.dc, i64 1
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.eb, float %i.ea) ; 3 uses
  %i.ee = fcmp olt float %i.ed, -1.000000e+00
  %i.ef = fcmp ogt float %i.ed, 1.000000e+00
  %..i = select i1 %i.ef, float 1.000000e+00, float %i.ed
  %i.eg = select i1 %i.ee, float -1.000000e+00, float %..i
  %i.eh = tail call noundef float @acosf(float noundef %i.eg) #34, !tbaa !7 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, f0x3E490FDB
  %.sroa.speculated61 = select i1 %i.ei, float f0x3E490FDB, float %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ek = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.el = fmul float %.sroa.speculated61, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.en = load float, ptr %i.em, align 4, !tbaa !294
  %i.eo = fdiv float %i.en, %1                    ; 2 uses
  %i.ep = insertelement <2 x float> poison, float %.sroa.speculated61, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eq, %.sroa.0.0.i
  %i.es = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.er, %i.et
  store <2 x float> %i.eu, ptr %i.dy, align 4, !tbaa !159
  %i.ev = fmul float %i.el, %i.eo
  store float %i.ev, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !159
  %i.ew = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.s, label %bb.u, !prof !191

bb.s:                                             ; preds = %_ZL12NormalizeAnyRK9btVector3.exit
  %i.ey = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i29 = icmp eq i32 %i.ey, 0
  br i1 %.not.i29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.ez = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZL12NormalizeAnyRK9btVector3.exit
  %i.fa = load ptr, ptr %i.e, align 8, !tbaa !292 ; 2 uses
  %.not5.i25 = icmp eq ptr %i.fa, null
  br i1 %.not5.i25, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

bb.w:                                             ; preds = %bb.u
  %i.fc = load ptr, ptr %i.i, align 8, !tbaa !231 ; 2 uses
  %.not6.i27 = icmp eq ptr %i.fc, null
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 216
  %spec.select.i28 = select i1 %.not6.i27, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fd
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit:    ; preds = %bb.v, %bb.w
  %.0.i26 = phi ptr [ %i.fb, %bb.v ], [ %spec.select.i28, %bb.w ] ; 6 uses
  %i.fe = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi acquire, align 8
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %bb.x, label %bb.z, !prof !191

bb.x:                                             ; preds = %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  %.not.i34 = icmp eq i32 %i.fg, 0
  br i1 %.not.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, i8 0, i64 48, i1 false)
  %i.fh = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK10btSoftBody4Body15invWorldInertiaEvE3iwi) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !292 ; 2 uses
  %.not5.i30 = icmp eq ptr %i.fi, null
  br i1 %.not5.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 280
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

bb.ab:                                            ; preds = %bb.z
  %i.fk = load ptr, ptr %i.bh, align 8, !tbaa !231 ; 2 uses
  %.not6.i32 = icmp eq ptr %i.fk, null
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 216
  %spec.select.i33 = select i1 %.not6.i32, ptr @_ZZNK10btSoftBody4Body15invWorldInertiaEvE3iwi, ptr %i.fl
  br label %_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35

_ZNK10btSoftBody4Body15invWorldInertiaEv.exit35:  ; preds = %bb.aa, %bb.ab
  %.0.i31 = phi ptr [ %i.fj, %bb.aa ], [ %spec.select.i33, %bb.ab ] ; 6 uses
  %i.fm = load float, ptr %.0.i26, align 4, !tbaa !159, !noalias !644
  %i.fn = load float, ptr %.0.i31, align 4, !tbaa !159, !noalias !644
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i26, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i31, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i26, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.fs = load float, ptr %i.fq, align 4, !tbaa !159, !noalias !644
  %i.ft = load float, ptr %i.fr, align 4, !tbaa !159, !noalias !644
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i26, i64 20
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i31, i64 20
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i26, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i31, i64 32
  %i.fy = load float, ptr %i.fw, align 4, !tbaa !159, !noalias !644
  %i.fz = load float, ptr %i.fx, align 4, !tbaa !159, !noalias !644
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i26, i64 36
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i31, i64 36
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gf = load float, ptr %i.ge, align 8, !tbaa !235 ; 5 uses
  %i.gg = fcmp ogt float %i.gf, 0.000000e+00
  %i.gh = load <2 x float>, ptr %i.fo, align 4, !tbaa !159, !noalias !644 ; 2 uses
  %i.gi = load <2 x float>, ptr %i.fp, align 4, !tbaa !159, !noalias !644 ; 2 uses
  %i.gj = fadd <2 x float> %i.gh, %i.gi           ; 5 uses
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = insertelement <2 x float> %i.gl, float %i.fm, i64 1
  %i.gn = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.go = insertelement <2 x float> %i.gn, float %i.fn, i64 1
  %i.gp = fadd <2 x float> %i.gm, %i.go           ; 4 uses
  %i.gq = load <2 x float>, ptr %i.fu, align 4, !tbaa !159, !noalias !644 ; 2 uses
  %i.gr = load <2 x float>, ptr %i.fv, align 4, !tbaa !159, !noalias !644 ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gt = insertelement <2 x float> %i.gs, float %i.fs, i64 1
  %i.gu = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gv = insertelement <2 x float> %i.gu, float %i.ft, i64 1
  %i.gw = fadd <2 x float> %i.gt, %i.gv           ; 4 uses
  %i.gx = fadd <2 x float> %i.gq, %i.gr           ; 4 uses
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gz = load <2 x float>, ptr %i.ga, align 4, !tbaa !159, !noalias !644 ; 2 uses
  %i.ha = load <2 x float>, ptr %i.gb, align 4, !tbaa !159, !noalias !644 ; 2 uses
  %i.hb = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hc = insertelement <2 x float> %i.hb, float %i.fy, i64 1
  %i.hd = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.he = insertelement <2 x float> %i.hd, float %i.fz, i64 1
  %i.hf = fadd <2 x float> %i.hc, %i.he           ; 4 uses
  %i.hg = fadd <2 x float> %i.gz, %i.ha           ; 3 uses
  %i.hh = fneg <2 x float> %i.hg                  ; 2 uses
  %i.hi = fneg <2 x float> %i.hf
  %i.hj = fmul <2 x float> %i.gw, %i.hh
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.hf, <2 x float> %i.hj) ; 3 uses
  %i.hl = extractelement <2 x float> %i.gj, i64 1
  %i.hm = fmul <2 x float> %i.gj, %i.hi
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.hg, <2 x float> %i.hm)
  %i.ho = fneg <2 x float> %i.gx
  %i.hp = fmul <2 x float> %i.gp, %i.ho
  %i.hq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gw, <2 x float> %i.hp)
  %i.hr = shufflevector <2 x float> %i.hf, <2 x float> %i.gw, <2 x i32> <i32 1, i32 3>
  %i.hs = fneg <2 x float> %i.hr
end_hunk_0
begin_hunk_1_@_ZN6btDbvt9collideTTEPK10btDbvtNodeS2_RNS_8ICollideE:bb.a

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit: ; preds = %bb.w, %bb.a
  ret void

bb.y:                                             ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  tail call void @__clang_call_terminate(ptr %i.cs) #35
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollideD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #26 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody5JointD0Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %0) unnamed_addr #26 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #35
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody6CJointD0Ev(ptr noundef nonnull align 8 dereferenceable(244) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btSoftBody6CJoint4TypeEv(ptr noundef nonnull align 8 dereferenceable(244) %0) unnamed_addr #26 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN17btCollisionObject24checkCollideWithOverrideEPS_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) unnamed_addr #26 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody17setCollisionShapeEP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1) unnamed_addr #26 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK10btSoftBody7getAabbER9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !193
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody6LJointD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btSoftBody6LJoint4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #26 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody5JointD2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %0) unnamed_addr #26 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody6AJointD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btSoftBody6AJoint4TypeEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #26 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody15RayFromToCasterD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #26 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, float noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #26 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #26 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZN14btConcaveShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

declare void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN24btSoftBodyCollisionShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK24btSoftBodyCollisionShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1108
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  %.sroa.1197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1116
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1124
  %.sroa.079.0.copyload = load float, ptr %i.d, align 4 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1132
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.793.0.copyload = load float, ptr %.sroa.793.0..sroa_idx, align 4 ; 2 uses
  %.sroa.089.0.copyload = load float, ptr %i.c, align 4 ; 3 uses
  %.sroa.1197.0.copyload = load float, ptr %.sroa.1197.0..sroa_idx, align 4 ; 11 uses
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !159 ; 4 uses
  %i.l = load <2 x float>, ptr %i.h, align 4, !tbaa !159 ; 4 uses
  %i.m = insertelement <2 x float> poison, float %.sroa.793.0.copyload, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.p = fmul <2 x float> %i.n, %i.o              ; 3 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2>
  %i.r = insertelement <2 x float> poison, float %.sroa.089.0.copyload, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.p) ; 3 uses
  %i.u = insertelement <2 x float> poison, float %.sroa.1197.0.copyload, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = load <2 x float>, ptr %i.g, align 4, !tbaa !159 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load float, ptr %i.z, align 4, !tbaa !159 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !159 ; 8 uses
  %i.ad = extractelement <2 x float> %i.p, i64 0
  %i.ae = extractelement <2 x float> %i.k, i64 0  ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.079.0.copyload, float %i.ad) ; 2 uses
  %i.ag = extractelement <2 x float> %i.w, i64 0  ; 7 uses
  %i.ah = extractelement <2 x float> %i.p, i64 1
  %i.ai = extractelement <2 x float> %i.l, i64 0  ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %.sroa.079.0.copyload, float %i.ah) ; 2 uses
  %i.ak = extractelement <2 x float> %i.w, i64 1  ; 7 uses
  %i.al = extractelement <2 x float> %i.t, i64 0
  %i.am = extractelement <2 x float> %i.t, i64 1
  %4 = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 8 uses
  %i.an = load <2 x float>, ptr %i.e, align 4, !tbaa !159 ; 3 uses
  %i.ao = load float, ptr %i.f, align 4, !tbaa !159 ; 6 uses
  %i.ap = load <2 x float>, ptr %i.i, align 4, !tbaa !159 ; 2 uses
  %i.aq = load float, ptr %i.j, align 4, !tbaa !159 ; 6 uses
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> %i.ap, <2 x i32> <i32 1, i32 3>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.v, <2 x float> %i.t)
  %i.at = fadd <2 x float> %i.w, %i.as
  %i.au = load <2 x float>, ptr %i.x, align 4, !tbaa !159 ; 3 uses
  %i.av = load float, ptr %i.y, align 4, !tbaa !159
  %i.aw = fmul float %.sroa.793.0.copyload, %i.av ; 2 uses
  %i.ax = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %.sroa.089.0.copyload, float %i.aw) ; 2 uses
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %.sroa.1197.0.copyload, float %i.ay)
  %i.ba = fadd float %i.ac, %i.az
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %.sroa.1197.0.copyload, float %i.af)
  %i.bc = fadd float %i.ag, %i.bb                 ; 4 uses
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %.sroa.1197.0.copyload, float %i.aj)
  %i.be = fadd float %i.ak, %i.bd                 ; 4 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.ax, float %.sroa.079.0.copyload, float %i.aw) ; 2 uses
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %.sroa.1197.0.copyload, float %i.bf)
  %i.bh = fadd float %i.ac, %i.bg                 ; 4 uses
  %i.bi = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.au, <2 x float> %i.an, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.bk = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.bm = fmul <4 x float> %i.bi, %i.bl           ; 3 uses
  %i.bn = extractelement <4 x float> %i.bm, i64 1
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.079.0.copyload, float %i.bn) ; 2 uses
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %.sroa.1197.0.copyload, float %i.bo)
  %i.bq = fadd float %i.ag, %i.bp                 ; 4 uses
  %i.br = extractelement <4 x float> %i.bm, i64 2
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.ai, float %.sroa.079.0.copyload, float %i.br) ; 2 uses
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %.sroa.1197.0.copyload, float %i.bs)
  %i.bu = fadd float %i.ak, %i.bt                 ; 4 uses
  %i.bv = shufflevector <2 x float> %i.k, <2 x float> %i.l, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.bw = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> %i.bv, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.by = insertelement <4 x float> poison, float %.sroa.089.0.copyload, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %.sroa.079.0.copyload, i64 1
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.ca, <4 x float> %i.bm) ; 5 uses
  %i.cc = extractelement <4 x float> %i.cb, i64 0
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %.sroa.1197.0.copyload, float %i.cc)
  %i.ce = fadd float %i.ac, %i.cd                 ; 4 uses
  %i.cf = extractelement <4 x float> %i.cb, i64 1
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %.sroa.1197.0.copyload, float %i.cf)
  %i.ch = fadd float %i.ag, %i.cg                 ; 4 uses
  %i.ci = extractelement <4 x float> %i.cb, i64 2
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %.sroa.1197.0.copyload, float %i.ci)
  %i.ck = fadd float %i.ak, %i.cj                 ; 4 uses
  %i.cl = extractelement <4 x float> %i.cb, i64 3
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %.sroa.1197.0.copyload, float %i.cl)
  %i.cn = fadd float %i.ac, %i.cm                 ; 4 uses
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %.sroa.11.0.copyload, float %i.al)
  %i.cp = fadd float %i.ag, %i.co                 ; 4 uses
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %.sroa.11.0.copyload, float %i.am)
  %i.cr = fadd float %i.ak, %i.cq                 ; 4 uses
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %.sroa.11.0.copyload, float %i.ay)
  %i.ct = fadd float %i.ac, %i.cs                 ; 4 uses
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %.sroa.11.0.copyload, float %i.af)
  %i.cv = fadd float %i.ag, %i.cu                 ; 4 uses
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %.sroa.11.0.copyload, float %i.aj)
  %i.cx = fadd float %i.ak, %i.cw                 ; 4 uses
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %.sroa.11.0.copyload, float %i.bf)
  %i.cz = fadd float %i.ac, %i.cy                 ; 4 uses
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %.sroa.11.0.copyload, float %i.bo)
  %i.db = fadd float %i.ag, %i.da                 ; 4 uses
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %.sroa.11.0.copyload, float %i.bs)
  %i.dd = fadd float %i.ak, %i.dc                 ; 4 uses
  %i.de = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.df = insertelement <4 x float> %i.de, float %i.aa, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %5, <4 x float> %i.cb) ; 4 uses
  %i.di = extractelement <4 x float> %i.dh, i64 0
  %i.dj = fadd float %i.ac, %i.di                 ; 4 uses
  %i.dk = extractelement <4 x float> %i.dh, i64 1
  %i.dl = fadd float %i.ag, %i.dk                 ; 4 uses
  %i.dm = extractelement <4 x float> %i.dh, i64 2
  %i.dn = fadd float %i.ak, %i.dm                 ; 4 uses
  %i.do = extractelement <4 x float> %i.dh, i64 3
  %i.dp = fadd float %i.ac, %i.do                 ; 4 uses
  store <2 x float> %i.at, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !193
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 14 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 14 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 14 uses
  %i.dv = load float, ptr %2, align 4, !tbaa !159
  %i.dw = fcmp olt float %i.bc, %i.dv
  br i1 %i.dw, label %bb.b, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  store float %i.bc, ptr %2, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.b, %bb.a
  %i.dx = load float, ptr %i.dq, align 4, !tbaa !159
  %i.dy = fcmp olt float %i.be, %i.dx
  br i1 %i.dy, label %bb.c, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.c:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.be, ptr %i.dq, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.c, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.dz = load float, ptr %i.dr, align 4, !tbaa !159
  %i.ea = fcmp olt float %i.bh, %i.dz
  br i1 %i.ea, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit6.i

bb.d:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  store float %i.bh, ptr %i.dr, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit6.i

_Z8btSetMinIfEvRT_RKS0_.exit6.i:                  ; preds = %bb.d, %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.eb = load float, ptr %i.ds, align 4, !tbaa !159
  %i.ec = fcmp ogt float %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.e, label %_ZN9btVector36setMinERKS_.exit

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !159
  br label %_ZN9btVector36setMinERKS_.exit

_ZN9btVector36setMinERKS_.exit:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i, %bb.e
  %i.ed = load float, ptr %3, align 4, !tbaa !159
  %i.ee = fcmp olt float %i.ed, %i.bc
  br i1 %i.ee, label %bb.f, label %_Z8btSetMaxIfEvRT_RKS0_.exit.i

bb.f:                                             ; preds = %_ZN9btVector36setMinERKS_.exit
  store float %i.bc, ptr %3, align 4, !tbaa !159
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit.i

_Z8btSetMaxIfEvRT_RKS0_.exit.i:                   ; preds = %bb.f, %_ZN9btVector36setMinERKS_.exit
  %i.ef = load float, ptr %i.dt, align 4, !tbaa !159
  %i.eg = fcmp olt float %i.ef, %i.be
  br i1 %i.eg, label %bb.g, label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i

bb.g:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit.i
  store float %i.be, ptr %i.dt, align 4, !tbaa !159
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i

_Z8btSetMaxIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.g, %_Z8btSetMaxIfEvRT_RKS0_.exit.i
  %i.eh = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !159
  %i.ei = fcmp olt float %i.eh, %i.bh
  br i1 %i.ei, label %bb.h, label %_Z8btSetMaxIfEvRT_RKS0_.exit6.i

bb.h:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit5.i
  store float %i.bh, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !159
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit6.i

_Z8btSetMaxIfEvRT_RKS0_.exit6.i:                  ; preds = %bb.h, %_Z8btSetMaxIfEvRT_RKS0_.exit5.i
  %i.ej = load float, ptr %i.du, align 4, !tbaa !159
  %i.ek = fcmp olt float %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.i, label %_ZN9btVector36setMaxERKS_.exit

bb.i:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit6.i
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !159
  br label %_ZN9btVector36setMaxERKS_.exit

_ZN9btVector36setMaxERKS_.exit:                   ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit6.i, %bb.i
  %i.el = load float, ptr %2, align 4, !tbaa !159
  %i.em = fcmp olt float %i.bq, %i.el
  br i1 %i.em, label %bb.j, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.1

bb.j:                                             ; preds = %_ZN9btVector36setMaxERKS_.exit
  store float %i.bq, ptr %2, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.1

_Z8btSetMinIfEvRT_RKS0_.exit.i.1:                 ; preds = %bb.j, %_ZN9btVector36setMaxERKS_.exit
  %i.en = load float, ptr %i.dq, align 4, !tbaa !159
  %i.eo = fcmp olt float %i.bu, %i.en
  br i1 %i.eo, label %bb.k, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i.1

bb.k:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.1
  store float %i.bu, ptr %i.dq, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i.1

_Z8btSetMinIfEvRT_RKS0_.exit5.i.1:                ; preds = %bb.k, %_Z8btSetMinIfEvRT_RKS0_.exit.i.1
  %i.ep = load float, ptr %i.dr, align 4, !tbaa !159
  %i.eq = fcmp olt float %i.ce, %i.ep
  br i1 %i.eq, label %bb.l, label %_Z8btSetMinIfEvRT_RKS0_.exit6.i.1

bb.l:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i.1
  store float %i.ce, ptr %i.dr, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit6.i.1

_Z8btSetMinIfEvRT_RKS0_.exit6.i.1:                ; preds = %bb.l, %_Z8btSetMinIfEvRT_RKS0_.exit5.i.1
  %i.er = load float, ptr %i.ds, align 4, !tbaa !159
  %i.es = fcmp ogt float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.m, label %_ZN9btVector36setMinERKS_.exit.1

bb.m:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i.1
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !159
  br label %_ZN9btVector36setMinERKS_.exit.1

_ZN9btVector36setMinERKS_.exit.1:                 ; preds = %bb.m, %_Z8btSetMinIfEvRT_RKS0_.exit6.i.1
  %i.et = load float, ptr %3, align 4, !tbaa !159
  %i.eu = fcmp olt float %i.et, %i.bq
  br i1 %i.eu, label %bb.n, label %_Z8btSetMaxIfEvRT_RKS0_.exit.i.1

bb.n:                                             ; preds = %_ZN9btVector36setMinERKS_.exit.1
  store float %i.bq, ptr %3, align 4, !tbaa !159
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit.i.1

_Z8btSetMaxIfEvRT_RKS0_.exit.i.1:                 ; preds = %bb.n, %_ZN9btVector36setMinERKS_.exit.1
  %i.ev = load float, ptr %i.dt, align 4, !tbaa !159
  %i.ew = fcmp olt float %i.ev, %i.bu
  br i1 %i.ew, label %bb.o, label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1

bb.o:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit.i.1
  store float %i.bu, ptr %i.dt, align 4, !tbaa !159
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1

_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1:                ; preds = %bb.o, %_Z8btSetMaxIfEvRT_RKS0_.exit.i.1
  %i.ex = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !159
  %i.ey = fcmp olt float %i.ex, %i.ce
  br i1 %i.ey, label %bb.p, label %_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1

bb.p:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1
  store float %i.ce, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !159
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1

_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1:                ; preds = %bb.p, %_Z8btSetMaxIfEvRT_RKS0_.exit5.i.1
  %i.ez = load float, ptr %i.du, align 4, !tbaa !159
  %i.fa = fcmp olt float %i.ez, 0.000000e+00
  br i1 %i.fa, label %bb.q, label %_ZN9btVector36setMaxERKS_.exit.1

bb.q:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !159
  br label %_ZN9btVector36setMaxERKS_.exit.1

_ZN9btVector36setMaxERKS_.exit.1:                 ; preds = %bb.q, %_Z8btSetMaxIfEvRT_RKS0_.exit6.i.1
  %i.fb = load float, ptr %2, align 4, !tbaa !159
  %i.fc = fcmp olt float %i.ch, %i.fb
  br i1 %i.fc, label %bb.r, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.2

bb.r:                                             ; preds = %_ZN9btVector36setMaxERKS_.exit.1
  store float %i.ch, ptr %2, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i.2

_Z8btSetMinIfEvRT_RKS0_.exit.i.2:                 ; preds = %bb.r, %_ZN9btVector36setMaxERKS_.exit.1
  %i.fd = load float, ptr %i.dq, align 4, !tbaa !159
  %i.fe = fcmp olt float %i.ck, %i.fd
  br i1 %i.fe, label %bb.s, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i.2

bb.s:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.2
  store float %i.ck, ptr %i.dq, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i.2

_Z8btSetMinIfEvRT_RKS0_.exit5.i.2:                ; preds = %bb.s, %_Z8btSetMinIfEvRT_RKS0_.exit.i.2
  %i.ff = load float, ptr %i.dr, align 4, !tbaa !159
  %i.fg = fcmp olt float %i.cn, %i.ff
  br i1 %i.fg, label %bb.t, label %_Z8btSetMinIfEvRT_RKS0_.exit6.i.2

bb.t:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i.2
  store float %i.cn, ptr %i.dr, align 4, !tbaa !159
  br label %_Z8btSetMinIfEvRT_RKS0_.exit6.i.2

_Z8btSetMinIfEvRT_RKS0_.exit6.i.2:                ; preds = %bb.t, %_Z8btSetMinIfEvRT_RKS0_.exit5.i.2
  %i.fh = load float, ptr %i.ds, align 4, !tbaa !159
  %i.fi = fcmp ogt float %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.u, label %_ZN9btVector36setMinERKS_.exit.2

bb.u:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit6.i.2
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !159
  br label %_ZN9btVector36setMinERKS_.exit.2

_ZN9btVector36setMinERKS_.exit.2:                 ; preds = %bb.u, %_Z8btSetMinIfEvRT_RKS0_.exit6.i.2
  %i.fj = load float, ptr %3, align 4, !tbaa !159
  %i.fk = fcmp olt float %i.fj, %i.ch
  br i1 %i.fk, label %bb.v, label %_Z8btSetMaxIfEvRT_RKS0_.exit.i.2
end_hunk_1
