Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodySliderConstraint?download=true
inline.NumInlined: 272
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN27btMultiBodySliderConstraint20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo:bb.a
  %i.aq = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.u, i64 1
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ar, <2 x float> %i.an)
  %i.at = load <2 x float>, ptr %i.ad, align 4, !tbaa !30
  %i.au = fadd <2 x float> %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.aw = load float, ptr %i.av, align 4, !tbaa !30
  %i.ax = fadd float %i.ac, %i.aw
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  store <2 x float> %i.au, ptr %4, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.445.0..sroa_idx, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.be = load float, ptr %i.b, align 8, !tbaa !30, !noalias !78
  %i.bf = load float, ptr %i.c, align 8, !tbaa !30, !noalias !78
  %i.bg = load float, ptr %i.e, align 8, !tbaa !30, !noalias !78
  %i.bh = load float, ptr %i.ay, align 4, !tbaa !30, !noalias !78
  %i.bi = load float, ptr %i.az, align 4, !tbaa !30, !noalias !78
  %i.bj = load float, ptr %i.ba, align 4, !tbaa !30, !noalias !78
  %i.bk = load float, ptr %i.bb, align 8, !tbaa !30, !noalias !78
  %i.bl = load float, ptr %i.bc, align 8, !tbaa !30, !noalias !78
  %i.bm = load float, ptr %i.bd, align 8, !tbaa !30, !noalias !78
  %i.bn = tail call { <2 x float>, <2 x float> } @_ZNK11btRigidBody14getOrientationEv(ptr noundef nonnull align 8 dereferenceable(744) %i.i) ; 2 uses
  %i.bo = extractvalue { <2 x float>, <2 x float> } %i.bn, 0 ; 5 uses
  %i.bp = extractvalue { <2 x float>, <2 x float> } %i.bn, 1 ; 3 uses
  %.sroa.0201.0.vec.extract = extractelement <2 x float> %i.bo, i64 0 ; 3 uses
  %.sroa.0201.4.vec.extract = extractelement <2 x float> %i.bo, i64 1 ; 3 uses
  %i.bq = fmul float %.sroa.0201.4.vec.extract, %.sroa.0201.4.vec.extract
  %i.br = tail call float @llvm.fmuladd.f32(float %.sroa.0201.0.vec.extract, float %.sroa.0201.0.vec.extract, float %i.bq)
  %.sroa.5202.8.vec.extract = extractelement <2 x float> %i.bp, i64 0 ; 4 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %.sroa.5202.8.vec.extract, float %.sroa.5202.8.vec.extract, float %i.br)
  %.sroa.5202.12.vec.extract = extractelement <2 x float> %i.bp, i64 1 ; 3 uses
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5202.12.vec.extract, float %.sroa.5202.12.vec.extract, float %i.bs)
  %i.bu = fdiv float 2.000000e+00, %i.bt          ; 2 uses
  %i.bv = fmul float %.sroa.5202.8.vec.extract, %i.bu ; 3 uses
  %i.bw = fmul float %.sroa.5202.12.vec.extract, %i.bv ; 2 uses
  %i.bx = fmul float %.sroa.5202.8.vec.extract, %i.bv ; 2 uses
  %i.by = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.bo, %i.bz           ; 3 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.cc = fmul float %.sroa.0201.0.vec.extract, %i.cb ; 2 uses
  %i.cd = fmul float %.sroa.0201.4.vec.extract, %i.cb ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.bo, %i.cf           ; 4 uses
  %i.ch = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.cc, i64 1
  %i.ci = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ck = fmul <2 x float> %i.ci, %i.cj           ; 4 uses
  %foldExtExtBinop = fadd <2 x float> %i.cg, %i.ck
  %i.cl = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cm = fadd float %i.cc, %i.bw
  %foldExtExtBinop280 = fmul <2 x float> %i.bo, %i.ca
  %i.cn = extractelement <2 x float> %foldExtExtBinop280, i64 0 ; 2 uses
  %i.co = fadd float %i.cd, %i.bx
  %i.cp = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.bw, i64 1
  %i.cr = fsub <2 x float> %i.ch, %i.cq
  %i.cs = fadd float %i.cn, %i.bx
  %i.ct = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cu = fsub <2 x float> %i.cg, %i.ck
  %i.cv = fadd <2 x float> %i.cg, %i.ck
  %i.cw = fadd float %i.cn, %i.cd
  %i.cx = fsub float 1.000000e+00, %i.cw
  %i.cy = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bf, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.da = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.cm, i64 0
  %i.db = shufflevector <2 x float> <float 1.000000e+00, float poison>, <2 x float> %i.cg, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.dc = shufflevector <2 x float> %i.ct, <2 x float> %i.ck, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.dd = fsub <4 x float> %i.db, %i.dc
  %i.de = shufflevector <4 x float> %i.da, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 3 uses
  %i.df = fmul <4 x float> %i.cz, %i.de
  %i.dg = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = insertelement <4 x float> %i.dg, float 0.000000e+00, i64 3
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 3 uses
  %i.dj = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.be, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.dk, <4 x float> %i.df)
  %i.dm = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.dn = insertelement <4 x float> %i.dm, float 0.000000e+00, i64 3
  %i.do = insertelement <4 x float> %i.dn, float %i.cx, i64 2 ; 3 uses
  %i.dp = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bg, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dq, <4 x float> %i.dl)
  store <4 x float> %i.dr, ptr %5, align 16
  %i.ds = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bi, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.du = fmul <4 x float> %i.dt, %i.de
  %i.dv = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bh, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.dw, <4 x float> %i.du)
  %i.dy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bj, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dz, <4 x float> %i.dx)
  store <4 x float> %i.ea, ptr %i.d, align 16
  %i.eb = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bl, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ed = fmul <4 x float> %i.ec, %i.de
  %i.ee = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bk, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.ef, <4 x float> %i.ed)
  %i.eh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bm, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.ei, <4 x float> %i.eg)
  store <4 x float> %i.ej, ptr %i.f, align 16
  %i.ek = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.el = tail call { <2 x float>, <2 x float> } @_ZNK11btRigidBody14getOrientationEv(ptr noundef nonnull align 8 dereferenceable(744) %i.ek) ; 2 uses
  %i.em = extractvalue { <2 x float>, <2 x float> } %i.el, 0 ; 5 uses
  %i.en = extractvalue { <2 x float>, <2 x float> } %i.el, 1 ; 5 uses
  %.sroa.5200.12.vec.extract = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %.sroa.0199.4.vec.extract = extractelement <2 x float> %i.em, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 244
  %.sroa.0199.0.vec.extract = extractelement <2 x float> %i.em, i64 0
  %i.ep = load <2 x float>, ptr %i.g, align 8, !tbaa !30 ; 5 uses
  %i.eq = load <2 x float>, ptr %i.eo, align 4, !tbaa !30 ; 3 uses
  %i.er = fmul <2 x float> %i.em, %i.eq
  %i.es = extractelement <2 x float> %i.ep, i64 0
  %foldExtExtBinop282 = fmul <2 x float> %i.ep, %i.en
  %i.et = extractelement <2 x float> %foldExtExtBinop282, i64 0
  %i.eu = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ev = shufflevector <2 x float> %i.eq, <2 x float> %i.ep, <2 x i32> <i32 1, i32 2>
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ev, <2 x float> %i.er)
  %i.ex = shufflevector <2 x float> %i.en, <2 x float> %i.em, <2 x i32> <i32 0, i32 2>
  %i.ey = fneg <2 x float> %i.ex                  ; 3 uses
  %i.ez = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  %i.fa = tail call float @llvm.fmuladd.f32(float %.sroa.5200.12.vec.extract, float %i.ez, float %i.et)
  %i.fb = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fc = fneg <2 x float> %i.fb                  ; 4 uses
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.ep, <2 x float> %i.ew) ; 5 uses
  %i.fe = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.ff = extractelement <2 x float> %i.ey, i64 1 ; 2 uses
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.fe, float %i.fa) ; 3 uses
  %i.fh = fneg float %i.ez
  %i.fi = fmul float %.sroa.0199.4.vec.extract, %i.fh
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.es, float %i.fi)
  %i.fk = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fe, float %i.fj) ; 2 uses
  %i.fm = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fn = insertelement <2 x float> %i.fm, float %i.fg, i64 1
  %i.fo = fmul <2 x float> %i.eu, %i.fn
  %i.fp = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = shufflevector <2 x float> %i.ey, <2 x float> %i.fc, <2 x i32> <i32 1, i32 2>
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fr, <2 x float> %i.fo)
  %i.ft = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.ey, <2 x float> %i.fs)
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fb, <2 x float> %i.fv)
  %i.fx = extractelement <2 x float> %i.fd, i64 0
  %i.fy = fmul float %.sroa.5200.12.vec.extract, %i.fx
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.fk, float %i.fy)
  %i.ga = extractelement <2 x float> %i.fd, i64 1
  %i.gb = extractelement <2 x float> %i.fc, i64 0
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.gb, float %i.fz)
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.fg, float %.sroa.0199.0.vec.extract, float %i.gc)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gd, i64 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.9244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.9244.0.copyload = load <2 x float>, ptr %.sroa.9244.0..sroa_idx, align 8, !tbaa !26
  %.sroa.0239.0.copyload = load <2 x float>, ptr %i.g, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !44 ; 2 uses
  %.not61 = icmp eq ptr %i.gf, null
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !45
  %i.gi = tail call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.gf, i32 noundef %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %i.a) ; 2 uses
  %i.gj = extractvalue { <2 x float>, <2 x float> } %i.gi, 0
  %i.gk = extractvalue { <2 x float>, <2 x float> } %i.gi, 1
  store <2 x float> %i.gj, ptr %4, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.gk, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.gl = load ptr, ptr %i.ge, align 8, !tbaa !44
  %i.gm = load i32, ptr %i.gg, align 8, !tbaa !45
  call void @_ZNK11btMultiBody17localFrameToWorldEiRK11btMatrix3x3(ptr dead_on_unwind nonnull writable sret(%class.btMatrix3x3) align 4 %6, ptr noundef nonnull align 8 dereferenceable(640) %i.gl, i32 noundef %i.gm, ptr noundef nonnull align 4 dereferenceable(48) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(48) %6, i64 16, i1 false), !tbaa.struct !25
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.gn, i64 16, i1 false), !tbaa.struct !25
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.gp = load ptr, ptr %i.ge, align 8, !tbaa !44
  %i.gq = load i32, ptr %i.gg, align 8, !tbaa !45
  %i.gr = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localDirToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.gp, i32 noundef %i.gq, ptr noundef nonnull align 4 dereferenceable(16) %i.g) ; 2 uses
  %i.gs = extractvalue { <2 x float>, <2 x float> } %i.gr, 0
  %i.gt = extractvalue { <2 x float>, <2 x float> } %i.gr, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0239.0 = phi <2 x float> [ %.sroa.0239.0.copyload, %bb.c ], [ %i.gs, %bb.d ], [ %i.fw, %bb.b ] ; 4 uses
  %.sroa.9244.0 = phi <2 x float> [ %.sroa.9244.0.copyload, %bb.c ], [ %i.gt, %bb.d ], [ %.sroa.3.12.vec.insert.i, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false), !tbaa.struct !25
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.sroa.0171.0.copyload = load float, ptr %i.gv, align 8 ; 3 uses
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.gw = load <2 x float>, ptr %.sroa.6173.0..sroa_idx, align 4 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.11182.16.copyload = load float, ptr %i.gx, align 8 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.20191.32.copyload = load float, ptr %i.gy, align 8 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !24 ; 11 uses
  %.not62 = icmp eq ptr %i.ha, null
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.he = load float, ptr %i.gu, align 8, !tbaa !30 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !30 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !30 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !30
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !30
  %i.hn = load float, ptr %i.hd, align 4, !tbaa !30
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ha, i64 44
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !30
  %i.hq = fmul float %i.hg, %i.hp
  %i.hr = call float @llvm.fmuladd.f32(float %i.he, float %i.hn, float %i.hq)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !30
  %i.hu = call noundef float @llvm.fmuladd.f32(float %i.hi, float %i.ht, float %i.hr)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  %i.hw = load <2 x float>, ptr %i.hb, align 4, !tbaa !30 ; 2 uses
  %i.hx = load <2 x float>, ptr %i.hc, align 4, !tbaa !30 ; 2 uses
  %i.hy = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = shufflevector <2 x float> %i.hw, <2 x float> %i.hx, <2 x i32> <i32 1, i32 3>
  %i.ib = fmul <2 x float> %i.hz, %i.ia
  %i.ic = insertelement <2 x float> poison, float %i.he, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = shufflevector <2 x float> %i.hw, <2 x float> %i.hx, <2 x i32> <i32 0, i32 2>
  %i.if = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.ie, <2 x float> %i.ib)
  %i.ig = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.ij = insertelement <2 x float> %i.ii, float %i.hm, i64 1
  %i.ik = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ij, <2 x float> %i.if)
  %i.il = load <2 x float>, ptr %i.hv, align 4, !tbaa !30
  %i.im = fadd <2 x float> %i.ik, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  %i.io = load float, ptr %i.in, align 4, !tbaa !30
  %i.ip = fadd float %i.hu, %i.io
  %.sroa.3.12.vec.insert.i4.i.i69 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ip, i64 0
  store <2 x float> %i.im, ptr %7, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i69, ptr %.sroa.437.0..sroa_idx, align 8, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.is = insertelement <2 x float> poison, float %.sroa.11182.16.copyload, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = insertelement <2 x float> poison, float %.sroa.0171.0.copyload, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = insertelement <2 x float> poison, float %.sroa.20191.32.copyload, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = load <2 x float>, ptr %i.iq, align 4, !tbaa !30, !noalias !81 ; 3 uses
  %i.ja = load <2 x float>, ptr %i.ir, align 4, !tbaa !30, !noalias !81 ; 3 uses
  %i.jb = call { <2 x float>, <2 x float> } @_ZNK11btRigidBody14getOrientationEv(ptr noundef nonnull align 8 dereferenceable(744) %i.ha) ; 2 uses
  %i.jc = extractvalue { <2 x float>, <2 x float> } %i.jb, 0 ; 2 uses
  %i.jd = extractvalue { <2 x float>, <2 x float> } %i.jb, 1 ; 2 uses
  %.sroa.0137.0.vec.extract = extractelement <2 x float> %i.jc, i64 0 ; 6 uses
  %.sroa.0137.4.vec.extract = extractelement <2 x float> %i.jc, i64 1 ; 5 uses
  %i.je = fmul float %.sroa.0137.4.vec.extract, %.sroa.0137.4.vec.extract
  %i.jf = call float @llvm.fmuladd.f32(float %.sroa.0137.0.vec.extract, float %.sroa.0137.0.vec.extract, float %i.je)
  %.sroa.5138.8.vec.extract = extractelement <2 x float> %i.jd, i64 0 ; 4 uses
  %i.jg = call float @llvm.fmuladd.f32(float %.sroa.5138.8.vec.extract, float %.sroa.5138.8.vec.extract, float %i.jf)
  %.sroa.5138.12.vec.extract = extractelement <2 x float> %i.jd, i64 1 ; 5 uses
  %i.jh = call noundef float @llvm.fmuladd.f32(float %.sroa.5138.12.vec.extract, float %.sroa.5138.12.vec.extract, float %i.jg)
  %i.ji = fdiv float 2.000000e+00, %i.jh          ; 3 uses
  %i.jj = fmul float %.sroa.5138.8.vec.extract, %i.ji ; 4 uses
  %i.jk = fmul float %.sroa.0137.4.vec.extract, %i.ji ; 3 uses
  %i.jl = fmul float %.sroa.5138.12.vec.extract, %i.jk ; 2 uses
  %i.jm = fmul float %.sroa.5138.12.vec.extract, %i.jj ; 2 uses
  %i.jn = fmul float %.sroa.0137.4.vec.extract, %i.jk ; 2 uses
  %i.jo = fmul float %.sroa.0137.0.vec.extract, %i.ji ; 2 uses
  %i.jp = fmul float %.sroa.0137.0.vec.extract, %i.jo ; 2 uses
  %i.jq = fmul float %.sroa.0137.0.vec.extract, %i.jj ; 2 uses
  %i.jr = fmul float %.sroa.0137.0.vec.extract, %i.jk ; 2 uses
  %i.js = fmul float %.sroa.0137.4.vec.extract, %i.jj ; 2 uses
  %i.jt = fmul float %.sroa.5138.8.vec.extract, %i.jj ; 2 uses
  %i.ju = fadd float %i.jn, %i.jt
  %i.jv = fsub float 1.000000e+00, %i.ju          ; 2 uses
  %i.jw = fadd float %i.jq, %i.jl
  %i.jx = fsub float %i.jr, %i.jm
  %i.jy = fadd float %i.jr, %i.jm                 ; 2 uses
  %i.jz = fadd float %i.jp, %i.jt
  %i.ka = fadd float %i.jp, %i.jn
  %i.kb = fmul float %.sroa.5138.12.vec.extract, %i.jo ; 2 uses
  %i.kc = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.js, i64 1
  %i.kd = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %i.kb, i64 1
  %i.kf = fsub <2 x float> %i.kc, %i.ke           ; 3 uses
  %i.kg = fsub float %i.jq, %i.jl                 ; 2 uses
  %i.kh = fsub float 1.000000e+00, %i.ka
  %i.ki = fadd float %i.js, %i.kb
  %i.kj = fmul float %.sroa.11182.16.copyload, %i.jy
  %i.kk = call float @llvm.fmuladd.f32(float %i.jv, float %.sroa.0171.0.copyload, float %i.kj)
  %i.kl = call noundef float @llvm.fmuladd.f32(float %i.kg, float %.sroa.20191.32.copyload, float %i.kk)
  %i.km = fmul <2 x float> %i.it, %i.kf
  %i.kn = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.ko = insertelement <2 x float> %i.kn, float %i.jw, i64 1 ; 3 uses
  %i.kp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.iv, <2 x float> %i.km)
  %i.kq = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.kr = insertelement <2 x float> %i.kq, float %i.kh, i64 1 ; 3 uses
  %i.ks = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.ix, <2 x float> %i.kp)
  %i.kt = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.iz, %i.ku
  %i.kw = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.gw, <2 x float> %i.kv)
  %i.kz = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x float> %i.kz, %i.kf
  %i.lb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.iy, <2 x float> %i.la)
  %i.lc = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.lc, <2 x float> %i.lb)
  %i.le = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lf, <2 x float> %i.ja, <2 x float> %i.ky)
  %i.lh = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.li = fmul <2 x float> %i.lh, %i.kf
  %i.lj = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.lj, <2 x float> %i.li)
  %i.ll = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.ll, <2 x float> %i.lk)
  br label %.preheader

bb.g:                                             ; preds = %bb.e
  %.sroa.24.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  %.sroa.15184.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ln = load <2 x float>, ptr %.sroa.24.32..sroa_idx, align 4
  %i.lo = load <2 x float>, ptr %.sroa.15184.16..sroa_idx, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !76 ; 2 uses
  %.not63 = icmp eq ptr %i.lq, null
  %i.lr = insertelement <2 x float> poison, float %.sroa.11182.16.copyload, i64 0
  %i.ls = insertelement <2 x float> %i.lr, float %.sroa.20191.32.copyload, i64 1
  br i1 %.not63, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !77
  %i.lv = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.lq, i32 noundef %i.lu, ptr noundef nonnull align 4 dereferenceable(16) %i.gu) ; 2 uses
  %i.lw = extractvalue { <2 x float>, <2 x float> } %i.lv, 0
  %i.lx = extractvalue { <2 x float>, <2 x float> } %i.lv, 1
  store <2 x float> %i.lw, ptr %7, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.lx, ptr %.sroa.435.0..sroa_idx, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ly = load ptr, ptr %i.lp, align 8, !tbaa !76
  %i.lz = load i32, ptr %i.lt, align 4, !tbaa !77
  call void @_ZNK11btMultiBody17localFrameToWorldEiRK11btMatrix3x3(ptr dead_on_unwind nonnull writable sret(%class.btMatrix3x3) align 4 %8, ptr noundef nonnull align 8 dereferenceable(640) %i.ly, i32 noundef %i.lz, ptr noundef nonnull align 4 dereferenceable(48) %i.gv)
  %.sroa.0171.0.copyload172 = load float, ptr %8, align 4
  %.sroa.6173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mb = load <4 x float>, ptr %i.ma, align 4
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.15184.16..sroa_idx185 = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.md = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.20191.32.copyload192 = load float, ptr %i.md, align 4
  %.sroa.24.32..sroa_idx193 = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.me = load <2 x float>, ptr %.sroa.6173.0..sroa_idx174, align 4
  %i.mf = load <2 x float>, ptr %.sroa.15184.16..sroa_idx185, align 4
  %i.mg = load <2 x float>, ptr %.sroa.24.32..sroa_idx193, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.mh = insertelement <2 x float> %i.mc, float %.sroa.20191.32.copyload192, i64 1
  br label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0171.0 = phi float [ %.sroa.0171.0.copyload, %bb.g ], [ %.sroa.0171.0.copyload172, %bb.h ], [ %i.kl, %bb.f ] ; 2 uses
  %i.mi = phi <2 x float> [ %i.ln, %bb.g ], [ %i.mg, %bb.h ], [ %i.lm, %bb.f ] ; 3 uses
  %i.mj = phi <2 x float> [ %i.gw, %bb.g ], [ %i.me, %bb.h ], [ %i.ks, %bb.f ] ; 3 uses
  %i.mk = phi <2 x float> [ %i.lo, %bb.g ], [ %i.mf, %bb.h ], [ %i.ld, %bb.f ] ; 3 uses
  %i.ml = phi <2 x float> [ %i.ls, %bb.g ], [ %i.mh, %bb.h ], [ %i.lg, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %.sroa.9244.8.vec.extract = extractelement <2 x float> %.sroa.9244.0, i64 0 ; 4 uses
  %.sroa.0239.4.vec.extract = extractelement <2 x float> %.sroa.0239.0, i64 1 ; 5 uses
  %i.mm = fneg float %.sroa.0239.4.vec.extract    ; 3 uses
  %.sroa.0239.0.vec.extract = extractelement <2 x float> %.sroa.0239.0, i64 0 ; 5 uses
  %i.mn = fneg float %.sroa.9244.8.vec.extract    ; 3 uses
  %i.mo = fneg float %.sroa.0239.0.vec.extract    ; 3 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.mp = load float, ptr %5, align 16, !tbaa !30 ; 7 uses
  %i.mq = load float, ptr %i.d, align 16, !tbaa !30 ; 5 uses
  %14 = fmul float %i.mp, %i.mn
  %i.mr = fmul float %i.mq, %i.mo
  %i.ms = call float @llvm.fmuladd.f32(float %i.mp, float %.sroa.0239.4.vec.extract, float %i.mr) ; 3 uses
  %.sroa.3.12.vec.insert.i77 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ms, i64 0 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i77, ptr %.sroa.430.0..sroa_idx, align 8, !tbaa !26
  %.phi.trans.insert258.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 36
  %15 = load <2 x float>, ptr %i.f, align 16, !tbaa !30 ; 2 uses
  %.pre259.pre = load float, ptr %.phi.trans.insert258.phi.trans.insert, align 4, !tbaa !30 ; 3 uses
  %16 = extractelement <2 x float> %15, i64 0     ; 3 uses
  %i.mt = fmul float %16, %i.mm
  %17 = call float @llvm.fmuladd.f32(float %i.mq, float %.sroa.9244.8.vec.extract, float %i.mt) ; 3 uses
  %i.mu = call float @llvm.fmuladd.f32(float %16, float %.sroa.0239.0.vec.extract, float %14) ; 3 uses
  %i.mv = fmul float %i.mu, %i.mu
  %i.mw = call float @llvm.fmuladd.f32(float %17, float %17, float %i.mv)
  %i.mx = call noundef float @llvm.fmuladd.f32(float %i.ms, float %i.ms, float %i.mw) ; 2 uses
  %i.my = fcmp ogt float %i.mx, f0x34000000
  %sqrt.i = call float @llvm.sqrt.f32(float %i.mx)
  %.0.i = select i1 %i.my, float %sqrt.i, float 0.000000e+00
  %i.mz = fpext float %.0.i to double
  %i.na = fcmp ogt double %i.mz, f0x3EB0C6F7A0B5ED8D
  br i1 %i.na, label %.preheader._crit_edge, label %bb.i

.preheader._crit_edge:                            ; preds = %.preheader
  %.sroa.0.0.vec.insert.i75 = insertelement <2 x float> poison, float %17, i64 0
  %.sroa.0.4.vec.insert.i76 = insertelement <2 x float> %.sroa.0.0.vec.insert.i75, float %i.mu, i64 1
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.pre.pre.a = load float, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !30, !noalias !84
  %.phi.trans.insert260.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre261.pre = load float, ptr %.phi.trans.insert260.phi.trans.insert, align 4, !tbaa !30, !noalias !84
  br label %bb.k

bb.i:                                             ; preds = %.preheader
  %i.nb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.nd = load float, ptr %i.nb, align 4, !tbaa !30 ; 5 uses
  %i.ne = load float, ptr %i.nc, align 4, !tbaa !30 ; 5 uses
  %i.nf = fmul float %.pre259.pre, %i.mm
  %i.ng = call float @llvm.fmuladd.f32(float %i.ne, float %.sroa.9244.8.vec.extract, float %i.nf) ; 3 uses
  %i.nh = fmul float %i.nd, %i.mn
  %i.ni = call float @llvm.fmuladd.f32(float %.pre259.pre, float %.sroa.0239.0.vec.extract, float %i.nh) ; 3 uses
  %i.nj = fmul float %i.ne, %i.mo
  %i.nk = call float @llvm.fmuladd.f32(float %i.nd, float %.sroa.0239.4.vec.extract, float %i.nj) ; 3 uses
  %.sroa.0.0.vec.insert.i75.1 = insertelement <2 x float> poison, float %i.ng, i64 0
  %.sroa.0.4.vec.insert.i76.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i75.1, float %i.ni, i64 1
  %.sroa.3.12.vec.insert.i77.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nk, i64 0 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i77.1, ptr %.sroa.430.0..sroa_idx, align 8, !tbaa !26
  %i.nl = fmul float %i.ni, %i.ni
  %i.nm = call float @llvm.fmuladd.f32(float %i.ng, float %i.ng, float %i.nl)
  %i.nn = call noundef float @llvm.fmuladd.f32(float %i.nk, float %i.nk, float %i.nm) ; 2 uses
  %i.no = fcmp ogt float %i.nn, f0x34000000
  %sqrt.i.1 = call float @llvm.sqrt.f32(float %i.nn)
  %.0.i.1 = select i1 %i.no, float %sqrt.i.1, float 0.000000e+00
  %i.np = fpext float %.0.i.1 to double
  %i.nq = fcmp ogt double %i.np, f0x3EB0C6F7A0B5ED8D
  br i1 %i.nq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.nr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.nu = load float, ptr %i.nr, align 8, !tbaa !30 ; 3 uses
  %i.nv = load float, ptr %i.ns, align 8, !tbaa !30 ; 3 uses
  %i.nw = load float, ptr %i.nt, align 8, !tbaa !30 ; 3 uses
  %i.nx = fmul float %i.nw, %i.mm
  %i.ny = call float @llvm.fmuladd.f32(float %i.nv, float %.sroa.9244.8.vec.extract, float %i.nx) ; 3 uses
  %i.nz = fmul float %i.nu, %i.mn
  %i.oa = call float @llvm.fmuladd.f32(float %i.nw, float %.sroa.0239.0.vec.extract, float %i.nz) ; 3 uses
  %i.ob = fmul float %i.nv, %i.mo
  %i.oc = call float @llvm.fmuladd.f32(float %i.nu, float %.sroa.0239.4.vec.extract, float %i.ob) ; 3 uses
  %.sroa.0.0.vec.insert.i75.2 = insertelement <2 x float> poison, float %i.ny, i64 0
  %.sroa.0.4.vec.insert.i76.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i75.2, float %i.oa, i64 1 ; 2 uses
  %.sroa.3.12.vec.insert.i77.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oc, i64 0 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i76.2, ptr %9, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i77.2, ptr %.sroa.430.0..sroa_idx, align 8, !tbaa !26
  %i.od = fmul float %i.oa, %i.oa
  %i.oe = call float @llvm.fmuladd.f32(float %i.ny, float %i.ny, float %i.od)
  %i.of = call noundef float @llvm.fmuladd.f32(float %i.oc, float %i.oc, float %i.oe) ; 2 uses
  %i.og = fcmp ogt float %i.of, f0x34000000
  %sqrt.i.2 = call float @llvm.sqrt.f32(float %i.of)
  %.0.i.2 = select i1 %i.og, float %sqrt.i.2, float 0.000000e+00
  %i.oh = fpext float %.0.i.2 to double
  %i.oi = fcmp ogt double %i.oh, f0x3EB0C6F7A0B5ED8D
  br i1 %i.oi, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.preheader._crit_edge, %bb.j, %bb.i
  %.pre261 = phi float [ %i.nd, %bb.j ], [ %i.nd, %bb.i ], [ %.pre261.pre, %.preheader._crit_edge ]
  %.pre.a = phi float [ %i.ne, %bb.j ], [ %i.ne, %bb.i ], [ %.pre.pre.a, %.preheader._crit_edge ]
  %.sroa.8.0.copyload.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i77.2, %bb.j ], [ %.sroa.3.12.vec.insert.i77.1, %bb.i ], [ %.sroa.3.12.vec.insert.i77, %.preheader._crit_edge ]
  %.sroa.0.0.copyload3.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i76.2, %bb.j ], [ %.sroa.0.4.vec.insert.i76.1, %bb.i ], [ %.sroa.0.4.vec.insert.i76, %.preheader._crit_edge ] ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.oj = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.ok = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.oj)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.ol = call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.ok)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.ol)
  %i.om = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.on = fmul float %.sroa.0.0.vec.extract.i, %i.om ; 3 uses
  %.sroa.0.0.vec.insert.i80.a = insertelement <2 x float> poison, float %i.on, i64 0
  %19 = fmul float %.sroa.8.8.vec.extract.i, %i.om ; 3 uses
  %i.oo = fmul float %.sroa.0.4.vec.extract.i, %i.om ; 3 uses
  %.sroa.0.4.vec.insert.i81 = insertelement <2 x float> %.sroa.0.0.vec.insert.i80.a, float %i.oo, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i81, ptr %9, align 16
  store float %19, ptr %.sroa.430.0..sroa_idx, align 8, !tbaa !26
  %20 = insertelement <2 x float> poison, float %i.oo, i64 0
  %21 = insertelement <2 x float> %20, float %19, i64 1
  %22 = fneg <2 x float> %21
  %23 = shufflevector <2 x float> %.sroa.9244.0, <2 x float> %.sroa.0239.0, <2 x i32> <i32 0, i32 2>
  %24 = fmul <2 x float> %23, %22
  %25 = shufflevector <2 x float> %.sroa.0239.0, <2 x float> %.sroa.9244.0, <2 x i32> <i32 1, i32 2>
  %26 = insertelement <2 x float> poison, float %19, i64 0
  %27 = insertelement <2 x float> %26, float %i.on, i64 1
  %28 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %27, <2 x float> %24) ; 4 uses
  %i.op = fneg float %i.on
  %i.oq = fmul float %.sroa.0239.4.vec.extract, %i.op
  %i.or = call float @llvm.fmuladd.f32(float %.sroa.0239.0.vec.extract, float %i.oo, float %i.oq) ; 3 uses
  %foldExtExtBinop284 = fmul <2 x float> %28, %28
  %29 = extractelement <2 x float> %foldExtExtBinop284, i64 1
  %30 = extractelement <2 x float> %28, i64 0     ; 2 uses
  %i.os = call float @llvm.fmuladd.f32(float %30, float %30, float %29)
  %i.ot = call noundef float @llvm.fmuladd.f32(float %i.or, float %i.or, float %i.os)
  %sqrt.i.i.i95 = call noundef float @llvm.sqrt.f32(float %i.ot)
  %i.ou = fdiv float 1.000000e+00, %sqrt.i.i.i95  ; 2 uses
  %i.ov = insertelement <2 x float> poison, float %i.ou, i64 0
  %31 = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x float> %28, %31
  %i.ow = fmul float %i.or, %i.ou
  %.sroa.8.8.vec.insert.i98 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ow, i64 0
  store <2 x float> %32, ptr %18, align 16
  store <2 x float> %.sroa.8.8.vec.insert.i98, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !26
  %.phi.trans.insert254 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre255 = load float, ptr %.phi.trans.insert254, align 8, !tbaa !30, !noalias !84
  %.phi.trans.insert256 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.pre257 = load float, ptr %.phi.trans.insert256, align 8, !tbaa !30, !noalias !84
  %.phi.trans.insert262 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre263 = load float, ptr %.phi.trans.insert262, align 8, !tbaa !30, !noalias !84
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.k
  %i.ox = phi float [ %.pre263, %bb.k ], [ %i.nu, %bb.j ] ; 5 uses
  %i.oy = phi float [ %.pre261, %bb.k ], [ %i.nd, %bb.j ] ; 5 uses
  %i.oz = phi float [ %.pre257, %bb.k ], [ %i.nv, %bb.j ] ; 4 uses
  %i.pa = phi float [ %.pre255, %bb.k ], [ %i.nw, %bb.j ] ; 2 uses
  %i.pb = phi float [ %.pre.a, %bb.k ], [ %i.ne, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %33 = insertelement <4 x float> poison, float %.pre259.pre, i64 0
  %34 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <4 x float> %33, <4 x float> %34, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison> ; 2 uses
  %i.pc = insertelement <4 x float> %35, float %i.pa, i64 2 ; 2 uses
  %i.pd = fneg <4 x float> %i.pc                  ; 3 uses
  %36 = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.pe = insertelement <4 x float> poison, float %i.oz, i64 0
  %37 = insertelement <4 x float> %i.pe, float %i.pb, i64 1
  %i.pf = insertelement <4 x float> %37, float %i.mq, i64 2 ; 2 uses
  %i.pg = insertelement <4 x float> %i.pf, float %i.oy, i64 3
  %i.ph = fmul <4 x float> %i.pg, %36
  %38 = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.pi = insertelement <4 x float> %38, float %i.oz, i64 2
  %i.pj = insertelement <4 x float> %i.pi, float %i.ox, i64 3
  %39 = shufflevector <4 x float> %i.pf, <4 x float> %35, <4 x i32> <i32 1, i32 2, i32 5, i32 4>
  %i.pk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pj, <4 x float> %39, <4 x float> %i.ph) ; 4 uses
  %i.pl = extractelement <4 x float> %i.pk, i64 2 ; 2 uses
  %i.pm = fmul float %i.oy, %i.pl
  %i.pn = extractelement <4 x float> %i.pk, i64 0 ; 2 uses
  %i.po = call float @llvm.fmuladd.f32(float %i.mp, float %i.pn, float %i.pm)
  %i.pp = extractelement <4 x float> %i.pk, i64 1 ; 2 uses
  %i.pq = call noundef float @llvm.fmuladd.f32(float %i.ox, float %i.pp, float %i.po)
  %i.pr = fdiv float 1.000000e+00, %i.pq          ; 9 uses
  %i.ps = fmul float %i.pn, %i.pr                 ; 2 uses
  %i.pt = extractelement <4 x float> %i.pk, i64 3
  %i.pu = fmul float %i.pt, %i.pr                 ; 2 uses
  %i.pv = fneg float %i.pb
  %i.pw = fmul float %i.ox, %i.pv
  %i.px = call noundef float @llvm.fmuladd.f32(float %i.oy, float %i.oz, float %i.pw)
  %i.py = fmul float %i.px, %i.pr                 ; 2 uses
  %i.pz = fmul float %i.pl, %i.pr                 ; 2 uses
  %i.qa = extractelement <4 x float> %i.pd, i64 1
  %i.qb = fmul float %i.ox, %i.qa
  %i.qc = call noundef float @llvm.fmuladd.f32(float %i.mp, float %i.pa, float %i.qb)
  %i.qd = fmul float %i.qc, %i.pr                 ; 2 uses
  %i.qe = fneg float %i.oz
  %i.qf = fmul float %i.mp, %i.qe
  %i.qg = call noundef float @llvm.fmuladd.f32(float %i.ox, float %i.mq, float %i.qf)
  %i.qh = fmul float %i.qg, %i.pr                 ; 2 uses
  %i.qi = fmul float %i.pp, %i.pr                 ; 2 uses
  %i.qj = extractelement <4 x float> %i.pd, i64 0
  %i.qk = fmul float %i.mp, %i.qj
  %i.ql = call noundef float @llvm.fmuladd.f32(float %i.oy, float %16, float %i.qk)
  %i.qm = fmul float %i.ql, %i.pr                 ; 2 uses
  %i.qn = fneg float %i.mq
  %i.qo = fmul float %i.oy, %i.qn
  %i.qp = call noundef float @llvm.fmuladd.f32(float %i.mp, float %i.pb, float %i.qo)
  %i.qq = fmul float %i.qp, %i.pr                 ; 2 uses
  %i.qr = extractelement <2 x float> %i.ml, i64 0
  %i.qs = fmul float %i.qr, %i.pu
  %i.qt = call float @llvm.fmuladd.f32(float %.sroa.0171.0, float %i.ps, float %i.qs)
  %i.qu = extractelement <2 x float> %i.ml, i64 1
  %i.qv = call noundef float @llvm.fmuladd.f32(float %i.qu, float %i.py, float %i.qt)
  %i.qw = extractelement <2 x float> %i.mk, i64 1 ; 2 uses
  %i.qx = fmul float %i.qw, %i.qd
  %i.qy = extractelement <2 x float> %i.mj, i64 1 ; 2 uses
  %i.qz = call float @llvm.fmuladd.f32(float %i.qy, float %i.pz, float %i.qx)
  %i.ra = extractelement <2 x float> %i.mi, i64 1 ; 2 uses
  %i.rb = call noundef float @llvm.fmuladd.f32(float %i.ra, float %i.qh, float %i.qz)
  %i.rc = fmul float %i.qw, %i.qm
  %i.rd = call float @llvm.fmuladd.f32(float %i.qy, float %i.qi, float %i.rc)
  %i.re = call noundef float @llvm.fmuladd.f32(float %i.ra, float %i.qq, float %i.rd)
  store float %i.qv, ptr %10, align 4, !tbaa !30, !alias.scope !87
  %i.rf = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.rg = insertelement <2 x float> poison, float %i.pu, i64 0
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ri = fmul <2 x float> %i.mk, %i.rh
  %i.rj = insertelement <2 x float> poison, float %i.ps, i64 0
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> %i.rk, <2 x float> %i.ri)
  %i.rm = insertelement <2 x float> poison, float %i.py, i64 0
  %i.rn = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ro = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> %i.rn, <2 x float> %i.rl)
  store <2 x float> %i.ro, ptr %i.rf, align 4, !tbaa !30, !alias.scope !87
  %i.rp = getelementptr inbounds nuw i8, ptr %10, i64 12
  store float 0.000000e+00, ptr %i.rp, align 4, !tbaa !30, !alias.scope !87
  %i.rq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.rr = shufflevector <2 x float> %i.ml, <2 x float> %i.mk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.rs = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.rt = shufflevector <2 x float> %i.rs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ru = fmul <2 x float> %i.rr, %i.rt
  %i.rv = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.rw = insertelement <2 x float> %i.rv, float %.sroa.0171.0, i64 0 ; 2 uses
  %i.rx = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rw, <2 x float> %i.ry, <2 x float> %i.ru)
  %i.sa = shufflevector <2 x float> %i.ml, <2 x float> %i.mi, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.sb = insertelement <2 x float> poison, float %i.qh, i64 0
  %i.sc = shufflevector <2 x float> %i.sb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sa, <2 x float> %i.sc, <2 x float> %i.rz)
  store <2 x float> %i.sd, ptr %i.rq, align 4, !tbaa !30, !alias.scope !87
  %i.se = getelementptr inbounds nuw i8, ptr %10, i64 24
  store float %i.rb, ptr %i.se, align 4, !tbaa !30, !alias.scope !87
  %i.sf = getelementptr inbounds nuw i8, ptr %10, i64 28
  store float 0.000000e+00, ptr %i.sf, align 4, !tbaa !30, !alias.scope !87
  %i.sg = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.sh = insertelement <2 x float> poison, float %i.qm, i64 0
  %i.si = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sj = fmul <2 x float> %i.rr, %i.si
  %i.sk = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rw, <2 x float> %i.sl, <2 x float> %i.sj)
  %i.sn = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.so = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sa, <2 x float> %i.so, <2 x float> %i.sm)
  store <2 x float> %i.sp, ptr %i.sg, align 4, !tbaa !30, !alias.scope !87
  %i.sq = getelementptr inbounds nuw i8, ptr %10, i64 40
  store float %i.re, ptr %i.sq, align 4, !tbaa !30, !alias.scope !87
  %i.sr = getelementptr inbounds nuw i8, ptr %10, i64 44
  store float 0.000000e+00, ptr %i.sr, align 4, !tbaa !30, !alias.scope !87
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ss = call noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(16) %11) ; 0 uses
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.sy = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.td = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.m:                                             ; preds = %.loopexit, %bb.z
  %indvars.iv = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next, %bb.z ] ; 6 uses
  %i.te = load i32, ptr %i.st, align 4, !tbaa !90 ; 8 uses
  %i.tf = load i32, ptr %i.su, align 8, !tbaa !94
  %i.tg = icmp eq i32 %i.te, %i.tf
  br i1 %i.tg, label %bb.n, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.te, 0
  %i.th = shl nsw i32 %i.te, 1
  %i.ti = select i1 %.not.i.i, i32 1, i32 %i.th   ; 4 uses
  %i.tj = icmp slt i32 %i.te, %i.ti
  br i1 %i.tj, label %bb.o, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq i32 %i.ti, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.tk = sext i32 %i.ti to i64
  %i.tl = mul nsw i64 %i.tk, 224
  %i.tm = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.tl, i32 noundef 16)
  %.pre.i = load i32, ptr %i.st, align 4, !tbaa !90
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.p, %bb.o
  %i.tn = phi i32 [ %.pre.i, %bb.p ], [ %i.te, %bb.o ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.tm, %bb.p ], [ null, %bb.o ] ; 4 uses
  %i.to = icmp sgt i32 %i.tn, 0
  br i1 %i.to, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.tn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.tp = icmp eq i32 %i.tn, 1
  br i1 %i.tp, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.q ]
  %i.tq = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.tr = load ptr, ptr %i.sv, align 8, !tbaa !95
  %i.ts = getelementptr inbounds nuw [224 x i8], ptr %i.tr, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.tq, ptr noundef nonnull align 8 dereferenceable(224) %i.ts, i64 224, i1 false), !tbaa.struct !96
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.tt = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.tu = load ptr, ptr %i.sv, align 8, !tbaa !95
  %i.tv = getelementptr inbounds nuw [224 x i8], ptr %i.tu, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.tt, ptr noundef nonnull align 8 dereferenceable(224) %i.tv, i64 224, i1 false), !tbaa.struct !96
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !101

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod286 = trunc i32 %i.tn to i1
  call void @llvm.assume(i1 %lcmp.mod286)
  %i.tw = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.tx = load ptr, ptr %i.sv, align 8, !tbaa !95
  %i.ty = getelementptr inbounds nuw [224 x i8], ptr %i.tx, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.tw, ptr noundef nonnull align 8 dereferenceable(224) %i.ty, i64 224, i1 false), !tbaa.struct !96
  br label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %i.tz = load ptr, ptr %i.sv, align 8, !tbaa !95 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.tz, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ua = load i8, ptr %i.sw, align 8, !tbaa !102, !range !39, !noundef !40
  %i.ub = trunc nuw i8 %i.ua to i1
  br i1 %i.ub, label %bb.s, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.tz)
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.s, %bb.r, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.sw, align 8, !tbaa !102
  store ptr %.0.i.i.i, ptr %i.sv, align 8, !tbaa !95
  store i32 %i.ti, ptr %i.su, align 8, !tbaa !94
  %.pre2.i = load i32, ptr %i.st, align 4, !tbaa !90
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.m, %bb.n, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i
  %i.uc = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i ], [ %i.te, %bb.n ], [ %i.te, %bb.m ]
  %i.ud = add nsw i32 %i.uc, 1
  store i32 %i.ud, ptr %i.st, align 4, !tbaa !90
  %i.ue = load ptr, ptr %i.sv, align 8, !tbaa !95
  %i.uf = sext i32 %i.te to i64
  %i.ug = getelementptr inbounds [224 x i8], ptr %i.ue, i64 %i.uf ; 7 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 208
  store ptr %0, ptr %i.uh, align 8, !tbaa !103
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 216
  %i.uj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.uj, ptr %i.ui, align 8, !tbaa !105
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.uk, i8 0, i64 96, i1 false)
  %i.ul = load i32, ptr %i.sx, align 8, !tbaa !106 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ug, i64 168 ; 2 uses
end_hunk_0
