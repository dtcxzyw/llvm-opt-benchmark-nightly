Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGhostObject?download=true
inline.NumInlined: 279
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK17btCollisionObject24checkCollideWithOverrideEPKS_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = icmp ne ptr %i.g, %1                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %i.h, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %bb.b, label %_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit, !llvm.loop !64

_ZNK20btAlignedObjectArrayIPK17btCollisionObjectE16findLinearSearchERKS2_.exit: ; preds = %bb.b, %bb.a
  %.06.i = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.06.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17btCollisionObject28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(372) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i32 288
}

declare noundef ptr @_ZNK17btCollisionObject9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK17btCollisionObject21serializeSingleObjectEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 16        ; 9 uses
  %5 = alloca %class.btQuaternion, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !49, !noalias !71 ; 3 uses
  %i.f = load float, ptr %0, align 4, !tbaa !49, !noalias !71 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <3 x float>, ptr %i.c, align 4, !tbaa !49, !noalias !71 ; 3 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.k = load <2 x float>, ptr %i.a, align 4, !tbaa !49, !noalias !71 ; 3 uses
  %i.l = load float, ptr %i.b, align 4, !tbaa !49, !noalias !71 ; 2 uses
  %i.m = fneg <3 x float> %i.i                    ; 2 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.o = load <2 x float>, ptr %i.g, align 4, !tbaa !49, !noalias !71 ; 4 uses
  %i.p = load float, ptr %i.h, align 4, !tbaa !49, !noalias !71 ; 4 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.o, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.r = insertelement <4 x float> %i.q, float %i.e, i64 1 ; 2 uses
  %i.s = fmul <4 x float> %i.r, %i.n
  %i.t = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.u = shufflevector <4 x float> %i.r, <4 x float> %i.t, <4 x i32> <i32 2, i32 0, i32 1, i32 5>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.j, <4 x float> %i.s) ; 4 uses
  %i.w = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.x = extractelement <4 x float> %i.v, i64 1
  %i.y = extractelement <4 x float> %i.v, i64 0
  %i.z = fneg float %i.l
  %i.aa = fmul float %i.p, %i.z
  %i.ab = extractelement <2 x float> %i.k, i64 0
  %i.ac = fneg float %i.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !49, !noalias !72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.e, float %i.aa)
  %i.aj = insertelement <4 x float> %i.v, float %i.ai, i64 2
  %i.ak = load <2 x float>, ptr %1, align 4, !tbaa !49, !noalias !72 ; 3 uses
  %i.al = load float, ptr %i.ad, align 4, !tbaa !49, !noalias !72
  %i.am = extractelement <2 x float> %i.ak, i64 0
  %i.an = load <2 x float>, ptr %i.ag, align 4, !tbaa !49, !noalias !72 ; 3 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> %i.ak, <4 x i32> <i32 poison, i32 1, i32 3, i32 3>
  %i.ap = insertelement <4 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.as = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 1, i32 1>
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !49, !noalias !72 ; 2 uses
  %i.az = extractelement <4 x float> %i.v, i64 2  ; 2 uses
  %i.ba = fmul float %i.w, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.f, float %i.x, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.y, float %i.bb)
  %i.bd = fdiv float 1.000000e+00, %i.bc          ; 3 uses
  %i.be = fmul float %i.az, %i.bd                 ; 3 uses
  %i.bf = fneg float %i.e
  %i.bg = insertelement <2 x float> poison, float %i.f, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.p, i64 1
  %i.bi = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bj = insertelement <2 x float> %i.bi, float %i.bf, i64 0
  %i.bk = fmul <2 x float> %i.bh, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.f, i64 1
  %i.bn = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.j, <2 x i32> <i32 0, i32 5>
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bo, <2 x float> %i.bk)
  %i.bq = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x float> %i.bp, %i.br           ; 3 uses
  %i.bt = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fmul <4 x float> %i.aj, %i.bu           ; 6 uses
  %i.bw = shufflevector <4 x float> %i.t, <4 x float> %i.n, <2 x i32> <i32 0, i32 5>
  %i.bx = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.f, i64 1
  %i.bz = fmul <2 x float> %i.bw, %i.by
  %i.ca = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x float> %i.ca, float %i.f, i64 0
  %i.cc = shufflevector <3 x float> %i.i, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.l, i64 0
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cd, <2 x float> %i.bz)
  %i.cf = fmul <2 x float> %i.ce, %i.br           ; 3 uses
  %i.cg = fmul float %i.al, %i.be
  %i.ch = extractelement <4 x float> %i.bv, i64 1
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.am, float %i.cg)
  %i.cj = insertelement <4 x float> %i.ao, float %i.ci, i64 0
  %i.ck = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.be, i64 1
  %i.cl = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = fmul <4 x float> %i.cj, %i.cm
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.at, <4 x float> %i.cn) ; 2 uses
  %i.cp = load <2 x float>, ptr %i.ah, align 4, !tbaa !49, !noalias !72 ; 4 uses
  %i.cq = load float, ptr %i.au, align 4, !tbaa !49, !noalias !72
  %shift = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.cp
  %i.cr = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 poison, i32 poison>
  %i.cs = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <2 x float> %i.an, <2 x float> %i.cp, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float %i.af, i64 2
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cy = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.co, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cx, <4 x float> %i.cz) ; 3 uses
  %i.db = load <2 x float>, ptr %i.av, align 4, !tbaa !49, !noalias !72 ; 2 uses
  %i.dc = load float, ptr %i.aw, align 4, !tbaa !49, !noalias !72
  %i.dd = shufflevector <2 x float> %i.cp, <2 x float> %i.db, <4 x i32> <i32 poison, i32 0, i32 3, i32 3>
  %i.de = shufflevector <4 x float> %i.da, <4 x float> %i.dd, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.df = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.cl, <4 x i32> <i32 0, i32 4, i32 poison, i32 5>
  %i.dg = insertelement <4 x float> %i.df, float %i.be, i64 2
  %i.dh = fmul <4 x float> %i.de, %i.dg
  %i.di = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.bv, <4 x float> %i.di, <4 x i32> <i32 poison, i32 2, i32 6, i32 7>
  %i.dk = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.dj, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dm = shufflevector <4 x float> %i.as, <4 x float> %i.bv, <4 x i32> <i32 poison, i32 0, i32 5, i32 7>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.cu, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = extractelement <2 x float> %i.bs, i64 0
  %i.dq = fmul float %i.dp, %i.dc
  %i.dr = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 0, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.dt = insertelement <4 x float> %i.di, float %i.cq, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.ay, i64 2
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dw = insertelement <4 x float> %i.do, float %i.dq, i64 0
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.dv, <4 x float> %i.dw) ; 3 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 0
  %i.dz = extractelement <2 x float> %i.cf, i64 0
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.ay, float %i.dy)
  %i.eb = shufflevector <4 x float> %i.co, <4 x float> %i.da, <4 x i32> <i32 0, i32 7, i32 6, i32 poison>
  %i.ec = insertelement <4 x float> %i.eb, float 0.000000e+00, i64 3
  store <4 x float> %i.ec, ptr %4, align 16, !tbaa !49, !alias.scope !72
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ee = extractelement <4 x float> %i.da, i64 1
  store float %i.ee, ptr %i.ed, align 16, !tbaa !49, !alias.scope !72
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.eg = shufflevector <4 x float> %i.do, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 poison, i32 6>
  %i.eh = insertelement <4 x float> %i.eg, float 0.000000e+00, i64 2
  store <4 x float> %i.eh, ptr %i.ef, align 4, !tbaa !49, !alias.scope !72
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ej = extractelement <4 x float> %i.dx, i64 3
  store float %i.ej, ptr %i.ei, align 4, !tbaa !49, !alias.scope !72
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.ea, ptr %i.ek, align 8, !tbaa !49, !alias.scope !72
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.el, align 4, !tbaa !49, !alias.scope !72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.em = load float, ptr %5, align 4, !tbaa !49  ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !49 ; 3 uses
  %i.ep = fmul float %i.eo, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !49 ; 3 uses
  %i.et = call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.eq)
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !49 ; 3 uses
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.et)
  %i.ex = call noundef float @sqrtf(float noundef %i.ew) #16
  %i.ey = fdiv float 1.000000e+00, %i.ex          ; 4 uses
  %i.ez = fmul float %i.em, %i.ey                 ; 3 uses
  %i.fa = fmul float %i.eo, %i.ey                 ; 3 uses
  %i.fb = fmul float %i.es, %i.ey                 ; 3 uses
  %i.fc = fmul float %i.ev, %i.ey                 ; 2 uses
  %i.fd = fcmp olt float %i.fc, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.fd, float -1.000000e+00, float %i.fc ; 2 uses
  %i.fe = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.fe, float 1.000000e+00, float %spec.store.select.i.i
  %i.ff = call noundef float @acosf(float noundef %spec.store.select1.i.i) #16
  %i.fg = fmul float %i.ff, 2.000000e+00
  store float %i.fg, ptr %3, align 4, !tbaa !49
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !49
  %i.fh = fmul float %i.fa, %i.fa
  %i.fi = call float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.fh)
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fi) ; 2 uses
  %i.fk = fcmp olt float %i.fj, f0x28800000
  br i1 %i.fk, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.fl = call noundef float @sqrtf(float noundef %i.fj) #16
  %i.fm = fdiv float 1.000000e+00, %i.fl          ; 3 uses
  %i.fn = fmul float %i.ez, %i.fm
  %i.fo = fmul float %i.fa, %i.fm
  %i.fp = fmul float %i.fb, %i.fm
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.fn, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.fo, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.fp, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !49   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !49 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !49 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #16 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.m, align 4, !tbaa !49
  %i.t = load float, ptr %i.n, align 4, !tbaa !49
  %i.u = fsub float %i.s, %i.t
  %i.v = load float, ptr %i.o, align 4, !tbaa !49
  %i.w = load float, ptr %i.j, align 4, !tbaa !49
  %i.x = fsub float %i.v, %i.w
  %i.y = load float, ptr %i.k, align 4, !tbaa !49
  %i.z = load float, ptr %i.p, align 4, !tbaa !49
  %i.aa = fsub float %i.y, %i.z
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.u, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.x, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.aa, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !49
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !49
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !49
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #16 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !49
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !49
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !49
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !49
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !49
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !49
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !49
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !49
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !49
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !49
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !38}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"any p2 pointer", !13, i64 0}
!15 = !{!"p2 _ZTS17btCollisionObject", !14, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !12, i64 0, !7, i64 4, !7, i64 8, !15, i64 16, !16, i64 24}
!18 = !{!17, !16, i64 24}
!19 = !{!17, !15, i64 16}
!20 = !{!17, !7, i64 4}
!21 = !{!17, !7, i64 8}
!22 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!23 = !{!"_ZTS9btVector3", !6, i64 0}
!24 = !{!"_ZTS11btTransform", !22, i64 0, !23, i64 48}
!25 = !{!"float", !6, i64 0}
!26 = !{!"p1 _ZTS17btBroadphaseProxy", !13, i64 0}
!27 = !{!"p1 _ZTS16btCollisionShape", !13, i64 0}
!28 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!29 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !28, i64 0, !7, i64 4, !7, i64 8, !15, i64 16, !16, i64 24}
!30 = !{!"_ZTS17btCollisionObject", !24, i64 8, !24, i64 72, !23, i64 136, !23, i64 152, !23, i64 168, !7, i64 184, !25, i64 188, !26, i64 192, !27, i64 200, !13, i64 208, !27, i64 216, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !25, i64 244, !25, i64 248, !25, i64 252, !25, i64 256, !25, i64 260, !25, i64 264, !25, i64 268, !7, i64 272, !13, i64 280, !7, i64 288, !7, i64 292, !7, i64 296, !25, i64 300, !25, i64 304, !25, i64 308, !7, i64 312, !29, i64 320, !7, i64 352, !23, i64 356}
!31 = !{!30, !7, i64 272}
!32 = !{i8 0, i8 2}
!33 = !{ptr @_ZN13btGhostObjectD2Ev}
!34 = !{!"_ZTS17btBroadphaseProxy", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !23, i64 20, !23, i64 36}
!35 = !{!34, !13, i64 0}
!36 = !{!"p1 _ZTS17btCollisionObject", !13, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{}
!43 = !{!"_ZTS13btGhostObject", !30, i64 0, !17, i64 376}
!44 = !{!"p1 _ZTS28btHashedOverlappingPairCache", !13, i64 0}
!45 = !{!"_ZTS24btPairCachingGhostObject", !43, i64 0, !44, i64 408}
!46 = !{!45, !44, i64 408}
!47 = !{!6, !6, i64 0}
!48 = !{i64 0, i64 16, !47}
!49 = !{!25, !25, i64 0}
!50 = !{!30, !26, i64 192}
!51 = !{!30, !27, i64 200}
!52 = distinct !{!52, !38, !39, !40}
!53 = distinct !{!53, !41}
!54 = distinct !{!54, !38, !39}
!55 = !{ptr @_ZN24btPairCachingGhostObjectD2Ev}
!56 = !{ptr @_ZN24btPairCachingGhostObjectD2Ev, ptr @_ZN13btGhostObjectD2Ev}
!57 = distinct !{!57, !38, !39, !40}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !38, !39}
!60 = distinct !{!60, !38}
!61 = distinct !{!61, !38}
!62 = !{!30, !7, i64 352}
!63 = !{!30, !27, i64 216}
!64 = distinct !{!64, !38}
!65 = !{!29, !7, i64 4}
!66 = !{!29, !15, i64 16}
!67 = distinct !{!67, i1 true, !"_ZNK11btMatrix3x37inverseEv"}
!68 = distinct !{!68, !67, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!70 = distinct !{!70, !69, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!71 = !{!68}
!72 = !{!70}
end_hunk_0
