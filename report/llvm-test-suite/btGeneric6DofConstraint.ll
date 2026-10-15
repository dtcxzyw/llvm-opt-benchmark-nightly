Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGeneric6DofConstraint?download=true
inline.NumInlined: 433
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_:bb.a
  store <2 x float> %i.jr, ptr %i.il, align 8, !tbaa !11
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.jt = load float, ptr %i.js, align 8, !tbaa !11
  %i.ju = fadd float %i.jp, %i.jt
  store float %i.ju, ptr %i.js, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.0 = phi float [ %i.eo, %bb.h ], [ 0.000000e+00, %bb.f ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint18calculateAngleInfoEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) initializes((1168, 1180), (1184, 1232)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.e = load float, ptr %i.d, align 8, !tbaa !11, !noalias !70 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.g = load float, ptr %i.f, align 8, !tbaa !11, !noalias !70 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.j = load float, ptr %i.i, align 8, !tbaa !11, !noalias !70 ; 7 uses
  %i.k = insertelement <2 x float> poison, float %i.g, i64 0 ; 2 uses
  %i.l = insertelement <2 x float> %i.k, float %i.e, i64 1
  %i.m = fneg <2 x float> %i.l                    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.r = load float, ptr %i.q, align 8, !tbaa !11, !noalias !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.t = load float, ptr %i.s, align 8, !tbaa !11, !noalias !71
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.v = load float, ptr %i.u, align 8, !tbaa !11, !noalias !71
  %i.w = load <2 x float>, ptr %i.c, align 8, !tbaa !11, !noalias !70 ; 3 uses
  %i.x = load float, ptr %i.h, align 4, !tbaa !11, !noalias !70 ; 2 uses
  %i.y = fneg <2 x float> %i.w                    ; 2 uses
  %i.z = fneg float %i.x
  %i.aa = fmul float %i.g, %i.z
  %i.ab = load <2 x float>, ptr %i.b, align 8, !tbaa !11, !noalias !70 ; 5 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.e, float %i.aa) ; 2 uses
  %i.ae = load <2 x float>, ptr %i.a, align 8, !tbaa !11, !noalias !70 ; 6 uses
  %i.af = fneg float %i.ac
  %i.ag = fmul float %i.j, %i.af
  %i.ah = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.g, float %i.ag)
  %i.aj = shufflevector <2 x float> %i.m, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %i.ak = fmul <2 x float> %i.ab, %i.aj
  %i.al = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.am = insertelement <2 x float> %i.al, float %i.g, i64 0
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.w, <2 x float> %i.ak) ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %i.ap = fmul float %i.ah, %i.ao
  %i.aq = extractelement <2 x float> %i.ae, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ad, float %i.ap)
  %i.as = extractelement <2 x float> %i.an, i64 1
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.as, float %i.ar)
  %i.au = fdiv float 1.000000e+00, %i.at          ; 4 uses
  %i.av = fmul float %i.ad, %i.au                 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ae, %i.m
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.x, float %i.aw)
  %i.ay = fmul float %i.ax, %i.au                 ; 2 uses
  %i.az = fmul float %i.ai, %i.au                 ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bc = fmul <2 x float> %i.an, %i.bb           ; 3 uses
  %i.bd = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.be = insertelement <2 x float> %i.bd, float %i.j, i64 0 ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.y
  %i.bg = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x float> %i.bg, float %i.e, i64 0
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = fmul <2 x float> %i.bi, %i.bb           ; 3 uses
  %i.bk = shufflevector <2 x float> %i.k, <2 x float> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.bl = fneg <2 x float> %i.bk
  %i.bm = fmul <2 x float> %i.ae, %i.bl
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.ab, <2 x float> %i.bm)
  %i.bo = fmul <2 x float> %i.bn, %i.bb           ; 3 uses
  %i.bp = load <2 x float>, ptr %i.o, align 8, !tbaa !11, !noalias !71 ; 5 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 4 uses
  %i.br = fmul float %i.bq, %i.ay
  %i.bs = load <2 x float>, ptr %i.n, align 8, !tbaa !11, !noalias !71 ; 5 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 3 uses
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.av, float %i.br)
  %i.bv = load <2 x float>, ptr %i.p, align 8, !tbaa !11, !noalias !71 ; 5 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0 ; 3 uses
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.az, float %i.bu)
  %i.by = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bz = fmul float %i.ay, %i.by
  %i.ca = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.av, float %i.bz)
  %i.cc = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.az, float %i.cb) ; 2 uses
  %i.ce = fmul <2 x float> %i.bj, %i.bp
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bc, <2 x float> %i.ce)
  %i.cg = extractelement <2 x float> %i.bj, i64 0
  %i.ch = fmul float %i.cg, %i.by
  %i.ci = extractelement <2 x float> %i.bc, i64 0
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.ci, float %i.ch)
  %i.ck = extractelement <2 x float> %i.bo, i64 0
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.ck, float %i.cj) ; 2 uses
  %i.cm = extractelement <2 x float> %i.bj, i64 1 ; 2 uses
  %i.cn = fmul float %i.bq, %i.cm
  %i.co = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.co, float %i.cn)
  %i.cq = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.cq, float %i.cp) ; 3 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bo, <2 x float> %i.cf)
  %i.ct = fmul float %i.cm, %i.t
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.r, float %i.co, float %i.ct)
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.cq, float %i.cu)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.cx = fcmp olt float %i.cr, 1.000000e+00
  br i1 %i.cx, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.cy = fcmp ogt float %i.cr, -1.000000e+00
  br i1 %i.cy, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cz = fneg <2 x float> %i.cs                  ; 2 uses
  %i.da = extractelement <2 x float> %i.cz, i64 1
  %i.db = tail call noundef float @atan2f(float noundef %i.da, float noundef %i.cv) #19, !tbaa !7
  store float %i.db, ptr %i.cw, align 8, !tbaa !11
  %i.dc = tail call noundef float @asinf(float noundef %i.cr) #19, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1172
  store float %i.dc, ptr %i.dd, align 4, !tbaa !11
  %i.de = extractelement <2 x float> %i.cz, i64 0
  %i.df = tail call noundef float @atan2f(float noundef %i.de, float noundef %i.bx) #19, !tbaa !7
  br label %_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit

bb.d:                                             ; preds = %bb.b
  %i.dg = tail call noundef float @atan2f(float noundef %i.cd, float noundef %i.cl) #19, !tbaa !7
  %i.dh = fneg float %i.dg
  store float %i.dh, ptr %i.cw, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1172
  store float f0xBFC90FDB, ptr %i.di, align 4, !tbaa !11
  br label %_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit

bb.e:                                             ; preds = %bb.a
  %i.dj = tail call noundef float @atan2f(float noundef %i.cd, float noundef %i.cl) #19, !tbaa !7
  store float %i.dj, ptr %i.cw, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1172
  store float f0x3FC90FDB, ptr %i.dk, align 4, !tbaa !11
  br label %_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit

_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sink.i = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ %i.df, %bb.c ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store float %.sink.i, ptr %i.dl, align 8, !tbaa !11
  %i.dm = fneg float %i.bq
  %i.dn = shufflevector <2 x float> %i.bv, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.do = fneg <2 x float> %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.ds = fneg float %i.j
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.du = fmul float %i.e, %i.dm
  %i.dv = insertelement <2 x float> poison, float %i.j, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.g, i64 1
  %i.dx = fmul <2 x float> %i.dw, %i.do
  %i.dy = insertelement <2 x float> poison, float %i.e, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.j, i64 1 ; 2 uses
  %i.ea = shufflevector <2 x float> %i.bs, <2 x float> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ea, <2 x float> %i.dx) ; 7 uses
  %i.ec = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.eb, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.ec, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !32
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.ee = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.ef = fmul float %i.ee, %i.ds
  %i.eg = fneg <2 x float> %i.eb
  %i.eh = fmul <2 x float> %i.dn, %i.eg
  %i.ei = shufflevector <2 x float> %i.bv, <2 x float> %i.bp, <2 x i32> <i32 2, i32 0>
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.g, float %i.bw, float %i.du) ; 5 uses
  %i.ek = insertelement <2 x float> %i.ed, float %i.ej, i64 1 ; 2 uses
  %i.el = fmul <2 x float> %i.ek, %i.m
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.dz, <2 x float> %i.el) ; 4 uses
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.g, float %i.ef) ; 4 uses
  %.sroa.3.12.vec.insert.i17 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.en, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i17, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !32
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ek, <2 x float> %i.eh) ; 3 uses
  %i.ep = fneg float %i.ej
  %i.eq = fmul float %i.bq, %i.ep
  %i.er = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ee, float %i.eq) ; 3 uses
  %.sroa.3.12.vec.insert.i22 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.er, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i22, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %foldExtExtBinop56 = fmul <2 x float> %i.em, %i.em
  %i.es = extractelement <2 x float> %foldExtExtBinop56, i64 1
  %i.et = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.es)
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.eu)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ev)
  %i.ew = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.em, %i.ey
  store <2 x float> %i.ez, ptr %i.dp, align 8, !tbaa !11
  %i.fa = fmul float %i.en, %i.ew
  store float %i.fa, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !11
  %i.fb = shufflevector <2 x float> %i.eb, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fc = fmul <2 x float> %i.fb, %i.fb
  %i.fd = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fe = insertelement <2 x float> %i.fd, float %i.ej, i64 0 ; 2 uses
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fe, <2 x float> %i.fc)
  %i.fg = insertelement <2 x float> %i.ed, float %i.er, i64 1 ; 2 uses
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fg, <2 x float> %i.ff)
  %1 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fh)
  %i.fi = fdiv <2 x float> splat (float 1.000000e+00), %1 ; 4 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 0
  %i.fk = fmul float %i.ej, %i.fj
  store float %i.fk, ptr %i.dq, align 8, !tbaa !11
  %i.fl = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.eb, %i.fl
  store <2 x float> %i.fm, ptr %i.dr, align 4, !tbaa !11
  %i.fn = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = fmul <2 x float> %i.eo, %i.fn
  store <2 x float> %i.fo, ptr %i.dt, align 8, !tbaa !11
  %i.fp = extractelement <2 x float> %i.fi, i64 1
  %i.fq = fmul float %i.er, %i.fp
  store float %i.fq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint19calculateTransformsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) initializes((824, 836), (840, 852), (856, 868), (1040, 1168), (1232, 1248)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54, !nonnull !52, !align !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) initializes((824, 836), (840, 852), (856, 868), (1040, 1168), (1232, 1248)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load float, ptr %i.o, align 4, !tbaa !11, !noalias !80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load float, ptr %i.u, align 4, !tbaa !11, !noalias !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.x = load <2 x float>, ptr %1, align 4, !tbaa !11, !noalias !80 ; 4 uses
  %i.y = load <2 x float>, ptr %i.a, align 8, !tbaa !11, !noalias !80 ; 2 uses
  %i.z = load <2 x float>, ptr %i.b, align 8, !tbaa !11, !noalias !80 ; 3 uses
  %i.aa = load <2 x float>, ptr %i.d, align 8, !tbaa !11, !noalias !80 ; 2 uses
  %i.ab = shufflevector <2 x float> %i.z, <2 x float> %i.x, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ac = insertelement <4 x float> %i.ab, float 0.000000e+00, i64 3
  %i.ad = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ad, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.af = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x float> %i.ae, <4 x float> %i.af, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ah = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float 0.000000e+00, i64 3
  %i.aj = shufflevector <2 x float> %i.x, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ak = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = insertelement <4 x float> %i.ak, float 0.000000e+00, i64 3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.an = load <2 x float>, ptr %i.k, align 4, !tbaa !11, !noalias !80 ; 3 uses
  %i.ao = load <2 x float>, ptr %i.f, align 4, !tbaa !11, !noalias !80 ; 2 uses
  %i.ap = load float, ptr %i.i, align 8, !tbaa !11, !noalias !80
  %i.aq = load <2 x float>, ptr %i.e, align 4, !tbaa !11, !noalias !80 ; 2 uses
  %i.ar = load float, ptr %i.h, align 8, !tbaa !11, !noalias !80
  %i.as = load <2 x float>, ptr %i.g, align 4, !tbaa !11, !noalias !80 ; 2 uses
  %i.at = load float, ptr %i.j, align 8, !tbaa !11, !noalias !80
  %i.au = load float, ptr %i.q, align 8, !tbaa !11, !noalias !81 ; 2 uses
  %i.av = load float, ptr %i.r, align 4, !tbaa !11, !noalias !81 ; 2 uses
  %i.aw = load float, ptr %i.s, align 8, !tbaa !11, !noalias !81 ; 2 uses
  %i.ax = load <2 x float>, ptr %i.t, align 4, !tbaa !11, !noalias !81
  %i.ay = load <2 x float>, ptr %i.c, align 4, !tbaa !11, !noalias !80 ; 3 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bb = load <2 x float>, ptr %i.l, align 4, !tbaa !11, !noalias !80 ; 3 uses
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bd = insertelement <2 x float> poison, float %i.av, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.bc, %i.be
  %i.bg = shufflevector <2 x float> %i.x, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.bh = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bi, <2 x float> %i.bf)
  %i.bk = shufflevector <2 x float> %i.ay, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bl = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bm, <2 x float> %i.bj)
  %i.bo = fadd <2 x float> %i.ax, %i.bn
  %i.bp = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.ag, <4 x float> %i.bp, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.br = fmul <4 x float> %i.ac, %i.bq
  %i.bs = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.ai, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.aj, <4 x float> %i.br)
  %i.bv = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.al, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.ba, <4 x float> %i.bu)
  %i.by = shufflevector <2 x float> %i.an, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bz = shufflevector <2 x float> %i.z, <2 x float> %i.ao, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ca = insertelement <4 x float> %i.bz, float 1.000000e+00, i64 3 ; 2 uses
  %i.cb = fmul <4 x float> %i.by, %i.ca
  %i.cc = shufflevector <2 x float> %i.y, <2 x float> %i.aq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float 0.000000e+00, i64 3 ; 2 uses
  %i.ce = shufflevector <2 x float> %i.an, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.ce, <4 x float> %i.cb)
  %i.cg = shufflevector <2 x float> %i.aa, <2 x float> %i.as, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ch = insertelement <4 x float> %i.cg, float 0.000000e+00, i64 3 ; 2 uses
  %i.ci = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.cj, <4 x float> %i.cf)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.cm = load <2 x float>, ptr %i.m, align 4, !tbaa !11, !noalias !80 ; 4 uses
  %i.cn = load float, ptr %i.n, align 4, !tbaa !11, !noalias !80
  %i.co = fmul float %i.cn, %i.av
  %i.cp = extractelement <2 x float> %i.cm, i64 0
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.au, float %i.co)
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.aw, float %i.cq)
  %i.cs = fadd float %i.cr, %i.v
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  %i.ct = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float 0.000000e+00, i64 3
  %i.cv = insertelement <4 x float> %i.cu, float %i.ap, i64 2
  %i.cw = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x float> %i.ca, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cy = fmul <4 x float> %i.cv, %i.cx
  %i.cz = insertelement <4 x float> %i.cd, float %i.ar, i64 2
  %i.da = shufflevector <2 x float> %i.cm, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.da, <4 x float> %i.cy)
  %i.dc = insertelement <4 x float> %i.ch, float %i.at, i64 2
  %i.dd = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.p, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.de, <4 x float> %i.db)
  store <4 x float> %i.bx, ptr %i.w, align 8
  store <4 x float> %i.ck, ptr %i.am, align 8
  store <4 x float> %i.df, ptr %i.cl, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store <2 x float> %i.bo, ptr %i.dg, align 8
  %.sroa.1929.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.1929.48..sroa_idx, align 8, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !11, !noalias !82 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !11, !noalias !83
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ee = load <2 x float>, ptr %2, align 4, !tbaa !11, !noalias !82 ; 4 uses
  %i.ef = load <2 x float>, ptr %i.dh, align 8, !tbaa !11, !noalias !82 ; 2 uses
  %i.eg = load <2 x float>, ptr %i.di, align 8, !tbaa !11, !noalias !82 ; 3 uses
  %i.eh = load <2 x float>, ptr %i.dk, align 8, !tbaa !11, !noalias !82 ; 2 uses
  %i.ei = shufflevector <2 x float> %i.eg, <2 x float> %i.ee, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float 0.000000e+00, i64 3
  %i.ek = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.el = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ek, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.em = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.eo = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ep = insertelement <4 x float> %i.eo, float 0.000000e+00, i64 3
  %i.eq = shufflevector <2 x float> %i.ee, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.er = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.es = insertelement <4 x float> %i.er, float 0.000000e+00, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.eu = load <2 x float>, ptr %i.dr, align 4, !tbaa !11, !noalias !82 ; 3 uses
  %i.ev = load <2 x float>, ptr %i.dm, align 4, !tbaa !11, !noalias !82 ; 2 uses
  %i.ew = load float, ptr %i.dp, align 8, !tbaa !11, !noalias !82
  %i.ex = load <2 x float>, ptr %i.dl, align 4, !tbaa !11, !noalias !82 ; 2 uses
  %i.ey = load float, ptr %i.do, align 8, !tbaa !11, !noalias !82
  %i.ez = load <2 x float>, ptr %i.dn, align 4, !tbaa !11, !noalias !82 ; 2 uses
  %i.fa = load float, ptr %i.dq, align 8, !tbaa !11, !noalias !82
  %i.fb = load float, ptr %i.dx, align 8, !tbaa !11, !noalias !83 ; 2 uses
  %i.fc = load float, ptr %i.dy, align 4, !tbaa !11, !noalias !83 ; 2 uses
  %i.fd = load float, ptr %i.dz, align 8, !tbaa !11, !noalias !83 ; 2 uses
  %i.fe = load <2 x float>, ptr %i.ea, align 4, !tbaa !11, !noalias !83
  %i.ff = load <2 x float>, ptr %i.dj, align 4, !tbaa !11, !noalias !82 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f:bb.a
  %i.bo = load float, ptr %i.bl, align 8, !tbaa !11
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bo, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !32
  %i.bp = load float, ptr %i.d, align 4, !tbaa !120
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !54, !nonnull !52, !align !53
  %i.bs = call noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_(ptr noundef nonnull align 4 dereferenceable(140) %i.i, float noundef %i.bp, float noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(564) %i.bq, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(564) %i.br, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.r) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !19
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bx = load i8, ptr %i.bw, align 8, !range !36
  %i.by = icmp ne i8 %i.bx, 0
  %or.cond.not.i = select i1 %i.bv, i1 true, i1 %i.by
  br i1 %or.cond.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bz, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !32
  store <2 x float> %.sroa.0.0.copyload.i, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !56
  %i.cd = fdiv float 1.000000e+00, %i.cc
  %i.ce = load float, ptr %i.d, align 4, !tbaa !120
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !54, !nonnull !52, !align !53
  %i.ch = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.ca, float noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.cg, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !19
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cm = load i8, ptr %i.cl, align 8, !range !36
  %i.cn = icmp ne i8 %i.cm, 0
  %or.cond.not.i.1 = select i1 %i.ck, i1 true, i1 %i.cn
  br i1 %or.cond.not.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.cp, align 8
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.sroa.2.0.copyload.i.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.1, align 8, !tbaa !32
  store <2 x float> %.sroa.0.0.copyload.i.1, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !56
  %i.cs = fdiv float 1.000000e+00, %i.cr
  %i.ct = load float, ptr %i.d, align 4, !tbaa !120
  %i.cu = load ptr, ptr %i.p, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !54, !nonnull !52, !align !53
  %i.cw = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.co, float noundef %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.cs, ptr noundef nonnull %i.cu, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.cv, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !19
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.db = load i8, ptr %i.da, align 8, !range !36
  %i.dc = icmp ne i8 %i.db, 0
  %or.cond.not.i.2 = select i1 %i.cz, i1 true, i1 %i.dc
  br i1 %or.cond.not.i.2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.sroa.0.0.copyload.i.2 = load <2 x float>, ptr %i.de, align 8
  %.sroa.2.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %.sroa.2.0.copyload.i.2 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.2, align 8, !tbaa !32
  store <2 x float> %.sroa.0.0.copyload.i.2, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.dg = load float, ptr %i.df, align 4, !tbaa !56
  %i.dh = fdiv float 1.000000e+00, %i.dg
  %i.di = load float, ptr %i.d, align 4, !tbaa !120
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.dk = load ptr, ptr %i.q, align 8, !tbaa !54, !nonnull !52, !align !53
  %i.dl = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.dd, float noundef %i.di, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.dh, ptr noundef nonnull %i.dj, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.dk, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint9updateRHSEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1266) %0, float noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint13calcAnchorPosEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) initializes((1248, 1264)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = load float, ptr %i.c, align 8, !tbaa !50 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54, !nonnull !52, !align !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load float, ptr %i.g, align 8, !tbaa !50 ; 2 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %i.j = fadd float %i.d, %i.h
  %i.k = fdiv float %i.d, %i.j
  %storemerge = select i1 %i.i, float 1.000000e+00, float %i.k ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.o = load float, ptr %i.n, align 8, !tbaa !11
  %i.p = fmul float %storemerge, %i.o
  %i.q = fsub float 1.000000e+00, %storemerge     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.s = load float, ptr %i.r, align 8, !tbaa !11
  %i.t = fmul float %i.q, %i.s
  %i.u = load <2 x float>, ptr %i.l, align 8, !tbaa !11
  %i.v = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = load <2 x float>, ptr %i.m, align 8, !tbaa !11
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = fadd <2 x float> %i.x, %i.ab
  %i.ad = fadd float %i.p, %i.t
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store <2 x float> %i.ac, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  ret void
}

declare noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(96), float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN23btGeneric6DofConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1266) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }

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
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTS9btVector3", !5, i64 0}
!13 = !{!"_ZTS25btTranslationalLimitMotor", !12, i64 0, !12, i64 16, !12, i64 32, !10, i64 48, !10, i64 52, !10, i64 56, !5, i64 60, !12, i64 64, !12, i64 80, !12, i64 96, !12, i64 112, !5, i64 128}
!14 = !{!13, !10, i64 56}
!15 = !{!"bool", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTS22btRotationalLimitMotor", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !15, i64 36, !10, i64 40, !10, i64 44, !6, i64 48, !10, i64 52}
!18 = !{!17, !10, i64 32}
!19 = !{!17, !6, i64 48}
!20 = !{!17, !10, i64 40}
!21 = !{!17, !15, i64 36}
!22 = !{!17, !10, i64 52}
!23 = !{!"_ZTS13btTypedObject", !6, i64 0}
!24 = !{!"any pointer", !5, i64 0}
!25 = !{!"p1 _ZTS11btRigidBody", !24, i64 0}
!26 = !{!"_ZTS17btTypedConstraint", !23, i64 8, !6, i64 12, !6, i64 16, !15, i64 20, !25, i64 24, !25, i64 32, !10, i64 40, !10, i64 44, !12, i64 48, !12, i64 64, !12, i64 80}
!27 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!28 = !{!"_ZTS11btTransform", !27, i64 0, !12, i64 48}
!29 = !{!"_ZTS23btGeneric6DofConstraint", !26, i64 0, !28, i64 96, !28, i64 160, !5, i64 224, !5, i64 476, !13, i64 728, !5, i64 868, !10, i64 1036, !28, i64 1040, !28, i64 1104, !12, i64 1168, !5, i64 1184, !12, i64 1232, !12, i64 1248, !15, i64 1264, !15, i64 1265}
!30 = !{!29, !15, i64 1264}
!31 = !{!29, !15, i64 1265}
!32 = !{!5, !5, i64 0}
!33 = !{i64 0, i64 16, !32}
!34 = !{!17, !10, i64 0}
!35 = !{!17, !10, i64 4}
!36 = !{i8 0, i8 2}
!37 = !{!17, !10, i64 8}
!38 = !{!17, !10, i64 28}
!39 = !{!"_ZTS12btSolverBody", !12, i64 0, !12, i64 16, !12, i64 32, !12, i64 48, !10, i64 64, !25, i64 72, !12, i64 80, !12, i64 96}
!40 = !{!39, !25, i64 72}
!41 = !{!"p1 _ZTS17btBroadphaseProxy", !24, i64 0}
!42 = !{!"p1 _ZTS16btCollisionShape", !24, i64 0}
!43 = !{!"_ZTS17btCollisionObject", !28, i64 8, !28, i64 72, !12, i64 136, !12, i64 152, !12, i64 168, !15, i64 184, !10, i64 188, !41, i64 192, !42, i64 200, !42, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !24, i64 248, !6, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !15, i64 272, !5, i64 273}
!44 = !{!"p1 _ZTS13btMotionState", !24, i64 0}
!45 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!46 = !{!"any p2 pointer", !24, i64 0}
!47 = !{!"p2 _ZTS17btTypedConstraint", !46, i64 0}
!48 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !45, i64 0, !6, i64 4, !6, i64 8, !47, i64 16, !15, i64 24}
!49 = !{!"_ZTS11btRigidBody", !43, i64 0, !27, i64 280, !12, i64 328, !12, i64 344, !10, i64 360, !12, i64 364, !12, i64 380, !12, i64 396, !12, i64 412, !12, i64 428, !12, i64 444, !12, i64 460, !10, i64 476, !10, i64 480, !15, i64 484, !10, i64 488, !10, i64 492, !10, i64 496, !10, i64 500, !10, i64 504, !10, i64 508, !44, i64 512, !48, i64 520, !6, i64 552, !6, i64 556, !6, i64 560}
!50 = !{!49, !10, i64 360}
!51 = !{!26, !25, i64 24}
!52 = !{}
!53 = !{i64 8}
!54 = !{!26, !25, i64 32}
!55 = !{!"_ZTS15btJacobianEntry", !12, i64 0, !12, i64 16, !12, i64 32, !12, i64 48, !12, i64 64, !10, i64 80}
!56 = !{!55, !10, i64 80}
!57 = !{!17, !10, i64 44}
!58 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo1E", !6, i64 0, !6, i64 4}
!59 = !{!58, !6, i64 0}
!60 = !{!58, !6, i64 4}
!61 = !{!17, !10, i64 12}
!62 = !{!17, !10, i64 24}
!63 = !{!17, !10, i64 20}
!64 = !{!13, !10, i64 48}
!65 = !{!13, !10, i64 52}
!66 = distinct !{!66, i1 false, !"_ZNK11btMatrix3x37inverseEv"}
!67 = distinct !{!67, !66, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!68 = distinct !{!68, i1 false, !"_ZmlRK11btMatrix3x3S1_"}
!69 = distinct !{!69, !68, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!70 = !{!67}
!71 = !{!69}
!72 = distinct !{!72, i1 false, !"_ZNK11btTransformmlERKS_"}
!73 = distinct !{!73, !72, !"_ZNK11btTransformmlERKS_: argument 0"}
!74 = distinct !{!74, i1 false, !"_ZmlRK11btMatrix3x3S1_"}
!75 = distinct !{!75, !74, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!76 = distinct !{!76, i1 false, !"_ZNK11btTransformmlERKS_"}
!77 = distinct !{!77, !76, !"_ZNK11btTransformmlERKS_: argument 0"}
!78 = distinct !{!78, i1 false, !"_ZmlRK11btMatrix3x3S1_"}
!79 = distinct !{!79, !78, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!80 = !{!75, !73}
!81 = !{!73}
!82 = !{!79, !77}
!83 = !{!77}
!84 = distinct !{!84, i1 false, !"_ZNK11btMatrix3x37inverseEv"}
!85 = distinct !{!85, !84, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!86 = !{!85}
!87 = distinct !{!87, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!88 = distinct !{!88, !87, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!89 = distinct !{!89, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!90 = distinct !{!90, !89, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!91 = !{!88}
!92 = !{!90}
!93 = distinct !{!93, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!94 = distinct !{!94, !93, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!95 = distinct !{!95, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!96 = distinct !{!96, !95, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!97 = !{!94}
!98 = !{!96}
!99 = distinct !{!99, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!100 = distinct !{!100, !99, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!101 = distinct !{!101, i1 false, !"_ZNK11btMatrix3x39transposeEv"}
!102 = distinct !{!102, !101, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!103 = !{!100}
!104 = !{!102}
!105 = !{!29, !10, i64 784}
!106 = !{!17, !10, i64 16}
!107 = !{!"p1 float", !24, i64 0}
!108 = !{!"p1 int", !24, i64 0}
!109 = !{!"_ZTSN17btTypedConstraint17btConstraintInfo2E", !10, i64 0, !10, i64 4, !107, i64 8, !107, i64 16, !107, i64 24, !107, i64 32, !6, i64 40, !107, i64 48, !107, i64 56, !107, i64 64, !107, i64 72, !108, i64 80, !6, i64 88}
!110 = !{!109, !6, i64 40}
!111 = !{!107, !107, i64 0}
!112 = !{!109, !107, i64 32}
!113 = !{!109, !107, i64 16}
!114 = !{!109, !107, i64 48}
!115 = !{!109, !107, i64 56}
!116 = !{!109, !10, i64 0}
!117 = !{!109, !10, i64 4}
!118 = !{!109, !107, i64 64}
!119 = !{!109, !107, i64 72}
!120 = !{!29, !10, i64 1036}
end_hunk_1
