Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD0Ev:bb.a
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, ptr nofree noundef captures(none) %3) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %2) ; 2 uses
  %i.c = fcmp ogt float %i.b, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.c, float %i.b, float f0x3C23D70A ; 2 uses
  %i.d = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.d, float 1.990000e+00, float %.sroa.speculated2.i
  %i.e = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = zext nneg i32 %2 to i64                  ; 4 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.g ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.g ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !70 ; 9 uses
  %i.z = load <4 x float>, ptr %i.h, align 8, !tbaa !70 ; 3 uses
  %i.aa = load float, ptr %i.k, align 4, !tbaa !70 ; 2 uses
  %i.ab = load float, ptr %i.j, align 8, !tbaa !70 ; 3 uses
  %i.ac = load float, ptr %i.i, align 4, !tbaa !70
  %i.ad = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 2 uses
  %i.ae = load float, ptr %i.m, align 4, !tbaa !70 ; 2 uses
  %i.af = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ai = shufflevector <4 x float> %i.z, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.aj = fsub <4 x float> %i.ag, %i.ai           ; 2 uses
  %i.ak = shufflevector <4 x float> %i.z, <4 x float> %i.ah, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.al = fsub <4 x float> %i.ak, %i.ai           ; 2 uses
  %i.am = fdiv <4 x float> %i.aj, %i.al           ; 2 uses
  %i.an = fmul <4 x float> %i.al, %i.am
  %i.ao = load <4 x float>, ptr %i.t, align 8, !tbaa !70 ; 3 uses
  %i.ap = fmul <4 x float> %i.am, splat (float 5.000000e-01)
  %i.aq = load <2 x float>, ptr %i.v, align 8, !tbaa !70
  %i.ar = load float, ptr %i.w, align 4, !tbaa !70
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> %i.ao, <4 x float> %i.as, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.au = shufflevector <4 x float> %i.ao, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.av = fsub <4 x float> %i.at, %i.au
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.av, <4 x float> %i.au)
  %i.ax = load <2 x float>, ptr %i.o, align 8, !tbaa !70 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.q, align 4, !tbaa !70
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.aw, <4 x float> %i.az) ; 4 uses
  %i.bb = fcmp olt float %i.y, %i.ac
  %i.bc = extractelement <4 x float> %i.ba, i64 0
  %i.bd = extractelement <4 x float> %i.ba, i64 1
  %i.be = select i1 %i.bb, float %i.bc, float %i.bd
  %i.bf = fcmp ogt float %i.y, %i.ab
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bg = load float, ptr %i.u, align 8, !tbaa !70 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !70
  %i.bj = fsub float %i.y, %i.ab
  %i.bk = fsub float %i.aa, %i.ab                 ; 2 uses
  %i.bl = fdiv float %i.bj, %i.bk                 ; 2 uses
  %i.bm = fmul float %i.bk, %i.bl
  %i.bn = fmul float %i.bl, 5.000000e-01
  %i.bo = fsub float %i.bi, %i.bg
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bo, float %i.bg)
  %i.bq = load float, ptr %i.p, align 8, !tbaa !70
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bp, float %i.bq)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi float [ %i.br, %bb.d ], [ %i.be, %bb.c ]
  %i.bs = fcmp ogt float %i.y, %i.aa
  %i.bt = extractelement <4 x float> %i.ba, i64 2
  %.1 = select i1 %i.bs, float %i.bt, float %.0
  %i.bu = extractelement <2 x float> %i.ad, i64 0
  %i.bv = fcmp ogt float %i.y, %i.bu
  %i.bw = extractelement <4 x float> %i.ba, i64 3
  %.2 = select i1 %i.bv, float %i.bw, float %.1
  %i.bx = extractelement <4 x float> %i.z, i64 0
  %i.by = fcmp olt float %i.y, %i.bx
  %i.bz = extractelement <4 x float> %i.aj, i64 0
  %i.ca = extractelement <4 x float> %i.ao, i64 0
  %i.cb = extractelement <2 x float> %i.ax, i64 0
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.ca, float %i.cb)
  %.3 = select i1 %i.by, float %i.cc, float %.2
  %i.cd = fcmp ogt float %i.y, %i.ae
  br i1 %i.cd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ce = load float, ptr %i.r, align 4, !tbaa !70
  %i.cf = fsub float %i.y, %i.ae
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ar, float %i.ce)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4 = phi float [ %i.cg, %bb.f ], [ %.3, %bb.e ]
  store float %.4, ptr %i.x, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !70 ; 9 uses
  %i.cm = load float, ptr %i.o, align 8, !tbaa !70 ; 3 uses
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !70 ; 2 uses
  %i.co = load float, ptr %i.p, align 8, !tbaa !70 ; 2 uses
  %i.cp = load float, ptr %i.q, align 4, !tbaa !70 ; 2 uses
  %i.cq = load float, ptr %i.ci, align 8, !tbaa !70 ; 2 uses
  %i.cr = load float, ptr %i.r, align 4, !tbaa !70 ; 2 uses
  %i.cs = load <2 x float>, ptr %3, align 4, !tbaa !70 ; 12 uses
  %i.ct = load <4 x float>, ptr %i.h, align 8, !tbaa !70 ; 6 uses
  %i.cu = load float, ptr %i.k, align 4, !tbaa !70 ; 2 uses
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fsub <2 x float> %i.cs, %i.cv           ; 2 uses
  %i.cx = extractelement <4 x float> %i.ct, i64 0
  %i.cy = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cz = fsub <2 x float> %i.cs, %i.cy
  %i.da = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.db = fsub <2 x float> %i.cs, %i.da
  %i.dc = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.dd = fsub <2 x float> %i.cs, %i.dc
  %i.de = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 4 uses
  %i.df = load float, ptr %i.m, align 4, !tbaa !70 ; 3 uses
  %i.dg = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.dh = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 2 uses
  %i.di = load float, ptr %i.j, align 8, !tbaa !70
  %i.dj = shufflevector <2 x float> %i.de, <2 x float> %i.dh, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.dk = insertelement <4 x float> %i.dj, float %i.cu, i64 2 ; 2 uses
  %i.dl = shufflevector <4 x float> %i.ct, <4 x float> %i.dk, <4 x i32> <i32 0, i32 4, i32 5, i32 6> ; 2 uses
  %i.dm = fsub <4 x float> %i.dk, %i.dl           ; 6 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = fdiv <2 x float> %i.cw, %i.dn           ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dq = fdiv <2 x float> %i.cz, %i.dp           ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ds = fdiv <2 x float> %i.db, %i.dr           ; 2 uses
  %i.dt = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = fsub <4 x float> %i.du, %i.dl           ; 2 uses
  %i.dw = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.dx = fdiv <2 x float> %i.dd, %i.dw           ; 2 uses
  %i.dy = fdiv <4 x float> %i.dv, %i.dm           ; 2 uses
  %i.dz = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = fsub <2 x float> %i.cs, %i.dz
  %i.eb = fsub float %i.cl, %i.dg
  %i.ec = fsub float %i.df, %i.dg                 ; 3 uses
  %i.ed = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ef = fdiv <2 x float> %i.ea, %i.ee           ; 2 uses
  %i.eg = fdiv float %i.eb, %i.ec                 ; 2 uses
  %i.eh = fmul <2 x float> %i.dn, %i.do
  %i.ei = fmul <2 x float> %i.do, splat (float 5.000000e-01)
  %i.ej = load <4 x float>, ptr %i.t, align 8, !tbaa !70 ; 6 uses
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.el = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = fmul <2 x float> %i.dp, %i.dq
  %i.eo = fmul <2 x float> %i.dq, splat (float 5.000000e-01)
  %i.ep = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %i.dr, %i.ds
  %i.et = fmul <2 x float> %i.ds, splat (float 5.000000e-01)
  %i.eu = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ev = insertelement <2 x float> poison, float %i.co, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.dw, %i.dx
  %i.ey = fmul <2 x float> %i.dx, splat (float 5.000000e-01)
  %i.ez = load <2 x float>, ptr %i.v, align 8, !tbaa !70 ; 4 uses
  %i.fa = load float, ptr %i.w, align 4, !tbaa !70 ; 2 uses
  %i.fb = extractelement <2 x float> %i.ez, i64 0 ; 2 uses
  %i.fc = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fd = load <2 x float>, ptr %i.u, align 8, !tbaa !70 ; 2 uses
  %i.fe = load <2 x float>, ptr %i.ch, align 4, !tbaa !70 ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <2 x float> %i.fd, <2 x float> %i.ez, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %i.fg = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x float> %5, <4 x float> %i.fg, <4 x i32> <i32 4, i32 5, i32 1, i32 2>
  %i.fh = shufflevector <4 x float> %i.ej, <4 x float> %4, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fj = fsub <4 x float> %6, %i.fi              ; 5 uses
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %i.ei, %i.fk
  %i.fm = fadd <2 x float> %i.ek, %i.fl
  %i.fn = fmul <2 x float> %i.eh, %i.fm
  %i.fo = fadd <2 x float> %i.em, %i.fn
  %i.fp = fmul <4 x float> %i.dm, %i.dy
  %i.fq = fmul <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.fr = fmul <4 x float> %i.fq, %i.fj
  %i.fs = fadd <4 x float> %i.fi, %i.fr
  %i.ft = fmul <4 x float> %i.fp, %i.fs           ; 4 uses
  %i.fu = extractelement <4 x float> %i.ft, i64 0
  %i.fv = fadd float %i.cm, %i.fu
  %i.fw = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = fmul <2 x float> %i.eo, %i.fw
  %i.fy = fadd <2 x float> %i.ep, %i.fx
  %i.fz = fmul <2 x float> %i.en, %i.fy
  %i.ga = fadd <2 x float> %i.er, %i.fz
  %i.gb = extractelement <4 x float> %i.ft, i64 1
  %i.gc = fadd float %i.cn, %i.gb
  %i.gd = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ge = fmul <2 x float> %i.et, %i.gd
  %i.gf = fadd <2 x float> %i.eu, %i.ge
  %i.gg = fmul <2 x float> %i.es, %i.gf
  %i.gh = fadd <2 x float> %i.ew, %i.gg
  %i.gi = extractelement <4 x float> %i.ft, i64 2
  %i.gj = fadd float %i.co, %i.gi
  %i.gk = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gl = fmul <2 x float> %i.ey, %i.gk
  %i.gm = fadd <2 x float> %i.fc, %i.gl
  %i.gn = fmul <2 x float> %i.ex, %i.gm
  %i.go = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fadd <2 x float> %i.gp, %i.gn
  %i.gr = extractelement <4 x float> %i.ft, i64 3
  %i.gs = fadd float %i.cp, %i.gr
  %i.gt = fmul <2 x float> %i.ee, %i.ef
  %i.gu = fmul float %i.ec, %i.eg
  %i.gv = fmul <2 x float> %i.ef, splat (float 5.000000e-01)
  %i.gw = fmul float %i.eg, 5.000000e-01
  %i.gx = fsub float %i.fa, %i.fb                 ; 2 uses
  %i.gy = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x float> %i.gv, %i.gz
  %i.hb = fmul float %i.gw, %i.gx
  %i.hc = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = fadd <2 x float> %i.hc, %i.ha
  %i.he = fadd float %i.fb, %i.hb
  %i.hf = fmul <2 x float> %i.gt, %i.hd
  %i.hg = fmul float %i.gu, %i.he
  %i.hh = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fadd <2 x float> %i.hi, %i.hf
  %i.hk = fadd float %i.cq, %i.hg
  %i.hl = fmul <2 x float> %i.cw, %i.ek
  %foldExtExtBinop = fmul <4 x float> %i.dv, %i.ej
  %i.hm = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.hn = fadd <2 x float> %i.em, %i.hl
  %i.ho = fadd float %i.cm, %i.hm
  %i.hp = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hq = fsub <2 x float> %i.cs, %i.hp
  %i.hr = fsub float %i.cl, %i.df
  %i.hs = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = fmul <2 x float> %i.hq, %i.hs
  %i.hu = fmul float %i.hr, %i.fa
  %i.hv = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fadd <2 x float> %i.ht, %i.hw
  %i.hy = fadd float %i.hu, %i.cr
  %i.hz = fcmp olt <2 x float> %i.cs, %i.cy
  %i.ia = select <2 x i1> %i.hz, <2 x float> %i.fo, <2 x float> %i.ga
  %i.ib = extractelement <2 x float> %i.dh, i64 0
  %i.ic = fcmp olt float %i.cl, %i.ib
  %i.id = select i1 %i.ic, float %i.fv, float %i.gc
  %i.ie = fcmp olt <2 x float> %i.cs, %i.da
  %i.if = select <2 x i1> %i.ie, <2 x float> %i.ia, <2 x float> %i.gh
  %i.ig = fcmp olt float %i.cl, %i.di
  %i.ih = select i1 %i.ig, float %i.id, float %i.gj
  %i.ii = fcmp olt <2 x float> %i.cs, %i.dc
  %i.ij = select <2 x i1> %i.ii, <2 x float> %i.if, <2 x float> %i.gq
  %i.ik = fcmp olt float %i.cl, %i.cu
  %i.il = select i1 %i.ik, float %i.ih, float %i.gs
  %i.im = fcmp olt <2 x float> %i.cs, %i.dz
  %i.in = select <2 x i1> %i.im, <2 x float> %i.ij, <2 x float> %i.hj
  %i.io = fcmp olt float %i.cl, %i.dg
  %i.ip = select i1 %i.io, float %i.il, float %i.hk
  %i.iq = fcmp olt <2 x float> %i.cs, %i.cv
  %i.ir = select <2 x i1> %i.iq, <2 x float> %i.hn, <2 x float> %i.in
  %i.is = fcmp olt float %i.cl, %i.cx
  %i.it = select i1 %i.is, float %i.ho, float %i.ip
  %i.iu = fcmp olt <2 x float> %i.cs, %i.hp
  %i.iv = select <2 x i1> %i.iu, <2 x float> %i.ir, <2 x float> %i.hx
  %i.iw = fcmp olt float %i.cl, %i.df
  %i.ix = select i1 %i.iw, float %i.it, float %i.hy
  store <2 x float> %i.iv, ptr %3, align 4, !tbaa !70
  store float %i.ix, ptr %i.ck, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::float3", align 8 ; 5 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::float3", align 8 ; 5 uses
  %. = select i1 %3, i64 48, i64 144
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.b = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %2) ; 2 uses
  %i.c = fsub float 2.000000e+00, %i.b
  %.0 = select i1 %3, float %i.b, float %i.c      ; 2 uses
  %i.d = fcmp oeq float %.0, 1.000000e+00
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.f = zext i1 %3 to i64                        ; 3 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.f
  %i.h = zext nneg i32 %2 to i64                  ; 5 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.f
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.h ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.h ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.u = fcmp olt float %.0, 1.000000e+00
  %.not82 = icmp eq i32 %2, 3                     ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !70 ; 5 uses
  %i.x = load float, ptr %i.n, align 4, !tbaa !70 ; 2 uses
  %i.y = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 4 uses
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fsub <2 x float> %i.ab, %i.y            ; 2 uses
  %i.ad = fsub <2 x float> %i.z, %i.y             ; 2 uses
  %i.ae = fdiv <2 x float> %i.ac, %i.ad           ; 7 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ag = fneg float %i.af
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.af, float 1.000000e+00)
  %i.ai = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.aj = fsub float 1.000000e+00, %i.ai          ; 2 uses
  %i.ak = fsub float 2.000000e+00, %i.ai
  %i.al = load <2 x float>, ptr %i.o, align 4, !tbaa !70 ; 3 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fmul float %i.am, %i.aj
  %i.ao = insertelement <2 x float> %i.ae, float %i.ak, i64 1
  %i.ap = fmul <2 x float> %i.ao, %i.al
  %i.aq = fmul <2 x float> %i.ae, %i.ap
  %i.ar = insertelement <2 x float> poison, float %i.x, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.an, i64 1
  %i.at = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.aj, i64 1
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.au, <2 x float> %i.aq)
  %i.aw = extractelement <2 x float> %i.y, i64 1
  %i.ax = fcmp olt float %i.w, %i.aw
  %i.ay = extractelement <2 x float> %i.y, i64 0
  %i.az = fcmp olt float %i.w, %i.ay
  %i.ba = extractelement <2 x float> %i.z, i64 1  ; 2 uses
  %i.bb = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.bc = insertelement <2 x float> %i.ae, float 1.000000e+00, i64 0
  %i.bd = insertelement <2 x float> %i.ae, float 1.000000e+00, i64 1
  %i.be = fsub <2 x float> %i.bc, %i.bd
  %i.bf = fmul <2 x float> %i.be, %i.bb
  %i.bg = fmul <2 x float> %i.ae, %i.bf
  %i.bh = fsub float %i.w, %i.ba
  %i.bi = shufflevector <2 x float> %i.ad, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.bj = insertelement <4 x float> %i.bi, float %i.bh, i64 3
  %i.bk = shufflevector <2 x float> %i.bb, <2 x float> %i.bg, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bl = shufflevector <2 x float> %i.av, <2 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 poison, i32 3>
  %i.bm = insertelement <4 x float> %i.bl, float %i.x, i64 2
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bk, <4 x float> %i.bm) ; 4 uses
  %i.bo = extractelement <4 x float> %i.bn, i64 0
  %i.bp = extractelement <4 x float> %i.bn, i64 1
  %i.bq = select i1 %i.ax, float %i.bo, float %i.bp
  %i.br = extractelement <4 x float> %i.bn, i64 2
  %i.bs = select i1 %i.az, float %i.br, float %i.bq
  %i.bt = fcmp olt float %i.w, %i.ba
  %i.bu = extractelement <4 x float> %i.bn, i64 3
  %i.bv = select i1 %i.bt, float %i.bs, float %i.bu
  store float %i.bv, ptr %i.v, align 4, !tbaa !70
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bw = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.bw, ptr %5, align 8, !tbaa !70
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
