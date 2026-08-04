inline.NumInlined: 96
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp17ScenePreprocessor16ProcessAnimationEP11aiAnimation:bb.a
bb.x:                                             ; preds = %bb.w, %._crit_edge
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load float, ptr %i.s, align 4            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.k, align 4            ; 4 uses
  %i.w = load float, ptr %0, align 4              ; 3 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.c, align 4            ; 2 uses
  %i.z = load float, ptr %i.m, align 4            ; 4 uses
  %i.aa = load float, ptr %i.g, align 4           ; 3 uses
  %i.ab = fmul float %i.x, %i.x
  %i.ac = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.y, i64 1 ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ab)
  %i.ag = insertelement <2 x float> %i.p, float %i.w, i64 1 ; 2 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ag, <2 x float> %i.ae)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.af)
  %i.aj = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.aa, i64 1 ; 2 uses
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ak, <2 x float> %i.ah)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.ai) ; 3 uses
  %i.am = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.al) ; 4 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  store float %i.an, ptr %1, align 4
  store float %sqrt.i31, ptr %i.u, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = extractelement <2 x float> %i.am, i64 0
  store float %i.ap, ptr %i.ao, align 4
  %i.aq = load float, ptr %0, align 4             ; 3 uses
  %i.ar = load float, ptr %i.l, align 4           ; 3 uses
  %i.as = fmul float %i.aq, %i.ar                 ; 2 uses
  %i.at = load float, ptr %i.s, align 4           ; 4 uses
  %i.au = fmul float %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load float, ptr %i.av, align 4          ; 6 uses
  %i.ax = load float, ptr %i.h, align 4           ; 5 uses
  %i.ay = fmul float %i.as, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load float, ptr %i.az, align 4          ; 6 uses
  %i.bb = fneg float %i.ba
  %i.bc = fmul float %i.ay, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aw, float %i.bc)
  %i.be = load float, ptr %i.q, align 4           ; 3 uses
  %i.bf = fmul float %i.aq, %i.be                 ; 2 uses
  %i.bg = fmul float %i.ax, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bi = load float, ptr %i.bh, align 4          ; 6 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bi, float %i.bd)
  %i.bk = load float, ptr %i.m, align 4           ; 4 uses
  %i.bl = fneg float %i.bk                        ; 3 uses
  %i.bm = fmul float %i.bf, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.aw, float %i.bj)
  %i.bo = load float, ptr %i.d, align 4           ; 3 uses
  %i.bp = fmul float %i.aq, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.bk, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.ba, float %i.bn)
  %i.bs = fneg float %i.at                        ; 3 uses
  %i.bt = fmul float %i.bp, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bi, float %i.br)
  %i.bv = load float, ptr %i.k, align 4           ; 3 uses
  %i.bw = fmul float %i.be, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load float, ptr %i.bx, align 4          ; 6 uses
  %i.bz = fneg float %i.ax                        ; 2 uses
  %i.ca = fmul float %i.bw, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.by, float %i.bu)
  %i.cc = load float, ptr %i.g, align 4           ; 4 uses
  %i.cd = fmul float %i.bw, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.aw, float %i.cb)
  %i.cf = fmul float %i.bo, %i.bv                 ; 2 uses
  %i.cg = fneg float %i.cc                        ; 3 uses
  %i.ch = fmul float %i.cf, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ba, float %i.ce)
  %i.cj = fmul float %i.at, %i.cf
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.by, float %i.ci)
  %i.cl = load float, ptr %i.c, align 4           ; 3 uses
  %i.cm = fmul float %i.bv, %i.cl                 ; 2 uses
  %i.cn = fmul float %i.cm, %i.bs
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.aw, float %i.ck)
  %i.cp = fmul float %i.ax, %i.cm
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ba, float %i.co)
  %i.cr = load float, ptr %i.n, align 4           ; 3 uses
  %i.cs = fmul float %i.bo, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cc, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bi, float %i.cq)
  %i.cv = fmul float %i.cs, %i.bl
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.by, float %i.cu)
  %i.cx = fmul float %i.cl, %i.cr                 ; 2 uses
  %i.cy = fmul float %i.bk, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.aw, float %i.cw)
  %i.da = fmul float %i.cx, %i.bz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.bi, float %i.cz)
  %i.dc = fmul float %i.ar, %i.cr                 ; 2 uses
  %i.dd = fmul float %i.ax, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.by, float %i.db)
  %i.df = fmul float %i.dc, %i.cg
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.aw, float %i.de)
  %i.dh = load float, ptr %i.a, align 4           ; 3 uses
  %i.di = fmul float %i.cl, %i.dh                 ; 2 uses
  %i.dj = fmul float %i.di, %i.bl
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ba, float %i.dg)
  %i.dl = fmul float %i.at, %i.di
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.bi, float %i.dk)
  %i.dn = fmul float %i.ar, %i.dh                 ; 2 uses
  %i.do = fmul float %i.dn, %i.bs
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.by, float %i.dm)
  %i.dq = fmul float %i.cc, %i.dn
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ba, float %i.dp)
  %i.ds = fmul float %i.be, %i.dh                 ; 2 uses
  %i.dt = fmul float %i.ds, %i.cg
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.bi, float %i.dr)
  %i.dv = fmul float %i.bk, %i.ds
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.by, float %i.du)
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dy = insertelement <2 x float> %i.am, float %.pre, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dz = fneg <2 x float> %i.am                  ; 3 uses
  %i.ea = fneg float %sqrt.i31                    ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  %i.ec = extractelement <2 x float> %i.dz, i64 0
  store float %i.ec, ptr %i.ao, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = phi float [ %sqrt.i31, %._crit_edge ], [ %i.ea, %bb.b ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.dy, %._crit_edge ], [ %i.dz, %bb.b ] ; 2 uses
  %i.ef = fcmp une <2 x float> %i.ee, zeroinitializer ; 3 uses
  %i.eg = fdiv <2 x float> splat (float 1.000000e+00), %i.ee ; 3 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  %i.ei = fmul float %i.w, %i.eh
  %i.ej = extractelement <2 x i1> %i.ef, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.ej, float %i.ei, float %i.w ; 6 uses
  %i.ek = fcmp une float %i.ed, 0.000000e+00      ; 3 uses
  %i.el = fdiv float 1.000000e+00, %i.ed          ; 3 uses
  %i.em = fmul float %i.x, %i.el
  %i.en = fmul float %i.z, %i.el
  %.sroa.22.0 = select i1 %i.ek, float %i.em, float %i.x ; 6 uses
  %.sroa.27.0 = select i1 %i.ek, float %i.en, float %i.z ; 4 uses
  %i.eo = insertelement <2 x float> %i.p, float %i.y, i64 1 ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.eg
  %i.eq = fmul float %i.aa, %i.eh
  %i.er = fmul float %i.v, %i.el
  %.sroa.1260.0 = select i1 %i.ej, float %i.eq, float %i.aa ; 4 uses
  %.sroa.17.0 = select i1 %i.ek, float %i.er, float %i.v ; 4 uses
  %i.es = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.et = fmul float %i.r, %i.es
  %i.eu = fmul float %i.t, %i.es
  %i.ev = select <2 x i1> %i.ef, <2 x float> %i.ep, <2 x float> %i.eo ; 6 uses
  %i.ew = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
  %.sroa.37.0 = select i1 %i.ew, float %i.et, float %i.r ; 4 uses
  %.sroa.42.0 = select i1 %i.ew, float %i.eu, float %i.t ; 6 uses
  %i.ex = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ey = fadd float %i.ex, %.sroa.42.0           ; 2 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fa = fadd float %i.ey, 1.000000e+00
  %i.fb = tail call noundef float @sqrtf(float noundef %i.fa) #12
  %i.fc = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %.sroa.17.0, i64 1
  %i.fe = fsub <2 x float> %i.ev, %i.fd
  %.scalar = fmul float %i.fb, 2.000000e+00
  %i.ff = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fh = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fi = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float %i.fh, i64 1
  %i.fk = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.fg
  %i.fn = fdiv <4 x float> %i.fl, %i.fg
  %i.fo = shufflevector <4 x float> %i.fm, <4 x float> %i.fn, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fp = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fq = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fp, %i.fq
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fr = fadd float %.sroa.055.0, 1.000000e+00
  %i.fs = fsub float %i.fr, %.sroa.22.0
  %i.ft = fsub float %i.fs, %.sroa.42.0
  %i.fu = tail call noundef float @sqrtf(float noundef %i.ft) #12
  %.scalar76 = fmul float %i.fu, 2.000000e+00
  %i.fv = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar76, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %4 = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %5 = insertelement <2 x float> %4, float %.sroa.17.0, i64 1
  %6 = fadd <2 x float> %i.ev, %5
  %i.fx = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fy = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> %i.fw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x float> %i.fz, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.ga = fdiv <4 x float> %8, %i.fw
  %i.gb = fmul <4 x float> %8, %i.fw
  %i.gc = shufflevector <4 x float> %i.ga, <4 x float> %i.gb, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gd = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ge = fadd float %.sroa.22.0, 1.000000e+00
  %i.gf = fsub float %i.ge, %.sroa.055.0
  %i.gg = fsub float %i.gf, %.sroa.42.0
  %i.gh = tail call noundef float @sqrtf(float noundef %i.gg) #12
  %i.gi = fmul float %i.gh, 2.000000e+00
  %i.gj = extractelement <2 x float> %i.ev, i64 1
  %i.gk = fadd float %i.gj, %.sroa.17.0
  %i.gl = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gm = extractelement <2 x float> %i.ev, i64 0
  %i.gn = fsub float %i.gm, %.sroa.1260.0
  %i.go = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gn, i64 0
  %i.gp = insertelement <4 x float> %i.go, float %i.gk, i64 1
  %i.gq = insertelement <4 x float> %i.gp, float %i.gl, i64 3 ; 2 uses
  %i.gr = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gt = fdiv <4 x float> %i.gq, %i.gs
  %i.gu = fmul <4 x float> %i.gq, %i.gs
  %i.gv = shufflevector <4 x float> %i.gt, <4 x float> %i.gu, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.gw = fadd float %.sroa.42.0, 1.000000e+00
  %i.gx = fsub float %i.gw, %.sroa.055.0
  %i.gy = fsub float %i.gx, %.sroa.22.0
  %i.gz = tail call noundef float @sqrtf(float noundef %i.gy) #12
  %i.ha = fmul float %i.gz, 2.000000e+00
  %i.hb = extractelement <2 x float> %i.ev, i64 0
  %i.hc = fadd float %.sroa.1260.0, %i.hb
  %i.hd = fadd float %.sroa.27.0, %.sroa.37.0
  %i.he = extractelement <2 x float> %i.ev, i64 1
  %i.hf = fsub float %i.he, %.sroa.17.0
  %i.hg = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hf, i64 0
  %i.hh = insertelement <4 x float> %i.hg, float %i.hc, i64 1
  %i.hi = insertelement <4 x float> %i.hh, float %i.hd, i64 2 ; 2 uses
  %i.hj = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hk = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hl = fdiv <4 x float> %i.hi, %i.hk
  %i.hm = fmul <4 x float> %i.hi, %i.hk
  %i.hn = shufflevector <4 x float> %i.hl, <4 x float> %i.hm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.ho = phi <4 x float> [ %i.fo, %bb.d ], [ %i.gc, %bb.f ], [ %i.gv, %bb.h ], [ %i.hn, %bb.i ]
  store <4 x float> %i.ho, ptr %2, align 4
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
end_hunk_0
