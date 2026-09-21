Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3:bb.a
  %i.dy = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x float> %i.dq, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ea = shufflevector <2 x float> %i.dj, <2 x float> %i.ds, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.eb = insertelement <4 x float> %i.ea, float 1.000000e+00, i64 3 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.di, <2 x float> %i.dr, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ed = insertelement <4 x float> %i.ec, float 0.000000e+00, i64 3 ; 2 uses
  %i.ee = shufflevector <2 x float> %i.dk, <2 x float> %i.dt, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ef = insertelement <4 x float> %i.ee, float 0.000000e+00, i64 3 ; 2 uses
  %.sroa.16780.48.copyload = load float, ptr %.sroa.16780.48..sroa_idx, align 4 ; 2 uses
  %.sroa.14779.48.copyload = load float, ptr %i.df, align 8 ; 2 uses
  %.sroa.17781.48.copyload = load float, ptr %.sroa.17781.48..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.eg = load <2 x float>, ptr %1, align 4, !tbaa !9, !noalias !225 ; 3 uses
  %i.eh = load <2 x float>, ptr %i.f, align 4, !tbaa !9, !noalias !225 ; 3 uses
  %i.ei = shufflevector <2 x float> %i.eg, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ej = fmul <4 x float> %i.dv, %i.ei
  %i.ek = shufflevector <2 x float> %i.eg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.ek, <4 x float> %i.ej)
  %i.em = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.en, <4 x float> %i.el)
  %i.ep = load <2 x float>, ptr %i.i, align 4, !tbaa !9, !noalias !225 ; 3 uses
  %i.eq = load <2 x float>, ptr %i.j, align 4, !tbaa !9, !noalias !225 ; 3 uses
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.es = fmul <4 x float> %i.er, %i.eb
  %i.et = shufflevector <2 x float> %i.ep, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.et, <4 x float> %i.es)
  %i.ev = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.ew, <4 x float> %i.eu)
  %i.ey = load float, ptr %i.r, align 4, !tbaa !9, !noalias !225 ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %.sroa.16780.48.copyload, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = shufflevector <2 x float> %i.eh, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.fc = fmul <2 x float> %i.fa, %i.fb
  %i.fd = shufflevector <2 x float> %i.eg, <2 x float> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.fe = insertelement <2 x float> poison, float %.sroa.14779.48.copyload, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ff, <2 x float> %i.fc)
  %i.fh = shufflevector <2 x float> %i.eh, <2 x float> %i.eq, <2 x i32> <i32 1, i32 3>
  %i.fi = insertelement <2 x float> poison, float %.sroa.17781.48.copyload, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fj, <2 x float> %i.fg)
  %i.fl = load <2 x float>, ptr %i.a, align 4, !tbaa !9, !noalias !224
  %i.fm = fadd <2 x float> %i.fk, %i.fl
  %i.fn = load float, ptr %i.cw, align 4, !tbaa !9, !noalias !224
  store <4 x float> %i.eo, ptr %11, align 16, !alias.scope !224
  store <4 x float> %i.ex, ptr %i.cx, align 16, !alias.scope !224
  %i.fo = load <2 x float>, ptr %i.m, align 4, !tbaa !9, !noalias !225 ; 4 uses
  %i.fp = load float, ptr %i.n, align 4, !tbaa !9, !noalias !225
  %i.fq = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.fr = insertelement <4 x float> %i.fq, float 0.000000e+00, i64 3
  %i.fs = insertelement <4 x float> %i.fr, float %.sroa.9.16.copyload, i64 2
  %i.ft = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fu = shufflevector <4 x float> %i.eb, <4 x float> %i.ft, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fv = fmul <4 x float> %i.fs, %i.fu
  %i.fw = insertelement <4 x float> %i.ed, float %.sroa.5770.0.copyload, i64 2
  %i.fx = shufflevector <2 x float> %i.fo, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fx, <4 x float> %i.fv)
  %i.fz = insertelement <4 x float> %i.ef, float %.sroa.13777.32.copyload, i64 2
  %i.ga = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ey, i64 0
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.gb, <4 x float> %i.fy)
  %i.gd = fmul float %.sroa.16780.48.copyload, %i.fp
  %i.ge = extractelement <2 x float> %i.fo, i64 0
  %i.gf = call float @llvm.fmuladd.f32(float %i.ge, float %.sroa.14779.48.copyload, float %i.gd)
  %i.gg = call noundef float @llvm.fmuladd.f32(float %i.ey, float %.sroa.17781.48.copyload, float %i.gf)
  %i.gh = fadd float %i.gg, %i.fn
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gh, i64 0
  store <4 x float> %i.gc, ptr %i.cy, align 16, !alias.scope !224
  store <2 x float> %i.fm, ptr %i.cz, align 16, !alias.scope !224
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !76, !alias.scope !224
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull align 4 dereferenceable(64) %11, ptr noundef %i.dh, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.gi = icmp samesign ugt i64 %indvars.iv828, 1
  br i1 %i.gi, label %bb.c, label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.gj = load ptr, ptr %2, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 88
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef float %i.gl(ptr noundef nonnull align 8 dereferenceable(64) %2)
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.gm, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !229 ; 2 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.sroa.4.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.gw = zext nneg i32 %i.go to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.gw, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.gx = load ptr, ptr %i.gq, align 8, !tbaa !230
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %indvars.iv.next ; 3 uses
  %.sroa.19767.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.gz = load ptr, ptr %i.gr, align 8, !tbaa !234
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.hc = load float, ptr %i.g, align 4, !tbaa !9, !noalias !236 ; 3 uses
  %i.hd = load float, ptr %i.k, align 4, !tbaa !9, !noalias !236 ; 3 uses
  %i.he = load float, ptr %i.r, align 4, !tbaa !9, !noalias !236 ; 3 uses
  %.sroa.19767.48.copyload = load float, ptr %.sroa.19767.48..sroa_idx, align 4 ; 2 uses
  %.sroa.17.48.copyload = load float, ptr %i.gy, align 4 ; 2 uses
  %.sroa.20.48.copyload = load float, ptr %.sroa.20.48..sroa_idx, align 4 ; 2 uses
  %i.hf = load <2 x float>, ptr %1, align 4, !tbaa !9, !noalias !236 ; 4 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 0
  %i.hh = load <2 x float>, ptr %i.m, align 4, !tbaa !9, !noalias !236 ; 3 uses
  %i.hi = load float, ptr %i.n, align 4, !tbaa !9, !noalias !236
  %i.hj = load float, ptr %i.f, align 4, !tbaa !9, !noalias !236
  %i.hk = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hl = insertelement <2 x float> %i.hk, float %i.hj, i64 1
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.hm, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ho = extractelement <4 x float> %i.hn, i64 2
  %i.hp = extractelement <2 x float> %i.hh, i64 0 ; 2 uses
  %i.hq = fadd float %i.hp, %i.ho
  %i.hr = extractelement <4 x float> %i.hn, i64 3
  %i.hs = fadd float %i.hg, %i.hr
  %i.ht = shufflevector <2 x float> %i.hh, <2 x float> %i.hf, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.hu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> zeroinitializer, <4 x float> %i.hn) ; 4 uses
  %i.hv = load <2 x float>, ptr %i.i, align 4, !tbaa !9, !noalias !236 ; 3 uses
  %i.hw = load float, ptr %i.j, align 4, !tbaa !9, !noalias !236 ; 2 uses
  %i.hx = fmul float %i.hw, 0.000000e+00          ; 2 uses
  %i.hy = extractelement <2 x float> %i.hv, i64 0 ; 3 uses
  %i.hz = fadd float %i.hy, %i.hx
  %i.ia = call float @llvm.fmuladd.f32(float %i.hy, float 0.000000e+00, float %i.hw)
  %i.ib = call float @llvm.fmuladd.f32(float %i.hy, float 0.000000e+00, float %i.hx)
  %i.ic = insertelement <2 x float> poison, float %.sroa.19767.48.copyload, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = shufflevector <2 x float> %i.hf, <2 x float> %i.hv, <2 x i32> <i32 1, i32 3>
  %i.if = fmul <2 x float> %i.id, %i.ie
  %i.ig = shufflevector <2 x float> %i.hf, <2 x float> %i.hv, <2 x i32> <i32 0, i32 2>
  %i.ih = insertelement <2 x float> poison, float %.sroa.17.48.copyload, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> %i.ii, <2 x float> %i.if)
  %i.ik = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.hd, i64 1
  %i.im = insertelement <2 x float> poison, float %.sroa.20.48.copyload, i64 0
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.in, <2 x float> %i.ij)
  %i.ip = load <2 x float>, ptr %i.a, align 4, !tbaa !9, !noalias !235
  %i.iq = fadd <2 x float> %i.io, %i.ip
  %i.ir = fmul float %.sroa.19767.48.copyload, %i.hi
  %i.is = call float @llvm.fmuladd.f32(float %i.hp, float %.sroa.17.48.copyload, float %i.ir)
  %i.it = call noundef float @llvm.fmuladd.f32(float %i.he, float %.sroa.20.48.copyload, float %i.is)
  %i.iu = load float, ptr %i.gs, align 4, !tbaa !9, !noalias !235
  %i.iv = fadd float %i.it, %i.iu
  %.sroa.3.12.vec.insert.i.i185 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iv, i64 0
  %i.iw = extractelement <4 x float> %i.hu, i64 3
  %i.ix = fadd float %i.hc, %i.iw
  %i.iy = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.hc, i64 0
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ja = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hs, i64 0
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> %i.hu, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.jc = insertelement <4 x float> %i.jb, float %i.ix, i64 2
  %i.jd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> zeroinitializer, <4 x float> %i.jc)
  store <4 x float> %i.jd, ptr %12, align 16, !alias.scope !235
  %i.je = fadd float %i.hd, %i.ib
  %i.jf = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.hd, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hz, i64 0
  %i.ji = insertelement <4 x float> %i.jh, float %i.ia, i64 1
  %i.jj = insertelement <4 x float> %i.ji, float %i.je, i64 2
  %i.jk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> zeroinitializer, <4 x float> %i.jj)
  store <4 x float> %i.jk, ptr %i.gt, align 16, !alias.scope !235
  %i.jl = extractelement <4 x float> %i.hu, i64 2
  %i.jm = fadd float %i.he, %i.jl
  %i.jn = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.he, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hq, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> %i.hu, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.jr = insertelement <4 x float> %i.jq, float %i.jm, i64 2
  %i.js = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jo, <4 x float> zeroinitializer, <4 x float> %i.jr)
  store <4 x float> %i.js, ptr %i.gu, align 16, !alias.scope !235
  store <2 x float> %i.iq, ptr %i.gv, align 16, !alias.scope !235
  store <2 x float> %.sroa.3.12.vec.insert.i.i185, ptr %.sroa.4.0..sroa_idx.i195, align 8, !tbaa !76, !alias.scope !235
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.hb, ptr noundef nonnull align 4 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.jt = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.jt, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !238 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.jx = sext i32 %i.jv to i64                   ; 3 uses
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ka = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.kc = fneg float %i.jz
  %i.kd = getelementptr inbounds [4 x i8], ptr %13, i64 %i.jx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store float %i.kc, ptr %i.kd, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %14, i64 %i.jx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store float %i.jz, ptr %i.kg, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %57 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %58 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %59 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 56
  %61 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %16, i64 32
  %62 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %16, i64 56
  %63 = insertelement <2 x i32> poison, i32 %i.jv, i64 0
  %64 = shufflevector <2 x i32> %63, <2 x i32> poison, <2 x i32> zeroinitializer
  %65 = add nsw <2 x i32> %64, <i32 2, i32 1>
  %66 = srem <2 x i32> %65, splat (i32 3)         ; 2 uses
  %67 = extractelement <2 x i32> %66, i64 0
  %68 = sext i32 %67 to i64                       ; 3 uses
  %69 = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !9    ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %57, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %58, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !88
  %i.kj = load float, ptr %i.g, align 4, !tbaa !9
  %i.kk = load float, ptr %i.k, align 4, !tbaa !9
  %i.kl = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.km = load float, ptr %i.ka, align 4, !tbaa !9 ; 2 uses
  %i.kn = load float, ptr %13, align 16, !tbaa !9 ; 2 uses
  %i.ko = load float, ptr %i.kb, align 8, !tbaa !9 ; 2 uses
  %i.kp = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.kq = insertelement <2 x float> poison, float %i.km, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = shufflevector <2 x float> %i.kl, <2 x float> %i.kp, <2 x i32> <i32 1, i32 3>
  %i.kt = fmul <2 x float> %i.kr, %i.ks
  %i.ku = shufflevector <2 x float> %i.kl, <2 x float> %i.kp, <2 x i32> <i32 0, i32 2>
  %i.kv = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %i.kw, <2 x float> %i.kt)
  %i.ky = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kz = insertelement <2 x float> %i.ky, float %i.kk, i64 1
  %i.la = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.lb, <2 x float> %i.kx)
  %i.ld = load <2 x float>, ptr %i.a, align 4, !tbaa !9
  %i.le = fadd <2 x float> %i.lc, %i.ld
  %i.lf = load float, ptr %i.m, align 4, !tbaa !9
  %i.lg = load float, ptr %i.n, align 4, !tbaa !9
  %i.lh = fmul float %i.km, %i.lg
  %i.li = call float @llvm.fmuladd.f32(float %i.lf, float %i.kn, float %i.lh)
  %i.lj = load float, ptr %i.r, align 4, !tbaa !9
  %i.lk = call noundef float @llvm.fmuladd.f32(float %i.lj, float %i.ko, float %i.li)
  %i.ll = load float, ptr %60, align 4, !tbaa !9
  %i.lm = fadd float %i.ll, %i.lk
  %.sroa.3.12.vec.insert.i.i198 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lm, i64 0
  store <2 x float> %i.le, ptr %59, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i198, ptr %.sroa.430.0..sroa_idx, align 4, !tbaa !76
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %70, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %61, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kh, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !88
  %i.ln = load float, ptr %i.g, align 4, !tbaa !9
  %i.lo = load float, ptr %i.k, align 4, !tbaa !9
  %i.lp = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.lq = load float, ptr %i.ke, align 4, !tbaa !9 ; 2 uses
  %i.lr = load float, ptr %14, align 8, !tbaa !9  ; 2 uses
  %i.ls = load float, ptr %i.kf, align 8, !tbaa !9 ; 2 uses
  %i.lt = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.lu = insertelement <2 x float> poison, float %i.lq, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = shufflevector <2 x float> %i.lp, <2 x float> %i.lt, <2 x i32> <i32 1, i32 3>
  %i.lx = fmul <2 x float> %i.lv, %i.lw
  %i.ly = shufflevector <2 x float> %i.lp, <2 x float> %i.lt, <2 x i32> <i32 0, i32 2>
  %i.lz = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ly, <2 x float> %i.ma, <2 x float> %i.lx)
  %i.mc = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.md = insertelement <2 x float> %i.mc, float %i.lo, i64 1
  %i.me = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.mf, <2 x float> %i.mb)
  %i.mh = load <2 x float>, ptr %i.a, align 4, !tbaa !9
  %i.mi = fadd <2 x float> %i.mg, %i.mh
  %i.mj = load float, ptr %i.m, align 4, !tbaa !9
  %i.mk = load float, ptr %i.n, align 4, !tbaa !9
  %i.ml = fmul float %i.lq, %i.mk
  %i.mm = call float @llvm.fmuladd.f32(float %i.mj, float %i.lr, float %i.ml)
  %i.mn = load float, ptr %i.r, align 4, !tbaa !9
  %i.mo = call noundef float @llvm.fmuladd.f32(float %i.mn, float %i.ls, float %i.mm)
  %i.mp = load float, ptr %60, align 4, !tbaa !9
  %i.mq = fadd float %i.mp, %i.mo
  %.sroa.3.12.vec.insert.i.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mq, i64 0
  store <2 x float> %i.mi, ptr %62, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i201, ptr %i.ki, align 4, !tbaa !76
  call void @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %70, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %.sroa.19744.0.copyload = load float, ptr %60, align 4 ; 7 uses
  %71 = extractelement <2 x i32> %66, i64 1
  %i.mr = sext i32 %71 to i64                     ; 2 uses
  %i.ms = getelementptr inbounds [4 x i8], ptr %13, i64 %i.mr ; 3 uses
  store float %70, ptr %i.ms, align 4, !tbaa !9
  %i.mt = getelementptr inbounds [4 x i8], ptr %14, i64 %i.mr ; 3 uses
  store float %70, ptr %i.mt, align 4, !tbaa !9
  %i.mu = load ptr, ptr %0, align 8, !tbaa !12
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = load <2 x float>, ptr %i.a, align 4     ; 8 uses
  %i.my = call noundef ptr %i.mw(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.mz = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.na = load float, ptr %i.ka, align 4, !tbaa !9 ; 2 uses
  %i.nb = load float, ptr %13, align 16, !tbaa !9 ; 2 uses
  %i.nc = load float, ptr %i.kb, align 8, !tbaa !9 ; 2 uses
  %i.nd = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.ne = insertelement <2 x float> poison, float %i.na, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = shufflevector <2 x float> %i.mz, <2 x float> %i.nd, <2 x i32> <i32 1, i32 3>
  %i.nh = fmul <2 x float> %i.nf, %i.ng
  %i.ni = shufflevector <2 x float> %i.mz, <2 x float> %i.nd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nj = insertelement <2 x float> poison, float %i.nb, i64 0
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.nk, <2 x float> %i.nh)
  %i.nm = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.nn = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.no = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.np = load float, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.nq = fmul float %i.na, %i.np
  %i.nr = call float @llvm.fmuladd.f32(float %i.no, float %i.nb, float %i.nq)
  %i.ns = load float, ptr %i.r, align 4, !tbaa !9 ; 2 uses
  %i.nt = call noundef float @llvm.fmuladd.f32(float %i.ns, float %i.nc, float %i.nr)
  %i.nu = fadd float %.sroa.19744.0.copyload, %i.nt
  %.sroa.3.12.vec.insert.i211 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nu, i64 0
  %i.nv = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i211, ptr %i.nv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.nw = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.nx = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.ny = shufflevector <2 x float> %i.nw, <2 x float> %i.nx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.nz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> %i.nn, <2 x float> %i.nl)
  %i.oa = fadd <2 x float> %i.mx, %i.nz
  store <2 x float> %i.oa, ptr %17, align 8
  %i.ob = load float, ptr %i.ke, align 4, !tbaa !9 ; 2 uses
  %i.oc = load float, ptr %14, align 8, !tbaa !9  ; 2 uses
  %i.od = load float, ptr %i.kf, align 8, !tbaa !9 ; 2 uses
  %i.oe = shufflevector <2 x float> %i.nw, <2 x float> %i.nx, <2 x i32> <i32 0, i32 2>
  %i.of = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oh = fmul <2 x float> %i.oe, %i.og
  %i.oi = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.oj, <2 x float> %i.oh)
  %i.ol = insertelement <2 x float> poison, float %i.od, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> %i.om, <2 x float> %i.ok)
  %i.oo = fmul float %i.np, %i.ob
  %i.op = call float @llvm.fmuladd.f32(float %i.no, float %i.oc, float %i.oo)
  %i.oq = call noundef float @llvm.fmuladd.f32(float %i.ns, float %i.od, float %i.op)
  %i.or = fadd <2 x float> %i.mx, %i.on
  %i.os = fadd float %.sroa.19744.0.copyload, %i.oq
  %.sroa.3.12.vec.insert.i221 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.os, i64 0
  store <2 x float> %i.or, ptr %18, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i221, ptr %i.ot, align 8
  %i.ou = load ptr, ptr %i.my, align 8, !tbaa !12
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.ox = fneg float %70                          ; 4 uses
  store float %i.ox, ptr %i.ms, align 4, !tbaa !9
  store float %i.ox, ptr %i.mt, align 4, !tbaa !9
  %i.oy = load ptr, ptr %0, align 8, !tbaa !12
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = call noundef ptr %i.pa(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.pc = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.pd = load float, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.pe = load float, ptr %i.r, align 4, !tbaa !9 ; 2 uses
  %i.pf = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.pg = load float, ptr %i.ka, align 4, !tbaa !9 ; 2 uses
  %i.ph = load float, ptr %13, align 16, !tbaa !9 ; 2 uses
  %i.pi = load float, ptr %i.kb, align 8, !tbaa !9 ; 2 uses
  %i.pj = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.pk = insertelement <2 x float> poison, float %i.pg, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = shufflevector <2 x float> %i.pf, <2 x float> %i.pj, <2 x i32> <i32 1, i32 3>
  %i.pn = fmul <2 x float> %i.pl, %i.pm
  %i.po = shufflevector <2 x float> %i.pf, <2 x float> %i.pj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.pp = insertelement <2 x float> poison, float %i.ph, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.pq, <2 x float> %i.pn)
  %i.ps = insertelement <2 x float> poison, float %i.pi, i64 0
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pu = fmul float %i.pg, %i.pd
  %i.pv = call float @llvm.fmuladd.f32(float %i.pc, float %i.ph, float %i.pu)
  %i.pw = call noundef float @llvm.fmuladd.f32(float %i.pe, float %i.pi, float %i.pv)
  %i.px = fadd float %.sroa.19744.0.copyload, %i.pw
  %.sroa.3.12.vec.insert.i231 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.px, i64 0
  %i.py = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i231, ptr %i.py, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.pz = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.qa = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.qb = shufflevector <2 x float> %i.pz, <2 x float> %i.qa, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qb, <2 x float> %i.pt, <2 x float> %i.pr)
  %i.qd = fadd <2 x float> %i.mx, %i.qc
  store <2 x float> %i.qd, ptr %19, align 8
  %i.qe = load float, ptr %i.ke, align 4, !tbaa !9 ; 2 uses
  %i.qf = load float, ptr %14, align 8, !tbaa !9  ; 2 uses
  %i.qg = load float, ptr %i.kf, align 8, !tbaa !9 ; 2 uses
  %i.qh = shufflevector <2 x float> %i.pz, <2 x float> %i.qa, <2 x i32> <i32 0, i32 2>
  %i.qi = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qk = fmul <2 x float> %i.qh, %i.qj
  %i.ql = insertelement <2 x float> poison, float %i.qf, i64 0
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.qm, <2 x float> %i.qk)
  %i.qo = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.qp = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qb, <2 x float> %i.qp, <2 x float> %i.qn)
  %i.qr = fmul float %i.pd, %i.qe
  %i.qs = call float @llvm.fmuladd.f32(float %i.pc, float %i.qf, float %i.qr)
  %i.qt = call noundef float @llvm.fmuladd.f32(float %i.pe, float %i.qg, float %i.qs)
  %i.qu = fadd <2 x float> %i.mx, %i.qq
  %i.qv = fadd float %.sroa.19744.0.copyload, %i.qt
  %.sroa.3.12.vec.insert.i241 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qv, i64 0
  store <2 x float> %i.qu, ptr %20, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i241, ptr %i.qw, align 8
  %i.qx = load ptr, ptr %i.pb, align 8, !tbaa !12
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 40
  %i.qz = load ptr, ptr %i.qy, align 8
  call void %i.qz(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  store float 0.000000e+00, ptr %i.ms, align 4, !tbaa !9
  store float 0.000000e+00, ptr %i.mt, align 4, !tbaa !9
  %i.ra = getelementptr inbounds [4 x i8], ptr %13, i64 %68 ; 2 uses
  store float %70, ptr %i.ra, align 4, !tbaa !9
  %i.rb = getelementptr inbounds [4 x i8], ptr %14, i64 %68 ; 2 uses
  store float %70, ptr %i.rb, align 4, !tbaa !9
  %i.rc = load ptr, ptr %0, align 8, !tbaa !12
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = call noundef ptr %i.re(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.rg = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.rh = load float, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.ri = load float, ptr %i.r, align 4, !tbaa !9 ; 2 uses
  %i.rj = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.rk = load float, ptr %i.ka, align 4, !tbaa !9 ; 2 uses
  %i.rl = load float, ptr %13, align 16, !tbaa !9 ; 2 uses
  %i.rm = load float, ptr %i.kb, align 8, !tbaa !9 ; 2 uses
  %i.rn = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.ro = insertelement <2 x float> poison, float %i.rk, i64 0
  %i.rp = shufflevector <2 x float> %i.ro, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rq = shufflevector <2 x float> %i.rj, <2 x float> %i.rn, <2 x i32> <i32 1, i32 3>
  %i.rr = fmul <2 x float> %i.rp, %i.rq
  %i.rs = shufflevector <2 x float> %i.rj, <2 x float> %i.rn, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.rt = insertelement <2 x float> poison, float %i.rl, i64 0
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rs, <2 x float> %i.ru, <2 x float> %i.rr)
  %i.rw = insertelement <2 x float> poison, float %i.rm, i64 0
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ry = fmul float %i.rk, %i.rh
  %i.rz = call float @llvm.fmuladd.f32(float %i.rg, float %i.rl, float %i.ry)
  %i.sa = call noundef float @llvm.fmuladd.f32(float %i.ri, float %i.rm, float %i.rz)
  %i.sb = fadd float %.sroa.19744.0.copyload, %i.sa
  %.sroa.3.12.vec.insert.i251 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sb, i64 0
  %i.sc = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i251, ptr %i.sc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.sd = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.se = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.sf = shufflevector <2 x float> %i.sd, <2 x float> %i.se, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.rx, <2 x float> %i.rv)
  %i.sh = fadd <2 x float> %i.mx, %i.sg
  store <2 x float> %i.sh, ptr %21, align 8
  %i.si = load float, ptr %i.ke, align 4, !tbaa !9 ; 2 uses
  %i.sj = load float, ptr %14, align 8, !tbaa !9  ; 2 uses
  %i.sk = load float, ptr %i.kf, align 8, !tbaa !9 ; 2 uses
  %i.sl = shufflevector <2 x float> %i.sd, <2 x float> %i.se, <2 x i32> <i32 0, i32 2>
  %i.sm = insertelement <2 x float> poison, float %i.si, i64 0
  %i.sn = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.so = fmul <2 x float> %i.sl, %i.sn
  %i.sp = insertelement <2 x float> poison, float %i.sj, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rs, <2 x float> %i.sq, <2 x float> %i.so)
  %i.ss = insertelement <2 x float> poison, float %i.sk, i64 0
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> zeroinitializer
  %i.su = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.st, <2 x float> %i.sr)
  %i.sv = fmul float %i.rh, %i.si
  %i.sw = call float @llvm.fmuladd.f32(float %i.rg, float %i.sj, float %i.sv)
  %i.sx = call noundef float @llvm.fmuladd.f32(float %i.ri, float %i.sk, float %i.sw)
  %i.sy = fadd <2 x float> %i.mx, %i.su
  %i.sz = fadd float %.sroa.19744.0.copyload, %i.sx
  %.sroa.3.12.vec.insert.i261 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sz, i64 0
  store <2 x float> %i.sy, ptr %22, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %22, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i261, ptr %i.ta, align 8
  %i.tb = load ptr, ptr %i.rf, align 8, !tbaa !12
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %i.td = load ptr, ptr %i.tc, align 8
  call void %i.td(ptr noundef nonnull align 8 dereferenceable(8) %i.rf, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  store float %i.ox, ptr %i.ra, align 4, !tbaa !9
  store float %i.ox, ptr %i.rb, align 4, !tbaa !9
  %i.te = load ptr, ptr %0, align 8, !tbaa !12
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tg = load ptr, ptr %i.tf, align 8
  %i.th = call noundef ptr %i.tg(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.ti = load float, ptr %i.m, align 4, !tbaa !9
  %i.tj = load float, ptr %i.n, align 4, !tbaa !9
  %i.tk = load float, ptr %i.r, align 4, !tbaa !9
  %i.tl = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.tm = load <4 x float>, ptr %13, align 16     ; 2 uses
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.to = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.tp = shufflevector <2 x float> %i.tl, <2 x float> %i.to, <2 x i32> <i32 1, i32 3>
  %i.tq = shufflevector <2 x float> %i.tl, <2 x float> %i.to, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tr = shufflevector <4 x float> %i.tm, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.tt = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.tu = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.tv = shufflevector <2 x float> %i.tt, <2 x float> %i.tu, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.tw = load float, ptr %i.kf, align 8, !tbaa !9 ; 2 uses
  %i.tx = shufflevector <2 x float> %i.tt, <2 x float> %i.tu, <2 x i32> <i32 0, i32 2>
  %i.ty = insertelement <2 x float> poison, float %i.tw, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ua = load <2 x float>, ptr %13, align 16, !tbaa !9 ; 4 uses
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uc = fmul <2 x float> %i.ub, %i.tp
  %i.ud = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ue = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tq, <2 x float> %i.ud, <2 x float> %i.uc)
  %i.uf = load <2 x float>, ptr %14, align 8, !tbaa !9 ; 4 uses
  %i.ug = insertelement <2 x float> poison, float %i.tj, i64 0
  %i.uh = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ui = shufflevector <2 x float> %i.ua, <2 x float> %i.uf, <2 x i32> <i32 1, i32 3>
  %i.uj = fmul <2 x float> %i.uh, %i.ui
  %i.uk = insertelement <2 x float> poison, float %i.ti, i64 0
  %i.ul = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.um = shufflevector <2 x float> %i.ua, <2 x float> %i.uf, <2 x i32> <i32 0, i32 2>
  %i.un = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ul, <2 x float> %i.um, <2 x float> %i.uj)
  %i.uo = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uq = insertelement <2 x float> %i.tn, float %i.tw, i64 1
  %i.ur = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.up, <2 x float> %i.uq, <2 x float> %i.un)
  %i.us = insertelement <2 x float> poison, float %.sroa.19744.0.copyload, i64 0
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uu = fadd <2 x float> %i.ut, %i.ur           ; 2 uses
  %i.uv = insertelement <2 x float> %i.uu, float 0.000000e+00, i64 1
  store <2 x float> %i.uv, ptr %i.ts, align 8
  %i.uw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tv, <2 x float> %i.tr, <2 x float> %i.ue)
  %i.ux = fadd <2 x float> %i.mx, %i.uw
  store <2 x float> %i.ux, ptr %23, align 8
  %i.uy = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uz = fmul <2 x float> %i.tx, %i.uy
  %i.va = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tq, <2 x float> %i.va, <2 x float> %i.uz)
  %i.vc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tv, <2 x float> %i.tz, <2 x float> %i.vb)
  %i.vd = fadd <2 x float> %i.mx, %i.vc
  %i.ve = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.uu, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.vd, ptr %24, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %24, i64 8
  store <2 x float> %i.ve, ptr %i.vf, align 8
  %i.vg = load ptr, ptr %i.th, align 8, !tbaa !12
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(8) %i.th, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !240 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.vm = load float, ptr %i.vl, align 8, !tbaa !241
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 4 ; 8 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !7  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.vp = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.vq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.vr = fmul float %i.vm, 5.000000e-01
  %i.vs = sext i32 %i.vo to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %25, i64 %i.vs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  store float %i.vr, ptr %i.vt, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.vu = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.vv = getelementptr inbounds nuw i8, ptr %26, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.vw = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.vx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.vy = insertelement <2 x i32> poison, i32 %i.vo, i64 0
  %i.vz = shufflevector <2 x i32> %i.vy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wa = add nsw <2 x i32> %i.vz, <i32 1, i32 2>
  %i.wb = srem <2 x i32> %i.wa, splat (i32 3)     ; 2 uses
  %i.wc = extractelement <2 x i32> %i.wb, i64 0
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %26, i64 %i.wd
  store float %i.vk, ptr %i.we, align 4, !tbaa !9
  %i.wf = extractelement <2 x i32> %i.wb, i64 1
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr inbounds [4 x i8], ptr %27, i64 %i.wg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  store float %i.vk, ptr %i.wh, align 4, !tbaa !9
  %i.wi = load ptr, ptr %0, align 8, !tbaa !12
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %i.wk = load ptr, ptr %i.wj, align 8
  %i.wl = load <2 x float>, ptr %i.a, align 4     ; 8 uses
  %i.wm = call noundef ptr %i.wk(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.wn = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.wo = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.wp = shufflevector <2 x float> %i.wn, <2 x float> %i.wo, <2 x i32> <i32 1, i32 3>
  %i.wq = shufflevector <2 x float> %i.wn, <2 x float> %i.wo, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.wr = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.ws = load float, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.wt = load float, ptr %i.r, align 4, !tbaa !9 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.wv = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.ww = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.wx = shufflevector <2 x float> %i.wv, <2 x float> %i.ww, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.wy = shufflevector <2 x float> %i.wv, <2 x float> %i.ww, <2 x i32> <i32 0, i32 2>
  %i.wz = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.xa = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.xb = load float, ptr %i.vu, align 4, !tbaa !9 ; 2 uses
  %i.xc = load float, ptr %26, align 4, !tbaa !9  ; 2 uses
  %i.xd = load float, ptr %i.vv, align 4, !tbaa !9 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.xf = getelementptr inbounds nuw i8, ptr %32, i64 8
end_hunk_0
