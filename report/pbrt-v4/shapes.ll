Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK4pbrt13BilinearPatch3PDFERKNS_11InteractionE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !89
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.v ; 2 uses
  %.sroa.0429.0.copyload = load <2 x float>, ptr %i.w, align 4 ; 7 uses
  %.sroa.11438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.11438.0.copyload = load float, ptr %.sroa.11438.0..sroa_idx, align 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %.sroa.0419.0.copyload = load <2 x float>, ptr %i.aa, align 4 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !89
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.ad ; 2 uses
  %.sroa.0401.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 7 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !226 ; 5 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.r
  %i.ak = load <2 x float>, ptr %i.aj, align 4    ; 6 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.v
  %i.am = load <2 x float>, ptr %i.al, align 4    ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.z
  %i.ao = load <2 x float>, ptr %i.an, align 4    ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ad ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %.sroa_idx, align 4
  %foldExtExtBinop = fsub <2 x float> %i.am, %i.ak
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %.sroa.0108.4.vec.extract.i = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.ak, i64 1 ; 3 uses
  %i.at = fsub float %.sroa.0108.4.vec.extract.i, %.sroa.0.4.vec.extract.i.i ; 4 uses
  %.sroa.0103.0.vec.extract.i = extractelement <2 x float> %i.ao, i64 0
  %foldExtExtBinop453 = fsub <2 x float> %i.ao, %i.ak
  %i.au = extractelement <2 x float> %foldExtExtBinop453, i64 0 ; 7 uses
  %.sroa.0103.4.vec.extract.i = extractelement <2 x float> %i.ao, i64 1 ; 2 uses
  %i.av = fsub float %.sroa.0103.4.vec.extract.i, %.sroa.0.4.vec.extract.i.i ; 3 uses
  %foldExtExtBinop455 = fsub <2 x float> %i.ak, %i.am
  %i.aw = extractelement <2 x float> %foldExtExtBinop455, i64 0
  %i.ax = fsub float %.sroa.0.4.vec.extract.i.i, %.sroa.0108.4.vec.extract.i
  %i.ay = fsub float %i.aq, %.sroa.0103.0.vec.extract.i
  %i.az = fsub float %i.ar, %.sroa.0103.4.vec.extract.i
  %i.ba = fadd float %i.aw, %i.ay                 ; 6 uses
  %i.bb = fadd float %i.ax, %i.az                 ; 4 uses
  %foldExtExtBinop457 = fsub <2 x float> %i.ag, %i.ak
  %i.bc = extractelement <2 x float> %foldExtExtBinop457, i64 0 ; 5 uses
  %foldExtExtBinop459 = fsub <2 x float> %i.ag, %i.ak
  %i.bd = extractelement <2 x float> %foldExtExtBinop459, i64 1 ; 4 uses
  %i.be = fmul float %i.au, %i.bb                 ; 2 uses
  %i.bf = fneg float %i.be
  %i.bg = tail call noundef float @llvm.fma.f32(float %i.ba, float %i.av, float %i.bf)
  %i.bh = fneg float %i.bb
  %i.bi = tail call noundef float @llvm.fma.f32(float %i.bh, float %i.au, float %i.be)
  %i.bj = fadd float %i.bg, %i.bi                 ; 3 uses
  %i.bk = fmul float %i.at, %i.au                 ; 2 uses
  %i.bl = fneg float %i.bk
  %i.bm = tail call noundef float @llvm.fma.f32(float %i.as, float %i.av, float %i.bl)
  %i.bn = fneg float %i.at
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bn, float %i.au, float %i.bk)
  %i.bp = fadd float %i.bm, %i.bo
  %i.bq = fmul float %i.bd, %i.ba                 ; 2 uses
  %i.br = fneg float %i.bq
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.bc, float %i.bb, float %i.br)
  %i.bt = fneg float %i.bd                        ; 2 uses
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.ba, float %i.bq)
  %i.bv = fadd float %i.bs, %i.bu
  %i.bw = fadd float %i.bp, %i.bv                 ; 10 uses
  %i.bx = fmul float %i.bd, %i.as                 ; 2 uses
  %i.by = fneg float %i.bx
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.bc, float %i.at, float %i.by)
  %i.ca = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.as, float %i.bx)
  %i.cb = fadd float %i.bz, %i.ca                 ; 9 uses
  %i.cc = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.cd = fcmp olt float %i.cc, 1.000000e-03
  br i1 %i.cd, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ce = fmul float %i.as, %i.bw
  %i.cf = fmul float %i.ba, %i.cb
  %i.cg = fsub float %i.ce, %i.cf                 ; 2 uses
  %i.ch = tail call noundef float @llvm.fabs.f32(float %i.cg)
  %i.ci = fcmp olt float %i.ch, f0x3727C5AC
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cj = fmul float %i.bd, %i.bw
  %i.ck = fmul float %i.av, %i.cb
  %i.cl = fadd float %i.ck, %i.cj
  %i.cm = fmul float %i.at, %i.bw
  %i.cn = fmul float %i.cb, %i.bb
  %i.co = fsub float %i.cm, %i.cn
  %i.cp = fneg float %i.cb
  %i.cq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cp, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.bw, i64 1
  %i.cu = fdiv <2 x float> %i.cr, %i.ct
  br label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.cv = fmul float %i.bc, %i.bw
  %i.cw = fmul float %i.au, %i.cb
  %i.cx = fadd float %i.cw, %i.cv
  %i.cy = fneg float %i.cb
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cy, i64 1
  %i.db = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.bw, i64 1
  %i.dd = fdiv <2 x float> %i.da, %i.dc
  br label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit

bb.f:                                             ; preds = %bb.b
  %i.de = fmul float %i.bj, 4.000000e+00          ; 2 uses
  %i.df = fmul float %i.cb, %i.de                 ; 2 uses
  %i.dg = fneg float %i.df
  %i.dh = tail call noundef float @llvm.fma.f32(float %i.bw, float %i.bw, float %i.dg)
  %i.di = fneg float %i.de
  %i.dj = tail call noundef float @llvm.fma.f32(float %i.di, float %i.cb, float %i.df)
  %i.dk = fadd float %i.dh, %i.dj                 ; 2 uses
  %i.dl = fcmp uge float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.g, label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.dm = tail call noundef float @sqrtf(float noundef %i.dk) #32
  %i.dn = tail call noundef float @llvm.copysign.f32(float %i.dm, float %i.bw)
  %i.do = fadd float %i.bw, %i.dn
  %i.dp = fmul float %i.do, -5.000000e-01         ; 2 uses
  %i.dq = fdiv float %i.dp, %i.bj                 ; 3 uses
  %i.dr = fdiv float %i.cb, %i.dp                 ; 3 uses
  %i.ds = fcmp ogt float %i.dq, %i.dr             ; 2 uses
  %spec.select.i = select i1 %i.ds, float %i.dr, float %i.dq ; 5 uses
  %i.dt = fmul float %i.au, %spec.select.i
  %i.du = fsub float %i.bc, %i.dt
  %i.dv = fmul float %i.ba, %spec.select.i
  %i.dw = fadd float %i.as, %i.dv
  %i.dx = fdiv float %i.du, %i.dw                 ; 3 uses
  %i.dy = fcmp olt float %i.dx, 0.000000e+00
  %i.dz = fcmp ogt float %i.dx, 1.000000e+00
  %or.cond.i = or i1 %i.dy, %i.dz
  %i.ea = fcmp olt float %spec.select.i, 0.000000e+00
  %or.cond3.i = or i1 %i.ea, %or.cond.i
  %i.eb = fcmp ogt float %spec.select.i, 1.000000e+00
  %or.cond5.i = or i1 %i.eb, %or.cond3.i
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %spec.select145.i = select i1 %i.ds, float %i.dq, float %i.dr ; 3 uses
  %i.ec = fmul float %i.au, %spec.select145.i
  %i.ed = fsub float %i.bc, %i.ec
  %i.ee = fmul float %i.ba, %spec.select145.i
  %i.ef = fadd float %i.as, %i.ee
  %i.eg = fdiv float %i.ed, %i.ef
  %.sroa.0121.0.vec.insert128.i = insertelement <2 x float> poison, float %i.eg, i64 0
  %.sroa.0121.4.vec.insert136.i = insertelement <2 x float> %.sroa.0121.0.vec.insert128.i, float %spec.select145.i, i64 1
  br label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit

bb.i:                                             ; preds = %bb.g
  %.sroa.0121.0.vec.insert130.i = insertelement <2 x float> poison, float %i.dx, i64 0
  %.sroa.0121.4.vec.insert138.i = insertelement <2 x float> %.sroa.0121.0.vec.insert130.i, float %spec.select.i, i64 1
  br label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit

_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.a
  %.sroa.0392.0 = phi <2 x float> [ %i.ag, %bb.a ], [ %i.cu, %bb.d ], [ %i.dd, %bb.e ], [ %.sroa.0121.4.vec.insert136.i, %bb.h ], [ %.sroa.0121.4.vec.insert138.i, %bb.i ], [ zeroinitializer, %bb.f ] ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !227 ; 7 uses
  %.not252 = icmp eq ptr %i.ei, null
  br i1 %.not252, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.ei, align 4 ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 1 ; 2 uses
  %i.ej = fsub <2 x float> %.sroa.0392.0, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load float, ptr %i.ek, align 4, !tbaa !238 ; 2 uses
  %i.em = fcmp ogt float %i.el, %.sroa.0.0.vec.extract.i.i.i
  %i.en = fsub float %i.el, %.sroa.0.0.vec.extract.i.i.i
  %i.eo = extractelement <2 x float> %i.ej, i64 0
  %i.ep = fdiv float %i.eo, %i.en
  %.sroa.01.0.vec.insert.i.i = insertelement <2 x float> %i.ej, float %i.ep, i64 0
  %.sroa.01.0.i.i = select i1 %i.em, <2 x float> %.sroa.01.0.vec.insert.i.i, <2 x float> %i.ej ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.er = load float, ptr %i.eq, align 4, !tbaa !239 ; 2 uses
  %i.es = fcmp ogt float %i.er, %.sroa.0.4.vec.extract.i.i.i
  %i.et = fsub float %i.er, %.sroa.0.4.vec.extract.i.i.i
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.i.i, i64 1
  %i.eu = fdiv float %.sroa.01.4.vec.extract.i.i, %i.et
  %.sroa.01.4.vec.insert.i.i = insertelement <2 x float> %.sroa.01.0.i.i, float %i.eu, i64 1
  %.sroa.01.1.i.i = select i1 %i.es, <2 x float> %.sroa.01.4.vec.insert.i.i, <2 x float> %.sroa.01.0.i.i ; 2 uses
  %.sroa.0.0.vec.extract.i4.i = extractelement <2 x float> %.sroa.01.1.i.i, i64 0
  %.sroa.0.4.vec.extract.i5.i = extractelement <2 x float> %.sroa.01.1.i.i, i64 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !237 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !230 ; 2 uses
  %2 = uitofp i64 %i.ey to float
  %3 = fmul float %.sroa.0.0.vec.extract.i4.i, %2
  %4 = fptosi float %3 to i32                     ; 2 uses
  %5 = add i64 %i.ey, -1
  %6 = icmp slt i32 %4, 0
  %7 = sext i32 %4 to i64
  %spec.select11.i.i = tail call i64 @llvm.umin.i64(i64 %5, i64 %7)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !230 ; 2 uses
  %8 = uitofp i64 %i.fa to float
  %9 = fmul float %.sroa.0.4.vec.extract.i5.i, %8
  %10 = fptosi float %9 to i32                    ; 2 uses
  %11 = add i64 %i.fa, -1
  %12 = icmp slt i32 %10, 0
  %13 = sext i32 %10 to i64
  %spec.select11.i6.i = tail call i64 @llvm.umin.i64(i64 %11, i64 %13)
  %14 = shl i64 %spec.select11.i6.i, 32
  %15 = ashr exact i64 %14, 32
  %16 = select i1 %12, i64 0, i64 %15
  %17 = getelementptr inbounds nuw [80 x i8], ptr %i.ew, i64 %16
  %18 = shl i64 %spec.select11.i.i, 32
  %19 = ashr exact i64 %18, 32
  %20 = select i1 %6, i64 0, i64 %19
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !231
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %20
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !28
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ei, i64 120
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !233
  %i.fh = fdiv float %i.fe, %i.fg
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

bb.k:                                             ; preds = %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit
  %i.fi = tail call noundef zeroext i1 @_ZNK4pbrt13BilinearPatch11IsRectangleEPKNS_17BilinearPatchMeshE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull %i.g)
  br i1 %i.fi, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit

_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit: ; preds = %bb.k
  %i.fj = fsub float %.sroa.11438.0.copyload, %.sroa.9.0.copyload ; 4 uses
  %i.fk = insertelement <2 x float> poison, float %.sroa.13.0.copyload, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %.sroa.11.0.copyload, i64 1
  %i.fm = insertelement <2 x float> poison, float %.sroa.11.0.copyload, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %.sroa.9.0.copyload, i64 1
  %i.fo = fsub <2 x float> %i.fl, %i.fn           ; 6 uses
  %i.fp = fsub <2 x float> %.sroa.0419.0.copyload, %.sroa.0222.0.copyload ; 6 uses
  %i.fq = shufflevector <2 x float> %.sroa.0401.0.copyload, <2 x float> %.sroa.0429.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.fr = shufflevector <2 x float> %.sroa.0419.0.copyload, <2 x float> %.sroa.0222.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.fs = fsub <2 x float> %i.fq, %i.fr           ; 6 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 1
  %i.fu = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fv = fmul <2 x float> %i.fu, %i.fs           ; 2 uses
  %i.fw = shufflevector <2 x float> %.sroa.0401.0.copyload, <2 x float> %.sroa.0429.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.fx = shufflevector <2 x float> %.sroa.0419.0.copyload, <2 x float> %.sroa.0222.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.fy = fsub <2 x float> %i.fw, %i.fx           ; 7 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0 ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gb = insertelement <2 x float> %i.ga, float %i.fj, i64 1 ; 3 uses
  %i.gc = shufflevector <2 x float> %i.fy, <2 x float> %i.fp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gd = fmul <2 x float> %i.gb, %i.gc           ; 2 uses
  %i.ge = fneg <2 x float> %i.gd
  %i.gf = shufflevector <2 x float> %i.fp, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gg = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gf, <2 x float> %i.fo, <2 x float> %i.ge)
  %i.gh = fneg <2 x float> %i.gb
  %i.gi = fneg float %i.fj
  %i.gj = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gh, <2 x float> %i.gc, <2 x float> %i.gd)
  %i.gk = fadd <2 x float> %i.gg, %i.gj           ; 2 uses
  %i.gl = shufflevector <2 x float> %i.fp, <2 x float> %i.fy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gm = fmul <2 x float> %i.gl, %i.fo           ; 2 uses
  %i.gn = fneg <2 x float> %i.gm
  %i.go = shufflevector <2 x float> %i.fs, <2 x float> %i.fp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gp = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gb, <2 x float> %i.go, <2 x float> %i.gn)
  %i.gq = fneg <2 x float> %i.gl
  %i.gr = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gq, <2 x float> %i.fo, <2 x float> %i.gm)
  %i.gs = fadd <2 x float> %i.gp, %i.gr           ; 2 uses
  %i.gt = fneg <2 x float> %i.fv
  %i.gu = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.fp, <2 x float> %i.fy, <2 x float> %i.gt)
  %i.gv = extractelement <2 x float> %i.fs, i64 0 ; 3 uses
  %i.gw = fneg <2 x float> %i.gf
  %i.gx = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gw, <2 x float> %i.go, <2 x float> %i.fv)
  %i.gy = fadd <2 x float> %i.gu, %i.gx           ; 2 uses
  %i.gz = fmul <2 x float> %i.gk, %i.gk
  %i.ha = fmul <2 x float> %i.gs, %i.gs
  %i.hb = fadd <2 x float> %i.gz, %i.ha
  %i.hc = fmul <2 x float> %i.gy, %i.gy
  %i.hd = fadd <2 x float> %i.hc, %i.hb
  %i.he = fsub <2 x float> %.sroa.0401.0.copyload, %.sroa.0429.0.copyload ; 4 uses
  %i.hf = shufflevector <2 x float> %.sroa.0401.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hg = insertelement <2 x float> %i.hf, float %.sroa.13.0.copyload, i64 0
  %i.hh = shufflevector <2 x float> %.sroa.0429.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hi = insertelement <2 x float> %i.hh, float %.sroa.11438.0.copyload, i64 0
  %i.hj = fsub <2 x float> %i.hg, %i.hi           ; 4 uses
  %i.hk = extractelement <2 x float> %i.he, i64 1 ; 5 uses
  %i.hl = fmul float %i.fj, %i.hk                 ; 2 uses
  %i.hm = fneg float %i.hl
  %i.hn = shufflevector <2 x float> %i.fy, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ho = fneg <2 x float> %i.hn
  %i.hp = extractelement <2 x float> %i.hj, i64 0 ; 3 uses
  %i.hq = tail call noundef float @llvm.fma.f32(float %i.ft, float %i.hp, float %i.hm)
  %i.hr = tail call noundef float @llvm.fma.f32(float %i.gi, float %i.hk, float %i.hl)
  %i.hs = fadd float %i.hq, %i.hr                 ; 2 uses
  %i.ht = fmul <2 x float> %i.hn, %i.hj           ; 2 uses
  %i.hu = fneg <2 x float> %i.ht
  %i.hv = insertelement <2 x float> %i.fy, float %i.fj, i64 0
  %i.hw = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.hv, <2 x float> %i.he, <2 x float> %i.hu)
  %i.hx = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ho, <2 x float> %i.hj, <2 x float> %i.ht)
  %i.hy = fadd <2 x float> %i.hw, %i.hx           ; 2 uses
  %i.hz = fmul float %i.hs, %i.hs
  %i.ia = fmul <2 x float> %i.hy, %i.hy           ; 2 uses
  %i.ib = extractelement <2 x float> %i.ia, i64 0
  %i.ic = fadd float %i.hz, %i.ib
  %i.id = extractelement <2 x float> %i.ia, i64 1
  %i.ie = fadd float %i.id, %i.ic
  %sqrt.i290 = tail call noundef float @llvm.sqrt.f32(float %i.ie) ; 2 uses
  %i.if = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.hd) ; 3 uses
  %foldExtExtBinop461 = fmul <2 x float> %i.hj, %i.fy
  %i.ig = extractelement <2 x float> %foldExtExtBinop461, i64 0 ; 2 uses
  %i.ih = fneg float %i.ig
  %i.ii = extractelement <2 x float> %i.fo, i64 0 ; 2 uses
  %i.ij = tail call noundef float @llvm.fma.f32(float %i.hk, float %i.ii, float %i.ih)
  %i.ik = fneg float %i.hp
  %i.il = tail call noundef float @llvm.fma.f32(float %i.ik, float %i.fz, float %i.ig)
  %i.im = fadd float %i.ij, %i.il                 ; 2 uses
  %i.in = extractelement <2 x float> %i.he, i64 0 ; 2 uses
  %foldExtExtBinop463 = fmul <2 x float> %i.he, %i.fo
  %i.io = extractelement <2 x float> %foldExtExtBinop463, i64 0 ; 2 uses
  %i.ip = fneg float %i.io
  %i.iq = tail call noundef float @llvm.fma.f32(float %i.hp, float %i.gv, float %i.ip)
  %i.ir = fneg float %i.in
  %i.is = tail call noundef float @llvm.fma.f32(float %i.ir, float %i.ii, float %i.io)
  %i.it = fadd float %i.iq, %i.is                 ; 2 uses
  %i.iu = fmul float %i.hk, %i.gv                 ; 2 uses
  %i.iv = fneg float %i.iu
  %i.iw = tail call noundef float @llvm.fma.f32(float %i.in, float %i.fz, float %i.iv)
  %i.ix = fneg float %i.hk
  %i.iy = tail call noundef float @llvm.fma.f32(float %i.ix, float %i.gv, float %i.iu)
  %i.iz = fadd float %i.iw, %i.iy                 ; 2 uses
  %i.ja = fmul float %i.im, %i.im
  %i.jb = fmul float %i.it, %i.it
  %i.jc = fadd float %i.ja, %i.jb
  %i.jd = fmul float %i.iz, %i.iz
  %i.je = fadd float %i.jd, %i.jc
  %sqrt.i336 = tail call noundef float @llvm.sqrt.f32(float %i.je) ; 2 uses
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %.sroa.0392.0, i64 0 ; 3 uses
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %.sroa.0392.0, i64 1 ; 3 uses
  %i.jf = shufflevector <2 x float> %.sroa.0392.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jg = fcmp ogt <4 x float> %i.jf, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.jh = fcmp olt <4 x float> %i.jf, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ji = shufflevector <4 x i1> %i.jg, <4 x i1> %i.jh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jj = freeze <4 x i1> %i.ji
  %i.jk = bitcast <4 x i1> %i.jj to i4
  %.not465 = icmp eq i4 %i.jk, 0
  br i1 %.not465, label %bb.l, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

bb.l:                                             ; preds = %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit
  %i.jl = extractelement <2 x float> %i.if, i64 1
  %i.jm = fadd float %i.jl, %sqrt.i290
  %i.jn = extractelement <2 x float> %i.if, i64 0
  %i.jo = fadd float %i.jm, %i.jn
  %i.jp = fadd float %i.jo, %sqrt.i336            ; 2 uses
  %i.jq = fcmp oeq float %i.jp, 0.000000e+00
  br i1 %i.jq, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jr = fsub float 1.000000e+00, %.sroa.020.0.vec.extract.i ; 2 uses
  %i.js = fsub float 1.000000e+00, %.sroa.020.4.vec.extract.i ; 2 uses
  %i.jt = fmul float %.sroa.020.0.vec.extract.i, %i.js
  %i.ju = fmul float %i.jt, %sqrt.i290
  %i.jv = fmul float %i.jr, %i.js
  %i.jw = fmul float %.sroa.020.4.vec.extract.i, %i.jr
  %i.jx = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %i.jv, i64 1
  %i.jz = fmul <2 x float> %i.jy, %i.if           ; 2 uses
  %i.ka = extractelement <2 x float> %i.jz, i64 1
  %i.kb = fadd float %i.ka, %i.ju
  %i.kc = extractelement <2 x float> %i.jz, i64 0
  %i.kd = fadd float %i.kb, %i.kc
  %i.ke = fmul float %.sroa.020.0.vec.extract.i, %.sroa.020.4.vec.extract.i
  %i.kf = fmul float %i.ke, %sqrt.i336
  %i.kg = fadd float %i.kd, %i.kf
  %i.kh = fmul float %i.kg, 4.000000e+00
  %i.ki = fdiv float %i.kh, %i.jp
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %bb.k, %bb.m, %bb.l, %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit, %bb.j
  %.0 = phi float [ %i.ki, %bb.m ], [ %i.fh, %bb.j ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %bb.k ]
  %i.kj = fsub <2 x float> splat (float 1.000000e+00), %.sroa.0392.0 ; 2 uses
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.kl = fmul <2 x float> %.sroa.0222.0.copyload, %i.kk
  %i.km = shufflevector <2 x float> %.sroa.0222.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kn = insertelement <2 x float> %i.km, float %.sroa.9.0.copyload, i64 1 ; 2 uses
  %i.ko = fmul <2 x float> %i.kn, %i.kk
  %i.kp = shufflevector <2 x float> %.sroa.0392.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.kq = fmul <2 x float> %.sroa.0419.0.copyload, %i.kp
  %i.kr = shufflevector <2 x float> %.sroa.0419.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ks = insertelement <2 x float> %i.kr, float %.sroa.11.0.copyload, i64 1 ; 2 uses
  %i.kt = fmul <2 x float> %i.ks, %i.kp
  %i.ku = fadd <2 x float> %i.kq, %i.kl
  %i.kv = fadd <2 x float> %i.kt, %i.ko
  %i.kw = fmul <2 x float> %.sroa.0429.0.copyload, %i.kk
  %i.kx = shufflevector <2 x float> %.sroa.0429.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ky = insertelement <2 x float> %i.kx, float %.sroa.11438.0.copyload, i64 1 ; 2 uses
  %i.kz = fmul <2 x float> %i.ky, %i.kk
  %i.la = fmul <2 x float> %.sroa.0401.0.copyload, %i.kp
  %i.lb = shufflevector <2 x float> %.sroa.0401.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lc = insertelement <2 x float> %i.lb, float %.sroa.13.0.copyload, i64 1 ; 2 uses
  %i.ld = fmul <2 x float> %i.lc, %i.kp
  %i.le = fadd <2 x float> %i.la, %i.kw
  %i.lf = fadd <2 x float> %i.ld, %i.kz
  %i.lg = fsub <2 x float> %i.le, %i.ku           ; 2 uses
  %i.lh = fsub <2 x float> %i.lf, %i.kv           ; 3 uses
  %i.li = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lj = fmul <2 x float> %.sroa.0419.0.copyload, %i.li
  %i.lk = fmul <2 x float> %i.ks, %i.li
  %i.ll = shufflevector <2 x float> %.sroa.0392.0, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lm = fmul <2 x float> %.sroa.0401.0.copyload, %i.ll
  %i.ln = fmul <2 x float> %i.lc, %i.ll
  %i.lo = fadd <2 x float> %i.lm, %i.lj
  %i.lp = fadd <2 x float> %i.ln, %i.lk
  %i.lq = fmul <2 x float> %.sroa.0222.0.copyload, %i.li
  %i.lr = fmul <2 x float> %i.kn, %i.li
  %i.ls = fmul <2 x float> %.sroa.0429.0.copyload, %i.ll
  %i.lt = fmul <2 x float> %i.ky, %i.ll
  %i.lu = fadd <2 x float> %i.ls, %i.lq
  %i.lv = fadd <2 x float> %i.lt, %i.lr
  %i.lw = fsub <2 x float> %i.lo, %i.lu           ; 3 uses
  %i.lx = fsub <2 x float> %i.lp, %i.lv           ; 2 uses
  %i.ly = extractelement <2 x float> %i.lg, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_18SurfaceInteractionEJRKfEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a

.body31.sink.split:                               ; preds = %bb.p, %bb.l
  %.sink = phi ptr [ %i.bc, %bb.l ], [ %i.cs, %bb.p ]
  %.pn20.ph = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.cr, %bb.p ]
  %i.cu = load i64, ptr %i.at, align 8, !tbaa !62
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cv) #33
  br label %.body31

.body31:                                          ; preds = %.body31.sink.split, %bb.p, %bb.l
  %.pn20 = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.cr, %bb.p ], [ %.pn20.ph, %.body31.sink.split ] ; 2 uses
  %i.cw = load ptr, ptr %8, align 8, !tbaa !63    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.y
  br i1 %i.cx, label %.body27, label %.body27.sink.split

.body27.sink.split:                               ; preds = %.body31, %bb.i
  %.sink84 = phi ptr [ %i.am, %bb.i ], [ %i.cw, %.body31 ]
  %.pn20.pn.ph = phi { ptr, i32 } [ %i.al, %bb.i ], [ %.pn20, %.body31 ]
  %i.cy = load i64, ptr %i.y, align 8, !tbaa !62
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %.sink84, i64 noundef %i.cz) #33
  br label %.body27

.body27:                                          ; preds = %.body27.sink.split, %.body31, %bb.i
  %.pn20.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %.pn20, %.body31 ], [ %.pn20.pn.ph, %.body27.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.body

.body:                                            ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %.body27
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %.body27 ], [ %i.cq, %bb.o ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #32
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.n
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %.body ], [ %i.cp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.v

bb.r:                                             ; preds = %bb.d
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !61
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %5, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr @_ZTSN4pbrt18SurfaceInteractionE, ptr %i.b, align 8, !tbaa !274
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.120, i32 noundef 176, ptr noundef nonnull @.str.145, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %.noexc44 unwind label %bb.t

.noexc44:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.df = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dg = phi ptr [ @.str.122, %bb.c ], [ @.str.123, %bb.r ], [ @.str.121, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.120, i32 noundef %i.df, ptr noundef nonnull %i.dg) #34
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dh = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.u
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !62
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.b
  %.pn25 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn20.pn.pn.pn, %bb.q ], [ %i.de, %bb.t ]
  %i.dm = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.v
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !62
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn25
}

declare void @_ZNK4pbrt18SurfaceInteraction8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_shapes.cpp() #27 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !28
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !28
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !28
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !28
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL26STATS_REGnTriHitsnTriTestsE, ptr noundef nonnull @"_ZN4pbrt3$_48__invokeERNS_16StatsAccumulatorE", ptr noundef nonnull @"_ZN4pbrt3$_58__invokeENS_6Point2IiEEiRNS_21PixelStatsAccumulatorE")
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL22STATS_REGtriangleBytesE, ptr noundef nonnull @"_ZN4pbrt3$_68__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL19STATS_REGcurveBytesE, ptr noundef nonnull @"_ZN4pbrt3$_78__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL19STATS_REGnCurveHitsE, ptr noundef nonnull @"_ZN4pbrt3$_88__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL16STATS_REGnCurvesE, ptr noundef nonnull @"_ZN4pbrt3$_98__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL21STATS_REGnSplitCurvesE, ptr noundef nonnull @"_ZN4pbrt4$_108__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL26STATS_REGnBLPHitsnBLPTestsE, ptr noundef nonnull @"_ZN4pbrt4$_118__invokeERNS_16StatsAccumulatorE", ptr noundef nonnull @"_ZN4pbrt4$_128__invokeENS_6Point2IiEEiRNS_21PixelStatsAccumulatorE")
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL17STATS_REGblpBytesE, ptr noundef nonnull @"_ZN4pbrt4$_138__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL17STATS_REGnSpheresE, ptr noundef nonnull @"_ZN4pbrt4$_148__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL19STATS_REGnCylindersE, ptr noundef nonnull @"_ZN4pbrt4$_158__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL15STATS_REGnDisksE, ptr noundef nonnull @"_ZN4pbrt4$_168__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL27STATS_REGdisplacedTrisDeltaE, ptr noundef nonnull @"_ZN4pbrt4$_178__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr>, <4 x ptr>, <4 x i1>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v10f32.p0(<10 x float>, ptr captures(none), <10 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress noreturn uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { cold nofree noreturn }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { builtin allocsize(0) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{null, null, null, null, null, null}
!1 = distinct !{null}
!2 = distinct !{!2, !93}
!3 = distinct !{null}
!4 = distinct !{!4, !93}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{!7, !93}
!8 = distinct !{!8, !93}
!9 = distinct !{!9, !93}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"float", !15, i64 0}
!20 = !{!"any pointer", !15, i64 0}
!21 = !{!"p1 _ZTSN4pbrt9TransformE", !20, i64 0}
!22 = !{!"bool", !15, i64 0}
!23 = !{!"_ZTSN4pbrt6SphereE", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !21, i64 24, !21, i64 32, !22, i64 40, !22, i64 41}
!24 = !{!23, !21, i64 24}
!25 = !{!23, !19, i64 0}
!26 = !{!23, !19, i64 4}
!27 = !{!23, !19, i64 8}
!28 = !{!19, !19, i64 0}
!29 = !{!23, !22, i64 40}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!23, !19, i64 20}
!33 = !{!23, !19, i64 12}
!34 = !{!23, !19, i64 16}
!35 = !{!"_ZTSN4pstd8optionalIN4pbrt11ShapeSampleEEE", !15, i64 0, !22, i64 88}
!36 = !{!35, !22, i64 88}
!37 = !{!"_ZTSN4pbrt8IntervalE", !19, i64 0, !19, i64 4}
!38 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !38, i64 0}
!40 = !{!"_ZTSN4pbrt8Point3fiE", !39, i64 0}
!41 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!42 = !{!"_ZTSN4pbrt7Vector3IfEE", !41, i64 0}
!43 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!44 = !{!"_ZTSN4pbrt7Normal3IfEE", !43, i64 0}
!45 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !19, i64 0, !19, i64 4}
!46 = !{!"_ZTSN4pbrt6Point2IfEE", !45, i64 0}
!47 = !{!"p1 _ZTSN4pbrt15MediumInterfaceE", !20, i64 0}
!48 = !{!"long", !15, i64 0}
!49 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !48, i64 0}
!50 = !{!"_ZTSN4pbrt6MediumE", !49, i64 0}
!51 = !{!"_ZTSN4pbrt11InteractionE", !40, i64 0, !19, i64 24, !42, i64 28, !44, i64 40, !46, i64 52, !47, i64 64, !50, i64 72}
!52 = !{!"_ZTSN4pbrt11ShapeSampleE", !51, i64 0, !19, i64 80}
!53 = !{!52, !19, i64 80}
!54 = !{!37, !19, i64 0}
!55 = !{!37, !19, i64 4}
!56 = !{!23, !21, i64 32}
!57 = !{!"p1 omnipotent char", !20, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !48, i64 8, !15, i64 16}
!61 = !{!60, !48, i64 8}
!62 = !{!15, !15, i64 0}
!63 = !{!60, !57, i64 0}
!64 = !{!"vtable pointer", !14, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!48, !48, i64 0}
!67 = !{!"_ZTSN4pbrt4DiskE", !21, i64 0, !21, i64 8, !22, i64 16, !22, i64 17, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32}
!68 = !{!67, !21, i64 0}
!69 = !{!67, !19, i64 24}
!70 = !{!67, !19, i64 20}
!71 = !{!67, !22, i64 16}
!72 = !{!67, !21, i64 8}
!73 = !{!"_ZTSN4pbrt8CylinderE", !21, i64 0, !21, i64 8, !22, i64 16, !22, i64 17, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32}
!74 = !{!73, !21, i64 0}
!75 = !{!73, !19, i64 20}
!76 = !{!73, !19, i64 24}
!77 = !{!73, !19, i64 28}
!78 = !{!73, !21, i64 8}
!79 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !20, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"p1 _ZTSN4pstd6vectorIPKN4pbrt12TriangleMeshENS_3pmr21polymorphic_allocatorIS4_EEEE", !20, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"_ZTSN4pstd8optionalIN4pbrt20TriangleIntersectionEEE", !15, i64 0, !22, i64 16}
!84 = !{!83, !22, i64 16}
!85 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIPKN4pbrt12TriangleMeshEEE", !79, i64 0}
!86 = !{!"any p2 pointer", !20, i64 0}
!87 = !{!"p2 _ZTSN4pbrt12TriangleMeshE", !86, i64 0}
!88 = !{!"_ZTSN4pstd6vectorIPKN4pbrt12TriangleMeshENS_3pmr21polymorphic_allocatorIS4_EEEE", !85, i64 0, !87, i64 8, !48, i64 16, !48, i64 24}
!89 = !{!16, !16, i64 0}
!90 = !{!88, !87, i64 8}
!91 = !{!"p1 _ZTSN4pbrt12TriangleMeshE", !20, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = !{!"branch_weights", i32 4, i32 12}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!"p1 int", !20, i64 0}
!99 = !{!"p1 _ZTSN4pbrt6Point3IfEE", !20, i64 0}
!100 = !{!"p1 _ZTSN4pbrt7Normal3IfEE", !20, i64 0}
!101 = !{!"p1 _ZTSN4pbrt7Vector3IfEE", !20, i64 0}
!102 = !{!"p1 _ZTSN4pbrt6Point2IfEE", !20, i64 0}
!103 = !{!"_ZTSN4pbrt12TriangleMeshE", !16, i64 0, !16, i64 4, !98, i64 8, !99, i64 16, !100, i64 24, !101, i64 32, !102, i64 40, !98, i64 48, !22, i64 56, !22, i64 57}
!104 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEEE", !79, i64 0}
!105 = !{!"p1 _ZTSN4pbrt5ShapeE", !20, i64 0}
!106 = !{!"_ZTSN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEE", !104, i64 0, !105, i64 8, !48, i64 16, !48, i64 24}
!107 = !{!106, !48, i64 24}
!108 = !{!106, !48, i64 16}
!109 = !{!106, !105, i64 8}
!110 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEEE", !48, i64 0}
!111 = !{!110, !48, i64 0}
!112 = !{!"_ZTSN4pbrt8TriangleE", !16, i64 0, !16, i64 4}
!113 = !{!112, !16, i64 0}
!114 = !{!112, !16, i64 4}
!115 = !{!104, !79, i64 0}
!116 = !{!103, !98, i64 8}
!117 = !{!103, !99, i64 16}
!118 = !{!103, !100, i64 24}
!119 = !{!43, !19, i64 0}
!120 = !{!43, !19, i64 4}
!121 = !{!43, !19, i64 8}
!122 = !{!103, !22, i64 56}
!123 = !{!103, !22, i64 57}
!124 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!125 = !{!"_ZTSN4pbrt6Point3IfEE", !124, i64 0}
!126 = !{!"_ZTSN4pbrt3RayE", !125, i64 0, !42, i64 12, !19, i64 24, !50, i64 32}
!127 = !{!126, !19, i64 24}
!128 = !{!41, !19, i64 8}
!129 = !{!49, !48, i64 0}
!130 = !{!"_ZTSN4pbrt18SurfaceInteractionUt_E", !44, i64 0, !42, i64 12, !42, i64 24, !44, i64 36, !44, i64 48}
!131 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !48, i64 0}
!132 = !{!"_ZTSN4pbrt8MaterialE", !131, i64 0}
!133 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !48, i64 0}
!134 = !{!"_ZTSN4pbrt5LightE", !133, i64 0}
!135 = !{!"_ZTSN4pbrt18SurfaceInteractionE", !51, i64 0, !42, i64 80, !42, i64 92, !44, i64 104, !44, i64 116, !130, i64 128, !16, i64 188, !132, i64 192, !134, i64 200, !42, i64 208, !42, i64 220, !19, i64 232, !19, i64 236, !19, i64 240, !19, i64 244}
!136 = !{!"_ZTSN4pbrt17ShapeIntersectionE", !135, i64 0, !19, i64 248}
!137 = !{!136, !19, i64 248}
!138 = !{!"_ZTSN4pstd8optionalIN4pbrt17ShapeIntersectionEEE", !15, i64 0, !22, i64 256}
!139 = !{!138, !22, i64 256}
!140 = !{!51, !19, i64 24}
!141 = !{!135, !16, i64 188}
!142 = !{!22, !22, i64 0}
!143 = !{!98, !98, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!145 = !{!144, !99, i64 8}
!146 = !{!144, !99, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!148 = !{!147, !98, i64 16}
!149 = !{!147, !98, i64 0}
end_hunk_1
