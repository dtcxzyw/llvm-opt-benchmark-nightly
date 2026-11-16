Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf:bb.a
  store float %i.bv, ptr %i.v, align 4, !tbaa !70
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bw = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.bw, ptr %5, align 8, !tbaa !70
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.by, ptr %i.bz, align 8, !tbaa !70
  %i.ca = load float, ptr %i.i, align 4, !tbaa !70
  %i.cb = load float, ptr %i.j, align 8, !tbaa !70
  %i.cc = load float, ptr %i.k, align 4, !tbaa !70
  %i.cd = load float, ptr %i.n, align 4, !tbaa !70
  %i.ce = load float, ptr %i.o, align 8, !tbaa !70
  %i.cf = load float, ptr %i.p, align 4, !tbaa !70
  %i.cg = load float, ptr %i.s, align 8, !tbaa !70
  %i.ch = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.ca, float noundef %i.cb, float noundef %i.cc, float noundef %i.cd, float noundef %i.ce, float noundef %i.cf, float noundef %i.cg, float noundef %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !70 ; 5 uses
  %i.ck = load float, ptr %i.p, align 4, !tbaa !70 ; 4 uses
  %i.cl = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 3 uses
  %i.cm = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 3 uses
  %i.cn = load <2 x float>, ptr %i.n, align 4, !tbaa !70 ; 6 uses
  %i.co = fsub <2 x float> %i.cm, %i.cl           ; 4 uses
  %i.cp = extractelement <2 x float> %i.cn, i64 1 ; 2 uses
  %i.cq = fmul float %i.cp, -2.000000e+00
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.ck, float 2.000000e+00, float %i.cq)
  %i.cs = extractelement <2 x float> %i.co, i64 1
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cu = insertelement <2 x float> %i.cn, float %i.ck, i64 1
  %i.cv = fsub <2 x float> %i.ct, %i.cu
  %i.cw = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fsub <2 x float> %i.cn, %i.cx           ; 2 uses
  %i.cz = fneg <2 x float> %i.cy
  %i.da = fcmp olt float %i.cj, %i.cp
  %i.db = extractelement <2 x float> %i.cn, i64 0
  %i.dc = fcmp olt float %i.cj, %i.db
  %i.dd = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 4 uses
  %i.de = load float, ptr %i.t, align 4, !tbaa !70
  %i.df = extractelement <2 x float> %i.dd, i64 0
  %i.dg = fneg float %i.df
  %i.dh = fneg float %i.de
  %foldExtExtBinop = fmul <2 x float> %i.co, %i.dd ; 2 uses
  %i.di = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.cs, float %i.cr) ; 2 uses
  %i.dk = insertelement <2 x float> %i.dd, float %i.dg, i64 0
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.co, <2 x float> %i.cv)
  %i.dm = fmul <2 x float> %i.dl, splat (float 4.000000e+00)
  %i.dn = fmul <2 x float> %i.dm, %i.cz
  %i.do = insertelement <2 x float> %foldExtExtBinop, float %i.dj, i64 1 ; 2 uses
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.do, <2 x float> %i.dn) ; 2 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  %i.dr = tail call noundef float @sqrtf(float noundef %i.dq) #22
  %i.ds = fadd float %i.di, %i.dr
  %i.dt = extractelement <2 x float> %i.dp, i64 1
  %i.du = tail call noundef float @sqrtf(float noundef %i.dt) #22
  %i.dv = fadd float %i.dj, %i.du
  %i.dw = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.cj, i64 2
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.dy = shufflevector <2 x float> %i.cy, <2 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.dz = insertelement <4 x float> %i.dy, float %i.ck, i64 3 ; 2 uses
  %i.ea = fmul <4 x float> %i.dx, %i.dz
  %i.eb = fsub <4 x float> %i.dx, %i.dz
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ed = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ee = insertelement <4 x float> %i.ed, float %i.ds, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.dv, i64 1
  %i.eg = fdiv <4 x float> %i.ec, %i.ef           ; 2 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ei = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.co, <2 x float> %i.ei) ; 2 uses
  %i.ek = extractelement <2 x float> %i.ej, i64 0
  %i.el = extractelement <2 x float> %i.ej, i64 1
  %i.em = select i1 %i.da, float %i.ek, float %i.el
  %i.en = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3>
  %i.eo = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ep = fadd <2 x float> %i.en, %i.eo           ; 2 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = select i1 %i.dc, float %i.eq, float %i.em
  %i.es = fcmp olt float %i.cj, %i.ck
  %i.et = extractelement <2 x float> %i.ep, i64 1
  %i.eu = select i1 %i.es, float %i.er, float %i.et
  store float %i.eu, ptr %i.ci, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ev = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.ev, ptr %6, align 8, !tbaa !70
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !70
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ex, ptr %i.ey, align 8, !tbaa !70
  %i.ez = load float, ptr %i.i, align 4, !tbaa !70
  %i.fa = load float, ptr %i.j, align 8, !tbaa !70
  %i.fb = load float, ptr %i.k, align 4, !tbaa !70
  %i.fc = load float, ptr %i.n, align 4, !tbaa !70
  %i.fd = load float, ptr %i.o, align 8, !tbaa !70
  %i.fe = load float, ptr %i.p, align 4, !tbaa !70
  %i.ff = load float, ptr %i.s, align 8, !tbaa !70
  %i.fg = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.ez, float noundef %i.fa, float noundef %i.fb, float noundef %i.fc, float noundef %i.fd, float noundef %i.fe, float noundef %i.ff, float noundef %i.fg, ptr noundef nonnull align 4 dereferenceable(12) %6)
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
  %i.bc = fsub float %i.w, %i.bb                  ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = fmul float %i.ba, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.be)
  %i.bg = tail call noundef float @sqrtf(float noundef %i.bf) #22
  %i.bh = fadd float %i.az, %i.bg
  %i.bi = fsub float %i.bb, %i.w
  %i.bj = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bi, i64 1
  %i.bl = fmul <2 x float> %i.bk, <float -2.000000e+00, float 1.000000e+00>
  %i.bm = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.y, i64 1
  %i.bo = fdiv <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ax, float %i.u)
  %i.br = extractelement <2 x float> %i.bo, i64 1
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
  %i.ek = fsub float %i.dz, %i.eg                 ; 3 uses
  %i.el = fdiv float %i.eh, %i.ek                 ; 2 uses
  %i.em = fmul float %i.ek, %i.el
  %i.en = fmul float %i.el, 5.000000e-01
  %i.eo = extractelement <2 x float> %i.ea, i64 0 ; 3 uses
  %i.ep = fsub float %i.eb, %i.eo                 ; 2 uses
  %i.eq = fmul float %i.en, %i.ep
  %i.er = fadd float %i.eo, %i.eq
  %i.es = fmul float %i.em, %i.er
  %i.et = fmul float %i.eh, %i.eo
  %i.eu = fcmp olt float %i.dt, %i.eg
  %.v640.i = select i1 %i.eu, float %i.et, float %i.es
  %i.ev = fadd float %i.dv, %.v640.i
  %i.ew = fcmp olt <2 x float> %i.dx, %i.ei
  %i.ex = fsub float %i.dt, %i.dz
  %i.ey = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ez = fsub <2 x float> %i.dx, %i.ey
  %i.fa = fmul float %i.ex, %i.eb
  %i.fb = fadd float %i.dw, %i.fa
  %i.fc = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = fdiv <2 x float> %i.ej, %i.fd           ; 2 uses
  %i.ff = fmul <2 x float> %i.fd, %i.fe
  %i.fg = fmul <2 x float> %i.fe, splat (float 5.000000e-01)
  %i.fh = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.fg, %i.fi
  %i.fk = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fl = fadd <2 x float> %i.fk, %i.fj
  %i.fm = fmul <2 x float> %i.ff, %i.fl
  %i.fn = fmul <2 x float> %i.ej, %i.fk
  %i.fo = select <2 x i1> %i.ew, <2 x float> %i.fn, <2 x float> %i.fm
  %i.fp = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fadd <2 x float> %i.fq, %i.fo
  %i.fs = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = fmul <2 x float> %i.ez, %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fadd <2 x float> %i.fv, %i.ft
  %i.fx = fcmp olt float %i.dt, %i.dz
  %i.fy = select i1 %i.fx, float %i.ev, float %i.fb
  %i.fz = fcmp olt <2 x float> %i.dx, %i.ey
  %i.ga = select <2 x i1> %i.fz, <2 x float> %i.fr, <2 x float> %i.fw
  store float %i.fy, ptr %4, align 4, !tbaa !70
  br label %.sink.split.i52

bb.j:                                             ; preds = %bb.h
  %i.gb = fcmp ogt float %i.ee, 1.000000e+00
  br i1 %i.gb, label %bb.k, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.k:                                             ; preds = %bb.j
  %i.gc = extractelement <2 x float> %i.dy, i64 0 ; 10 uses
  %..i51 = select i1 %3, float %i.dz, float %i.gc ; 3 uses
  %i.gd = extractelement <2 x float> %i.dx, i64 1
  %i.ge = fsub float %i.gd, %..i51
  %i.gf = fmul float %i.ge, %i.ec
  %i.gg = fadd float %..i51, %i.gf                ; 5 uses
  %i.gh = extractelement <2 x float> %i.ea, i64 0 ; 3 uses
  %i.gi = fsub float %i.eb, %i.gh                 ; 2 uses
  %i.gj = fmul float %i.gi, 5.000000e-01
  %i.gk = fsub float %i.dz, %i.gc                 ; 7 uses
  %i.gl = fmul float %i.gk, %i.gj
  %i.gm = fmul float %i.gk, %i.gh                 ; 4 uses
  %i.gn = fmul float %i.gm, %i.gm                 ; 3 uses
  %i.go = fmul float %i.gl, 4.000000e+00          ; 3 uses
  %i.gp = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gq = insertelement <2 x float> %i.gp, float %i.dt, i64 0
  %i.gr = insertelement <2 x float> poison, float %..i51, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = fsub <2 x float> %i.gq, %i.gs
  %i.gu = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gw = fmul <2 x float> %i.gt, %i.gv
  %i.gx = fadd <2 x float> %i.gs, %i.gw           ; 6 uses
  %i.gy = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ha = fsub <2 x float> %i.gz, %i.gx           ; 3 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0
  %i.hc = fmul float %i.go, %i.hb
  %i.hd = extractelement <2 x float> %i.ha, i64 1
  %i.he = fmul float %i.go, %i.hd
  %i.hf = fsub float %i.gn, %i.hc
  %i.hg = fsub float %i.gn, %i.he
  %i.hh = tail call float @sqrtf(float noundef %i.hf) #22
  %i.hi = tail call float @sqrtf(float noundef %i.hg) #22
  %i.hj = fmul <2 x float> %i.ha, splat (float -2.000000e+00)
  %i.hk = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hn = insertelement <2 x float> %i.hm, float %i.hi, i64 1
  %i.ho = fadd <2 x float> %i.hl, %i.hn
  %i.hp = fdiv <2 x float> %i.hj, %i.ho
  %i.hq = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.dv, i64 1 ; 2 uses
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ht = fsub <2 x float> %i.hr, %i.hs           ; 2 uses
  %i.hu = extractelement <2 x float> %i.ht, i64 1
  %i.hv = fmul float %i.go, %i.hu
  %i.hw = fsub float %i.gn, %i.hv
  %i.hx = fmul <2 x float> %i.ht, <float 1.000000e+00, float -2.000000e+00>
  %i.hy = tail call float @sqrtf(float noundef %i.hw) #22
  %i.hz = fadd float %i.gm, %i.hy
  %i.ia = insertelement <2 x float> %i.ea, float %i.hz, i64 1
  %i.ib = fdiv <2 x float> %i.hx, %i.ia           ; 2 uses
  %i.ic = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x float> %i.id, %i.hp
  %i.if = extractelement <2 x float> %i.ib, i64 1
  %i.ig = fmul float %i.gk, %i.if
  %i.ih = fsub <2 x float> %i.gx, %i.gz
  %i.ii = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fdiv <2 x float> %i.ih, %i.ii
end_hunk_0
