Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodySphericalJointLimit?download=true
inline.NumInlined: 275
inline.NumDeleted: 77
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK30btMultiBodySphericalJointLimit12getIslandIdAEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %.not7.not = icmp eq ptr %i.g, null
  br i1 %.not7.not, label %.thread, label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = zext nneg i32 %i.b to i64
  %i.k = getelementptr inbounds nuw [688 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.c, %bb.b
  %.sink11 = phi ptr [ %i.g, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink11, i64 228
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ %i.o, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK30btMultiBodySphericalJointLimit12getIslandIdBEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %.not7.not = icmp eq ptr %i.g, null
  br i1 %.not7.not, label %.thread, label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = zext nneg i32 %i.b to i64
  %i.k = getelementptr inbounds nuw [688 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.c, %bb.b
  %.sink11 = phi ptr [ %i.g, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink11, i64 228
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ %i.o, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btMultiBodySphericalJointLimit20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef nonnull align 4 dereferenceable(128) %3) unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 6 uses
  %5 = alloca %class.btVector3, align 4           ; 7 uses
  %6 = alloca %class.btMatrix3x3, align 8         ; 14 uses
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %7 = alloca %class.btMatrix3x3, align 4         ; 12 uses
  %8 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(232) %0)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !46
  %.pre200 = load i32, ptr %i.d, align 4, !tbaa !45
  %i.i = icmp eq i32 %.pre, %.pre200
  br i1 %i.i, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !42
  %i.l = fcmp oeq float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.x, label %bb.c

bb.c:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !43
  %i.q = tail call noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.n, i32 noundef %i.p)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.s = load i32, ptr %i.o, align 8, !tbaa !43
  %i.t = tail call noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.r, i32 noundef %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.w = load i32, ptr %i.o, align 8, !tbaa !43
  %i.x = tail call noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.v, i32 noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !43
  %i.ab = tail call noundef ptr @_ZN11btMultiBody19getJointPosMultiDofEi(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i32 noundef %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load float, ptr %i.q, align 4, !tbaa !29 ; 6 uses
  %i.ae = load float, ptr %i.u, align 4, !tbaa !29 ; 6 uses
  %i.af = load float, ptr %i.y, align 4, !tbaa !29 ; 7 uses
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !29 ; 10 uses
  %i.ah = fmul float %i.af, 0.000000e+00
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.ah)
  %i.aj = fsub float %i.ai, %i.ad                 ; 3 uses
  %i.ak = fmul float %i.ad, 0.000000e+00
  %i.al = insertelement <2 x float> poison, float %i.af, i64 0 ; 2 uses
  %i.am = insertelement <2 x float> %i.al, float %i.ad, i64 1 ; 2 uses
  %i.an = fneg <2 x float> %i.am                  ; 5 uses
  %i.ao = insertelement <2 x float> poison, float %i.ae, i64 0 ; 2 uses
  %i.ap = insertelement <2 x float> %i.ao, float %i.af, i64 1 ; 2 uses
  %i.aq = fneg <2 x float> %i.ap                  ; 4 uses
  %i.ar = extractelement <2 x float> %i.an, i64 0
  %i.as = fmul float %i.ae, -0.000000e+00
  %i.at = extractelement <2 x float> %i.an, i64 1 ; 3 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.as)
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ag, float 0.000000e+00, float %i.ae)
  %i.aw = fadd float %i.ak, %i.ag
  %i.ax = shufflevector <2 x float> %i.an, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.av, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.aw, i64 1
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.az) ; 4 uses
  %i.bb = fsub float %i.au, %i.af                 ; 2 uses
  %i.bc = extractelement <2 x float> %i.ba, i64 0
  %i.bd = fmul float %i.ag, %i.bc
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.at, float %i.bd)
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ar, float %i.be)
  %i.bg = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.ae, float %i.bf) ; 3 uses
  %i.bi = fmul float %i.ag, %i.aj
  %i.bj = fmul float %i.ag, %i.bg
  %i.bk = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.ax, <2 x float> %i.bn)
  %i.bp = shufflevector <2 x float> %i.aq, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bp, <2 x float> %i.bo)
  %i.br = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x float> %i.br, float %i.aj, i64 0
  %i.bt = insertelement <2 x float> poison, float %i.ad, i64 0 ; 2 uses
  %i.bu = insertelement <2 x float> %i.bt, float %i.af, i64 1 ; 2 uses
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.bq) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bv, %i.bv
  %i.bw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bw)
  %i.by = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = tail call noundef float @sqrtf(float noundef %i.bz) #13
  %i.cb = fdiv float 1.000000e+00, %i.ca          ; 2 uses
  %i.cc = fmul float %i.cb, %i.bh                 ; 3 uses
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.ce, %i.bv           ; 3 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 1 ; 2 uses
  %i.ch = fmul float %i.cg, 0.000000e+00
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.ch)
  %i.cj = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.ck = fadd float %i.cj, %i.ci                 ; 2 uses
  %i.cl = fcmp olt float %i.ck, f0xBF7FFFFE
  br i1 %i.cl, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = fmul float %i.cc, -0.000000e+00
  %i.cn = fmul float %i.cj, 0.000000e+00
  %i.co = fsub float %i.cc, %i.cn
  %i.cp = fneg float %i.cg
  %i.cq = fadd float %i.ck, 1.000000e+00
  %i.cr = fmul float %i.cq, 2.000000e+00
  %i.cs = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cm, i64 1
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> zeroinitializer, <2 x float> %i.ct) ; 2 uses
  %i.cv = tail call noundef float @sqrtf(float noundef %i.cr) #13 ; 2 uses
  %i.cw = fdiv float 1.000000e+00, %i.cv          ; 3 uses
  %i.cx = extractelement <2 x float> %i.cu, i64 0
  %i.cy = fmul float %i.cx, %i.cw
  %i.cz = fmul float %i.co, %i.cw
  %i.da = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %i.cv, i64 1
  %i.dc = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.cw, i64 0
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %.sroa.022.0.vec.insert25.i = insertelement <2 x float> poison, float %i.cy, i64 0
  %.sroa.022.4.vec.insert27.i = insertelement <2 x float> %.sroa.022.0.vec.insert25.i, float %i.cz, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.c, %bb.d
  %.sroa.022.0.i.a = phi <2 x float> [ %.sroa.022.4.vec.insert27.i, %bb.d ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.c ] ; 6 uses
  %.sroa.528.0.i = phi <2 x float> [ %i.dd, %bb.d ], [ zeroinitializer, %bb.c ] ; 4 uses
  %.sroa.0129.0.vec.extract = extractelement <2 x float> %.sroa.022.0.i.a, i64 0 ; 2 uses
  %foldExtExtBinop215 = fmul <2 x float> %.sroa.022.0.i.a, %.sroa.022.0.i.a
  %i.de = extractelement <2 x float> %foldExtExtBinop215, i64 1
  %i.df = tail call float @llvm.fmuladd.f32(float %.sroa.0129.0.vec.extract, float %.sroa.0129.0.vec.extract, float %i.de)
  %.sroa.9.8.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 0 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract, float %.sroa.9.8.vec.extract, float %i.df)
  %.sroa.9.12.vec.extract = extractelement <2 x float> %.sroa.528.0.i, i64 1 ; 3 uses
  %i.dh = tail call noundef float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract, float %.sroa.9.12.vec.extract, float %i.dg)
  %i.di = tail call noundef float @sqrtf(float noundef %i.dh) #13
  %i.dj = insertelement <2 x float> poison, float %i.ag, i64 0 ; 2 uses
  %i.dk = insertelement <2 x float> %i.dj, float %i.ad, i64 1
  %i.dl = insertelement <2 x float> %i.al, float %i.ag, i64 1
  %i.dm = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fdiv float 1.000000e+00, %i.di          ; 2 uses
  %i.do = shufflevector <2 x float> %.sroa.528.0.i, <2 x float> %.sroa.022.0.i.a, <2 x i32> <i32 0, i32 2>
  %i.dp = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dr = fmul <2 x float> %i.do, %i.dq           ; 3 uses
  %i.ds = shufflevector <2 x float> %.sroa.022.0.i.a, <2 x float> %.sroa.528.0.i, <2 x i32> <i32 1, i32 2>
  %i.dt = fmul <2 x float> %i.ds, %i.dq           ; 3 uses
  %i.du = fmul float %.sroa.9.12.vec.extract, %i.dn
  %i.dv = fneg <2 x float> %i.dq
  %i.dw = fmul <2 x float> %.sroa.022.0.i.a, %i.dv ; 2 uses
  %i.dx = fneg <2 x float> %i.dt                  ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = fmul <2 x float> %i.dy, %i.dw
  %i.ea = insertelement <2 x float> poison, float %i.du, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = insertelement <2 x float> %i.bt, float %i.ae, i64 1 ; 2 uses
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ec, <2 x float> %i.dz)
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.am, <2 x float> %i.ed)
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.ap, <2 x float> %i.ee) ; 4 uses
  %i.eg = shufflevector <2 x float> %i.dr, <2 x float> %i.dx, <2 x i32> <i32 3, i32 1>
  %i.eh = fmul <2 x float> %i.dk, %i.eg
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.dl, <2 x float> %i.eh)
  %i.ej = shufflevector <2 x float> %i.dt, <2 x float> %i.dw, <2 x i32> <i32 2, i32 0>
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.dm, <2 x float> %i.ei)
  %i.el = shufflevector <2 x float> %i.dr, <2 x float> %i.dt, <2 x i32> <i32 2, i32 0>
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.bu, <2 x float> %i.ek) ; 3 uses
  %foldExtExtBinop217 = fmul <2 x float> %i.ef, %i.ef
  %i.en = extractelement <2 x float> %foldExtExtBinop217, i64 1
  %i.eo = extractelement <2 x float> %i.ef, i64 0 ; 2 uses
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.en)
  %i.eq = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.ep)
  %i.es = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %i.et = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.er)
  %i.eu = tail call noundef float @sqrtf(float noundef %i.et) #13
  %i.ev = fdiv float 1.000000e+00, %i.eu
  %i.ew = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = fmul <2 x float> %i.ex, %i.ef           ; 7 uses
  %.sroa.12.12.vec.insert = fmul <2 x float> %i.ex, %i.em ; 7 uses
  %i.ez = extractelement <2 x float> %.sroa.12.12.vec.insert, i64 1 ; 5 uses
  %i.fa = fmul float %i.ez, %i.at
  %i.fb = extractelement <2 x float> %i.ey, i64 0 ; 2 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.fb, float %i.fa)
  %i.fd = extractelement <2 x float> %.sroa.12.12.vec.insert, i64 0 ; 2 uses
  %i.fe = extractelement <2 x float> %i.aq, i64 0
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fd, float %i.fc)
  %i.fg = extractelement <2 x float> %i.ey, i64 1 ; 2 uses
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.af, float %i.fg, float %i.ff) ; 6 uses
  %i.fi = fmul float %i.ad, %i.fb
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ez, float %i.fi)
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.fg, float %i.fj)
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.af, float %i.fd, float %i.fk) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.fm = shufflevector <2 x float> %.sroa.12.12.vec.insert, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = fmul <2 x float> %i.fm, %i.aq
  %i.fo = shufflevector <2 x float> %i.ey, <2 x float> %.sroa.12.12.vec.insert, <2 x i32> <i32 1, i32 2>
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.fo, <2 x float> %i.fn)
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ey, <2 x float> %i.fp)
  %i.fr = shufflevector <2 x float> %.sroa.12.12.vec.insert, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.fr, <2 x float> %i.fq) ; 5 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %foldExtExtBinop219 = fmul <2 x float> %i.fs, %i.fs
  %i.fu = extractelement <2 x float> %foldExtExtBinop219, i64 0
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.fu)
  %i.fw = extractelement <2 x float> %i.fs, i64 1 ; 3 uses
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.fv)
  %i.fy = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fx)
  %i.fz = fdiv float 2.000000e+00, %i.fy          ; 3 uses
  %i.ga = fmul float %i.fh, %i.fz                 ; 2 uses
  %i.gb = fmul float %i.ft, %i.fz                 ; 3 uses
  %i.gc = fmul float %i.fl, %i.ga                 ; 2 uses
  %i.gd = fmul float %i.fl, %i.gb                 ; 2 uses
  %i.ge = fmul float %i.fh, %i.ga                 ; 2 uses
  %i.gf = fmul float %i.fh, %i.gb                 ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.fz, i64 1
  %i.gi = fmul <2 x float> %i.fs, %i.gh           ; 4 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 1 ; 3 uses
  %i.gk = fmul float %i.fh, %i.gj                 ; 2 uses
  %i.gl = fmul float %i.ft, %i.gj                 ; 2 uses
  %i.gm = fmul float %i.fw, %i.gj                 ; 2 uses
  %i.gn = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.fl, i64 1 ; 2 uses
  %i.gp = fadd <2 x float> %i.go, %i.gi
  %i.gq = fmul <2 x float> %i.go, %i.gi           ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.gs = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.gf, i64 1
  %i.gt = fsub <2 x float> %i.gs, %i.gr
  %i.gu = fadd float %i.gk, %i.gd
  %i.gv = extractelement <2 x float> %i.gq, i64 1
  %i.gw = fadd float %i.gf, %i.gv
  %i.gx = fadd float %i.ge, %i.gm
  %i.gy = fsub float 1.000000e+00, %i.gx
  %i.gz = fsub float %i.gl, %i.gc
  %i.ha = fsub float %i.gk, %i.gd
  %i.hb = fadd float %i.gl, %i.gc
  %i.hc = extractelement <2 x float> %i.gi, i64 0
  %i.hd = fadd float %i.ge, %i.hc
  %i.he = fsub float 1.000000e+00, %i.hd
  store <2 x float> %i.gt, ptr %6, align 8, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.gu, ptr %i.hf, align 8, !tbaa !29
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.gw, ptr %i.hh, align 8, !tbaa !29
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.gy, ptr %i.hi, align 4, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.gz, ptr %i.hj, align 8, !tbaa !29
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float 0.000000e+00, ptr %i.hk, align 4, !tbaa !29
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float %i.ha, ptr %i.hl, align 8, !tbaa !29
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %i.hb, ptr %i.hm, align 4, !tbaa !29
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.he, ptr %i.hn, align 8, !tbaa !29
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 44
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !29
  %i.hp = call noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(16) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.hr = load <2 x float>, ptr %i.hq, align 4, !tbaa !29
  store <2 x float> %i.hr, ptr %i.a, align 8, !tbaa !29
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !41
  store float %i.hu, ptr %i.hs, align 8, !tbaa !29
  %i.hv = fcmp olt float %i.ez, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.hv, float -1.000000e+00, float %i.ez ; 2 uses
  %i.hw = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.hw, float 1.000000e+00, float %spec.store.select.i.i
  %i.hx = call noundef float @acosf(float noundef %spec.store.select1.i.i) #13
  %i.hy = fmul float %i.hx, 2.000000e+00          ; 2 uses
  %i.hz = fcmp ogt float %i.hy, f0x40490FDB
  br i1 %i.hz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.ia = fneg <2 x float> %i.ey
  %i.ib = fneg <2 x float> %.sroa.12.12.vec.insert
  %i.ic = fneg float %i.ez                        ; 2 uses
  %i.id = fcmp olt float %i.ic, -1.000000e+00
  %spec.store.select.i.i84 = select i1 %i.id, float -1.000000e+00, float %i.ic ; 2 uses
  %i.ie = fcmp ogt float %spec.store.select.i.i84, 1.000000e+00
  %spec.store.select1.i.i85 = select i1 %i.ie, float 1.000000e+00, float %spec.store.select.i.i84
  %i.if = call noundef float @acosf(float noundef %spec.store.select1.i.i85) #13
  %i.ig = fmul float %i.if, 2.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %.sroa.695.0 = phi <2 x float> [ %i.ib, %bb.e ], [ %.sroa.12.12.vec.insert, %_Z15shortestArcQuatRK9btVector3S1_.exit ]
  %.sroa.094.0 = phi <2 x float> [ %i.ia, %bb.e ], [ %i.ey, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 2 uses
  %.050 = phi float [ %i.ig, %bb.e ], [ %i.hy, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 3 uses
  %.sroa.094.0.vec.extract = extractelement <2 x float> %.sroa.094.0, i64 0 ; 4 uses
  %.sroa.094.4.vec.extract = extractelement <2 x float> %.sroa.094.0, i64 1 ; 4 uses
  %.sroa.695.8.vec.extract = extractelement <2 x float> %.sroa.695.0, i64 0 ; 4 uses
  %i.ih = fcmp ogt float %.050, f0x34000000
  br i1 %i.ih, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ii = fmul float %.sroa.094.4.vec.extract, %.sroa.094.4.vec.extract
  %i.ij = call float @llvm.fmuladd.f32(float %.sroa.094.0.vec.extract, float %.sroa.094.0.vec.extract, float %i.ii)
  %i.ik = call noundef float @llvm.fmuladd.f32(float %.sroa.695.8.vec.extract, float %.sroa.695.8.vec.extract, float %i.ij)
  %i.il = call noundef float @sqrtf(float noundef %i.ik) #13
  %i.im = fdiv float 1.000000e+00, %i.il          ; 3 uses
  %i.in = fmul float %.sroa.094.0.vec.extract, %i.im
  %i.io = fmul float %.sroa.094.4.vec.extract, %i.im
  %i.ip = fmul float %.sroa.695.8.vec.extract, %i.im
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0 = phi float [ %i.ip, %bb.g ], [ %.sroa.695.8.vec.extract, %bb.f ]
  %.sroa.6.0 = phi float [ %i.io, %bb.g ], [ %.sroa.094.4.vec.extract, %bb.f ]
  %.sroa.0.0 = phi float [ %i.in, %bb.g ], [ %.sroa.094.0.vec.extract, %bb.f ]
  %i.iq = fmul float %.sroa.6.0, 0.000000e+00
  %i.ir = call float @llvm.fmuladd.f32(float %.sroa.0.0, float 0.000000e+00, float %i.iq)
  %i.is = fadd float %.sroa.10.0, %i.ir
  %i.it = fcmp olt float %i.is, 0.000000e+00
  %i.iu = fneg float %.050
  %.1 = select i1 %i.it, float %i.iu, float %.050
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.1, ptr %i.iv, align 4, !tbaa !29
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !44
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph, label %._crit_edge
end_hunk_0
