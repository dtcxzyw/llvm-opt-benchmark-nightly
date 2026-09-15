Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf:bb.a
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.cm, float %i.cy)
  %i.ej = extractelement <4 x float> %i.eg, i64 1
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.cq, float %i.cz)
  %i.el = select i1 %i.da, float %i.ei, float %i.ek
  %i.em = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.en = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eo = fadd <2 x float> %i.em, %i.en           ; 2 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0
  %i.eq = select i1 %i.dc, float %i.ep, float %i.el
  %i.er = fcmp olt float %i.cg, %i.ch
  %i.es = extractelement <2 x float> %i.eo, i64 1
  %i.et = select i1 %i.er, float %i.eq, float %i.es
  store float %i.et, ptr %i.cf, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.eu = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.eu, ptr %6, align 8, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !70
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ew, ptr %i.ex, align 8, !tbaa !70
  %i.ey = load float, ptr %i.i, align 4, !tbaa !70
  %i.ez = load float, ptr %i.j, align 4, !tbaa !70
  %i.fa = load float, ptr %i.k, align 4, !tbaa !70
  %i.fb = load float, ptr %i.n, align 4, !tbaa !70
  %i.fc = load float, ptr %i.o, align 4, !tbaa !70
  %i.fd = load float, ptr %i.p, align 4, !tbaa !70
  %i.fe = load float, ptr %i.s, align 8, !tbaa !70
  %i.ff = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.ey, float noundef %i.ez, float noundef %i.fa, float noundef %i.fb, float noundef %i.fc, float noundef %i.fd, float noundef %i.fe, float noundef %i.ff, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #15 align 2 {
bb.a:
  %.sink.idx = select i1 %3, i64 0, i64 192
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.idx
  %i.a = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %.sink, i32 noundef %2) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.c = zext i1 %3 to i64                        ; 4 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  %i.e = zext nneg i32 %2 to i64                  ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.e ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.e ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.e ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.e ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !70 ; 5 uses
  %i.u = load float, ptr %i.f, align 8, !tbaa !70 ; 13 uses
  %i.v = load float, ptr %i.g, align 4, !tbaa !70 ; 14 uses
  %i.w = load float, ptr %i.j, align 8, !tbaa !70 ; 5 uses
  %i.x = load float, ptr %i.k, align 4, !tbaa !70 ; 3 uses
  %i.y = load float, ptr %i.n, align 8, !tbaa !70 ; 7 uses
  %i.z = load float, ptr %i.o, align 4, !tbaa !70 ; 5 uses
  %i.aa = load float, ptr %i.r, align 4, !tbaa !70 ; 4 uses
  %i.ab = fsub float 2.000000e+00, %i.a
  %i.ac = select i1 %3, float %i.ab, float %i.a   ; 2 uses
  %i.ad = fcmp olt float %i.ac, 1.000000e+00
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = fsub float %i.t, %i.u                   ; 2 uses
  %i.af = fsub float %i.v, %i.u                   ; 2 uses
  %i.ag = fdiv float %i.ae, %i.af                 ; 2 uses
  %i.ah = fmul float %i.af, %i.ag
  %i.ai = fmul float %i.ag, 5.000000e-01
  %i.aj = fsub float %i.z, %i.y
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.aj, float %i.y)
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ak, float %i.w)
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.y, float %i.w)
  %i.an = fcmp olt float %i.t, %i.u
  %i.ao = select i1 %i.an, float %i.am, float %i.al
  %i.ap = fsub float %i.t, %i.v
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.z, float %i.x)
  %i.ar = fcmp olt float %i.t, %i.v
  %i.as = select i1 %i.ar, float %i.ao, float %i.aq
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.at = fcmp ogt float %i.ac, 1.000000e+00
  br i1 %i.at, label %bb.e, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.e:                                             ; preds = %bb.d
  %..i = select i1 %3, float %i.v, float %i.u     ; 2 uses
  %i.au = fsub float %i.t, %..i
  %i.av = fsub float %i.z, %i.y                   ; 2 uses
  %i.aw = fmul float %i.av, 5.000000e-01
  %i.ax = fsub float %i.v, %i.u                   ; 6 uses
  %i.ay = fmul float %i.ax, %i.aw
  %i.az = fmul float %i.ax, %i.y                  ; 3 uses
  %i.ba = fmul float %i.ay, 4.000000e+00
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aa, float %..i) ; 6 uses
  %i.bc = fsub float %i.bb, %i.w
  %i.bd = fsub float %i.w, %i.bb                  ; 2 uses
  %i.be = fneg float %i.bd
  %i.bf = fmul float %i.ba, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bf)
  %i.bh = tail call noundef float @sqrtf(float noundef %i.bg) #22
  %i.bi = fadd float %i.az, %i.bh
  %i.bj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bd, i64 1
  %i.bl = fmul <2 x float> %i.bk, <float 1.000000e+00, float -2.000000e+00>
  %i.bm = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1
  %i.bo = fdiv <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 1
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ax, float %i.u)
  %i.br = extractelement <2 x float> %i.bo, i64 0
  %i.bs = fadd float %i.u, %i.br
  %i.bt = fcmp olt float %i.bb, %i.w
  %i.bu = select i1 %i.bt, float %i.bs, float %i.bq ; 2 uses
  br i1 %3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = fsub float %i.bu, %i.u
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.ax, i64 1
  %i.by = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fdiv <2 x float> %i.bx, %i.bz
  %i.cb = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fadd <2 x float> %i.cc, %i.ca           ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ax, float 9.900000e-01, float %i.u) ; 2 uses
  %i.cf = fsub float %i.ce, %i.u
  %i.cg = fmul float %i.cf, %i.av
  %i.ch = fdiv float %i.cg, %i.ax
  %i.ci = fadd float %i.y, %i.ch
  %i.cj = fdiv float 1.000000e+00, %i.ci
  %i.ck = fdiv float 1.000000e+00, %i.z           ; 2 uses
  %i.cl = fsub float %i.v, %i.ce
  %i.cm = fneg float %i.v
  %i.cn = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.bb, i64 1
  %i.cp = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.u, i64 1
  %i.cr = fsub <2 x float> %i.co, %i.cq
  %i.cs = fmul <2 x float> %i.cr, <float 5.000000e-01, float 1.000000e+00>
  %i.ct = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.aa, i64 1
  %i.cv = fdiv <2 x float> %i.cs, %i.cu           ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0 ; 3 uses
  %i.cx = fmul float %i.cw, -2.000000e+00
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.v, float %i.ck) ; 2 uses
  %i.cz = fneg float %i.cy
  %i.da = extractelement <2 x float> %i.cd, i64 1
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.v, float %i.da)
  %i.dc = fmul float %i.cw, %i.cm
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.v, float %i.db)
  %i.de = extractelement <2 x float> %i.cv, i64 1
  %i.df = fadd float %i.u, %i.de                  ; 3 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.df, float %i.cy)
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.df, float %i.dd)
  %i.di = fcmp olt float %i.df, %i.v
  %i.dj = extractelement <2 x float> %i.cd, i64 0
  %i.dk = select i1 %i.di, float %i.dj, float %i.dh
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.dl = fsub float %i.bb, %i.x
  %i.dm = fdiv float %i.dl, %i.z
  %i.dn = fadd float %i.v, %i.dm
  %i.do = fcmp olt float %i.bb, %i.x
  %i.dp = select i1 %i.do, float %i.bu, float %i.dn
  %i.dq = fsub float %i.dp, %i.v
  %i.dr = fdiv float %i.dq, %i.aa
  %i.ds = fadd float %i.v, %i.dr
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.c
  %.0.sink.i = phi float [ %i.as, %bb.c ], [ %i.ds, %bb.g ], [ %i.dk, %bb.f ]
  store float %.0.sink.i, ptr %i.s, align 4, !tbaa !70
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.h:                                             ; preds = %bb.a
  %i.dt = load float, ptr %4, align 4, !tbaa !70  ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dv = load float, ptr %i.j, align 8, !tbaa !70 ; 5 uses
  %i.dw = load float, ptr %i.k, align 4, !tbaa !70 ; 5 uses
  %i.dx = load <2 x float>, ptr %i.du, align 4, !tbaa !70 ; 6 uses
  %i.dy = load <2 x float>, ptr %i.f, align 8, !tbaa !70 ; 5 uses
  %i.dz = load float, ptr %i.g, align 4, !tbaa !70 ; 16 uses
  %i.ea = load <2 x float>, ptr %i.n, align 8, !tbaa !70 ; 6 uses
  %i.eb = load float, ptr %i.o, align 4, !tbaa !70 ; 6 uses
  %i.ec = load float, ptr %i.r, align 4, !tbaa !70 ; 6 uses
  %i.ed = fsub float 2.000000e+00, %i.a
  %i.ee = select i1 %3, float %i.ed, float %i.a   ; 2 uses
  %i.ef = fcmp olt float %i.ee, 1.000000e+00
  br i1 %i.ef, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eg = extractelement <2 x float> %i.dy, i64 0 ; 3 uses
  %i.eh = fsub float %i.dt, %i.eg                 ; 2 uses
  %i.ei = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ej = fsub <2 x float> %i.dx, %i.ei           ; 2 uses
  %5 = fsub float %i.dz, %i.eg                    ; 3 uses
  %i.ek = fdiv float %i.eh, %5                    ; 2 uses
  %i.el = fmul float %5, %i.ek
  %i.em = fmul float %i.ek, 5.000000e-01
  %i.en = extractelement <2 x float> %i.ea, i64 0 ; 3 uses
  %6 = fsub float %i.eb, %i.en                    ; 2 uses
  %7 = fmul float %i.em, %6
  %i.eo = fadd float %i.en, %7
  %i.ep = fmul float %i.el, %i.eo
  %i.eq = fmul float %i.eh, %i.en
  %i.er = fcmp olt float %i.dt, %i.eg
  %.v640.i = select i1 %i.er, float %i.eq, float %i.ep
  %i.es = fadd float %i.dv, %.v640.i
  %i.et = fcmp olt <2 x float> %i.dx, %i.ei
  %i.eu = fsub float %i.dt, %i.dz
  %i.ev = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ew = fsub <2 x float> %i.dx, %i.ev
  %i.ex = fmul float %i.eu, %i.eb
  %i.ey = fadd float %i.dw, %i.ex
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %i.ez = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = fdiv <2 x float> %i.ej, %i.ez           ; 2 uses
  %i.fb = fmul <2 x float> %i.ez, %i.fa
  %i.fc = fmul <2 x float> %i.fa, splat (float 5.000000e-01)
  %9 = insertelement <2 x float> poison, float %6, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.fc, %10
  %i.fe = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = fadd <2 x float> %i.fe, %i.fd
  %i.fg = fmul <2 x float> %i.fb, %i.ff
  %i.fh = fmul <2 x float> %i.ej, %i.fe
  %i.fi = select <2 x i1> %i.et, <2 x float> %i.fh, <2 x float> %i.fg
  %i.fj = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fadd <2 x float> %i.fk, %i.fi
  %i.fm = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = fmul <2 x float> %i.ew, %i.fm
  %i.fo = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fadd <2 x float> %i.fp, %i.fn
  %i.fr = fcmp olt float %i.dt, %i.dz
  %i.fs = select i1 %i.fr, float %i.es, float %i.ey
  %i.ft = fcmp olt <2 x float> %i.dx, %i.ev
  %i.fu = select <2 x i1> %i.ft, <2 x float> %i.fl, <2 x float> %i.fq
  store float %i.fs, ptr %4, align 4, !tbaa !70
  br label %.sink.split.i52

bb.j:                                             ; preds = %bb.h
  %i.fv = fcmp ogt float %i.ee, 1.000000e+00
  br i1 %i.fv, label %bb.k, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.k:                                             ; preds = %bb.j
  %i.fw = extractelement <2 x float> %i.dy, i64 0 ; 10 uses
  %..i51 = select i1 %3, float %i.dz, float %i.fw ; 3 uses
  %i.fx = extractelement <2 x float> %i.dx, i64 1
  %i.fy = fsub float %i.fx, %..i51
  %i.fz = fmul float %i.fy, %i.ec
  %i.ga = fadd float %..i51, %i.fz                ; 5 uses
  %i.gb = extractelement <2 x float> %i.ea, i64 0 ; 3 uses
  %i.gc = fsub float %i.eb, %i.gb                 ; 2 uses
  %i.gd = fmul float %i.gc, 5.000000e-01
  %i.ge = fsub float %i.dz, %i.fw                 ; 7 uses
  %i.gf = fmul float %i.ge, %i.gd
  %i.gg = fmul float %i.ge, %i.gb                 ; 4 uses
  %i.gh = fmul float %i.gg, %i.gg                 ; 3 uses
  %i.gi = fmul float %i.gf, 4.000000e+00          ; 3 uses
  %i.gj = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gk = insertelement <2 x float> %i.gj, float %i.dt, i64 0
  %i.gl = insertelement <2 x float> poison, float %..i51, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = fsub <2 x float> %i.gk, %i.gm
  %i.go = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gq = fmul <2 x float> %i.gn, %i.gp
  %i.gr = fadd <2 x float> %i.gm, %i.gq           ; 6 uses
  %i.gs = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gu = fsub <2 x float> %i.gt, %i.gr           ; 3 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0
  %i.gw = fmul float %i.gi, %i.gv
  %i.gx = extractelement <2 x float> %i.gu, i64 1
  %i.gy = fmul float %i.gi, %i.gx
  %i.gz = fsub float %i.gh, %i.gw
  %i.ha = fsub float %i.gh, %i.gy
  %i.hb = tail call float @sqrtf(float noundef %i.gz) #22
  %i.hc = tail call float @sqrtf(float noundef %i.ha) #22
  %i.hd = fmul <2 x float> %i.gu, splat (float -2.000000e+00)
  %i.he = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.hc, i64 1
  %i.hi = fadd <2 x float> %i.hf, %i.hh
  %i.hj = fdiv <2 x float> %i.hd, %i.hi
  %i.hk = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.dv, i64 1 ; 2 uses
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hn = fsub <2 x float> %i.hl, %i.hm           ; 2 uses
  %i.ho = extractelement <2 x float> %i.hn, i64 1
  %i.hp = fmul float %i.gi, %i.ho
  %i.hq = fsub float %i.gh, %i.hp
  %i.hr = fmul <2 x float> %i.hn, <float 1.000000e+00, float -2.000000e+00>
  %i.hs = tail call float @sqrtf(float noundef %i.hq) #22
  %i.ht = fadd float %i.gg, %i.hs
  %i.hu = insertelement <2 x float> %i.ea, float %i.ht, i64 1
  %i.hv = fdiv <2 x float> %i.hr, %i.hu           ; 2 uses
  %i.hw = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = fmul <2 x float> %i.hx, %i.hj
  %i.hz = extractelement <2 x float> %i.hv, i64 1
  %i.ia = fmul float %i.ge, %i.hz
  %i.ib = fsub <2 x float> %i.gr, %i.gt
  %i.ic = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fdiv <2 x float> %i.ib, %i.ic
  %i.ie = fcmp olt <2 x float> %i.gr, %i.gt
  %i.if = select <2 x i1> %i.ie, <2 x float> %i.id, <2 x float> %i.hy
  %i.ig = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ih = fadd <2 x float> %i.ig, %i.if           ; 2 uses
  %i.ii = fcmp olt float %i.ga, %i.dv
  %i.ij = extractelement <2 x float> %i.hv, i64 0
  %.v639.i = select i1 %i.ii, float %i.ij, float %i.ia
  %i.ik = fadd float %i.fw, %.v639.i              ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.il = fsub float %i.ik, %i.fw
  %i.im = fdiv float %i.il, %i.ec
  %i.in = fadd float %i.fw, %i.im
  %i.io = fdiv float %i.ge, %i.ec
  %i.ip = fadd float %i.fw, %i.io
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ge, float 9.900000e-01, float %i.fw) ; 2 uses
  %i.ir = fsub float %i.iq, %i.fw
  %i.is = fmul float %i.ir, %i.gc
  %i.it = fdiv float %i.is, %i.ge
  %i.iu = fadd float %i.gb, %i.it
  %i.iv = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.iw = insertelement <2 x float> %i.iv, float %i.iu, i64 1
  %i.ix = fdiv <2 x float> splat (float 1.000000e+00), %i.iw ; 3 uses
  %i.iy = extractelement <2 x float> %i.ix, i64 0
  %shift = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ix, %shift
  %i.iz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ja = fmul float %i.iz, 5.000000e-01
  %i.jb = fsub float %i.dz, %i.iq
  %i.jc = fdiv float %i.ja, %i.jb                 ; 4 uses
  %i.jd = fmul float %i.jc, -2.000000e+00
  %i.je = fneg float %i.dz
  %i.jf = fmul float %i.jc, %i.je
  %i.jg = fsub float %i.ga, %i.fw
  %i.jh = fdiv float %i.jg, %i.ec
  %i.ji = fadd float %i.fw, %i.jh                 ; 3 uses
  %i.jj = fmul float %i.ji, %i.jc
  %i.jk = fsub <2 x float> %i.ih, %i.ig
  %i.jl = fdiv <2 x float> %i.jk, %i.gp
  %i.jm = fadd <2 x float> %i.ig, %i.jl
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.dz, float %i.iy) ; 3 uses
  %i.jo = fneg float %i.jn
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jo, float %i.dz, float %i.ip)
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.dz, float %i.jp) ; 2 uses
  %i.jr = fsub <2 x float> %i.gr, %i.ig
  %i.js = fdiv <2 x float> %i.jr, %i.gp
  %i.jt = fadd <2 x float> %i.ig, %i.js           ; 3 uses
  %i.ju = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fmul <2 x float> %i.jt, %i.jv
  %i.jx = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = fadd <2 x float> %i.jw, %i.jy
  %i.ka = fadd float %i.jj, %i.jn
  %i.kb = fmul <2 x float> %i.jt, %i.jz
  %i.kc = fmul float %i.ji, %i.ka
  %i.kd = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fadd <2 x float> %i.ke, %i.kb
  %i.kg = fadd float %i.jq, %i.kc
  %i.kh = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = fcmp olt <2 x float> %i.jt, %i.ki
  %i.kk = select <2 x i1> %i.kj, <2 x float> %i.jm, <2 x float> %i.kf
  %i.kl = fcmp olt float %i.ji, %i.dz
  %i.km = select i1 %i.kl, float %i.in, float %i.kg
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.kn = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kp = fsub <2 x float> %i.gr, %i.ko
  %i.kq = fsub float %i.ga, %i.dw
  %i.kr = fdiv float %i.kq, %i.eb
  %i.ks = fadd float %i.dz, %i.kr
  %i.kt = fcmp olt <2 x float> %i.gr, %i.ko
  %i.ku = fcmp olt float %i.ga, %i.dw
  %i.kv = select i1 %i.ku, float %i.ik, float %i.ks
  %i.kw = fsub float %i.kv, %i.dz
  %i.kx = fdiv float %i.kw, %i.ec
  %i.ky = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fdiv <2 x float> %i.kp, %i.kz
  %i.lb = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ld = fadd <2 x float> %i.lc, %i.la
  %i.le = select <2 x i1> %i.kt, <2 x float> %i.ih, <2 x float> %i.ld
  %i.lf = fsub <2 x float> %i.le, %i.lc
  %i.lg = fdiv <2 x float> %i.lf, %i.gp
  %i.lh = fadd <2 x float> %i.lc, %i.lg
  %i.li = fadd float %i.dz, %i.kx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0526.0.i = phi <2 x float> [ %i.lh, %bb.m ], [ %i.kk, %bb.l ] ; 2 uses
  %.sroa.23.0.i = phi float [ %i.li, %bb.m ], [ %i.km, %bb.l ]
  %.sroa.0526.0.vec.extract541.i = extractelement <2 x float> %.sroa.0526.0.i, i64 0
  store float %.sroa.0526.0.vec.extract541.i, ptr %4, align 4, !tbaa !70
  %i.lj = shufflevector <2 x float> %.sroa.0526.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lk = insertelement <2 x float> %i.lj, float %.sroa.23.0.i, i64 1
  br label %.sink.split.i52

.sink.split.i52:                                  ; preds = %bb.n, %bb.i
  %i.ll = phi <2 x float> [ %i.lk, %bb.n ], [ %i.fu, %bb.i ]
  store <2 x float> %i.ll, ptr %i.du, align 4, !tbaa !70
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit: ; preds = %.sink.split.i52, %bb.j, %.sink.split.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU9scontrastERKNS_11GradingToneERKNS_20GradingTonePreRenderEPf(double %.240.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = fptrunc double %.240.val to float        ; 5 uses
  %i.b = fcmp une float %i.a, 1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.f
end_hunk_0
