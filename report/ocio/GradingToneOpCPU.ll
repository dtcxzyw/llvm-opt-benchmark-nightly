Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf:bb.a
  %i.bp = fsub float %i.w, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ab, float %i.z)
  %i.br = fcmp olt float %i.w, %i.bo
  %i.bs = select i1 %i.br, float %i.bn, float %i.bq
  store float %i.bs, ptr %i.v, align 4, !tbaa !70
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bt = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.bt, ptr %5, align 8, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !70
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bv, ptr %i.bw, align 8, !tbaa !70
  %i.bx = load float, ptr %i.i, align 4, !tbaa !70
  %i.by = load float, ptr %i.j, align 4, !tbaa !70
  %i.bz = load float, ptr %i.k, align 4, !tbaa !70
  %i.ca = load float, ptr %i.n, align 4, !tbaa !70
  %i.cb = load float, ptr %i.o, align 4, !tbaa !70
  %i.cc = load float, ptr %i.p, align 4, !tbaa !70
  %i.cd = load float, ptr %i.s, align 8, !tbaa !70
  %i.ce = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.bx, float noundef %i.by, float noundef %i.bz, float noundef %i.ca, float noundef %i.cb, float noundef %i.cc, float noundef %i.cd, float noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !70 ; 5 uses
  %i.ch = load float, ptr %i.p, align 4, !tbaa !70 ; 4 uses
  %i.ci = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.n, align 4, !tbaa !70 ; 6 uses
  %i.cl = fsub <2 x float> %i.cj, %i.ci           ; 4 uses
  %i.cm = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.cn = fmul float %i.cm, -2.000000e+00
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ch, float 2.000000e+00, float %i.cn)
  %i.cp = extractelement <2 x float> %i.cl, i64 1
  %i.cq = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = insertelement <2 x float> %i.ck, float %i.ch, i64 1
  %i.cs = fsub <2 x float> %i.cq, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fsub <2 x float> %i.ck, %i.cu           ; 2 uses
  %i.cw = fneg <2 x float> %i.cv
  %i.cx = fcmp olt float %i.cg, %i.cm
  %i.cy = extractelement <2 x float> %i.ck, i64 0
  %i.cz = fcmp olt float %i.cg, %i.cy
  %i.da = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 4 uses
  %i.db = load float, ptr %i.t, align 4, !tbaa !70
  %i.dc = extractelement <2 x float> %i.da, i64 0
  %i.dd = fneg float %i.dc
  %i.de = fneg float %i.db
  %foldExtExtBinop = fmul <2 x float> %i.cl, %i.da ; 2 uses
  %i.df = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.de, float %i.cp, float %i.co) ; 2 uses
  %i.dh = insertelement <2 x float> %i.da, float %i.dd, i64 0
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.cl, <2 x float> %i.cs)
  %i.dj = fmul <2 x float> %i.di, splat (float 4.000000e+00)
  %i.dk = fmul <2 x float> %i.dj, %i.cw
  %i.dl = insertelement <2 x float> %foldExtExtBinop, float %i.dg, i64 1 ; 2 uses
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dl, <2 x float> %i.dk) ; 2 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0
  %i.do = tail call noundef float @sqrtf(float noundef %i.dn) #22
  %i.dp = fadd float %i.df, %i.do
  %i.dq = extractelement <2 x float> %i.dm, i64 1
  %i.dr = tail call noundef float @sqrtf(float noundef %i.dq) #22
  %i.ds = fadd float %i.dg, %i.dr
  %i.dt = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.cg, i64 2
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.dv = shufflevector <2 x float> %i.cv, <2 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.dw = insertelement <4 x float> %i.dv, float %i.ch, i64 3 ; 2 uses
  %i.dx = fmul <4 x float> %i.du, %i.dw
  %i.dy = fsub <4 x float> %i.du, %i.dw
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ea = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.eb = insertelement <4 x float> %i.ea, float %i.dp, i64 0
  %i.ec = insertelement <4 x float> %i.eb, float %i.ds, i64 1
  %i.ed = fdiv <4 x float> %i.dz, %i.ec           ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ef = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.cl, <2 x float> %i.ef) ; 2 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0
  %i.ei = extractelement <2 x float> %i.eg, i64 1
  %i.ej = select i1 %i.cx, float %i.eh, float %i.ei
  %i.ek = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.el = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.em = fadd <2 x float> %i.ek, %i.el           ; 2 uses
  %i.en = extractelement <2 x float> %i.em, i64 0
  %i.eo = select i1 %i.cz, float %i.en, float %i.ej
  %i.ep = fcmp olt float %i.cg, %i.ch
  %i.eq = extractelement <2 x float> %i.em, i64 1
  %i.er = select i1 %i.ep, float %i.eo, float %i.eq
  store float %i.er, ptr %i.cf, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.es = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.es, ptr %6, align 8, !tbaa !70
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.eu, ptr %i.ev, align 8, !tbaa !70
  %i.ew = load float, ptr %i.i, align 4, !tbaa !70
  %i.ex = load float, ptr %i.j, align 4, !tbaa !70
  %i.ey = load float, ptr %i.k, align 4, !tbaa !70
  %i.ez = load float, ptr %i.n, align 4, !tbaa !70
  %i.fa = load float, ptr %i.o, align 4, !tbaa !70
  %i.fb = load float, ptr %i.p, align 4, !tbaa !70
  %i.fc = load float, ptr %i.s, align 8, !tbaa !70
  %i.fd = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.ew, float noundef %i.ex, float noundef %i.ey, float noundef %i.ez, float noundef %i.fa, float noundef %i.fb, float noundef %i.fc, float noundef %i.fd, ptr noundef nonnull align 4 dereferenceable(12) %6)
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
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.e ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.e ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !70 ; 4 uses
  %i.r = load <2 x float>, ptr %i.f, align 8, !tbaa !70 ; 6 uses
  %i.s = extractelement <2 x float> %i.r, i64 1   ; 13 uses
  %i.t = extractelement <2 x float> %i.r, i64 0   ; 8 uses
  %i.u = load <2 x float>, ptr %i.i, align 8, !tbaa !70 ; 4 uses
  %i.v = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 7 uses
  %i.w = load float, ptr %i.o, align 4, !tbaa !70 ; 4 uses
  %i.x = fsub float 2.000000e+00, %i.a
  %i.y = select i1 %3, float %i.x, float %i.a     ; 2 uses
  %i.z = fcmp olt float %i.y, 1.000000e+00
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fsub <2 x float> %i.ab, %i.r            ; 2 uses
  %i.ad = fsub float %i.s, %i.t                   ; 2 uses
  %i.ae = extractelement <2 x float> %i.ac, i64 0
  %i.af = fdiv float %i.ae, %i.ad                 ; 2 uses
  %i.ag = fmul float %i.ad, %i.af
  %i.ah = fmul float %i.af, 5.000000e-01
  %i.ai = extractelement <2 x float> %i.v, i64 0
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.v
  %i.aj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.aj, float %i.ai)
  %i.al = extractelement <2 x float> %i.u, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ak, float %i.al)
  %i.an = fcmp olt float %i.q, %i.t
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.v, <2 x float> %i.u) ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  %i.aq = select i1 %i.an, float %i.ap, float %i.am
  %i.ar = fcmp olt float %i.q, %i.s
  %i.as = extractelement <2 x float> %i.ao, i64 1
  %i.at = select i1 %i.ar, float %i.aq, float %i.as
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.au = fcmp ogt float %i.y, 1.000000e+00
  br i1 %i.au, label %bb.e, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.e:                                             ; preds = %bb.d
  %..i = select i1 %3, float %i.s, float %i.t     ; 2 uses
  %i.av = fsub float %i.q, %..i
  %i.aw = extractelement <2 x float> %i.v, i64 0  ; 3 uses
  %i.ax = extractelement <2 x float> %i.v, i64 1  ; 3 uses
  %i.ay = fsub float %i.ax, %i.aw                 ; 2 uses
  %i.az = fmul float %i.ay, 5.000000e-01
  %i.ba = fsub float %i.s, %i.t                   ; 6 uses
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = fmul float %i.ba, %i.aw                 ; 3 uses
  %5 = extractelement <2 x float> %i.u, i64 0     ; 3 uses
  %6 = fmul float %i.bb, 4.000000e+00
  %7 = tail call float @llvm.fmuladd.f32(float %i.av, float %i.w, float %..i) ; 6 uses
  %i.bd = fsub float %5, %7                       ; 2 uses
  %i.be = fneg float %i.bd
  %i.bf = fmul float %6, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bf)
  %i.bh = tail call noundef float @sqrtf(float noundef %i.bg) #22
  %i.bi = fadd float %i.bc, %i.bh
  %i.bj = fsub float %7, %5
  %i.bk = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = fmul <2 x float> %i.bl, <float -2.000000e+00, float 1.000000e+00>
  %i.bn = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %i.bi, i64 0
  %i.bp = fdiv <2 x float> %i.bm, %i.bo           ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.ba, float %i.t)
  %shift11 = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fadd <2 x float> %i.r, %shift11
  %i.bs = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.bt = fcmp olt float %7, %5
  %i.bu = select i1 %i.bt, float %i.bs, float %i.br ; 2 uses
  br i1 %3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = fsub float %i.bu, %i.t
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.ba, i64 1
  %i.by = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fdiv <2 x float> %i.bx, %i.bz
  %i.cb = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = fadd <2 x float> %i.cb, %i.ca           ; 2 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.ba, float 9.900000e-01, float %i.t) ; 2 uses
  %i.ce = fsub float %i.cd, %i.t
  %i.cf = fmul float %i.ce, %i.ay
  %i.cg = fdiv float %i.cf, %i.ba
  %i.ch = fadd float %i.aw, %i.cg
  %i.ci = fdiv float 1.000000e+00, %i.ch
  %i.cj = fdiv float 1.000000e+00, %i.ax          ; 2 uses
  %i.ck = fsub float %i.s, %i.cd
  %i.cl = fneg float %i.s
  %i.cm = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %7, i64 1
  %i.co = insertelement <2 x float> %i.cb, float %i.ci, i64 0
  %i.cp = fsub <2 x float> %i.cn, %i.co
  %i.cq = fmul <2 x float> %i.cp, <float 5.000000e-01, float 1.000000e+00>
  %i.cr = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.w, i64 1
  %i.ct = fdiv <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 0 ; 3 uses
  %i.cv = fmul float %i.cu, -2.000000e+00
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.s, float %i.cj) ; 2 uses
  %i.cx = fneg float %i.cw
  %i.cy = extractelement <2 x float> %i.cc, i64 1
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.s, float %i.cy)
  %i.da = fmul float %i.cu, %i.cl
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.s, float %i.cz)
  %shift14 = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fadd <2 x float> %i.r, %shift14
  %i.dc = extractelement <2 x float> %foldExtExtBinop15, i64 0 ; 3 uses
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.dc, float %i.cw)
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dc, float %i.db)
  %i.df = fcmp olt float %i.dc, %i.s
  %i.dg = extractelement <2 x float> %i.cc, i64 0
  %i.dh = select i1 %i.df, float %i.dg, float %i.de
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.di = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.dj = fsub float %7, %i.di
  %i.dk = fdiv float %i.dj, %i.ax
  %i.dl = fadd float %i.s, %i.dk
  %i.dm = fcmp olt float %7, %i.di
  %i.dn = select i1 %i.dm, float %i.bu, float %i.dl
  %i.do = fsub float %i.dn, %i.s
  %i.dp = fdiv float %i.do, %i.w
  %i.dq = fadd float %i.s, %i.dp
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.c
  %.0.sink.i = phi float [ %i.at, %bb.c ], [ %i.dq, %bb.g ], [ %i.dh, %bb.f ]
  store float %.0.sink.i, ptr %i.p, align 4, !tbaa !70
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.h:                                             ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.du = load float, ptr %4, align 4, !tbaa !70  ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dw = load float, ptr %i.i, align 8, !tbaa !70 ; 5 uses
  %i.dx = load float, ptr %i.ds, align 4, !tbaa !70 ; 5 uses
  %i.dy = load <2 x float>, ptr %i.dv, align 4, !tbaa !70 ; 6 uses
  %i.dz = load <2 x float>, ptr %i.f, align 8, !tbaa !70 ; 5 uses
  %i.ea = load float, ptr %i.dt, align 4, !tbaa !70 ; 16 uses
  %i.eb = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 6 uses
  %i.ec = load float, ptr %i.dr, align 4, !tbaa !70 ; 6 uses
  %i.ed = load float, ptr %i.o, align 4, !tbaa !70 ; 6 uses
  %i.ee = fsub float 2.000000e+00, %i.a
  %i.ef = select i1 %3, float %i.ee, float %i.a   ; 2 uses
  %i.eg = fcmp olt float %i.ef, 1.000000e+00
  br i1 %i.eg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eh = extractelement <2 x float> %i.dz, i64 0 ; 3 uses
  %i.ei = fsub float %i.du, %i.eh                 ; 2 uses
  %i.ej = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ek = fsub <2 x float> %i.dy, %i.ej           ; 2 uses
  %i.el = fsub float %i.ea, %i.eh                 ; 3 uses
  %i.em = fdiv float %i.ei, %i.el                 ; 2 uses
  %i.en = fmul float %i.el, %i.em
  %i.eo = fmul float %i.em, 5.000000e-01
  %i.ep = extractelement <2 x float> %i.eb, i64 0 ; 3 uses
  %i.eq = fsub float %i.ec, %i.ep                 ; 2 uses
  %i.er = fmul float %i.eo, %i.eq
  %i.es = fadd float %i.ep, %i.er
  %i.et = fmul float %i.en, %i.es
  %i.eu = fmul float %i.ei, %i.ep
  %i.ev = fcmp olt float %i.du, %i.eh
  %.v640.i = select i1 %i.ev, float %i.eu, float %i.et
  %i.ew = fadd float %i.dw, %.v640.i
  %i.ex = fcmp olt <2 x float> %i.dy, %i.ej
  %i.ey = fsub float %i.du, %i.ea
  %i.ez = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fa = fsub <2 x float> %i.dy, %i.ez
  %i.fb = fmul float %i.ey, %i.ec
  %i.fc = fadd float %i.dx, %i.fb
  %i.fd = insertelement <2 x float> poison, float %i.el, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = fdiv <2 x float> %i.ek, %i.fe           ; 2 uses
  %i.fg = fmul <2 x float> %i.fe, %i.ff
  %i.fh = fmul <2 x float> %i.ff, splat (float 5.000000e-01)
  %i.fi = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.fh, %i.fj
  %i.fl = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fm = fadd <2 x float> %i.fl, %i.fk
  %i.fn = fmul <2 x float> %i.fg, %i.fm
  %i.fo = fmul <2 x float> %i.ek, %i.fl
  %i.fp = select <2 x i1> %i.ex, <2 x float> %i.fo, <2 x float> %i.fn
  %i.fq = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fadd <2 x float> %i.fr, %i.fp
  %i.ft = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = fmul <2 x float> %i.fa, %i.ft
  %i.fv = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fadd <2 x float> %i.fw, %i.fu
  %i.fy = fcmp olt float %i.du, %i.ea
  %i.fz = select i1 %i.fy, float %i.ew, float %i.fc
  %i.ga = fcmp olt <2 x float> %i.dy, %i.ez
  %i.gb = select <2 x i1> %i.ga, <2 x float> %i.fs, <2 x float> %i.fx
  store float %i.fz, ptr %4, align 4, !tbaa !70
  br label %.sink.split.i52

bb.j:                                             ; preds = %bb.h
  %i.gc = fcmp ogt float %i.ef, 1.000000e+00
  br i1 %i.gc, label %bb.k, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.k:                                             ; preds = %bb.j
  %i.gd = extractelement <2 x float> %i.dz, i64 0 ; 10 uses
  %..i51 = select i1 %3, float %i.ea, float %i.gd ; 3 uses
  %i.ge = extractelement <2 x float> %i.dy, i64 1
  %i.gf = fsub float %i.ge, %..i51
  %i.gg = fmul float %i.gf, %i.ed
  %i.gh = fadd float %..i51, %i.gg                ; 5 uses
  %i.gi = extractelement <2 x float> %i.eb, i64 0 ; 3 uses
  %i.gj = fsub float %i.ec, %i.gi                 ; 2 uses
  %i.gk = fmul float %i.gj, 5.000000e-01
  %i.gl = fsub float %i.ea, %i.gd                 ; 7 uses
  %i.gm = fmul float %i.gl, %i.gk
  %i.gn = fmul float %i.gl, %i.gi                 ; 4 uses
  %i.go = fmul float %i.gn, %i.gn                 ; 3 uses
  %i.gp = fmul float %i.gm, 4.000000e+00          ; 3 uses
  %i.gq = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gr = insertelement <2 x float> %i.gq, float %i.du, i64 0
  %i.gs = insertelement <2 x float> poison, float %..i51, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gu = fsub <2 x float> %i.gr, %i.gt
  %i.gv = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gx = fmul <2 x float> %i.gu, %i.gw
  %i.gy = fadd <2 x float> %i.gt, %i.gx           ; 6 uses
  %i.gz = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hb = fsub <2 x float> %i.ha, %i.gy           ; 3 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 0
  %i.hd = fmul float %i.gp, %i.hc
  %i.he = extractelement <2 x float> %i.hb, i64 1
  %i.hf = fmul float %i.gp, %i.he
  %i.hg = fsub float %i.go, %i.hd
  %i.hh = fsub float %i.go, %i.hf
  %i.hi = tail call float @sqrtf(float noundef %i.hg) #22
  %i.hj = tail call float @sqrtf(float noundef %i.hh) #22
  %i.hk = fmul <2 x float> %i.hb, splat (float -2.000000e+00)
  %i.hl = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.hj, i64 1
  %i.hp = fadd <2 x float> %i.hm, %i.ho
  %i.hq = fdiv <2 x float> %i.hk, %i.hp
  %i.hr = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.hs = insertelement <2 x float> %i.hr, float %i.dw, i64 1 ; 2 uses
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = fsub <2 x float> %i.hs, %i.ht           ; 2 uses
  %i.hv = extractelement <2 x float> %i.hu, i64 1
  %i.hw = fmul float %i.gp, %i.hv
  %i.hx = fsub float %i.go, %i.hw
  %i.hy = fmul <2 x float> %i.hu, <float 1.000000e+00, float -2.000000e+00>
  %i.hz = tail call float @sqrtf(float noundef %i.hx) #22
  %i.ia = fadd float %i.gn, %i.hz
  %i.ib = insertelement <2 x float> %i.eb, float %i.ia, i64 1
  %i.ic = fdiv <2 x float> %i.hy, %i.ib           ; 2 uses
  %i.id = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x float> %i.ie, %i.hq
  %i.ig = extractelement <2 x float> %i.ic, i64 1
  %i.ih = fmul float %i.gl, %i.ig
  %i.ii = fsub <2 x float> %i.gy, %i.ha
  %i.ij = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fdiv <2 x float> %i.ii, %i.ij
  %i.il = fcmp olt <2 x float> %i.gy, %i.ha
  %i.im = select <2 x i1> %i.il, <2 x float> %i.ik, <2 x float> %i.if
  %i.in = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.io = fadd <2 x float> %i.in, %i.im           ; 2 uses
  %i.ip = fcmp olt float %i.gh, %i.dw
  %i.iq = extractelement <2 x float> %i.ic, i64 0
  %.v639.i = select i1 %i.ip, float %i.iq, float %i.ih
  %i.ir = fadd float %i.gd, %.v639.i              ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.is = fsub float %i.ir, %i.gd
  %i.it = fdiv float %i.is, %i.ed
  %i.iu = fadd float %i.gd, %i.it
  %i.iv = fdiv float %i.gl, %i.ed
  %i.iw = fadd float %i.gd, %i.iv
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.gl, float 9.900000e-01, float %i.gd) ; 2 uses
  %i.iy = fsub float %i.ix, %i.gd
  %i.iz = fmul float %i.iy, %i.gj
  %i.ja = fdiv float %i.iz, %i.gl
  %i.jb = fadd float %i.gi, %i.ja
  %i.jc = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.jd = insertelement <2 x float> %i.jc, float %i.jb, i64 1
  %i.je = fdiv <2 x float> splat (float 1.000000e+00), %i.jd ; 3 uses
  %i.jf = extractelement <2 x float> %i.je, i64 0
  %shift17 = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop18 = fsub <2 x float> %i.je, %shift17
  %i.jg = extractelement <2 x float> %foldExtExtBinop18, i64 0
  %i.jh = fmul float %i.jg, 5.000000e-01
  %i.ji = fsub float %i.ea, %i.ix
  %i.jj = fdiv float %i.jh, %i.ji                 ; 4 uses
  %i.jk = fmul float %i.jj, -2.000000e+00
  %i.jl = fneg float %i.ea
  %i.jm = fmul float %i.jj, %i.jl
  %i.jn = fsub float %i.gh, %i.gd
  %i.jo = fdiv float %i.jn, %i.ed
  %i.jp = fadd float %i.gd, %i.jo                 ; 3 uses
  %i.jq = fmul float %i.jp, %i.jj
  %i.jr = fsub <2 x float> %i.io, %i.in
  %i.js = fdiv <2 x float> %i.jr, %i.gw
  %i.jt = fadd <2 x float> %i.in, %i.js
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.ea, float %i.jf) ; 3 uses
  %i.jv = fneg float %i.ju
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.ea, float %i.iw)
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.ea, float %i.jw) ; 2 uses
  %i.jy = fsub <2 x float> %i.gy, %i.in
  %i.jz = fdiv <2 x float> %i.jy, %i.gw
  %i.ka = fadd <2 x float> %i.in, %i.jz           ; 3 uses
  %i.kb = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = fmul <2 x float> %i.ka, %i.kc
  %i.ke = insertelement <2 x float> poison, float %i.ju, i64 0
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = zext nneg i32 %2 to i64                  ; 4 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.g ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.g ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !70 ; 13 uses
  %i.ad = load float, ptr %i.t, align 4, !tbaa !70
  %i.ae = fcmp ult float %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load float, ptr %i.h, align 8, !tbaa !70
  %i.ag = load float, ptr %i.o, align 8, !tbaa !70
  %i.ah = fsub float %i.ac, %i.ag
  %i.ai = load float, ptr %i.v, align 8, !tbaa !70
  %i.aj = fdiv float %i.ah, %i.ai
  %i.ak = fadd float %i.af, %i.aj
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.al = load float, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.am = fcmp ult float %i.ac, %i.al
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = fsub float %i.al, %i.ac                 ; 2 uses
  %i.ao = load float, ptr %i.z, align 8, !tbaa !70 ; 2 uses
  %i.ap = load float, ptr %i.m, align 4, !tbaa !70
  %i.aq = load float, ptr %i.l, align 8, !tbaa !70 ; 2 uses
  %i.ar = fsub float %i.ap, %i.aq                 ; 3 uses
  %i.as = fmul float %i.ao, %i.ar                 ; 3 uses
  %i.at = load float, ptr %i.aa, align 4, !tbaa !70
  %i.au = fsub float %i.at, %i.ao
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fmul float %i.ar, %i.av
  %i.ax = fmul float %i.aw, 4.000000e+00
  %i.ay = fneg float %i.an
  %i.az = fmul float %i.ax, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.az)
  %i.bb = tail call noundef float @sqrtf(float noundef %i.ba) #22
  %i.bc = fmul float %i.an, 2.000000e+00
  %i.bd = fneg float %i.bb
  %i.be = fsub float %i.bd, %i.as
  %i.bf = fdiv float %i.bc, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ar, float %i.aq)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.bh = load float, ptr %i.r, align 4, !tbaa !70 ; 2 uses
  %i.bi = fcmp ult float %i.ac, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = fsub float %i.bh, %i.ac                 ; 2 uses
  %i.bk = load float, ptr %i.y, align 4, !tbaa !70 ; 2 uses
  %i.bl = load float, ptr %i.l, align 8, !tbaa !70
  %i.bm = load float, ptr %i.k, align 4, !tbaa !70 ; 2 uses
  %i.bn = fsub float %i.bl, %i.bm                 ; 3 uses
  %i.bo = fmul float %i.bk, %i.bn                 ; 3 uses
  %i.bp = load float, ptr %i.z, align 8, !tbaa !70
  %i.bq = fsub float %i.bp, %i.bk
  %i.br = fmul float %i.bq, 5.000000e-01
  %i.bs = fmul float %i.bn, %i.br
  %i.bt = fmul float %i.bs, 4.000000e+00
  %i.bu = fneg float %i.bj
  %i.bv = fmul float %i.bt, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bv)
  %i.bx = tail call noundef float @sqrtf(float noundef %i.bw) #22
  %i.by = fmul float %i.bj, 2.000000e+00
  %i.bz = fneg float %i.bx
  %i.ca = fsub float %i.bz, %i.bo
  %i.cb = fdiv float %i.by, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bn, float %i.bm)
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.cd = load float, ptr %i.q, align 8, !tbaa !70 ; 2 uses
  %i.ce = fcmp ult float %i.ac, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = fsub float %i.cd, %i.ac                 ; 2 uses
  %i.cg = load float, ptr %i.x, align 8, !tbaa !70 ; 2 uses
  %i.ch = load float, ptr %i.k, align 4, !tbaa !70
  %i.ci = load float, ptr %i.j, align 8, !tbaa !70 ; 2 uses
  %i.cj = fsub float %i.ch, %i.ci                 ; 3 uses
  %i.ck = fmul float %i.cg, %i.cj                 ; 3 uses
  %i.cl = load float, ptr %i.y, align 4, !tbaa !70
  %i.cm = fsub float %i.cl, %i.cg
  %i.cn = fmul float %i.cm, 5.000000e-01
  %i.co = fmul float %i.cj, %i.cn
  %i.cp = fmul float %i.co, 4.000000e+00
  %i.cq = fneg float %i.cf
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cr)
  %i.ct = tail call noundef float @sqrtf(float noundef %i.cs) #22
  %i.cu = fmul float %i.cf, 2.000000e+00
  %i.cv = fneg float %i.ct
  %i.cw = fsub float %i.cv, %i.ck
  %i.cx = fdiv float %i.cu, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cj, float %i.ci)
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.cz = load float, ptr %i.p, align 4, !tbaa !70 ; 2 uses
  %i.da = fcmp ult float %i.ac, %i.cz
  br i1 %i.da, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = fsub float %i.cz, %i.ac                 ; 2 uses
  %i.dc = load float, ptr %i.w, align 4, !tbaa !70 ; 2 uses
  %i.dd = load float, ptr %i.j, align 8, !tbaa !70
  %i.de = load float, ptr %i.i, align 4, !tbaa !70 ; 2 uses
  %i.df = fsub float %i.dd, %i.de                 ; 3 uses
  %i.dg = fmul float %i.dc, %i.df                 ; 3 uses
  %i.dh = load float, ptr %i.x, align 8, !tbaa !70
  %i.di = fsub float %i.dh, %i.dc
  %i.dj = fmul float %i.di, 5.000000e-01
  %i.dk = fmul float %i.df, %i.dj
  %i.dl = fmul float %i.dk, 4.000000e+00
  %i.dm = fneg float %i.db
  %i.dn = fmul float %i.dl, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dn)
  %i.dp = tail call noundef float @sqrtf(float noundef %i.do) #22
  %i.dq = fmul float %i.db, 2.000000e+00
  %i.dr = fneg float %i.dp
  %i.ds = fsub float %i.dr, %i.dg
  %i.dt = fdiv float %i.dq, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.df, float %i.de)
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.dv = load float, ptr %i.o, align 8, !tbaa !70 ; 3 uses
  %i.dw = fcmp ult float %i.ac, %i.dv
  br i1 %i.dw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = fsub float %i.dv, %i.ac                 ; 2 uses
  %i.dy = load float, ptr %i.v, align 8, !tbaa !70 ; 2 uses
  %i.dz = load float, ptr %i.i, align 4, !tbaa !70
  %i.ea = load float, ptr %i.h, align 8, !tbaa !70 ; 2 uses
  %i.eb = fsub float %i.dz, %i.ea                 ; 3 uses
  %i.ec = fmul float %i.dy, %i.eb                 ; 3 uses
  %i.ed = load float, ptr %i.w, align 4, !tbaa !70
  %i.ee = fsub float %i.ed, %i.dy
  %i.ef = fmul float %i.ee, 5.000000e-01
  %i.eg = fmul float %i.eb, %i.ef
  %i.eh = fmul float %i.eg, 4.000000e+00
  %i.ei = fneg float %i.dx
  %i.ej = fmul float %i.eh, %i.ei
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.ej)
  %i.el = tail call noundef float @sqrtf(float noundef %i.ek) #22
  %i.em = fmul float %i.dx, 2.000000e+00
  %i.en = fneg float %i.el
  %i.eo = fsub float %i.en, %i.ec
  %i.ep = fdiv float %i.em, %i.eo
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.eb, float %i.ea)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.er = load float, ptr %i.h, align 8, !tbaa !70
  %i.es = fsub float %i.ac, %i.dv
  %i.et = load float, ptr %i.v, align 8, !tbaa !70
  %i.eu = fdiv float %i.es, %i.et
  %i.ev = fadd float %i.er, %i.eu
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.j, %bb.n, %bb.o, %bb.l, %bb.h, %bb.d
  %.0 = phi float [ %i.ak, %bb.d ], [ %i.bg, %bb.f ], [ %i.cc, %bb.h ], [ %i.cy, %bb.j ], [ %i.du, %bb.l ], [ %i.eq, %bb.n ], [ %i.ev, %bb.o ]
  store float %.0, ptr %i.ab, align 4, !tbaa !70
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !70 ; 13 uses
  %i.ey = load float, ptr %i.t, align 4, !tbaa !70 ; 3 uses
  %4 = load float, ptr %i.aa, align 4, !tbaa !70  ; 3 uses
  %i.ez = load float, ptr %i.s, align 8, !tbaa !70 ; 3 uses
  %i.fa = load float, ptr %i.z, align 8, !tbaa !70 ; 3 uses
  %5 = fsub float %4, %i.fa
  %6 = fmul float %5, 5.000000e-01
  %i.fb = fcmp olt float %i.ex, %i.ez
  %i.fc = fcmp olt float %i.ex, %i.ey
  %i.fd = load <2 x float>, ptr %3, align 4, !tbaa !70 ; 13 uses
  %i.fe = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = fsub <2 x float> %i.fd, %i.ff
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fdiv <2 x float> %i.fg, %8
  %i.fh = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fj = fsub <2 x float> %i.fi, %i.fd           ; 3 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 0
  %i.fl = extractelement <2 x float> %i.fj, i64 1
  %i.fm = fmul <2 x float> %i.fj, splat (float 2.000000e+00)
  %i.fn = fsub float %i.ex, %i.ey
  %i.fo = fsub float %i.ez, %i.ex                 ; 2 uses
  %10 = insertelement <4 x float> poison, float %i.fn, i64 0
  %11 = insertelement <4 x float> %10, float %i.fo, i64 1
  %i.fp = insertelement <4 x float> poison, float %4, i64 0
  %12 = load float, ptr %i.m, align 4, !tbaa !70  ; 3 uses
  %13 = load float, ptr %i.l, align 8, !tbaa !70  ; 4 uses
  %i.fq = insertelement <2 x float> poison, float %12, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fadd <2 x float> %i.fr, %9
  %15 = fsub float %12, %13                       ; 4 uses
  %16 = fmul float %i.fa, %15                     ; 3 uses
  %17 = fmul float %6, %15
  %18 = fmul float %16, %16                       ; 3 uses
  %19 = fmul float %17, 4.000000e+00              ; 3 uses
  %i.fs = fmul float %i.fk, %19
  %i.ft = fmul float %i.fl, %19
  %20 = fsub float %18, %i.fs
  %21 = fsub float %18, %i.ft
  %22 = tail call float @sqrtf(float noundef %20) #22
  %23 = tail call float @sqrtf(float noundef %21) #22
  %24 = fneg float %16                            ; 2 uses
  %i.fu = insertelement <2 x float> poison, float %24, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = insertelement <2 x float> poison, float %22, i64 0
  %25 = insertelement <2 x float> %i.fw, float %23, i64 1
  %26 = fsub <2 x float> %i.fv, %25
  %27 = fdiv <2 x float> %i.fm, %26
  %28 = insertelement <2 x float> poison, float %15, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fmul <2 x float> %29, %27
  %31 = insertelement <2 x float> poison, float %13, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fadd <2 x float> %32, %30
  %34 = fmul float %i.fo, %19
  %35 = fsub float %18, %34
  %i.fx = tail call float @sqrtf(float noundef %35) #22
  %i.fy = fsub float %24, %i.fx
  %i.fz = load float, ptr %i.r, align 4, !tbaa !70 ; 3 uses
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gc = fsub <2 x float> %i.gb, %i.fd           ; 3 uses
  %i.gd = fsub float %i.fz, %i.ex                 ; 2 uses
  %i.ge = load float, ptr %i.y, align 4, !tbaa !70 ; 3 uses
  %i.gf = load float, ptr %i.k, align 4, !tbaa !70 ; 4 uses
  %i.gg = fsub float %13, %i.gf                   ; 4 uses
  %i.gh = fmul float %i.ge, %i.gg                 ; 3 uses
  %i.gi = fsub float %i.fa, %i.ge
  %i.gj = fmul float %i.gi, 5.000000e-01
  %i.gk = fmul float %i.gj, %i.gg
  %i.gl = fmul float %i.gh, %i.gh                 ; 3 uses
  %i.gm = fmul float %i.gk, 4.000000e+00          ; 3 uses
  %i.gn = extractelement <2 x float> %i.gc, i64 0
  %i.go = fmul float %i.gn, %i.gm
  %i.gp = extractelement <2 x float> %i.gc, i64 1
  %i.gq = fmul float %i.gp, %i.gm
  %i.gr = fmul float %i.gd, %i.gm
  %i.gs = fsub float %i.gl, %i.go
  %i.gt = fsub float %i.gl, %i.gq
  %i.gu = fsub float %i.gl, %i.gr
  %i.gv = tail call float @sqrtf(float noundef %i.gs) #22
  %i.gw = tail call float @sqrtf(float noundef %i.gt) #22
  %i.gx = tail call float @sqrtf(float noundef %i.gu) #22
  %i.gy = fneg float %i.gh                        ; 2 uses
  %i.gz = fsub float %i.gy, %i.gx
  %i.ha = load float, ptr %i.q, align 8, !tbaa !70 ; 3 uses
  %i.hb = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hd = fsub <2 x float> %i.hc, %i.fd           ; 3 uses
  %i.he = fsub float %i.ha, %i.ex                 ; 2 uses
  %i.hf = load float, ptr %i.x, align 8, !tbaa !70 ; 3 uses
  %i.hg = load float, ptr %i.j, align 8, !tbaa !70 ; 4 uses
  %i.hh = fsub float %i.gf, %i.hg                 ; 4 uses
  %i.hi = fmul float %i.hf, %i.hh                 ; 3 uses
  %i.hj = fsub float %i.ge, %i.hf
  %i.hk = fmul float %i.hj, 5.000000e-01
  %i.hl = fmul float %i.hk, %i.hh
  %i.hm = fmul float %i.hi, %i.hi                 ; 3 uses
  %i.hn = fmul float %i.hl, 4.000000e+00          ; 3 uses
  %i.ho = extractelement <2 x float> %i.hd, i64 0
  %i.hp = fmul float %i.ho, %i.hn
  %i.hq = extractelement <2 x float> %i.hd, i64 1
  %i.hr = fmul float %i.hq, %i.hn
  %i.hs = fmul float %i.he, %i.hn
  %i.ht = fsub float %i.hm, %i.hp
  %i.hu = fsub float %i.hm, %i.hr
  %i.hv = fsub float %i.hm, %i.hs
  %i.hw = tail call float @sqrtf(float noundef %i.ht) #22
  %i.hx = tail call float @sqrtf(float noundef %i.hu) #22
  %i.hy = tail call float @sqrtf(float noundef %i.hv) #22
  %i.hz = insertelement <4 x float> %11, float %i.gd, i64 2
  %i.ia = insertelement <4 x float> %i.hz, float %i.he, i64 3
  %i.ib = fmul <4 x float> %i.ia, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.ic = fneg float %i.hi                        ; 2 uses
  %i.id = fsub float %i.ic, %i.hy
  %i.ie = insertelement <4 x float> %i.fp, float %i.fy, i64 1
  %i.if = insertelement <4 x float> %i.ie, float %i.gz, i64 2
  %i.ig = insertelement <4 x float> %i.if, float %i.id, i64 3
  %i.ih = fdiv <4 x float> %i.ib, %i.ig
  %i.ii = fmul <2 x float> %i.gc, splat (float 2.000000e+00)
  %i.ij = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.im = insertelement <2 x float> %i.il, float %i.gw, i64 1
  %i.in = fsub <2 x float> %i.ik, %i.im
  %i.io = fdiv <2 x float> %i.ii, %i.in
  %i.ip = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = fmul <2 x float> %i.iq, %i.io
  %i.is = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = fadd <2 x float> %i.it, %i.ir
  %i.iv = fmul <2 x float> %i.hd, splat (float 2.000000e+00)
  %i.iw = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.iz = insertelement <2 x float> %i.iy, float %i.hx, i64 1
  %i.ja = fsub <2 x float> %i.ix, %i.iz
  %i.jb = fdiv <2 x float> %i.iv, %i.ja
  %i.jc = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fmul <2 x float> %i.jd, %i.jb
  %i.jf = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %15, i64 1
  %i.jg = insertelement <4 x float> %i.jf, float %i.gg, i64 2
  %i.jh = insertelement <4 x float> %i.jg, float %i.hh, i64 3
  %i.ji = fmul <4 x float> %i.jh, %i.ih
  %i.jj = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fadd <2 x float> %i.jk, %i.je
  %i.jm = insertelement <4 x float> poison, float %12, i64 0
  %i.jn = insertelement <4 x float> %i.jm, float %13, i64 1
  %i.jo = insertelement <4 x float> %i.jn, float %i.gf, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.hg, i64 3
  %i.jq = fadd <4 x float> %i.jp, %i.ji           ; 4 uses
  %i.jr = load float, ptr %i.p, align 4, !tbaa !70 ; 3 uses
  %i.js = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ju = fsub <2 x float> %i.jt, %i.fd           ; 3 uses
  %i.jv = fsub float %i.jr, %i.ex                 ; 2 uses
  %i.jw = load float, ptr %i.w, align 4, !tbaa !70 ; 3 uses
  %i.jx = load float, ptr %i.i, align 4, !tbaa !70 ; 4 uses
  %i.jy = fsub float %i.hg, %i.jx                 ; 4 uses
  %i.jz = fmul float %i.jw, %i.jy                 ; 3 uses
  %i.ka = fsub float %i.hf, %i.jw
  %i.kb = fmul float %i.ka, 5.000000e-01
  %i.kc = fmul float %i.kb, %i.jy
  %i.kd = fmul float %i.jz, %i.jz                 ; 3 uses
  %i.ke = fmul float %i.kc, 4.000000e+00          ; 3 uses
  %i.kf = extractelement <2 x float> %i.ju, i64 0
  %i.kg = fmul float %i.kf, %i.ke
  %i.kh = extractelement <2 x float> %i.ju, i64 1
  %i.ki = fmul float %i.kh, %i.ke
  %i.kj = fmul float %i.jv, %i.ke
  %i.kk = fsub float %i.kd, %i.kg
  %i.kl = fsub float %i.kd, %i.ki
  %i.km = fsub float %i.kd, %i.kj
  %i.kn = tail call float @sqrtf(float noundef %i.kk) #22
  %i.ko = tail call float @sqrtf(float noundef %i.kl) #22
  %i.kp = tail call float @sqrtf(float noundef %i.km) #22
  %i.kq = fmul <2 x float> %i.ju, splat (float 2.000000e+00)
  %i.kr = fmul float %i.jv, 2.000000e+00
  %i.ks = fneg float %i.jz                        ; 2 uses
  %i.kt = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kw = insertelement <2 x float> %i.kv, float %i.ko, i64 1
  %i.kx = fsub <2 x float> %i.ku, %i.kw
  %i.ky = fsub float %i.ks, %i.kp
  %i.kz = fdiv <2 x float> %i.kq, %i.kx
  %i.la = fdiv float %i.kr, %i.ky
  %i.lb = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fmul <2 x float> %i.lc, %i.kz
  %i.le = fmul float %i.jy, %i.la
  %i.lf = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = fadd <2 x float> %i.lg, %i.ld
  %i.li = fadd float %i.jx, %i.le
  %i.lj = load float, ptr %i.o, align 8, !tbaa !70 ; 3 uses
  %i.lk = insertelement <2 x float> poison, float %i.lj, i64 0 ; 2 uses
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lm = fsub <2 x float> %i.ll, %i.fd           ; 3 uses
  %i.ln = load float, ptr %i.v, align 8, !tbaa !70 ; 4 uses
  %i.lo = load float, ptr %i.h, align 8, !tbaa !70 ; 4 uses
  %i.lp = fsub float %i.jx, %i.lo                 ; 4 uses
  %i.lq = fmul float %i.ln, %i.lp                 ; 3 uses
  %i.lr = fsub float %i.jw, %i.ln
  %i.ls = fmul float %i.lr, 5.000000e-01
  %i.lt = fmul float %i.ls, %i.lp
  %i.lu = fmul float %i.lq, %i.lq                 ; 3 uses
  %i.lv = fmul float %i.lt, 4.000000e+00          ; 3 uses
  %i.lw = extractelement <2 x float> %i.lm, i64 0
  %i.lx = fmul float %i.lw, %i.lv
  %i.ly = extractelement <2 x float> %i.lm, i64 1
  %i.lz = fmul float %i.ly, %i.lv
  %i.ma = fsub float %i.lu, %i.lx
  %i.mb = fsub float %i.lu, %i.lz
  %i.mc = tail call float @sqrtf(float noundef %i.ma) #22
  %i.md = tail call float @sqrtf(float noundef %i.mb) #22
  %i.me = fmul <2 x float> %i.lm, splat (float 2.000000e+00)
  %i.mf = fneg float %i.lq                        ; 2 uses
  %i.mg = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = insertelement <2 x float> poison, float %i.mc, i64 0
  %i.mj = insertelement <2 x float> %i.mi, float %i.md, i64 1
  %i.mk = fsub <2 x float> %i.mh, %i.mj
  %i.ml = fdiv <2 x float> %i.me, %i.mk
  %i.mm = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mo = fmul <2 x float> %i.mn, %i.ml
  %i.mp = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mr = fadd <2 x float> %i.mq, %i.mo
  %i.ms = fsub <2 x float> %i.fd, %i.ll
  %i.mt = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mv = fdiv <2 x float> %i.ms, %i.mu
  %i.mw = insertelement <2 x float> %i.lk, float %i.ex, i64 1
  %i.mx = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.my = insertelement <2 x float> %i.mx, float %i.lj, i64 1
  %i.mz = fsub <2 x float> %i.mw, %i.my           ; 2 uses
  %i.na = extractelement <2 x float> %i.mz, i64 0
  %i.nb = fmul float %i.na, %i.lv
  %i.nc = fsub float %i.lu, %i.nb
  %i.nd = tail call float @sqrtf(float noundef %i.nc) #22
  %i.ne = fsub float %i.mf, %i.nd
  %i.nf = fmul <2 x float> %i.mz, <float 2.000000e+00, float 1.000000e+00>
  %i.ng = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.nh = insertelement <2 x float> %i.ng, float %i.ln, i64 1
  %i.ni = fdiv <2 x float> %i.nf, %i.nh           ; 2 uses
  %i.nj = extractelement <2 x float> %i.ni, i64 0
  %i.nk = fmul float %i.lp, %i.nj
  %i.nl = fadd float %i.lo, %i.nk
  %i.nm = fadd <2 x float> %i.mq, %i.mv
  %i.nn = extractelement <2 x float> %i.ni, i64 1
  %i.no = fadd float %i.lo, %i.nn
  %i.np = fcmp olt <2 x float> %i.fd, %i.jt
  %i.nq = select <2 x i1> %i.np, <2 x float> %i.mr, <2 x float> %i.lh
  %i.nr = fcmp olt float %i.ex, %i.jr
  %i.ns = select i1 %i.nr, float %i.nl, float %i.li
  %i.nt = fcmp olt <2 x float> %i.fd, %i.hc
  %i.nu = select <2 x i1> %i.nt, <2 x float> %i.nq, <2 x float> %i.jl
  %i.nv = fcmp olt float %i.ex, %i.ha
  %i.nw = extractelement <4 x float> %i.jq, i64 3
  %i.nx = select i1 %i.nv, float %i.ns, float %i.nw
  %i.ny = fcmp olt <2 x float> %i.fd, %i.gb
  %i.nz = select <2 x i1> %i.ny, <2 x float> %i.nu, <2 x float> %i.iu
  %i.oa = fcmp olt float %i.ex, %i.fz
  %i.ob = extractelement <4 x float> %i.jq, i64 2
  %i.oc = select i1 %i.oa, float %i.nx, float %i.ob
  %i.od = fcmp olt <2 x float> %i.fd, %i.fi
  %i.oe = select <2 x i1> %i.od, <2 x float> %i.nz, <2 x float> %33
  %i.of = extractelement <4 x float> %i.jq, i64 1
  %i.og = select i1 %i.fb, float %i.oc, float %i.of
  %i.oh = fcmp olt <2 x float> %i.fd, %i.ll
  %i.oi = select <2 x i1> %i.oh, <2 x float> %i.nm, <2 x float> %i.oe
  %i.oj = fcmp olt float %i.ex, %i.lj
  %i.ok = select i1 %i.oj, float %i.no, float %i.og
  %i.ol = fcmp olt <2 x float> %i.fd, %i.ff
  %i.om = select <2 x i1> %i.ol, <2 x float> %i.oi, <2 x float> %14
  %i.on = extractelement <4 x float> %i.jq, i64 0
  %i.oo = select i1 %i.fc, float %i.ok, float %i.on
  store <2 x float> %i.om, ptr %3, align 4, !tbaa !70
  store float %i.oo, ptr %i.ew, align 4, !tbaa !70
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #22, !inline_history !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !49
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD2Ev, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN16OpenColorIO_v2_517GradingToneOpDataE", !10, i64 0}
!12 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!13 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!14 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_517GradingToneOpDataELN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !13, i64 8}
!15 = !{!14, !11, i64 0}
!16 = !{!"_ZTSSt12__mutex_base", !6, i64 0}
!17 = !{!"_ZTSSt5mutex", !16, i64 0}
!18 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !6, i64 16}
!23 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !10, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !26, i64 0}
!28 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !10, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !18, i64 0, !22, i64 8, !22, i64 40, !27, i64 72, !32, i64 96}
!34 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !17, i64 8, !33, i64 48}
!35 = !{!"_ZTSN16OpenColorIO_v2_512GradingStyleE", !6, i64 0}
!36 = !{!"p1 _ZTSN16OpenColorIO_v2_530DynamicPropertyGradingToneImplE", !10, i64 0}
!37 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !13, i64 8}
!38 = !{!"_ZTSSt10shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplEE", !37, i64 0}
!39 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !6, i64 0}
!40 = !{!"_ZTSN16OpenColorIO_v2_517GradingToneOpDataE", !34, i64 0, !35, i64 168, !38, i64 176, !39, i64 192}
!41 = !{!40, !35, i64 168}
!42 = !{}
!43 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!44 = !{!43, !7, i64 8}
!45 = !{!43, !7, i64 12}
!46 = !{!"vtable pointer", !5, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!13, !12, i64 0}
!49 = !{!6, !6, i64 0}
!50 = !{!7, !7, i64 0}
!51 = !{!"_ZTSSt9type_info", !19, i64 8}
!52 = !{!51, !19, i64 8}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD2Ev}
!55 = !{!37, !36, i64 0}
!56 = !{!"_ZTSN16OpenColorIO_v2_515DynamicPropertyE"}
!57 = !{!"_ZTSN16OpenColorIO_v2_519DynamicPropertyTypeE", !6, i64 0}
!58 = !{!"bool", !6, i64 0}
!59 = !{!"_ZTSN16OpenColorIO_v2_519DynamicPropertyImplE", !56, i64 0, !57, i64 8, !58, i64 12}
!60 = !{!"_ZTSN16OpenColorIO_v2_526DynamicPropertyGradingToneE"}
!61 = !{!"double", !6, i64 0}
!62 = !{!"_ZTSN16OpenColorIO_v2_513GradingRGBMSWE", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40}
!63 = !{!"_ZTSN16OpenColorIO_v2_511GradingToneE", !62, i64 0, !62, i64 48, !62, i64 96, !62, i64 144, !62, i64 192, !61, i64 240}
!64 = !{!"float", !6, i64 0}
!65 = !{!"_ZTSN16OpenColorIO_v2_520GradingTonePreRenderE", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !6, i64 64, !6, i64 160, !6, i64 256, !6, i64 352, !6, i64 448, !6, i64 544, !6, i64 608, !6, i64 672, !6, i64 736, !6, i64 800, !6, i64 832, !6, i64 864, !6, i64 896, !64, i64 912, !64, i64 916, !64, i64 920, !64, i64 924, !58, i64 928, !35, i64 932}
!66 = !{!"_ZTSN16OpenColorIO_v2_530DynamicPropertyGradingToneImplE", !59, i64 0, !60, i64 16, !63, i64 24, !65, i64 272}
!67 = !{!66, !58, i64 1200}
!68 = !{i8 0, i8 2}
!69 = !{!63, !61, i64 240}
!70 = !{!64, !64, i64 0}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!59, !58, i64 12}
!73 = !{!65, !64, i64 924}
!74 = distinct !{!74, i1 false, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearFwdOpCPUEJRSt10shared_ptrIKNS0_17GradingToneOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!75 = distinct !{!75, !74, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearFwdOpCPUEJRSt10shared_ptrIKNS0_17GradingToneOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!76 = distinct !{!76, i1 false, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUEJRSt10shared_ptrIKNS0_17GradingToneOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!77 = distinct !{!77, !76, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUEJRSt10shared_ptrIKNS0_17GradingToneOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!78 = distinct !{!78, i1 false, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearRevOpCPUEJRSt10shared_ptrIKNS0_17GradingToneOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!79 = distinct !{!79, !78, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearRevOpCPUEJRSt10shared_ptrIKNS0_17GradingToneOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!80 = distinct !{!80, i1 false, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUEJRSt10shared_ptrIKNS0_17GradingToneOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!81 = distinct !{!81, !80, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPUEJRSt10shared_ptrIKNS0_17GradingToneOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!82 = !{!75}
!83 = !{!77}
!84 = !{!79}
!85 = !{!81}
!86 = !{!"p1 _ZTSN16OpenColorIO_v2_55OpCPUE", !10, i64 0}
!87 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0, !13, i64 8}
!88 = !{!87, !86, i64 0}
!89 = distinct !{null}
end_hunk_1
