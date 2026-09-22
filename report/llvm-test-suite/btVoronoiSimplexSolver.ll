Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btVoronoiSimplexSolver?download=true
inline.NumInlined: 152
inline.NumDeleted: 19
begin_hunk_0_@_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult:bb.a
  %i.bn = extractelement <2 x float> %i.ap, i64 1 ; 5 uses
  %i.bo = fneg float %i.bn
  %i.bp = fmul float %i.bi, %i.bo
  %i.bq = extractelement <2 x float> %i.ap, i64 0 ; 4 uses
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bk, float %i.bp) ; 3 uses
  %i.bs = fcmp ole float %i.br, 0.000000e+00
  %i.bt = fcmp oge float %i.bq, 0.000000e+00
  %or.cond3 = and i1 %i.bt, %i.bs
  %i.bu = fcmp ole float %i.bi, 0.000000e+00
  %or.cond5 = and i1 %i.bu, %or.cond3
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop = fsub <2 x float> %i.ap, %i.bh
  %i.bv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bw = fdiv float %i.bq, %i.bv                 ; 5 uses
  %i.bx = extractelement <2 x float> %i.u, i64 0
  %i.by = fmul float %i.bx, %i.bw
  %i.bz = extractelement <2 x float> %i.w, i64 0
  %i.ca = fmul float %i.bz, %i.bw
  %i.cb = extractelement <2 x float> %i.y, i64 0
  %i.cc = fmul float %i.cb, %i.bw
  %i.cd = fadd float %i.q, %i.by
  %i.ce = fadd float %i.ac, %i.ca
  %i.cf = fadd float %i.af, %i.cc
  %.sroa.0.0.vec.insert.i135 = insertelement <2 x float> poison, float %i.cd, i64 0
  %.sroa.0.4.vec.insert.i136 = insertelement <2 x float> %.sroa.0.0.vec.insert.i135, float %i.ce, i64 1
  %.sroa.3.12.vec.insert.i137 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cf, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i136, ptr %5, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i137, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !15
  %i.cg = or disjoint i8 %i.c, 3
  store i8 %i.cg, ptr %i.a, align 4
  %i.ch = fsub float 1.000000e+00, %i.bw
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.ci = extractelement <2 x float> %i.h, i64 0
  %i.cj = extractelement <2 x float> %i.h, i64 1
  %i.ck = fsub float %i.z, %i.cj
  %i.cl = fsub float %i.aa, %i.ci
  %i.cm = fsub float %i.ab, %i.j
  %i.cn = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.w, %i.co
  %i.cq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.cr, <2 x float> %i.cp)
  %i.ct = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.cu, <2 x float> %i.cs) ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 1 ; 7 uses
  %i.cx = fcmp ult float %i.cw, 0.000000e+00
  %i.cy = extractelement <2 x float> %i.cv, i64 0 ; 4 uses
  %i.cz = fcmp ugt float %i.cy, %i.cw
  %or.cond119 = or i1 %i.cx, %i.cz
  br i1 %or.cond119, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !16
  %i.da = or disjoint i8 %i.c, 4
  store i8 %i.da, ptr %i.a, align 4
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.db = fneg float %i.cw
  %i.dc = fmul float %i.bq, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.bn, float %i.dc) ; 3 uses
  %i.de = fcmp ole float %i.dd, 0.000000e+00
  %i.df = fcmp oge float %i.bn, 0.000000e+00
  %or.cond7 = and i1 %i.df, %i.de
  %i.dg = fcmp ole float %i.cw, 0.000000e+00
  %or.cond9 = and i1 %i.dg, %or.cond7
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dh = fsub float %i.bn, %i.cw
  %i.di = fdiv float %i.bn, %i.dh                 ; 5 uses
  %i.dj = extractelement <2 x float> %i.u, i64 1
  %i.dk = fmul float %i.dj, %i.di
  %i.dl = extractelement <2 x float> %i.w, i64 1
  %i.dm = fmul float %i.dl, %i.di
  %i.dn = extractelement <2 x float> %i.y, i64 1
  %i.do = fmul float %i.dn, %i.di
  %i.dp = fadd float %i.q, %i.dk
  %i.dq = fadd float %i.ac, %i.dm
  %i.dr = fadd float %i.af, %i.do
  %.sroa.0.0.vec.insert.i150 = insertelement <2 x float> poison, float %i.dp, i64 0
  %.sroa.0.4.vec.insert.i151 = insertelement <2 x float> %.sroa.0.0.vec.insert.i150, float %i.dq, i64 1
  %.sroa.3.12.vec.insert.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dr, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i151, ptr %5, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i152, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !15
  %i.ds = or disjoint i8 %i.c, 5
  store i8 %i.ds, ptr %i.a, align 4
  %i.dt = fsub float 1.000000e+00, %i.di
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.du = fneg float %i.bk
  %i.dv = fmul float %i.cy, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.cw, float %i.dv) ; 2 uses
  %i.dx = fcmp ugt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = fsub float %i.bk, %i.bi                 ; 3 uses
  %i.dz = fcmp ult float %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = fsub float %i.cy, %i.cw                 ; 2 uses
  %i.eb = fcmp ult float %i.ea, 0.000000e+00
  br i1 %i.eb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = fadd float %i.dy, %i.ea
  %i.ed = fdiv float %i.dy, %i.ec                 ; 4 uses
  %i.ee = fsub <2 x float> %i.h, %i.g
  %i.ef = fsub float %i.j, %i.f
  %i.eg = fmul float %i.ef, %i.ed
  %i.eh = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.ee, %i.ei
  %i.ek = fadd <2 x float> %i.g, %i.ej
  %i.el = fadd float %i.f, %i.eg
  %.sroa.3.12.vec.insert.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.el, i64 0
  store <2 x float> %i.ek, ptr %5, align 4
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i167, ptr %.sroa.412.0..sroa_idx, align 4, !tbaa !15
  %i.em = or disjoint i8 %i.c, 6
  store i8 %i.em, ptr %i.a, align 4
  %i.en = fsub float 1.000000e+00, %i.ed
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.eo = fadd float %i.dw, %i.dd
  %i.ep = fadd float %i.br, %i.eo
  %i.eq = fdiv float 1.000000e+00, %i.ep          ; 2 uses
  %i.er = extractelement <2 x float> %i.u, i64 0
  %i.es = extractelement <2 x float> %i.u, i64 1
  %i.et = fmul float %i.dd, %i.eq                 ; 4 uses
  %i.eu = fmul float %i.br, %i.eq                 ; 4 uses
  %i.ev = fmul float %i.er, %i.et
  %i.ew = shufflevector <2 x float> %i.w, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.ex = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ew, %i.ey
  %i.fa = fadd float %i.q, %i.ev
  %i.fb = fadd <2 x float> %i.r, %i.ez
  %i.fc = fmul float %i.es, %i.eu
  %i.fd = shufflevector <2 x float> %i.w, <2 x float> %i.y, <2 x i32> <i32 1, i32 3>
  %i.fe = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x float> %i.fd, %i.ff
  %i.fh = fadd float %i.fc, %i.fa
  %i.fi = fadd <2 x float> %i.fg, %i.fb           ; 2 uses
  %.sroa.0.0.vec.insert.i185 = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fj = shufflevector <2 x float> %.sroa.0.0.vec.insert.i185, <2 x float> %i.fi, <2 x i32> <i32 0, i32 2>
  %i.fk = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.fi, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.fj, ptr %5, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.fk, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %i.fl = or disjoint i8 %i.c, 7
  store i8 %i.fl, ptr %i.a, align 4
  %i.fm = fsub float 1.000000e+00, %i.et
  %i.fn = fsub float %i.fm, %i.eu
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.o, %bb.n, %bb.h, %bb.b
  %.sink293 = phi float [ 0.000000e+00, %bb.d ], [ %i.ch, %bb.f ], [ %i.dt, %bb.j ], [ %i.fn, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.h ], [ 1.000000e+00, %bb.b ]
  %.sink291 = phi float [ 1.000000e+00, %bb.d ], [ %i.bw, %bb.f ], [ 0.000000e+00, %bb.j ], [ %i.et, %bb.o ], [ %i.en, %bb.n ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %.sink = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.di, %bb.j ], [ %i.eu, %bb.o ], [ %i.ed, %bb.n ], [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sink293, ptr %i.fo, align 4, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink291, ptr %i.fp, align 4, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %.sink, ptr %i.fq, align 4, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float 0.000000e+00, ptr %i.fr, align 4, !tbaa !20
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, -16
  %i.g = or i8 %i.e, 15
  store i8 %i.g, ptr %i.d, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load <2 x float>, ptr %3, align 4, !tbaa !20 ; 5 uses
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !20 ; 7 uses
  %9 = load float, ptr %8, align 4, !tbaa !20     ; 2 uses
  %10 = load <2 x float>, ptr %4, align 4, !tbaa !20 ; 2 uses
  %11 = insertelement <2 x float> poison, float %9, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.o = shufflevector <2 x float> %10, <2 x float> %i.m, <2 x i32> <i32 0, i32 3>
  %i.p = fsub <2 x float> %i.o, %i.n              ; 7 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.r = load <2 x float>, ptr %5, align 4, !tbaa !20 ; 2 uses
  %i.s = load float, ptr %i.l, align 4, !tbaa !20 ; 2 uses
  %i.t = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.m, %i.n  ; 5 uses
  %i.u = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = load float, ptr %i.k, align 4, !tbaa !20 ; 2 uses
  %i.x = fsub <2 x float> %i.r, %i.n              ; 7 uses
  %i.y = extractelement <2 x float> %i.x, i64 1
  %i.z = extractelement <2 x float> %i.x, i64 0
  %i.aa = fneg float %i.z
  %i.ab = fneg float %i.v
  %i.ac = fmul float %i.y, %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.q, <2 x float> %i.x, <2 x i32> <i32 0, i32 3>
  %i.af = fneg <2 x float> %i.ae
  %i.ag = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ah = shufflevector <2 x float> %i.x, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.ai = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.aj = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.ak = load <2 x float>, ptr %i.h, align 4, !tbaa !20 ; 5 uses
  %i.al = load <2 x float>, ptr %i.i, align 4, !tbaa !20 ; 3 uses
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 3, i32 1>
  %i.an = fsub <2 x float> %i.am, %12             ; 7 uses
  %i.ao = extractelement <2 x float> %i.al, i64 0
  %i.ap = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 4 uses
  %i.aq = load float, ptr %i.j, align 4, !tbaa !20 ; 2 uses
  %i.ar = fsub float %i.aq, %i.t                  ; 2 uses
  %foldExtExtBinop243 = fsub <2 x float> %i.ap, %i.n ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.w, i64 0 ; 2 uses
  %i.at = insertelement <2 x float> %i.as, float %i.s, i64 1
  %i.au = fsub <2 x float> %i.at, %12             ; 4 uses
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fsub float %i.ao, %i.t                  ; 5 uses
  %i.ax = shufflevector <2 x float> %i.p, <2 x float> %i.an, <3 x i32> <i32 0, i32 poison, i32 2>
  %i.ay = insertelement <3 x float> %i.ax, float %i.aw, i64 1
  %i.az = fneg <3 x float> %i.ay
  %i.ba = shufflevector <2 x float> %i.p, <2 x float> %i.an, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bb = shufflevector <3 x float> %i.ba, <3 x float> %i.u, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bc = fmul <3 x float> %i.bb, %i.az
  %i.bd = shufflevector <2 x float> %i.p, <2 x float> %i.an, <3 x i32> <i32 poison, i32 1, i32 3>
  %i.be = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bf = shufflevector <3 x float> %i.be, <3 x float> %i.bd, <3 x i32> <i32 0, i32 4, i32 5>
  %i.bg = shufflevector <2 x float> %i.an, <2 x float> %i.p, <3 x i32> <i32 poison, i32 0, i32 2>
  %i.bh = insertelement <3 x float> %i.bg, float %i.aw, i64 0
  %i.bi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bf, <3 x float> %i.bh, <3 x float> %i.bc) ; 3 uses
  %i.bj = insertelement <2 x float> %i.x, float %i.ar, i64 0
  %i.bk = shufflevector <3 x float> %i.bi, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bl = fmul <2 x float> %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %foldExtExtBinop243, <2 x float> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.bn = shufflevector <3 x float> %i.bi, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bn, <2 x float> %i.bl)
  %i.bp = shufflevector <3 x float> %i.bi, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bp, <2 x float> %i.bo) ; 2 uses
  %i.br = fmul float %i.aw, %i.aa
  %i.bs = insertelement <2 x float> %i.ad, float %i.br, i64 1
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.x, <2 x float> %i.bs) ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = shufflevector <2 x float> %foldExtExtBinop243, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <2 x float> %i.au, <2 x float> %i.an, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.by = fmul <2 x float> %i.bx, %i.af
  %i.bz = insertelement <2 x float> %i.ag, float %i.aw, i64 1
  %i.ca = shufflevector <2 x float> %i.an, <2 x float> %i.au, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.by) ; 2 uses
  %i.cc = fneg <2 x float> %i.ca
  %i.cd = fmul <2 x float> %i.ah, %i.cc
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.ai, <2 x float> %i.cd) ; 2 uses
  %i.cf = fmul <2 x float> %i.bv, %i.ce
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.cb, <2 x float> %i.cf)
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.bt, <2 x float> %i.cg)
  %i.ci = insertelement <2 x float> %i.p, float %i.aw, i64 0
  %i.cj = fmul <2 x float> %i.ci, %i.ce
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.cb, <2 x float> %i.cj)
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.bt, <2 x float> %i.ck) ; 3 uses
  %i.cm = fmul <2 x float> %i.cl, %i.cl
  %i.cn = fcmp olt <2 x float> %i.cm, splat (float f0x322BCC76)
  %i.co = fmul <2 x float> %i.ch, %i.cl
  %i.cp = fcmp olt <2 x float> %i.co, zeroinitializer
  %i.cq = zext <2 x i1> %i.cp to <2 x i8>
  %i.cr = select <2 x i1> %i.cn, <2 x i8> splat (i8 -1), <2 x i8> %i.cq ; 3 uses
  %i.cs = shufflevector <2 x float> %i.r, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ct = insertelement <3 x float> %i.cs, float %i.s, i64 2
  %i.cu = shufflevector <2 x float> %i.m, <2 x float> %i.ak, <3 x i32> <i32 0, i32 2, i32 3>
  %i.cv = fsub <3 x float> %i.ct, %i.cu           ; 2 uses
  %i.cw = shufflevector <2 x float> %10, <2 x float> %i.al, <3 x i32> <i32 2, i32 3, i32 0>
  %i.cx = shufflevector <2 x float> %i.m, <2 x float> %i.ak, <3 x i32> <i32 2, i32 3, i32 0>
  %i.cy = fsub <3 x float> %i.cw, %i.cx           ; 2 uses
  %i.cz = fneg <3 x float> %i.cy
  %i.da = shufflevector <3 x float> %i.cv, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.db = shufflevector <3 x float> %i.cz, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.dc = fmul <3 x float> %i.da, %i.db
  %i.dd = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cv, <3 x float> %i.cy, <3 x float> %i.dc) ; 3 uses
  %i.de = shufflevector <2 x float> %i.ap, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fsub <2 x float> %i.de, %i.df
  %13 = shufflevector <2 x float> %i.n, <2 x float> %i.ap, <2 x i32> <i32 3, i32 1>
  %i.dh = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fsub <2 x float> %13, %i.dh
  %i.dj = insertelement <2 x float> %i.as, float %9, i64 1
  %i.dk = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fsub <2 x float> %i.dj, %i.dk
  %i.dm = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dn = fmul <2 x float> %i.di, %i.dm
  %i.do = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.do, <2 x float> %i.dn)
  %i.dq = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dq, <2 x float> %i.dp) ; 2 uses
  %14 = shufflevector <2 x float> %i.dr, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %15 = shufflevector <2 x float> %i.dr, <2 x float> %i.bq, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.ds = fmul <4 x float> %14, %15
  %i.dt = fcmp olt <4 x float> %i.ds, <float 0.000000e+00, float 0.000000e+00, float f0x322BCC76, float f0x322BCC76> ; 4 uses
  %i.du = extractelement <4 x i1> %i.dt, i64 1
  %i.dv = zext i1 %i.du to i32
  %i.dw = extractelement <4 x i1> %i.dt, i64 3
  %.0.i = select i1 %i.dw, i32 -1, i32 %i.dv      ; 2 uses
  %i.dx = extractelement <4 x i1> %i.dt, i64 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = extractelement <4 x i1> %i.dt, i64 2
  %.0.i136 = select i1 %i.dz, i32 -1, i32 %i.dy   ; 2 uses
  %i.ea = extractelement <2 x i8> %i.cr, i64 0
  %i.eb = extractelement <2 x i8> %i.cr, i64 1
  %i.ec = or i8 %i.ea, %i.eb
  %i.ed = sext i8 %i.ec to i32
  %i.ee = or i32 %.0.i, %i.ed
  %i.ef = or i32 %i.ee, %.0.i136                  ; 2 uses
  %or.cond5.not = icmp sgt i32 %i.ef, -1
  br i1 %or.cond5.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 1, ptr %i.eg, align 4, !tbaa !24
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.eh = icmp eq <2 x i8> %i.cr, zeroinitializer ; 2 uses
  %.not127 = icmp eq i32 %.0.i136, 0
  %or.cond11.not = icmp eq i32 %i.ef, 0
  br i1 %or.cond11.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ei = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.ej = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8232.0.copyload = load float, ptr %.sroa.8232.0..sroa_idx, align 8 ; 2 uses
  %foldExtExtBinop245 = fsub <2 x float> %i.ej, %i.ap
  %i.ek = extractelement <2 x float> %foldExtExtBinop245, i64 0 ; 2 uses
  %i.el = extractelement <2 x float> %i.ej, i64 1
  %i.em = fsub float %i.el, %i.aq                 ; 2 uses
  %i.en = fsub float %.sroa.8232.0.copyload, %i.w ; 2 uses
  %i.eo = fmul float %i.em, %i.em
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.eo)
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.ep) ; 2 uses
  %i.er = fcmp olt float %i.eq, f0x7F7FFFFF
  br i1 %i.er, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.10236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10236.0.copyload = load float, ptr %.sroa.10236.0..sroa_idx, align 4, !tbaa !15
  store <2 x float> %i.ej, ptr %6, align 4
  %.sroa.8232.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8232.0.copyload, ptr %.sroa.8232.0..sroa_idx233, align 4
  %.sroa.10236.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10236.0.copyload, ptr %.sroa.10236.0..sroa_idx237, align 4, !tbaa !15
  %i.es = load i8, ptr %i.a, align 8
  %i.et = and i8 %i.es, 7
  %i.eu = or disjoint i8 %i.et, %i.f
  store i8 %i.eu, ptr %i.d, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ez = load <2 x float>, ptr %i.ev, align 4, !tbaa !20
  store <2 x float> %i.ez, ptr %i.ey, align 4, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.ex, ptr %i.fa, align 4, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.fb, align 4, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi float [ f0x7F7FFFFF, %bb.d ], [ %i.eq, %bb.f ], [ f0x7F7FFFFF, %bb.e ] ; 3 uses
  %i.fc = extractelement <2 x i1> %i.eh, i64 1
  br i1 %i.fc, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fd = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.fe = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8214.0.copyload = load float, ptr %.sroa.8214.0..sroa_idx, align 8 ; 2 uses
  %i.ff = load float, ptr %1, align 4, !tbaa !20
  %i.fg = extractelement <2 x float> %i.fe, i64 0
  %i.fh = fsub float %i.fg, %i.ff                 ; 2 uses
  %i.fi = load float, ptr %i.j, align 4, !tbaa !20
  %i.fj = extractelement <2 x float> %i.fe, i64 1
  %i.fk = fsub float %i.fj, %i.fi                 ; 2 uses
  %i.fl = load float, ptr %i.k, align 4, !tbaa !20
  %i.fm = fsub float %.sroa.8214.0.copyload, %i.fl ; 2 uses
  %i.fn = fmul float %i.fk, %i.fk
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.fn)
  %i.fp = tail call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fo) ; 2 uses
  %i.fq = fcmp olt float %i.fp, %.1
  br i1 %i.fq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.10218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10218.0.copyload = load float, ptr %.sroa.10218.0..sroa_idx, align 4, !tbaa !15
  store <2 x float> %i.fe, ptr %6, align 4
  %.sroa.8214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8214.0.copyload, ptr %.sroa.8214.0..sroa_idx215, align 4
  %.sroa.10218.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10218.0.copyload, ptr %.sroa.10218.0..sroa_idx219, align 4, !tbaa !15
  %i.fr = load i8, ptr %i.d, align 4
  %i.fs = and i8 %i.fr, -16
  %i.ft = load i8, ptr %i.a, align 8              ; 2 uses
  %i.fu = and i8 %i.ft, 1
  %i.fv = shl i8 %i.ft, 1
  %i.fw = and i8 %i.fv, 12
  %i.fx = or disjoint i8 %i.fu, %i.fw
  %i.fy = or disjoint i8 %i.fx, %i.fs
  store i8 %i.fy, ptr %i.d, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !20
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.ga, ptr %i.gc, align 4, !tbaa !20
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float 0.000000e+00, ptr %i.gd, align 4, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.gf = load <2 x float>, ptr %i.gb, align 8, !tbaa !20
  store <2 x float> %i.gf, ptr %i.ge, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.3 = phi float [ %.1, %bb.g ], [ %i.fp, %bb.i ], [ %.1, %bb.h ] ; 3 uses
  %i.gg = extractelement <2 x i1> %i.eh, i64 0
  br i1 %i.gg, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.gi = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8196.0.copyload = load float, ptr %.sroa.8196.0..sroa_idx, align 8 ; 2 uses
  %i.gj = load float, ptr %1, align 4, !tbaa !20
  %i.gk = extractelement <2 x float> %i.gi, i64 0
  %i.gl = fsub float %i.gk, %i.gj                 ; 2 uses
  %i.gm = load float, ptr %i.j, align 4, !tbaa !20
  %i.gn = extractelement <2 x float> %i.gi, i64 1
  %i.go = fsub float %i.gn, %i.gm                 ; 2 uses
  %i.gp = load float, ptr %i.k, align 4, !tbaa !20
  %i.gq = fsub float %.sroa.8196.0.copyload, %i.gp ; 2 uses
  %i.gr = fmul float %i.go, %i.go
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.gr)
  %i.gt = tail call noundef float @llvm.fmuladd.f32(float %i.gq, float %i.gq, float %i.gs) ; 2 uses
  %i.gu = fcmp olt float %i.gt, %.3
  br i1 %i.gu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10200.0.copyload = load float, ptr %.sroa.10200.0..sroa_idx, align 4, !tbaa !15
  store <2 x float> %i.gi, ptr %6, align 4
  %.sroa.8196.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8196.0.copyload, ptr %.sroa.8196.0..sroa_idx197, align 4
  %.sroa.10200.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10200.0.copyload, ptr %.sroa.10200.0..sroa_idx201, align 4, !tbaa !15
  %i.gv = load i8, ptr %i.d, align 4
  %i.gw = and i8 %i.gv, -16
  %i.gx = load i8, ptr %i.a, align 8              ; 3 uses
  %i.gy = and i8 %i.gx, 1
  %i.gz = lshr i8 %i.gx, 1
  %i.ha = and i8 %i.gz, 2
  %i.hb = shl i8 %i.gx, 2
  %i.hc = and i8 %i.hb, 8
  %i.hd = or disjoint i8 %i.gy, %i.ha
  %i.he = or disjoint i8 %i.hd, %i.hc
  %i.hf = or disjoint i8 %i.he, %i.gw
  store i8 %i.hf, ptr %i.d, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hl = load float, ptr %i.hk, align 8, !tbaa !20
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.hh, ptr %i.hm, align 4, !tbaa !20
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.hj, ptr %i.hn, align 4, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.hl, ptr %i.hp, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.5 = phi float [ %.3, %bb.j ], [ %i.gt, %bb.l ], [ %.3, %bb.k ]
  br i1 %.not127, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hq = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver22closestPtPointTriangleERK9btVector3S2_S2_S2_R25btSubSimplexClosestResult(ptr nonnull align 4 poison, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(37) %7) ; 0 uses
  %i.hr = load <2 x float>, ptr %7, align 8       ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.hs = load float, ptr %1, align 4, !tbaa !20
  %i.ht = extractelement <2 x float> %i.hr, i64 0
  %i.hu = fsub float %i.ht, %i.hs                 ; 2 uses
  %i.hv = load float, ptr %i.j, align 4, !tbaa !20
  %i.hw = extractelement <2 x float> %i.hr, i64 1
end_hunk_0
begin_hunk_1_@_ZN22btVoronoiSimplexSolver7closestER9btVector3:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef float @_ZN22btVoronoiSimplexSolver9maxVertexEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(353) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.011 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !20 ; 2 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !20 ; 2 uses
  %i.l = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.i) ; 2 uses
  %i.m = fcmp olt float %.011, %i.l
  %.1 = select i1 %i.m, float %i.l, float %.011   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %bb.b ]
  ret float %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZNK22btVoronoiSimplexSolver10getSimplexEP9btVector3S1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(353) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 164
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !16
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !16
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.l, %bb.b ]
  ret i32 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(353) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !20
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = load float, ptr %1, align 4
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK9btVector3eqERKS_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK9btVector3eqERKS_.exit.thread ] ; 2 uses
  %.0812 = phi i1 [ false, %.lr.ph ], [ %i.w, %_ZNK9btVector3eqERKS_.exit.thread ] ; 4 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = fcmp oeq float %i.m, %i.e
  br i1 %i.n, label %bb.c, label %_ZNK9btVector3eqERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !20
  %i.q = fcmp oeq float %i.p, %i.g
  br i1 %i.q, label %bb.d, label %_ZNK9btVector3eqERKS_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !20
  %i.t = fcmp oeq float %i.s, %i.i
  br i1 %i.t, label %_ZNK9btVector3eqERKS_.exit, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit:                       ; preds = %bb.d
  %i.u = load float, ptr %i.k, align 4, !tbaa !20
  %i.v = fcmp oeq float %i.u, %i.j
  %cond.fr = freeze i1 %i.v
  %spec.select = select i1 %cond.fr, i1 true, i1 %.0812
  br label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit.thread:                ; preds = %_ZNK9btVector3eqERKS_.exit, %bb.b, %bb.c, %bb.d
  %i.w = phi i1 [ %.0812, %bb.b ], [ %spec.select, %_ZNK9btVector3eqERKS_.exit ], [ %.0812, %bb.d ], [ %.0812, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZNK9btVector3eqERKS_.exit.thread, %.._crit_edge_crit_edge
  %i.x = phi float [ %.pre, %.._crit_edge_crit_edge ], [ %i.e, %_ZNK9btVector3eqERKS_.exit.thread ]
  %.08.lcssa = phi i1 [ false, %.._crit_edge_crit_edge ], [ %i.w, %_ZNK9btVector3eqERKS_.exit.thread ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20
  %i.ab = fcmp oeq float %i.x, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNK9btVector3eqERKS_.exit10

bb.e:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20
  %i.ag = fcmp oeq float %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNK9btVector3eqERKS_.exit10

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !20
  %i.al = fcmp oeq float %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %_ZNK9btVector3eqERKS_.exit10

bb.g:                                             ; preds = %bb.f
  %i.am = load float, ptr %1, align 4, !tbaa !20
  %i.an = load float, ptr %i.y, align 4, !tbaa !20
  %i.ao = fcmp oeq float %i.am, %i.an
  %i.ap = select i1 %i.ao, i1 true, i1 %.08.lcssa
  br label %_ZNK9btVector3eqERKS_.exit10

_ZNK9btVector3eqERKS_.exit10:                     ; preds = %._crit_edge, %bb.e, %bb.f, %bb.g
  %.09 = phi i1 [ %.08.lcssa, %bb.f ], [ %.08.lcssa, %bb.e ], [ %.08.lcssa, %._crit_edge ], [ %i.ap, %bb.g ]
  ret i1 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(353) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK22btVoronoiSimplexSolver12emptySimplexEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(353) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !14
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(353) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver28updateClosestVectorAndPointsEv(ptr noundef nonnull align 4 dereferenceable(353) %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN22btVoronoiSimplexSolver19pointOutsideOfPlaneERK9btVector3S2_S2_S2_S2_(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(353) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %1, align 4
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !20
  %i.e = load <3 x float>, ptr %3, align 4, !tbaa !20
  %6 = load <3 x float>, ptr %2, align 4, !tbaa !20 ; 5 uses
  %i.f = fsub <3 x float> %i.e, %6                ; 2 uses
  %i.g = shufflevector <3 x float> %i.f, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.h = load <3 x float>, ptr %4, align 4, !tbaa !20
  %i.i = fsub <3 x float> %i.h, %6                ; 2 uses
  %i.j = fneg <3 x float> %i.i
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.l = fmul <3 x float> %i.f, %i.k
  %i.m = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.g, <3 x float> %i.i, <3 x float> %i.l) ; 3 uses
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 2 uses
  %i.o = load <2 x float>, ptr %5, align 4, !tbaa !20 ; 2 uses
  %i.p = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.q = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> zeroinitializer
  %i.r = fsub <2 x float> %i.p, %i.q
  %i.s = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fsub <2 x float> %i.s, %7
  %i.u = insertelement <2 x float> %i.b, float %i.d, i64 1
  %8 = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.v = fsub <2 x float> %i.u, %8
  %i.w = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.t, %i.w
  %i.y = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.y, <2 x float> %i.x)
  %i.aa = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.aa, <2 x float> %i.z) ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1 ; 3 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = fcmp olt float %i.ad, f0x322BCC76
  %i.af = extractelement <2 x float> %i.ab, i64 0
  %i.ag = fmul float %i.af, %i.ac
  %i.ah = fcmp olt float %i.ag, 0.000000e+00
  %i.ai = zext i1 %i.ah to i32
  %.0 = select i1 %i.ae, i32 -1, i32 %i.ai
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!8 = !{!"_ZTS9btVector3", !5, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"short", !5, i64 0}
!11 = !{!"_ZTS15btUsageBitfield", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0}
!12 = !{!"_ZTS25btSubSimplexClosestResult", !8, i64 0, !11, i64 16, !5, i64 20, !9, i64 36}
!13 = !{!"_ZTS22btVoronoiSimplexSolver", !6, i64 0, !5, i64 4, !5, i64 84, !5, i64 164, !8, i64 244, !8, i64 260, !8, i64 276, !8, i64 292, !9, i64 308, !12, i64 312, !9, i64 352}
!14 = !{!13, !6, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{i64 0, i64 16, !15}
!17 = !{!13, !9, i64 308}
!18 = !{!13, !9, i64 352}
!19 = !{!"float", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!13, !9, i64 348}
!24 = !{!12, !9, i64 36}
end_hunk_1
