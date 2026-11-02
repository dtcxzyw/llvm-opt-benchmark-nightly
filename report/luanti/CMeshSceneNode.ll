Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CMeshSceneNode?download=true
inline.NumInlined: 859
inline.NumDeleted: 256
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
_ZN4core5arrayINS_8vector3dIfEEEixEj.exit:        ; preds = %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit
  %i.bo = load <2 x float>, ptr %i.bg, align 8, !tbaa !19
  %i.bp = load <2 x float>, ptr %i.bh, align 8, !tbaa !19
  %i.bq = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.br = fmul <2 x float> %i.bq, %i.bp
  %i.bs = shufflevector <3 x float> %foldExtExtBinop, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bo, <2 x float> %i.br)
  %i.bu = load <2 x float>, ptr %i.bi, align 8, !tbaa !19
  %i.bv = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bx = load <2 x float>, ptr %i.bj, align 8, !tbaa !19
  %i.by = fadd <2 x float> %i.bw, %i.bx
  %i.bz = load float, ptr %i.bk, align 8, !tbaa !19
  %i.ca = load float, ptr %i.bl, align 8, !tbaa !19
  %i.cb = fmul float %i.ao, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.bz, float %i.cb)
  %i.cd = load float, ptr %i.bm, align 8, !tbaa !19
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.cd, float %i.cc)
  %i.cf = load float, ptr %i.bn, align 8, !tbaa !19
  %i.cg = fadd float %i.cf, %i.ce
  store <2 x float> %i.by, ptr %i.o, align 4, !tbaa !19
  store float %i.cg, ptr %i.s, align 4, !tbaa !19
  %exitcond.1.not = icmp eq i64 %i.bf, 12
  br i1 %exitcond.1.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ci = load <2 x float>, ptr %i.bg, align 8, !tbaa !19
  %i.cj = load <2 x float>, ptr %i.bh, align 8, !tbaa !19
  %i.ck = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.cl = fmul <2 x float> %i.ck, %i.cj
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ci, <2 x float> %i.cl)
  %i.cn = load <2 x float>, ptr %i.bi, align 8, !tbaa !19
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.cn, <2 x float> %i.cm)
  %i.cp = load <2 x float>, ptr %i.bj, align 8, !tbaa !19
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = load float, ptr %i.bk, align 8, !tbaa !19
  %i.cs = load float, ptr %i.bl, align 8, !tbaa !19
  %i.ct = fmul float %i.ar, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.cr, float %i.ct)
  %i.cv = load float, ptr %i.bm, align 8, !tbaa !19
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.cv, float %i.cu)
  %i.cx = load float, ptr %i.bn, align 8, !tbaa !19
  %i.cy = fadd float %i.cx, %i.cw
  store <2 x float> %i.cq, ptr %i.t, align 4, !tbaa !19
  store float %i.cy, ptr %i.ch, align 4, !tbaa !19
  %exitcond.2.not = icmp eq i64 %i.bf, 24
  br i1 %exitcond.2.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.da = load <2 x float>, ptr %i.bg, align 8, !tbaa !19
  %i.db = load <2 x float>, ptr %i.bh, align 8, !tbaa !19
  %i.dc = fmul <2 x float> %i.bq, %i.db
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.da, <2 x float> %i.dc)
  %i.de = load <2 x float>, ptr %i.bi, align 8, !tbaa !19
  %i.df = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dh = load <2 x float>, ptr %i.bj, align 8, !tbaa !19
  %i.di = fadd <2 x float> %i.dg, %i.dh
  %i.dj = load float, ptr %i.bk, align 8, !tbaa !19
  %i.dk = load float, ptr %i.bl, align 8, !tbaa !19
  %i.dl = fmul float %i.ao, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.dj, float %i.dl)
  %i.dn = load float, ptr %i.bm, align 8, !tbaa !19
  %i.do = tail call float @llvm.fmuladd.f32(float %i.as, float %i.dn, float %i.dm)
  %i.dp = load float, ptr %i.bn, align 8, !tbaa !19
  %i.dq = fadd float %i.dp, %i.do
  store <2 x float> %i.di, ptr %i.w, align 4, !tbaa !19
  store float %i.dq, ptr %i.cz, align 4, !tbaa !19
  %exitcond.3.not = icmp eq i64 %i.bf, 36
  br i1 %exitcond.3.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.ds = load <2 x float>, ptr %i.bg, align 8, !tbaa !19
  %i.dt = load <2 x float>, ptr %i.bh, align 8, !tbaa !19
  %i.du = fmul <2 x float> %i.ck, %i.dt
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ds, <2 x float> %i.du)
  %i.dw = load <2 x float>, ptr %i.bi, align 8, !tbaa !19
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = load <2 x float>, ptr %i.bj, align 8, !tbaa !19
  %i.dz = fadd <2 x float> %i.dx, %i.dy
  %i.ea = load float, ptr %i.bk, align 8, !tbaa !19
  %i.eb = load float, ptr %i.bl, align 8, !tbaa !19
  %i.ec = fmul float %i.ar, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ea, float %i.ec)
  %i.ee = load float, ptr %i.bm, align 8, !tbaa !19
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ee, float %i.ed)
  %i.eg = load float, ptr %i.bn, align 8, !tbaa !19
  %i.eh = fadd float %i.eg, %i.ef
  store <2 x float> %i.dz, ptr %i.z, align 4, !tbaa !19
  store float %i.eh, ptr %i.dr, align 4, !tbaa !19
  %exitcond.4.not = icmp eq i64 %i.bf, 48
  br i1 %exitcond.4.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ej = load <2 x float>, ptr %i.bg, align 8, !tbaa !19
  %i.ek = load <2 x float>, ptr %i.bh, align 8, !tbaa !19
  %i.el = fmul <2 x float> %i.bq, %i.ek
  %i.em = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ej, <2 x float> %i.el)
  %i.eo = load <2 x float>, ptr %i.bi, align 8, !tbaa !19
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.eo, <2 x float> %i.en)
  %i.eq = load <2 x float>, ptr %i.bj, align 8, !tbaa !19
  %i.er = fadd <2 x float> %i.ep, %i.eq
  %i.es = load float, ptr %i.bk, align 8, !tbaa !19
  %i.et = load float, ptr %i.bl, align 8, !tbaa !19
  %i.eu = fmul float %i.ao, %i.et
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.at, float %i.es, float %i.eu)
  %i.ew = load float, ptr %i.bm, align 8, !tbaa !19
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ew, float %i.ev)
  %i.ey = load float, ptr %i.bn, align 8, !tbaa !19
  %i.ez = fadd float %i.ey, %i.ex
  store <2 x float> %i.er, ptr %i.ac, align 4, !tbaa !19
  store float %i.ez, ptr %i.ei, align 4, !tbaa !19
  %exitcond.5.not = icmp eq i64 %i.bf, 60
  br i1 %exitcond.5.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.fb = load <2 x float>, ptr %i.bg, align 8, !tbaa !19
  %i.fc = load <2 x float>, ptr %i.bh, align 8, !tbaa !19
  %i.fd = fmul <2 x float> %i.ck, %i.fc
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fb, <2 x float> %i.fd)
  %i.ff = load <2 x float>, ptr %i.bi, align 8, !tbaa !19
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ff, <2 x float> %i.fe)
  %i.fh = load <2 x float>, ptr %i.bj, align 8, !tbaa !19
  %i.fi = fadd <2 x float> %i.fg, %i.fh
  %i.fj = load float, ptr %i.bk, align 8, !tbaa !19
  %i.fk = load float, ptr %i.bl, align 8, !tbaa !19
  %i.fl = fmul float %i.ar, %i.fk
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.at, float %i.fj, float %i.fl)
  %i.fn = load float, ptr %i.bm, align 8, !tbaa !19
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.fn, float %i.fm)
  %i.fp = load float, ptr %i.bn, align 8, !tbaa !19
  %i.fq = fadd float %i.fp, %i.fo
  store <2 x float> %i.fi, ptr %i.au, align 4, !tbaa !19
  store float %i.fq, ptr %i.fa, align 4, !tbaa !19
  %exitcond.6.not = icmp eq i64 %i.bf, 72
  br i1 %exitcond.6.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.fs = load <2 x float>, ptr %i.bg, align 8, !tbaa !19
  %i.ft = load <2 x float>, ptr %i.bh, align 8, !tbaa !19
  %i.fu = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = fmul <2 x float> %i.fu, %i.ft
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fs, <2 x float> %i.fv)
  %i.fx = load <2 x float>, ptr %i.bi, align 8, !tbaa !19
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.fx, <2 x float> %i.fw)
  %i.fz = load <2 x float>, ptr %i.bj, align 8, !tbaa !19
  %i.ga = fadd <2 x float> %i.fy, %i.fz
  %i.gb = load float, ptr %i.bk, align 8, !tbaa !19
  %i.gc = load float, ptr %i.bl, align 8, !tbaa !19
  %i.gd = fmul float %i.ao, %i.gc
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.at, float %i.gb, float %i.gd)
  %i.gf = load float, ptr %i.bm, align 8, !tbaa !19
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.as, float %i.gf, float %i.ge)
  %i.gh = load float, ptr %i.bn, align 8, !tbaa !19
  %i.gi = fadd float %i.gh, %i.gg
  store <2 x float> %i.ga, ptr %i.av, align 4, !tbaa !19
  store float %i.gi, ptr %i.fr, align 4, !tbaa !19
  %exitcond.7.not = icmp eq i64 %i.bf, 84
  br i1 %exitcond.7.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.7

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.7:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %i.gk = load <2 x float>, ptr %i.bg, align 8, !tbaa !19
  %i.gl = load <2 x float>, ptr %i.bh, align 8, !tbaa !19
  %i.gm = fmul <2 x float> %i.ck, %i.gl
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.gk, <2 x float> %i.gm)
  %i.go = load <2 x float>, ptr %i.bi, align 8, !tbaa !19
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.go, <2 x float> %i.gn)
  %i.gq = load <2 x float>, ptr %i.bj, align 8, !tbaa !19
  %i.gr = fadd <2 x float> %i.gp, %i.gq
  %i.gs = load float, ptr %i.bk, align 8, !tbaa !19
  %i.gt = load float, ptr %i.bl, align 8, !tbaa !19
  %i.gu = fmul float %i.ar, %i.gt
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.at, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.bm, align 8, !tbaa !19
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.as, float %i.gw, float %i.gv)
  %i.gy = load float, ptr %i.bn, align 8, !tbaa !19
  %i.gz = fadd float %i.gy, %i.gx
  store <2 x float> %i.gr, ptr %i.ba, align 4, !tbaa !19
  store float %i.gz, ptr %i.gj, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = load float, ptr %i.e, align 4, !tbaa !95
  %i.g = fmul float %i.f, f0x3C8EFA35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %2 = fpext float %i.g to double                 ; 2 uses
  %3 = tail call double @cos(double noundef %2) #22 ; 3 uses
  %4 = tail call double @sin(double noundef %2) #22 ; 3 uses
  %5 = load <2 x float>, ptr %i.h, align 8, !tbaa !19
  %6 = fmul <2 x float> %5, splat (float f0x3C8EFA35)
  %i.i = fpext <2 x float> %6 to <2 x double>     ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %7 = tail call double @cos(double noundef %i.j) #22 ; 4 uses
  %8 = tail call double @sin(double noundef %i.j) #22 ; 3 uses
  %i.k = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %9 = tail call double @cos(double noundef %i.k) #22 ; 5 uses
  %10 = tail call double @sin(double noundef %i.k) #22 ; 5 uses
  %i.l = fmul double %7, %9
  %i.m = fptrunc double %i.l to float             ; 3 uses
  store float %i.m, ptr %0, align 4, !tbaa !19
  %i.n = fmul double %7, %10
  %i.o = fptrunc double %i.n to float             ; 3 uses
  store float %i.o, ptr %i.a, align 4, !tbaa !19
  %i.p = fptrunc double %8 to float
  %i.q = fneg float %i.p                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !19
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
  store <2 x float> %i.af, ptr %i.v, align 4, !tbaa !19
  %i.ag = fmul double %4, %7
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ah, ptr %i.ai, align 4, !tbaa !19
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
  store <2 x float> %15, ptr %i.aj, align 4, !tbaa !19
  %16 = fmul double %3, %7
  %17 = fptrunc double %16 to float               ; 4 uses
  store float %17, ptr %i.d, align 4, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.av = load <2 x float>, ptr %i.as, align 8, !tbaa !19 ; 3 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  store float %i.aw, ptr %i.at, align 4, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.az = load <2 x float>, ptr %i.au, align 4, !tbaa !19 ; 3 uses
  %i.ba = load float, ptr %i.ay, align 8, !tbaa !97 ; 3 uses
  %i.bb = extractelement <2 x float> %i.az, i64 0
  store float %i.bb, ptr %i.ax, align 4, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ba, ptr %i.bc, align 4, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.be = load float, ptr %i.bd, align 8, !tbaa !95 ; 3 uses
  %i.bf = fcmp oeq float %i.be, 1.000000e+00
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !96 ; 2 uses
  %i.bi = fcmp oeq float %i.bh, 1.000000e+00
  %or.cond = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !97
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
  store <4 x float> %20, ptr %0, align 4, !tbaa !19
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
  store <4 x float> %23, ptr %i.v, align 4, !tbaa !19
  %i.co = insertelement <4 x float> %i.bs, float 0.000000e+00, i64 3
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> zeroinitializer, <4 x float> %i.co) ; 2 uses
  %i.cp = shufflevector <1 x float> %i.bo, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cq = insertelement <4 x float> %i.by, float 0.000000e+00, i64 3
  %i.cr = insertelement <4 x float> %i.cq, float %17, i64 2
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cr, <4 x float> %24)
  %i.cs = insertelement <4 x float> %i.cn, float %i.ba, i64 2
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %25)
  store <4 x float> %26, ptr %i.aj, align 4, !tbaa !19
  %i.ct = insertelement <4 x float> %i.by, float -0.000000e+00, i64 3
  %i.cu = insertelement <4 x float> %i.ct, float %17, i64 2
  %i.cv = insertelement <4 x float> %24, float 1.000000e+00, i64 3
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %i.cv)
  %i.cw = insertelement <4 x float> %i.cm, float -0.000000e+00, i64 3
  %i.cx = insertelement <4 x float> %i.cw, float %i.ba, i64 2
  %i.cy = fadd <4 x float> %27, %i.cx
  store <4 x float> %i.cy, ptr %i.at, align 4, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 3 uses
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
define linkonce_odr void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !49
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
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
  %i.l = load i32, ptr %i.k, align 8, !tbaa !73
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !85
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !89
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !30, !range !65, !noundef !66
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !30
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !25 ; 3 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.b = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !25 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #23
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.a, ptr %i.d, align 8, !tbaa !24
  store ptr %i.a, ptr %i.a, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.e, align 8, !tbaa !28
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  %.sroa.06.011 = phi ptr [ %.sroa.06.0, %_ZNK17IReferenceCounted4dropEv.exit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  store ptr null, ptr %i.h, align 8, !tbaa !47
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !85   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store i8 0, ptr %i.j, align 8, !tbaa !30
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !73   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #24
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !73
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #22, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  %.sroa.06.0 = load ptr, ptr %.sroa.06.011, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, %i.a
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN17IReferenceCountedD0Ev:bb.a
; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17, !range !65, !noundef !66
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !65
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
  store ptr %i.h, ptr %0, align 8, !tbaa !122
  %i.i = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !123  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.k, ptr %i.a, align 8, !tbaa !124
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !70
  %i.n = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.n, ptr %i.h, align 8, !tbaa !71
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !71
  store i8 %i.p, ptr %i.o, align 1, !tbaa !71
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !123
  %i.s = load ptr, ptr %0, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i8 1, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !17
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !71
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #17

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !94     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !19
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !93
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !19
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !20, !alias.scope !130
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !128

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !129
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.06 = load ptr, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %.not7 = icmp eq ptr %.sroa.03.06, %i.b
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.08 = phi ptr [ %.sroa.03.0, %.lr.ph ], [ %.sroa.03.06, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %i.d, ptr noundef %1)
  %.sroa.03.0 = load ptr, ptr %.sroa.03.08, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5video9SMaterialEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i
  %.05.i = phi ptr [ %i.i, %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #23
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.i.i.i:         ; preds = %bb.b, %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %.not.i.1.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.1.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #23
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i:       ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %.not.i.2.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.2.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #23
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i:       ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %.not.i.3.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.3.i.i.i, label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #23
  br label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i

_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i:     ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5video9SMaterialEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5video9SMaterialEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN5video9SMaterialESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 72057594037927935
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 144115188075855871
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 7
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #26
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 5 uses
  %.not14.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not14.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(127) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 128
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef %i.e, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIPKN5video9SMaterialEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.n = extractvalue { ptr, i32 } %i.k, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #22 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.p = shl i64 %1, 7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #25
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !63
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN5video14SMaterialLayerC2ERKS0_.exit, label %bb.b

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a

_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i:     ; preds = %bb.n, %_ZN5video14SMaterialLayerD2Ev.exit.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %.not.i.2.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.2.i.i.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 64) #23
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i:     ; preds = %bb.o, %_ZN5video14SMaterialLayerD2Ev.exit.1.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63 ; 2 uses
  %.not.i.3.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.3.i.i.i.i, label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 64) #23
  br label %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i

_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i:   ; preds = %bb.p, %_ZN5video14SMaterialLayerD2Ev.exit.2.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit:    ; preds = %_ZSt8_DestroyIN5video9SMaterialEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit38
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #23
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_.exit, %bb.q
  store ptr %i.p, ptr %0, align 8, !tbaa !56
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.l
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !64
  ret void

bb.r:                                             ; preds = %_ZNKSt6vectorIN5video9SMaterialESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.e
  %i.ax = extractvalue { ptr, i32 } %i.w, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #22 ; 0 uses
  tail call void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %i.q) #22
  br label %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit

bb.s:                                             ; preds = %bb.r, %bb.j
  %.0.lpad-body.ph = phi ptr [ %i.z, %bb.j ], [ %i.p, %bb.r ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.aw, %bb.r ]
  %i.az = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body.ph)
          to label %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit: ; preds = %bb.s, %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #25
          to label %bb.w unwind label %bb.t

bb.u:                                             ; preds = %bb.t
  resume { ptr, i32 } %i.bb

bb.v:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

bb.w:                                             ; preds = %_ZSt8_DestroyIPN5video9SMaterialES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN5video9SMaterialESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 72057594037927935
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 144115188075855871
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 7
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #26
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN5video9SMaterialEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video9SMaterialESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(127) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 128
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video9SMaterialESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !132

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video9SMaterialEEvT_S3_(ptr noundef %i.e, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5video9SMaterialESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.n = extractvalue { ptr, i32 } %i.k, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #22 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.p = shl i64 %1, 7
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #25
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN5video9SMaterialESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !53}
!1 = distinct !{!1, !53}
!2 = distinct !{null}
!3 = distinct !{!3, !53}
!4 = distinct !{!4, !53}
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
!15 = !{!"bool", !9, i64 0}
!16 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !9, i64 0, !15, i64 32}
!17 = !{!16, !15, i64 32}
!18 = !{!"float", !9, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19}
!21 = !{!"any pointer", !9, i64 0}
!22 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !21, i64 0}
!23 = !{!"_ZTSNSt8__detail15_List_node_baseE", !22, i64 0, !22, i64 8}
!24 = !{!23, !22, i64 8}
!25 = !{!23, !22, i64 0}
!26 = !{!"long", !9, i64 0}
!27 = !{!"_ZTSNSt8__detail17_List_node_headerE", !23, i64 0, !26, i64 16}
!28 = !{!27, !26, i64 16}
!29 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !9, i64 0, !15, i64 8}
!30 = !{!29, !15, i64 8}
!31 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !16, i64 0}
!32 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !31, i64 0}
!33 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !32, i64 0}
!34 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !33, i64 0}
!35 = !{!"_ZTSN4core8CMatrix4IfEE", !9, i64 0}
!36 = !{!"_ZTSN4core8vector3dIfEE", !18, i64 0, !18, i64 4, !18, i64 8}
!37 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !27, i64 0}
!38 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !38, i64 0}
!40 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !29, i64 0}
!41 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !40, i64 0}
!42 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !41, i64 0}
!43 = !{!"p1 _ZTSN5scene10ISceneNodeE", !21, i64 0}
!44 = !{!"p1 _ZTSN5scene13ISceneManagerE", !21, i64 0}
!45 = !{!"short", !9, i64 0}
!46 = !{!"_ZTSN5scene10ISceneNodeE", !34, i64 8, !35, i64 48, !36, i64 112, !36, i64 124, !36, i64 136, !39, i64 152, !42, i64 176, !43, i64 192, !44, i64 200, !10, i64 208, !45, i64 212, !45, i64 214, !15, i64 216, !15, i64 217}
!47 = !{!46, !43, i64 192}
!48 = !{!46, !44, i64 200}
!49 = !{!46, !10, i64 208}
!50 = !{!46, !45, i64 214}
!51 = !{!46, !15, i64 216}
!52 = !{!46, !15, i64 217}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"p1 _ZTSN5video9SMaterialE", !21, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN5video9SMaterialESaIS1_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 0}
!57 = !{!55, !54, i64 8}
!58 = !{!"p1 _ZTSN5video8ITextureE", !21, i64 0}
!59 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !9, i64 0}
!60 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !9, i64 0}
!61 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !21, i64 0}
!62 = !{!"_ZTSN5video14SMaterialLayerE", !58, i64 0, !9, i64 8, !9, i64 8, !9, i64 9, !59, i64 10, !60, i64 11, !9, i64 12, !9, i64 13, !61, i64 16}
!63 = !{!62, !61, i64 16}
!64 = !{!55, !54, i64 16}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!"p1 omnipotent char", !21, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !67, i64 0}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0, !26, i64 8, !9, i64 16}
!70 = !{!69, !67, i64 0}
!71 = !{!9, !9, i64 0}
!72 = !{!"_ZTS17IReferenceCounted", !10, i64 8}
!73 = !{!72, !10, i64 8}
!74 = !{!"_ZTSN5scene14IMeshSceneNodeE", !46, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN5video9SMaterialESaIS1_EE12_Vector_implE", !55, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIN5video9SMaterialESaIS1_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIN5video9SMaterialESaIS1_EE", !76, i64 0}
!78 = !{!"_ZTSN4core8aabbox3dIfEE", !36, i64 0, !36, i64 12}
!79 = !{!"p1 _ZTSN5scene5IMeshE", !21, i64 0}
!80 = !{!"_ZTSN5scene14CMeshSceneNodeE", !74, i64 0, !77, i64 224, !78, i64 248, !79, i64 272, !10, i64 280, !15, i64 284}
!81 = !{!80, !79, i64 272}
!82 = !{ptr @_ZN5scene14CMeshSceneNodeD1Ev}
!83 = !{!80, !10, i64 280}
!84 = !{!80, !15, i64 284}
!85 = !{!43, !43, i64 0}
!86 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19}
!87 = !{!62, !58, i64 0}
!88 = !{!22, !22, i64 0}
!89 = !{!38, !26, i64 16}
!90 = !{i64 0, i64 64, !71}
!91 = !{!"p1 _ZTSN4core8vector3dIfEE", !21, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!92, !91, i64 8}
!94 = !{!92, !91, i64 0}
!95 = !{!36, !18, i64 0}
!96 = !{!36, !18, i64 4}
!97 = !{!36, !18, i64 8}
!98 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!99 = !{!46, !45, i64 212}
!100 = !{ptr @_ZN5scene14CMeshSceneNodeD0Ev, ptr @_ZN5scene14CMeshSceneNodeD1Ev}
!101 = !{ptr @_ZN5scene14CMeshSceneNodeD0Ev}
!102 = distinct !{!102, !53}
!103 = !{ptr @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv}
!104 = distinct !{!104, !53}
!105 = distinct !{!105, !53}
!106 = distinct !{!106, !53}
!107 = distinct !{!107, !53}
!108 = distinct !{!108, !53}
!109 = distinct !{null}
!110 = distinct !{!110, !53}
!111 = !{ptr @_ZN5scene14CMeshSceneNodeC1EPNS_5IMeshEPNS_10ISceneNodeEPNS_13ISceneManagerEiRKN4core8vector3dIfEESB_SB_}
!112 = !{!45, !45, i64 0}
!113 = distinct !{!113, !53}
!114 = distinct !{!114, !53}
!115 = distinct !{!115, !53}
!116 = distinct !{!116, !53}
!117 = !{!54, !54, i64 0}
!118 = !{!91, !91, i64 0}
!119 = distinct !{!119, i1 true, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!120 = distinct !{!120, !119, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!121 = !{!120}
!122 = !{!68, !67, i64 0}
!123 = !{!69, !26, i64 8}
!124 = !{!26, !26, i64 0}
!125 = distinct !{!125, i1 true, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!126 = distinct !{!126, !125, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!127 = distinct !{!127, !125, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!128 = distinct !{!128, !53}
!129 = !{!92, !91, i64 16}
!130 = !{!127, !126}
!131 = distinct !{!131, !53}
!132 = distinct !{!132, !53}
end_hunk_2
