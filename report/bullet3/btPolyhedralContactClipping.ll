Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btPolyhedralContactClipping?download=true
inline.NumInlined: 245
inline.NumDeleted: 55
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z19TestInternalObjectsRK11btTransformS1_RK9btVector3S4_RK18btConvexPolyhedronS7_f:bb.a
  %i.bf = load <2 x float>, ptr %i.t, align 4, !tbaa !18 ; 2 uses
  %i.bg = shufflevector <2 x float> %i.au, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2>
  %i.bh = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bi, <2 x float> %i.be) ; 2 uses
  %i.bk = shufflevector <2 x float> %i.at, <2 x float> %i.av, <2 x i32> <i32 1, i32 3>
  %i.bl = fmul <2 x float> %i.ax, %i.bk
  %i.bm = shufflevector <2 x float> %i.as, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bd, <2 x float> %i.bl)
  %i.bo = shufflevector <2 x float> %i.au, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3>
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bi, <2 x float> %i.bn) ; 2 uses
  %i.bq = insertelement <2 x float> %i.o, float %i.x, i64 1
  %i.br = fmul <2 x float> %i.ax, %i.bq
  %i.bs = insertelement <2 x float> %i.l, float %i.v, i64 1
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bd, <2 x float> %i.br)
  %i.bu = insertelement <2 x float> %i.r, float %i.z, i64 1
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bi, <2 x float> %i.bt) ; 2 uses
  %i.bw = load <2 x float>, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.bx = fcmp olt <2 x float> %i.bj, zeroinitializer
  %i.by = load <2 x float>, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> %i.by, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ca = fneg <2 x float> %i.bz
  %i.cb = select <2 x i1> %i.bx, <2 x float> %i.ca, <2 x float> %i.bz
  %i.cc = fcmp olt <2 x float> %i.bp, zeroinitializer
  %i.cd = shufflevector <2 x float> %i.bw, <2 x float> %i.by, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ce = fneg <2 x float> %i.cd
  %i.cf = select <2 x i1> %i.cc, <2 x float> %i.ce, <2 x float> %i.cd
  %i.cg = fcmp olt <2 x float> %i.bv, zeroinitializer
  %i.ch = insertelement <2 x float> %i.ad, float %i.ag, i64 1 ; 2 uses
  %i.ci = fneg <2 x float> %i.ch
  %i.cj = select <2 x i1> %i.cg, <2 x float> %i.ci, <2 x float> %i.ch
  %i.ck = fmul <2 x float> %i.bp, %i.cf
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.bj, <2 x float> %i.ck)
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.bv, <2 x float> %i.cl) ; 2 uses
  %i.cn = insertelement <2 x float> %i.aj, float %i.al, i64 1 ; 2 uses
  %i.co = fcmp ogt <2 x float> %i.cm, %i.cn
  %i.cp = select <2 x i1> %i.co, <2 x float> %i.cm, <2 x float> %i.cn ; 2 uses
  %shift = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cp, %shift
  %i.cq = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cr = fadd float %i.ar, %i.cq                 ; 2 uses
  %i.cs = fsub float %i.cq, %i.ar                 ; 2 uses
  %i.ct = fcmp olt float %i.cr, %i.cs
  %i.cu = select i1 %i.ct, float %i.cr, float %i.cs
  %i.cv = fcmp ule float %i.cu, %6
  ret i1 %i.cv
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN27btPolyhedralContactClipping18findSeparatingAxisERK18btConvexPolyhedronS2_RK11btTransformS5_R9btVector3RN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %6 = alloca %class.btVector3, align 4           ; 7 uses
  %7 = alloca %class.btVector3, align 4           ; 7 uses
  %8 = alloca %class.btVector3, align 4           ; 7 uses
  %9 = alloca %class.btVector3, align 4           ; 7 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %10 = alloca %class.btVector3, align 4          ; 4 uses
  %11 = alloca %class.btVector3, align 4          ; 4 uses
  %12 = alloca %class.btVector3, align 4          ; 4 uses
  %13 = alloca %class.btVector3, align 4          ; 4 uses
  %i.i = alloca float, align 4                    ; 5 uses
  %i.j = alloca float, align 4                    ; 5 uses
  %i.k = alloca float, align 4                    ; 5 uses
  %i.l = alloca float, align 4                    ; 5 uses
  %14 = alloca %class.btVector3, align 4          ; 4 uses
  %15 = alloca %class.btVector3, align 4          ; 4 uses
  %16 = alloca %class.btVector3, align 4          ; 4 uses
  %17 = alloca %class.btVector3, align 4          ; 4 uses
  %18 = alloca %class.btVector3, align 8          ; 10 uses
  %19 = alloca %class.btVector3, align 8          ; 10 uses
  %20 = alloca %class.btVector3, align 4          ; 10 uses
  %21 = alloca %class.btVector3, align 4          ; 7 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %i.m = load i32, ptr @_ZL19gActualSATPairTests, align 4, !tbaa !32
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr @_ZL19gActualSATPairTests, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load float, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ag = load <2 x float>, ptr %i.o, align 8, !tbaa !18 ; 2 uses
  %i.ah = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.aj = load <2 x float>, ptr %i.q, align 4, !tbaa !18
  %i.ak = load <2 x float>, ptr %i.ac, align 8, !tbaa !18 ; 3 uses
  %i.al = load <2 x float>, ptr %3, align 4, !tbaa !18
  %i.am = shufflevector <2 x float> %i.ag, <2 x float> %i.ak, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.an = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ao = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aq = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.as = fmul <4 x float> %i.am, %i.ar
  %i.at = shufflevector <2 x float> %i.ag, <2 x float> %i.ak, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.au = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.aw, <4 x float> %i.as)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !18
  %i.bh = load <2 x float>, ptr %i.z, align 4, !tbaa !18
  %i.bi = insertelement <4 x float> poison, float %i.s, i64 0
  %i.bj = insertelement <4 x float> poison, float %i.u, i64 0
  %i.bk = insertelement <4 x float> %i.bj, float %i.w, i64 1
  %i.bl = insertelement <4 x float> %i.bk, float %i.y, i64 2
  %i.bm = insertelement <4 x float> %i.bl, float %i.ba, i64 3
  %i.bn = insertelement <4 x float> poison, float %i.ab, i64 2
  %i.bo = insertelement <4 x float> %i.bn, float %i.bg, i64 3
  %i.bp = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bs = load float, ptr %i.af, align 4, !tbaa !18
  %i.bt = load float, ptr %i.ay, align 8, !tbaa !18 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.bv = load <2 x float>, ptr %i.ae, align 4, !tbaa !18 ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 1, i32 3>
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cb, <2 x float> %i.bz)
  %i.cd = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.be, i64 1
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cc)
  %i.ci = insertelement <4 x float> %i.bi, float %i.bt, i64 1
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.bm, <4 x float> %i.ax)
  %i.cl = fadd <4 x float> %i.ck, %i.bq           ; 4 uses
  %i.cm = load <2 x float>, ptr %i.br, align 4, !tbaa !18
  %i.cn = fadd <2 x float> %i.ch, %i.cm           ; 2 uses
  %shift = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.cl, %shift
  %i.co = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 8 uses
  %i.cp = extractelement <4 x float> %i.cl, i64 1
  %i.cq = extractelement <2 x float> %i.cn, i64 0
  %i.cr = fsub float %i.cp, %i.cq                 ; 8 uses
  %i.cs = extractelement <4 x float> %i.cl, i64 2
  %i.ct = extractelement <2 x float> %i.cn, i64 1
  %i.cu = fsub float %i.cs, %i.ct                 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !33 ; 2 uses
  %.not554 = icmp sgt i32 %i.cw, 0
  br i1 %.not554, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 136
  %wide.trip.count = zext nneg i32 %i.cw to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.0104556 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.3107383, %.thread ] ; 4 uses
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %i.dg, i64 %indvars.iv ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dl = load float, ptr %i.di, align 4, !tbaa !18
  %i.dm = load float, ptr %i.dj, align 4, !tbaa !18
  %i.dn = load float, ptr %i.dk, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #7
  %i.do = load float, ptr %i.t, align 4, !tbaa !18 ; 2 uses
  %i.dp = load float, ptr %i.v, align 4, !tbaa !18 ; 2 uses
  %i.dq = load float, ptr %i.x, align 4, !tbaa !18 ; 2 uses
  %i.dr = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 4 uses
  %i.ds = load <2 x float>, ptr %i.p, align 4, !tbaa !18 ; 3 uses
  %i.dt = load <2 x float>, ptr %i.q, align 4, !tbaa !18 ; 4 uses
  %i.du = insertelement <3 x float> poison, float %i.dm, i64 0
  %i.dv = shufflevector <3 x float> %i.du, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dw = shufflevector <2 x float> %i.dt, <2 x float> %i.dr, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dx = shufflevector <2 x float> %i.ds, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.dy = shufflevector <3 x float> %i.dw, <3 x float> %i.dx, <3 x i32> <i32 0, i32 1, i32 4>
  %i.dz = fmul <3 x float> %i.dv, %i.dy
  %i.ea = shufflevector <2 x float> %i.dt, <2 x float> %i.dr, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.eb = shufflevector <3 x float> %i.ea, <3 x float> %i.dx, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ec = insertelement <3 x float> poison, float %i.dl, i64 0
  %i.ed = shufflevector <3 x float> %i.ec, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ee = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eb, <3 x float> %i.ed, <3 x float> %i.dz)
  %i.ef = insertelement <3 x float> poison, float %i.dq, i64 0
  %i.eg = insertelement <3 x float> %i.ef, float %i.do, i64 1
  %i.eh = insertelement <3 x float> %i.eg, float %i.dp, i64 2
  %i.ei = insertelement <3 x float> poison, float %i.dn, i64 0
  %i.ej = shufflevector <3 x float> %i.ei, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ek = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eh, <3 x float> %i.ej, <3 x float> %i.ee) ; 6 uses
  %i.el = extractelement <3 x float> %i.ek, i64 2 ; 2 uses
  %i.em = extractelement <3 x float> %i.ek, i64 1 ; 3 uses
  %i.en = extractelement <3 x float> %i.ek, i64 0 ; 3 uses
  %.sroa.0.4.vec.insert.i170 = shufflevector <3 x float> %i.ek, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %.sroa.3.12.vec.insert.i171 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.en, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i170, ptr %18, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i171, ptr %i.cy, align 8
  %i.eo = fmul float %i.cr, %i.el
  %i.ep = call float @llvm.fmuladd.f32(float %i.co, float %i.em, float %i.eo)
  %i.eq = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.en, float %i.ep)
  %i.er = fcmp olt float %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.es = fneg <3 x float> %i.ek                  ; 3 uses
  %i.et = extractelement <3 x float> %i.es, i64 2 ; 2 uses
  %i.eu = extractelement <3 x float> %i.es, i64 0 ; 2 uses
  %i.ev = fneg float %i.em                        ; 2 uses
  store float %i.ev, ptr %18, align 8, !tbaa !18
  store float %i.et, ptr %i.cz, align 4, !tbaa !18
  store float %i.eu, ptr %i.cy, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ew = phi float [ %i.eu, %bb.c ], [ %i.en, %bb.b ]
  %i.ex = phi float [ %i.et, %bb.c ], [ %i.el, %bb.b ]
  %i.ey = phi float [ %i.ev, %bb.c ], [ %i.em, %bb.b ]
  %i.ez = phi <3 x float> [ %i.es, %bb.c ], [ %i.ek, %bb.b ] ; 3 uses
  %i.fa = load i32, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.fc = load i8, ptr @gUseInternalObject, align 1, !tbaa !47, !range !24, !noundef !25
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fe = fmul float %i.cr, %i.ex
  %i.ff = call float @llvm.fmuladd.f32(float %i.co, float %i.ey, float %i.fe)
  %i.fg = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.ew, float %i.ff) ; 2 uses
  %i.fh = load float, ptr %i.az, align 4, !tbaa !18
  %i.fi = load float, ptr %i.bb, align 4, !tbaa !18
  %i.fj = load float, ptr %i.bd, align 4, !tbaa !18
  %i.fk = load float, ptr %i.db, align 8, !tbaa !18
  %i.fl = load float, ptr %i.dd, align 8, !tbaa !18
  %i.fm = load float, ptr %i.de, align 8, !tbaa !31
  %i.fn = load float, ptr %i.df, align 8, !tbaa !31
  %i.fo = load <2 x float>, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.fp = shufflevector <2 x float> %i.ds, <2 x float> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.fq = shufflevector <3 x float> %i.ez, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.fr = fmul <2 x float> %i.fp, %i.fq
  %i.fs = load <2 x float>, ptr %3, align 4, !tbaa !18 ; 2 uses
  %i.ft = shufflevector <2 x float> %i.dr, <2 x float> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.fu = shufflevector <3 x float> %i.ez, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fu, <2 x float> %i.fr)
  %i.fw = load <2 x float>, ptr %i.ae, align 4, !tbaa !18 ; 2 uses
  %i.fx = shufflevector <2 x float> %i.dt, <2 x float> %i.fw, <2 x i32> <i32 0, i32 2>
  %i.fy = shufflevector <3 x float> %i.ez, <3 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fy, <2 x float> %i.fv) ; 2 uses
  %i.ga = shufflevector <2 x float> %i.ds, <2 x float> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.gb = fmul <2 x float> %i.ga, %i.fq
  %i.gc = shufflevector <2 x float> %i.dr, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.fu, <2 x float> %i.gb)
  %i.ge = shufflevector <2 x float> %i.dt, <2 x float> %i.fw, <2 x i32> <i32 1, i32 3>
  %i.gf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.fy, <2 x float> %i.gd) ; 2 uses
  %23 = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.gg = insertelement <2 x float> %23, float %i.fi, i64 1
  %i.gh = fmul <2 x float> %i.gg, %i.fq
  %24 = insertelement <2 x float> poison, float %i.do, i64 0
  %i.gi = insertelement <2 x float> %24, float %i.fh, i64 1
  %i.gj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.fu, <2 x float> %i.gh)
  %25 = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.gk = insertelement <2 x float> %25, float %i.fj, i64 1
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.fy, <2 x float> %i.gj) ; 2 uses
  %i.gm = load <2 x float>, ptr %i.da, align 8, !tbaa !18 ; 2 uses
  %i.gn = fcmp olt <2 x float> %i.fz, zeroinitializer
  %i.go = load <2 x float>, ptr %i.dc, align 8, !tbaa !18 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.gm, <2 x float> %i.go, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gq = fneg <2 x float> %i.gp
  %i.gr = select <2 x i1> %i.gn, <2 x float> %i.gq, <2 x float> %i.gp
  %i.gs = fcmp olt <2 x float> %i.gf, zeroinitializer
  %i.gt = shufflevector <2 x float> %i.gm, <2 x float> %i.go, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gu = fneg <2 x float> %i.gt
  %i.gv = select <2 x i1> %i.gs, <2 x float> %i.gu, <2 x float> %i.gt
  %i.gw = fcmp olt <2 x float> %i.gl, zeroinitializer
  %i.gx = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.fl, i64 1 ; 2 uses
  %i.gz = fneg <2 x float> %i.gy
  %i.ha = select <2 x i1> %i.gw, <2 x float> %i.gz, <2 x float> %i.gy
  %i.hb = fmul <2 x float> %i.gf, %i.gv
  %i.hc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.fz, <2 x float> %i.hb)
  %i.hd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.gl, <2 x float> %i.hc) ; 2 uses
  %i.he = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.fn, i64 1 ; 2 uses
  %i.hg = fcmp ogt <2 x float> %i.hd, %i.hf
  %i.hh = select <2 x i1> %i.hg, <2 x float> %i.hd, <2 x float> %i.hf ; 2 uses
  %shift683 = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop684 = fadd <2 x float> %i.hh, %shift683
  %i.hi = extractelement <2 x float> %foldExtExtBinop684, i64 0 ; 2 uses
  %i.hj = fadd float %i.fg, %i.hi                 ; 2 uses
  %i.hk = fsub float %i.hi, %i.fg                 ; 2 uses
  %i.hl = fcmp olt float %i.hj, %i.hk
  %i.hm = select i1 %i.hl, float %i.hj, float %i.hk
  %i.hn = fcmp ule float %i.hm, %.0104556
  br i1 %i.hn, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ho = load i32, ptr @gActualNbTests, align 4, !tbaa !32
  %i.hp = add nsw i32 %i.ho, 1
  store i32 %i.hp, ptr @gActualNbTests, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %17)
  %i.hq = load float, ptr %i.j, align 4, !tbaa !18 ; 2 uses
  %i.hr = load float, ptr %i.k, align 4, !tbaa !18 ; 2 uses
  %i.hs = fcmp olt float %i.hq, %i.hr
  br i1 %i.hs, label %.thread387, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ht = load float, ptr %i.l, align 4, !tbaa !18 ; 2 uses
  %i.hu = load float, ptr %i.i, align 4, !tbaa !18 ; 2 uses
  %i.hv = fcmp olt float %i.ht, %i.hu
  br i1 %i.hv, label %.thread387, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hw = fsub float %i.hq, %i.hr                 ; 2 uses
  %i.hx = fsub float %i.ht, %i.hu                 ; 2 uses
  %i.hy = fcmp olt float %i.hw, %i.hx
  %..i174 = select i1 %i.hy, float %i.hw, float %i.hx ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %i.hz = fcmp olt float %..i174, %.0104556
  br i1 %i.hz, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !21
  br label %.thread

.thread387:                                       ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  br label %bb.at

.thread:                                          ; preds = %bb.h, %bb.i, %bb.e
  %.3107383 = phi float [ %.0104556, %bb.e ], [ %.0104556, %bb.h ], [ %..i174, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !43

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.0104.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %.3107383, %.thread ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !33 ; 2 uses
  %.not161557 = icmp sgt i32 %i.ib, 0
  br i1 %.not161557, label %.lr.ph561, label %.preheader

.lr.ph561:                                        ; preds = %._crit_edge
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.id = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 136
  %wide.trip.count629 = zext nneg i32 %i.ib to i64
  br label %bb.j

.preheader:                                       ; preds = %.thread391, %._crit_edge
  %.5109.lcssa = phi float [ %.0104.lcssa, %._crit_edge ], [ %.8112394, %.thread391 ]
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !15 ; 2 uses
  %.not162.not595 = icmp sgt i32 %i.im, 0
  br i1 %.not162.not595, label %.lr.ph611, label %.thread498.thread

.lr.ph611:                                        ; preds = %.preheader
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.iq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %20, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre = load i32, ptr %i.io, align 4, !tbaa !15
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph561, %.thread391
  %indvars.iv626 = phi i64 [ 0, %.lr.ph561 ], [ %indvars.iv.next627, %.thread391 ] ; 2 uses
  %.5109559 = phi float [ %.0104.lcssa, %.lr.ph561 ], [ %.8112394, %.thread391 ] ; 4 uses
  %i.iy = load ptr, ptr %i.ic, align 8, !tbaa !34
  %i.iz = getelementptr inbounds nuw [48 x i8], ptr %i.iy, i64 %indvars.iv626 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 36
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jd = load float, ptr %i.ja, align 4, !tbaa !18
  %i.je = load float, ptr %i.jb, align 4, !tbaa !18
  %i.jf = load float, ptr %i.jc, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #7
  %i.jg = load float, ptr %i.az, align 4, !tbaa !18 ; 2 uses
  %i.jh = load float, ptr %i.bb, align 4, !tbaa !18 ; 2 uses
  %i.ji = load float, ptr %i.bd, align 4, !tbaa !18 ; 2 uses
  %i.jj = load <2 x float>, ptr %3, align 4, !tbaa !18 ; 4 uses
  %i.jk = load <2 x float>, ptr %i.ad, align 4, !tbaa !18 ; 3 uses
  %i.jl = load <2 x float>, ptr %i.ae, align 4, !tbaa !18 ; 4 uses
  %i.jm = insertelement <3 x float> poison, float %i.je, i64 0
  %i.jn = shufflevector <3 x float> %i.jm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jo = shufflevector <2 x float> %i.jl, <2 x float> %i.jj, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.jp = shufflevector <2 x float> %i.jk, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.jq = shufflevector <3 x float> %i.jo, <3 x float> %i.jp, <3 x i32> <i32 0, i32 1, i32 4>
  %i.jr = fmul <3 x float> %i.jn, %i.jq
  %i.js = shufflevector <2 x float> %i.jl, <2 x float> %i.jj, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.jt = shufflevector <3 x float> %i.js, <3 x float> %i.jp, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ju = insertelement <3 x float> poison, float %i.jd, i64 0
  %i.jv = shufflevector <3 x float> %i.ju, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jt, <3 x float> %i.jv, <3 x float> %i.jr)
  %i.jx = insertelement <3 x float> poison, float %i.ji, i64 0
  %i.jy = insertelement <3 x float> %i.jx, float %i.jg, i64 1
  %i.jz = insertelement <3 x float> %i.jy, float %i.jh, i64 2
  %i.ka = insertelement <3 x float> poison, float %i.jf, i64 0
  %i.kb = shufflevector <3 x float> %i.ka, <3 x float> poison, <3 x i32> zeroinitializer
  %i.kc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jz, <3 x float> %i.kb, <3 x float> %i.jw) ; 6 uses
  %i.kd = extractelement <3 x float> %i.kc, i64 2 ; 2 uses
  %i.ke = extractelement <3 x float> %i.kc, i64 1 ; 3 uses
  %i.kf = extractelement <3 x float> %i.kc, i64 0 ; 3 uses
  %.sroa.0.4.vec.insert.i176 = shufflevector <3 x float> %i.kc, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %.sroa.3.12.vec.insert.i177 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kf, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i176, ptr %19, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i177, ptr %i.id, align 8
  %i.kg = fmul float %i.cr, %i.kd
  %i.kh = call float @llvm.fmuladd.f32(float %i.co, float %i.ke, float %i.kg)
  %i.ki = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.kf, float %i.kh)
  %i.kj = fcmp olt float %i.ki, 0.000000e+00
  br i1 %i.kj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kk = fneg <3 x float> %i.kc                  ; 3 uses
  %i.kl = extractelement <3 x float> %i.kk, i64 2 ; 2 uses
  %i.km = extractelement <3 x float> %i.kk, i64 0 ; 2 uses
  %i.kn = fneg float %i.ke                        ; 2 uses
  store float %i.kn, ptr %19, align 8, !tbaa !18
  store float %i.kl, ptr %i.ie, align 4, !tbaa !18
  store float %i.km, ptr %i.id, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ko = phi float [ %i.km, %bb.k ], [ %i.kf, %bb.j ]
  %i.kp = phi float [ %i.kl, %bb.k ], [ %i.kd, %bb.j ]
  %i.kq = phi float [ %i.kn, %bb.k ], [ %i.ke, %bb.j ]
  %i.kr = phi <3 x float> [ %i.kk, %bb.k ], [ %i.kc, %bb.j ] ; 3 uses
  %i.ks = load i32, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.kt = add nsw i32 %i.ks, 1
  store i32 %i.kt, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.ku = load i8, ptr @gUseInternalObject, align 1, !tbaa !47, !range !24, !noundef !25
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.kw = fmul float %i.cr, %i.kp
  %i.kx = call float @llvm.fmuladd.f32(float %i.co, float %i.kq, float %i.kw)
  %i.ky = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.ko, float %i.kx) ; 2 uses
  %i.kz = load float, ptr %i.t, align 4, !tbaa !18
  %i.la = load float, ptr %i.v, align 4, !tbaa !18
  %i.lb = load float, ptr %i.x, align 4, !tbaa !18
  %i.lc = load float, ptr %i.ig, align 8, !tbaa !18
  %i.ld = load float, ptr %i.ii, align 8, !tbaa !18
  %i.le = load float, ptr %i.ij, align 8, !tbaa !31
  %i.lf = load float, ptr %i.ik, align 8, !tbaa !31
  %i.lg = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 2 uses
  %i.lh = load <2 x float>, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.li = load <2 x float>, ptr %i.q, align 4, !tbaa !18 ; 2 uses
  %i.lj = shufflevector <3 x float> %i.kr, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.lk = shufflevector <2 x float> %i.lh, <2 x float> %i.jk, <2 x i32> <i32 0, i32 2>
  %i.ll = fmul <2 x float> %i.lj, %i.lk
  %i.lm = shufflevector <2 x float> %i.lg, <2 x float> %i.jj, <2 x i32> <i32 0, i32 2>
  %i.ln = shufflevector <3 x float> %i.kr, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.lo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.ln, <2 x float> %i.ll)
  %i.lp = shufflevector <2 x float> %i.li, <2 x float> %i.jl, <2 x i32> <i32 0, i32 2>
  %i.lq = shufflevector <3 x float> %i.kr, <3 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> %i.lq, <2 x float> %i.lo) ; 2 uses
  %i.ls = shufflevector <2 x float> %i.lh, <2 x float> %i.jk, <2 x i32> <i32 1, i32 3>
  %i.lt = fmul <2 x float> %i.lj, %i.ls
  %i.lu = shufflevector <2 x float> %i.lg, <2 x float> %i.jj, <2 x i32> <i32 1, i32 3>
  %i.lv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.ln, <2 x float> %i.lt)
  %i.lw = shufflevector <2 x float> %i.li, <2 x float> %i.jl, <2 x i32> <i32 1, i32 3>
  %i.lx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.lq, <2 x float> %i.lv) ; 2 uses
  %26 = insertelement <2 x float> poison, float %i.la, i64 0
  %i.ly = insertelement <2 x float> %26, float %i.jh, i64 1
  %i.lz = fmul <2 x float> %i.lj, %i.ly
  %27 = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.ma = insertelement <2 x float> %27, float %i.jg, i64 1
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.ln, <2 x float> %i.lz)
  %28 = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.mc = insertelement <2 x float> %28, float %i.ji, i64 1
  %i.md = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mc, <2 x float> %i.lq, <2 x float> %i.mb) ; 2 uses
  %i.me = load <2 x float>, ptr %i.if, align 8, !tbaa !18 ; 2 uses
  %i.mf = fcmp olt <2 x float> %i.lr, zeroinitializer
  %i.mg = load <2 x float>, ptr %i.ih, align 8, !tbaa !18 ; 2 uses
  %i.mh = shufflevector <2 x float> %i.me, <2 x float> %i.mg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mi = fneg <2 x float> %i.mh
  %i.mj = select <2 x i1> %i.mf, <2 x float> %i.mi, <2 x float> %i.mh
  %i.mk = fcmp olt <2 x float> %i.lx, zeroinitializer
  %i.ml = shufflevector <2 x float> %i.me, <2 x float> %i.mg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mm = fneg <2 x float> %i.ml
  %i.mn = select <2 x i1> %i.mk, <2 x float> %i.mm, <2 x float> %i.ml
  %i.mo = fcmp olt <2 x float> %i.md, zeroinitializer
  %i.mp = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.mq = insertelement <2 x float> %i.mp, float %i.ld, i64 1 ; 2 uses
  %i.mr = fneg <2 x float> %i.mq
  %i.ms = select <2 x i1> %i.mo, <2 x float> %i.mr, <2 x float> %i.mq
  %i.mt = fmul <2 x float> %i.lx, %i.mn
  %i.mu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> %i.lr, <2 x float> %i.mt)
  %i.mv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.md, <2 x float> %i.mu) ; 2 uses
  %i.mw = insertelement <2 x float> poison, float %i.le, i64 0
  %i.mx = insertelement <2 x float> %i.mw, float %i.lf, i64 1 ; 2 uses
  %i.my = fcmp ogt <2 x float> %i.mv, %i.mx
  %i.mz = select <2 x i1> %i.my, <2 x float> %i.mv, <2 x float> %i.mx ; 2 uses
  %shift686 = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop687 = fadd <2 x float> %i.mz, %shift686
  %i.na = extractelement <2 x float> %foldExtExtBinop687, i64 0 ; 2 uses
  %i.nb = fadd float %i.ky, %i.na                 ; 2 uses
  %i.nc = fsub float %i.na, %i.ky                 ; 2 uses
  %i.nd = fcmp olt float %i.nb, %i.nc
  %i.ne = select i1 %i.nd, float %i.nb, float %i.nc
  %i.nf = fcmp ule float %i.ne, %.5109559
  br i1 %i.nf, label %bb.n, label %.thread391

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ng = load i32, ptr @gActualNbTests, align 4, !tbaa !32
  %i.nh = add nsw i32 %i.ng, 1
  store i32 %i.nh, ptr @gActualNbTests, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11)
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13)
  %i.ni = load float, ptr %i.f, align 4, !tbaa !18 ; 2 uses
  %i.nj = load float, ptr %i.g, align 4, !tbaa !18 ; 2 uses
  %i.nk = fcmp olt float %i.ni, %i.nj
  br i1 %i.nk, label %.thread399, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.nl = load float, ptr %i.h, align 4, !tbaa !18 ; 2 uses
  %i.nm = load float, ptr %i.e, align 4, !tbaa !18 ; 2 uses
  %i.nn = fcmp olt float %i.nl, %i.nm
  br i1 %i.nn, label %.thread399, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.no = fsub float %i.ni, %i.nj                 ; 2 uses
  %i.np = fsub float %i.nl, %i.nm                 ; 2 uses
  %i.nq = fcmp olt float %i.no, %i.np
  %..i182 = select i1 %i.nq, float %i.no, float %i.np ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.nr = fcmp olt float %..i182, %.5109559
  br i1 %i.nr, label %bb.q, label %.thread391

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !21
  br label %.thread391

.thread399:                                       ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  br label %bb.at

.thread391:                                       ; preds = %bb.p, %bb.q, %bb.m
  %.8112394 = phi float [ %.5109559, %bb.m ], [ %.5109559, %bb.p ], [ %..i182, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  %indvars.iv.next627 = add nuw nsw i64 %indvars.iv626, 1 ; 2 uses
  %exitcond630.not = icmp eq i64 %indvars.iv.next627, %wide.trip.count629
  br i1 %exitcond630.not, label %.preheader, label %bb.j, !llvm.loop !44

bb.r:                                             ; preds = %.lr.ph611, %._crit_edge580
  %i.ns = phi i32 [ %i.im, %.lr.ph611 ], [ %i.ut, %._crit_edge580 ]
  %i.nt = phi i32 [ %.pre, %.lr.ph611 ], [ %i.uu, %._crit_edge580 ] ; 2 uses
  %indvars.iv634 = phi i64 [ 0, %.lr.ph611 ], [ %indvars.iv.next635, %._crit_edge580 ] ; 3 uses
  %.10114610 = phi float [ %.5109.lcssa, %.lr.ph611 ], [ %.11115.lcssa, %._crit_edge580 ] ; 2 uses
  %.0129607 = phi i32 [ -1, %.lr.ph611 ], [ %.1130.lcssa, %._crit_edge580 ] ; 2 uses
  %.0137606 = phi i32 [ -1, %.lr.ph611 ], [ %.1138.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.0273.0605 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.0273.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.6275.0604 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.6275.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.9277.0603 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.9277.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.0282.0602 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.0282.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.5283.0601 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.5283.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.7284.0600 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.7284.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.0286.0599 = phi <2 x float> [ undef, %.lr.ph611 ], [ %.sroa.0286.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.5287.0598 = phi <2 x float> [ undef, %.lr.ph611 ], [ %.sroa.5287.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.0288.0597 = phi <2 x float> [ undef, %.lr.ph611 ], [ %.sroa.0288.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.5289.0596 = phi <2 x float> [ undef, %.lr.ph611 ], [ %.sroa.5289.1.lcssa, %._crit_edge580 ] ; 2 uses
  %i.nu = load ptr, ptr %i.in, align 8, !tbaa !16
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %i.nu, i64 %indvars.iv634 ; 3 uses
  %.sroa.0266.0.copyload = load float, ptr %i.nv, align 4
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %.sroa.4267.0.copyload = load float, ptr %.sroa.4267.0..sroa_idx, align 4
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %.sroa.5268.0.copyload = load float, ptr %.sroa.5268.0..sroa_idx, align 4
  %i.nw = load float, ptr %i.t, align 4, !tbaa !18
  %i.nx = load float, ptr %i.v, align 4, !tbaa !18
  %i.ny = load float, ptr %i.x, align 4, !tbaa !18
  %i.nz = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 2 uses
  %i.oa = load <2 x float>, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.ob = load <2 x float>, ptr %i.q, align 4, !tbaa !18
  %i.oc = insertelement <3 x float> poison, float %.sroa.4267.0.copyload, i64 0
  %i.od = shufflevector <3 x float> %i.oc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.oe = shufflevector <2 x float> %i.nz, <2 x float> %i.oa, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.of = shufflevector <2 x float> %i.ob, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.og = shufflevector <3 x float> %i.oe, <3 x float> %i.of, <3 x i32> <i32 0, i32 1, i32 4>
  %i.oh = fmul <3 x float> %i.od, %i.og
  %i.oi = shufflevector <2 x float> %i.nz, <2 x float> %i.oa, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.oj = shufflevector <3 x float> %i.oi, <3 x float> %i.of, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ok = insertelement <3 x float> poison, float %.sroa.0266.0.copyload, i64 0
  %i.ol = shufflevector <3 x float> %i.ok, <3 x float> poison, <3 x i32> zeroinitializer
  %i.om = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.oj, <3 x float> %i.ol, <3 x float> %i.oh)
  %i.on = insertelement <3 x float> poison, float %i.nw, i64 0
  %i.oo = insertelement <3 x float> %i.on, float %i.nx, i64 1
  %i.op = insertelement <3 x float> %i.oo, float %i.ny, i64 2
  %i.oq = insertelement <3 x float> poison, float %.sroa.5268.0.copyload, i64 0
  %i.or = shufflevector <3 x float> %i.oq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.os = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.op, <3 x float> %i.or, <3 x float> %i.om) ; 4 uses
  %i.ot = shufflevector <3 x float> %i.os, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ou = shufflevector <3 x float> %i.os, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ov = insertelement <2 x float> %i.ou, float 0.000000e+00, i64 1
  %i.ow = icmp sgt i32 %i.nt, 0
  br i1 %i.ow, label %.lr.ph579.preheader, label %._crit_edge580

.lr.ph579.preheader:                              ; preds = %bb.r
  %i.ox = trunc nuw nsw i64 %indvars.iv634 to i32
  %i.oy = shufflevector <3 x float> %i.os, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  br label %.lr.ph579

.lr.ph579:                                        ; preds = %.lr.ph579.preheader, %bb.aa
  %indvars.iv631 = phi i64 [ 0, %.lr.ph579.preheader ], [ %indvars.iv.next632, %bb.aa ] ; 3 uses
  %.11115577 = phi float [ %.10114610, %.lr.ph579.preheader ], [ %.15119.ph, %bb.aa ] ; 5 uses
  %.1130574 = phi i32 [ %.0129607, %.lr.ph579.preheader ], [ %.5134.ph, %bb.aa ] ; 3 uses
  %.1138573 = phi i32 [ %.0137606, %.lr.ph579.preheader ], [ %.5142.ph, %bb.aa ] ; 3 uses
  %.sroa.0273.1572 = phi float [ %.sroa.0273.0605, %.lr.ph579.preheader ], [ %.sroa.0273.3.ph, %bb.aa ] ; 3 uses
  %.sroa.6275.1571 = phi float [ %.sroa.6275.0604, %.lr.ph579.preheader ], [ %.sroa.6275.3.ph, %bb.aa ] ; 3 uses
  %.sroa.9277.1570 = phi float [ %.sroa.9277.0603, %.lr.ph579.preheader ], [ %.sroa.9277.3.ph, %bb.aa ] ; 3 uses
  %.sroa.0282.1569 = phi float [ %.sroa.0282.0602, %.lr.ph579.preheader ], [ %.sroa.0282.3.ph, %bb.aa ] ; 3 uses
  %.sroa.5283.1568 = phi float [ %.sroa.5283.0601, %.lr.ph579.preheader ], [ %.sroa.5283.3.ph, %bb.aa ] ; 3 uses
  %.sroa.7284.1567 = phi float [ %.sroa.7284.0600, %.lr.ph579.preheader ], [ %.sroa.7284.3.ph, %bb.aa ] ; 3 uses
  %.sroa.0286.1566 = phi <2 x float> [ %.sroa.0286.0599, %.lr.ph579.preheader ], [ %.sroa.0286.3.ph, %bb.aa ] ; 3 uses
  %.sroa.5287.1565 = phi <2 x float> [ %.sroa.5287.0598, %.lr.ph579.preheader ], [ %.sroa.5287.3.ph, %bb.aa ] ; 3 uses
  %.sroa.0288.1564 = phi <2 x float> [ %.sroa.0288.0597, %.lr.ph579.preheader ], [ %.sroa.0288.3.ph, %bb.aa ] ; 3 uses
  %.sroa.5289.1563 = phi <2 x float> [ %.sroa.5289.0596, %.lr.ph579.preheader ], [ %.sroa.5289.3.ph, %bb.aa ] ; 3 uses
  %i.oz = load ptr, ptr %i.ip, align 8, !tbaa !16
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.oz, i64 %indvars.iv631 ; 3 uses
  %.sroa.0260.0.copyload = load float, ptr %i.pa, align 4
  %.sroa.4.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx261, align 4
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %.sroa.5262.0.copyload = load float, ptr %.sroa.5262.0..sroa_idx, align 4
  %i.pb = load float, ptr %i.az, align 4, !tbaa !18 ; 2 uses
  %i.pc = load float, ptr %i.bb, align 4, !tbaa !18 ; 2 uses
  %i.pd = load float, ptr %i.bd, align 4, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #7
  %i.pe = load <2 x float>, ptr %3, align 4, !tbaa !18 ; 3 uses
  %i.pf = load <2 x float>, ptr %i.ad, align 4, !tbaa !18 ; 4 uses
  %i.pg = load <2 x float>, ptr %i.ae, align 4, !tbaa !18 ; 4 uses
  %i.ph = insertelement <3 x float> poison, float %.sroa.4.0.copyload, i64 0
  %i.pi = shufflevector <3 x float> %i.ph, <3 x float> poison, <3 x i32> zeroinitializer
  %i.pj = shufflevector <2 x float> %i.pf, <2 x float> %i.pg, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.pk = shufflevector <2 x float> %i.pe, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.pl = shufflevector <3 x float> %i.pj, <3 x float> %i.pk, <3 x i32> <i32 0, i32 1, i32 4>
  %i.pm = fmul <3 x float> %i.pi, %i.pl
  %i.pn = shufflevector <2 x float> %i.pf, <2 x float> %i.pg, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.po = shufflevector <3 x float> %i.pn, <3 x float> %i.pk, <3 x i32> <i32 0, i32 1, i32 3>
  %i.pp = insertelement <3 x float> poison, float %.sroa.0260.0.copyload, i64 0
  %i.pq = shufflevector <3 x float> %i.pp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.pr = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.po, <3 x float> %i.pq, <3 x float> %i.pm)
  %i.ps = insertelement <3 x float> poison, float %i.pc, i64 0
  %i.pt = insertelement <3 x float> %i.ps, float %i.pd, i64 1
  %i.pu = insertelement <3 x float> %i.pt, float %i.pb, i64 2
  %i.pv = insertelement <3 x float> poison, float %.sroa.5262.0.copyload, i64 0
  %i.pw = shufflevector <3 x float> %i.pv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.px = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pu, <3 x float> %i.pw, <3 x float> %i.pr) ; 4 uses
  %i.py = shufflevector <3 x float> %i.px, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.pz = shufflevector <3 x float> <float poison, float 0.000000e+00, float poison>, <3 x float> %i.px, <2 x i32> <i32 4, i32 1>
  %i.qa = fneg <3 x float> %i.px
  %i.qb = shufflevector <3 x float> %i.qa, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.qc = fmul <3 x float> %i.oy, %i.qb
  %i.qd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.os, <3 x float> %i.px, <3 x float> %i.qc) ; 8 uses
  %i.qe = shufflevector <3 x float> %i.qd, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.qf = insertelement <2 x float> %i.qe, float 0.000000e+00, i64 1
  store <2 x float> %i.qf, ptr %i.iq, align 4
  %i.qg = extractelement <3 x float> %i.qd, i64 1 ; 3 uses
  %i.qh = call noundef float @llvm.fabs.f32(float %i.qg)
  %i.qi = fpext float %i.qh to double
  %i.qj = fcmp ogt double %i.qi, f0x3EB0C6F7A0B5ED8D
  br i1 %i.qj, label %_Z12IsAlmostZeroRK9btVector3.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph579
  %i.qk = extractelement <3 x float> %i.qd, i64 2
  %i.ql = call noundef float @llvm.fabs.f32(float %i.qk)
  %i.qm = fpext float %i.ql to double
  %i.qn = fcmp ule double %i.qm, f0x3EB0C6F7A0B5ED8D
  %i.qo = extractelement <3 x float> %i.qd, i64 0
  %i.qp = call float @llvm.fabs.f32(float %i.qo)
  %i.qq = fpext float %i.qp to double
  %i.qr = fcmp ule double %i.qq, f0x3EB0C6F7A0B5ED8D
  %or.cond = select i1 %i.qn, i1 %i.qr, i1 false
  br i1 %or.cond, label %bb.aa, label %_Z12IsAlmostZeroRK9btVector3.exit.thread

_Z12IsAlmostZeroRK9btVector3.exit.thread:         ; preds = %bb.s, %.lr.ph579
  %foldExtExtBinop689 = fmul <3 x float> %i.qd, %i.qd
  %i.qs = extractelement <3 x float> %foldExtExtBinop689, i64 2
  %i.qt = call float @llvm.fmuladd.f32(float %i.qg, float %i.qg, float %i.qs)
  %i.qu = extractelement <3 x float> %i.qd, i64 0 ; 2 uses
  %i.qv = call noundef float @llvm.fmuladd.f32(float %i.qu, float %i.qu, float %i.qt)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.qv)
  %i.qw = fdiv float 1.000000e+00, %sqrt.i.i
  %i.qx = insertelement <3 x float> poison, float %i.qw, i64 0
  %i.qy = shufflevector <3 x float> %i.qx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.qz = fmul <3 x float> %i.qd, %i.qy           ; 5 uses
  %i.ra = extractelement <3 x float> %i.qz, i64 2 ; 3 uses
  %i.rb = extractelement <3 x float> %i.qz, i64 1 ; 4 uses
  %i.rc = extractelement <3 x float> %i.qz, i64 0 ; 3 uses
  store float %i.rb, ptr %20, align 4, !tbaa !18
  store float %i.ra, ptr %i.ir, align 4, !tbaa !18
  store float %i.rc, ptr %i.iq, align 4, !tbaa !18
  %i.rd = fmul float %i.cr, %i.ra
  %i.re = call float @llvm.fmuladd.f32(float %i.co, float %i.rb, float %i.rd)
  %i.rf = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.rc, float %i.re)
  %i.rg = fcmp olt float %i.rf, 0.000000e+00
  br i1 %i.rg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_Z12IsAlmostZeroRK9btVector3.exit.thread
  %i.rh = fneg <3 x float> %i.qz                  ; 3 uses
  %i.ri = extractelement <3 x float> %i.rh, i64 2 ; 2 uses
  %i.rj = extractelement <3 x float> %i.rh, i64 0 ; 2 uses
  %i.rk = fneg float %i.rb                        ; 2 uses
  store float %i.rk, ptr %20, align 4, !tbaa !18
  store float %i.ri, ptr %i.ir, align 4, !tbaa !18
  store float %i.rj, ptr %i.iq, align 4, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_Z12IsAlmostZeroRK9btVector3.exit.thread
  %i.rl = phi float [ %i.rj, %bb.t ], [ %i.rc, %_Z12IsAlmostZeroRK9btVector3.exit.thread ]
  %i.rm = phi float [ %i.ri, %bb.t ], [ %i.ra, %_Z12IsAlmostZeroRK9btVector3.exit.thread ]
  %i.rn = phi float [ %i.rk, %bb.t ], [ %i.rb, %_Z12IsAlmostZeroRK9btVector3.exit.thread ]
  %i.ro = phi <3 x float> [ %i.rh, %bb.t ], [ %i.qz, %_Z12IsAlmostZeroRK9btVector3.exit.thread ] ; 3 uses
  %i.rp = load i32, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.rq = add nsw i32 %i.rp, 1
  store i32 %i.rq, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.rr = load i8, ptr @gUseInternalObject, align 1, !tbaa !47, !range !24, !noundef !25
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.rt = fmul float %i.cr, %i.rm
  %i.ru = call float @llvm.fmuladd.f32(float %i.co, float %i.rn, float %i.rt)
  %i.rv = call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.rl, float %i.ru) ; 2 uses
  %i.rw = load float, ptr %i.t, align 4, !tbaa !18
  %i.rx = load float, ptr %i.v, align 4, !tbaa !18
  %i.ry = load float, ptr %i.x, align 4, !tbaa !18
  %i.rz = load float, ptr %i.it, align 8, !tbaa !18
  %i.sa = load float, ptr %i.iv, align 8, !tbaa !18
  %i.sb = load float, ptr %i.iw, align 8, !tbaa !31
  %i.sc = load float, ptr %i.ix, align 8, !tbaa !31
  %i.sd = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 2 uses
  %i.se = load <2 x float>, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.sf = load <2 x float>, ptr %i.q, align 4, !tbaa !18 ; 2 uses
  %i.sg = shufflevector <3 x float> %i.ro, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.sh = shufflevector <2 x float> %i.se, <2 x float> %i.pf, <2 x i32> <i32 0, i32 2>
  %i.si = fmul <2 x float> %i.sg, %i.sh
  %i.sj = shufflevector <2 x float> %i.sd, <2 x float> %i.pe, <2 x i32> <i32 0, i32 2>
  %i.sk = shufflevector <3 x float> %i.ro, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.sl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sj, <2 x float> %i.sk, <2 x float> %i.si)
  %i.sm = shufflevector <2 x float> %i.sf, <2 x float> %i.pg, <2 x i32> <i32 0, i32 2>
  %i.sn = shufflevector <3 x float> %i.ro, <3 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.so = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sm, <2 x float> %i.sn, <2 x float> %i.sl) ; 2 uses
  %i.sp = shufflevector <2 x float> %i.se, <2 x float> %i.pf, <2 x i32> <i32 1, i32 3>
  %i.sq = fmul <2 x float> %i.sg, %i.sp
  %i.sr = shufflevector <2 x float> %i.sd, <2 x float> %i.pe, <2 x i32> <i32 1, i32 3>
  %i.ss = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sr, <2 x float> %i.sk, <2 x float> %i.sq)
  %i.st = shufflevector <2 x float> %i.sf, <2 x float> %i.pg, <2 x i32> <i32 1, i32 3>
  %i.su = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.st, <2 x float> %i.sn, <2 x float> %i.ss) ; 2 uses
  %29 = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.sv = insertelement <2 x float> %29, float %i.pc, i64 1
  %i.sw = fmul <2 x float> %i.sg, %i.sv
  %30 = insertelement <2 x float> poison, float %i.rw, i64 0
  %i.sx = insertelement <2 x float> %30, float %i.pb, i64 1
  %i.sy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sx, <2 x float> %i.sk, <2 x float> %i.sw)
  %31 = insertelement <2 x float> poison, float %i.ry, i64 0
  %i.sz = insertelement <2 x float> %31, float %i.pd, i64 1
  %i.ta = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sz, <2 x float> %i.sn, <2 x float> %i.sy) ; 2 uses
  %i.tb = load <2 x float>, ptr %i.is, align 8, !tbaa !18 ; 2 uses
  %i.tc = fcmp olt <2 x float> %i.so, zeroinitializer
  %i.td = load <2 x float>, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.te = shufflevector <2 x float> %i.tb, <2 x float> %i.td, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tf = fneg <2 x float> %i.te
  %i.tg = select <2 x i1> %i.tc, <2 x float> %i.tf, <2 x float> %i.te
  %i.th = fcmp olt <2 x float> %i.su, zeroinitializer
  %i.ti = shufflevector <2 x float> %i.tb, <2 x float> %i.td, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.tj = fneg <2 x float> %i.ti
  %i.tk = select <2 x i1> %i.th, <2 x float> %i.tj, <2 x float> %i.ti
  %i.tl = fcmp olt <2 x float> %i.ta, zeroinitializer
  %i.tm = insertelement <2 x float> poison, float %i.rz, i64 0
  %i.tn = insertelement <2 x float> %i.tm, float %i.sa, i64 1 ; 2 uses
  %i.to = fneg <2 x float> %i.tn
  %i.tp = select <2 x i1> %i.tl, <2 x float> %i.to, <2 x float> %i.tn
  %i.tq = fmul <2 x float> %i.su, %i.tk
  %i.tr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tg, <2 x float> %i.so, <2 x float> %i.tq)
  %i.ts = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tp, <2 x float> %i.ta, <2 x float> %i.tr) ; 2 uses
  %i.tt = insertelement <2 x float> poison, float %i.sb, i64 0
  %i.tu = insertelement <2 x float> %i.tt, float %i.sc, i64 1 ; 2 uses
  %i.tv = fcmp ogt <2 x float> %i.ts, %i.tu
  %i.tw = select <2 x i1> %i.tv, <2 x float> %i.ts, <2 x float> %i.tu ; 2 uses
  %shift691 = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop692 = fadd <2 x float> %i.tw, %shift691
  %i.tx = extractelement <2 x float> %foldExtExtBinop692, i64 0 ; 2 uses
  %i.ty = fadd float %i.rv, %i.tx                 ; 2 uses
  %i.tz = fsub float %i.tx, %i.rv                 ; 2 uses
  %i.ua = fcmp olt float %i.ty, %i.tz
  %i.ub = select i1 %i.ua, float %i.ty, float %i.tz
  %i.uc = fcmp ule float %i.ub, %.11115577
  br i1 %i.uc, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ud = load i32, ptr @gActualNbTests, align 4, !tbaa !32
  %i.ue = add nsw i32 %i.ud, 1
  store i32 %i.ue, ptr @gActualNbTests, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.uf = load float, ptr %i.b, align 4, !tbaa !18 ; 2 uses
  %i.ug = load float, ptr %i.c, align 4, !tbaa !18 ; 2 uses
  %i.uh = fcmp olt float %i.uf, %i.ug
  br i1 %i.uh, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ui = load float, ptr %i.d, align 4, !tbaa !18 ; 2 uses
  %i.uj = load float, ptr %i.a, align 4, !tbaa !18 ; 2 uses
  %i.uk = fcmp olt float %i.ui, %i.uj
  br i1 %i.uk, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ul = fsub float %i.uf, %i.ug                 ; 2 uses
  %i.um = fsub float %i.ui, %i.uj                 ; 2 uses
  %i.un = fcmp olt float %i.ul, %i.um             ; 7 uses
  %..i205 = select i1 %i.un, float %i.ul, float %i.um ; 2 uses
  %.val = load float, ptr %7, align 4
  %.val523 = load float, ptr %6, align 4
  %.31.i206.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.un, ptr %7, ptr %6
  %.31.i206.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.31.i206.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  %.sroa.0254.sroa.4.0.copyload = load float, ptr %.31.i206.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %.31.i206.sroa.sel371.v.sroa.sel.v.sroa.sel.v = select i1 %i.un, ptr %7, ptr %6
  %.31.i206.sroa.sel371.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.31.i206.sroa.sel371.v.sroa.sel.v.sroa.sel.v, i64 8
  %.sroa.0254.sroa.5.0.copyload = load float, ptr %.31.i206.sroa.sel371.v.sroa.sel.v.sroa.sel, align 4
  %.val524 = load float, ptr %8, align 4
  %.val525 = load float, ptr %9, align 4
  %.32.i207.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.un, ptr %8, ptr %9
  %.32.i207.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.32.i207.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  %.sroa.0253.sroa.4.0.copyload = load float, ptr %.32.i207.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %.32.i207.sroa.sel363.v.sroa.sel.v.sroa.sel.v = select i1 %i.un, ptr %8, ptr %9
  %.32.i207.sroa.sel363.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.32.i207.sroa.sel363.v.sroa.sel.v.sroa.sel.v, i64 8
  %.sroa.0253.sroa.5.0.copyload = load float, ptr %.32.i207.sroa.sel363.v.sroa.sel.v.sroa.sel, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.uo = fcmp olt float %..i205, %.11115577
  br i1 %i.uo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0253.sroa.0.0.copyload = select i1 %i.un, float %.val524, float %.val525
  %.sroa.0254.sroa.0.0.copyload = select i1 %i.un, float %.val, float %.val523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !21
  %i.up = trunc nuw nsw i64 %indvars.iv631 to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.v, %bb.z, %bb.y
  %.sroa.5289.3.ph = phi <2 x float> [ %i.ov, %bb.z ], [ %.sroa.5289.1563, %bb.y ], [ %.sroa.5289.1563, %bb.v ], [ %.sroa.5289.1563, %bb.s ] ; 2 uses
  %.sroa.0288.3.ph = phi <2 x float> [ %i.ot, %bb.z ], [ %.sroa.0288.1564, %bb.y ], [ %.sroa.0288.1564, %bb.v ], [ %.sroa.0288.1564, %bb.s ] ; 2 uses
  %.sroa.5287.3.ph = phi <2 x float> [ %i.pz, %bb.z ], [ %.sroa.5287.1565, %bb.y ], [ %.sroa.5287.1565, %bb.v ], [ %.sroa.5287.1565, %bb.s ] ; 2 uses
  %.sroa.0286.3.ph = phi <2 x float> [ %i.py, %bb.z ], [ %.sroa.0286.1566, %bb.y ], [ %.sroa.0286.1566, %bb.v ], [ %.sroa.0286.1566, %bb.s ] ; 2 uses
  %.sroa.7284.3.ph = phi float [ %.sroa.0254.sroa.5.0.copyload, %bb.z ], [ %.sroa.7284.1567, %bb.y ], [ %.sroa.7284.1567, %bb.v ], [ %.sroa.7284.1567, %bb.s ] ; 2 uses
  %.sroa.5283.3.ph = phi float [ %.sroa.0254.sroa.4.0.copyload, %bb.z ], [ %.sroa.5283.1568, %bb.y ], [ %.sroa.5283.1568, %bb.v ], [ %.sroa.5283.1568, %bb.s ] ; 2 uses
  %.sroa.0282.3.ph = phi float [ %.sroa.0254.sroa.0.0.copyload, %bb.z ], [ %.sroa.0282.1569, %bb.y ], [ %.sroa.0282.1569, %bb.v ], [ %.sroa.0282.1569, %bb.s ] ; 2 uses
  %.sroa.9277.3.ph = phi float [ %.sroa.0253.sroa.5.0.copyload, %bb.z ], [ %.sroa.9277.1570, %bb.y ], [ %.sroa.9277.1570, %bb.v ], [ %.sroa.9277.1570, %bb.s ] ; 2 uses
  %.sroa.6275.3.ph = phi float [ %.sroa.0253.sroa.4.0.copyload, %bb.z ], [ %.sroa.6275.1571, %bb.y ], [ %.sroa.6275.1571, %bb.v ], [ %.sroa.6275.1571, %bb.s ] ; 2 uses
  %.sroa.0273.3.ph = phi float [ %.sroa.0253.sroa.0.0.copyload, %bb.z ], [ %.sroa.0273.1572, %bb.y ], [ %.sroa.0273.1572, %bb.v ], [ %.sroa.0273.1572, %bb.s ] ; 2 uses
  %.5142.ph = phi i32 [ %i.ox, %bb.z ], [ %.1138573, %bb.y ], [ %.1138573, %bb.v ], [ %.1138573, %bb.s ] ; 2 uses
  %.5134.ph = phi i32 [ %i.up, %bb.z ], [ %.1130574, %bb.y ], [ %.1130574, %bb.v ], [ %.1130574, %bb.s ] ; 2 uses
  %.15119.ph = phi float [ %..i205, %bb.z ], [ %.11115577, %bb.y ], [ %.11115577, %bb.v ], [ %.11115577, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  %indvars.iv.next632 = add nuw nsw i64 %indvars.iv631, 1 ; 2 uses
  %i.uq = load i32, ptr %i.io, align 4, !tbaa !15 ; 2 uses
  %i.ur = sext i32 %i.uq to i64
  %i.us = icmp slt i64 %indvars.iv.next632, %i.ur
  br i1 %i.us, label %.lr.ph579, label %._crit_edge580.loopexit, !llvm.loop !45

._crit_edge580.loopexit:                          ; preds = %bb.aa
  %.pre644 = load i32, ptr %i.il, align 4, !tbaa !15
  br label %._crit_edge580

._crit_edge580:                                   ; preds = %._crit_edge580.loopexit, %bb.r
  %i.ut = phi i32 [ %i.ns, %bb.r ], [ %.pre644, %._crit_edge580.loopexit ] ; 2 uses
  %i.uu = phi i32 [ %i.nt, %bb.r ], [ %i.uq, %._crit_edge580.loopexit ]
  %.sroa.5289.1.lcssa = phi <2 x float> [ %.sroa.5289.0596, %bb.r ], [ %.sroa.5289.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.0288.1.lcssa = phi <2 x float> [ %.sroa.0288.0597, %bb.r ], [ %.sroa.0288.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.sroa.5287.1.lcssa = phi <2 x float> [ %.sroa.5287.0598, %bb.r ], [ %.sroa.5287.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.0286.1.lcssa = phi <2 x float> [ %.sroa.0286.0599, %bb.r ], [ %.sroa.0286.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.sroa.7284.1.lcssa = phi float [ %.sroa.7284.0600, %bb.r ], [ %.sroa.7284.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.5283.1.lcssa = phi float [ %.sroa.5283.0601, %bb.r ], [ %.sroa.5283.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.0282.1.lcssa = phi float [ %.sroa.0282.0602, %bb.r ], [ %.sroa.0282.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.9277.1.lcssa = phi float [ %.sroa.9277.0603, %bb.r ], [ %.sroa.9277.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.sroa.6275.1.lcssa = phi float [ %.sroa.6275.0604, %bb.r ], [ %.sroa.6275.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.sroa.0273.1.lcssa = phi float [ %.sroa.0273.0605, %bb.r ], [ %.sroa.0273.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.1138.lcssa = phi i32 [ %.0137606, %bb.r ], [ %.5142.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.1130.lcssa = phi i32 [ %.0129607, %bb.r ], [ %.5134.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.11115.lcssa = phi float [ %.10114610, %bb.r ], [ %.15119.ph, %._crit_edge580.loopexit ]
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 2 uses
  %i.uv = sext i32 %i.ut to i64
  %.not162.not = icmp slt i64 %indvars.iv.next635, %i.uv
  br i1 %.not162.not, label %bb.r, label %.thread498, !llvm.loop !46

bb.ab:                                            ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  br label %bb.at

.thread498:                                       ; preds = %._crit_edge580
  %i.uw = icmp sgt i32 %.1138.lcssa, -1
  %i.ux = icmp sgt i32 %.1130.lcssa, -1
  %i.uy = select i1 %i.uw, i1 %i.ux, i1 false
  br i1 %i.uy, label %bb.ac, label %.thread498.thread

bb.ac:                                            ; preds = %.thread498
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #7
  %i.uz = fsub float %.sroa.0273.1.lcssa, %.sroa.0282.1.lcssa ; 3 uses
  %i.va = fsub float %.sroa.6275.1.lcssa, %.sroa.5283.1.lcssa ; 3 uses
  %i.vb = fsub float %.sroa.9277.1.lcssa, %.sroa.7284.1.lcssa ; 3 uses
  %.sroa.0288.0.vec.extract = extractelement <2 x float> %.sroa.0288.1.lcssa, i64 0 ; 3 uses
  %.sroa.0288.4.vec.extract = extractelement <2 x float> %.sroa.0288.1.lcssa, i64 1 ; 3 uses
  %.sroa.5289.8.vec.extract = extractelement <2 x float> %.sroa.5289.1.lcssa, i64 0 ; 3 uses
  %.sroa.0286.0.vec.extract = extractelement <2 x float> %.sroa.0286.1.lcssa, i64 0 ; 3 uses
  %.sroa.0286.4.vec.extract = extractelement <2 x float> %.sroa.0286.1.lcssa, i64 1 ; 3 uses
  %.sroa.5287.8.vec.extract = extractelement <2 x float> %.sroa.5287.1.lcssa, i64 0 ; 3 uses
  %i.vc = fmul float %.sroa.0288.4.vec.extract, %.sroa.0286.4.vec.extract
  %i.vd = call float @llvm.fmuladd.f32(float %.sroa.0288.0.vec.extract, float %.sroa.0286.0.vec.extract, float %i.vc)
  %i.ve = call noundef float @llvm.fmuladd.f32(float %.sroa.5289.8.vec.extract, float %.sroa.5287.8.vec.extract, float %i.vd) ; 6 uses
  %i.vf = fmul float %.sroa.0288.4.vec.extract, %i.va
  %i.vg = call float @llvm.fmuladd.f32(float %.sroa.0288.0.vec.extract, float %i.uz, float %i.vf)
  %i.vh = call noundef float @llvm.fmuladd.f32(float %.sroa.5289.8.vec.extract, float %i.vb, float %i.vg) ; 3 uses
  %i.vi = fmul float %.sroa.0286.4.vec.extract, %i.va
  %i.vj = call float @llvm.fmuladd.f32(float %.sroa.0286.0.vec.extract, float %i.uz, float %i.vi)
  %i.vk = call noundef float @llvm.fmuladd.f32(float %.sroa.5287.8.vec.extract, float %i.vb, float %i.vj)
  %i.vl = fneg float %i.ve
  %i.vm = call float @llvm.fmuladd.f32(float %i.vl, float %i.ve, float 1.000000e+00) ; 2 uses
  %i.vn = fcmp oeq float %i.vm, 0.000000e+00
  %.pre98.i = fneg float %i.vk                    ; 2 uses
  br i1 %i.vn, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.vo = call float @llvm.fmuladd.f32(float %.pre98.i, float %i.ve, float %i.vh)
  %i.vp = fdiv float %i.vo, %i.vm                 ; 3 uses
  %i.vq = fcmp olt float %i.vp, -1.000000e+30
  br i1 %i.vq, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.vr = fcmp ogt float %i.vp, 1.000000e+30
  br i1 %i.vr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br label %bb.ag

end_hunk_0
