inline.NumInlined: 152
inline.NumDeleted: 19
begin_hunk_0_@_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult:bb.a
  %i.ch = or disjoint i8 %i.c, 3
  store i8 %i.ch, ptr %i.a, align 4
  %i.ci = fsub float 1.000000e+00, %i.bx
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.cj = extractelement <2 x float> %i.l, i64 0
  %i.ck = fsub float %i.ab, %i.cj
  %i.cl = extractelement <2 x float> %i.l, i64 1
  %i.cm = fsub float %i.ae, %i.cl
  %i.cn = fsub float %i.ah, %i.n
  %i.co = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.v, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.cv, <2 x float> %i.ct) ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 1 ; 7 uses
  %i.cy = fcmp ult float %i.cx, 0.000000e+00
  %i.cz = extractelement <2 x float> %i.cw, i64 0 ; 4 uses
  %i.da = fcmp ugt float %i.cz, %i.cx
  %or.cond119 = or i1 %i.cy, %i.da
  br i1 %or.cond119, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !15
  %i.db = or disjoint i8 %i.c, 4
  store i8 %i.db, ptr %i.a, align 4
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.dc = fneg float %i.cx
  %i.dd = fmul float %i.br, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.bo, float %i.dd) ; 3 uses
  %i.df = fcmp ole float %i.de, 0.000000e+00
  %i.dg = fcmp oge float %i.bo, 0.000000e+00
  %or.cond7 = and i1 %i.dg, %i.df
  %i.dh = fcmp ole float %i.cx, 0.000000e+00
  %or.cond9 = and i1 %i.dh, %or.cond7
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.di = fsub float %i.bo, %i.cx
  %i.dj = fdiv float %i.bo, %i.di                 ; 5 uses
  %i.dk = extractelement <2 x float> %i.r, i64 1
  %i.dl = fmul float %i.dk, %i.dj
  %i.dm = extractelement <2 x float> %i.v, i64 1
  %i.dn = fmul float %i.dm, %i.dj
  %i.do = extractelement <2 x float> %i.aa, i64 1
  %i.dp = fmul float %i.do, %i.dj
  %i.dq = fadd float %i.d, %i.dl
  %i.dr = fadd float %i.f, %i.dn
  %i.ds = fadd float %i.j, %i.dp
  %.sroa.0.0.vec.insert.i150 = insertelement <2 x float> poison, float %i.dq, i64 0
  %.sroa.0.4.vec.insert.i151 = insertelement <2 x float> %.sroa.0.0.vec.insert.i150, float %i.dr, i64 1
  %.sroa.3.12.vec.insert.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i151, ptr %5, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i152, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !16
  %i.dt = or disjoint i8 %i.c, 5
  store i8 %i.dt, ptr %i.a, align 4
  %i.du = fsub float 1.000000e+00, %i.dj
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.dv = fneg float %i.bl
  %i.dw = fmul float %i.cz, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.cx, float %i.dw) ; 2 uses
  %i.dy = fcmp ugt float %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dz = fsub float %i.bl, %i.bj                 ; 3 uses
  %i.ea = fcmp ult float %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eb = fsub float %i.cz, %i.cx                 ; 2 uses
  %i.ec = fcmp ult float %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = fadd float %i.dz, %i.eb
  %i.ee = fdiv float %i.dz, %i.ed                 ; 4 uses
  %i.ef = fsub <2 x float> %i.l, %i.k
  %i.eg = fsub float %i.n, %i.h
  %i.eh = fmul float %i.eg, %i.ee
  %i.ei = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x float> %i.ef, %i.ej
  %i.el = fadd <2 x float> %i.k, %i.ek
  %i.em = fadd float %i.h, %i.eh
  %.sroa.3.12.vec.insert.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.em, i64 0
  store <2 x float> %i.el, ptr %5, align 4
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i167, ptr %.sroa.412.0..sroa_idx, align 4, !tbaa !16
  %i.en = or disjoint i8 %i.c, 6
  store i8 %i.en, ptr %i.a, align 4
  %i.eo = fsub float 1.000000e+00, %i.ee
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ep = fadd float %i.dx, %i.de
  %i.eq = fadd float %i.bs, %i.ep
  %i.er = fdiv float 1.000000e+00, %i.eq          ; 2 uses
  %i.es = fmul float %i.de, %i.er                 ; 5 uses
  %i.et = fmul float %i.bs, %i.er                 ; 5 uses
  %i.eu = extractelement <2 x float> %i.r, i64 0
  %i.ev = fmul float %i.eu, %i.es
  %i.ew = extractelement <2 x float> %i.v, i64 0
  %i.ex = fmul float %i.ew, %i.es
  %i.ey = extractelement <2 x float> %i.aa, i64 0
  %i.ez = fmul float %i.ey, %i.es
  %i.fa = fadd float %i.d, %i.ev
  %i.fb = fadd float %i.f, %i.ex
  %i.fc = fadd float %i.j, %i.ez
  %i.fd = extractelement <2 x float> %i.r, i64 1
  %i.fe = fmul float %i.fd, %i.et
  %i.ff = extractelement <2 x float> %i.v, i64 1
  %i.fg = fmul float %i.ff, %i.et
  %i.fh = extractelement <2 x float> %i.aa, i64 1
  %i.fi = fmul float %i.fh, %i.et
  %i.fj = fadd float %i.fe, %i.fa
  %i.fk = fadd float %i.fg, %i.fb
  %i.fl = fadd float %i.fi, %i.fc
  %.sroa.0.0.vec.insert.i185 = insertelement <2 x float> poison, float %i.fj, i64 0
  %.sroa.0.4.vec.insert.i186 = insertelement <2 x float> %.sroa.0.0.vec.insert.i185, float %i.fk, i64 1
  %.sroa.3.12.vec.insert.i187 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fl, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i186, ptr %5, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i187, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %i.fm = or disjoint i8 %i.c, 7
  store i8 %i.fm, ptr %i.a, align 4
  %i.fn = fsub float 1.000000e+00, %i.es
  %i.fo = fsub float %i.fn, %i.et
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.o, %bb.n, %bb.h, %bb.b
  %.sink293 = phi float [ 0.000000e+00, %bb.d ], [ %i.ci, %bb.f ], [ %i.du, %bb.j ], [ %i.fo, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.h ], [ 1.000000e+00, %bb.b ]
  %.sink291 = phi float [ 1.000000e+00, %bb.d ], [ %i.bx, %bb.f ], [ 0.000000e+00, %bb.j ], [ %i.es, %bb.o ], [ %i.eo, %bb.n ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %.sink = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.dj, %bb.j ], [ %i.et, %bb.o ], [ %i.ee, %bb.n ], [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sink293, ptr %i.fp, align 4, !tbaa !21
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink291, ptr %i.fq, align 4, !tbaa !21
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %.sink, ptr %i.fr, align 4, !tbaa !21
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float 0.000000e+00, ptr %i.fs, align 4, !tbaa !21
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver25closestPtPointTetrahedronERK9btVector3S2_S2_S2_S2_R25btSubSimplexClosestResult(ptr nofree nonnull readnone align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(37) initializes((0, 16)) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca %struct.btSubSimplexClosestResult, align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -16
  store i8 %i.c, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !15
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, -16
  %i.g = or i8 %i.e, 15
  store i8 %i.g, ptr %i.d, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !21 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load <2 x float>, ptr %3, align 4, !tbaa !21 ; 4 uses
  %i.q = load <2 x float>, ptr %2, align 4, !tbaa !21 ; 7 uses
  %i.r = load float, ptr %i.i, align 4, !tbaa !21 ; 2 uses
  %i.s = load <2 x float>, ptr %4, align 4, !tbaa !21 ; 2 uses
  %i.t = insertelement <2 x float> poison, float %i.r, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = shufflevector <2 x float> %i.s, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  %i.w = fsub <2 x float> %i.v, %i.q              ; 5 uses
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.y = load <2 x float>, ptr %5, align 4, !tbaa !21 ; 3 uses
  %i.z = load float, ptr %i.o, align 4, !tbaa !21 ; 2 uses
  %i.aa = extractelement <2 x float> %i.q, i64 1  ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.p, %i.q  ; 5 uses
  %i.ab = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ad = fsub <2 x float> %i.y, %i.q             ; 7 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 1
  %i.af = extractelement <2 x float> %i.ad, i64 0
  %i.ag = fneg float %i.af
  %i.ah = fneg float %i.ac
  %i.ai = fmul float %i.ae, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.ad, <2 x float> %i.x, <2 x i32> <i32 0, i32 3>
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.am = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.al, <2 x i32> <i32 0, i32 3>
  %i.an = shufflevector <2 x float> %i.w, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.ao = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = load <2 x float>, ptr %i.h, align 4, !tbaa !21 ; 6 uses
  %i.aq = load <2 x float>, ptr %i.j, align 4, !tbaa !21 ; 3 uses
  %i.ar = load float, ptr %i.k, align 4, !tbaa !21
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 3, i32 1>
  %i.at = fsub <2 x float> %i.as, %i.u            ; 8 uses
  %i.au = extractelement <2 x float> %i.aq, i64 0
  %i.av = fsub float %i.au, %i.aa                 ; 5 uses
  %i.aw = fmul float %i.av, %i.ag
  %i.ax = insertelement <2 x float> %i.aj, float %i.aw, i64 1
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.ad, <2 x float> %i.ax) ; 2 uses
  %i.az = insertelement <2 x float> %i.w, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.p, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.bb = fsub <2 x float> %i.y, %i.ba            ; 2 uses
  %i.bc = shufflevector <2 x float> %i.s, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.bd = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = fsub <2 x float> %i.bc, %i.bd           ; 2 uses
  %i.bf = insertelement <2 x float> %i.aq, float %i.z, i64 1
  %i.bg = fsub <2 x float> %i.bf, %i.ap           ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = extractelement <2 x float> %i.ap, i64 1
  %i.bj = fsub float %i.ar, %i.bi                 ; 2 uses
  %i.bk = shufflevector <2 x float> %i.at, <2 x float> %i.w, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.bl = insertelement <4 x float> %i.bk, float %i.av, i64 0
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bo = fneg <4 x float> %i.bn
  %i.bp = shufflevector <2 x float> %i.at, <2 x float> %i.w, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.ab, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.br = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> %i.bq, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bt = fmul <4 x float> %i.bs, %i.bo
  %i.bu = shufflevector <2 x float> %i.at, <2 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.bv = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bx = insertelement <4 x float> %i.ao, float %i.av, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bj, i64 3
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.by, <4 x float> %i.bt) ; 4 uses
  %i.ca = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x float> %i.ca, float %i.bj, i64 0
  %i.cc = fneg <2 x float> %i.cb
  %i.cd = fmul <2 x float> %i.bb, %i.cc
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bh, <2 x float> %i.cd) ; 2 uses
  %i.cf = load <2 x float>, ptr %1, align 4, !tbaa !21 ; 4 uses
  %i.cg = load float, ptr %i.l, align 4, !tbaa !21 ; 2 uses
  %foldExtExtBinop242 = fsub <2 x float> %i.cf, %i.q ; 2 uses
  %i.ch = fsub float %i.cg, %i.aa                 ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.n, i64 0 ; 2 uses
  %i.cj = insertelement <2 x float> %i.ci, float %i.z, i64 1
  %i.ck = fsub <2 x float> %i.cj, %i.u            ; 6 uses
  %i.cl = insertelement <2 x float> %i.ad, float %i.ch, i64 0
  %i.cm = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul <2 x float> %i.cl, %i.cm
  %i.co = shufflevector <2 x float> %foldExtExtBinop242, <2 x float> %i.al, <2 x i32> <i32 0, i32 3>
  %i.cp = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cp, <2 x float> %i.cn)
  %i.cr = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cr, <2 x float> %i.cq) ; 2 uses
  %i.ct = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <2 x float> %i.x, <2 x float> %i.ad, <2 x i32> <i32 0, i32 3>
  %9 = fneg <2 x float> %8
  %i.cu = shufflevector <2 x float> %i.ck, <2 x float> %i.at, <2 x i32> <i32 1, i32 2>
  %i.cv = fmul <2 x float> %i.cu, %9
  %10 = insertelement <2 x float> %i.al, float %i.av, i64 1
  %i.cw = shufflevector <2 x float> %i.at, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.cw, <2 x float> %i.cv) ; 2 uses
  %11 = shufflevector <2 x float> %i.at, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cy = fneg <2 x float> %11
  %i.cz = fmul <2 x float> %i.ak, %i.cy
  %12 = shufflevector <2 x float> %i.ck, <2 x float> %i.at, <2 x i32> <i32 1, i32 2>
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.am, <2 x float> %i.cz) ; 2 uses
  %i.db = fmul <2 x float> %i.az, %i.da
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.cx, <2 x float> %i.db)
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.ay, <2 x float> %i.dc) ; 3 uses
  %i.de = fmul <2 x float> %i.dd, %i.dd
  %i.df = fcmp olt <2 x float> %i.de, splat (float f0x322BCC76)
  %i.dg = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = shufflevector <2 x float> %foldExtExtBinop242, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.dh, %i.da
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.cx, <2 x float> %i.dj)
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.ay, <2 x float> %i.dk)
  %i.dm = fmul <2 x float> %i.dl, %i.dd
  %i.dn = fcmp olt <2 x float> %i.dm, zeroinitializer
  %i.do = zext <2 x i1> %i.dn to <2 x i8>
  %i.dp = select <2 x i1> %i.df, <2 x i8> splat (i8 -1), <2 x i8> %i.do ; 3 uses
  %i.dq = shufflevector <2 x float> %i.cf, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.dr = fsub <2 x float> %i.dq, %i.bd
  %i.ds = shufflevector <2 x float> %i.q, <2 x float> %i.cf, <2 x i32> <i32 3, i32 1>
  %i.dt = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fsub <2 x float> %i.ds, %i.dt
  %i.dv = insertelement <2 x float> %i.ci, float %i.r, i64 1
  %i.dw = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = fsub <2 x float> %i.dv, %i.dw
  %i.dy = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.du, %i.dy
  %i.ea = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.ea, <2 x float> %i.dz)
  %i.ec = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.ec, <2 x float> %i.eb) ; 2 uses
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> %i.cs, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> %i.cs, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.eg = fmul <4 x float> %i.ee, %i.ef
  %i.eh = fcmp olt <4 x float> %i.eg, <float 0.000000e+00, float 0.000000e+00, float f0x322BCC76, float f0x322BCC76> ; 4 uses
  %i.ei = extractelement <4 x i1> %i.eh, i64 1
  %i.ej = zext i1 %i.ei to i32
  %i.ek = extractelement <4 x i1> %i.eh, i64 3
  %.0.i = select i1 %i.ek, i32 -1, i32 %i.ej      ; 2 uses
  %i.el = extractelement <4 x i1> %i.eh, i64 0
  %i.em = zext i1 %i.el to i32
  %i.en = extractelement <4 x i1> %i.eh, i64 2
  %.0.i135 = select i1 %i.en, i32 -1, i32 %i.em   ; 2 uses
  %i.eo = extractelement <2 x i8> %i.dp, i64 0
  %i.ep = extractelement <2 x i8> %i.dp, i64 1
  %i.eq = or i8 %i.eo, %i.ep
  %i.er = sext i8 %i.eq to i32
  %i.es = or i32 %.0.i, %i.er
  %i.et = or i32 %i.es, %.0.i135                  ; 2 uses
  %or.cond5.not = icmp sgt i32 %i.et, -1
  br i1 %or.cond5.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 1, ptr %i.eu, align 4, !tbaa !24
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.ev = icmp eq <2 x i8> %i.dp, zeroinitializer ; 2 uses
  %.not126 = icmp eq i32 %.0.i135, 0
  %or.cond11.not = icmp eq i32 %i.et, 0
  br i1 %or.cond11.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ew = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.ex = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8231.0.copyload = load float, ptr %.sroa.8231.0..sroa_idx, align 8 ; 2 uses
  %foldExtExtBinop244 = fsub <2 x float> %i.ex, %i.cf
  %i.ey = extractelement <2 x float> %foldExtExtBinop244, i64 0 ; 2 uses
  %i.ez = extractelement <2 x float> %i.ex, i64 1
  %i.fa = fsub float %i.ez, %i.cg                 ; 2 uses
  %i.fb = fsub float %.sroa.8231.0.copyload, %i.n ; 2 uses
  %i.fc = fmul float %i.fa, %i.fa
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.fc)
  %i.fe = tail call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fd) ; 2 uses
  %i.ff = fcmp olt float %i.fe, f0x7F7FFFFF
  br i1 %i.ff, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.10235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10235.0.copyload = load float, ptr %.sroa.10235.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %i.ex, ptr %6, align 4
  %.sroa.8231.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8231.0.copyload, ptr %.sroa.8231.0..sroa_idx232, align 4
  %.sroa.10235.0..sroa_idx236 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10235.0.copyload, ptr %.sroa.10235.0..sroa_idx236, align 4, !tbaa !16
  %i.fg = load i8, ptr %i.a, align 8
  %i.fh = and i8 %i.fg, 7
  %i.fi = or disjoint i8 %i.fh, %i.f
  store i8 %i.fi, ptr %i.d, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.fn = load <2 x float>, ptr %i.fj, align 4, !tbaa !21
  store <2 x float> %i.fn, ptr %i.fm, align 4, !tbaa !21
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.fl, ptr %i.fo, align 4, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.fp, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1117 = phi float [ f0x7F7FFFFF, %bb.d ], [ %i.fe, %bb.f ], [ f0x7F7FFFFF, %bb.e ] ; 3 uses
  %i.fq = extractelement <2 x i1> %i.ev, i64 1
  br i1 %i.fq, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fr = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.fs = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8213.0.copyload = load float, ptr %.sroa.8213.0..sroa_idx, align 8 ; 2 uses
  %i.ft = load float, ptr %1, align 4, !tbaa !21
  %i.fu = extractelement <2 x float> %i.fs, i64 0
  %i.fv = fsub float %i.fu, %i.ft                 ; 2 uses
  %i.fw = load float, ptr %i.l, align 4, !tbaa !21
  %i.fx = extractelement <2 x float> %i.fs, i64 1
  %i.fy = fsub float %i.fx, %i.fw                 ; 2 uses
  %i.fz = load float, ptr %i.m, align 4, !tbaa !21
  %i.ga = fsub float %.sroa.8213.0.copyload, %i.fz ; 2 uses
  %i.gb = fmul float %i.fy, %i.fy
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.gb)
  %i.gd = tail call noundef float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.gc) ; 2 uses
  %i.ge = fcmp olt float %i.gd, %.1117
  br i1 %i.ge, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.10217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10217.0.copyload = load float, ptr %.sroa.10217.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %i.fs, ptr %6, align 4
  %.sroa.8213.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8213.0.copyload, ptr %.sroa.8213.0..sroa_idx214, align 4
  %.sroa.10217.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10217.0.copyload, ptr %.sroa.10217.0..sroa_idx218, align 4, !tbaa !16
  %i.gf = load i8, ptr %i.d, align 4
  %i.gg = and i8 %i.gf, -16
  %i.gh = load i8, ptr %i.a, align 8              ; 2 uses
  %i.gi = and i8 %i.gh, 1
  %i.gj = shl i8 %i.gh, 1
  %i.gk = and i8 %i.gj, 12
  %i.gl = or disjoint i8 %i.gi, %i.gk
  %i.gm = or disjoint i8 %i.gl, %i.gg
  store i8 %i.gm, ptr %i.d, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.go = load float, ptr %i.gn, align 4, !tbaa !21
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.go, ptr %i.gq, align 4, !tbaa !21
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float 0.000000e+00, ptr %i.gr, align 4, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.gt = load <2 x float>, ptr %i.gp, align 8, !tbaa !21
  store <2 x float> %i.gt, ptr %i.gs, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.3 = phi float [ %.1117, %bb.g ], [ %i.gd, %bb.i ], [ %.1117, %bb.h ] ; 3 uses
  %i.gu = extractelement <2 x i1> %i.ev, i64 0
  br i1 %i.gu, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gv = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.gw = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8195.0.copyload = load float, ptr %.sroa.8195.0..sroa_idx, align 8 ; 2 uses
  %i.gx = load float, ptr %1, align 4, !tbaa !21
  %i.gy = extractelement <2 x float> %i.gw, i64 0
  %i.gz = fsub float %i.gy, %i.gx                 ; 2 uses
  %i.ha = load float, ptr %i.l, align 4, !tbaa !21
  %i.hb = extractelement <2 x float> %i.gw, i64 1
  %i.hc = fsub float %i.hb, %i.ha                 ; 2 uses
  %i.hd = load float, ptr %i.m, align 4, !tbaa !21
  %i.he = fsub float %.sroa.8195.0.copyload, %i.hd ; 2 uses
  %i.hf = fmul float %i.hc, %i.hc
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.gz, float %i.hf)
  %i.hh = tail call noundef float @llvm.fmuladd.f32(float %i.he, float %i.he, float %i.hg) ; 2 uses
  %i.hi = fcmp olt float %i.hh, %.3
  br i1 %i.hi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.10199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10199.0.copyload = load float, ptr %.sroa.10199.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %i.gw, ptr %6, align 4
  %.sroa.8195.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8195.0.copyload, ptr %.sroa.8195.0..sroa_idx196, align 4
  %.sroa.10199.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10199.0.copyload, ptr %.sroa.10199.0..sroa_idx200, align 4, !tbaa !16
  %i.hj = load i8, ptr %i.d, align 4
  %i.hk = and i8 %i.hj, -16
  %i.hl = load i8, ptr %i.a, align 8              ; 3 uses
  %i.hm = and i8 %i.hl, 1
  %i.hn = lshr i8 %i.hl, 1
  %i.ho = and i8 %i.hn, 2
  %i.hp = shl i8 %i.hl, 2
  %i.hq = and i8 %i.hp, 8
  %i.hr = or disjoint i8 %i.hm, %i.ho
  %i.hs = or disjoint i8 %i.hr, %i.hq
end_hunk_0
