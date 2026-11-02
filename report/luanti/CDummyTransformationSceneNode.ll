Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CDummyTransformationSceneNode?download=true
inline.NumInlined: 700
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
_ZN4core5arrayINS_8vector3dIfEEEixEj.exit:        ; preds = %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit
  %i.bo = load <2 x float>, ptr %i.bg, align 8, !tbaa !14
  %i.bp = load <2 x float>, ptr %i.bh, align 8, !tbaa !14
  %i.bq = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.br = fmul <2 x float> %i.bq, %i.bp
  %i.bs = shufflevector <3 x float> %foldExtExtBinop, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bo, <2 x float> %i.br)
  %i.bu = load <2 x float>, ptr %i.bi, align 8, !tbaa !14
  %i.bv = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bx = load <2 x float>, ptr %i.bj, align 8, !tbaa !14
  %i.by = fadd <2 x float> %i.bw, %i.bx
  %i.bz = load float, ptr %i.bk, align 8, !tbaa !14
  %i.ca = load float, ptr %i.bl, align 8, !tbaa !14
  %i.cb = fmul float %i.ao, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.bz, float %i.cb)
  %i.cd = load float, ptr %i.bm, align 8, !tbaa !14
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.cd, float %i.cc)
  %i.cf = load float, ptr %i.bn, align 8, !tbaa !14
  %i.cg = fadd float %i.cf, %i.ce
  store <2 x float> %i.by, ptr %i.o, align 4, !tbaa !14
  store float %i.cg, ptr %i.s, align 4, !tbaa !14
  %exitcond.1.not = icmp eq i64 %i.bf, 12
  br i1 %exitcond.1.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ci = load <2 x float>, ptr %i.bg, align 8, !tbaa !14
  %i.cj = load <2 x float>, ptr %i.bh, align 8, !tbaa !14
  %i.ck = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.cl = fmul <2 x float> %i.ck, %i.cj
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ci, <2 x float> %i.cl)
  %i.cn = load <2 x float>, ptr %i.bi, align 8, !tbaa !14
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.cn, <2 x float> %i.cm)
  %i.cp = load <2 x float>, ptr %i.bj, align 8, !tbaa !14
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = load float, ptr %i.bk, align 8, !tbaa !14
  %i.cs = load float, ptr %i.bl, align 8, !tbaa !14
  %i.ct = fmul float %i.ar, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.cr, float %i.ct)
  %i.cv = load float, ptr %i.bm, align 8, !tbaa !14
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.cv, float %i.cu)
  %i.cx = load float, ptr %i.bn, align 8, !tbaa !14
  %i.cy = fadd float %i.cx, %i.cw
  store <2 x float> %i.cq, ptr %i.t, align 4, !tbaa !14
  store float %i.cy, ptr %i.ch, align 4, !tbaa !14
  %exitcond.2.not = icmp eq i64 %i.bf, 24
  br i1 %exitcond.2.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.da = load <2 x float>, ptr %i.bg, align 8, !tbaa !14
  %i.db = load <2 x float>, ptr %i.bh, align 8, !tbaa !14
  %i.dc = fmul <2 x float> %i.bq, %i.db
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.da, <2 x float> %i.dc)
  %i.de = load <2 x float>, ptr %i.bi, align 8, !tbaa !14
  %i.df = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dh = load <2 x float>, ptr %i.bj, align 8, !tbaa !14
  %i.di = fadd <2 x float> %i.dg, %i.dh
  %i.dj = load float, ptr %i.bk, align 8, !tbaa !14
  %i.dk = load float, ptr %i.bl, align 8, !tbaa !14
  %i.dl = fmul float %i.ao, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.dj, float %i.dl)
  %i.dn = load float, ptr %i.bm, align 8, !tbaa !14
  %i.do = tail call float @llvm.fmuladd.f32(float %i.as, float %i.dn, float %i.dm)
  %i.dp = load float, ptr %i.bn, align 8, !tbaa !14
  %i.dq = fadd float %i.dp, %i.do
  store <2 x float> %i.di, ptr %i.w, align 4, !tbaa !14
  store float %i.dq, ptr %i.cz, align 4, !tbaa !14
  %exitcond.3.not = icmp eq i64 %i.bf, 36
  br i1 %exitcond.3.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.ds = load <2 x float>, ptr %i.bg, align 8, !tbaa !14
  %i.dt = load <2 x float>, ptr %i.bh, align 8, !tbaa !14
  %i.du = fmul <2 x float> %i.ck, %i.dt
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ds, <2 x float> %i.du)
  %i.dw = load <2 x float>, ptr %i.bi, align 8, !tbaa !14
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = load <2 x float>, ptr %i.bj, align 8, !tbaa !14
  %i.dz = fadd <2 x float> %i.dx, %i.dy
  %i.ea = load float, ptr %i.bk, align 8, !tbaa !14
  %i.eb = load float, ptr %i.bl, align 8, !tbaa !14
  %i.ec = fmul float %i.ar, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ea, float %i.ec)
  %i.ee = load float, ptr %i.bm, align 8, !tbaa !14
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ee, float %i.ed)
  %i.eg = load float, ptr %i.bn, align 8, !tbaa !14
  %i.eh = fadd float %i.eg, %i.ef
  store <2 x float> %i.dz, ptr %i.z, align 4, !tbaa !14
  store float %i.eh, ptr %i.dr, align 4, !tbaa !14
  %exitcond.4.not = icmp eq i64 %i.bf, 48
  br i1 %exitcond.4.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ej = load <2 x float>, ptr %i.bg, align 8, !tbaa !14
  %i.ek = load <2 x float>, ptr %i.bh, align 8, !tbaa !14
  %i.el = fmul <2 x float> %i.bq, %i.ek
  %i.em = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ej, <2 x float> %i.el)
  %i.eo = load <2 x float>, ptr %i.bi, align 8, !tbaa !14
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.eo, <2 x float> %i.en)
  %i.eq = load <2 x float>, ptr %i.bj, align 8, !tbaa !14
  %i.er = fadd <2 x float> %i.ep, %i.eq
  %i.es = load float, ptr %i.bk, align 8, !tbaa !14
  %i.et = load float, ptr %i.bl, align 8, !tbaa !14
  %i.eu = fmul float %i.ao, %i.et
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.at, float %i.es, float %i.eu)
  %i.ew = load float, ptr %i.bm, align 8, !tbaa !14
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ew, float %i.ev)
  %i.ey = load float, ptr %i.bn, align 8, !tbaa !14
  %i.ez = fadd float %i.ey, %i.ex
  store <2 x float> %i.er, ptr %i.ac, align 4, !tbaa !14
  store float %i.ez, ptr %i.ei, align 4, !tbaa !14
  %exitcond.5.not = icmp eq i64 %i.bf, 60
  br i1 %exitcond.5.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.fb = load <2 x float>, ptr %i.bg, align 8, !tbaa !14
  %i.fc = load <2 x float>, ptr %i.bh, align 8, !tbaa !14
  %i.fd = fmul <2 x float> %i.ck, %i.fc
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fb, <2 x float> %i.fd)
  %i.ff = load <2 x float>, ptr %i.bi, align 8, !tbaa !14
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ff, <2 x float> %i.fe)
  %i.fh = load <2 x float>, ptr %i.bj, align 8, !tbaa !14
  %i.fi = fadd <2 x float> %i.fg, %i.fh
  %i.fj = load float, ptr %i.bk, align 8, !tbaa !14
  %i.fk = load float, ptr %i.bl, align 8, !tbaa !14
  %i.fl = fmul float %i.ar, %i.fk
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.at, float %i.fj, float %i.fl)
  %i.fn = load float, ptr %i.bm, align 8, !tbaa !14
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.fn, float %i.fm)
  %i.fp = load float, ptr %i.bn, align 8, !tbaa !14
  %i.fq = fadd float %i.fp, %i.fo
  store <2 x float> %i.fi, ptr %i.au, align 4, !tbaa !14
  store float %i.fq, ptr %i.fa, align 4, !tbaa !14
  %exitcond.6.not = icmp eq i64 %i.bf, 72
  br i1 %exitcond.6.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.fs = load <2 x float>, ptr %i.bg, align 8, !tbaa !14
  %i.ft = load <2 x float>, ptr %i.bh, align 8, !tbaa !14
  %i.fu = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = fmul <2 x float> %i.fu, %i.ft
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fs, <2 x float> %i.fv)
  %i.fx = load <2 x float>, ptr %i.bi, align 8, !tbaa !14
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.fx, <2 x float> %i.fw)
  %i.fz = load <2 x float>, ptr %i.bj, align 8, !tbaa !14
  %i.ga = fadd <2 x float> %i.fy, %i.fz
  %i.gb = load float, ptr %i.bk, align 8, !tbaa !14
  %i.gc = load float, ptr %i.bl, align 8, !tbaa !14
  %i.gd = fmul float %i.ao, %i.gc
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.at, float %i.gb, float %i.gd)
  %i.gf = load float, ptr %i.bm, align 8, !tbaa !14
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.as, float %i.gf, float %i.ge)
  %i.gh = load float, ptr %i.bn, align 8, !tbaa !14
  %i.gi = fadd float %i.gh, %i.gg
  store <2 x float> %i.ga, ptr %i.av, align 4, !tbaa !14
  store float %i.gi, ptr %i.fr, align 4, !tbaa !14
  %exitcond.7.not = icmp eq i64 %i.bf, 84
  br i1 %exitcond.7.not, label %bb.e, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.7

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.7:      ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit.6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %i.gk = load <2 x float>, ptr %i.bg, align 8, !tbaa !14
  %i.gl = load <2 x float>, ptr %i.bh, align 8, !tbaa !14
  %i.gm = fmul <2 x float> %i.ck, %i.gl
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.gk, <2 x float> %i.gm)
  %i.go = load <2 x float>, ptr %i.bi, align 8, !tbaa !14
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.go, <2 x float> %i.gn)
  %i.gq = load <2 x float>, ptr %i.bj, align 8, !tbaa !14
  %i.gr = fadd <2 x float> %i.gp, %i.gq
  %i.gs = load float, ptr %i.bk, align 8, !tbaa !14
  %i.gt = load float, ptr %i.bl, align 8, !tbaa !14
  %i.gu = fmul float %i.ar, %i.gt
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.at, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.bm, align 8, !tbaa !14
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.as, float %i.gw, float %i.gv)
  %i.gy = load float, ptr %i.bn, align 8, !tbaa !14
  %i.gz = fadd float %i.gy, %i.gx
  store <2 x float> %i.gr, ptr %i.ba, align 4, !tbaa !14
  store float %i.gz, ptr %i.gj, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %sincos.sin40.i.i = alloca double, align 8      ; 4 uses
  %sincos.cos41.i.i = alloca double, align 8      ; 4 uses
  %sincos.sin36.i.i = alloca double, align 8      ; 4 uses
  %sincos.cos37.i.i = alloca double, align 8      ; 4 uses
  %sincos.sin.i.i = alloca double, align 8        ; 4 uses
  %sincos.cos.i.i = alloca double, align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = load float, ptr %i.e, align 4, !tbaa !65
  %i.g = fmul float %i.f, f0x3C8EFA35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %2 = load <2 x float>, ptr %i.h, align 8, !tbaa !14
  %3 = fmul <2 x float> %2, splat (float f0x3C8EFA35)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin40.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos41.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin36.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos37.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i.i)
  %4 = fpext float %i.g to double
  call void @sincos(double %4, ptr nonnull %sincos.sin.i.i, ptr nonnull %sincos.cos.i.i)
  %sin.i.i = load double, ptr %sincos.sin.i.i, align 8 ; 3 uses
  %cos.i.i = load double, ptr %sincos.cos.i.i, align 8 ; 3 uses
  %i.i = fpext <2 x float> %3 to <2 x double>     ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 0
  call void @sincos(double %i.j, ptr nonnull %sincos.sin36.i.i, ptr nonnull %sincos.cos37.i.i)
  %sin38.i.i = load double, ptr %sincos.sin36.i.i, align 8 ; 3 uses
  %cos39.i.i = load double, ptr %sincos.cos37.i.i, align 8 ; 4 uses
  %i.k = extractelement <2 x double> %i.i, i64 1
  call void @sincos(double %i.k, ptr nonnull %sincos.sin40.i.i, ptr nonnull %sincos.cos41.i.i)
  %sin42.i.i = load double, ptr %sincos.sin40.i.i, align 8 ; 4 uses
  %cos43.i.i = load double, ptr %sincos.cos41.i.i, align 8 ; 4 uses
  %i.l = fmul double %cos39.i.i, %cos43.i.i
  %i.m = fptrunc double %i.l to float             ; 3 uses
  store float %i.m, ptr %0, align 4, !tbaa !14
  %i.n = fmul double %cos39.i.i, %sin42.i.i
  %i.o = fptrunc double %i.n to float             ; 3 uses
  store float %i.o, ptr %i.a, align 4, !tbaa !14
  %i.p = fptrunc double %sin38.i.i to float
  %i.q = fneg float %i.p                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.q, ptr %i.r, align 4, !tbaa !14
  %i.s = fmul double %sin.i.i, %sin38.i.i
  %i.t = fmul double %cos.i.i, %sin38.i.i
  %i.u = fneg double %sin42.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x double> poison, double %i.u, i64 0
  %i.z = insertelement <2 x double> %i.y, double %cos43.i.i, i64 1
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x double> poison, double %cos43.i.i, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %sin42.i.i, i64 1 ; 2 uses
  %5 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ae, <2 x double> %i.aa)
  %i.af = fptrunc <2 x double> %5 to <2 x float>  ; 2 uses
  store <2 x float> %i.af, ptr %i.v, align 4, !tbaa !14
  %i.ag = fmul double %sin.i.i, %cos39.i.i
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ah, ptr %i.ai, align 4, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = fneg double %cos43.i.i
  %i.al = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x double> poison, double %sin42.i.i, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.ak, i64 1
  %i.ap = fmul <2 x double> %i.am, %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ae, <2 x double> %i.ap)
  %7 = fptrunc <2 x double> %6 to <2 x float>     ; 2 uses
  store <2 x float> %7, ptr %i.aj, align 4, !tbaa !14
  %8 = fmul double %cos.i.i, %cos39.i.i
  %9 = fptrunc double %8 to float                 ; 4 uses
  store float %9, ptr %i.d, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin40.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos41.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin36.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos37.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.av = load <2 x float>, ptr %i.as, align 8, !tbaa !14 ; 3 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  store float %i.aw, ptr %i.at, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.az = load <2 x float>, ptr %i.au, align 4, !tbaa !14 ; 3 uses
  %i.ba = load float, ptr %i.ay, align 8, !tbaa !67 ; 3 uses
  %i.bb = extractelement <2 x float> %i.az, i64 0
  store float %i.bb, ptr %i.ax, align 4, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ba, ptr %i.bc, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.be = load float, ptr %i.bd, align 8, !tbaa !65 ; 3 uses
  %i.bf = fcmp oeq float %i.be, 1.000000e+00
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !66 ; 2 uses
  %i.bi = fcmp oeq float %i.bh, 1.000000e+00
  %or.cond = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !67
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
  %10 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bx, <4 x float> %i.bs)
  %i.by = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.bz = insertelement <4 x float> %i.by, float %9, i64 2 ; 2 uses
  %i.ca = insertelement <4 x float> %i.bz, float %i.be, i64 3
  %11 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> zeroinitializer, <4 x float> %10)
  %i.cb = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float 0.000000e+00, i64 3
  %i.cd = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %12 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %11)
  store <4 x float> %12, ptr %0, align 4, !tbaa !14
  %i.cf = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.bm, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ch = fmul <4 x float> %i.cg, %i.br
  %i.ci = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.m, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.o, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.q, i64 2 ; 2 uses
  %13 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> zeroinitializer, <4 x float> %i.ch)
  %i.cl = insertelement <4 x float> %i.bz, float %i.bm, i64 3
  %14 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> zeroinitializer, <4 x float> %13)
  %i.cm = shufflevector <2 x float> %i.av, <2 x float> %i.az, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.cn = insertelement <4 x float> %i.cm, float 0.000000e+00, i64 3 ; 2 uses
  %15 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %14)
  store <4 x float> %15, ptr %i.v, align 4, !tbaa !14
  %i.co = insertelement <4 x float> %i.bs, float 0.000000e+00, i64 3
  %16 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> zeroinitializer, <4 x float> %i.co) ; 2 uses
  %i.cp = shufflevector <1 x float> %i.bo, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cq = insertelement <4 x float> %i.by, float 0.000000e+00, i64 3
  %i.cr = insertelement <4 x float> %i.cq, float %9, i64 2
  %17 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cr, <4 x float> %16)
  %i.cs = insertelement <4 x float> %i.cn, float %i.ba, i64 2
  %18 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %17)
  store <4 x float> %18, ptr %i.aj, align 4, !tbaa !14
  %i.ct = insertelement <4 x float> %i.by, float -0.000000e+00, i64 3
  %i.cu = insertelement <4 x float> %i.ct, float %9, i64 2
  %i.cv = insertelement <4 x float> %16, float 1.000000e+00, i64 3
  %19 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %i.cv)
  %i.cw = insertelement <4 x float> %i.cm, float -0.000000e+00, i64 3
  %i.cx = insertelement <4 x float> %i.cw, float %i.ba, i64 2
  %i.cy = fadd <4 x float> %19, %i.cx
  store <4 x float> %i.cy, ptr %i.at, align 4, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !57, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !57, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !47
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !53
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !68
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !44, !range !57, !noundef !58
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !44
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %.not = icmp eq ptr %i.b, %0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !44, !range !57, !noundef !58
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene10ISceneNode11removeChildEPS0_) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !44
  store ptr null, ptr %i.a, align 8, !tbaa !45
  %i.i = load ptr, ptr %1, align 8, !tbaa !12
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !53
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #21, !inline_history !1
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !68
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !68
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 3 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17IReferenceCountedD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17IReferenceCountedD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40, !range !57, !noundef !58
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !57
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
  store ptr %i.h, ptr %0, align 8, !tbaa !85
  %i.i = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !86   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.k, ptr %i.a, align 8, !tbaa !87
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !73
  %i.n = load i64, ptr %i.a, align 8, !tbaa !87
  store i64 %i.n, ptr %i.h, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !54
  store i8 %i.p, ptr %i.o, align 1, !tbaa !54
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !86
  %i.s = load ptr, ptr %0, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !40
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !54
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #20
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !64     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !14
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !63
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !14
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !56, !alias.scope !93
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !91

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #20
  br label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.06 = load ptr, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %.not7 = icmp eq ptr %.sroa.03.06, %i.b
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.08 = phi ptr [ %.sroa.03.0, %.lr.ph ], [ %.sroa.03.06, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %i.d, ptr noundef %1)
  %.sroa.03.0 = load ptr, ptr %.sroa.03.08, align 8, !tbaa !42 ; 2 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !51}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZN5scene29CDummyTransformationSceneNodeD1Ev, ptr @_ZN5scene10ISceneNode9removeAllEv, null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"bool", !7, i64 0}
!16 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !15, i64 32}
!17 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !16, i64 0}
!18 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !17, i64 0}
!19 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !18, i64 0}
!20 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !19, i64 0}
!21 = !{!"_ZTSN4core8CMatrix4IfEE", !7, i64 0}
!22 = !{!"_ZTSN4core8vector3dIfEE", !13, i64 0, !13, i64 4, !13, i64 8}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !23, i64 0}
!25 = !{!"_ZTSNSt8__detail15_List_node_baseE", !24, i64 0, !24, i64 8}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSNSt8__detail17_List_node_headerE", !25, i64 0, !26, i64 16}
!28 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !27, i64 0}
!29 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !29, i64 0}
!31 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !7, i64 0, !15, i64 8}
!32 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !31, i64 0}
!33 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !32, i64 0}
!34 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !33, i64 0}
!35 = !{!"p1 _ZTSN5scene10ISceneNodeE", !23, i64 0}
!36 = !{!"p1 _ZTSN5scene13ISceneManagerE", !23, i64 0}
!37 = !{!"short", !7, i64 0}
!38 = !{!"_ZTSN5scene10ISceneNodeE", !20, i64 8, !21, i64 48, !22, i64 112, !22, i64 124, !22, i64 136, !30, i64 152, !34, i64 176, !35, i64 192, !36, i64 200, !8, i64 208, !37, i64 212, !37, i64 214, !15, i64 216, !15, i64 217}
!39 = !{!38, !37, i64 212}
!40 = !{!16, !15, i64 32}
!41 = !{!25, !24, i64 8}
!42 = !{!25, !24, i64 0}
!43 = !{!27, !26, i64 16}
!44 = !{!31, !15, i64 8}
!45 = !{!38, !35, i64 192}
!46 = !{!38, !36, i64 200}
!47 = !{!38, !8, i64 208}
!48 = !{!38, !37, i64 214}
!49 = !{!38, !15, i64 216}
!50 = !{!38, !15, i64 217}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"_ZTS17IReferenceCounted", !8, i64 8}
!53 = !{!52, !8, i64 8}
!54 = !{!7, !7, i64 0}
!55 = !{i64 0, i64 64, !54}
!56 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!35, !35, i64 0}
!60 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14}
!61 = !{!"p1 _ZTSN4core8vector3dIfEE", !23, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!62, !61, i64 8}
!64 = !{!62, !61, i64 0}
!65 = !{!22, !13, i64 0}
!66 = !{!22, !13, i64 4}
!67 = !{!22, !13, i64 8}
!68 = !{!29, !26, i64 16}
!69 = !{!24, !24, i64 0}
!70 = !{!"p1 omnipotent char", !23, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !26, i64 8, !7, i64 16}
!73 = !{!72, !70, i64 0}
!74 = !{ptr @_ZN5scene29CDummyTransformationSceneNodeD1Ev}
!75 = distinct !{null}
!76 = distinct !{!76, !51}
!77 = !{ptr @_ZN5scene29CDummyTransformationSceneNodeC1EPNS_10ISceneNodeEPNS_13ISceneManagerEi}
!78 = !{!37, !37, i64 0}
!79 = distinct !{!79, !51}
!80 = !{!61, !61, i64 0}
!81 = distinct !{!81, i1 true, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!82 = distinct !{!82, !81, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!83 = !{!82}
!84 = distinct !{ptr @_ZN5scene10ISceneNode9removeAllEv, null}
!85 = !{!71, !70, i64 0}
!86 = !{!72, !26, i64 8}
!87 = !{!26, !26, i64 0}
!88 = distinct !{!88, i1 true, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!89 = distinct !{!89, !88, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!90 = distinct !{!90, !88, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!91 = distinct !{!91, !51}
!92 = !{!62, !61, i64 16}
!93 = !{!90, !89}
!94 = distinct !{!94, !51}
end_hunk_1
