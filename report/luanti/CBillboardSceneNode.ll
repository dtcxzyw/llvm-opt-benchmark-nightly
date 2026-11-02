Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CBillboardSceneNode?download=true
inline.NumInlined: 1222
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
_ZN4core5arrayINS_8vector3dIfEEEixEj.exit:        ; preds = %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit
  %i.bo = load <2 x float>, ptr %i.bg, align 8, !tbaa !16
  %i.bp = load <2 x float>, ptr %i.bh, align 8, !tbaa !16
  %i.bq = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.br = fmul <2 x float> %i.bq, %i.bp
  %i.bs = shufflevector <3 x float> %foldExtExtBinop, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bo, <2 x float> %i.br)
  %i.bu = load <2 x float>, ptr %i.bi, align 8, !tbaa !16
  %i.bv = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bx = load <2 x float>, ptr %i.bj, align 8, !tbaa !16
  %i.by = fadd <2 x float> %i.bw, %i.bx
  %i.bz = load float, ptr %i.bk, align 8, !tbaa !16
  %i.ca = load float, ptr %i.bl, align 8, !tbaa !16
  %i.cb = fmul float %i.ao, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.bz, float %i.cb)
  %i.cd = load float, ptr %i.bm, align 8, !tbaa !16
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.cd, float %i.cc)
  %i.cf = load float, ptr %i.bn, align 8, !tbaa !16
  %i.cg = fadd float %i.cf, %i.ce
  store <2 x float> %i.by, ptr %i.o, align 4, !tbaa !16
  store float %i.cg, ptr %i.s, align 4, !tbaa !16
  %exitcond.1.not = icmp eq i64 %i.bf, 12
  br i1 %exitcond.1.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ci = load <2 x float>, ptr %i.bg, align 8, !tbaa !16
  %i.cj = load <2 x float>, ptr %i.bh, align 8, !tbaa !16
  %i.ck = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.cl = fmul <2 x float> %i.ck, %i.cj
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ci, <2 x float> %i.cl)
  %i.cn = load <2 x float>, ptr %i.bi, align 8, !tbaa !16
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.cn, <2 x float> %i.cm)
  %i.cp = load <2 x float>, ptr %i.bj, align 8, !tbaa !16
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = load float, ptr %i.bk, align 8, !tbaa !16
  %i.cs = load float, ptr %i.bl, align 8, !tbaa !16
  %i.ct = fmul float %i.ar, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.cr, float %i.ct)
  %i.cv = load float, ptr %i.bm, align 8, !tbaa !16
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.cv, float %i.cu)
  %i.cx = load float, ptr %i.bn, align 8, !tbaa !16
  %i.cy = fadd float %i.cx, %i.cw
  store <2 x float> %i.cq, ptr %i.t, align 4, !tbaa !16
  store float %i.cy, ptr %i.ch, align 4, !tbaa !16
  %exitcond.2.not = icmp eq i64 %i.bf, 24
  br i1 %exitcond.2.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.da = load <2 x float>, ptr %i.bg, align 8, !tbaa !16
  %i.db = load <2 x float>, ptr %i.bh, align 8, !tbaa !16
  %i.dc = fmul <2 x float> %i.bq, %i.db
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.da, <2 x float> %i.dc)
  %i.de = load <2 x float>, ptr %i.bi, align 8, !tbaa !16
  %i.df = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dh = load <2 x float>, ptr %i.bj, align 8, !tbaa !16
  %i.di = fadd <2 x float> %i.dg, %i.dh
  %i.dj = load float, ptr %i.bk, align 8, !tbaa !16
  %i.dk = load float, ptr %i.bl, align 8, !tbaa !16
  %i.dl = fmul float %i.ao, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.dj, float %i.dl)
  %i.dn = load float, ptr %i.bm, align 8, !tbaa !16
  %i.do = tail call float @llvm.fmuladd.f32(float %i.as, float %i.dn, float %i.dm)
  %i.dp = load float, ptr %i.bn, align 8, !tbaa !16
  %i.dq = fadd float %i.dp, %i.do
  store <2 x float> %i.di, ptr %i.w, align 4, !tbaa !16
  store float %i.dq, ptr %i.cz, align 4, !tbaa !16
  %exitcond.3.not = icmp eq i64 %i.bf, 36
  br i1 %exitcond.3.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.ds = load <2 x float>, ptr %i.bg, align 8, !tbaa !16
  %i.dt = load <2 x float>, ptr %i.bh, align 8, !tbaa !16
  %i.du = fmul <2 x float> %i.ck, %i.dt
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ds, <2 x float> %i.du)
  %i.dw = load <2 x float>, ptr %i.bi, align 8, !tbaa !16
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = load <2 x float>, ptr %i.bj, align 8, !tbaa !16
  %i.dz = fadd <2 x float> %i.dx, %i.dy
  %i.ea = load float, ptr %i.bk, align 8, !tbaa !16
  %i.eb = load float, ptr %i.bl, align 8, !tbaa !16
  %i.ec = fmul float %i.ar, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ea, float %i.ec)
  %i.ee = load float, ptr %i.bm, align 8, !tbaa !16
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ee, float %i.ed)
  %i.eg = load float, ptr %i.bn, align 8, !tbaa !16
  %i.eh = fadd float %i.eg, %i.ef
  store <2 x float> %i.dz, ptr %i.z, align 4, !tbaa !16
  store float %i.eh, ptr %i.dr, align 4, !tbaa !16
  %exitcond.4.not = icmp eq i64 %i.bf, 48
  br i1 %exitcond.4.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ej = load <2 x float>, ptr %i.bg, align 8, !tbaa !16
  %i.ek = load <2 x float>, ptr %i.bh, align 8, !tbaa !16
  %i.el = fmul <2 x float> %i.bq, %i.ek
  %i.em = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ej, <2 x float> %i.el)
  %i.eo = load <2 x float>, ptr %i.bi, align 8, !tbaa !16
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.eo, <2 x float> %i.en)
  %i.eq = load <2 x float>, ptr %i.bj, align 8, !tbaa !16
  %i.er = fadd <2 x float> %i.ep, %i.eq
  %i.es = load float, ptr %i.bk, align 8, !tbaa !16
  %i.et = load float, ptr %i.bl, align 8, !tbaa !16
  %i.eu = fmul float %i.ao, %i.et
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.at, float %i.es, float %i.eu)
  %i.ew = load float, ptr %i.bm, align 8, !tbaa !16
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ew, float %i.ev)
  %i.ey = load float, ptr %i.bn, align 8, !tbaa !16
  %i.ez = fadd float %i.ey, %i.ex
  store <2 x float> %i.er, ptr %i.ac, align 4, !tbaa !16
  store float %i.ez, ptr %i.ei, align 4, !tbaa !16
  %exitcond.5.not = icmp eq i64 %i.bf, 60
  br i1 %exitcond.5.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.fb = load <2 x float>, ptr %i.bg, align 8, !tbaa !16
  %i.fc = load <2 x float>, ptr %i.bh, align 8, !tbaa !16
  %i.fd = fmul <2 x float> %i.ck, %i.fc
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fb, <2 x float> %i.fd)
  %i.ff = load <2 x float>, ptr %i.bi, align 8, !tbaa !16
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ff, <2 x float> %i.fe)
  %i.fh = load <2 x float>, ptr %i.bj, align 8, !tbaa !16
  %i.fi = fadd <2 x float> %i.fg, %i.fh
  %i.fj = load float, ptr %i.bk, align 8, !tbaa !16
  %i.fk = load float, ptr %i.bl, align 8, !tbaa !16
  %i.fl = fmul float %i.ar, %i.fk
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.at, float %i.fj, float %i.fl)
  %i.fn = load float, ptr %i.bm, align 8, !tbaa !16
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.fn, float %i.fm)
  %i.fp = load float, ptr %i.bn, align 8, !tbaa !16
  %i.fq = fadd float %i.fp, %i.fo
  store <2 x float> %i.fi, ptr %i.au, align 4, !tbaa !16
  store float %i.fq, ptr %i.fa, align 4, !tbaa !16
  %exitcond.6.not = icmp eq i64 %i.bf, 72
  br i1 %exitcond.6.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.fs = load <2 x float>, ptr %i.bg, align 8, !tbaa !16
  %i.ft = load <2 x float>, ptr %i.bh, align 8, !tbaa !16
  %i.fu = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = fmul <2 x float> %i.fu, %i.ft
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fs, <2 x float> %i.fv)
  %i.fx = load <2 x float>, ptr %i.bi, align 8, !tbaa !16
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.fx, <2 x float> %i.fw)
  %i.fz = load <2 x float>, ptr %i.bj, align 8, !tbaa !16
  %i.ga = fadd <2 x float> %i.fy, %i.fz
  %i.gb = load float, ptr %i.bk, align 8, !tbaa !16
  %i.gc = load float, ptr %i.bl, align 8, !tbaa !16
  %i.gd = fmul float %i.ao, %i.gc
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.at, float %i.gb, float %i.gd)
  %i.gf = load float, ptr %i.bm, align 8, !tbaa !16
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.as, float %i.gf, float %i.ge)
  %i.gh = load float, ptr %i.bn, align 8, !tbaa !16
  %i.gi = fadd float %i.gh, %i.gg
  store <2 x float> %i.ga, ptr %i.av, align 4, !tbaa !16
  store float %i.gi, ptr %i.fr, align 4, !tbaa !16
  %exitcond.7.not = icmp eq i64 %i.bf, 84
  br i1 %exitcond.7.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.7

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.7:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %i.gk = load <2 x float>, ptr %i.bg, align 8, !tbaa !16
  %i.gl = load <2 x float>, ptr %i.bh, align 8, !tbaa !16
  %i.gm = fmul <2 x float> %i.ck, %i.gl
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.gk, <2 x float> %i.gm)
  %i.go = load <2 x float>, ptr %i.bi, align 8, !tbaa !16
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.go, <2 x float> %i.gn)
  %i.gq = load <2 x float>, ptr %i.bj, align 8, !tbaa !16
  %i.gr = fadd <2 x float> %i.gp, %i.gq
  %i.gs = load float, ptr %i.bk, align 8, !tbaa !16
  %i.gt = load float, ptr %i.bl, align 8, !tbaa !16
  %i.gu = fmul float %i.ar, %i.gt
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.at, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.bm, align 8, !tbaa !16
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.as, float %i.gw, float %i.gv)
  %i.gy = load float, ptr %i.bn, align 8, !tbaa !16
  %i.gz = fadd float %i.gy, %i.gx
  store <2 x float> %i.gr, ptr %i.ba, align 4, !tbaa !16
  store float %i.gz, ptr %i.gj, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = load float, ptr %i.e, align 4, !tbaa !113
  %i.g = fmul float %i.f, f0x3C8EFA35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %2 = fpext float %i.g to double                 ; 2 uses
  %3 = tail call double @cos(double noundef %2) #31 ; 3 uses
  %4 = tail call double @sin(double noundef %2) #31 ; 3 uses
  %5 = load <2 x float>, ptr %i.h, align 8, !tbaa !16
  %6 = fmul <2 x float> %5, splat (float f0x3C8EFA35)
  %i.i = fpext <2 x float> %6 to <2 x double>     ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %7 = tail call double @cos(double noundef %i.j) #31 ; 4 uses
  %8 = tail call double @sin(double noundef %i.j) #31 ; 3 uses
  %i.k = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %9 = tail call double @cos(double noundef %i.k) #31 ; 5 uses
  %10 = tail call double @sin(double noundef %i.k) #31 ; 5 uses
  %i.l = fmul double %7, %9
  %i.m = fptrunc double %i.l to float             ; 3 uses
  store float %i.m, ptr %0, align 4, !tbaa !16
  %i.n = fmul double %7, %10
  %i.o = fptrunc double %i.n to float             ; 3 uses
  store float %i.o, ptr %i.a, align 4, !tbaa !16
  %i.p = fptrunc double %8 to float
  %i.q = fneg float %i.p                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !16
  %i.s = fmul double %4, %8
  %i.t = fmul double %3, %8
  %i.u = fneg double %10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %3, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x double> poison, double %i.u, i64 0
  %i.z = insertelement <2 x double> %i.y, double %9, i64 1
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x double> poison, double %9, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %10, i64 1
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ae, <2 x double> %i.aa)
  %i.af = fptrunc <2 x double> %11 to <2 x float> ; 2 uses
  store <2 x float> %i.af, ptr %i.v, align 4, !tbaa !16
  %i.ag = fmul double %4, %7
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ah, ptr %i.ai, align 4, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = fneg double %9
  %i.al = insertelement <2 x double> poison, double %4, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x double> poison, double %10, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.ak, i64 1
  %i.ap = fmul <2 x double> %i.am, %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> poison, double %9, i64 0
  %13 = insertelement <2 x double> %12, double %10, i64 1
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %13, <2 x double> %i.ap)
  %15 = fptrunc <2 x double> %14 to <2 x float>   ; 2 uses
  store <2 x float> %15, ptr %i.aj, align 4, !tbaa !16
  %16 = fmul double %3, %7
  %17 = fptrunc double %16 to float               ; 4 uses
  store float %17, ptr %i.d, align 4, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.av = load <2 x float>, ptr %i.as, align 8, !tbaa !16 ; 3 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  store float %i.aw, ptr %i.at, align 4, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.az = load <2 x float>, ptr %i.au, align 4, !tbaa !16 ; 3 uses
  %i.ba = load float, ptr %i.ay, align 8, !tbaa !115 ; 3 uses
  %i.bb = extractelement <2 x float> %i.az, i64 0
  store float %i.bb, ptr %i.ax, align 4, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ba, ptr %i.bc, align 4, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.be = load float, ptr %i.bd, align 8, !tbaa !113 ; 3 uses
  %i.bf = fcmp oeq float %i.be, 1.000000e+00
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !114 ; 2 uses
  %i.bi = fcmp oeq float %i.bh, 1.000000e+00
  %or.cond = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !115
  %i.bl = fcmp une float %i.bk, 1.000000e+00
  br i1 %i.bl, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bm = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bh, %bb.a ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bo = load <1 x float>, ptr %i.bn, align 8
  %i.bp = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float 1.000000e+00, i64 3
  %i.br = insertelement <4 x float> %i.bq, float %i.ah, i64 2 ; 2 uses
  %i.bs = fmul <4 x float> %i.br, zeroinitializer ; 2 uses
  %i.bt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.o, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.q, i64 2
  %i.bw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.be, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bx, <4 x float> %i.bs)
  %i.by = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.bz = insertelement <4 x float> %i.by, float %17, i64 2 ; 2 uses
  %i.ca = insertelement <4 x float> %i.bz, float %i.be, i64 3
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> zeroinitializer, <4 x float> %18)
  %i.cb = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float 0.000000e+00, i64 3
  %i.cd = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %19)
  store <4 x float> %20, ptr %0, align 4, !tbaa !16
  %i.cf = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.bm, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ch = fmul <4 x float> %i.cg, %i.br
  %i.ci = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.m, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.o, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.q, i64 2 ; 2 uses
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> zeroinitializer, <4 x float> %i.ch)
  %i.cl = insertelement <4 x float> %i.bz, float %i.bm, i64 3
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> zeroinitializer, <4 x float> %21)
  %i.cm = shufflevector <2 x float> %i.av, <2 x float> %i.az, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.cn = insertelement <4 x float> %i.cm, float 0.000000e+00, i64 3 ; 2 uses
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %22)
  store <4 x float> %23, ptr %i.v, align 4, !tbaa !16
  %i.co = insertelement <4 x float> %i.bs, float 0.000000e+00, i64 3
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> zeroinitializer, <4 x float> %i.co) ; 2 uses
  %i.cp = shufflevector <1 x float> %i.bo, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cq = insertelement <4 x float> %i.by, float 0.000000e+00, i64 3
  %i.cr = insertelement <4 x float> %i.cq, float %17, i64 2
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cr, <4 x float> %24)
  %i.cs = insertelement <4 x float> %i.cn, float %i.ba, i64 2
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %25)
  store <4 x float> %26, ptr %i.aj, align 4, !tbaa !16
  %i.ct = insertelement <4 x float> %i.by, float -0.000000e+00, i64 3
  %i.cu = insertelement <4 x float> %i.ct, float %17, i64 2
  %i.cv = insertelement <4 x float> %24, float 1.000000e+00, i64 3
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %i.cv)
  %i.cw = insertelement <4 x float> %i.cm, float -0.000000e+00, i64 3
  %i.cx = insertelement <4 x float> %i.cw, float %i.ba, i64 2
  %i.cy = fadd <4 x float> %27, %i.cx
  store <4 x float> %i.cy, ptr %i.at, align 4, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !94, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !94, !range !97, !noundef !98
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !103
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !127
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !127
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !75, !range !97, !noundef !98
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !75
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !90
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %.not = icmp eq ptr %i.b, %0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !75, !range !97, !noundef !98
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene10ISceneNode11removeChildEPS0_) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load i64, ptr %i.f, align 8, !tbaa !128
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !75
  store ptr null, ptr %i.a, align 8, !tbaa !90
  %i.i = load ptr, ptr %1, align 8, !tbaa !14
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !52
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #31, !inline_history !1
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !127
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !127
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !70 ; 3 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev:bb.a
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #22

declare void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !65, !range !97, !noundef !98
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !97
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !160
  %i.i = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !161  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.k, ptr %i.a, align 8, !tbaa !162
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !102
  %i.n = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.n, ptr %i.h, align 8, !tbaa !59
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !59
  store i8 %i.p, ptr %i.o, align 1, !tbaa !59
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !161
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  store i8 1, ptr %i.b, align 8, !tbaa !65
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !65
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !59
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #30
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !16
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !125
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #33
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !16
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !66, !alias.scope !168
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !166

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #30
  br label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !125
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !167
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.06 = load ptr, ptr %i.b, align 8, !tbaa !70 ; 2 uses
  %.not7 = icmp eq ptr %.sroa.03.06, %i.b
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.08 = phi ptr [ %.sroa.03.0, %.lr.ph ], [ %.sroa.03.06, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %i.d, ptr noundef %1)
  %.sroa.03.0 = load ptr, ptr %.sroa.03.08, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !169

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #27

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #27

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11IMeshBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11IMeshBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene11IMeshBufferD1Ev(ptr noundef %0) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene11IMeshBufferD0Ev(ptr noundef %0) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(127) ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(127) ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(24) ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14setBoundingBoxERKN4core8aabbox3dIfEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !122
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE6appendEPKvjPKtj(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !170 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(28) %i.d), !inline_history !170
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !171 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.m), !inline_history !171 ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !172 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(28) %i.u), !inline_history !172 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !175
  %i.ae = zext i32 %2 to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ae
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !175 ; 2 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  tail call void @_ZNSt6vectorIN5video9S3DVertexESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr %i.ak, ptr noundef %1, ptr noundef %i.af)
  %i.al = load ptr, ptr %0, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !171 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(28) %i.ao), !inline_history !171
  %i.at = icmp ult i32 %i.q, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ba = zext i32 %i.q to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit, %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !176
  %i.bg = zext i32 %4 to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bg
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !176 ; 2 uses
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.bl
  tail call void @_ZNSt6vectorItSaItEE15_M_range_insertIPKtEEvN9__gnu_cxx17__normal_iteratorIPtS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr %i.bm, ptr noundef %3, ptr noundef %i.bh)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.bn = load ptr, ptr %0, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !172 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(28) %i.bq), !inline_history !172
  %i.bv = icmp ult i32 %i.y, %i.bu
  br i1 %i.bv, label %.lr.ph27, label %.loopexit

.lr.ph27:                                         ; preds = %.preheader
  %i.bw = trunc i32 %i.q to i16
  %i.bx = zext i32 %i.y to i64
  br label %bb.o

bb.c:                                             ; preds = %.lr.ph, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  %indvars.iv = phi i64 [ %i.ba, %.lr.ph ], [ %indvars.iv.next, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %indvars.iv ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !113 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !114 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !115 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_default_appendEm:bb.a
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i31.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.as, align 4, !tbaa !121
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 28
  store <2 x float> zeroinitializer, ptr %i.at, align 4, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 36
  store i16 0, ptr %i.au, align 4, !tbaa !196
  %i.av = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !189

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i31, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ay, align 4, !tbaa !121
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 28
  store <2 x float> zeroinitializer, ptr %i.az, align 4, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 36
  store i16 0, ptr %i.ba, align 4, !tbaa !196
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bb, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bc, align 4, !tbaa !121
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 68
  store <2 x float> zeroinitializer, ptr %i.bd, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 76
  store i16 0, ptr %i.be, align 4, !tbaa !196
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bf, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bg, align 4, !tbaa !121
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store <2 x float> zeroinitializer, ptr %i.bh, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 116
  store i16 0, ptr %i.bi, align 4, !tbaa !196
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bj, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bk, align 4, !tbaa !121
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 148
  store <2 x float> zeroinitializer, ptr %i.bl, align 4, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 156
  store i16 0, ptr %i.bm, align 4, !tbaa !196
  %i.bn = add nsw i64 %.01012.i.i.i32, -4         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !188

_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !tbaa.struct !143, !alias.scope !198
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !193

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #30
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !133
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 4611686018427387904
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 4611686018427387903        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.b, align 2, !tbaa !49
  %i.p = getelementptr i8, ptr %i.b, i64 2        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 1       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !46
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #33
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4611686018427387903) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i16 0, ptr %i.y, align 2, !tbaa !49
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 2
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !49
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.x, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36: ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !141
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !96}
!1 = distinct !{null}
!2 = distinct !{!2, !96}
!3 = distinct !{!3, !96}
!4 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"float", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN4core11dimension2dIfEE", !15, i64 0, !15, i64 4}
!18 = !{!"_ZTSN4core8vector3dIfEE", !15, i64 0, !15, i64 4, !15, i64 8}
!19 = !{!"_ZTSN4core8aabbox3dIfEE", !18, i64 0, !18, i64 12}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!"p1 _ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !20, i64 0}
!22 = !{!"_ZTSN5scene19CBillboardSceneNodeE", !17, i64 8, !15, i64 16, !19, i64 20, !21, i64 48}
!23 = !{!22, !21, i64 48}
!24 = !{!"_ZTSN5scene11IMeshBufferE"}
!25 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !9, i64 0}
!26 = !{!"_ZTSN5video6SColorE", !10, i64 0}
!27 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !9, i64 0}
!28 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !9, i64 0}
!29 = !{!"_ZTSN5video13E_COLOR_PLANEE", !9, i64 0}
!30 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !9, i64 0}
!31 = !{!"bool", !9, i64 0}
!32 = !{!"_ZTSN5video8E_ZWRITEE", !9, i64 0}
!33 = !{!"_ZTSN5video9SMaterialE", !9, i64 0, !25, i64 96, !26, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !27, i64 124, !28, i64 124, !29, i64 125, !30, i64 125, !31, i64 126, !31, i64 126, !32, i64 126, !31, i64 126, !31, i64 126, !31, i64 126, !31, i64 126}
!34 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !20, i64 0}
!35 = !{!"p1 _ZTSN5scene12CIndexBufferItEE", !20, i64 0}
!36 = !{!"_ZTSN5scene16E_PRIMITIVE_TYPEE", !9, i64 0}
!37 = !{!"_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !24, i64 0, !33, i64 8, !34, i64 136, !35, i64 144, !19, i64 152, !36, i64 176}
!38 = !{!37, !34, i64 136}
!39 = !{!37, !35, i64 144}
!40 = !{!"p1 _ZTSN5video9S3DVertexE", !20, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 8}
!43 = !{!41, !40, i64 0}
!44 = !{!"p1 short", !20, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!45, !44, i64 8}
!47 = !{!45, !44, i64 0}
!48 = !{!"short", !9, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!10, !10, i64 0}
!51 = !{!"_ZTS17IReferenceCounted", !10, i64 8}
!52 = !{!51, !10, i64 8}
!53 = !{!"p1 _ZTSN5video8ITextureE", !20, i64 0}
!54 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !9, i64 0}
!55 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !9, i64 0}
!56 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !20, i64 0}
!57 = !{!"_ZTSN5video14SMaterialLayerE", !53, i64 0, !9, i64 8, !9, i64 8, !9, i64 9, !54, i64 10, !55, i64 11, !9, i64 12, !9, i64 13, !56, i64 16}
!58 = !{!57, !53, i64 0}
!59 = !{!9, !9, i64 0}
!60 = !{!37, !36, i64 176}
!61 = !{!"_ZTSN5scene18E_HARDWARE_MAPPINGE", !9, i64 0}
!62 = !{!"_ZTSN5scene8HWBufferE", !61, i64 8, !20, i64 16, !10, i64 24}
!63 = !{!62, !61, i64 8}
!64 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !9, i64 0, !31, i64 32}
!65 = !{!64, !31, i64 32}
!66 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16}
!67 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !20, i64 0}
!68 = !{!"_ZTSNSt8__detail15_List_node_baseE", !67, i64 0, !67, i64 8}
!69 = !{!68, !67, i64 8}
!70 = !{!68, !67, i64 0}
!71 = !{!"long", !9, i64 0}
!72 = !{!"_ZTSNSt8__detail17_List_node_headerE", !68, i64 0, !71, i64 16}
!73 = !{!72, !71, i64 16}
!74 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !9, i64 0, !31, i64 8}
!75 = !{!74, !31, i64 8}
!76 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !64, i64 0}
!77 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !76, i64 0}
!78 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !77, i64 0}
!79 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !78, i64 0}
!80 = !{!"_ZTSN4core8CMatrix4IfEE", !9, i64 0}
!81 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !72, i64 0}
!82 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !81, i64 0}
!83 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !82, i64 0}
!84 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !74, i64 0}
!85 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !84, i64 0}
!86 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !85, i64 0}
!87 = !{!"p1 _ZTSN5scene10ISceneNodeE", !20, i64 0}
!88 = !{!"p1 _ZTSN5scene13ISceneManagerE", !20, i64 0}
!89 = !{!"_ZTSN5scene10ISceneNodeE", !79, i64 8, !80, i64 48, !18, i64 112, !18, i64 124, !18, i64 136, !83, i64 152, !86, i64 176, !87, i64 192, !88, i64 200, !10, i64 208, !48, i64 212, !48, i64 214, !31, i64 216, !31, i64 217}
!90 = !{!89, !87, i64 192}
!91 = !{!89, !88, i64 200}
!92 = !{!89, !10, i64 208}
!93 = !{!89, !48, i64 214}
!94 = !{!89, !31, i64 216}
!95 = !{!89, !31, i64 217}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{i8 0, i8 2}
!98 = !{}
!99 = !{!"p1 omnipotent char", !20, i64 0}
!100 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !99, i64 0}
!101 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !100, i64 0, !71, i64 8, !9, i64 16}
!102 = !{!101, !99, i64 0}
!103 = !{!87, !87, i64 0}
!104 = !{ptr @_ZN5scene19CBillboardSceneNodeD0Ev}
!105 = !{!57, !56, i64 16}
!106 = !{!22, !15, i64 16}
!107 = !{!22, !15, i64 8}
!108 = !{!22, !15, i64 12}
!109 = !{!19, !15, i64 16}
!110 = !{!19, !15, i64 20}
!111 = !{!19, !15, i64 4}
!112 = !{!19, !15, i64 8}
!113 = !{!18, !15, i64 0}
!114 = !{!18, !15, i64 4}
!115 = !{!18, !15, i64 8}
!116 = !{!19, !15, i64 12}
!117 = !{!19, !15, i64 0}
!118 = !{!17, !15, i64 0}
!119 = !{!17, !15, i64 4}
!120 = !{i64 0, i64 64, !59}
!121 = !{!26, !10, i64 0}
!122 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !16}
!123 = !{!"p1 _ZTSN4core8vector3dIfEE", !20, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!124, !123, i64 8}
!126 = !{!124, !123, i64 0}
!127 = !{!82, !71, i64 16}
!128 = !{!67, !67, i64 0}
!129 = !{ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED1Ev}
!130 = !{!"p1 _ZTSN5scene12WeightBufferE", !20, i64 0}
!131 = !{!"_ZTS7irr_ptrIN5scene12WeightBufferEE", !130, i64 0}
!132 = !{!131, !130, i64 0}
!133 = !{!41, !40, i64 16}
!134 = !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev}
!135 = !{!"_ZTSN5scene13IVertexBufferE", !62, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE12_Vector_implE", !41, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseIN5video9S3DVertexESaIS1_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIN5video9S3DVertexESaIS1_EE", !137, i64 0}
!139 = !{!"_ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !135, i64 0, !138, i64 32, !131, i64 56, !31, i64 64}
!140 = !{!139, !31, i64 64}
!141 = !{!45, !44, i64 16}
!142 = !{ptr @_ZN5scene12CIndexBufferItED1Ev}
!143 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 20, i64 4, !16, i64 24, i64 4, !50, i64 28, i64 4, !16, i64 32, i64 4, !16, i64 36, i64 2, !49}
!144 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!145 = !{!62, !20, i64 16}
!146 = !{!62, !10, i64 24}
!147 = !{!89, !48, i64 212}
!148 = distinct !{ptr @_ZN5scene19CBillboardSceneNodeD2Ev, null}
!149 = distinct !{ptr @_ZN5scene10ISceneNode9removeAllEv, null}
!150 = !{ptr @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv}
!151 = !{ptr @_ZN5scene19CBillboardSceneNode19OnRegisterSceneNodeEv}
!152 = !{ptr @_ZN5scene19CBillboardSceneNode19OnRegisterSceneNodeEv, ptr @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv}
!153 = distinct !{null}
!154 = distinct !{null}
!155 = distinct !{!155, !96}
!156 = !{!123, !123, i64 0}
!157 = distinct !{!157, i1 true, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!158 = distinct !{!158, !157, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!159 = !{!158}
!160 = !{!100, !99, i64 0}
!161 = !{!101, !71, i64 8}
!162 = !{!71, !71, i64 0}
!163 = distinct !{!163, i1 true, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!164 = distinct !{!164, !163, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!165 = distinct !{!165, !163, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!166 = distinct !{!166, !96}
!167 = !{!124, !123, i64 16}
!168 = !{!165, !164}
!169 = distinct !{!169, !96}
!170 = distinct !{null}
!171 = distinct !{null}
!172 = distinct !{null}
!173 = distinct !{!173, !96}
!174 = distinct !{!174, !96}
!175 = !{!40, !40, i64 0}
!176 = !{!44, !44, i64 0}
!177 = !{ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED0Ev, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED1Ev}
!178 = !{ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED0Ev}
!179 = distinct !{null, null, null, null}
!180 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED0Ev, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!181 = !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED0Ev, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev}
!182 = !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED0Ev}
!183 = !{ptr @_ZN5scene12CIndexBufferItED0Ev, ptr @_ZN5scene12CIndexBufferItED1Ev}
!184 = !{ptr @_ZN5scene12CIndexBufferItED0Ev}
!185 = distinct !{!185, !96}
!186 = distinct !{!186, !96}
!187 = distinct !{!187, !197}
!188 = distinct !{!188, !96}
!189 = distinct !{!189, !197}
end_hunk_2
