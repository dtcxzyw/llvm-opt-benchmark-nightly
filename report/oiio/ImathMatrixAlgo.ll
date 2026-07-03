inline.NumInlined: 1149
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_19jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_19jacobiSVDIfEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !26   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !26 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !26 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !26 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !26 ; 3 uses
  %i.m = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.n = load float, ptr %i.k, align 4, !tbaa !26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load float, ptr %i.o, align 4, !tbaa !26 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load float, ptr %i.q, align 4, !tbaa !26 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 11 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.v, align 4, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 9 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 7 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ad, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  store float 1.000000e+00, ptr %i.ah, align 4, !tbaa !26
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.aj = fcmp ogt float %i.ai, 0.000000e+00
  %.sroa.speculated28.i.i = select i1 %i.aj, float %i.ai, float 0.000000e+00 ; 2 uses
  %i.ak = tail call noundef float @llvm.fabs.f32(float %i.e) ; 2 uses
  %i.al = fcmp olt float %.sroa.speculated28.i.i, %i.ak
  %.sroa.speculated24.i.i = select i1 %i.al, float %i.ak, float %.sroa.speculated28.i.i ; 2 uses
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.an = fcmp olt float %.sroa.speculated24.i.i, %i.am
  %.sroa.speculated20.i.i = select i1 %i.an, float %i.am, float %.sroa.speculated24.i.i ; 2 uses
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.ap = fcmp olt float %.sroa.speculated20.i.i, %i.ao
  %.sroa.speculated16.i.i = select i1 %i.ap, float %i.ao, float %.sroa.speculated20.i.i ; 2 uses
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.n) ; 2 uses
  %i.ar = fcmp olt float %.sroa.speculated16.i.i, %i.aq
  %.sroa.speculated12.i.i = select i1 %i.ar, float %i.aq, float %.sroa.speculated16.i.i ; 2 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.at = fcmp olt float %.sroa.speculated12.i.i, %i.as
  %.sroa.speculated.i.i = select i1 %i.at, float %i.as, float %.sroa.speculated12.i.i
  %i.au = fmul float %4, %.sroa.speculated.i.i    ; 2 uses
  %i.av = fcmp une float %i.au, 0.000000e+00
  br i1 %i.av, label %.preheader129.i.preheader, label %.loopexit130.i

.preheader129.i.preheader:                        ; preds = %bb.a
  %i.aw = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.n, i64 1
  %i.ay = insertelement <2 x float> %i.l, float %i.p, i64 1
  %i.az = insertelement <2 x float> %i.l, float %i.e, i64 0
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %.preheader129.i.preheader, %bb.g
  %.sroa.66.1 = phi float [ %.sroa.66.3, %bb.g ], [ %i.r, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.57.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.p, %.preheader129.i.preheader ]
  %.sroa.39.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.m, %.preheader129.i.preheader ]
  %.sroa.33.1 = phi float [ %.sroa.33.3, %bb.g ], [ %i.i, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.0.1 = phi float [ %i.qs, %bb.g ], [ %i.a, %.preheader129.i.preheader ] ; 5 uses
  %i.ba = phi float [ %.sroa.24.2, %bb.g ], [ %i.g, %.preheader129.i.preheader ] ; 5 uses
  %i.bb = phi float [ %.sroa.6.2, %bb.g ], [ %i.c, %.preheader129.i.preheader ] ; 6 uses
  %.082.i = phi i32 [ %i.bf, %bb.g ], [ 0, %.preheader129.i.preheader ] ; 2 uses
  %i.bc = phi <2 x float> [ %i.qe, %bb.g ], [ %i.az, %.preheader129.i.preheader ]
  %i.bd = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.ay, %.preheader129.i.preheader ] ; 2 uses
  %i.be = phi <2 x float> [ %i.qe, %bb.g ], [ %i.ax, %.preheader129.i.preheader ] ; 2 uses
  %i.bf = add nuw nsw i32 %.082.i, 1
  %i.bg = fadd float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.bh = fsub float %i.bb, %i.ba                 ; 2 uses
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh)
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bk = fmul float %4, %i.bj
  %i.bl = fcmp ugt float %i.bi, %i.bk
  br i1 %i.bl, label %bb.b, label %.thread134.i.i

bb.b:                                             ; preds = %.preheader129.i
  %i.bm = fdiv float %i.bg, %i.bh                 ; 4 uses
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float 1.000000e+00)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.bn)
  %i.bo = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bp = fcmp olt float %i.bm, 0.000000e+00
  %i.bq = fneg float %i.bo
  %.0120.i.i = select i1 %i.bp, float %i.bq, float %i.bo ; 5 uses
  %i.br = fmul float %i.bm, %.0120.i.i            ; 4 uses
  %i.bs = fadd float %i.ba, %i.bb
  %i.bt = fsub float %.sroa.33.1, %.sroa.0.1
  %i.bu = fmul float %i.bt, %i.br
  %i.bv = tail call float @llvm.fmuladd.f32(float %.0120.i.i, float %i.bs, float %i.bu) ; 2 uses
  %i.bw = fneg float %.sroa.33.1
  %i.bx = fmul float %.0120.i.i, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bb, float %i.bx)
  %i.bz = fmul float %i.by, 2.000000e+00          ; 2 uses
  %i.ca = tail call noundef float @llvm.fabs.f32(float %i.bz)
  %i.cb = tail call noundef float @llvm.fabs.f32(float %i.bv)
  %i.cc = fmul float %4, %i.cb
  %i.cd = fcmp ugt float %i.ca, %i.cc
  br i1 %i.cd, label %.thread.i.i, label %bb.c

.thread134.i.i:                                   ; preds = %.preheader129.i
  %i.ce = fsub float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.cf = fadd float %i.ba, %i.bb                 ; 2 uses
  %i.cg = tail call noundef float @llvm.fabs.f32(float %i.cf)
  %i.ch = tail call noundef float @llvm.fabs.f32(float %i.ce)
  %i.ci = fmul float %4, %i.ch
  %i.cj = fcmp ugt float %i.cg, %i.ci
  %i.ck = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float %.sroa.0.1, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %.sroa.33.1, i64 3
  br i1 %i.cj, label %.thread.i.i, label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.b
  %.0117146.i.i = phi float [ %i.ce, %.thread134.i.i ], [ %i.bv, %bb.b ]
  %.0118145.i.i = phi float [ %i.cf, %.thread134.i.i ], [ %i.bz, %bb.b ]
  %.0119144.i.i = phi float [ 1.000000e+00, %.thread134.i.i ], [ %i.br, %bb.b ]
  %.1121141.i.i = phi float [ 0.000000e+00, %.thread134.i.i ], [ %.0120.i.i, %bb.b ]
  %i.cn = fdiv float %.0117146.i.i, %.0118145.i.i ; 4 uses
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float 1.000000e+00)
  %sqrt133.i.i = tail call float @llvm.sqrt.f32(float %i.cp)
  %i.cq = fadd float %i.co, %sqrt133.i.i
  %i.cr = fdiv float 1.000000e+00, %i.cq          ; 2 uses
  %i.cs = fcmp olt float %i.cn, 0.000000e+00
  %i.ct = fneg float %i.cr
  %.0124.i.i = select i1 %i.cs, float %i.ct, float %i.cr ; 3 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %.0124.i.i, float %.0124.i.i, float 1.000000e+00)
  %sqrt132.i.i = tail call float @llvm.sqrt.f32(float %i.cu)
  %i.cv = fdiv float 1.000000e+00, %sqrt132.i.i   ; 2 uses
  %i.cw = fmul float %.0124.i.i, %i.cv
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i, %bb.b
  %.0119142.i.i = phi float [ %.0119144.i.i, %.thread.i.i ], [ %i.br, %bb.b ]
  %.1121139.i.i = phi float [ %.1121141.i.i, %.thread.i.i ], [ %.0120.i.i, %bb.b ] ; 2 uses
  %.0122129.i.i = phi float [ %i.cv, %.thread.i.i ], [ 1.000000e+00, %bb.b ] ; 12 uses
  %.0123128.i.i = phi float [ %i.cw, %.thread.i.i ], [ 0.000000e+00, %bb.b ] ; 10 uses
  %i.cx = fneg float %.1121139.i.i
  %i.cy = fneg float %.0123128.i.i                ; 2 uses
  %i.cz = fmul float %.sroa.33.1, %i.cy
  %i.da = tail call float @llvm.fmuladd.f32(float %i.ba, float %.0122129.i.i, float %i.cz)
  %i.db = fmul float %.sroa.33.1, %.0122129.i.i
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.ba, float %.0123128.i.i, float %i.db)
  %i.dd = insertelement <2 x float> poison, float %.sroa.39.0, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.da, i64 1
  %i.df = fneg <2 x float> %i.de
  %i.dg = fneg float %.sroa.57.0
  %i.dh = insertelement <2 x float> poison, float %.0123128.i.i, i64 0 ; 2 uses
  %i.di = insertelement <2 x float> %i.dh, float %.0122129.i.i, i64 1 ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %.1121139.i.i, i64 1
  %i.dl = fmul <2 x float> %i.di, %i.dk
  %i.dm = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dn = insertelement <2 x float> poison, float %.0119142.i.i, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.do, <2 x float> %i.dl) ; 11 uses
  %i.dq = fmul float %i.bb, %.0122129.i.i
  %i.dr = fmul float %i.bb, %i.cy
  %i.ds = insertelement <2 x float> poison, float %.sroa.0.1, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dq, i64 1
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dm, <2 x float> %i.dv)
  %i.dx = shufflevector <2 x float> %i.dh, <2 x float> %i.dp, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.dy = insertelement <4 x float> %i.dx, float %i.dc, i64 3
  %i.dz = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.ea = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x float> %i.dz, <4 x float> %i.ea, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ec = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ee = fmul <4 x float> %i.dy, %i.ed
  %i.ef = insertelement <4 x float> poison, float %.0122129.i.i, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> %i.ec, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.eh = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ei = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ej = shufflevector <2 x float> %i.be, <2 x float> %i.dp, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> %i.ej, <4 x float> %i.ee)
  %i.el = insertelement <2 x float> %i.dp, float %.0122129.i.i, i64 1
  %i.em = fmul <2 x float> %i.bd, %i.el
  %i.en = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eo = insertelement <2 x float> %i.en, float %.0123128.i.i, i64 1
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.bc, <2 x float> %i.em)
  %6 = load <4 x float>, ptr %1, align 4
  %i.eq = load float, ptr %i.s, align 4, !tbaa !26 ; 2 uses
  %i.er = fneg float %i.eq
  %i.es = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.er, i64 1
  %i.eu = fmul <2 x float> %i.dp, %i.et
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.ew, <2 x float> %i.ev)
  store <2 x float> %i.ex, ptr %1, align 4, !tbaa !26
  %7 = load <4 x float>, ptr %i.u, align 4
  %i.ey = load float, ptr %i.v, align 4, !tbaa !26 ; 2 uses
  %i.ez = fneg float %i.ey
  %i.fa = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ez, i64 1
  %i.fc = fmul <2 x float> %i.dp, %i.fb
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.fe, <2 x float> %i.fd)
  store <2 x float> %i.ff, ptr %i.u, align 4, !tbaa !26
  %i.fg = load float, ptr %i.x, align 4, !tbaa !26
  %i.fh = load float, ptr %i.y, align 4, !tbaa !26 ; 2 uses
  %i.fi = fneg float %i.fh
  %i.fj = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.fi, i64 1
  %i.fl = fmul <2 x float> %i.dp, %i.fk
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.fo, <2 x float> %i.fm)
  store <2 x float> %i.fp, ptr %i.x, align 4, !tbaa !26
  %i.fq = load float, ptr %3, align 4, !tbaa !26  ; 2 uses
  %i.fr = load float, ptr %i.aa, align 4, !tbaa !26 ; 2 uses
  %i.fs = fneg float %i.fr
  %i.ft = fmul float %.0123128.i.i, %i.fs
  %i.fu = tail call float @llvm.fmuladd.f32(float %.0122129.i.i, float %i.fq, float %i.ft)
  store float %i.fu, ptr %3, align 4, !tbaa !26
  %i.fv = fmul float %.0122129.i.i, %i.fr
  %i.fw = tail call float @llvm.fmuladd.f32(float %.0123128.i.i, float %i.fq, float %i.fv)
  store float %i.fw, ptr %i.aa, align 4, !tbaa !26
  %i.fx = load float, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.fy = load float, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.fz = fneg float %i.fy
  %i.ga = fmul float %.0123128.i.i, %i.fz
  %i.gb = tail call float @llvm.fmuladd.f32(float %.0122129.i.i, float %i.fx, float %i.ga)
  store float %i.gb, ptr %i.ac, align 4, !tbaa !26
  %i.gc = fmul float %.0122129.i.i, %i.fy
  %i.gd = tail call float @llvm.fmuladd.f32(float %.0123128.i.i, float %i.fx, float %i.gc)
  store float %i.gd, ptr %i.ad, align 4, !tbaa !26
  %i.ge = load float, ptr %i.af, align 4, !tbaa !26 ; 2 uses
  %i.gf = load float, ptr %i.ag, align 4, !tbaa !26 ; 2 uses
  %i.gg = fneg float %i.gf
  %i.gh = fmul float %.0123128.i.i, %i.gg
  %i.gi = tail call float @llvm.fmuladd.f32(float %.0122129.i.i, float %i.ge, float %i.gh)
  store float %i.gi, ptr %i.af, align 4, !tbaa !26
  %i.gj = fmul float %.0122129.i.i, %i.gf
  %i.gk = tail call float @llvm.fmuladd.f32(float %.0123128.i.i, float %i.ge, float %i.gj)
  store float %i.gk, ptr %i.ag, align 4, !tbaa !26
  br label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i.i, %bb.c
  %.1130.i.i = phi i1 [ true, %bb.c ], [ false, %.thread134.i.i ]
  %i.gl = phi <2 x float> [ %i.ep, %bb.c ], [ %i.bd, %.thread134.i.i ] ; 3 uses
  %i.gm = phi <4 x float> [ %i.ek, %bb.c ], [ %i.cm, %.thread134.i.i ] ; 7 uses
  %i.gn = extractelement <4 x float> %i.gm, i64 2 ; 3 uses
  %i.go = fadd float %.sroa.66.1, %i.gn           ; 2 uses
  %i.gp = extractelement <4 x float> %i.gm, i64 0 ; 5 uses
  %i.gq = extractelement <4 x float> %i.gm, i64 1 ; 4 uses
  %i.gr = fsub float %i.gq, %i.gp                 ; 2 uses
  %i.gs = tail call noundef float @llvm.fabs.f32(float %i.gr)
  %i.gt = tail call noundef float @llvm.fabs.f32(float %i.go)
  %i.gu = fmul float %4, %i.gt
  %i.gv = fcmp ugt float %i.gs, %i.gu
  br i1 %i.gv, label %bb.d, label %.thread134.i85.i

bb.d:                                             ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.gw = fdiv float %i.go, %i.gr                 ; 4 uses
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float 1.000000e+00)
  %sqrt.i100.i = tail call float @llvm.sqrt.f32(float %i.gx)
  %i.gy = fdiv float 1.000000e+00, %sqrt.i100.i   ; 2 uses
  %i.gz = fcmp olt float %i.gw, 0.000000e+00
  %i.ha = fneg float %i.gy
  %.0120.i101.i = select i1 %i.gz, float %i.ha, float %i.gy ; 5 uses
  %i.hb = fmul float %i.gw, %.0120.i101.i         ; 4 uses
  %i.hc = fadd float %i.gp, %i.gq
  %i.hd = fsub float %.sroa.66.1, %i.gn
  %i.he = fmul float %i.hd, %i.hb
  %i.hf = tail call float @llvm.fmuladd.f32(float %.0120.i101.i, float %i.hc, float %i.he) ; 2 uses
  %i.hg = fneg float %.sroa.66.1
  %i.hh = fmul float %.0120.i101.i, %i.hg
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.gq, float %i.hh)
  %i.hj = fmul float %i.hi, 2.000000e+00          ; 2 uses
  %i.hk = tail call noundef float @llvm.fabs.f32(float %i.hj)
  %i.hl = tail call noundef float @llvm.fabs.f32(float %i.hf)
  %i.hm = fmul float %4, %i.hl
  %i.hn = fcmp ugt float %i.hk, %i.hm
  br i1 %i.hn, label %.thread.i88.i, label %bb.e

.thread134.i85.i:                                 ; preds = %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.ho = fsub float %.sroa.66.1, %i.gn           ; 2 uses
  %i.hp = fadd float %i.gp, %i.gq                 ; 2 uses
  %i.hq = tail call noundef float @llvm.fabs.f32(float %i.hp)
  %i.hr = tail call noundef float @llvm.fabs.f32(float %i.ho)
  %i.hs = fmul float %4, %i.hr
  %i.ht = fcmp ugt float %i.hq, %i.hs
  %i.hu = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.hv = insertelement <4 x float> %i.hu, float %.sroa.66.1, i64 3
  br i1 %i.ht, label %.thread.i88.i, label %_ZN9Imath_3_112_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i88.i:                                    ; preds = %.thread134.i85.i, %bb.d
  %.0117146.i89.i = phi float [ %i.ho, %.thread134.i85.i ], [ %i.hf, %bb.d ]
  %.0118145.i90.i = phi float [ %i.hp, %.thread134.i85.i ], [ %i.hj, %bb.d ]
  %.0119144.i91.i = phi float [ 1.000000e+00, %.thread134.i85.i ], [ %i.hb, %bb.d ]
  %.1121141.i92.i = phi float [ 0.000000e+00, %.thread134.i85.i ], [ %.0120.i101.i, %bb.d ]
  %i.hw = fdiv float %.0117146.i89.i, %.0118145.i90.i ; 4 uses
  %i.hx = tail call noundef float @llvm.fabs.f32(float %i.hw)
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float 1.000000e+00)
  %sqrt133.i93.i = tail call float @llvm.sqrt.f32(float %i.hy)
  %i.hz = fadd float %i.hx, %sqrt133.i93.i
  %i.ia = fdiv float 1.000000e+00, %i.hz          ; 2 uses
  %i.ib = fcmp olt float %i.hw, 0.000000e+00
  %i.ic = fneg float %i.ia
  %.0124.i94.i = select i1 %i.ib, float %i.ic, float %i.ia ; 3 uses
  %i.id = tail call float @llvm.fmuladd.f32(float %.0124.i94.i, float %.0124.i94.i, float 1.000000e+00)
  %sqrt132.i95.i = tail call float @llvm.sqrt.f32(float %i.id)
  %i.ie = fdiv float 1.000000e+00, %sqrt132.i95.i ; 3 uses
  %i.if = fmul float %.0124.i94.i, %i.ie          ; 2 uses
  %i.ig = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ih = insertelement <2 x float> %i.ig, float %i.if, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.thread.i88.i, %bb.d
  %.0119142.i96.i = phi float [ %.0119144.i91.i, %.thread.i88.i ], [ %i.hb, %bb.d ]
  %.1121139.i97.i = phi float [ %.1121141.i92.i, %.thread.i88.i ], [ %.0120.i101.i, %bb.d ] ; 2 uses
  %.0122129.i98.i = phi float [ %i.ie, %.thread.i88.i ], [ 1.000000e+00, %bb.d ] ; 9 uses
  %.0123128.i99.i = phi float [ %i.if, %.thread.i88.i ], [ 0.000000e+00, %bb.d ] ; 9 uses
  %i.ii = phi <2 x float> [ %i.ih, %.thread.i88.i ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.d ] ; 5 uses
  %i.ij = fneg float %.1121139.i97.i
  %i.ik = fneg float %.0123128.i99.i              ; 2 uses
  %i.il = fmul float %.sroa.66.1, %i.ik
  %i.im = tail call float @llvm.fmuladd.f32(float %i.gp, float %.0122129.i98.i, float %i.il)
  %i.in = fneg float %i.im
  %i.io = fmul float %.sroa.66.1, %.0122129.i98.i
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.gp, float %.0123128.i99.i, float %i.io)
  %i.iq = fneg <2 x float> %i.gl
  %i.ir = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.is = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.it = insertelement <2 x float> %i.is, float %.1121139.i97.i, i64 1
  %i.iu = fmul <2 x float> %i.ir, %i.it
  %i.iv = insertelement <2 x float> poison, float %.0119142.i96.i, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.iw, <2 x float> %i.iu) ; 7 uses
  %i.iy = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iz = insertelement <2 x float> %i.ir, float %i.ik, i64 0
  %i.ja = fmul <2 x float> %i.iy, %i.iz
  %i.jb = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.ii, <2 x float> %i.ja)
  %i.jd = shufflevector <2 x float> %i.ii, <2 x float> %i.ix, <4 x i32> <i32 1, i32 3, i32 3, i32 poison>
  %i.je = insertelement <4 x float> %i.jd, float %i.ip, i64 3
  %i.jf = insertelement <4 x float> poison, float %i.in, i64 2
  %i.jg = shufflevector <2 x float> %i.ix, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jh = shufflevector <4 x float> %i.jf, <4 x float> %i.jg, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ji = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> %i.jh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jk = fmul <4 x float> %i.je, %i.jj
  %i.jl = extractelement <2 x float> %i.ix, i64 0 ; 6 uses
  %i.jm = extractelement <2 x float> %i.ix, i64 1 ; 6 uses
  %i.jn = shufflevector <2 x float> %i.ii, <2 x float> %i.ix, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.jo = shufflevector <2 x float> %i.jc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jp = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.jo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jp, <4 x float> %i.jk)
  %i.jr = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.js = insertelement <2 x float> %i.jr, float %.0122129.i98.i, i64 0
  %i.jt = fmul <2 x float> %i.gl, %i.js
  %i.ju = insertelement <2 x float> %i.ix, float %.0123128.i99.i, i64 0
  %i.jv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ju, <2 x float> zeroinitializer, <2 x float> %i.jt)
  %i.jw = load float, ptr %1, align 4, !tbaa !26  ; 2 uses
  %i.jx = load float, ptr %i.t, align 4, !tbaa !26 ; 2 uses
  %i.jy = fneg float %i.jx
  %i.jz = fmul float %i.jm, %i.jy
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.jw, float %i.jz)
  store float %i.ka, ptr %1, align 4, !tbaa !26
  %i.kb = fmul float %i.jl, %i.jx
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jw, float %i.kb)
  store float %i.kc, ptr %i.t, align 4, !tbaa !26
  %i.kd = load float, ptr %i.u, align 4, !tbaa !26 ; 2 uses
  %i.ke = load float, ptr %i.w, align 4, !tbaa !26 ; 2 uses
  %i.kf = fneg float %i.ke
  %i.kg = fmul float %i.jm, %i.kf
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.kd, float %i.kg)
  store float %i.kh, ptr %i.u, align 4, !tbaa !26
  %i.ki = fmul float %i.jl, %i.ke
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.kd, float %i.ki)
  store float %i.kj, ptr %i.w, align 4, !tbaa !26
  %i.kk = load float, ptr %i.x, align 4, !tbaa !26 ; 2 uses
  %i.kl = load float, ptr %i.z, align 4, !tbaa !26 ; 2 uses
  %i.km = fneg float %i.kl
  %i.kn = fmul float %i.jm, %i.km
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.kk, float %i.kn)
  store float %i.ko, ptr %i.x, align 4, !tbaa !26
  %i.kp = fmul float %i.jl, %i.kl
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.kk, float %i.kp)
  store float %i.kq, ptr %i.z, align 4, !tbaa !26
  %i.kr = load float, ptr %3, align 4, !tbaa !26  ; 2 uses
  %i.ks = load float, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.kt = fneg float %i.ks
  %i.ku = fmul float %.0123128.i99.i, %i.kt
  %i.kv = tail call float @llvm.fmuladd.f32(float %.0122129.i98.i, float %i.kr, float %i.ku)
  store float %i.kv, ptr %3, align 4, !tbaa !26
  %i.kw = fmul float %.0122129.i98.i, %i.ks
  %i.kx = tail call float @llvm.fmuladd.f32(float %.0123128.i99.i, float %i.kr, float %i.kw)
  store float %i.kx, ptr %i.ab, align 4, !tbaa !26
  %i.ky = load float, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.kz = load float, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.la = fneg float %i.kz
  %i.lb = fmul float %.0123128.i99.i, %i.la
  %i.lc = tail call float @llvm.fmuladd.f32(float %.0122129.i98.i, float %i.ky, float %i.lb)
  store float %i.lc, ptr %i.ac, align 4, !tbaa !26
end_hunk_0
