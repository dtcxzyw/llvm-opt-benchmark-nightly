inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf:bb.a
  %i.hn = fmul <2 x float> %i.gm, %i.gn
  %i.ho = fmul <2 x float> %i.gn, splat (float 5.000000e-01)
  %i.hp = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x float> %i.ho, %i.hq
  %i.hs = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fadd <2 x float> %i.ht, %i.hr
  %i.hv = fmul <2 x float> %i.hn, %i.hu
  %i.hw = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = fadd <2 x float> %i.hx, %i.hv
  %i.hz = fmul <2 x float> %i.gq, %i.gr
  %i.ia = fmul <2 x float> %i.gr, splat (float 5.000000e-01)
  %i.ib = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.ia, %i.ic
  %i.ie = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = fadd <2 x float> %i.if, %i.id
  %i.ih = fmul <2 x float> %i.hz, %i.ig
  %i.ii = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fadd <2 x float> %i.ij, %i.ih
  %i.il = fmul <2 x float> %i.gu, %i.gv
  %i.im = fmul <2 x float> %i.gv, splat (float 5.000000e-01)
  %i.in = insertelement <2 x float> poison, float %i.et, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %i.im, %i.io
  %i.iq = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fadd <2 x float> %i.ir, %i.ip
  %i.it = fmul <2 x float> %i.il, %i.is
  %i.iu = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fadd <2 x float> %i.iv, %i.it
  %i.ix = fmul <2 x float> %i.gz, %i.ha
  %i.iy = fmul <2 x float> %i.ha, splat (float 5.000000e-01)
  %i.iz = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x float> %i.iy, %i.ja
  %i.jc = insertelement <2 x float> poison, float %i.es, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fadd <2 x float> %i.jd, %i.jb
  %i.jf = fmul <2 x float> %i.ix, %i.je
  %i.jg = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fadd <2 x float> %i.jh, %i.jf
  %i.jj = fmul <2 x float> %i.gh, %i.hh
  %i.jk = fadd <2 x float> %i.hl, %i.jj
  %i.jl = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jn = fsub <2 x float> %i.gf, %i.jm
  %i.jo = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jq = fmul <2 x float> %i.jn, %i.jp
  %i.jr = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = fadd <2 x float> %i.jq, %i.js
  %i.ju = fcmp olt <2 x float> %i.gf, %i.gk
  %i.jv = select <2 x i1> %i.ju, <2 x float> %i.hm, <2 x float> %i.hy
  %i.jw = fcmp olt <2 x float> %i.gf, %i.go
  %i.jx = select <2 x i1> %i.jw, <2 x float> %i.jv, <2 x float> %i.ik
  %i.jy = fcmp olt <2 x float> %i.gf, %i.gs
  %i.jz = select <2 x i1> %i.jy, <2 x float> %i.jx, <2 x float> %i.iw
  %i.ka = fcmp olt <2 x float> %i.gf, %i.gw
  %i.kb = select <2 x i1> %i.ka, <2 x float> %i.jz, <2 x float> %i.ji
  %i.kc = fcmp olt <2 x float> %i.gf, %i.gg
  %i.kd = select <2 x i1> %i.kc, <2 x float> %i.jk, <2 x float> %i.kb
  %i.ke = fcmp olt <2 x float> %i.gf, %i.jm
  %i.kf = select <2 x i1> %i.ke, <2 x float> %i.kd, <2 x float> %i.jt
  store <2 x float> %i.kf, ptr %3, align 4, !tbaa !84
  store float %i.ge, ptr %i.cw, align 4, !tbaa !84
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.h ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 4 uses
  %i.u = fcmp olt float %.0, 1.000000e+00
  %.not82 = icmp eq i32 %2, 3                     ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !84 ; 5 uses
  %i.x = load float, ptr %i.n, align 4, !tbaa !84 ; 2 uses
  %i.y = load float, ptr %i.o, align 4, !tbaa !84 ; 2 uses
  %i.z = load float, ptr %i.p, align 4, !tbaa !84 ; 2 uses
  %i.aa = load float, ptr %i.s, align 8, !tbaa !84 ; 2 uses
  %i.ab = load float, ptr %i.t, align 4, !tbaa !84 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.i, align 4, !tbaa !84 ; 4 uses
  %i.ad = load <2 x float>, ptr %i.j, align 4, !tbaa !84 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.w, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fsub <2 x float> %i.af, %i.ac           ; 2 uses
  %i.ah = fsub <2 x float> %i.ad, %i.ac           ; 3 uses
  %i.ai = fdiv <2 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0 ; 6 uses
  %i.ak = fneg float %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.aj, float 1.000000e+00)
  %i.am = fmul float %i.aj, %i.y
  %i.an = fmul float %i.aj, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.x, float %i.al, float %i.an)
  %i.ap = fsub float 1.000000e+00, %i.aj
  %i.aq = fmul float %i.ap, %i.aa
  %i.ar = fmul float %i.aj, %i.aq
  %i.as = extractelement <2 x float> %i.ah, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.as, float %i.ao)
  %i.au = extractelement <2 x float> %i.ai, i64 1 ; 5 uses
  %i.av = fsub float 1.000000e+00, %i.au          ; 2 uses
  %i.aw = fmul float %i.y, %i.av
  %i.ax = fsub float 2.000000e+00, %i.au
  %i.ay = fmul float %i.z, %i.ax
  %i.az = fmul float %i.au, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.av, float %i.az)
  %i.bb = fadd float %i.au, -1.000000e+00
  %i.bc = fmul float %i.bb, %i.ab
  %i.bd = fmul float %i.au, %i.bc
  %i.be = extractelement <2 x float> %i.ah, i64 1
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.be, float %i.ba)
  %i.bg = extractelement <2 x float> %i.ac, i64 1
  %i.bh = fcmp olt float %i.w, %i.bg
  %i.bi = select i1 %i.bh, float %i.at, float %i.bf
  %i.bj = extractelement <2 x float> %i.ag, i64 0
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.aa, float %i.x)
  %i.bl = extractelement <2 x float> %i.ac, i64 0
  %i.bm = fcmp olt float %i.w, %i.bl
  %i.bn = select i1 %i.bm, float %i.bk, float %i.bi
  %i.bo = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.bp = fsub float %i.w, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ab, float %i.z)
  %i.br = fcmp olt float %i.w, %i.bo
  %i.bs = select i1 %i.br, float %i.bn, float %i.bq
  store float %i.bs, ptr %i.v, align 4, !tbaa !84
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bt = load <2 x float>, ptr %4, align 4, !tbaa !84
  store <2 x float> %i.bt, ptr %5, align 8, !tbaa !84
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !84
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bv, ptr %i.bw, align 8, !tbaa !84
  %i.bx = load float, ptr %i.i, align 4, !tbaa !84
  %i.by = load float, ptr %i.j, align 4, !tbaa !84
  %i.bz = load float, ptr %i.k, align 4, !tbaa !84
  %i.ca = load float, ptr %i.n, align 4, !tbaa !84
  %i.cb = load float, ptr %i.o, align 4, !tbaa !84
  %i.cc = load float, ptr %i.p, align 4, !tbaa !84
  %i.cd = load float, ptr %i.s, align 8, !tbaa !84
  %i.ce = load float, ptr %i.t, align 4, !tbaa !84
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.bx, float noundef %i.by, float noundef %i.bz, float noundef %i.ca, float noundef %i.cb, float noundef %i.cc, float noundef %i.cd, float noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !84 ; 5 uses
  %i.ch = load float, ptr %i.p, align 4, !tbaa !84 ; 4 uses
  %i.ci = load <2 x float>, ptr %i.i, align 4, !tbaa !84 ; 3 uses
  %i.cj = load <2 x float>, ptr %i.j, align 4, !tbaa !84 ; 3 uses
  %i.ck = load <2 x float>, ptr %i.n, align 4, !tbaa !84 ; 6 uses
  %7 = fsub <2 x float> %i.cj, %i.ci              ; 4 uses
  %8 = extractelement <2 x float> %i.ck, i64 1    ; 2 uses
  %9 = fmul float %8, -2.000000e+00
  %10 = tail call float @llvm.fmuladd.f32(float %i.ch, float 2.000000e+00, float %9)
  %11 = extractelement <2 x float> %7, i64 1
  %12 = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %13 = insertelement <2 x float> %i.ck, float %i.ch, i64 1
  %14 = fsub <2 x float> %12, %13
  %15 = insertelement <2 x float> poison, float %i.cg, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fsub <2 x float> %i.ck, %16               ; 2 uses
  %18 = fneg <2 x float> %17
  %19 = extractelement <2 x float> %i.ci, i64 0
  %20 = fcmp olt float %i.cg, %8
  %21 = extractelement <2 x float> %i.ck, i64 0
  %22 = fcmp olt float %i.cg, %21
  %23 = load <2 x float>, ptr %i.s, align 8, !tbaa !84 ; 4 uses
  %24 = load float, ptr %i.t, align 4, !tbaa !84
  %25 = extractelement <2 x float> %23, i64 0
  %26 = fneg float %25
  %27 = fneg float %24
  %foldExtExtBinop.a = fmul <2 x float> %7, %23   ; 2 uses
  %28 = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %11, float %10) ; 2 uses
  %i.cl = insertelement <2 x float> %23, float %26, i64 0
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %7, <2 x float> %14)
  %30 = fmul <2 x float> %i.cm, splat (float 4.000000e+00)
  %31 = fmul <2 x float> %30, %18
  %32 = insertelement <2 x float> %foldExtExtBinop.a, float %29, i64 1 ; 2 uses
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %32, <2 x float> %31) ; 2 uses
  %i.cn = extractelement <2 x float> %33, i64 0
  %i.co = tail call noundef float @sqrtf(float noundef %i.cn) #22, !tbaa !3
  %i.cp = fadd float %28, %i.co
  %34 = extractelement <2 x float> %33, i64 1
  %35 = tail call noundef float @sqrtf(float noundef %34) #22, !tbaa !3
  %36 = fadd float %29, %35
  %i.cq = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.cg, i64 2
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.cs = shufflevector <2 x float> %17, <2 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float %i.ch, i64 3 ; 2 uses
  %i.cu = fmul <4 x float> %i.cr, %i.ct
  %i.cv = fsub <4 x float> %i.cr, %i.ct
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %37 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.cx = insertelement <4 x float> %37, float %i.cp, i64 0
  %i.cy = insertelement <4 x float> %i.cx, float %36, i64 1
  %i.cz = fdiv <4 x float> %i.cw, %i.cy           ; 3 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.db = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %7, <2 x float> %i.db) ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = extractelement <2 x float> %i.dc, i64 1
  %i.df = select i1 %20, float %i.dd, float %i.de
  %i.dg = extractelement <4 x float> %i.cz, i64 2
  %i.dh = fadd float %19, %i.dg
  %i.di = select i1 %22, float %i.dh, float %i.df
  %i.dj = extractelement <2 x float> %i.cj, i64 1
  %i.dk = extractelement <4 x float> %i.cz, i64 3
  %i.dl = fadd float %i.dj, %i.dk
  %i.dm = fcmp olt float %i.cg, %i.ch
  %i.dn = select i1 %i.dm, float %i.di, float %i.dl
  store float %i.dn, ptr %i.cf, align 4, !tbaa !84
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.do = load <2 x float>, ptr %4, align 4, !tbaa !84
  store <2 x float> %i.do, ptr %6, align 8, !tbaa !84
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !84
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.dq, ptr %i.dr, align 8, !tbaa !84
  %i.ds = load float, ptr %i.i, align 4, !tbaa !84
  %i.dt = load float, ptr %i.j, align 4, !tbaa !84
  %i.du = load float, ptr %i.k, align 4, !tbaa !84
  %i.dv = load float, ptr %i.n, align 4, !tbaa !84
  %i.dw = load float, ptr %i.o, align 4, !tbaa !84
  %i.dx = load float, ptr %i.p, align 4, !tbaa !84
  %i.dy = load float, ptr %i.s, align 8, !tbaa !84
  %i.dz = load float, ptr %i.t, align 4, !tbaa !84
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.ds, float noundef %i.dt, float noundef %i.du, float noundef %i.dv, float noundef %i.dw, float noundef %i.dx, float noundef %i.dy, float noundef %i.dz, ptr noundef nonnull align 4 dereferenceable(12) %6)
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
  %i.q = load float, ptr %i.p, align 4, !tbaa !84 ; 4 uses
  %i.r = load <2 x float>, ptr %i.f, align 8, !tbaa !84 ; 6 uses
  %i.s = extractelement <2 x float> %i.r, i64 1   ; 13 uses
  %i.t = extractelement <2 x float> %i.r, i64 0   ; 10 uses
  %i.u = load <2 x float>, ptr %i.i, align 8, !tbaa !84 ; 4 uses
  %i.v = load <2 x float>, ptr %i.l, align 8, !tbaa !84 ; 7 uses
  %i.w = load float, ptr %i.o, align 4, !tbaa !84 ; 5 uses
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
  %5 = tail call float @llvm.fmuladd.f32(float %i.av, float %i.w, float %..i) ; 6 uses
  %i.aw = extractelement <2 x float> %i.v, i64 0  ; 3 uses
  %i.ax = extractelement <2 x float> %i.v, i64 1  ; 3 uses
  %i.ay = fsub float %i.ax, %i.aw                 ; 2 uses
  %i.az = fmul float %i.ay, 5.000000e-01
  %i.ba = fsub float %i.s, %i.t                   ; 6 uses
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = fmul float %i.ba, %i.aw                 ; 3 uses
  %i.bd = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %6 = fmul float %i.bb, 4.000000e+00
  %i.be = fsub float %5, %i.bd
  %i.bf = fsub float %i.bd, %5                    ; 2 uses
  %i.bg = fneg float %i.bf
  %i.bh = fmul float %6, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bh)
  %i.bj = tail call noundef float @sqrtf(float noundef %i.bi) #22, !tbaa !3
  %i.bk = fadd float %i.bc, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.be, i64 1
  %i.bn = fmul <2 x float> %i.bm, <float -2.000000e+00, float 1.000000e+00>
  %i.bo = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bp = insertelement <2 x float> %i.bo, float %i.bk, i64 0
  %i.bq = fdiv <2 x float> %i.bn, %i.bp           ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.ba, float %i.t)
  %shift11 = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fadd <2 x float> %i.r, %shift11
  %i.bt = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.bu = fcmp olt float %5, %i.bd
  %i.bv = select i1 %i.bu, float %i.bt, float %i.bs ; 2 uses
  br i1 %3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = fsub float %i.bv, %i.t
  %i.bx = fdiv float %i.bw, %i.w
  %i.by = fadd float %i.t, %i.bx
  %i.bz = fdiv float %i.ba, %i.w
  %i.ca = fadd float %i.t, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ba, float 9.900000e-01, float %i.t) ; 2 uses
  %i.cc = fsub float %i.cb, %i.t
  %i.cd = fmul float %i.cc, %i.ay
  %i.ce = fdiv float %i.cd, %i.ba
  %i.cf = fadd float %i.aw, %i.ce
  %i.cg = fdiv float 1.000000e+00, %i.cf
  %i.ch = fdiv float 1.000000e+00, %i.ax          ; 2 uses
  %i.ci = fsub float %i.s, %i.cb
  %i.cj = fneg float %i.s
  %i.ck = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %5, i64 1
  %i.cm = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cn = insertelement <2 x float> %i.cm, float %i.cg, i64 0
  %i.co = fsub <2 x float> %i.cl, %i.cn
  %i.cp = fmul <2 x float> %i.co, <float 5.000000e-01, float 1.000000e+00>
  %i.cq = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.w, i64 1
  %i.cs = fdiv <2 x float> %i.cp, %i.cr           ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0 ; 3 uses
  %i.cu = fmul float %i.ct, -2.000000e+00
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.s, float %i.ch) ; 2 uses
  %i.cw = fneg float %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.s, float %i.ca)
  %i.cy = fmul float %i.ct, %i.cj
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.s, float %i.cx)
  %shift14 = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fadd <2 x float> %i.r, %shift14
  %i.da = extractelement <2 x float> %foldExtExtBinop15, i64 0 ; 3 uses
  %i.db = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.da, float %i.cv)
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.da, float %i.cz)
  %i.dd = fcmp olt float %i.da, %i.s
  %i.de = select i1 %i.dd, float %i.by, float %i.dc
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.df = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.dg = fsub float %5, %i.df
  %i.dh = fdiv float %i.dg, %i.ax
  %i.di = fadd float %i.s, %i.dh
  %i.dj = fcmp olt float %5, %i.df
  %i.dk = select i1 %i.dj, float %i.bv, float %i.di
  %i.dl = fsub float %i.dk, %i.s
  %i.dm = fdiv float %i.dl, %i.w
  %i.dn = fadd float %i.s, %i.dm
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.c
  %.0.sink.i = phi float [ %i.at, %bb.c ], [ %i.dn, %bb.g ], [ %i.de, %bb.f ]
  store float %.0.sink.i, ptr %i.p, align 4, !tbaa !84
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.h:                                             ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dr = load float, ptr %4, align 4, !tbaa !84  ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dt = load <2 x float>, ptr %i.ds, align 4, !tbaa !84 ; 6 uses
  %i.du = load float, ptr %i.i, align 8, !tbaa !84 ; 5 uses
  %i.dv = load float, ptr %i.dp, align 4, !tbaa !84 ; 5 uses
  %i.dw = load float, ptr %i.dq, align 4, !tbaa !84 ; 17 uses
  %i.dx = load float, ptr %i.f, align 8, !tbaa !84 ; 15 uses
  %i.dy = load float, ptr %i.do, align 4, !tbaa !84 ; 7 uses
  %i.dz = load float, ptr %i.l, align 8, !tbaa !84 ; 8 uses
  %i.ea = load float, ptr %i.o, align 4, !tbaa !84 ; 5 uses
  %i.eb = fsub float 2.000000e+00, %i.a
  %i.ec = select i1 %3, float %i.eb, float %i.a   ; 2 uses
  %i.ed = fcmp olt float %i.ec, 1.000000e+00
  br i1 %i.ed, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ee = fsub float %i.dr, %i.dx                 ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eh = fsub <2 x float> %i.dt, %i.eg           ; 2 uses
  %i.ei = fsub float %i.dw, %i.dx                 ; 3 uses
  %i.ej = fdiv float %i.ee, %i.ei                 ; 2 uses
  %i.ek = fmul float %i.ei, %i.ej
  %i.el = fmul float %i.ej, 5.000000e-01
  %i.em = fsub float %i.dy, %i.dz                 ; 2 uses
  %i.en = fmul float %i.el, %i.em
  %i.eo = fadd float %i.dz, %i.en
  %i.ep = fmul float %i.ek, %i.eo
  %i.eq = fmul float %i.ee, %i.dz
  %i.er = fcmp olt float %i.dr, %i.dx
  %.v640.i = select i1 %i.er, float %i.eq, float %i.ep
  %i.es = fadd float %i.du, %.v640.i
  %i.et = fcmp olt <2 x float> %i.dt, %i.eg
  %i.eu = fsub float %i.dr, %i.dw
  %i.ev = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ex = fsub <2 x float> %i.dt, %i.ew
  %i.ey = fmul float %i.eu, %i.dy
  %i.ez = fadd float %i.dv, %i.ey
  %i.fa = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fdiv <2 x float> %i.eh, %i.fb           ; 2 uses
  %i.fd = fmul <2 x float> %i.fb, %i.fc
  %i.fe = fmul <2 x float> %i.fc, splat (float 5.000000e-01)
  %i.ff = insertelement <2 x float> poison, float %i.em, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x float> %i.fe, %i.fg
  %i.fi = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fk = fadd <2 x float> %i.fj, %i.fh
  %i.fl = fmul <2 x float> %i.fd, %i.fk
  %i.fm = fmul <2 x float> %i.eh, %i.fj
  %i.fn = select <2 x i1> %i.et, <2 x float> %i.fm, <2 x float> %i.fl
  %i.fo = insertelement <2 x float> poison, float %i.du, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fadd <2 x float> %i.fp, %i.fn
  %i.fr = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x float> %i.ex, %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fadd <2 x float> %i.fv, %i.ft
  %i.fx = fcmp olt float %i.dr, %i.dw
  %i.fy = select i1 %i.fx, float %i.es, float %i.ez
  %i.fz = fcmp olt <2 x float> %i.dt, %i.ew
  %i.ga = select <2 x i1> %i.fz, <2 x float> %i.fq, <2 x float> %i.fw
  store float %i.fy, ptr %4, align 4, !tbaa !84
  br label %.sink.split.i52

bb.j:                                             ; preds = %bb.h
  %i.gb = fcmp ogt float %i.ec, 1.000000e+00
  br i1 %i.gb, label %bb.k, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.k:                                             ; preds = %bb.j
  %..i51 = select i1 %3, float %i.dw, float %i.dx ; 3 uses
  %i.gc = extractelement <2 x float> %i.dt, i64 1
  %i.gd = fsub float %i.gc, %..i51
  %i.ge = fmul float %i.gd, %i.ea
  %i.gf = fadd float %..i51, %i.ge                ; 5 uses
  %i.gg = fsub float %i.dy, %i.dz                 ; 2 uses
  %i.gh = fmul float %i.gg, 5.000000e-01
  %i.gi = fsub float %i.dw, %i.dx                 ; 7 uses
  %i.gj = fmul float %i.gi, %i.gh
  %i.gk = fmul float %i.gi, %i.dz                 ; 4 uses
  %i.gl = fmul float %i.gk, %i.gk                 ; 3 uses
  %i.gm = fmul float %i.gj, 4.000000e+00          ; 3 uses
  %i.gn = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.go = insertelement <2 x float> %i.gn, float %i.dr, i64 0
  %i.gp = insertelement <2 x float> poison, float %..i51, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gr = fsub <2 x float> %i.go, %i.gq
  %i.gs = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gu = fmul <2 x float> %i.gr, %i.gt
  %i.gv = fadd <2 x float> %i.gq, %i.gu           ; 6 uses
  %i.gw = insertelement <2 x float> poison, float %i.du, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gy = fsub <2 x float> %i.gx, %i.gv           ; 3 uses
  %i.gz = extractelement <2 x float> %i.gy, i64 0
  %i.ha = fmul float %i.gm, %i.gz
  %i.hb = extractelement <2 x float> %i.gy, i64 1
  %i.hc = fmul float %i.gm, %i.hb
  %i.hd = fsub float %i.gl, %i.ha
  %i.he = fsub float %i.gl, %i.hc
  %i.hf = tail call float @sqrtf(float noundef %i.hd) #22, !tbaa !3
  %i.hg = tail call float @sqrtf(float noundef %i.he) #22, !tbaa !3
  %i.hh = fmul <2 x float> %i.gy, splat (float -2.000000e+00)
  %i.hi = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.hg, i64 1
  %i.hm = fadd <2 x float> %i.hj, %i.hl
  %i.hn = fdiv <2 x float> %i.hh, %i.hm
  %i.ho = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.hp = insertelement <2 x float> %i.ho, float %i.du, i64 1 ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hr = fsub <2 x float> %i.hp, %i.hq           ; 2 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 1
  %i.ht = fmul float %i.gm, %i.hs
  %i.hu = fsub float %i.gl, %i.ht
  %i.hv = fmul <2 x float> %i.hr, <float 1.000000e+00, float -2.000000e+00>
  %i.hw = tail call float @sqrtf(float noundef %i.hu) #22, !tbaa !3
  %i.hx = fadd float %i.gk, %i.hw
  %i.hy = insertelement <2 x float> poison, float %i.dz, i64 0 ; 2 uses
  %i.hz = insertelement <2 x float> %i.hy, float %i.hx, i64 1
  %i.ia = fdiv <2 x float> %i.hv, %i.hz           ; 2 uses
  %i.ib = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.ic, %i.hn
  %i.ie = extractelement <2 x float> %i.ia, i64 1
  %i.if = fmul float %i.gi, %i.ie
  %i.ig = fsub <2 x float> %i.gv, %i.gx
  %i.ih = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = fdiv <2 x float> %i.ig, %i.ih
  %i.ij = fcmp olt <2 x float> %i.gv, %i.gx
  %i.ik = select <2 x i1> %i.ij, <2 x float> %i.ii, <2 x float> %i.id
  %i.il = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.in = fadd <2 x float> %i.im, %i.ik           ; 2 uses
  %i.io = fcmp olt float %i.gf, %i.du
  %i.ip = extractelement <2 x float> %i.ia, i64 0
  %.v639.i = select i1 %i.io, float %i.ip, float %i.if
  %i.iq = fadd float %i.dx, %.v639.i              ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ir = fsub float %i.iq, %i.dx
  %i.is = tail call float @llvm.fmuladd.f32(float %i.gi, float 9.900000e-01, float %i.dx) ; 2 uses
  %i.it = fsub float %i.is, %i.dx
  %i.iu = fmul float %i.it, %i.gg
  %i.iv = fdiv float %i.iu, %i.gi
  %i.iw = fadd float %i.dz, %i.iv
  %i.ix = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %i.ir, i64 0
  %i.iy = insertelement <4 x float> %i.ix, float %i.gi, i64 1
  %i.iz = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ja = insertelement <4 x float> %i.iz, float %i.iw, i64 2
  %i.jb = insertelement <4 x float> %i.ja, float %i.dy, i64 3
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jd = fdiv <4 x float> %i.iy, %i.jc           ; 4 uses
  %i.je = extractelement <4 x float> %i.jd, i64 0
  %i.jf = fadd float %i.dx, %i.je
  %i.jg = extractelement <4 x float> %i.jd, i64 1
  %i.jh = fadd float %i.dx, %i.jg
  %i.ji = extractelement <4 x float> %i.jd, i64 2
  %i.jj = extractelement <4 x float> %i.jd, i64 3 ; 2 uses
  %i.jk = fsub float %i.dw, %i.is
  %i.jl = fneg float %i.dw
  %i.jm = fsub float %i.gf, %i.dx
  %i.jn = fsub float %i.jj, %i.ji
  %i.jo = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %i.jm, i64 1
  %i.jq = fmul <2 x float> %i.jp, <float 5.000000e-01, float 1.000000e+00>
  %i.jr = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %i.ea, i64 1
  %i.jt = fdiv <2 x float> %i.jq, %i.js           ; 3 uses
  %i.ju = extractelement <2 x float> %i.jt, i64 0 ; 3 uses
  %i.jv = fmul float %i.ju, -2.000000e+00
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.dw, float %i.jj) ; 3 uses
  %i.jx = fneg float %i.jw
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.dw, float %i.jh)
  %i.jz = fmul float %i.ju, %i.jl
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.dw, float %i.jy) ; 2 uses
  %i.kb = extractelement <2 x float> %i.jt, i64 1
  %i.kc = fadd float %i.dx, %i.kb                 ; 3 uses
  %i.kd = fmul float %i.kc, %i.ju
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU9scontrastERKNS_11GradingToneERKNS_20GradingTonePreRenderEPf:bb.a
  %i.br = fcmp olt float %i.k, %i.aj
  %i.bs = select i1 %i.br, float %i.bq, float %i.bf
  %i.bt = extractelement <2 x float> %i.an, i64 1
  %i.bu = fmul float %i.bt, %i.bk
  %i.bv = fadd float %i.bp, %i.bu
  %i.bw = extractelement <2 x float> %i.ai, i64 0
  %i.bx = fcmp olt float %i.k, %i.bw
  %i.by = select i1 %i.bx, float %i.bv, float %i.bs
  %i.bz = load <2 x float>, ptr %1, align 4, !tbaa !84 ; 8 uses
  %i.ca = insertelement <2 x float> poison, float %i.m, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = fsub <2 x float> %i.bz, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = fadd <2 x float> %i.cb, %i.cf
  %i.ch = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fsub <2 x float> %i.bz, %i.ch
  %i.cj = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fdiv <2 x float> %i.ci, %i.cj           ; 2 uses
  %i.cl = fmul <2 x float> %i.cj, %i.ck
  %i.cm = fmul <2 x float> %i.ck, splat (float 5.000000e-01)
  %i.cn = insertelement <2 x float> poison, float %i.y, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.co, %i.cm
  %i.cq = insertelement <2 x float> poison, float %i.x, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fadd <2 x float> %i.cr, %i.cp
  %i.ct = fmul <2 x float> %i.cl, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.z, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fadd <2 x float> %i.cv, %i.ct
  %i.cx = fcmp olt <2 x float> %i.bz, %i.ch
  %i.cy = select <2 x i1> %i.cx, <2 x float> %i.cg, <2 x float> %i.cw
  %i.cz = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.da = fsub <2 x float> %i.bz, %i.cz
  %i.db = insertelement <2 x float> poison, float %i.w, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.dc, %i.da
  %i.de = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fadd <2 x float> %i.dd, %i.df
  %i.dh = fcmp olt <2 x float> %i.bz, %i.cz
  %i.di = select <2 x i1> %i.dh, <2 x float> %i.cy, <2 x float> %i.dg
  %i.dj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = fsub <2 x float> %i.bz, %i.dj           ; 2 uses
  %i.dl = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dm = fdiv <2 x float> %i.dk, %i.dl           ; 2 uses
  %i.dn = fmul <2 x float> %i.dl, %i.dm
  %i.do = fmul <2 x float> %i.dm, splat (float 5.000000e-01)
  %i.dp = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.dq, %i.do
  %i.ds = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fadd <2 x float> %i.dt, %i.dr
  %i.dv = fmul <2 x float> %i.dn, %i.du
  %i.dw = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = fadd <2 x float> %i.dx, %i.dv
  %i.dz = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = fcmp olt <2 x float> %i.bz, %i.dz
  %i.eb = select <2 x i1> %i.ea, <2 x float> %i.dy, <2 x float> %i.di
  %i.ec = fmul <2 x float> %i.dk, %i.dt
  %i.ed = fadd <2 x float> %i.dx, %i.ec
  %i.ee = fcmp olt <2 x float> %i.bz, %i.dj
  %i.ef = select <2 x i1> %i.ee, <2 x float> %i.ed, <2 x float> %i.eb
  store <2 x float> %i.ef, ptr %1, align 4, !tbaa !84
  store float %i.by, ptr %i.j, align 4, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

declare noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %9) unnamed_addr #16 {
bb.a:
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.a = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !84 ; 5 uses
  %i.b = insertelement <2 x float> poison, float %2, i64 0 ; 2 uses
  %i.c = insertelement <2 x float> %i.b, float %3, i64 1
  %i.d = insertelement <2 x float> poison, float %1, i64 0
  %i.e = insertelement <2 x float> %i.d, float %2, i64 1 ; 2 uses
  %i.f = fsub <2 x float> %i.c, %i.e              ; 5 uses
  %i.g = insertelement <2 x float> poison, float %i.a, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fsub <2 x float> %i.h, %i.e              ; 2 uses
  %i.j = fdiv <2 x float> %i.i, %i.f              ; 4 uses
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.j, %i.j
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.m = fsub float 1.000000e+00, %i.l
  %i.n = fmul float %4, %i.m
  %i.o = fmul float %5, %i.k
  %i.p = fmul float %i.k, %i.o
  %i.q = fadd float %i.p, %i.n
  %i.r = fsub float 1.000000e+00, %i.k
  %i.s = fmul float %7, %i.r
  %i.t = fmul float %i.k, %i.s
  %i.u = extractelement <2 x float> %i.f, i64 0
  %i.v = fmul float %i.u, %i.t
  %i.w = fadd float %i.q, %i.v
  %i.x = extractelement <2 x float> %i.j, i64 1   ; 5 uses
  %i.y = fsub float 1.000000e+00, %i.x            ; 2 uses
  %i.z = fmul float %5, %i.y
  %i.aa = fmul float %i.y, %i.z
  %i.ab = fsub float 2.000000e+00, %i.x
  %i.ac = fmul float %6, %i.ab
  %i.ad = fmul float %i.x, %i.ac
  %i.ae = fadd float %i.aa, %i.ad
  %i.af = fadd float %i.x, -1.000000e+00
  %i.ag = fmul float %8, %i.af
  %i.ah = fmul float %i.x, %i.ag
  %i.ai = extractelement <2 x float> %i.f, i64 1
  %i.aj = fmul float %i.ai, %i.ah
  %i.ak = fadd float %i.ae, %i.aj
  %i.al = fcmp olt float %i.a, %2
  %i.am = select i1 %i.al, float %i.w, float %i.ak
  %i.an = extractelement <2 x float> %i.i, i64 0
  %i.ao = fmul float %7, %i.an
  %i.ap = fadd float %4, %i.ao
  %i.aq = fcmp olt float %i.a, %1
  %i.ar = select i1 %i.aq, float %i.ap, float %i.am
  %i.as = fsub float %i.a, %3
  %i.at = fmul float %8, %i.as
  %i.au = fadd float %6, %i.at
  %i.av = fcmp olt float %i.a, %3
  %i.aw = select i1 %i.av, float %i.ar, float %i.au
  %i.ax = load <2 x float>, ptr %9, align 4, !tbaa !84 ; 6 uses
  %i.ay = insertelement <2 x float> poison, float %1, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fsub <2 x float> %i.ax, %i.az           ; 2 uses
  %i.bb = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = fdiv <2 x float> %i.ba, %i.bb           ; 6 uses
  %i.bd = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = fsub <2 x float> %i.ax, %i.bd
  %i.bf = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bg = fdiv <2 x float> %i.be, %i.bf           ; 5 uses
  %i.bh = fmul <2 x float> %i.bc, %i.bc
  %i.bi = fsub <2 x float> splat (float 1.000000e+00), %i.bh
  %i.bj = insertelement <2 x float> poison, float %4, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = fmul <2 x float> %i.bk, %i.bi
  %i.bm = insertelement <2 x float> poison, float %5, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bc
  %i.bp = fmul <2 x float> %i.bc, %i.bo
  %i.bq = fadd <2 x float> %i.bp, %i.bl
  %i.br = fsub <2 x float> splat (float 1.000000e+00), %i.bc
  %i.bs = insertelement <2 x float> poison, float %7, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %i.br
  %i.bv = fmul <2 x float> %i.bc, %i.bu
  %i.bw = fmul <2 x float> %i.bb, %i.bv
  %i.bx = fadd <2 x float> %i.bq, %i.bw
  %i.by = fsub <2 x float> splat (float 1.000000e+00), %i.bg ; 2 uses
  %i.bz = fmul <2 x float> %i.bn, %i.by
  %i.ca = fmul <2 x float> %i.by, %i.bz
  %i.cb = fsub <2 x float> splat (float 2.000000e+00), %i.bg
  %i.cc = insertelement <2 x float> poison, float %6, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fmul <2 x float> %i.bg, %i.ce
  %i.cg = fadd <2 x float> %i.ca, %i.cf
  %i.ch = fadd <2 x float> %i.bg, splat (float -1.000000e+00)
  %i.ci = insertelement <2 x float> poison, float %8, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fmul <2 x float> %i.cj, %i.ch
  %i.cl = fmul <2 x float> %i.bg, %i.ck
  %i.cm = fmul <2 x float> %i.bf, %i.cl
  %i.cn = fadd <2 x float> %i.cg, %i.cm
  %i.co = fcmp olt <2 x float> %i.ax, %i.bd
  %i.cp = select <2 x i1> %i.co, <2 x float> %i.bx, <2 x float> %i.cn
  %i.cq = fmul <2 x float> %i.bt, %i.ba
  %i.cr = fadd <2 x float> %i.bk, %i.cq
  %i.cs = fcmp olt <2 x float> %i.ax, %i.az
  %i.ct = select <2 x i1> %i.cs, <2 x float> %i.cr, <2 x float> %i.cp
  %i.cu = insertelement <2 x float> poison, float %3, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fsub <2 x float> %i.ax, %i.cv
  %i.cx = fmul <2 x float> %i.cj, %i.cw
  %i.cy = fadd <2 x float> %i.cd, %i.cx
  %i.cz = fcmp olt <2 x float> %i.ax, %i.cv
  %i.da = select <2 x i1> %i.cz, <2 x float> %i.ct, <2 x float> %i.cy
  store <2 x float> %i.da, ptr %0, align 4, !tbaa !84
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.aw, ptr %i.db, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %9) unnamed_addr #18 {
bb.a:
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %10 = fsub float %5, %4
  %11 = fneg float %7
  %12 = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !84 ; 4 uses
  %13 = fmul float %5, -2.000000e+00
  %14 = fsub float %2, %1                         ; 4 uses
  %15 = fmul float %14, %7                        ; 4 uses
  %i.a = insertelement <2 x float> poison, float %11, i64 0
  %16 = insertelement <2 x float> %i.a, float %6, i64 1
  %i.b = insertelement <2 x float> <float poison, float 2.000000e+00>, float %14, i64 0
  %i.c = insertelement <2 x float> poison, float %10, i64 0
  %17 = insertelement <2 x float> %i.c, float %13, i64 1
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.b, <2 x float> %17) ; 2 uses
  %19 = fsub float %3, %2                         ; 2 uses
  %i.d = fneg float %8
  %20 = fsub float %5, %6
  %21 = insertelement <2 x float> poison, float %i.d, i64 0
  %22 = insertelement <2 x float> %21, float %8, i64 1
  %23 = insertelement <2 x float> poison, float %19, i64 0
  %i.e = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %24 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %25 = insertelement <2 x float> %24, float %20, i64 1
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.e, <2 x float> %25) ; 4 uses
  %27 = insertelement <2 x float> %26, float 4.000000e+00, i64 1
  %28 = fmul <2 x float> %26, %27                 ; 6 uses
  %29 = fcmp olt float %12, %5
  %30 = fcmp olt float %12, %4
  %31 = fcmp olt float %12, %6
  %32 = load <2 x float>, ptr %9, align 4, !tbaa !84 ; 7 uses
  %i.f = insertelement <2 x float> poison, float %4, i64 0
  %33 = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %34 = fsub <2 x float> %33, %32                 ; 2 uses
  %35 = fmul float %15, %15
  %36 = shufflevector <2 x float> %28, <2 x float> %34, <4 x i32> <i32 poison, i32 1, i32 2, i32 3>
  %37 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %38 = insertelement <2 x float> %37, float %35, i64 0
  %i.g = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.h = fmul <2 x float> %34, splat (float 2.000000e+00)
  %39 = insertelement <2 x float> poison, float %15, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = insertelement <2 x float> poison, float %14, i64 0
  %i.i = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = insertelement <2 x float> poison, float %1, i64 0
  %i.j = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.k = insertelement <2 x float> poison, float %5, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = fsub <2 x float> %i.l, %32               ; 3 uses
  %shift4 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop5 = fmul <2 x float> %shift4, %i.m
  %foldExtExtBinop = fmul <2 x float> %28, %i.m
  %foldExtExtBinop7 = fsub <2 x float> %28, %foldExtExtBinop5
  %43 = extractelement <2 x float> %foldExtExtBinop7, i64 0
  %shift = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2 = fsub <2 x float> %28, %shift
  %44 = extractelement <2 x float> %foldExtExtBinop2, i64 0
  %i.n = fmul <2 x float> %i.m, splat (float 2.000000e+00)
  %45 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %46 = extractelement <2 x float> %26, i64 0
  %i.o = insertelement <4 x float> poison, float %12, i64 0
  %i.p = insertelement <4 x float> %i.o, float %4, i64 2 ; 2 uses
  %i.q = insertelement <4 x float> %i.p, float %5, i64 3
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.s = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 0, i32 0>
  %i.t = insertelement <4 x float> %i.s, float %6, i64 1
  %i.u = fsub <4 x float> %i.r, %i.t              ; 3 uses
  %47 = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %48 = shufflevector <2 x float> %18, <2 x float> %47, <4 x i32> <i32 0, i32 3, i32 0, i32 0>
  %49 = fmul <4 x float> %48, <float 4.000000e+00, float 1.000000e+00, float 4.000000e+00, float 4.000000e+00>
  %i.v = fmul <4 x float> %i.u, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %50 = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <4 x float> %50, <4 x float> %36, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.w = fmul <4 x float> %51, %49
  %i.x = fsub <4 x float> %i.g, %i.w              ; 4 uses
  %i.y = extractelement <4 x float> %i.x, i64 2
  %i.z = tail call float @sqrtf(float noundef %i.y) #22, !tbaa !3
  %i.aa = extractelement <4 x float> %i.x, i64 3
  %i.ab = tail call float @sqrtf(float noundef %i.aa) #22, !tbaa !3
  %i.ac = extractelement <4 x float> %i.x, i64 0
  %i.ad = tail call float @sqrtf(float noundef %i.ac) #22, !tbaa !3
  %i.ae = fadd float %15, %i.ad
  %i.af = tail call float @sqrtf(float noundef %43) #22, !tbaa !3
  %i.ag = tail call float @sqrtf(float noundef %44) #22, !tbaa !3
  %i.ah = extractelement <4 x float> %i.x, i64 1
  %i.ai = tail call float @sqrtf(float noundef %i.ah) #22, !tbaa !3
  %i.aj = fadd float %46, %i.ai
  %i.ak = insertelement <4 x float> poison, float %7, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %8, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.ae, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 3
  %i.ao = fdiv <4 x float> %i.v, %i.an            ; 4 uses
  %i.ap = extractelement <4 x float> %i.ao, i64 0
  %i.aq = fadd float %1, %i.ap
  %i.ar = extractelement <4 x float> %i.ao, i64 1
  %i.as = fadd float %3, %i.ar
  %i.at = insertelement <2 x float> poison, float %i.z, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.ab, i64 1
  %i.av = fadd <2 x float> %40, %i.au
  %i.aw = fdiv <2 x float> %i.h, %i.av
  %i.ax = fmul <2 x float> %i.i, %i.aw
  %i.ay = extractelement <4 x float> %i.ao, i64 2
  %i.az = fmul float %14, %i.ay
  %i.ba = fsub <2 x float> %i.j, %i.ax
  %i.bb = fsub float %1, %i.az
  %i.bc = insertelement <2 x float> poison, float %i.af, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.ag, i64 1
  %i.be = fadd <2 x float> %45, %i.bd
  %i.bf = fdiv <2 x float> %i.n, %i.be
  %i.bg = fmul <2 x float> %i.e, %i.bf
  %i.bh = extractelement <4 x float> %i.ao, i64 3
  %i.bi = fmul float %19, %i.bh
  %i.bj = insertelement <2 x float> poison, float %2, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fsub <2 x float> %i.bk, %i.bg
  %i.bm = fsub float %2, %i.bi
  %i.bn = fcmp olt <2 x float> %32, %i.l
  %i.bo = select <2 x i1> %i.bn, <2 x float> %i.ba, <2 x float> %i.bl
  %i.bp = select i1 %29, float %i.bb, float %i.bm
  %i.bq = fsub <2 x float> %32, %33
  %i.br = insertelement <2 x float> poison, float %7, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fdiv <2 x float> %i.bq, %i.bs
  %i.bu = fadd <2 x float> %i.j, %i.bt
  %i.bv = fcmp olt <2 x float> %32, %33
  %i.bw = select <2 x i1> %i.bv, <2 x float> %i.bu, <2 x float> %i.bo
  %i.bx = select i1 %30, float %i.aq, float %i.bp
  %i.by = insertelement <2 x float> poison, float %6, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = fsub <2 x float> %32, %i.bz
  %i.cb = insertelement <2 x float> poison, float %8, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fdiv <2 x float> %i.ca, %i.cc
  %i.ce = insertelement <2 x float> poison, float %3, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fadd <2 x float> %i.cf, %i.cd
  %i.ch = fcmp olt <2 x float> %32, %i.bz
  %i.ci = select <2 x i1> %i.ch, <2 x float> %i.bw, <2 x float> %i.cg
  %i.cj = select i1 %31, float %i.bx, float %i.as
  store <2 x float> %i.ci, ptr %0, align 4, !tbaa !84
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cj, ptr %i.ck, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #22, !inline_history !103
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !62
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

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #22, !inline_history !104
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearRevOpCPUESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !62
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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !99
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !99
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_530DynamicPropertyGradingToneImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_125GradingToneLinearRevOpCPUD0Ev(ptr noundef nonnull align 8 dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116GradingToneOpCPUD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf:bb.a
  %i.gs = fadd float %..i51, %i.gr                ; 4 uses
  %i.gt = fsub float %i.gs, %i.ds                 ; 3 uses
  %i.gu = fsub float %i.dt, %i.ds                 ; 6 uses
  %i.gv = fdiv float %i.gt, %i.gu                 ; 2 uses
  %i.gw = fmul float %i.gu, %i.gv
  %i.gx = fmul float %i.gv, 5.000000e-01
  %i.gy = extractelement <2 x float> %i.dv, i64 1 ; 3 uses
  %i.gz = fsub float %i.gy, %i.dw                 ; 3 uses
  %i.ha = fmul float %i.gz, %i.gx
  %i.hb = fadd float %i.dw, %i.ha
  %i.hc = fmul float %i.gw, %i.hb
  %i.hd = fmul float %i.dw, %i.gt
  %i.he = extractelement <2 x float> %i.du, i64 0
  %i.hf = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hg = insertelement <2 x float> %i.hf, float %i.dp, i64 0
  %i.hh = insertelement <2 x float> poison, float %..i51, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hj = fsub <2 x float> %i.hg, %i.hi
  %i.hk = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hm = fmul <2 x float> %i.hj, %i.hl
  %i.hn = fadd <2 x float> %i.hi, %i.hm           ; 4 uses
  %i.ho = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.hq = fsub <2 x float> %i.hn, %i.hp           ; 3 uses
  %i.hr = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fdiv <2 x float> %i.hq, %i.hs           ; 2 uses
  %i.hu = fmul <2 x float> %i.hs, %i.ht
  %i.hv = fmul <2 x float> %i.ht, splat (float 5.000000e-01)
  %i.hw = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = fmul <2 x float> %i.hx, %i.hv
  %i.hz = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ia = fadd <2 x float> %i.hz, %i.hy
  %i.ib = fmul <2 x float> %i.hu, %i.ia
  %i.ic = fmul <2 x float> %i.hz, %i.hq
  %i.id = fcmp olt <2 x float> %i.hn, %i.hp
  %i.ie = select <2 x i1> %i.id, <2 x float> %i.ic, <2 x float> %i.ib
  %i.if = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = fadd <2 x float> %i.if, %i.ie           ; 2 uses
  %i.ih = fcmp olt float %i.gs, %i.ds
  %.v680.i = select i1 %i.ih, float %i.hd, float %i.hc
  %i.ii = fadd float %i.he, %.v680.i              ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ij = fsub float %i.ii, %i.ds
  %i.ik = fdiv float %i.ij, %i.dx
  %i.il = fadd float %i.ds, %i.ik
  %i.im = fdiv float %i.gu, %i.dx
  %i.in = fadd float %i.ds, %i.im
  %i.io = tail call float @llvm.fmuladd.f32(float %i.gu, float 9.900000e-01, float %i.ds) ; 2 uses
  %i.ip = fsub float %i.io, %i.ds
  %i.iq = fmul float %i.ip, %i.gz
  %i.ir = fdiv float %i.iq, %i.gu
  %i.is = fadd float %i.dw, %i.ir
  %i.it = fdiv float 1.000000e+00, %i.is
  %i.iu = fdiv float 1.000000e+00, %i.gy          ; 2 uses
  %i.iv = fsub float %i.iu, %i.it
  %i.iw = fmul float %i.iv, 5.000000e-01
  %i.ix = fsub float %i.dt, %i.io
  %i.iy = fdiv float %i.iw, %i.ix                 ; 4 uses
  %i.iz = fmul float %i.iy, -2.000000e+00
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.dt, float %i.iu) ; 6 uses
  %i.jb = fneg float %i.ja
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.dt, float %i.in)
  %i.jd = fneg float %i.dt
  %i.je = fmul float %i.iy, %i.jd
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.je, float %i.dt, float %i.jc) ; 3 uses
  %i.jg = fdiv float %i.gt, %i.dx
  %i.jh = fadd float %i.ds, %i.jg                 ; 2 uses
  %i.ji = fsub float %i.jf, %i.jh                 ; 2 uses
  %i.jj = fmul float %i.ja, %i.ja                 ; 3 uses
  %i.jk = fmul float %i.iy, 4.000000e+00          ; 3 uses
  %i.jl = fmul float %i.jk, %i.ji
  %i.jm = fsub float %i.jj, %i.jl
  %i.jn = fmul float %i.ji, -2.000000e+00
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.dt, float %i.ja)
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jo, float %i.dt, float %i.jf) ; 2 uses
  %i.jq = fsub <2 x float> %i.ig, %i.hp
  %i.jr = fdiv <2 x float> %i.jq, %i.hl
  %i.js = fadd <2 x float> %i.hp, %i.jr
  %i.jt = fdiv <2 x float> %i.hq, %i.hl
  %i.ju = fadd <2 x float> %i.hp, %i.jt           ; 2 uses
  %i.jv = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fsub <2 x float> %i.jw, %i.ju           ; 3 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 0
  %i.jz = fmul float %i.jk, %i.jy
  %i.ka = extractelement <2 x float> %i.jx, i64 1
  %i.kb = fmul float %i.jk, %i.ka
  %i.kc = fsub float %i.jj, %i.jz
  %i.kd = fsub float %i.jj, %i.kb
  %i.ke = tail call float @sqrtf(float noundef %i.kc) #22, !tbaa !3
  %i.kf = tail call float @sqrtf(float noundef %i.kd) #22, !tbaa !3
  %i.kg = tail call float @sqrtf(float noundef %i.jm) #22, !tbaa !3
  %i.kh = fmul <2 x float> %i.jx, splat (float -2.000000e+00)
  %i.ki = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kl = insertelement <2 x float> %i.kk, float %i.kf, i64 1
  %i.km = fadd <2 x float> %i.kj, %i.kl
  %i.kn = fadd float %i.ja, %i.kg
  %i.ko = fdiv <2 x float> %i.kh, %i.km
  %i.kp = fdiv float %i.jn, %i.kn
  %i.kq = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = fcmp olt <2 x float> %i.ju, %i.kr
  %i.kt = select <2 x i1> %i.ks, <2 x float> %i.js, <2 x float> %i.ko
  %i.ku = fcmp olt float %i.jh, %i.jp
  %i.kv = select i1 %i.ku, float %i.il, float %i.kp
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.kw = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ky = fsub <2 x float> %i.hn, %i.kx
  %i.kz = fsub float %i.gs, %i.dt
  %i.la = fmul float %i.gy, %i.kz
  %i.lb = extractelement <2 x float> %i.du, i64 1
  %i.lc = fadd float %i.lb, %i.la
  %i.ld = fcmp olt <2 x float> %i.hn, %i.kx
  %i.le = fcmp olt float %i.gs, %i.dt
  %i.lf = select i1 %i.le, float %i.ii, float %i.lc
  %i.lg = fsub float %i.lf, %i.dt
  %i.lh = fdiv float %i.lg, %i.dx
  %i.li = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = fmul <2 x float> %i.li, %i.ky
  %i.lk = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ll = fadd <2 x float> %i.lk, %i.lj
  %i.lm = select <2 x i1> %i.ld, <2 x float> %i.ig, <2 x float> %i.ll
  %i.ln = fsub <2 x float> %i.lm, %i.kx
  %i.lo = fdiv <2 x float> %i.ln, %i.hl
  %i.lp = fadd <2 x float> %i.kx, %i.lo
  %i.lq = fadd float %i.dt, %i.lh
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0574.0.i = phi <2 x float> [ %i.lp, %bb.m ], [ %i.kt, %bb.l ] ; 2 uses
  %.sroa.23.0.i = phi float [ %i.lq, %bb.m ], [ %i.kv, %bb.l ]
  %.sroa.0574.0.vec.extract589.i = extractelement <2 x float> %.sroa.0574.0.i, i64 0
  store float %.sroa.0574.0.vec.extract589.i, ptr %4, align 4, !tbaa !84
  %i.lr = shufflevector <2 x float> %.sroa.0574.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ls = insertelement <2 x float> %i.lr, float %.sroa.23.0.i, i64 1
  br label %.sink.split.i52

.sink.split.i52:                                  ; preds = %bb.n, %bb.i
  %i.lt = phi <2 x float> [ %i.ls, %bb.n ], [ %i.gn, %bb.i ]
  store <2 x float> %i.lt, ptr %i.dq, align 4, !tbaa !84
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBRevIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBRevIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit: ; preds = %.sink.split.i52, %bb.j, %.sink.split.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU15highlightShadowERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 {
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.h ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 4 uses
  %i.u = fcmp olt float %.0, 1.000000e+00
  %.not82 = icmp eq i32 %2, 3                     ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !84 ; 5 uses
  %i.x = load float, ptr %i.p, align 4, !tbaa !84 ; 4 uses
  %i.y = load <2 x float>, ptr %i.i, align 4, !tbaa !84 ; 3 uses
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !84 ; 3 uses
  %i.aa = load <2 x float>, ptr %i.n, align 4, !tbaa !84 ; 6 uses
  %7 = fsub <2 x float> %i.z, %i.y                ; 4 uses
  %8 = extractelement <2 x float> %i.aa, i64 1    ; 2 uses
  %9 = fmul float %8, -2.000000e+00
  %10 = tail call float @llvm.fmuladd.f32(float %i.x, float 2.000000e+00, float %9)
  %11 = extractelement <2 x float> %7, i64 1
  %12 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %13 = insertelement <2 x float> %i.aa, float %i.x, i64 1
  %14 = fsub <2 x float> %12, %13
  %15 = insertelement <2 x float> poison, float %i.w, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fsub <2 x float> %i.aa, %16               ; 2 uses
  %18 = fneg <2 x float> %17
  %19 = extractelement <2 x float> %i.y, i64 0
  %20 = fcmp olt float %i.w, %8
  %21 = extractelement <2 x float> %i.aa, i64 0
  %22 = fcmp olt float %i.w, %21
  %23 = load <2 x float>, ptr %i.s, align 8, !tbaa !84 ; 4 uses
  %24 = load float, ptr %i.t, align 4, !tbaa !84
  %25 = extractelement <2 x float> %23, i64 0
  %26 = fneg float %25
  %27 = fneg float %24
  %foldExtExtBinop.a = fmul <2 x float> %7, %23   ; 2 uses
  %28 = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %11, float %10) ; 2 uses
  %i.ab = insertelement <2 x float> %23, float %26, i64 0
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %7, <2 x float> %14)
  %30 = fmul <2 x float> %i.ac, splat (float 4.000000e+00)
  %31 = fmul <2 x float> %30, %18
  %32 = insertelement <2 x float> %foldExtExtBinop.a, float %29, i64 1 ; 2 uses
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %32, <2 x float> %31) ; 2 uses
  %i.ad = extractelement <2 x float> %33, i64 0
  %i.ae = tail call noundef float @sqrtf(float noundef %i.ad) #22, !tbaa !3
  %i.af = fadd float %28, %i.ae
  %34 = extractelement <2 x float> %33, i64 1
  %35 = tail call noundef float @sqrtf(float noundef %34) #22, !tbaa !3
  %36 = fadd float %29, %35
  %i.ag = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.w, i64 2
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.ai = shufflevector <2 x float> %17, <2 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.aj = insertelement <4 x float> %i.ai, float %i.x, i64 3 ; 2 uses
  %i.ak = fmul <4 x float> %i.ah, %i.aj
  %i.al = fsub <4 x float> %i.ah, %i.aj
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %37 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.an = insertelement <4 x float> %37, float %i.af, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %36, i64 1
  %i.ap = fdiv <4 x float> %i.am, %i.ao           ; 3 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ar = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %7, <2 x float> %i.ar) ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = extractelement <2 x float> %i.as, i64 1
  %i.av = select i1 %20, float %i.at, float %i.au
  %i.aw = extractelement <4 x float> %i.ap, i64 2
  %i.ax = fadd float %19, %i.aw
  %i.ay = select i1 %22, float %i.ax, float %i.av
  %i.az = extractelement <2 x float> %i.z, i64 1
  %i.ba = extractelement <4 x float> %i.ap, i64 3
  %i.bb = fadd float %i.az, %i.ba
  %i.bc = fcmp olt float %i.w, %i.x
  %i.bd = select i1 %i.bc, float %i.ay, float %i.bb
  store float %i.bd, ptr %i.v, align 4, !tbaa !84
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.be = load <2 x float>, ptr %4, align 4, !tbaa !84
  store <2 x float> %i.be, ptr %5, align 8, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !84
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bg, ptr %i.bh, align 8, !tbaa !84
  %i.bi = load float, ptr %i.i, align 4, !tbaa !84
  %i.bj = load float, ptr %i.j, align 4, !tbaa !84
  %i.bk = load float, ptr %i.k, align 4, !tbaa !84
  %i.bl = load float, ptr %i.n, align 4, !tbaa !84
  %i.bm = load float, ptr %i.o, align 4, !tbaa !84
  %i.bn = load float, ptr %i.p, align 4, !tbaa !84
  %i.bo = load float, ptr %i.s, align 8, !tbaa !84
  %i.bp = load float, ptr %i.t, align 4, !tbaa !84
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.bi, float noundef %i.bj, float noundef %i.bk, float noundef %i.bl, float noundef %i.bm, float noundef %i.bn, float noundef %i.bo, float noundef %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !84 ; 5 uses
  %i.bs = load float, ptr %i.n, align 4, !tbaa !84 ; 2 uses
  %i.bt = load float, ptr %i.o, align 4, !tbaa !84 ; 2 uses
  %i.bu = load float, ptr %i.p, align 4, !tbaa !84 ; 2 uses
  %i.bv = load float, ptr %i.s, align 8, !tbaa !84 ; 2 uses
  %i.bw = load float, ptr %i.t, align 4, !tbaa !84 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.i, align 4, !tbaa !84 ; 4 uses
  %i.by = load <2 x float>, ptr %i.j, align 4, !tbaa !84 ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %i.br, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fsub <2 x float> %i.ca, %i.bx           ; 2 uses
  %i.cc = fsub <2 x float> %i.by, %i.bx           ; 3 uses
  %i.cd = fdiv <2 x float> %i.cb, %i.cc           ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0 ; 6 uses
  %i.cf = fneg float %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ce, float 1.000000e+00)
  %i.ch = fmul float %i.ce, %i.bt
  %i.ci = fmul float %i.ce, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.cg, float %i.ci)
  %i.ck = fsub float 1.000000e+00, %i.ce
  %i.cl = fmul float %i.ck, %i.bv
  %i.cm = fmul float %i.ce, %i.cl
  %i.cn = extractelement <2 x float> %i.cc, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cn, float %i.cj)
  %i.cp = extractelement <2 x float> %i.cd, i64 1 ; 5 uses
  %i.cq = fsub float 1.000000e+00, %i.cp          ; 2 uses
  %i.cr = fmul float %i.bt, %i.cq
  %i.cs = fsub float 2.000000e+00, %i.cp
  %i.ct = fmul float %i.bu, %i.cs
  %i.cu = fmul float %i.cp, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cq, float %i.cu)
  %i.cw = fadd float %i.cp, -1.000000e+00
  %i.cx = fmul float %i.cw, %i.bw
  %i.cy = fmul float %i.cp, %i.cx
  %i.cz = extractelement <2 x float> %i.cc, i64 1
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cz, float %i.cv)
  %i.db = extractelement <2 x float> %i.bx, i64 1
  %i.dc = fcmp olt float %i.br, %i.db
  %i.dd = select i1 %i.dc, float %i.co, float %i.da
  %i.de = extractelement <2 x float> %i.cb, i64 0
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.bv, float %i.bs)
  %i.dg = extractelement <2 x float> %i.bx, i64 0
  %i.dh = fcmp olt float %i.br, %i.dg
  %i.di = select i1 %i.dh, float %i.df, float %i.dd
  %i.dj = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.dk = fsub float %i.br, %i.dj
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.bw, float %i.bu)
  %i.dm = fcmp olt float %i.br, %i.dj
  %i.dn = select i1 %i.dm, float %i.di, float %i.dl
  store float %i.dn, ptr %i.bq, align 4, !tbaa !84
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.do = load <2 x float>, ptr %4, align 4, !tbaa !84
  store <2 x float> %i.do, ptr %6, align 8, !tbaa !84
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !84
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.dq, ptr %i.dr, align 8, !tbaa !84
  %i.ds = load float, ptr %i.i, align 4, !tbaa !84
  %i.dt = load float, ptr %i.j, align 4, !tbaa !84
  %i.du = load float, ptr %i.k, align 4, !tbaa !84
  %i.dv = load float, ptr %i.n, align 4, !tbaa !84
  %i.dw = load float, ptr %i.o, align 4, !tbaa !84
  %i.dx = load float, ptr %i.p, align 4, !tbaa !84
  %i.dy = load float, ptr %i.s, align 8, !tbaa !84
  %i.dz = load float, ptr %i.t, align 4, !tbaa !84
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.ds, float noundef %i.dt, float noundef %i.du, float noundef %i.dv, float noundef %i.dw, float noundef %i.dx, float noundef %i.dy, float noundef %i.dz, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(936) %1, i32 noundef range(i32 0, 4) %2, ptr nofree noundef captures(none) %3) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call noundef float @_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %2) ; 2 uses
  %i.c = fcmp ogt float %i.b, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.c, float %i.b, float f0x3C23D70A ; 2 uses
  %i.d = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.d, float 1.990000e+00, float %.sroa.speculated2.i
  %i.e = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.r

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
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !84 ; 13 uses
  %i.ad = load float, ptr %i.t, align 4, !tbaa !84
  %i.ae = fcmp ult float %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load float, ptr %i.h, align 8, !tbaa !84
  %i.ag = load float, ptr %i.o, align 8, !tbaa !84
  %i.ah = fsub float %i.ac, %i.ag
  %i.ai = load float, ptr %i.v, align 8, !tbaa !84
  %i.aj = fdiv float %i.ah, %i.ai
  %i.ak = fadd float %i.af, %i.aj
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.al = load float, ptr %i.s, align 8, !tbaa !84 ; 2 uses
  %i.am = fcmp ult float %i.ac, %i.al
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = fsub float %i.al, %i.ac                 ; 2 uses
  %i.ao = load float, ptr %i.z, align 8, !tbaa !84 ; 2 uses
  %i.ap = load float, ptr %i.m, align 4, !tbaa !84
  %i.aq = load float, ptr %i.l, align 8, !tbaa !84 ; 2 uses
  %i.ar = fsub float %i.ap, %i.aq                 ; 3 uses
  %i.as = fmul float %i.ao, %i.ar                 ; 3 uses
  %i.at = load float, ptr %i.aa, align 4, !tbaa !84
  %i.au = fsub float %i.at, %i.ao
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fmul float %i.ar, %i.av
  %i.ax = fmul float %i.aw, 4.000000e+00
  %i.ay = fneg float %i.an
  %i.az = fmul float %i.ax, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.az)
  %i.bb = tail call noundef float @sqrtf(float noundef %i.ba) #22, !tbaa !3
  %i.bc = fmul float %i.an, 2.000000e+00
  %i.bd = fneg float %i.bb
  %i.be = fsub float %i.bd, %i.as
  %i.bf = fdiv float %i.bc, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ar, float %i.aq)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.bh = load float, ptr %i.r, align 4, !tbaa !84 ; 2 uses
  %i.bi = fcmp ult float %i.ac, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = fsub float %i.bh, %i.ac                 ; 2 uses
  %i.bk = load float, ptr %i.y, align 4, !tbaa !84 ; 2 uses
  %i.bl = load float, ptr %i.l, align 8, !tbaa !84
end_hunk_2
