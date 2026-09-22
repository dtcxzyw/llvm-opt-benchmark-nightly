Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3VoronoiSimplexSolver?download=true
inline.NumInlined: 151
inline.NumDeleted: 18
begin_hunk_0_@_ZN22b3VoronoiSimplexSolver22closestPtPointTriangleERK9b3Vector3S2_S2_S2_R25b3SubSimplexClosestResult:bb.a
  %i.bd = fneg float %i.bc
  %i.be = fmul float %i.ax, %i.bd
  %i.bf = extractelement <2 x float> %i.ah, i64 0 ; 4 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.az, float %i.be) ; 3 uses
  %i.bh = fcmp ole float %i.bg, 0.000000e+00
  %i.bi = fcmp oge float %i.bf, 0.000000e+00
  %or.cond3 = and i1 %i.bi, %i.bh
  %i.bj = fcmp ole float %i.ax, 0.000000e+00
  %or.cond5 = and i1 %i.bj, %or.cond3
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop = fsub <2 x float> %i.ah, %i.aw
  %i.bk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bl = fdiv float %i.bf, %i.bk                 ; 5 uses
  %i.bm = extractelement <2 x float> %i.v, i64 0
  %i.bn = fmul float %i.bm, %i.bl
  %i.bo = extractelement <2 x float> %i.x, i64 0
  %i.bp = fmul float %i.bo, %i.bl
  %i.bq = extractelement <2 x float> %i.z, i64 0
  %i.br = fmul float %i.bq, %i.bl
  %i.bs = extractelement <3 x float> %i.s, i64 0
  %i.bt = fadd float %i.bs, %i.bn
  %i.bu = fadd float %i.r, %i.bp
  %i.bv = extractelement <3 x float> %i.s, i64 2
  %i.bw = fadd float %i.bv, %i.br
  %.sroa.0.0.vec.insert.i.i135 = insertelement <2 x float> poison, float %i.bt, i64 0
  %.sroa.0.4.vec.insert.i.i136 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i135, float %i.bu, i64 1
  %.sroa.3.12.vec.insert.i.i137 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bw, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i136, ptr %5, align 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i137, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !17
  %i.bx = or disjoint i8 %i.c, 3
  store i8 %i.bx, ptr %i.a, align 16
  %i.by = fsub float 1.000000e+00, %i.bl
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.bz = shufflevector <2 x float> %i.h, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ca = insertelement <3 x float> %i.bz, float %i.j, i64 2
  %i.cb = fsub <3 x float> %i.q, %i.ca            ; 3 uses
  %i.cc = shufflevector <3 x float> %i.cb, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.x, %i.cc
  %i.ce = shufflevector <3 x float> %i.cb, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.ce, <2 x float> %i.cd)
  %i.cg = shufflevector <3 x float> %i.cb, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.cg, <2 x float> %i.cf) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 1 ; 7 uses
  %i.cj = fcmp ult float %i.ci, 0.000000e+00
  %i.ck = extractelement <2 x float> %i.ch, i64 0 ; 4 uses
  %i.cl = fcmp ugt float %i.ck, %i.ci
  %or.cond119 = or i1 %i.cj, %i.cl
  br i1 %or.cond119, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !18
  %i.cm = or disjoint i8 %i.c, 4
  store i8 %i.cm, ptr %i.a, align 16
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.cn = fneg float %i.ci
  %i.co = fmul float %i.bf, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.bc, float %i.co) ; 3 uses
  %i.cq = fcmp ole float %i.cp, 0.000000e+00
  %i.cr = fcmp oge float %i.bc, 0.000000e+00
  %or.cond7 = and i1 %i.cr, %i.cq
  %i.cs = fcmp ole float %i.ci, 0.000000e+00
  %or.cond9 = and i1 %i.cs, %or.cond7
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ct = fsub float %i.bc, %i.ci
  %i.cu = fdiv float %i.bc, %i.ct                 ; 5 uses
  %i.cv = extractelement <2 x float> %i.v, i64 1
  %i.cw = fmul float %i.cv, %i.cu
  %i.cx = extractelement <2 x float> %i.x, i64 1
  %i.cy = fmul float %i.cx, %i.cu
  %i.cz = extractelement <2 x float> %i.z, i64 1
  %i.da = fmul float %i.cz, %i.cu
  %i.db = extractelement <3 x float> %i.s, i64 0
  %i.dc = fadd float %i.db, %i.cw
  %i.dd = fadd float %i.r, %i.cy
  %i.de = extractelement <3 x float> %i.s, i64 2
  %i.df = fadd float %i.de, %i.da
  %.sroa.0.0.vec.insert.i.i150 = insertelement <2 x float> poison, float %i.dc, i64 0
  %.sroa.0.4.vec.insert.i.i151 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i150, float %i.dd, i64 1
  %.sroa.3.12.vec.insert.i.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i151, ptr %5, align 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i152, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !17
  %i.dg = or disjoint i8 %i.c, 5
  store i8 %i.dg, ptr %i.a, align 16
  %i.dh = fsub float 1.000000e+00, %i.cu
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.di = fneg float %i.az
  %i.dj = fmul float %i.ck, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ci, float %i.dj) ; 2 uses
  %i.dl = fcmp ugt float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = fsub float %i.az, %i.ax                 ; 3 uses
  %i.dn = fcmp ult float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = fsub float %i.ck, %i.ci                 ; 2 uses
  %i.dp = fcmp ult float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = fadd float %i.dm, %i.do
  %i.dr = fdiv float %i.dm, %i.dq                 ; 4 uses
  %i.ds = fsub <2 x float> %i.h, %i.g
  %i.dt = fsub float %i.j, %i.f
  %i.du = fmul float %i.dt, %i.dr
  %i.dv = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.ds, %i.dw
  %i.dy = fadd <2 x float> %i.g, %i.dx
  %i.dz = fadd float %i.f, %i.du
  %.sroa.3.12.vec.insert.i.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dz, i64 0
  store <2 x float> %i.dy, ptr %5, align 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i167, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !17
  %i.ea = or disjoint i8 %i.c, 6
  store i8 %i.ea, ptr %i.a, align 16
  %i.eb = fsub float 1.000000e+00, %i.dr
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ec = fadd float %i.dk, %i.cp
  %i.ed = fadd float %i.bg, %i.ec
  %i.ee = fdiv float 1.000000e+00, %i.ed          ; 2 uses
  %i.ef = extractelement <2 x float> %i.v, i64 0
  %i.eg = extractelement <3 x float> %i.s, i64 0
  %i.eh = extractelement <2 x float> %i.v, i64 1
  %i.ei = fmul float %i.cp, %i.ee                 ; 4 uses
  %i.ej = fmul float %i.bg, %i.ee                 ; 4 uses
  %i.ek = fmul float %i.ef, %i.ei
  %i.el = shufflevector <2 x float> %i.x, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.em = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x float> %i.el, %i.en
  %i.ep = fadd float %i.eg, %i.ek
  %i.eq = insertelement <2 x float> %i.t, float %i.r, i64 0
  %i.er = fadd <2 x float> %i.eq, %i.eo
  %i.es = fmul float %i.eh, %i.ej
  %i.et = shufflevector <2 x float> %i.x, <2 x float> %i.z, <2 x i32> <i32 1, i32 3>
  %i.eu = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.et, %i.ev
  %i.ex = fadd float %i.es, %i.ep
  %i.ey = fadd <2 x float> %i.ew, %i.er           ; 2 uses
  %.sroa.0.0.vec.insert.i.i185 = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i185, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ey, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.ez, ptr %5, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.fa, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %i.fb = or disjoint i8 %i.c, 7
  store i8 %i.fb, ptr %i.a, align 16
  %i.fc = fsub float 1.000000e+00, %i.ei
  %i.fd = fsub float %i.fc, %i.ej
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.o, %bb.n, %bb.h, %bb.b
  %.sink293 = phi float [ 0.000000e+00, %bb.d ], [ %i.by, %bb.f ], [ %i.dh, %bb.j ], [ %i.fd, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.h ], [ 1.000000e+00, %bb.b ]
  %.sink291 = phi float [ 1.000000e+00, %bb.d ], [ %i.bl, %bb.f ], [ 0.000000e+00, %bb.j ], [ %i.ei, %bb.o ], [ %i.eb, %bb.n ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %.sink = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.cu, %bb.j ], [ %i.ej, %bb.o ], [ %i.dr, %bb.n ], [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.b ]
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sink293, ptr %i.fe, align 4, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink291, ptr %i.ff, align 8, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %.sink, ptr %i.fg, align 4, !tbaa !21
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float 0.000000e+00, ptr %i.fh, align 16, !tbaa !21
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver25closestPtPointTetrahedronERK9b3Vector3S2_S2_S2_S2_R25b3SubSimplexClosestResult(ptr nofree nonnull readnone align 16 captures(none) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(37) initializes((0, 16)) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca %struct.b3SubSimplexClosestResult, align 16 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.b = load i8, ptr %i.a, align 16
  %i.c = and i8 %i.b, -16
  store i8 %i.c, ptr %i.a, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.e = load i8, ptr %i.d, align 16              ; 2 uses
  %i.f = and i8 %i.e, -16
  %i.g = or i8 %i.e, 15
  store i8 %i.g, ptr %i.d, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load <2 x float>, ptr %3, align 16, !tbaa !17 ; 5 uses
  %i.n = load <2 x float>, ptr %2, align 16, !tbaa !17 ; 7 uses
  %8 = load <4 x float>, ptr %2, align 16         ; 2 uses
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %10 = load <2 x float>, ptr %4, align 16, !tbaa !17 ; 2 uses
  %11 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.o = shufflevector <2 x float> %10, <2 x float> %i.m, <2 x i32> <i32 0, i32 3>
  %i.p = fsub <2 x float> %i.o, %i.n              ; 7 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.r = load <2 x float>, ptr %5, align 16, !tbaa !17 ; 2 uses
  %i.s = load float, ptr %i.l, align 8, !tbaa !17 ; 2 uses
  %i.t = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.m, %i.n  ; 5 uses
  %i.u = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = load float, ptr %i.k, align 8, !tbaa !17 ; 3 uses
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
  %i.ak = load <2 x float>, ptr %i.h, align 4, !tbaa !17 ; 5 uses
  %i.al = load <2 x float>, ptr %i.i, align 4, !tbaa !17 ; 3 uses
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 3, i32 1>
  %i.an = fsub <2 x float> %i.am, %11             ; 7 uses
  %i.ao = extractelement <2 x float> %i.al, i64 0
  %i.ap = load <2 x float>, ptr %1, align 16, !tbaa !17 ; 4 uses
  %i.aq = load float, ptr %i.j, align 4, !tbaa !17 ; 2 uses
  %i.ar = fsub float %i.aq, %i.t                  ; 2 uses
  %foldExtExtBinop243 = fsub <2 x float> %i.ap, %i.n ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.w, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.s, i64 1
  %i.au = fsub <2 x float> %i.at, %11             ; 4 uses
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
  %i.de = shufflevector <2 x float> %i.n, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fsub <2 x float> %i.de, %i.df
  %12 = shufflevector <2 x float> %i.n, <2 x float> %i.ap, <2 x i32> <i32 1, i32 3>
  %i.dh = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fsub <2 x float> %12, %i.dh
  %i.dj = insertelement <2 x float> %9, float %i.w, i64 1
  %i.dk = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fsub <2 x float> %i.dj, %i.dk
  %i.dm = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dn = fmul <2 x float> %i.di, %i.dm
  %i.do = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.do, <2 x float> %i.dn)
  %i.dq = shufflevector <3 x float> %i.dd, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dq, <2 x float> %i.dp) ; 2 uses
  %13 = shufflevector <2 x float> %i.dr, <2 x float> %i.bq, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %14 = shufflevector <2 x float> %i.dr, <2 x float> %i.bq, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.ds = fmul <4 x float> %13, %14
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
  store i8 1, ptr %i.eg, align 4, !tbaa !26
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
  %i.ei = call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver22closestPtPointTriangleERK9b3Vector3S2_S2_S2_R25b3SubSimplexClosestResult(ptr nonnull align 16 poison, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(37) %7) ; 0 uses
  %i.ej = load <2 x float>, ptr %7, align 16      ; 3 uses
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
  %.sroa.10236.0.copyload = load float, ptr %.sroa.10236.0..sroa_idx, align 4, !tbaa !17
  store <2 x float> %i.ej, ptr %6, align 16
  %.sroa.8232.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8232.0.copyload, ptr %.sroa.8232.0..sroa_idx233, align 8
  %.sroa.10236.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10236.0.copyload, ptr %.sroa.10236.0..sroa_idx237, align 4, !tbaa !17
  %i.es = load i8, ptr %i.a, align 16
  %i.et = and i8 %i.es, 7
  %i.eu = or disjoint i8 %i.et, %i.f
  store i8 %i.eu, ptr %i.d, align 16
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ez = load <2 x float>, ptr %i.ev, align 4, !tbaa !21
  store <2 x float> %i.ez, ptr %i.ey, align 4, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.ex, ptr %i.fa, align 4, !tbaa !21
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.fb, align 16, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.1 = phi float [ f0x7F7FFFFF, %bb.d ], [ %i.eq, %bb.f ], [ f0x7F7FFFFF, %bb.e ] ; 3 uses
  %i.fc = extractelement <2 x i1> %i.eh, i64 1
  br i1 %i.fc, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fd = call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver22closestPtPointTriangleERK9b3Vector3S2_S2_S2_R25b3SubSimplexClosestResult(ptr nonnull align 16 poison, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(37) %7) ; 0 uses
  %i.fe = load <2 x float>, ptr %7, align 16      ; 3 uses
  %.sroa.8214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8214.0.copyload = load float, ptr %.sroa.8214.0..sroa_idx, align 8 ; 2 uses
  %i.ff = load float, ptr %1, align 16, !tbaa !17
  %i.fg = extractelement <2 x float> %i.fe, i64 0
  %i.fh = fsub float %i.fg, %i.ff                 ; 2 uses
  %i.fi = load float, ptr %i.j, align 4, !tbaa !17
  %i.fj = extractelement <2 x float> %i.fe, i64 1
  %i.fk = fsub float %i.fj, %i.fi                 ; 2 uses
  %i.fl = load float, ptr %i.k, align 8, !tbaa !17
  %i.fm = fsub float %.sroa.8214.0.copyload, %i.fl ; 2 uses
  %i.fn = fmul float %i.fk, %i.fk
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.fn)
  %i.fp = tail call noundef float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fo) ; 2 uses
  %i.fq = fcmp olt float %i.fp, %.1
  br i1 %i.fq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.10218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10218.0.copyload = load float, ptr %.sroa.10218.0..sroa_idx, align 4, !tbaa !17
  store <2 x float> %i.fe, ptr %6, align 16
  %.sroa.8214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8214.0.copyload, ptr %.sroa.8214.0..sroa_idx215, align 8
  %.sroa.10218.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10218.0.copyload, ptr %.sroa.10218.0..sroa_idx219, align 4, !tbaa !17
  %i.fr = load i8, ptr %i.d, align 16
  %i.fs = and i8 %i.fr, -16
  %i.ft = load i8, ptr %i.a, align 16             ; 2 uses
  %i.fu = and i8 %i.ft, 1
  %i.fv = shl i8 %i.ft, 1
  %i.fw = and i8 %i.fv, 12
  %i.fx = or disjoint i8 %i.fu, %i.fw
  %i.fy = or disjoint i8 %i.fx, %i.fs
  store i8 %i.fy, ptr %i.d, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.ga, ptr %i.gc, align 4, !tbaa !21
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float 0.000000e+00, ptr %i.gd, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.gf = load <2 x float>, ptr %i.gb, align 8, !tbaa !21
  store <2 x float> %i.gf, ptr %i.ge, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.3 = phi float [ %.1, %bb.g ], [ %i.fp, %bb.i ], [ %.1, %bb.h ] ; 3 uses
  %i.gg = extractelement <2 x i1> %i.eh, i64 0
  br i1 %i.gg, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver22closestPtPointTriangleERK9b3Vector3S2_S2_S2_R25b3SubSimplexClosestResult(ptr nonnull align 16 poison, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(37) %7) ; 0 uses
  %i.gi = load <2 x float>, ptr %7, align 16      ; 3 uses
  %.sroa.8196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8196.0.copyload = load float, ptr %.sroa.8196.0..sroa_idx, align 8 ; 2 uses
  %i.gj = load float, ptr %1, align 16, !tbaa !17
  %i.gk = extractelement <2 x float> %i.gi, i64 0
  %i.gl = fsub float %i.gk, %i.gj                 ; 2 uses
  %i.gm = load float, ptr %i.j, align 4, !tbaa !17
  %i.gn = extractelement <2 x float> %i.gi, i64 1
  %i.go = fsub float %i.gn, %i.gm                 ; 2 uses
  %i.gp = load float, ptr %i.k, align 8, !tbaa !17
  %i.gq = fsub float %.sroa.8196.0.copyload, %i.gp ; 2 uses
  %i.gr = fmul float %i.go, %i.go
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.gr)
  %i.gt = tail call noundef float @llvm.fmuladd.f32(float %i.gq, float %i.gq, float %i.gs) ; 2 uses
  %i.gu = fcmp olt float %i.gt, %.3
  br i1 %i.gu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.10200.0.copyload = load float, ptr %.sroa.10200.0..sroa_idx, align 4, !tbaa !17
  store <2 x float> %i.gi, ptr %6, align 16
  %.sroa.8196.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.8196.0.copyload, ptr %.sroa.8196.0..sroa_idx197, align 8
  %.sroa.10200.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %.sroa.10200.0.copyload, ptr %.sroa.10200.0..sroa_idx201, align 4, !tbaa !17
  %i.gv = load i8, ptr %i.d, align 16
  %i.gw = and i8 %i.gv, -16
  %i.gx = load i8, ptr %i.a, align 16             ; 3 uses
  %i.gy = and i8 %i.gx, 1
  %i.gz = lshr i8 %i.gx, 1
  %i.ha = and i8 %i.gz, 2
  %i.hb = shl i8 %i.gx, 2
  %i.hc = and i8 %i.hb, 8
  %i.hd = or disjoint i8 %i.gy, %i.ha
  %i.he = or disjoint i8 %i.hd, %i.hc
  %i.hf = or disjoint i8 %i.he, %i.gw
  store i8 %i.hf, ptr %i.d, align 16
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !21
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !21
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hl = load float, ptr %i.hk, align 8, !tbaa !21
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.hh, ptr %i.hm, align 4, !tbaa !21
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.hj, ptr %i.hn, align 8, !tbaa !21
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.hl, ptr %i.hp, align 16, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.5 = phi float [ %.3, %bb.j ], [ %i.gt, %bb.l ], [ %.3, %bb.k ]
  br i1 %.not127, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hq = call noundef zeroext i1 @_ZN22b3VoronoiSimplexSolver22closestPtPointTriangleERK9b3Vector3S2_S2_S2_R25b3SubSimplexClosestResult(ptr nonnull align 16 poison, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(37) %7) ; 0 uses
  %i.hr = load <2 x float>, ptr %7, align 16      ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.hs = load float, ptr %1, align 16, !tbaa !17
  %i.ht = extractelement <2 x float> %i.hr, i64 0
  %i.hu = fsub float %i.ht, %i.hs                 ; 2 uses
  %i.hv = load float, ptr %i.j, align 4, !tbaa !17
  %i.hw = extractelement <2 x float> %i.hr, i64 1
end_hunk_0
