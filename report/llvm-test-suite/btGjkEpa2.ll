inline.NumInlined: 449
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3:bb.a
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.aj)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !24 ; 3 uses
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.al) ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00      ; 2 uses
  %i.aq = fneg <2 x float> %i.ai
  %i.ar = fneg float %i.an
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ar, i64 0
  %.sroa.0125.0 = select i1 %i.ap, <2 x float> %i.aq, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %.sroa.7.0 = select i1 %i.ap, <2 x float> %.sroa.3.12.vec.insert.i, <2 x float> zeroinitializer
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store float 0.000000e+00, ptr %i.as, align 8, !tbaa !24
  store i32 3, ptr %i.k, align 8, !tbaa !8
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !29
  store i32 1, ptr %i.af, align 8, !tbaa !22
  %.sroa.0125.0.vec.extract = extractelement <2 x float> %.sroa.0125.0, i64 0 ; 2 uses
  %foldExtExtBinop188 = fmul <2 x float> %.sroa.0125.0, %.sroa.0125.0
  %i.at = extractelement <2 x float> %foldExtExtBinop188, i64 1
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.0125.0.vec.extract, float %.sroa.0125.0.vec.extract, float %i.at)
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.7.0, i64 0 ; 3 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract, float %.sroa.7.8.vec.extract, float %i.au)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %.sroa.0125.0, %i.ay
  %i.ba = fmul float %.sroa.7.8.vec.extract, %i.aw
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  store <2 x float> %i.az, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !25
  %i.bb = load ptr, ptr %0, align 8, !tbaa !31
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.unpack6.i ; 2 uses
  %i.bd = and i64 %.unpack.i, 1
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.bf = getelementptr i8, ptr %i.be, i64 %.unpack.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load ptr, ptr %i.bg, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.bi = inttoptr i64 %.unpack.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i: ; preds = %bb.c, %bb.b
  %i.bj = phi ptr [ %i.bh, %bb.b ], [ %i.bi, %bb.c ]
  %i.bk = tail call { <2 x float>, <2 x float> } %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 4 dereferenceable(32) %i.i), !inline_history !50 ; 2 uses
  %i.bl = load float, ptr %i.i, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !24
  %i.bo = load float, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  %.unpack.i3.i.i = load i64, ptr %i.ac, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i.i = load i64, ptr %.repack7.i, align 8, !tbaa !33
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %.unpack3.i5.i.i ; 2 uses
  %i.bs = and i64 %.unpack.i3.i.i, 1
  %.not.i6.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !34
  %i.bu = getelementptr i8, ptr %i.bt, i64 %.unpack.i3.i.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load ptr, ptr %i.bv, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit

bb.e:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i
  %i.bx = inttoptr i64 %.unpack.i3.i.i to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit: ; preds = %bb.d, %bb.e
  %i.by = phi ptr [ %i.bw, %bb.d ], [ %i.bx, %bb.e ]
  %i.bz = fneg float %i.bo                        ; 3 uses
  %i.ca = fneg float %i.bn                        ; 3 uses
  %i.cb = fneg float %i.bl                        ; 3 uses
  %i.cc = extractvalue { <2 x float>, <2 x float> } %i.bk, 1
  %i.cd = extractvalue { <2 x float>, <2 x float> } %i.bk, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ce = load float, ptr %i.n, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !24
  %i.ch = fmul float %i.cg, %i.ca
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cb, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !24
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.bz, float %i.ci)
  %i.cm = load float, ptr %i.q, align 8, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !24
  %i.cp = fmul float %i.co, %i.ca
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cb, float %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !24
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.bz, float %i.cq)
  %i.cu = load float, ptr %i.s, align 8, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !24
  %i.cx = fmul float %i.cw, %i.ca
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cb, float %i.cx)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.da = load float, ptr %i.cz, align 8, !tbaa !24
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.da, float %i.bz, float %i.cy)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cl, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.ct, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, ptr %4, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i, ptr %i.dc, align 8
  %i.dd = call { <2 x float>, <2 x float> } %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !51 ; 2 uses
  %i.de = extractvalue { <2 x float>, <2 x float> } %i.dd, 0 ; 4 uses
  %i.df = extractvalue { <2 x float>, <2 x float> } %i.dd, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %i.de, i64 0
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %i.de, i64 1
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dh = load <4 x float>, ptr %i.dg, align 8
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5.8.vec.extract.i.i.i = extractelement <2 x float> %i.df, i64 0
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !24
  %i.dl = load float, ptr %i.y, align 8, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !24
  %i.do = fmul float %.sroa.0.4.vec.extract.i.i.i, %i.dn
  %i.dp = call float @llvm.fmuladd.f32(float %i.dl, float %.sroa.0.0.vec.extract.i.i.i, float %i.do)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !24
  %i.ds = call noundef float @llvm.fmuladd.f32(float %i.dr, float %.sroa.5.8.vec.extract.i.i.i, float %i.dp)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.du = load float, ptr %i.dt, align 8, !tbaa !24
  %i.dv = fadd float %i.du, %i.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.dw = load <2 x float>, ptr %i.t, align 8, !tbaa !24 ; 2 uses
  %i.dx = load <2 x float>, ptr %i.w, align 8, !tbaa !24 ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <2 x i32> <i32 1, i32 3>
  %i.dz = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = fmul <2 x float> %i.dy, %i.dz
  %i.eb = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <2 x i32> <i32 0, i32 2>
  %i.ec = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ec, <2 x float> %i.ea)
  %i.ee = insertelement <2 x float> %i.di, float %i.dk, i64 1
  %i.ef = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ed)
  %i.eh = load <2 x float>, ptr %i.aa, align 8, !tbaa !24
  %i.ei = fadd <2 x float> %i.eh, %i.eg
  %i.ej = fsub <2 x float> %i.cd, %i.ei
  %.sroa.515.8.vec.extract.i.i = extractelement <2 x float> %i.cc, i64 0
  %i.ek = fsub float %.sroa.515.8.vec.extract.i.i, %i.dv
  %.sroa.3.12.vec.insert.i9.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ek, i64 0
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 392
  store <2 x float> %i.ej, ptr %i.el, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !25
  store float 1.000000e+00, ptr %i.as, align 8, !tbaa !24
  %i.em = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.en, i64 16, i1 false), !tbaa.struct !49
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eo, ptr noundef nonnull align 4 dereferenceable(16) %i.en, i64 16, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ep, ptr noundef nonnull align 4 dereferenceable(16) %i.en, i64 16, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eq, ptr noundef nonnull align 4 dereferenceable(16) %i.en, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.en, i64 16, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre = load i32, ptr %i.l, align 4, !tbaa !19
  %i.et = load <2 x float>, ptr %i.ag, align 8, !tbaa !24
  %.pre156 = load float, ptr %i.am, align 8, !tbaa !24
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit
  %i.fc = phi float [ %.pre156, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.pm, %._crit_edge ] ; 3 uses
  %i.fd = phi i32 [ %.pre, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.ff, %._crit_edge ] ; 2 uses
  %.0130 = phi float [ 0.000000e+00, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %.sroa.speculated, %._crit_edge ] ; 2 uses
  %.064 = phi i32 [ 0, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.lg, %._crit_edge ]
  %.055 = phi float [ %i.ao, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %.156, %._crit_edge ]
  %.0 = phi i32 [ 0, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.pq, %._crit_edge ]
  %i.fe = phi <2 x float> [ %i.et, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.pn, %._crit_edge ] ; 4 uses
  %i.ff = sub i32 1, %i.fd                        ; 3 uses
  %i.fg = zext i32 %i.fd to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.fg ; 14 uses
  %i.fi = zext i32 %i.ff to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.fi ; 3 uses
  %foldExtExtBinop190 = fmul <2 x float> %i.fe, %i.fe
  %i.fk = extractelement <2 x float> %foldExtExtBinop190, i64 1
  %i.fl = extractelement <2 x float> %i.fe, i64 0 ; 2 uses
  %i.fm = call float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fk)
  %i.fn = call noundef float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.fm)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.fn) ; 5 uses
  %i.fo = fcmp olt float %sqrt.i, f0x38D1B717
  br i1 %i.fo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.m, align 8, !tbaa !18
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.fp = fneg <2 x float> %i.fe
  %i.fq = fneg float %i.fc
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 48 ; 4 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !22 ; 2 uses
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fu
  store float 0.000000e+00, ptr %i.fv, align 4, !tbaa !24
  %i.fw = load i32, ptr %i.k, align 8, !tbaa !8
  %i.fx = add i32 %i.fw, -1                       ; 2 uses
  store i32 %i.fx, ptr %i.k, align 8, !tbaa !8
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !29 ; 8 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fu
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !29
  %i.gc = add i32 %i.ft, 1
  store i32 %i.gc, ptr %i.fs, align 8, !tbaa !22
  %i.gd = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ge = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x float> %i.gf, %i.fp
  %i.gh = fmul float %i.gd, %i.fq
  %.sroa.3.12.vec.insert.i.i.i89 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gh, i64 0
  store <2 x float> %i.gg, ptr %i.ga, align 4
  %.sroa.42.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i89, ptr %.sroa.42.0..sroa_idx.i90, align 4, !tbaa !25
  %i.gi = load ptr, ptr %0, align 8, !tbaa !31
  %.unpack.i.i.i91 = load i64, ptr %i.ac, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i.i.i93 = load i64, ptr %.repack7.i, align 8, !tbaa !33
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 %.unpack3.i.i.i93 ; 2 uses
  %i.gk = and i64 %.unpack.i.i.i91, 1
  %.not.i.i.i94 = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i.i94, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !34
  %i.gm = getelementptr i8, ptr %i.gl, i64 %.unpack.i.i.i91
  %i.gn = getelementptr i8, ptr %i.gm, i64 -1
  %i.go = load ptr, ptr %i.gn, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i95

bb.j:                                             ; preds = %bb.h
  %i.gp = inttoptr i64 %.unpack.i.i.i91 to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i95

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i95: ; preds = %bb.j, %bb.i
  %i.gq = phi ptr [ %i.go, %bb.i ], [ %i.gp, %bb.j ]
  %i.gr = call { <2 x float>, <2 x float> } %i.gq(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 4 dereferenceable(32) %i.ga), !inline_history !50 ; 2 uses
  %i.gs = load float, ptr %i.ga, align 4, !tbaa !24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !24
  %i.gv = load float, ptr %.sroa.42.0..sroa_idx.i90, align 4, !tbaa !24
  %i.gw = load ptr, ptr %i.bp, align 8, !tbaa !31
  %.unpack.i3.i.i96 = load i64, ptr %i.ac, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i.i97 = load i64, ptr %.repack7.i, align 8, !tbaa !33
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 %.unpack3.i5.i.i97 ; 2 uses
  %i.gy = and i64 %.unpack.i3.i.i96, 1
  %.not.i6.i.i98 = icmp eq i64 %i.gy, 0
  br i1 %.not.i6.i.i98, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i95
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !34
  %i.ha = getelementptr i8, ptr %i.gz, i64 %.unpack.i3.i.i96
  %i.hb = getelementptr i8, ptr %i.ha, i64 -1
  %i.hc = load ptr, ptr %i.hb, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit112

bb.l:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i95
  %i.hd = inttoptr i64 %.unpack.i3.i.i96 to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit112

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit112: ; preds = %bb.k, %bb.l
  %i.he = phi ptr [ %i.hc, %bb.k ], [ %i.hd, %bb.l ]
  %i.hf = fneg float %i.gv                        ; 3 uses
  %i.hg = fneg float %i.gu                        ; 3 uses
  %i.hh = fneg float %i.gs                        ; 3 uses
  %i.hi = extractvalue { <2 x float>, <2 x float> } %i.gr, 1
  %i.hj = extractvalue { <2 x float>, <2 x float> } %i.gr, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.hk = load float, ptr %i.n, align 8, !tbaa !24
  %i.hl = load float, ptr %i.cf, align 4, !tbaa !24
  %i.hm = fmul float %i.hl, %i.hg
  %i.hn = call float @llvm.fmuladd.f32(float %i.hk, float %i.hh, float %i.hm)
  %i.ho = load float, ptr %i.cj, align 8, !tbaa !24
  %i.hp = call noundef float @llvm.fmuladd.f32(float %i.ho, float %i.hf, float %i.hn)
  %i.hq = load float, ptr %i.q, align 8, !tbaa !24
  %i.hr = load float, ptr %i.cn, align 4, !tbaa !24
  %i.hs = fmul float %i.hr, %i.hg
  %i.ht = call float @llvm.fmuladd.f32(float %i.hq, float %i.hh, float %i.hs)
  %i.hu = load float, ptr %i.cr, align 8, !tbaa !24
  %i.hv = call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.hf, float %i.ht)
  %i.hw = load float, ptr %i.s, align 8, !tbaa !24
  %i.hx = load float, ptr %i.cv, align 4, !tbaa !24
  %i.hy = fmul float %i.hx, %i.hg
  %i.hz = call float @llvm.fmuladd.f32(float %i.hw, float %i.hh, float %i.hy)
  %i.ia = load float, ptr %i.cz, align 8, !tbaa !24
  %i.ib = call noundef float @llvm.fmuladd.f32(float %i.ia, float %i.hf, float %i.hz)
  %.sroa.0.0.vec.insert.i.i.i.i99 = insertelement <2 x float> poison, float %i.hp, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i100 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i99, float %i.hv, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i101 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ib, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i100, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i101, ptr %i.er, align 8
  %i.ic = call { <2 x float>, <2 x float> } %i.he(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !51 ; 2 uses
  %i.id = extractvalue { <2 x float>, <2 x float> } %i.ic, 0 ; 4 uses
  %i.ie = extractvalue { <2 x float>, <2 x float> } %i.ic, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i102 = extractelement <2 x float> %i.id, i64 0
  %.sroa.0.4.vec.extract.i.i.i103 = extractelement <2 x float> %i.id, i64 1
  %i.if = load <4 x float>, ptr %i.dg, align 8
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5.8.vec.extract.i.i.i104 = extractelement <2 x float> %i.ie, i64 0
  %i.ih = load float, ptr %i.dj, align 8, !tbaa !24
  %i.ii = load float, ptr %i.y, align 8, !tbaa !24
  %i.ij = load float, ptr %i.dm, align 4, !tbaa !24
  %i.ik = fmul float %.sroa.0.4.vec.extract.i.i.i103, %i.ij
  %i.il = call float @llvm.fmuladd.f32(float %i.ii, float %.sroa.0.0.vec.extract.i.i.i102, float %i.ik)
  %i.im = load float, ptr %i.dq, align 8, !tbaa !24
  %i.in = call noundef float @llvm.fmuladd.f32(float %i.im, float %.sroa.5.8.vec.extract.i.i.i104, float %i.il)
  %i.io = load float, ptr %i.dt, align 8, !tbaa !24
  %i.ip = fadd float %i.io, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.iq = load <2 x float>, ptr %i.t, align 8, !tbaa !24 ; 2 uses
  %i.ir = load <2 x float>, ptr %i.w, align 8, !tbaa !24 ; 2 uses
  %i.is = shufflevector <2 x float> %i.iq, <2 x float> %i.ir, <2 x i32> <i32 1, i32 3>
  %i.it = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iu = fmul <2 x float> %i.is, %i.it
  %i.iv = shufflevector <2 x float> %i.iq, <2 x float> %i.ir, <2 x i32> <i32 0, i32 2>
  %i.iw = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.iw, <2 x float> %i.iu)
  %i.iy = insertelement <2 x float> %i.ig, float %i.ih, i64 1
  %i.iz = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.iz, <2 x float> %i.ix)
  %i.jb = load <2 x float>, ptr %i.aa, align 8, !tbaa !24
  %i.jc = fadd <2 x float> %i.jb, %i.ja
  %i.jd = fsub <2 x float> %i.hj, %i.jc
  %.sroa.515.8.vec.extract.i.i107 = extractelement <2 x float> %i.hi, i64 0
  %i.je = fsub float %.sroa.515.8.vec.extract.i.i107, %i.ip
  %.sroa.3.12.vec.insert.i9.i.i110 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.je, i64 0
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <2 x float> %i.jd, ptr %i.jf, align 4
  %.sroa.4.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i110, ptr %.sroa.4.0..sroa_idx.i111, align 4, !tbaa !25
  %i.jg = load i32, ptr %i.fs, align 8, !tbaa !22 ; 2 uses
  %i.jh = add i32 %i.jg, -1
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !29 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !24 ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 20
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !24 ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !24 ; 5 uses
  %i.jr = load float, ptr %5, align 16, !tbaa !24
  %i.js = fsub float %i.jm, %i.jr                 ; 2 uses
  %i.jt = load float, ptr %i.eu, align 4, !tbaa !24
  %i.ju = fsub float %i.jo, %i.jt                 ; 2 uses
  %i.jv = load float, ptr %i.ev, align 8, !tbaa !24
  %i.jw = fsub float %i.jq, %i.jv                 ; 2 uses
  %i.jx = fmul float %i.ju, %i.ju
  %i.jy = call float @llvm.fmuladd.f32(float %i.js, float %i.js, float %i.jx)
  %i.jz = call noundef float @llvm.fmuladd.f32(float %i.jw, float %i.jw, float %i.jy)
  %i.ka = fcmp olt float %i.jz, f0x38D1B717
  br i1 %i.ka, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit112
  %i.kb = load float, ptr %i.eq, align 16, !tbaa !24
  %i.kc = fsub float %i.jm, %i.kb                 ; 2 uses
  %i.kd = load float, ptr %i.ew, align 4, !tbaa !24
  %i.ke = fsub float %i.jo, %i.kd                 ; 2 uses
  %i.kf = load float, ptr %i.ex, align 8, !tbaa !24
  %i.kg = fsub float %i.jq, %i.kf                 ; 2 uses
  %i.kh = fmul float %i.ke, %i.ke
  %i.ki = call float @llvm.fmuladd.f32(float %i.kc, float %i.kc, float %i.kh)
  %i.kj = call noundef float @llvm.fmuladd.f32(float %i.kg, float %i.kg, float %i.ki)
  %i.kk = fcmp olt float %i.kj, f0x38D1B717
  br i1 %i.kk, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kl = load float, ptr %i.ep, align 16, !tbaa !24
  %i.km = fsub float %i.jm, %i.kl                 ; 2 uses
  %i.kn = load float, ptr %i.ey, align 4, !tbaa !24
  %i.ko = fsub float %i.jo, %i.kn                 ; 2 uses
  %i.kp = load float, ptr %i.ez, align 8, !tbaa !24
  %i.kq = fsub float %i.jq, %i.kp                 ; 2 uses
  %i.kr = fmul float %i.ko, %i.ko
  %i.ks = call float @llvm.fmuladd.f32(float %i.km, float %i.km, float %i.kr)
  %i.kt = call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.kq, float %i.ks)
  %i.ku = fcmp olt float %i.kt, f0x38D1B717
  br i1 %i.ku, label %bb.p, label %bb.o

end_hunk_0
begin_hunk_1_@_ZN12gjkepa2_impl3EPA8EvaluateERNS_3GJKERK9btVector3:bb.a
  %i.hf = fmul float %i.he, %i.he
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107, %.lr.ph.preheader.i106
  %.01730.i108 = phi ptr [ %.017.i117, %.lr.ph.i107 ], [ %.01725.i104, %.lr.ph.preheader.i106 ] ; 4 uses
  %.029.i109 = phi ptr [ %.1.i115, %.lr.ph.i107 ], [ %i.ha, %.lr.ph.preheader.i106 ]
  %.01828.i110 = phi float [ %.119.i114, %.lr.ph.i107 ], [ %i.hc, %.lr.ph.preheader.i106 ] ; 2 uses
  %.02027.i111 = phi float [ %.121.i113, %.lr.ph.i107 ], [ %i.hf, %.lr.ph.preheader.i106 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.01730.i108, i64 16
  %i.hh = load float, ptr %i.hg, align 8, !tbaa !66 ; 2 uses
  %i.hi = fmul float %i.hh, %i.hh                 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.01730.i108, i64 20
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !64 ; 2 uses
  %i.hl = fcmp oge float %i.hk, %.01828.i110
  %i.hm = fcmp olt float %i.hi, %.02027.i111
  %or.cond.i112 = select i1 %i.hl, i1 %i.hm, i1 false ; 3 uses
  %.121.i113 = select i1 %or.cond.i112, float %i.hi, float %.02027.i111
  %.119.i114 = select i1 %or.cond.i112, float %i.hk, float %.01828.i110
  %.1.i115 = select i1 %or.cond.i112, ptr %.01730.i108, ptr %.029.i109 ; 2 uses
  %.017.in.i116 = getelementptr inbounds nuw i8, ptr %.01730.i108, i64 80
  %.017.i117 = load ptr, ptr %.017.in.i116, align 8, !tbaa !60 ; 2 uses
  %.not.i118 = icmp eq ptr %.017.i117, null
  br i1 %.not.i118, label %_ZN12gjkepa2_impl3EPA8findbestEv.exit120, label %.lr.ph.i107

_ZN12gjkepa2_impl3EPA8findbestEv.exit120:         ; preds = %.lr.ph.i107, %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit102
  %.0.lcssa.i119 = phi ptr [ %i.ha, %_ZN12gjkepa2_impl3EPA6appendERNS0_5sListEPNS0_5sFaceE.exit102 ], [ %.1.i115, %.lr.ph.i107 ] ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i119, i64 20
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !64 ; 2 uses
  %i.hp = fcmp ult float %i.ho, %.sroa.10.0318
  br i1 %i.hp, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_ZN12gjkepa2_impl3EPA8findbestEv.exit120
  %i.hq = load <4 x float>, ptr %.0.lcssa.i119, align 8
  %.sroa.8241.0..0.lcssa.i119.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i119, i64 16
  %.sroa.8241.0.copyload242 = load float, ptr %.sroa.8241.0..0.lcssa.i119.sroa_idx, align 8, !tbaa !24
  %.sroa.11.0..0.lcssa.i119.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i119, i64 24
  %.sroa.11.0.copyload245 = load ptr, ptr %.sroa.11.0..0.lcssa.i119.sroa_idx, align 8
  %.sroa.14.0..0.lcssa.i119.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i119, i64 32
  %.sroa.14.0.copyload248 = load ptr, ptr %.sroa.14.0..0.lcssa.i119.sroa_idx, align 8
  %.sroa.17.0..0.lcssa.i119.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i119, i64 40
  %.sroa.17.0.copyload251 = load ptr, ptr %.sroa.17.0..0.lcssa.i119.sroa_idx, align 8, !tbaa !25
  br label %bb.ab

bb.z:                                             ; preds = %bb.o, %bb.p
  %storemerge = phi i32 [ 4, %bb.p ], [ 7, %bb.o ]
  store i32 %storemerge, ptr %0, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.loopexit

bb.aa:                                            ; preds = %bb.n
  store i32 6, ptr %0, align 8, !tbaa !56
  br label %.loopexit

bb.ab:                                            ; preds = %bb.y, %_ZN12gjkepa2_impl3EPA8findbestEv.exit120
  %.sroa.8241.1.ph = phi float [ %.sroa.8241.0.copyload242, %bb.y ], [ %.sroa.8241.0317, %_ZN12gjkepa2_impl3EPA8findbestEv.exit120 ] ; 2 uses
  %.sroa.10.1.ph = phi float [ %i.ho, %bb.y ], [ %.sroa.10.0318, %_ZN12gjkepa2_impl3EPA8findbestEv.exit120 ]
  %.sroa.11.1.ph = phi ptr [ %.sroa.11.0.copyload245, %bb.y ], [ %.sroa.11.0319, %_ZN12gjkepa2_impl3EPA8findbestEv.exit120 ] ; 2 uses
  %.sroa.14.1.ph = phi ptr [ %.sroa.14.0.copyload248, %bb.y ], [ %.sroa.14.0320, %_ZN12gjkepa2_impl3EPA8findbestEv.exit120 ] ; 2 uses
  %.sroa.17.1.ph = phi ptr [ %.sroa.17.0.copyload251, %bb.y ], [ %.sroa.17.0321, %_ZN12gjkepa2_impl3EPA8findbestEv.exit120 ] ; 2 uses
  %i.hr = phi <4 x float> [ %i.hq, %bb.y ], [ %i.es, %_ZN12gjkepa2_impl3EPA8findbestEv.exit120 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %exitcond.not = icmp eq i32 %i.ey, 255
  br i1 %exitcond.not, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %bb.ab, %bb.aa, %bb.z
  %.sroa.8241.0295 = phi float [ %.sroa.8241.0317, %bb.z ], [ %.sroa.8241.0317, %bb.aa ], [ %.sroa.8241.1.ph, %bb.ab ] ; 4 uses
  %.sroa.11.0292 = phi ptr [ %.sroa.11.0319, %bb.z ], [ %.sroa.11.0319, %bb.aa ], [ %.sroa.11.1.ph, %bb.ab ] ; 4 uses
  %.sroa.14.0289 = phi ptr [ %.sroa.14.0320, %bb.z ], [ %.sroa.14.0320, %bb.aa ], [ %.sroa.14.1.ph, %bb.ab ] ; 4 uses
  %.sroa.17.0286 = phi ptr [ %.sroa.17.0321, %bb.z ], [ %.sroa.17.0321, %bb.aa ], [ %.sroa.17.1.ph, %bb.ab ] ; 4 uses
  %i.hs = phi <4 x float> [ %i.es, %bb.z ], [ %i.es, %bb.aa ], [ %i.hr, %bb.ab ] ; 4 uses
  %i.ht = extractelement <4 x float> %i.hs, i64 0
  %i.hu = fmul float %i.ht, %.sroa.8241.0295      ; 6 uses
  %i.hv = extractelement <4 x float> %i.hs, i64 1
  %i.hw = fmul float %i.hv, %.sroa.8241.0295      ; 6 uses
  %i.hx = extractelement <4 x float> %i.hs, i64 2
  %i.hy = fmul float %i.hx, %.sroa.8241.0295      ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %i.hs, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %.sroa.8241.0295, ptr %i.ia, align 8, !tbaa !71
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 3, ptr %i.ic, align 8, !tbaa !61
  store ptr %.sroa.11.0292, ptr %i.ib, align 8, !tbaa !29
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0289, ptr %i.id, align 8, !tbaa !29
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.17.0286, ptr %i.ie, align 8, !tbaa !29
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.14.0289, i64 16 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !24
  %i.ih = fsub float %i.ig, %i.hu                 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.14.0289, i64 20 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !24
  %i.ik = fsub float %i.ij, %i.hw                 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.14.0289, i64 24 ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !24
  %i.in = fsub float %i.im, %i.hy                 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.17.0286, i64 16 ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !24
  %i.iq = fsub float %i.ip, %i.hu                 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.17.0286, i64 20 ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !24
  %i.it = fsub float %i.is, %i.hw                 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.17.0286, i64 24 ; 2 uses
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !24
  %i.iw = fsub float %i.iv, %i.hy                 ; 2 uses
  %i.ix = fneg float %i.it
  %i.iy = fmul float %i.in, %i.ix
  %i.iz = call float @llvm.fmuladd.f32(float %i.ik, float %i.iw, float %i.iy) ; 2 uses
  %i.ja = fneg float %i.iw
  %i.jb = fmul float %i.ih, %i.ja
  %i.jc = call float @llvm.fmuladd.f32(float %i.in, float %i.iq, float %i.jb) ; 2 uses
  %i.jd = fneg float %i.iq
  %i.je = fmul float %i.ik, %i.jd
  %i.jf = call float @llvm.fmuladd.f32(float %i.ih, float %i.it, float %i.je) ; 2 uses
  %i.jg = fmul float %i.jc, %i.jc
  %i.jh = call float @llvm.fmuladd.f32(float %i.iz, float %i.iz, float %i.jg)
  %i.ji = call noundef float @llvm.fmuladd.f32(float %i.jf, float %i.jf, float %i.jh)
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.11.0292, i64 16 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.11.0292, i64 20 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.11.0292, i64 24 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ji) ; 3 uses
  store float %sqrt.i, ptr %i.jj, align 8, !tbaa !24
  %i.jp = load float, ptr %i.io, align 4, !tbaa !24
  %i.jq = fsub float %i.jp, %i.hu                 ; 2 uses
  %i.jr = load float, ptr %i.ir, align 4, !tbaa !24
  %i.js = fsub float %i.jr, %i.hw                 ; 2 uses
  %i.jt = load float, ptr %i.iu, align 4, !tbaa !24
  %i.ju = fsub float %i.jt, %i.hy                 ; 2 uses
  %i.jv = load float, ptr %i.jk, align 4, !tbaa !24
  %i.jw = fsub float %i.jv, %i.hu                 ; 2 uses
  %i.jx = load float, ptr %i.jl, align 4, !tbaa !24
  %i.jy = fsub float %i.jx, %i.hw                 ; 2 uses
  %i.jz = load float, ptr %i.jm, align 4, !tbaa !24
  %i.ka = fsub float %i.jz, %i.hy                 ; 2 uses
  %i.kb = fneg float %i.jy
  %i.kc = fmul float %i.ju, %i.kb
  %i.kd = call float @llvm.fmuladd.f32(float %i.js, float %i.ka, float %i.kc) ; 2 uses
  %i.ke = fneg float %i.ka
  %i.kf = fmul float %i.jq, %i.ke
  %i.kg = call float @llvm.fmuladd.f32(float %i.ju, float %i.jw, float %i.kf) ; 2 uses
  %i.kh = fneg float %i.jw
  %i.ki = fmul float %i.js, %i.kh
  %i.kj = call float @llvm.fmuladd.f32(float %i.jq, float %i.jy, float %i.ki) ; 2 uses
  %i.kk = fmul float %i.kg, %i.kg
  %i.kl = call float @llvm.fmuladd.f32(float %i.kd, float %i.kd, float %i.kk)
  %i.km = call noundef float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %i.kl)
  %sqrt.i151 = call noundef float @llvm.sqrt.f32(float %i.km) ; 3 uses
  store float %sqrt.i151, ptr %i.jn, align 4, !tbaa !24
  %i.kn = load float, ptr %i.jk, align 4, !tbaa !24
  %i.ko = fsub float %i.kn, %i.hu                 ; 2 uses
  %i.kp = load float, ptr %i.jl, align 4, !tbaa !24
  %i.kq = fsub float %i.kp, %i.hw                 ; 2 uses
  %i.kr = load float, ptr %i.jm, align 4, !tbaa !24
  %i.ks = fsub float %i.kr, %i.hy                 ; 2 uses
  %i.kt = load float, ptr %i.if, align 4, !tbaa !24
  %i.ku = fsub float %i.kt, %i.hu                 ; 2 uses
  %i.kv = load float, ptr %i.ii, align 4, !tbaa !24
  %i.kw = fsub float %i.kv, %i.hw                 ; 2 uses
  %i.kx = load float, ptr %i.il, align 4, !tbaa !24
  %i.ky = fsub float %i.kx, %i.hy                 ; 2 uses
  %i.kz = fneg float %i.kw
  %i.la = fmul float %i.ks, %i.kz
  %i.lb = call float @llvm.fmuladd.f32(float %i.kq, float %i.ky, float %i.la) ; 2 uses
  %i.lc = fneg float %i.ky
  %i.ld = fmul float %i.ko, %i.lc
  %i.le = call float @llvm.fmuladd.f32(float %i.ks, float %i.ku, float %i.ld) ; 2 uses
  %i.lf = fneg float %i.ku
  %i.lg = fmul float %i.kq, %i.lf
  %i.lh = call float @llvm.fmuladd.f32(float %i.ko, float %i.kw, float %i.lg) ; 2 uses
  %i.li = fmul float %i.le, %i.le
  %i.lj = call float @llvm.fmuladd.f32(float %i.lb, float %i.lb, float %i.li)
  %i.lk = call noundef float @llvm.fmuladd.f32(float %i.lh, float %i.lh, float %i.lj)
  %sqrt.i167 = call noundef float @llvm.sqrt.f32(float %i.lk) ; 2 uses
  %i.ll = fadd float %sqrt.i, %sqrt.i151
  %i.lm = fadd float %i.ll, %sqrt.i167            ; 2 uses
  %i.ln = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.lo = insertelement <2 x float> %i.ln, float %sqrt.i151, i64 1
  %i.lp = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fdiv <2 x float> %i.lo, %i.lq
  store <2 x float> %i.lr, ptr %i.jj, align 8, !tbaa !24
  %i.ls = fdiv float %sqrt.i167, %i.lm
  store float %i.ls, ptr %i.jo, align 8, !tbaa !24
  %i.lt = load i32, ptr %0, align 8, !tbaa !56
  br label %bb.af

.thread281:                                       ; preds = %bb.l, %bb.b, %bb.a
  store i32 8, ptr %0, align 8, !tbaa !56
  %i.lu = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !24 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.lu, %i.lu
  %i.ly = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.lz = extractelement <2 x float> %i.lu, i64 0 ; 2 uses
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.lz, float %i.ly)
  %i.mb = tail call noundef float @llvm.fmuladd.f32(float %i.lw, float %i.lw, float %i.ma) ; 2 uses
  %i.mc = fcmp ogt float %i.mb, 0.000000e+00
  br i1 %i.mc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread281
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.md = fneg float %i.lw
  %i.me = fneg <2 x float> %i.lu
  %sqrt.i173 = tail call noundef float @llvm.sqrt.f32(float %i.mb)
  %i.mf = fdiv float 1.000000e+00, %sqrt.i173     ; 2 uses
  %i.mg = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x float> %i.mh, %i.me
  %i.mj = fmul float %i.mf, %i.md
  %.sroa.3.12.vec.insert.i.i176 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mj, i64 0
  store <2 x float> %i.mi, ptr %i.lx, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i176, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !25
  br label %bb.ae

bb.ad:                                            ; preds = %.thread281
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.lx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 0.000000e+00, ptr %i.mk, align 8, !tbaa !71
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.mm, align 8, !tbaa !61
  %i.mn = load ptr, ptr %i.b, align 8, !tbaa !29
  store ptr %i.mn, ptr %i.ml, align 8, !tbaa !29
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.mo, align 8, !tbaa !24
  br label %bb.af

bb.af:                                            ; preds = %.loopexit, %bb.ae
  %.1 = phi i32 [ 8, %bb.ae ], [ %i.lt, %.loopexit ]
  ret i32 %.1
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, float noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(56) initializes((0, 36)) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %"struct.gjkepa2_impl::MinkowskiDiff", align 8 ; 27 uses
  %7 = alloca %class.btSphereShape, align 8       ; 13 uses
  %8 = alloca %class.btTransform, align 4         ; 11 uses
  %9 = alloca %"struct.gjkepa2_impl::GJK", align 8 ; 10 uses
  %10 = alloca %class.btVector3, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %7, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 8, ptr %i.a, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %1, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 56
  store float %1, ptr %i.c, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store float 1.000000e+00, ptr %8, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.g, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !49
  call fastcc void @_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb(ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(144) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 440
  store i32 0, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 444
  store i32 0, ptr %i.l, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 160
  store float 0.000000e+00, ptr %i.m, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !24
  %i.n = invoke noundef i32 @_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3(ptr noundef nonnull align 8 dereferenceable(460) %9, ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  switch i32 %i.n, label %bb.v [
    i32 0, label %.preheader
    i32 1, label %bb.p
  ]

.preheader:                                       ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 448 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %.elt2.i5.i = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 116
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 104
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.w

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.ao = phi ptr [ %i.p, %.lr.ph ], [ %i.ei, %bb.j ] ; 2 uses
  %i.ap = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.eg, %bb.j ]
  %i.aq = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.eh, %bb.j ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !24 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29
  %i.aw = load ptr, ptr %6, align 8, !tbaa !31
  %.unpack.i4.i = load i64, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i6.i = load i64, ptr %.elt2.i5.i, align 8, !tbaa !33
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.unpack3.i6.i ; 2 uses
  %i.ay = and i64 %.unpack.i4.i, 1
  %.not.i7.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.ba = getelementptr i8, ptr %i.az, i64 %.unpack.i4.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load ptr, ptr %i.bb, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bd = inttoptr i64 %.unpack.i4.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i: ; preds = %bb.f, %bb.e
  %i.be = phi ptr [ %i.bc, %bb.e ], [ %i.bd, %bb.f ]
  %i.bf = invoke { <2 x float>, <2 x float> } %i.be(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 4 dereferenceable(16) %i.av)
          to label %bb.g unwind label %bb.k, !inline_history !77 ; 2 uses

bb.g:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
  %i.bg = extractvalue { <2 x float>, <2 x float> } %i.bf, 0
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bf, 1
  %i.bi = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.at, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.bl = insertelement <4 x float> %i.bk, float 1.000000e+00, i64 3
  %i.bm = fmul <4 x float> %i.bj, %i.bl
  %i.bn = fadd <4 x float> %i.ap, %i.bm
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !29 ; 3 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !24
  %i.bs = fneg float %i.br                        ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !24
  %i.bv = fneg float %i.bu                        ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !24
  %i.by = fneg float %i.bx                        ; 3 uses
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !31
  %.unpack.i.i = load i64, ptr %i.s, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i.i = load i64, ptr %.elt2.i5.i, align 8, !tbaa !33
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %.unpack3.i.i ; 2 uses
  %i.cb = and i64 %.unpack.i.i, 1
  %.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !34
  %i.cd = getelementptr i8, ptr %i.cc, i64 %.unpack.i.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load ptr, ptr %i.ce, align 8, !nosanitize !36
end_hunk_1
begin_hunk_2_@_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE:bb.a
  %i.x = load float, ptr %2, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !24
  %i.aa = load float, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %.unpack.i3.i = load i64, ptr %i.n, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i = load i64, ptr %.elt2.i.i, align 8, !tbaa !33
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %.unpack3.i5.i ; 2 uses
  %i.ae = and i64 %.unpack.i3.i, 1
  %.not.i6.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.ag = getelementptr i8, ptr %i.af, i64 %.unpack.i3.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load ptr, ptr %i.ah, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3.exit

bb.e:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i
  %i.aj = inttoptr i64 %.unpack.i3.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3.exit

_ZNK12gjkepa2_impl13MinkowskiDiff7SupportERK9btVector3.exit: ; preds = %bb.d, %bb.e
  %i.ak = phi ptr [ %i.ai, %bb.d ], [ %i.aj, %bb.e ]
  %i.al = fneg float %i.aa                        ; 3 uses
  %i.am = fneg float %i.z                         ; 3 uses
  %i.an = fneg float %i.x                         ; 3 uses
  %i.ao = extractvalue { <2 x float>, <2 x float> } %i.w, 1
  %i.ap = extractvalue { <2 x float>, <2 x float> } %i.w, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load float, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !24
  %i.av = fmul float %i.au, %i.am
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.an, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !24
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.al, float %i.aw)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !24
  %i.be = fmul float %i.bd, %i.am
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.an, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !24
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.al, float %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !24
  %i.bn = fmul float %i.bm, %i.am
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.an, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !24
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.al, float %i.bo)
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.az, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.bi, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.br, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %3, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.bs, align 8
  %i.bt = call { <2 x float>, <2 x float> } %i.ak(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !79 ; 2 uses
  %i.bu = extractvalue { <2 x float>, <2 x float> } %i.bt, 0 ; 4 uses
  %i.bv = extractvalue { <2 x float>, <2 x float> } %i.bt, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.bu, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.bu, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bx = load <4 x float>, ptr %i.bw, align 8
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5.8.vec.extract.i.i = extractelement <2 x float> %i.bv, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !24
  %i.ch = fmul float %.sroa.0.4.vec.extract.i.i, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.ce, float %.sroa.0.0.vec.extract.i.i, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !24
  %i.cl = call noundef float @llvm.fmuladd.f32(float %i.ck, float %.sroa.5.8.vec.extract.i.i, float %i.ci)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !24
  %i.co = fadd float %i.cn, %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.cp = load <2 x float>, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ca, align 8, !tbaa !24 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cp, <2 x float> %i.cq, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x float> %i.cr, %i.cs
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> %i.cq, <2 x i32> <i32 0, i32 2>
  %i.cv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cv, <2 x float> %i.ct)
  %i.cx = insertelement <2 x float> %i.by, float %i.cc, i64 1
  %i.cy = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cy, <2 x float> %i.cw)
  %i.da = load <2 x float>, ptr %i.bz, align 8, !tbaa !24
  %i.db = fadd <2 x float> %i.da, %i.cz
  %i.dc = fsub <2 x float> %i.ap, %i.db
  %.sroa.515.8.vec.extract.i = extractelement <2 x float> %i.ao, i64 0
  %i.dd = fsub float %.sroa.515.8.vec.extract.i, %i.co
  %.sroa.3.12.vec.insert.i9.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dd, i64 0
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> %i.dc, ptr %i.de, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12gjkepa2_impl3GJK13EncloseOriginEv(ptr noundef nonnull align 8 dereferenceable(460) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 8           ; 5 uses
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 7 uses
  %8 = alloca %class.btVector3, align 4           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  switch i32 %i.d, label %.thread [
    i32 1, label %.preheader
    i32 2, label %bb.m
    i32 3, label %bb.ab
    i32 4, label %bb.an
  ]

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.elt2.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i32, ptr %i.g, align 8, !tbaa !8
  %i.ad = add i32 %.pre, -1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge
  %i.ae = phi i32 [ %i.ad, %.preheader ], [ %i.hx, %.critedge ] ; 2 uses
  %i.af = phi i32 [ 1, %.preheader ], [ %i.ht, %.critedge ] ; 2 uses
  %i.ag = phi ptr [ %i.b, %.preheader ], [ %i.hq, %.critedge ] ; 3 uses
  %indvars.iv262 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next263, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 4, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ak = zext i32 %i.af to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !24
  store i32 %i.ae, ptr %i.g, align 8, !tbaa !8
  %i.am = zext i32 %i.ae to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ak
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !29
  %i.aq = add i32 %i.af, 1
  store i32 %i.aq, ptr %i.aj, align 8, !tbaa !22
  %i.ar = load <2 x float>, ptr %7, align 8, !tbaa !24 ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ar, %i.ar
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.au = call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as)
  %i.av = load float, ptr %i.e, align 8, !tbaa !24 ; 4 uses
  %i.aw = call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.au)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.aw)
  %i.ax = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fmul <2 x float> %i.ar, %i.az
  %i.bb = fmul float %i.av, %i.ax
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bb, i64 0
  store <2 x float> %i.ba, ptr %i.ao, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !25
  %i.bc = load ptr, ptr %0, align 8, !tbaa !31
  %.unpack.i.i.i = load i64, ptr %i.h, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i.i.i = load i64, ptr %.elt2.i.i.i, align 8, !tbaa !33
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %.unpack3.i.i.i ; 2 uses
  %i.be = and i64 %.unpack.i.i.i, 1
  %.not.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bg = getelementptr i8, ptr %i.bf, i64 %.unpack.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = load ptr, ptr %i.bh, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.bj = inttoptr i64 %.unpack.i.i.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i: ; preds = %bb.d, %bb.c
  %i.bk = phi ptr [ %i.bi, %bb.c ], [ %i.bj, %bb.d ]
  %i.bl = call { <2 x float>, <2 x float> } %i.bk(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 4 dereferenceable(32) %i.ao), !inline_history !50 ; 2 uses
  %i.bm = load float, ptr %i.ao, align 4, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !24
  %i.bp = load float, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !24
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !31
  %.unpack.i3.i.i = load i64, ptr %i.h, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i.i = load i64, ptr %.elt2.i.i.i, align 8, !tbaa !33
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %.unpack3.i5.i.i ; 2 uses
  %i.bs = and i64 %.unpack.i3.i.i, 1
  %.not.i6.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !34
  %i.bu = getelementptr i8, ptr %i.bt, i64 %.unpack.i3.i.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load ptr, ptr %i.bv, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit

bb.f:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i
  %i.bx = inttoptr i64 %.unpack.i3.i.i to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit: ; preds = %bb.e, %bb.f
  %i.by = phi ptr [ %i.bw, %bb.e ], [ %i.bx, %bb.f ]
  %i.bz = fneg float %i.bp                        ; 3 uses
  %i.ca = fneg float %i.bo                        ; 3 uses
  %i.cb = fneg float %i.bm                        ; 3 uses
  %i.cc = extractvalue { <2 x float>, <2 x float> } %i.bl, 1
  %i.cd = extractvalue { <2 x float>, <2 x float> } %i.bl, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.ce = load float, ptr %i.k, align 8, !tbaa !24
  %i.cf = load float, ptr %i.l, align 4, !tbaa !24
  %i.cg = fmul float %i.cf, %i.ca
  %i.ch = call float @llvm.fmuladd.f32(float %i.ce, float %i.cb, float %i.cg)
  %i.ci = load float, ptr %i.m, align 8, !tbaa !24
  %i.cj = call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.bz, float %i.ch)
  %i.ck = load float, ptr %i.n, align 8, !tbaa !24
  %i.cl = load float, ptr %i.o, align 4, !tbaa !24
  %i.cm = fmul float %i.cl, %i.ca
  %i.cn = call float @llvm.fmuladd.f32(float %i.ck, float %i.cb, float %i.cm)
  %i.co = load float, ptr %i.p, align 8, !tbaa !24
  %i.cp = call noundef float @llvm.fmuladd.f32(float %i.co, float %i.bz, float %i.cn)
  %i.cq = load float, ptr %i.q, align 8, !tbaa !24
  %i.cr = load float, ptr %i.r, align 4, !tbaa !24
  %i.cs = fmul float %i.cr, %i.ca
  %i.ct = call float @llvm.fmuladd.f32(float %i.cq, float %i.cb, float %i.cs)
  %i.cu = load float, ptr %i.s, align 8, !tbaa !24
  %i.cv = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.bz, float %i.ct)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.cj, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.cp, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i, ptr %i.t, align 8
  %i.cw = call { <2 x float>, <2 x float> } %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %6), !inline_history !51 ; 2 uses
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cw, 0 ; 4 uses
  %i.cy = extractvalue { <2 x float>, <2 x float> } %i.cw, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %i.cx, i64 0
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %i.cx, i64 1
  %i.cz = load <4 x float>, ptr %i.u, align 8
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5.8.vec.extract.i.i.i = extractelement <2 x float> %i.cy, i64 0
  %i.db = load float, ptr %i.x, align 8, !tbaa !24
  %i.dc = load float, ptr %i.y, align 8, !tbaa !24
  %i.dd = load float, ptr %i.z, align 4, !tbaa !24
  %i.de = fmul float %.sroa.0.4.vec.extract.i.i.i, %i.dd
  %i.df = call float @llvm.fmuladd.f32(float %i.dc, float %.sroa.0.0.vec.extract.i.i.i, float %i.de)
  %i.dg = load float, ptr %i.aa, align 8, !tbaa !24
  %i.dh = call noundef float @llvm.fmuladd.f32(float %i.dg, float %.sroa.5.8.vec.extract.i.i.i, float %i.df)
  %i.di = load float, ptr %i.ab, align 8, !tbaa !24
  %i.dj = fadd float %i.di, %i.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.dk = load <2 x float>, ptr %i.j, align 8, !tbaa !24 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.w, align 8, !tbaa !24 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 1, i32 3>
  %i.dn = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.do = fmul <2 x float> %i.dm, %i.dn
  %i.dp = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.dq, <2 x float> %i.do)
  %i.ds = insertelement <2 x float> %i.da, float %i.db, i64 1
  %i.dt = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dt, <2 x float> %i.dr)
  %i.dv = load <2 x float>, ptr %i.v, align 8, !tbaa !24
  %i.dw = fadd <2 x float> %i.dv, %i.du
  %i.dx = fsub <2 x float> %i.cd, %i.dw
  %.sroa.515.8.vec.extract.i.i = extractelement <2 x float> %i.cc, i64 0
  %i.dy = fsub float %.sroa.515.8.vec.extract.i.i, %i.dj
  %.sroa.3.12.vec.insert.i9.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dy, i64 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x float> %i.dx, ptr %i.dz, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !25
  %i.ea = call noundef zeroext i1 @_ZN12gjkepa2_impl3GJK13EncloseOriginEv(ptr noundef nonnull align 8 dereferenceable(460) %0)
  br i1 %i.ea, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !22
  %i.ee = add i32 %i.ed, -1
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !29 ; 9 uses
  %i.ei = load i32, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ej
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !29
  %i.el = fneg <2 x float> %i.ar
  %i.em = fneg float %i.av
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ef
  store float 0.000000e+00, ptr %i.eo, align 4, !tbaa !24
  store i32 %i.ei, ptr %i.g, align 8, !tbaa !8
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !29
  %i.ep = fmul <2 x float> %i.az, %i.el
  %i.eq = fmul float %i.ax, %i.em
  %.sroa.3.12.vec.insert.i.i.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eq, i64 0
  store <2 x float> %i.ep, ptr %i.eh, align 4
  %.sroa.42.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i74, ptr %.sroa.42.0..sroa_idx.i75, align 4, !tbaa !25
  %i.er = load ptr, ptr %0, align 8, !tbaa !31
  %.unpack.i.i.i76 = load i64, ptr %i.h, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i.i.i78 = load i64, ptr %.elt2.i.i.i, align 8, !tbaa !33
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %.unpack3.i.i.i78 ; 2 uses
  %i.et = and i64 %.unpack.i.i.i76, 1
  %.not.i.i.i79 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !34
  %i.ev = getelementptr i8, ptr %i.eu, i64 %.unpack.i.i.i76
  %i.ew = getelementptr i8, ptr %i.ev, i64 -1
  %i.ex = load ptr, ptr %i.ew, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i80

bb.i:                                             ; preds = %bb.g
  %i.ey = inttoptr i64 %.unpack.i.i.i76 to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i80

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i80: ; preds = %bb.i, %bb.h
  %i.ez = phi ptr [ %i.ex, %bb.h ], [ %i.ey, %bb.i ]
  %i.fa = call { <2 x float>, <2 x float> } %i.ez(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 4 dereferenceable(32) %i.eh), !inline_history !50 ; 2 uses
  %i.fb = load float, ptr %i.eh, align 4, !tbaa !24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !24
  %i.fe = load float, ptr %.sroa.42.0..sroa_idx.i75, align 4, !tbaa !24
  %i.ff = load ptr, ptr %i.i, align 8, !tbaa !31
  %.unpack.i3.i.i81 = load i64, ptr %i.h, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i.i82 = load i64, ptr %.elt2.i.i.i, align 8, !tbaa !33
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %.unpack3.i5.i.i82 ; 2 uses
  %i.fh = and i64 %.unpack.i3.i.i81, 1
  %.not.i6.i.i83 = icmp eq i64 %i.fh, 0
  br i1 %.not.i6.i.i83, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i80
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !34
  %i.fj = getelementptr i8, ptr %i.fi, i64 %.unpack.i3.i.i81
  %i.fk = getelementptr i8, ptr %i.fj, i64 -1
  %i.fl = load ptr, ptr %i.fk, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit97

bb.k:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i80
  %i.fm = inttoptr i64 %.unpack.i3.i.i81 to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit97

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit97: ; preds = %bb.j, %bb.k
  %i.fn = phi ptr [ %i.fl, %bb.j ], [ %i.fm, %bb.k ]
  %i.fo = fneg float %i.fe                        ; 3 uses
  %i.fp = fneg float %i.fd                        ; 3 uses
  %i.fq = fneg float %i.fb                        ; 3 uses
  %i.fr = extractvalue { <2 x float>, <2 x float> } %i.fa, 1
  %i.fs = extractvalue { <2 x float>, <2 x float> } %i.fa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ft = load float, ptr %i.k, align 8, !tbaa !24
  %i.fu = load float, ptr %i.l, align 4, !tbaa !24
  %i.fv = fmul float %i.fu, %i.fp
  %i.fw = call float @llvm.fmuladd.f32(float %i.ft, float %i.fq, float %i.fv)
  %i.fx = load float, ptr %i.m, align 8, !tbaa !24
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.fo, float %i.fw)
  %i.fz = load float, ptr %i.n, align 8, !tbaa !24
  %i.ga = load float, ptr %i.o, align 4, !tbaa !24
  %i.gb = fmul float %i.ga, %i.fp
  %i.gc = call float @llvm.fmuladd.f32(float %i.fz, float %i.fq, float %i.gb)
  %i.gd = load float, ptr %i.p, align 8, !tbaa !24
  %i.ge = call noundef float @llvm.fmuladd.f32(float %i.gd, float %i.fo, float %i.gc)
  %i.gf = load float, ptr %i.q, align 8, !tbaa !24
  %i.gg = load float, ptr %i.r, align 4, !tbaa !24
  %i.gh = fmul float %i.gg, %i.fp
  %i.gi = call float @llvm.fmuladd.f32(float %i.gf, float %i.fq, float %i.gh)
  %i.gj = load float, ptr %i.s, align 8, !tbaa !24
  %i.gk = call noundef float @llvm.fmuladd.f32(float %i.gj, float %i.fo, float %i.gi)
  %.sroa.0.0.vec.insert.i.i.i.i84 = insertelement <2 x float> poison, float %i.fy, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i85 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i84, float %i.ge, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gk, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i85, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i86, ptr %i.ac, align 8
  %i.gl = call { <2 x float>, <2 x float> } %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 4 dereferenceable(16) %5), !inline_history !51 ; 2 uses
  %i.gm = extractvalue { <2 x float>, <2 x float> } %i.gl, 0 ; 4 uses
  %i.gn = extractvalue { <2 x float>, <2 x float> } %i.gl, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i87 = extractelement <2 x float> %i.gm, i64 0
  %.sroa.0.4.vec.extract.i.i.i88 = extractelement <2 x float> %i.gm, i64 1
  %i.go = load <4 x float>, ptr %i.u, align 8
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5.8.vec.extract.i.i.i89 = extractelement <2 x float> %i.gn, i64 0
  %i.gq = load float, ptr %i.x, align 8, !tbaa !24
  %i.gr = load float, ptr %i.y, align 8, !tbaa !24
  %i.gs = load float, ptr %i.z, align 4, !tbaa !24
  %i.gt = fmul float %.sroa.0.4.vec.extract.i.i.i88, %i.gs
  %i.gu = call float @llvm.fmuladd.f32(float %i.gr, float %.sroa.0.0.vec.extract.i.i.i87, float %i.gt)
  %i.gv = load float, ptr %i.aa, align 8, !tbaa !24
  %i.gw = call noundef float @llvm.fmuladd.f32(float %i.gv, float %.sroa.5.8.vec.extract.i.i.i89, float %i.gu)
  %i.gx = load float, ptr %i.ab, align 8, !tbaa !24
  %i.gy = fadd float %i.gx, %i.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.gz = load <2 x float>, ptr %i.j, align 8, !tbaa !24 ; 2 uses
  %i.ha = load <2 x float>, ptr %i.w, align 8, !tbaa !24 ; 2 uses
  %i.hb = shufflevector <2 x float> %i.gz, <2 x float> %i.ha, <2 x i32> <i32 1, i32 3>
  %i.hc = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = fmul <2 x float> %i.hb, %i.hc
  %i.he = shufflevector <2 x float> %i.gz, <2 x float> %i.ha, <2 x i32> <i32 0, i32 2>
  %i.hf = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.hf, <2 x float> %i.hd)
  %i.hh = insertelement <2 x float> %i.gp, float %i.gq, i64 1
  %i.hi = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hi, <2 x float> %i.hg)
  %i.hk = load <2 x float>, ptr %i.v, align 8, !tbaa !24
  %i.hl = fadd <2 x float> %i.hk, %i.hj
  %i.hm = fsub <2 x float> %i.fs, %i.hl
  %.sroa.515.8.vec.extract.i.i92 = extractelement <2 x float> %i.fr, i64 0
  %i.hn = fsub float %.sroa.515.8.vec.extract.i.i92, %i.gy
  %.sroa.3.12.vec.insert.i9.i.i95 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hn, i64 0
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x float> %i.hm, ptr %i.ho, align 4
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i95, ptr %.sroa.4.0..sroa_idx.i96, align 4, !tbaa !25
  %i.hp = call noundef zeroext i1 @_ZN12gjkepa2_impl3GJK13EncloseOriginEv(ptr noundef nonnull align 8 dereferenceable(460) %0)
  br i1 %i.hp, label %bb.l, label %.critedge

.critedge:                                        ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit97
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 48 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !22
  %i.ht = add i32 %i.hs, -1                       ; 3 uses
  store i32 %i.ht, ptr %i.hr, align 8, !tbaa !22
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !29
  %i.hx = load i32, ptr %i.g, align 8, !tbaa !8   ; 3 uses
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.g, align 8, !tbaa !8
  %i.hz = zext i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hz
  store ptr %i.hw, ptr %i.ia, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next263, 3
  br i1 %exitcond265.not, label %.thread, label %bb.b

bb.l:                                             ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.ao

bb.m:                                             ; preds = %bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !29 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load float, ptr %i.id, align 4, !tbaa !24
  %i.ih = load float, ptr %i.if, align 4, !tbaa !24
  %i.ii = fsub float %i.ig, %i.ih                 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 20
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 20
  %i.il = load <2 x float>, ptr %i.ij, align 4, !tbaa !24
  %i.im = load <2 x float>, ptr %i.ik, align 4, !tbaa !24
  %i.in = fsub <2 x float> %i.il, %i.im           ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.elt2.i.i.i104 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jn = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jo = insertelement <2 x float> %i.jn, float %i.ii, i64 1
  %i.jp = extractelement <2 x float> %i.in, i64 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.z
  %i.jq = phi ptr [ %i.b, %bb.m ], [ %i.ry, %bb.z ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jr, align 4, !tbaa !24
  %i.js = load float, ptr %8, align 4, !tbaa !24  ; 2 uses
  %i.jt = load <2 x float>, ptr %i.io, align 4, !tbaa !24 ; 3 uses
  %i.ju = fneg <2 x float> %i.jt
  %i.jv = fmul <2 x float> %i.jo, %i.ju
  %i.jw = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jx = insertelement <2 x float> %i.jw, float %i.js, i64 1
  %i.jy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.jx, <2 x float> %i.jv) ; 5 uses
  %i.jz = fneg float %i.js
  %i.ka = fmul float %i.jp, %i.jz
  %i.kb = extractelement <2 x float> %i.jt, i64 0
  %i.kc = call float @llvm.fmuladd.f32(float %i.ii, float %i.kb, float %i.ka) ; 4 uses
  %foldExtExtBinop270 = fmul <2 x float> %i.jy, %i.jy
  %i.kd = extractelement <2 x float> %foldExtExtBinop270, i64 1
  %i.ke = extractelement <2 x float> %i.jy, i64 0 ; 2 uses
  %i.kf = call float @llvm.fmuladd.f32(float %i.ke, float %i.ke, float %i.kd)
  %i.kg = call noundef float @llvm.fmuladd.f32(float %i.kc, float %i.kc, float %i.kf) ; 2 uses
  %i.kh = fcmp ogt float %i.kg, 0.000000e+00
  br i1 %i.kh, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jq, i64 48 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !22 ; 2 uses
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kl
  store float 0.000000e+00, ptr %i.km, align 4, !tbaa !24
  %i.kn = load i32, ptr %i.iq, align 8, !tbaa !8
  %i.ko = add i32 %i.kn, -1                       ; 2 uses
  store i32 %i.ko, ptr %i.iq, align 8, !tbaa !8
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.kp
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !29 ; 8 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.kl
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !29
  %i.kt = add i32 %i.kk, 1
  store i32 %i.kt, ptr %i.kj, align 8, !tbaa !22
  %sqrt.i.i98 = call noundef float @llvm.sqrt.f32(float %i.kg)
  %i.ku = fdiv float 1.000000e+00, %sqrt.i.i98    ; 3 uses
  %i.kv = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kx = fmul <2 x float> %i.jy, %i.kw
  %i.ky = fmul float %i.kc, %i.ku
  %.sroa.3.12.vec.insert.i.i.i101 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ky, i64 0
  store <2 x float> %i.kx, ptr %i.kr, align 4
  %.sroa.42.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i101, ptr %.sroa.42.0..sroa_idx.i102, align 4, !tbaa !25
  %i.kz = load ptr, ptr %0, align 8, !tbaa !31
  %.unpack.i.i.i103 = load i64, ptr %i.ir, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i.i.i105 = load i64, ptr %.elt2.i.i.i104, align 8, !tbaa !33
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %.unpack3.i.i.i105 ; 2 uses
  %i.lb = and i64 %.unpack.i.i.i103, 1
  %.not.i.i.i106 = icmp eq i64 %i.lb, 0
  br i1 %.not.i.i.i106, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lc = load ptr, ptr %i.la, align 8, !tbaa !34
  %i.ld = getelementptr i8, ptr %i.lc, i64 %.unpack.i.i.i103
  %i.le = getelementptr i8, ptr %i.ld, i64 -1
  %i.lf = load ptr, ptr %i.le, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i107

bb.q:                                             ; preds = %bb.o
  %i.lg = inttoptr i64 %.unpack.i.i.i103 to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i107

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i107: ; preds = %bb.q, %bb.p
  %i.lh = phi ptr [ %i.lf, %bb.p ], [ %i.lg, %bb.q ]
  %i.li = call { <2 x float>, <2 x float> } %i.lh(ptr noundef nonnull align 8 dereferenceable(24) %i.la, ptr noundef nonnull align 4 dereferenceable(32) %i.kr), !inline_history !50 ; 2 uses
  %i.lj = load float, ptr %i.kr, align 4, !tbaa !24
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !24
  %i.lm = load float, ptr %.sroa.42.0..sroa_idx.i102, align 4, !tbaa !24
  %i.ln = load ptr, ptr %i.is, align 8, !tbaa !31
  %.unpack.i3.i.i108 = load i64, ptr %i.ir, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i.i109 = load i64, ptr %.elt2.i.i.i104, align 8, !tbaa !33
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 %.unpack3.i5.i.i109 ; 2 uses
  %i.lp = and i64 %.unpack.i3.i.i108, 1
  %.not.i6.i.i110 = icmp eq i64 %i.lp, 0
  br i1 %.not.i6.i.i110, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i107
  %i.lq = load ptr, ptr %i.lo, align 8, !tbaa !34
  %i.lr = getelementptr i8, ptr %i.lq, i64 %.unpack.i3.i.i108
  %i.ls = getelementptr i8, ptr %i.lr, i64 -1
  %i.lt = load ptr, ptr %i.ls, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit124

bb.s:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i107
  %i.lu = inttoptr i64 %.unpack.i3.i.i108 to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit124

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit124: ; preds = %bb.r, %bb.s
  %i.lv = phi ptr [ %i.lt, %bb.r ], [ %i.lu, %bb.s ]
  %i.lw = fneg float %i.lm                        ; 3 uses
  %i.lx = fneg float %i.ll                        ; 3 uses
  %i.ly = fneg float %i.lj                        ; 3 uses
  %i.lz = extractvalue { <2 x float>, <2 x float> } %i.li, 1
  %i.ma = extractvalue { <2 x float>, <2 x float> } %i.li, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.mb = load float, ptr %i.iu, align 8, !tbaa !24
  %i.mc = load float, ptr %i.iv, align 4, !tbaa !24
  %i.md = fmul float %i.mc, %i.lx
  %i.me = call float @llvm.fmuladd.f32(float %i.mb, float %i.ly, float %i.md)
  %i.mf = load float, ptr %i.iw, align 8, !tbaa !24
  %i.mg = call noundef float @llvm.fmuladd.f32(float %i.mf, float %i.lw, float %i.me)
  %i.mh = load float, ptr %i.ix, align 8, !tbaa !24
  %i.mi = load float, ptr %i.iy, align 4, !tbaa !24
  %i.mj = fmul float %i.mi, %i.lx
  %i.mk = call float @llvm.fmuladd.f32(float %i.mh, float %i.ly, float %i.mj)
  %i.ml = load float, ptr %i.iz, align 8, !tbaa !24
  %i.mm = call noundef float @llvm.fmuladd.f32(float %i.ml, float %i.lw, float %i.mk)
  %i.mn = load float, ptr %i.ja, align 8, !tbaa !24
  %i.mo = load float, ptr %i.jb, align 4, !tbaa !24
  %i.mp = fmul float %i.mo, %i.lx
  %i.mq = call float @llvm.fmuladd.f32(float %i.mn, float %i.ly, float %i.mp)
  %i.mr = load float, ptr %i.jc, align 8, !tbaa !24
  %i.ms = call noundef float @llvm.fmuladd.f32(float %i.mr, float %i.lw, float %i.mq)
  %.sroa.0.0.vec.insert.i.i.i.i111 = insertelement <2 x float> poison, float %i.mg, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i112 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i111, float %i.mm, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i113 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ms, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i112, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i113, ptr %i.jd, align 8
  %i.mt = call { <2 x float>, <2 x float> } %i.lv(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !51 ; 2 uses
  %i.mu = extractvalue { <2 x float>, <2 x float> } %i.mt, 0 ; 4 uses
  %i.mv = extractvalue { <2 x float>, <2 x float> } %i.mt, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i114 = extractelement <2 x float> %i.mu, i64 0
  %.sroa.0.4.vec.extract.i.i.i115 = extractelement <2 x float> %i.mu, i64 1
  %i.mw = load <4 x float>, ptr %i.je, align 8
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5.8.vec.extract.i.i.i116 = extractelement <2 x float> %i.mv, i64 0
  %i.my = load float, ptr %i.jh, align 8, !tbaa !24
  %i.mz = load float, ptr %i.ji, align 8, !tbaa !24
  %i.na = load float, ptr %i.jj, align 4, !tbaa !24
  %i.nb = fmul float %.sroa.0.4.vec.extract.i.i.i115, %i.na
  %i.nc = call float @llvm.fmuladd.f32(float %i.mz, float %.sroa.0.0.vec.extract.i.i.i114, float %i.nb)
  %i.nd = load float, ptr %i.jk, align 8, !tbaa !24
  %i.ne = call noundef float @llvm.fmuladd.f32(float %i.nd, float %.sroa.5.8.vec.extract.i.i.i116, float %i.nc)
  %i.nf = load float, ptr %i.jl, align 8, !tbaa !24
  %i.ng = fadd float %i.nf, %i.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.nh = load <2 x float>, ptr %i.it, align 8, !tbaa !24 ; 2 uses
  %i.ni = load <2 x float>, ptr %i.jg, align 8, !tbaa !24 ; 2 uses
  %i.nj = shufflevector <2 x float> %i.nh, <2 x float> %i.ni, <2 x i32> <i32 1, i32 3>
  %i.nk = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nl = fmul <2 x float> %i.nj, %i.nk
  %i.nm = shufflevector <2 x float> %i.nh, <2 x float> %i.ni, <2 x i32> <i32 0, i32 2>
  %i.nn = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.no = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nm, <2 x float> %i.nn, <2 x float> %i.nl)
  %i.np = insertelement <2 x float> %i.mx, float %i.my, i64 1
  %i.nq = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> %i.nq, <2 x float> %i.no)
  %i.ns = load <2 x float>, ptr %i.jf, align 8, !tbaa !24
  %i.nt = fadd <2 x float> %i.ns, %i.nr
  %i.nu = fsub <2 x float> %i.ma, %i.nt
  %.sroa.515.8.vec.extract.i.i119 = extractelement <2 x float> %i.lz, i64 0
  %i.nv = fsub float %.sroa.515.8.vec.extract.i.i119, %i.ng
  %.sroa.3.12.vec.insert.i9.i.i122 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nv, i64 0
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store <2 x float> %i.nu, ptr %i.nw, align 4
  %.sroa.4.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i122, ptr %.sroa.4.0..sroa_idx.i123, align 4, !tbaa !25
  %i.nx = call noundef zeroext i1 @_ZN12gjkepa2_impl3GJK13EncloseOriginEv(ptr noundef nonnull align 8 dereferenceable(460) %0)
  br i1 %i.nx, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit124
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !22
  %i.ob = add i32 %i.oa, -1
  %i.oc = zext i32 %i.ob to i64                   ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.oc ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !29 ; 9 uses
  %i.of = load i32, ptr %i.iq, align 8, !tbaa !8  ; 2 uses
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.og
  store ptr %i.oe, ptr %i.oh, align 8, !tbaa !29
  %i.oi = fneg <2 x float> %i.jy
  %i.oj = fneg float %i.kc
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.oc
  store float 0.000000e+00, ptr %i.ol, align 4, !tbaa !24
  store i32 %i.of, ptr %i.iq, align 8, !tbaa !8
  store ptr %i.oe, ptr %i.od, align 8, !tbaa !29
  %i.om = fmul <2 x float> %i.kw, %i.oi
  %i.on = fmul float %i.ku, %i.oj
  %.sroa.3.12.vec.insert.i.i.i128 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.on, i64 0
  store <2 x float> %i.om, ptr %i.oe, align 4
  %.sroa.42.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i128, ptr %.sroa.42.0..sroa_idx.i129, align 4, !tbaa !25
  %i.oo = load ptr, ptr %0, align 8, !tbaa !31
  %.unpack.i.i.i130 = load i64, ptr %i.ir, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i.i.i132 = load i64, ptr %.elt2.i.i.i104, align 8, !tbaa !33
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 %.unpack3.i.i.i132 ; 2 uses
  %i.oq = and i64 %.unpack.i.i.i130, 1
  %.not.i.i.i133 = icmp eq i64 %i.oq, 0
  br i1 %.not.i.i.i133, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.or = load ptr, ptr %i.op, align 8, !tbaa !34
  %i.os = getelementptr i8, ptr %i.or, i64 %.unpack.i.i.i130
  %i.ot = getelementptr i8, ptr %i.os, i64 -1
  %i.ou = load ptr, ptr %i.ot, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i134

bb.v:                                             ; preds = %bb.t
  %i.ov = inttoptr i64 %.unpack.i.i.i130 to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i134

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i134: ; preds = %bb.v, %bb.u
  %i.ow = phi ptr [ %i.ou, %bb.u ], [ %i.ov, %bb.v ]
  %i.ox = call { <2 x float>, <2 x float> } %i.ow(ptr noundef nonnull align 8 dereferenceable(24) %i.op, ptr noundef nonnull align 4 dereferenceable(32) %i.oe), !inline_history !50 ; 2 uses
  %i.oy = load float, ptr %i.oe, align 4, !tbaa !24
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !24
  %i.pb = load float, ptr %.sroa.42.0..sroa_idx.i129, align 4, !tbaa !24
  %i.pc = load ptr, ptr %i.is, align 8, !tbaa !31
  %.unpack.i3.i.i135 = load i64, ptr %i.ir, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i.i136 = load i64, ptr %.elt2.i.i.i104, align 8, !tbaa !33
  %i.pd = getelementptr inbounds i8, ptr %i.pc, i64 %.unpack3.i5.i.i136 ; 2 uses
  %i.pe = and i64 %.unpack.i3.i.i135, 1
  %.not.i6.i.i137 = icmp eq i64 %i.pe, 0
  br i1 %.not.i6.i.i137, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i134
  %i.pf = load ptr, ptr %i.pd, align 8, !tbaa !34
  %i.pg = getelementptr i8, ptr %i.pf, i64 %.unpack.i3.i.i135
  %i.ph = getelementptr i8, ptr %i.pg, i64 -1
  %i.pi = load ptr, ptr %i.ph, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit151

bb.x:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i134
  %i.pj = inttoptr i64 %.unpack.i3.i.i135 to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit151

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit151: ; preds = %bb.w, %bb.x
  %i.pk = phi ptr [ %i.pi, %bb.w ], [ %i.pj, %bb.x ]
  %i.pl = fneg float %i.pb                        ; 3 uses
  %i.pm = fneg float %i.pa                        ; 3 uses
  %i.pn = fneg float %i.oy                        ; 3 uses
  %i.po = extractvalue { <2 x float>, <2 x float> } %i.ox, 1
  %i.pp = extractvalue { <2 x float>, <2 x float> } %i.ox, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.pq = load float, ptr %i.iu, align 8, !tbaa !24
  %i.pr = load float, ptr %i.iv, align 4, !tbaa !24
  %i.ps = fmul float %i.pr, %i.pm
  %i.pt = call float @llvm.fmuladd.f32(float %i.pq, float %i.pn, float %i.ps)
  %i.pu = load float, ptr %i.iw, align 8, !tbaa !24
  %i.pv = call noundef float @llvm.fmuladd.f32(float %i.pu, float %i.pl, float %i.pt)
  %i.pw = load float, ptr %i.ix, align 8, !tbaa !24
  %i.px = load float, ptr %i.iy, align 4, !tbaa !24
  %i.py = fmul float %i.px, %i.pm
  %i.pz = call float @llvm.fmuladd.f32(float %i.pw, float %i.pn, float %i.py)
  %i.qa = load float, ptr %i.iz, align 8, !tbaa !24
  %i.qb = call noundef float @llvm.fmuladd.f32(float %i.qa, float %i.pl, float %i.pz)
  %i.qc = load float, ptr %i.ja, align 8, !tbaa !24
  %i.qd = load float, ptr %i.jb, align 4, !tbaa !24
  %i.qe = fmul float %i.qd, %i.pm
  %i.qf = call float @llvm.fmuladd.f32(float %i.qc, float %i.pn, float %i.qe)
  %i.qg = load float, ptr %i.jc, align 8, !tbaa !24
  %i.qh = call noundef float @llvm.fmuladd.f32(float %i.qg, float %i.pl, float %i.qf)
  %.sroa.0.0.vec.insert.i.i.i.i138 = insertelement <2 x float> poison, float %i.pv, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i139 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i138, float %i.qb, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i140 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qh, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i139, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i140, ptr %i.jm, align 8
  %i.qi = call { <2 x float>, <2 x float> } %i.pk(ptr noundef nonnull align 8 dereferenceable(24) %i.pd, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !51 ; 2 uses
  %i.qj = extractvalue { <2 x float>, <2 x float> } %i.qi, 0 ; 4 uses
  %i.qk = extractvalue { <2 x float>, <2 x float> } %i.qi, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i141 = extractelement <2 x float> %i.qj, i64 0
  %.sroa.0.4.vec.extract.i.i.i142 = extractelement <2 x float> %i.qj, i64 1
  %i.ql = load <4 x float>, ptr %i.je, align 8
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5.8.vec.extract.i.i.i143 = extractelement <2 x float> %i.qk, i64 0
  %i.qn = load float, ptr %i.jh, align 8, !tbaa !24
  %i.qo = load float, ptr %i.ji, align 8, !tbaa !24
  %i.qp = load float, ptr %i.jj, align 4, !tbaa !24
  %i.qq = fmul float %.sroa.0.4.vec.extract.i.i.i142, %i.qp
  %i.qr = call float @llvm.fmuladd.f32(float %i.qo, float %.sroa.0.0.vec.extract.i.i.i141, float %i.qq)
  %i.qs = load float, ptr %i.jk, align 8, !tbaa !24
  %i.qt = call noundef float @llvm.fmuladd.f32(float %i.qs, float %.sroa.5.8.vec.extract.i.i.i143, float %i.qr)
  %i.qu = load float, ptr %i.jl, align 8, !tbaa !24
  %i.qv = fadd float %i.qu, %i.qt
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.qw = load <2 x float>, ptr %i.it, align 8, !tbaa !24 ; 2 uses
  %i.qx = load <2 x float>, ptr %i.jg, align 8, !tbaa !24 ; 2 uses
  %i.qy = shufflevector <2 x float> %i.qw, <2 x float> %i.qx, <2 x i32> <i32 1, i32 3>
  %i.qz = shufflevector <2 x float> %i.qj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ra = fmul <2 x float> %i.qy, %i.qz
  %i.rb = shufflevector <2 x float> %i.qw, <2 x float> %i.qx, <2 x i32> <i32 0, i32 2>
  %i.rc = shufflevector <2 x float> %i.qj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rb, <2 x float> %i.rc, <2 x float> %i.ra)
  %i.re = insertelement <2 x float> %i.qm, float %i.qn, i64 1
  %i.rf = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.re, <2 x float> %i.rf, <2 x float> %i.rd)
  %i.rh = load <2 x float>, ptr %i.jf, align 8, !tbaa !24
  %i.ri = fadd <2 x float> %i.rh, %i.rg
  %i.rj = fsub <2 x float> %i.pp, %i.ri
  %.sroa.515.8.vec.extract.i.i146 = extractelement <2 x float> %i.po, i64 0
  %i.rk = fsub float %.sroa.515.8.vec.extract.i.i146, %i.qv
  %.sroa.3.12.vec.insert.i9.i.i149 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rk, i64 0
  %i.rl = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store <2 x float> %i.rj, ptr %i.rl, align 4
  %.sroa.4.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i149, ptr %.sroa.4.0..sroa_idx.i150, align 4, !tbaa !25
  %i.rm = call noundef zeroext i1 @_ZN12gjkepa2_impl3GJK13EncloseOriginEv(ptr noundef nonnull align 8 dereferenceable(460) %0)
  br i1 %i.rm, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit151
  %i.rn = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 48 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !22
  %i.rq = add i32 %i.rp, -1                       ; 2 uses
  store i32 %i.rq, ptr %i.ro, align 8, !tbaa !22
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %i.rr
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !29
  %i.ru = load i32, ptr %i.iq, align 8, !tbaa !8  ; 2 uses
  %i.rv = add i32 %i.ru, 1
  store i32 %i.rv, ptr %i.iq, align 8, !tbaa !8
  %i.rw = zext i32 %i.ru to i64
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.rw
  store ptr %i.rt, ptr %i.rx, align 8, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.y
  %i.ry = phi ptr [ %i.jq, %bb.n ], [ %i.rn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.thread, label %bb.n

bb.aa:                                            ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit151, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.ao

bb.ab:                                            ; preds = %bb.a
  %i.rz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !29 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.se = load float, ptr %i.sb, align 4, !tbaa !24
  %i.sf = load float, ptr %i.sd, align 4, !tbaa !24 ; 2 uses
  %i.sg = fsub float %i.se, %i.sf                 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 20
  %i.si = load float, ptr %i.sh, align 4, !tbaa !24
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 20
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !24 ; 2 uses
  %i.sl = fsub float %i.si, %i.sk                 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !24
  %i.so = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.sp = load float, ptr %i.so, align 4, !tbaa !24 ; 2 uses
  %i.sq = fsub float %i.sn, %i.sp                 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !29 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load float, ptr %i.st, align 4, !tbaa !24
  %i.sv = fsub float %i.su, %i.sf                 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 20
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !24
  %i.sy = fsub float %i.sx, %i.sk                 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !24
  %i.tb = fsub float %i.ta, %i.sp                 ; 2 uses
  %i.tc = fneg float %i.sy
  %i.td = fmul float %i.sq, %i.tc
  %i.te = tail call float @llvm.fmuladd.f32(float %i.sl, float %i.tb, float %i.td) ; 4 uses
  %i.tf = fneg float %i.tb
  %i.tg = fmul float %i.sg, %i.tf
  %i.th = tail call float @llvm.fmuladd.f32(float %i.sq, float %i.sv, float %i.tg) ; 4 uses
  %i.ti = fneg float %i.sv
  %i.tj = fmul float %i.sl, %i.ti
  %i.tk = tail call float @llvm.fmuladd.f32(float %i.sg, float %i.sy, float %i.tj) ; 4 uses
  %i.tl = fmul float %i.th, %i.th
  %i.tm = tail call float @llvm.fmuladd.f32(float %i.te, float %i.te, float %i.tl)
  %i.tn = tail call noundef float @llvm.fmuladd.f32(float %i.tk, float %i.tk, float %i.tm) ; 2 uses
  %i.to = fcmp ogt float %i.tn, 0.000000e+00
  br i1 %i.to, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.tp = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float 0.000000e+00, ptr %i.tp, align 4, !tbaa !24
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !8
  %i.tt = add i32 %i.ts, -1                       ; 2 uses
  store i32 %i.tt, ptr %i.tr, align 8, !tbaa !8
  %i.tu = zext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.tu
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !29 ; 8 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !29
  store i32 4, ptr %i.c, align 8, !tbaa !22
  %sqrt.i.i152 = tail call noundef float @llvm.sqrt.f32(float %i.tn)
  %i.ty = fdiv float 1.000000e+00, %sqrt.i.i152   ; 6 uses
  %i.tz = fmul float %i.te, %i.ty
  %i.ua = fmul float %i.th, %i.ty
  %i.ub = fmul float %i.tk, %i.ty
  %.sroa.0.0.vec.insert.i.i.i153 = insertelement <2 x float> poison, float %i.tz, i64 0
  %.sroa.0.4.vec.insert.i.i.i154 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i153, float %i.ua, i64 1
  %.sroa.3.12.vec.insert.i.i.i155 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ub, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i154, ptr %i.tw, align 4
  %.sroa.42.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i155, ptr %.sroa.42.0..sroa_idx.i156, align 4, !tbaa !25
  %i.uc = load ptr, ptr %0, align 8, !tbaa !31
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.unpack.i.i.i157 = load i64, ptr %i.ud, align 8, !tbaa !33 ; 3 uses
  %.elt2.i.i.i158 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.unpack3.i.i.i159 = load i64, ptr %.elt2.i.i.i158, align 8, !tbaa !33
  %i.ue = getelementptr inbounds i8, ptr %i.uc, i64 %.unpack3.i.i.i159 ; 2 uses
  %i.uf = and i64 %.unpack.i.i.i157, 1
  %.not.i.i.i160 = icmp eq i64 %i.uf, 0
  br i1 %.not.i.i.i160, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ug = load ptr, ptr %i.ue, align 8, !tbaa !34
  %i.uh = getelementptr i8, ptr %i.ug, i64 %.unpack.i.i.i157
  %i.ui = getelementptr i8, ptr %i.uh, i64 -1
  %i.uj = load ptr, ptr %i.ui, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i161

bb.ae:                                            ; preds = %bb.ac
  %i.uk = inttoptr i64 %.unpack.i.i.i157 to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i161

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i161: ; preds = %bb.ae, %bb.ad
  %i.ul = phi ptr [ %i.uj, %bb.ad ], [ %i.uk, %bb.ae ]
  %i.um = tail call { <2 x float>, <2 x float> } %i.ul(ptr noundef nonnull align 8 dereferenceable(24) %i.ue, ptr noundef nonnull align 4 dereferenceable(32) %i.tw), !inline_history !50 ; 2 uses
  %i.un = load float, ptr %i.tw, align 4, !tbaa !24
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  %i.up = load float, ptr %i.uo, align 4, !tbaa !24
  %i.uq = load float, ptr %.sroa.42.0..sroa_idx.i156, align 4, !tbaa !24
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !31
  %.unpack.i3.i.i162 = load i64, ptr %i.ud, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i5.i.i163 = load i64, ptr %.elt2.i.i.i158, align 8, !tbaa !33
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 %.unpack3.i5.i.i163 ; 2 uses
  %i.uu = and i64 %.unpack.i3.i.i162, 1
  %.not.i6.i.i164 = icmp eq i64 %i.uu, 0
  br i1 %.not.i6.i.i164, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i161
  %i.uv = load ptr, ptr %i.ut, align 8, !tbaa !34
  %i.uw = getelementptr i8, ptr %i.uv, i64 %.unpack.i3.i.i162
  %i.ux = getelementptr i8, ptr %i.uw, i64 -1
  %i.uy = load ptr, ptr %i.ux, align 8, !nosanitize !36
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit178

bb.ag:                                            ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i161
  %i.uz = inttoptr i64 %.unpack.i3.i.i162 to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit178

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit178: ; preds = %bb.af, %bb.ag
  %i.va = phi ptr [ %i.uy, %bb.af ], [ %i.uz, %bb.ag ]
  %i.vb = fneg float %i.uq                        ; 3 uses
  %i.vc = fneg float %i.up                        ; 3 uses
  %i.vd = fneg float %i.un                        ; 3 uses
  %i.ve = extractvalue { <2 x float>, <2 x float> } %i.um, 1
  %i.vf = extractvalue { <2 x float>, <2 x float> } %i.um, 0
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.vi = load float, ptr %i.vh, align 8, !tbaa !24
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !24
  %i.vl = fmul float %i.vk, %i.vc
  %i.vm = tail call float @llvm.fmuladd.f32(float %i.vi, float %i.vd, float %i.vl)
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.vo = load float, ptr %i.vn, align 8, !tbaa !24
  %i.vp = tail call noundef float @llvm.fmuladd.f32(float %i.vo, float %i.vb, float %i.vm)
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.vr = load float, ptr %i.vq, align 8, !tbaa !24
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !24
  %i.vu = fmul float %i.vt, %i.vc
  %i.vv = tail call float @llvm.fmuladd.f32(float %i.vr, float %i.vd, float %i.vu)
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.vx = load float, ptr %i.vw, align 8, !tbaa !24
  %i.vy = tail call noundef float @llvm.fmuladd.f32(float %i.vx, float %i.vb, float %i.vv)
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.wa = load float, ptr %i.vz, align 8, !tbaa !24
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !24
  %i.wd = fmul float %i.wc, %i.vc
  %i.we = tail call float @llvm.fmuladd.f32(float %i.wa, float %i.vd, float %i.wd)
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.wg = load float, ptr %i.wf, align 8, !tbaa !24
  %i.wh = tail call noundef float @llvm.fmuladd.f32(float %i.wg, float %i.vb, float %i.we)
  %.sroa.0.0.vec.insert.i.i.i.i165 = insertelement <2 x float> poison, float %i.vp, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i166 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i165, float %i.vy, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wh, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i166, ptr %2, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i167, ptr %i.wi, align 8
  %i.wj = call { <2 x float>, <2 x float> } %i.va(ptr noundef nonnull align 8 dereferenceable(24) %i.ut, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !51 ; 2 uses
  %i.wk = extractvalue { <2 x float>, <2 x float> } %i.wj, 0 ; 4 uses
  %i.wl = extractvalue { <2 x float>, <2 x float> } %i.wj, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i168 = extractelement <2 x float> %i.wk, i64 0
  %.sroa.0.4.vec.extract.i.i.i169 = extractelement <2 x float> %i.wk, i64 1
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.wn = load <4 x float>, ptr %i.wm, align 8
  %i.wo = shufflevector <4 x float> %i.wn, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5.8.vec.extract.i.i.i170 = extractelement <2 x float> %i.wl, i64 0
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ws = load float, ptr %i.wr, align 8, !tbaa !24
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.wu = load float, ptr %i.wt, align 8, !tbaa !24
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !24
  %i.wx = fmul float %.sroa.0.4.vec.extract.i.i.i169, %i.ww
  %i.wy = call float @llvm.fmuladd.f32(float %i.wu, float %.sroa.0.0.vec.extract.i.i.i168, float %i.wx)
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.xa = load float, ptr %i.wz, align 8, !tbaa !24
  %i.xb = call noundef float @llvm.fmuladd.f32(float %i.xa, float %.sroa.5.8.vec.extract.i.i.i170, float %i.wy)
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.xd = load float, ptr %i.xc, align 8, !tbaa !24
  %i.xe = fadd float %i.xd, %i.xb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.xf = load <2 x float>, ptr %i.vg, align 8, !tbaa !24 ; 2 uses
  %i.xg = load <2 x float>, ptr %i.wq, align 8, !tbaa !24 ; 2 uses
  %i.xh = shufflevector <2 x float> %i.xf, <2 x float> %i.xg, <2 x i32> <i32 1, i32 3>
  %i.xi = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xj = fmul <2 x float> %i.xh, %i.xi
  %i.xk = shufflevector <2 x float> %i.xf, <2 x float> %i.xg, <2 x i32> <i32 0, i32 2>
  %i.xl = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xk, <2 x float> %i.xl, <2 x float> %i.xj)
  %i.xn = insertelement <2 x float> %i.wo, float %i.ws, i64 1
  %i.xo = shufflevector <2 x float> %i.wl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xn, <2 x float> %i.xo, <2 x float> %i.xm)
  %i.xq = load <2 x float>, ptr %i.wp, align 8, !tbaa !24
  %i.xr = fadd <2 x float> %i.xq, %i.xp
  %i.xs = fsub <2 x float> %i.vf, %i.xr
  %.sroa.515.8.vec.extract.i.i173 = extractelement <2 x float> %i.ve, i64 0
  %i.xt = fsub float %.sroa.515.8.vec.extract.i.i173, %i.xe
  %.sroa.3.12.vec.insert.i9.i.i176 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xt, i64 0
  %i.xu = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store <2 x float> %i.xs, ptr %i.xu, align 4
  %.sroa.4.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i176, ptr %.sroa.4.0..sroa_idx.i177, align 4, !tbaa !25
  %i.xv = call noundef zeroext i1 @_ZN12gjkepa2_impl3GJK13EncloseOriginEv(ptr noundef nonnull align 8 dereferenceable(460) %0)
  br i1 %i.xv, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit178
  %i.xw = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 48
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !22
  %i.xz = add i32 %i.xy, -1
  %i.ya = zext i32 %i.xz to i64                   ; 2 uses
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.ya ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !29 ; 9 uses
  %i.yd = load i32, ptr %i.tr, align 8, !tbaa !8  ; 2 uses
  %i.ye = zext i32 %i.yd to i64
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.ye
  store ptr %i.yc, ptr %i.yf, align 8, !tbaa !29
  %i.yg = fneg float %i.te
  %i.yh = fneg float %i.th
  %i.yi = fneg float %i.tk
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.ya
  store float 0.000000e+00, ptr %i.yk, align 4, !tbaa !24
  store i32 %i.yd, ptr %i.tr, align 8, !tbaa !8
  store ptr %i.yc, ptr %i.yb, align 8, !tbaa !29
  %i.yl = fmul float %i.ty, %i.yg
  %i.ym = fmul float %i.ty, %i.yh
  %i.yn = fmul float %i.ty, %i.yi
  %.sroa.0.0.vec.insert.i.i.i180 = insertelement <2 x float> poison, float %i.yl, i64 0
  %.sroa.0.4.vec.insert.i.i.i181 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i180, float %i.ym, i64 1
  %.sroa.3.12.vec.insert.i.i.i182 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yn, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i181, ptr %i.yc, align 4
  %.sroa.42.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i182, ptr %.sroa.42.0..sroa_idx.i183, align 4, !tbaa !25
  %i.yo = load ptr, ptr %0, align 8, !tbaa !31
  %.unpack.i.i.i184 = load i64, ptr %i.ud, align 8, !tbaa !33 ; 3 uses
  %.unpack3.i.i.i186 = load i64, ptr %.elt2.i.i.i158, align 8, !tbaa !33
end_hunk_2
