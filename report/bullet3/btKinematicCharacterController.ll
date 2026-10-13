Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btKinematicCharacterController?download=true
inline.NumInlined: 552
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN30btKinematicCharacterController10setGravityERK9btVector3:bb.a
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 3 uses
  %i.g = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.d) ; 2 uses
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.j = fneg <2 x float> %i.a
  %i.k = fneg float %i.f
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  store <2 x float> %i.j, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.l, align 8
  call void @_ZN30btKinematicCharacterController11setUpVectorERK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load float, ptr %1, align 4, !tbaa !10  ; 2 uses
  %.pre4 = load float, ptr %i.i, align 4, !tbaa !10 ; 2 uses
  %.pre5 = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %.pre6 = fmul float %.pre4, %.pre4
  %.pre7 = tail call float @llvm.fmuladd.f32(float %.pre, float %.pre, float %.pre6)
  %.pre9 = tail call noundef float @llvm.fmuladd.f32(float %.pre5, float %.pre5, float %.pre7)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi10 = phi float [ %.pre9, %bb.b ], [ %i.g, %bb.a ]
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.pre-phi10)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %sqrt.i, ptr %i.m, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController11setUpVectorERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.btQuaternion, align 8        ; 5 uses
  %3 = alloca %class.btTransform, align 4         ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load float, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = fcmp oeq float %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.h = load float, ptr %i.g, align 4            ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.k = fcmp oeq float %i.h, %i.j
  %or.cond = select i1 %i.f, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK9btVector3eqERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.m = load float, ptr %i.l, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = fcmp oeq float %i.m, %i.o
  br i1 %i.p, label %_ZNK9btVector3eqERKS_.exit, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit:                       ; preds = %bb.b
  %i.q = load float, ptr %i.a, align 4, !tbaa !10
  %i.r = load float, ptr %1, align 4, !tbaa !10
  %i.s = fcmp oeq float %i.q, %i.r
  br i1 %i.s, label %bb.m, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit.thread:                ; preds = %bb.a, %bb.b, %_ZNK9btVector3eqERKS_.exit
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.030.0.copyload = load float, ptr %i.a, align 4 ; 3 uses
  %.sroa.632.0.copyload = load float, ptr %.sroa.632.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.t = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !10 ; 2 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.x)
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %i.aa, align 4, !tbaa !64 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.ab = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.ac = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.ab)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.ac)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ad)
  %i.ae = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.af = fmul float %.sroa.0.0.vec.extract.i, %i.ae ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ag = fmul float %.sroa.0.4.vec.extract.i, %i.ae ; 2 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ag, i64 1
  %i.ah = fmul float %.sroa.8.8.vec.extract.i, %i.ae ; 2 uses
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> %.sroa.8.0.copyload.i, float %i.ah, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.a, align 4
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !64
  br label %bb.e

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi float [ 0.000000e+00, %bb.d ], [ %i.ah, %bb.c ] ; 3 uses
  %i.aj = phi float [ 0.000000e+00, %bb.d ], [ %i.ag, %bb.c ] ; 3 uses
  %i.ak = phi float [ 0.000000e+00, %bb.d ], [ %i.af, %bb.c ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = fmul float %i.aj, %i.aj
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.an)
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ao) ; 2 uses
  %i.aq = fcmp oeq float %i.ap, 0.000000e+00
  br i1 %i.aq, label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = fmul float %.sroa.632.0.copyload, %.sroa.632.0.copyload
  %i.as = tail call float @llvm.fmuladd.f32(float %.sroa.030.0.copyload, float %.sroa.030.0.copyload, float %i.ar)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.as) ; 2 uses
  %i.au = fcmp oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ap, i64 1
  %i.ax = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.aw)
  %i.ay = fdiv <2 x float> splat (float 1.000000e+00), %i.ax ; 3 uses
  %i.az = extractelement <2 x float> %i.ay, i64 1 ; 2 uses
  %i.ba = fmul float %i.ak, %i.az                 ; 7 uses
  store float %i.ba, ptr %i.a, align 4, !tbaa !10
  %i.bb = insertelement <2 x float> poison, float %.sroa.632.0.copyload, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.aj, i64 1
  %i.bd = fmul <2 x float> %i.bc, %i.ay           ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 1 ; 10 uses
  store float %i.be, ptr %.sroa.632.0..sroa_idx, align 8, !tbaa !10
  %i.bf = fmul float %i.ai, %i.az                 ; 8 uses
  store float %i.bf, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !10
  %i.bg = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bh = fmul float %.sroa.030.0.copyload, %i.bg ; 3 uses
  %i.bi = fmul float %i.h, %i.bg                  ; 3 uses
  %i.bj = extractelement <2 x float> %i.bd, i64 0 ; 3 uses
  %i.bk = fmul float %i.bj, %i.be
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bh, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bi, float %i.bl) ; 2 uses
  %i.bn = fcmp olt float %i.bm, f0xBF7FFFFE
  br i1 %i.bn, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bo = tail call noundef float @llvm.fabs.f32(float %i.bf)
  %i.bp = fcmp ogt float %i.bo, f0x3F3504F3
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = fmul nnan float %i.bf, %i.bf
  %i.br = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bq)
  %sqrt.i.i5.i = tail call float @llvm.sqrt.f32(float %i.br)
  %i.bs = fdiv float 1.000000e+00, %sqrt.i.i5.i   ; 2 uses
  %i.bt = fneg float %i.bf
  %i.bu = fmul float %i.bs, %i.bt
  %i.bv = fmul float %i.be, %i.bs
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.bw = fmul float %i.be, %i.be
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bw)
  %sqrt43.i.i.i = tail call float @llvm.sqrt.f32(float %i.bx)
  %i.by = fdiv float 1.000000e+00, %sqrt43.i.i.i  ; 2 uses
  %i.bz = fneg float %i.be
  %i.ca = fmul float %i.by, %i.bz
  %i.cb = fmul float %i.ba, %i.by
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.016.0.i.i = phi float [ 0.000000e+00, %bb.j ], [ %i.ca, %bb.k ]
  %.sroa.618.0.i.i = phi float [ %i.bu, %bb.j ], [ %i.cb, %bb.k ]
  %.sroa.10.0.i.i = phi float [ %i.bv, %bb.j ], [ 0.000000e+00, %bb.k ]
  %.sroa.022.0.vec.insert.i.i = insertelement <2 x float> poison, float %.sroa.016.0.i.i, i64 0
  %.sroa.022.4.vec.insert.i.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i.i, float %.sroa.618.0.i.i, i64 1
  %.sroa.528.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i.i, i64 0
  br label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit

bb.l:                                             ; preds = %bb.h
  %i.cc = fneg float %i.bh
  %i.cd = fmul float %i.be, %i.cc
  %i.ce = fneg float %i.bi
  %i.cf = fmul float %i.ba, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %i.cf)
  %i.ch = fneg float %i.bj
  %i.ci = fmul float %i.bf, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bi, float %i.ci)
  %i.ck = fadd float %i.bm, 1.000000e+00
  %i.cl = fmul float %i.ck, 2.000000e+00
  %4 = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bj, float %i.cd)
  %i.cm = tail call noundef float @sqrtf(float noundef %i.cl) #24 ; 2 uses
  %i.cn = fdiv float 1.000000e+00, %i.cm          ; 3 uses
  %i.co = fmul float %i.cj, %i.cn
  %i.cp = fmul float %i.cg, %i.cn
  %i.cq = insertelement <2 x float> poison, float %4, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cm, i64 1
  %i.cs = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.cn, i64 0
  %i.ct = fmul <2 x float> %i.cr, %i.cs
  %.sroa.022.0.vec.insert25.i.i = insertelement <2 x float> poison, float %i.co, i64 0
  %.sroa.022.4.vec.insert27.i.i = insertelement <2 x float> %.sroa.022.0.vec.insert25.i.i, float %i.cp, i64 1
  br label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit

_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit: ; preds = %bb.l, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i, %bb.f, %bb.g
  %.sroa.2.0.i = phi <2 x float> [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.528.12.vec.insert.i.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i ], [ %i.ct, %bb.l ] ; 4 uses
  %.sroa.0.0.i = phi <2 x float> [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.022.4.vec.insert.i.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i ], [ %.sroa.022.4.vec.insert27.i.i, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.cu, i64 16, i1 false), !tbaa.struct !65
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, ptr noundef nonnull align 4 dereferenceable(16) %i.cv, i64 16, i1 false), !tbaa.struct !65
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cy, ptr noundef nonnull align 4 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !65
  %i.cz = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %.fca.0.load.i = load <2 x float>, ptr %2, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dc = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 2>
  %i.dd = fneg <2 x float> %i.dc                  ; 2 uses
  %i.de = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.2.0.i, <2 x i32> <i32 1, i32 2>
  %i.df = fneg <2 x float> %i.de                  ; 2 uses
  %i.dg = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = fmul <2 x float> %i.dg, %i.df
  %i.di = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dj = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dj, <2 x float> %i.dh)
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %.fca.0.load.i, <2 x float> %i.dk)
  %i.dm = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0.0.i, <2 x float> %i.dm, <2 x float> %i.dl) ; 6 uses
  %i.do = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 1, i32 2>
  %i.dp = shufflevector <2 x float> %i.dd, <2 x float> %.fca.0.load.i, <2 x i32> <i32 1, i32 2>
  %i.dq = fmul <2 x float> %i.do, %i.dp
  %i.dr = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 3>
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dr, <2 x float> %i.dq)
  %i.dt = shufflevector <2 x float> %i.df, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 3>
  %i.du = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 3>
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.du, <2 x float> %i.ds)
  %i.dw = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dj, <2 x float> %i.dv) ; 4 uses
  %i.dy = extractelement <2 x float> %i.dn, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.dn, %i.dn
  %i.dz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ea = extractelement <2 x float> %i.dx, i64 0 ; 4 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.dz)
  %i.ec = extractelement <2 x float> %i.dn, i64 1 ; 3 uses
  %i.ed = call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.eb)
  %i.ee = extractelement <2 x float> %i.dx, i64 1 ; 3 uses
  %i.ef = call noundef float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %i.ed)
  %i.eg = fdiv float 2.000000e+00, %i.ef          ; 2 uses
  %i.eh = fmul float %i.ea, %i.eg                 ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x float> %i.dn, %i.ej           ; 4 uses
  %i.el = fmul float %i.ee, %i.eh                 ; 2 uses
  %i.em = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = fmul <2 x float> %i.em, %i.en           ; 4 uses
  %i.ep = fmul float %i.ea, %i.eh                 ; 2 uses
  %i.eq = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eq, %i.ek           ; 4 uses
  %foldExtExtBinop44 = fmul <2 x float> %i.dn, %i.ek
  %i.es = extractelement <2 x float> %foldExtExtBinop44, i64 0 ; 2 uses
  %i.et = extractelement <2 x float> %i.ek, i64 1 ; 2 uses
  %i.eu = fmul float %i.dy, %i.et                 ; 2 uses
  %i.ev = fmul float %i.ec, %i.et                 ; 2 uses
  %i.ew = fadd float %i.es, %i.ev
  %i.ex = fsub float 1.000000e+00, %i.ew
  %i.ey = fsub <2 x float> %i.er, %i.eo
  %i.ez = fadd <2 x float> %i.er, %i.eo
  %i.fa = shufflevector <2 x float> %i.ey, <2 x float> %i.ez, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop46 = fadd <2 x float> %i.er, %i.eo
  %i.fb = extractelement <2 x float> %foldExtExtBinop46, i64 0
  %i.fc = fadd float %i.ep, %i.ev
  %i.fd = fsub float 1.000000e+00, %i.fc
  %i.fe = fsub float %i.eu, %i.el
  %foldExtExtBinop48 = fsub <2 x float> %i.er, %i.eo
  %i.ff = extractelement <2 x float> %foldExtExtBinop48, i64 1
  %i.fg = fadd float %i.eu, %i.el
  %i.fh = fadd float %i.ep, %i.es
  %i.fi = fsub float 1.000000e+00, %i.fh
  store float %i.ex, ptr %3, align 4, !tbaa !10
  store <2 x float> %i.fa, ptr %i.db, align 4, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !10
  store float %i.fb, ptr %i.cw, align 4, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.fd, ptr %i.fk, align 4, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.fe, ptr %i.fl, align 4, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float 0.000000e+00, ptr %i.fm, align 4, !tbaa !10
  store float %i.ff, ptr %i.cy, align 4, !tbaa !10
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float %i.fg, ptr %i.fn, align 4, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.fi, ptr %i.fo, align 4, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float 0.000000e+00, ptr %i.fp, align 4, !tbaa !10
  %i.fq = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 352 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !66
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !66
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fu, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !65
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !65
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 4 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !65
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit, %bb.e, %_ZNK9btVector3eqERKS_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK30btKinematicCharacterController10getGravityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load float, ptr %i.a, align 4, !tbaa !38
  %i.c = fneg float %i.b                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !10
  %i.f = insertelement <2 x float> poison, float %i.c, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = fmul float %i.j, %i.c
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK30btKinematicCharacterController11getMaxSlopeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load float, ptr %i.a, align 4, !tbaa !40
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController22setMaxPenetrationDepthEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((32, 36)) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK30btKinematicCharacterController22getMaxPenetrationDepthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !79
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK30btKinematicCharacterController8onGroundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load <2 x float>, ptr %i.a, align 4
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.b)
  %i.d = fcmp olt <2 x float> %i.c, splat (float f0x34000000) ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN30btKinematicCharacterController19getUpAxisDirectionsEv() local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, align 16, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 20), align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 40), align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setUpInterpolateEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((316, 317)) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i8 %i.a, ptr %i.b, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(319) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %2, align 4, !tbaa !10   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !10 ; 2 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n)
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call { <2 x float>, <2 x float> } @_Z25shortestArcQuatNormalize2R9btVector3S0_(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.2.0 = phi <2 x float> [ %i.u, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi <2 x float> [ %i.t, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_Z25shortestArcQuatNormalize2R9btVector3S0_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h)
  %i.i = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.j = fmul float %i.a, %i.i
  store float %i.j, ptr %0, align 4, !tbaa !10
  %i.k = fmul float %i.c, %i.i
  store float %i.k, ptr %i.b, align 4, !tbaa !10
  %i.l = fmul float %i.g, %i.i
  store float %i.l, ptr %i.f, align 4, !tbaa !10
  %i.m = load float, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load <2 x float>, ptr %i.n, align 4, !tbaa !10 ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.p
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.r = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.q)
  %i.s = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %sqrt.i.i4 = tail call noundef float @llvm.sqrt.f32(float %i.t)
  %i.u = fdiv float 1.000000e+00, %sqrt.i.i4
  %i.v = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float %i.m, i64 1
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x float> %i.w, %i.y              ; 3 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1  ; 3 uses
  store float %i.aa, ptr %1, align 4, !tbaa !10
  %i.ab = fmul <2 x float> %i.p, %i.y             ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  store float %i.ac, ptr %i.n, align 4, !tbaa !10
  %i.ad = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  store float %i.ad, ptr %i.o, align 4, !tbaa !10
  %i.ae = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 7 uses
  %i.af = load float, ptr %0, align 4, !tbaa !10  ; 6 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0 ; 5 uses
  %foldExtExtBinop7 = fmul <2 x float> %i.ae, %i.ab
  %i.ah = extractelement <2 x float> %foldExtExtBinop7, i64 0
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %i.aa, float %i.ah)
  %i.aj = extractelement <2 x float> %i.ae, i64 1 ; 5 uses
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.ad, float %i.ai) ; 2 uses
  %i.al = fcmp olt float %i.ak, f0xBF7FFFFE
  br i1 %i.al, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.aj)
  %i.an = fcmp ogt float %i.am, f0x3F3504F3
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = fmul nnan float %i.aj, %i.aj
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ao)
  %sqrt.i.i5 = tail call float @llvm.sqrt.f32(float %i.ap)
  %i.aq = fdiv float 1.000000e+00, %sqrt.i.i5     ; 2 uses
  %i.ar = fneg float %i.aj
  %i.as = fmul float %i.aq, %i.ar
  %i.at = fmul float %i.ag, %i.aq
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

bb.d:                                             ; preds = %bb.b
  %foldExtExtBinop9 = fmul <2 x float> %i.ae, %i.ae
  %i.au = extractelement <2 x float> %foldExtExtBinop9, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.au)
  %sqrt43.i.i = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt43.i.i    ; 2 uses
  %i.ax = fneg float %i.ag
  %i.ay = fmul float %i.aw, %i.ax
  %i.az = fmul float %i.af, %i.aw
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.c ], [ %i.ay, %bb.d ]
  %.sroa.618.0.i = phi float [ %i.as, %bb.c ], [ %i.az, %bb.d ]
  %.sroa.10.0.i = phi float [ %i.at, %bb.c ], [ 0.000000e+00, %bb.d ]
  %.sroa.022.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.022.4.vec.insert.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i, float %.sroa.618.0.i, i64 1
  %.sroa.528.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i, i64 0
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

bb.e:                                             ; preds = %bb.a
  %i.ba = fneg float %i.aa
  %i.bb = fmul float %i.ag, %i.ba
  %i.bc = fneg <2 x float> %i.ab
  %i.bd = fadd float %i.ak, 1.000000e+00
  %i.be = fmul float %i.bd, 2.000000e+00
  %2 = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ac, float %i.bb)
  %i.bf = tail call noundef float @sqrtf(float noundef %i.be) #24 ; 2 uses
  %i.bg = fdiv float 1.000000e+00, %i.bf          ; 2 uses
  %i.bh = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bi = insertelement <2 x float> %i.bh, float %i.af, i64 1
  %i.bj = fmul <2 x float> %i.bi, %i.bc
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.z, <2 x float> %i.bj)
  %i.bl = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bk, %i.bm
  %i.bo = insertelement <2 x float> poison, float %2, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bf, i64 1
  %i.bq = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.bg, i64 0
  %i.br = fmul <2 x float> %i.bp, %i.bq
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i, %bb.e
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.bn, %bb.e ]
  %.sroa.528.0.i = phi <2 x float> [ %.sroa.528.12.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.br, %bb.e ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.022.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.528.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, float noundef %2) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1)
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, float noundef %2)
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125
  %i.e = and i32 %i.d, %i.b
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !95
  %i.j = and i32 %i.i, %i.g
  %i.k = icmp ne i32 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !129    ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = load i32, ptr %i.e, align 8, !tbaa !77
  %i.g = and i32 %i.f, 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.i, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load float, ptr %i.m, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load float, ptr %i.q, align 8, !tbaa !10
  %i.s = load float, ptr %i.k, align 8, !tbaa !10 ; 2 uses
  %i.t = load <2 x float>, ptr %i.j, align 8, !tbaa !10 ; 2 uses
  %i.u = load float, ptr %i.l, align 4, !tbaa !10 ; 2 uses
  %i.v = load float, ptr %i.o, align 8, !tbaa !10 ; 2 uses
  %i.w = load <2 x float>, ptr %i.p, align 8, !tbaa !10 ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = shufflevector <2 x float> %i.t, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.aa = fmul <2 x float> %i.y, %i.z
  %i.ab = shufflevector <2 x float> %i.t, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.ac = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.aa)
  %i.af = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.r, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.ae)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.al = load float, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.an = load float, ptr %i.am, align 4, !tbaa !10
  %i.ao = fmul float %i.u, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.al, float %i.s, float %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !10
  %i.as = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.v, float %i.ap)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.0.copyload, %bb.d ], [ %.sroa.3.12.vec.insert.i, %bb.e ]
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.d ], [ %i.aj, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load float, ptr %i.at, align 8, !tbaa !10
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.ax = fmul float %.sroa.0.4.vec.extract, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %.sroa.0.0.vec.extract, float %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load float, ptr %i.az, align 8, !tbaa !10
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.sroa.6.0, i64 0
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %.sroa.6.8.vec.extract, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !89
  %i.be = fcmp olt float %i.bb, %i.bd
  br i1 %i.be, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !130
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bg, ptr %i.bh, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.bi, align 8, !tbaa !86
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !65
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

bb.i:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !10
  %i.bu = load float, ptr %i.bm, align 8, !tbaa !10 ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bl, align 8, !tbaa !10 ; 2 uses
  %i.bw = load float, ptr %i.bn, align 4, !tbaa !10 ; 2 uses
  %i.bx = load float, ptr %i.bq, align 8, !tbaa !10 ; 2 uses
  %i.by = load <2 x float>, ptr %i.br, align 8, !tbaa !10 ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %i.bv, <2 x float> %i.by, <2 x i32> <i32 1, i32 3>
  %i.cc = fmul <2 x float> %i.ca, %i.cb
  %i.cd = shufflevector <2 x float> %i.bv, <2 x float> %i.by, <2 x i32> <i32 0, i32 2>
  %i.ce = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cc)
  %i.ch = insertelement <2 x float> poison, float %i.bp, i64 0
end_hunk_0
