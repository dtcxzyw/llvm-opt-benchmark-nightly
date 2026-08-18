inline.NumInlined: 46
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_aspect_apply:bb.a
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bf, %i.bg
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bj, float %i.bf, float %i.bg
  %i.bl = call reassoc nsz arcp contract afn float @llvm.copysign.f32(float %i.bk, float %.049.i) ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bi, 0.000000e+00
  %i.bn = fneg reassoc nsz arcp contract afn float %i.bl
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bi
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.bi, %i.bl
  %.1.i = select nsz i1 %i.bm, float %i.bo, float %i.bp
  br label %_aspect_ratio_get.exit

_aspect_ratio_get.exit:                           ; preds = %bb.c, %.critedge.i, %bb.f, %bb.g, %bb.i, %bb.l
  %.4.i = phi nsz float [ %i.al, %bb.f ], [ 0.000000e+00, %bb.c ], [ %i.ak, %.critedge.i ], [ 0.000000e+00, %bb.g ], [ %.1.i, %bb.l ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.bq = fpext reassoc nsz arcp contract afn float %.4.i to double ; 2 uses
  %i.br = extractelement <2 x double> %i.l, i64 0
  %i.bs = extractelement <2 x double> %i.l, i64 1 ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt double %i.br, %i.bs
  %i.bu = fcmp reassoc nsz arcp contract afn une float %.4.i, 0.000000e+00
  %or.cond = and i1 %i.bt, %i.bu
  %i.bv = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bq
  %spec.select = select i1 %or.cond, double %i.bv, double %i.bq ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt double %spec.select, 0.000000e+00
  br i1 %i.bw, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %_aspect_ratio_get.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 8, !tbaa !113
  %i.bz = fpext <2 x float> %i.by to <2 x double>
  %i.ca = fmul reassoc nsz arcp contract afn <2 x double> %i.bz, %i.l
  %i.cb = fdiv reassoc nsz arcp contract afn <2 x double> %i.ca, %i.l ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.cb, zeroinitializer
  %i.cd = select <2 x i1> %i.cc, <2 x double> %i.cb, <2 x double> zeroinitializer ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cf = fmul reassoc nsz arcp contract afn double %spec.select, %i.bs
  %i.cg = load <2 x float>, ptr %i.ce, align 8, !tbaa !113
  %i.ch = fpext <2 x float> %i.cg to <2 x double>
  %i.ci = fmul reassoc nsz arcp contract afn <2 x double> %i.ch, %i.l ; 3 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 1
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cj, %spec.select
  %i.cl = fdiv reassoc nsz arcp contract afn <2 x double> %i.ci, %i.l ; 2 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.cl, splat (double 1.000000e+00)
  %i.cn = select <2 x i1> %i.cm, <2 x double> %i.cl, <2 x double> splat (double 1.000000e+00) ; 12 uses
  %i.co = insertelement <2 x double> %i.l, double %i.cf, i64 1
  %i.cp = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x double> %i.cp, double %i.ck, i64 0
  %i.cr = fdiv reassoc nsz arcp contract afn <2 x double> %i.cq, %i.co ; 8 uses
  switch i32 %1, label %bb.r [
    i32 3, label %bb.n
    i32 6, label %bb.o
    i32 12, label %bb.p
    i32 9, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.cs = fadd reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cn
  %i.ct = fadd reassoc nsz arcp contract afn <2 x double> %i.cn, %i.cd
  %i.cu = fmul reassoc nsz arcp contract afn <2 x double> %i.cs, splat (double 5.000000e-01) ; 2 uses
  %i.cv = fsub reassoc nsz arcp contract afn <2 x double> %i.ct, %i.cu
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x double> %i.cn, %i.cd
  %i.cw = fadd reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cn
  %i.cx = fmul reassoc nsz arcp contract afn <2 x double> %i.cw, splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop226 = fsub reassoc nsz arcp contract afn <2 x double> %foldExtExtBinop, %i.cx
  %i.cy = shufflevector <2 x double> %i.cd, <2 x double> %foldExtExtBinop226, <2 x i32> <i32 0, i32 3>
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.cz = fadd reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cn
  %i.da = fmul reassoc nsz arcp contract afn <2 x double> %i.cz, splat (double 5.000000e-01)
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.db = fadd reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cn
  %foldExtExtBinop228 = fadd reassoc nsz arcp contract afn <2 x double> %i.cn, %i.cd
  %i.dc = fmul reassoc nsz arcp contract afn <2 x double> %i.db, splat (double 5.000000e-01) ; 2 uses
  %foldExtExtBinop230 = fsub reassoc nsz arcp contract afn <2 x double> %foldExtExtBinop228, %i.dc
  %i.dd = shufflevector <2 x double> %foldExtExtBinop230, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  %i.de = and i32 %1, 5
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop232 = fsub reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cn
  %i.df = extractelement <2 x double> %foldExtExtBinop232, i64 1
  %i.dg = fmul reassoc nsz arcp contract afn double %i.df, 5.000000e-01
  %i.dh = extractelement <2 x double> %i.cd, i64 1
  %i.di = fsub reassoc nsz arcp contract afn double %i.dh, %i.dg
  %i.dj = shufflevector <2 x double> %i.cn, <2 x double> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.dk = insertelement <2 x double> %i.cd, double %i.di, i64 1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dl = and i32 %1, 10
  %.not205 = icmp eq i32 %i.dl, 0
  br i1 %.not205, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %foldExtExtBinop234 = fsub reassoc nsz arcp contract afn <2 x double> %i.cr, %i.cn
  %i.dm = extractelement <2 x double> %foldExtExtBinop234, i64 0
  %i.dn = fmul reassoc nsz arcp contract afn double %i.dm, 5.000000e-01
  %i.do = extractelement <2 x double> %i.cd, i64 0
  %i.dp = fsub reassoc nsz arcp contract afn double %i.do, %i.dn
  %i.dq = shufflevector <2 x double> %i.cr, <2 x double> %i.cn, <2 x i32> <i32 0, i32 3>
  %i.dr = insertelement <2 x double> %i.cd, double %i.dp, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.q, %bb.t, %bb.u, %bb.s, %bb.p, %bb.n
  %i.ds = phi <2 x double> [ %i.cu, %bb.n ], [ %i.cx, %bb.o ], [ %i.da, %bb.p ], [ %i.dc, %bb.q ], [ %i.dj, %bb.s ], [ %i.dq, %bb.u ], [ %i.cn, %bb.t ] ; 4 uses
  %i.dt = phi <2 x double> [ %i.cv, %bb.n ], [ %i.cy, %bb.o ], [ %i.cd, %bb.p ], [ %i.dd, %bb.q ], [ %i.dk, %bb.s ], [ %i.dr, %bb.u ], [ %i.cd, %bb.t ] ; 4 uses
  %i.du = extractelement <2 x double> %i.dt, i64 1 ; 3 uses
  %i.dv = extractelement <2 x double> %i.dt, i64 0 ; 2 uses
  %i.dw = extractelement <2 x double> %i.ds, i64 1 ; 3 uses
  %i.dx = extractelement <2 x double> %i.ds, i64 0 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !189 ; 2 uses
  %i.ea = fpext reassoc nsz arcp contract afn float %i.dz to double ; 4 uses
  %i.eb = fcmp reassoc nsz arcp contract afn olt double %i.dv, %i.ea
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %foldExtExtBinop236 = fadd reassoc nsz arcp contract afn <2 x double> %i.dt, %i.ds
  %i.ec = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.ed = fsub reassoc nsz arcp contract afn double %i.ec, %i.ea ; 3 uses
  %i.ee = fmul reassoc nsz arcp contract afn double %i.ed, %i.dw
  %i.ef = fdiv reassoc nsz arcp contract afn double %i.ee, %i.dx ; 3 uses
  %i.eg = and i32 %1, 2
  %.not206 = icmp eq i32 %i.eg, 0
  %i.eh = fadd reassoc nsz arcp contract afn double %i.du, %i.dw
  %i.ei = fsub reassoc nsz arcp contract afn double %i.eh, %i.ef
  %.1178 = select nsz i1 %.not206, double %i.du, double %i.ei ; 2 uses
  %i.ej = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ef, i64 1
  %i.el = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.em = insertelement <2 x double> %i.el, double %.1178, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1189 = phi nsz double [ %i.ef, %bb.w ], [ %i.dw, %bb.v ] ; 3 uses
  %.1184 = phi nsz double [ %i.ed, %bb.w ], [ %i.dx, %bb.v ] ; 3 uses
  %.2179 = phi nsz double [ %.1178, %bb.w ], [ %i.du, %bb.v ] ; 2 uses
  %.1 = phi nsz double [ %i.ea, %bb.w ], [ %i.dv, %bb.v ] ; 2 uses
  %i.en = phi <2 x double> [ %i.ek, %bb.w ], [ %i.ds, %bb.v ]
  %i.eo = phi <2 x double> [ %i.em, %bb.w ], [ %i.dt, %bb.v ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !190 ; 2 uses
  %i.er = fpext reassoc nsz arcp contract afn float %i.eq to double ; 3 uses
  %i.es = fcmp reassoc nsz arcp contract afn olt double %.2179, %i.er
  br i1 %i.es, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.et = fadd reassoc nsz arcp contract afn double %.2179, %.1189
  %i.eu = fsub reassoc nsz arcp contract afn double %i.et, %i.er ; 3 uses
  %i.ev = fmul reassoc nsz arcp contract afn double %i.eu, %.1184
  %i.ew = fdiv reassoc nsz arcp contract afn double %i.ev, %.1189 ; 3 uses
  %i.ex = and i32 %1, 1
  %.not207 = icmp eq i32 %i.ex, 0
  %i.ey = fadd reassoc nsz arcp contract afn double %.1, %.1184
  %i.ez = fsub reassoc nsz arcp contract afn double %i.ey, %i.ew
  %.2 = select nsz i1 %.not207, double %.1, double %i.ez
  %i.fa = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.eu, i64 1
  %i.fc = insertelement <2 x double> poison, double %.2, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.er, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2190 = phi nsz double [ %i.eu, %bb.y ], [ %.1189, %bb.x ] ; 3 uses
  %.2185 = phi nsz double [ %i.ew, %bb.y ], [ %.1184, %bb.x ] ; 3 uses
  %i.fe = phi <2 x double> [ %i.fb, %bb.y ], [ %i.en, %bb.x ]
  %i.ff = phi <2 x double> [ %i.fd, %bb.y ], [ %i.eo, %bb.x ] ; 2 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 0 ; 5 uses
  %i.fh = fadd reassoc nsz arcp contract afn double %i.fg, %.2185
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !191
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.dz
  %i.fl = fpext reassoc nsz arcp contract afn float %i.fk to double ; 2 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ogt double %i.fh, %i.fl
  %i.fn = extractelement <2 x double> %i.ff, i64 1 ; 3 uses
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fo = fsub reassoc nsz arcp contract afn double %i.fl, %i.fg ; 3 uses
  %i.fp = fmul reassoc nsz arcp contract afn double %i.fo, %.2190
  %i.fq = fdiv reassoc nsz arcp contract afn double %i.fp, %.2185 ; 3 uses
  %i.fr = and i32 %1, 2
  %.not208 = icmp eq i32 %i.fr, 0
  %i.fs = fadd reassoc nsz arcp contract afn double %i.fn, %.2190
  %i.ft = fsub reassoc nsz arcp contract afn double %i.fs, %i.fq
  %.4181 = select nsz i1 %.not208, double %i.fn, double %i.ft
  %i.fu = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fq, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3191 = phi nsz double [ %i.fq, %bb.aa ], [ %.2190, %bb.z ] ; 3 uses
  %.3186 = phi nsz double [ %i.fo, %bb.aa ], [ %.2185, %bb.z ] ; 3 uses
  %.5182 = phi nsz double [ %.4181, %bb.aa ], [ %i.fn, %bb.z ] ; 6 uses
  %i.fw = phi <2 x double> [ %i.fv, %bb.aa ], [ %i.fe, %bb.z ]
  %i.fx = fadd reassoc nsz arcp contract afn double %.5182, %.3191
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !192
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.eq
  %i.gb = fpext reassoc nsz arcp contract afn float %i.ga to double ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ogt double %i.fx, %i.gb
  br i1 %i.gc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gd = fsub reassoc nsz arcp contract afn double %i.gb, %.5182 ; 3 uses
  %i.ge = fmul reassoc nsz arcp contract afn double %i.gd, %.3186
  %i.gf = fdiv reassoc nsz arcp contract afn double %i.ge, %.3191 ; 3 uses
  %i.gg = and i32 %1, 1
  %.not209 = icmp eq i32 %i.gg, 0
  %i.gh = fadd reassoc nsz arcp contract afn double %.3186, %i.fg
  %i.gi = fsub reassoc nsz arcp contract afn double %i.gh, %i.gf
  %.4 = select nsz i1 %.not209, double %i.fg, double %i.gi
  %i.gj = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.gd, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.4192 = phi nsz double [ %i.gd, %bb.ac ], [ %.3191, %bb.ab ]
  %.4187 = phi nsz double [ %i.gf, %bb.ac ], [ %.3186, %bb.ab ]
  %.5 = phi nsz double [ %.4, %bb.ac ], [ %i.fg, %bb.ab ] ; 4 uses
  %i.gl = phi <2 x double> [ %i.gk, %bb.ac ], [ %i.fw, %bb.ab ] ; 2 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ole double %.5, 1.000000e+00
  %i.gn = select reassoc nsz arcp contract afn i1 %i.gm, double %.5, double 1.000000e+00
  %i.go = fcmp reassoc nsz arcp contract afn ole double %.5182, 1.000000e+00
  %i.gp = select reassoc nsz arcp contract afn i1 %i.go, double %.5182, double 1.000000e+00
  %2 = fsub reassoc nsz arcp contract afn double 1.000000e+00, %.5 ; 2 uses
  %3 = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.gl, zeroinitializer
  %4 = fsub reassoc nsz arcp contract afn double 1.000000e+00, %.5182 ; 2 uses
  %5 = fcmp reassoc nsz arcp contract afn ogt double %.4192, %4
  %6 = fcmp reassoc nsz arcp contract afn ogt double %.4187, %2
  %i.gq = insertelement <2 x double> poison, double %.5, i64 0
  %7 = insertelement <2 x double> %i.gq, double %.5182, i64 1
  %i.gr = fcmp reassoc nsz arcp contract afn oge <2 x double> %7, zeroinitializer
  %i.gs = select <2 x i1> %3, <2 x double> zeroinitializer, <2 x double> %i.gl
  %8 = shufflevector <2 x i1> %i.gr, <2 x i1> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = insertelement <4 x i1> %8, i1 %6, i64 2
  %10 = insertelement <4 x i1> %9, i1 %5, i64 3
  %i.gt = insertelement <4 x double> poison, double %i.gn, i64 0
  %i.gu = insertelement <4 x double> %i.gt, double %i.gp, i64 1
  %11 = insertelement <4 x double> %i.gu, double %2, i64 2
  %12 = insertelement <4 x double> %11, double %4, i64 3
  %i.gv = shufflevector <2 x double> %i.gs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x double> <double 0.000000e+00, double 0.000000e+00, double poison, double poison>, <4 x double> %i.gv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gx = select <4 x i1> %10, <4 x double> %12, <4 x double> %i.gw
  %i.gy = fptrunc <4 x double> %i.gx to <4 x float>
  store <4 x float> %i.gy, ptr %i.bx, align 8, !tbaa !113
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_aspect_ratio_get.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_update_sliders_and_limit(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !161
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.a, float noundef %i.c) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !166
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.e, float noundef %i.g) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.j = load float, ptr %i.b, align 8, !tbaa !161
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !181
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.j
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185
  %i.p = load float, ptr %i.f, align 4, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !184
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.p
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %i.s) #22
  %i.t = load ptr, ptr %0, align 8, !tbaa !180
  %i.u = load float, ptr %i.b, align 8, !tbaa !161
  %i.v = load float, ptr %i.k, align 8, !tbaa !181
  %i.w = fadd reassoc nsz arcp contract afn float %i.u, f0xBC23D70A
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, %i.v
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.t, float noundef %i.x) #22
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !183
  %i.z = load float, ptr %i.f, align 4, !tbaa !166
  %i.aa = load float, ptr %i.q, align 4, !tbaa !184
  %i.ab = fadd reassoc nsz arcp contract afn float %i.z, f0xBC23D70A
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, %i.aa
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.y, float noundef %i.ac) #22
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !185
  %i.ae = load float, ptr %i.f, align 4, !tbaa !166
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, f0x3C23D70A
  tail call void @dt_bauhaus_slider_set_soft_min(ptr noundef %i.ad, float noundef %i.af) #22
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.ah = load float, ptr %i.b, align 8, !tbaa !161
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, f0x3C23D70A
  tail call void @dt_bauhaus_slider_set_soft_min(ptr noundef %i.ag, float noundef %i.ai) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.27, i32 noundef 0) #22
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.28, i32 noundef 0) #22
  ret void
}

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !156 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34   ; 3 uses
  br i1 %i.h, label %bb.b, label %._crit_edge62

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %._crit_edge62

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.27) #22
  store i32 %i.l, ptr %i.f, align 4, !tbaa !32
  %i.m = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.28) #22 ; 2 uses
  store i32 %i.m, ptr %i.i, align 4, !tbaa !34
  %.pre = load i32, ptr %i.f, align 4, !tbaa !32
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.a, %bb.c, %bb.b
  %i.n = phi i32 [ %i.m, %bb.c ], [ %i.j, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %i.o = phi i32 [ %.pre, %bb.c ], [ -1, %bb.b ], [ %i.g, %bb.a ]
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.04457 = load ptr, ptr %i.q, align 8, !tbaa !193 ; 2 uses
  %.not58 = icmp eq ptr %.04457, null
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge62, %bb.e
  %.04460 = phi ptr [ %.044, %bb.e ], [ %.04457, %._crit_edge62 ] ; 2 uses
  %.04559 = phi i32 [ %i.y, %bb.e ], [ 0, %._crit_edge62 ] ; 2 uses
  %i.r = load ptr, ptr %.04460, align 8, !tbaa !194 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !196
  %i.u = icmp eq i32 %i.t, %i.p
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = icmp eq i32 %i.w, %i.n
  br i1 %i.x, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.y = add nuw nsw i32 %.04559, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.04460, i64 8
  %.044 = load ptr, ptr %i.z, align 8, !tbaa !193 ; 2 uses
  %.not = icmp eq ptr %.044, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %._crit_edge62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.n, i1 true) ; 2 uses
  %i.ab = uitofp nneg i32 %i.p to float
  %i.ac = uitofp nneg i32 %i.aa to float
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ab, %i.ac
  %i.ae = fpext reassoc nsz arcp contract afn float %i.ad to double
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.29, i32 noundef %i.p, i32 noundef %i.aa, double noundef %i.ae) #22 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !186
  call void @dt_bauhaus_combobox_set_text(ptr noundef %i.ah, ptr noundef nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge
  %.254 = phi i32 [ -1, %._crit_edge ], [ %.04559, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !186
  %i.ak = call i32 @dt_bauhaus_combobox_get(ptr noundef %i.aj) #22
  %i.al = icmp eq i32 %i.ak, %.254
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !186 ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  call void @_event_aspect_presets_changed(ptr noundef %i.am, ptr noundef %0)
  br label %bb.h

bb.g:                                             ; preds = %.loopexit
  call void @dt_bauhaus_combobox_set(ptr noundef %i.am, i32 noundef %.254) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.aq = load <2 x float>, ptr %i.e, align 4, !tbaa !113 ; 2 uses
  store <2 x float> %i.aq, ptr %i.an, align 8, !tbaa !113
  %i.ar = load <2 x float>, ptr %i.ao, align 4, !tbaa !113
  %i.as = fsub reassoc nsz arcp contract afn <2 x float> %i.ar, %i.aq
  store <2 x float> %i.as, ptr %i.ap, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @dt_gui_update_collapsible_section(ptr noundef nonnull %i.at) #22
  call void @gui_changed(ptr noundef %0, ptr noundef null, ptr poison)
  ret void
}

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare void @dt_bauhaus_combobox_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_event_aspect_presets_changed(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !156 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158  ; 3 uses
  %i.g = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #22
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %i.l = tail call ptr @dt_bauhaus_combobox_get_text(ptr noundef %0) #22 ; 8 uses
  %i.m = icmp slt i32 %i.g, 0
  br i1 %i.m, label %bb.b, label %bb.v

end_hunk_0
