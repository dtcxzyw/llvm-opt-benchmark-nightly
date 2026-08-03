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
  %i.cl = fmul <2 x float> %7, %23                ; 2 uses
  %28 = extractelement <2 x float> %i.cl, i64 0
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %11, float %10) ; 2 uses
  %i.cm = insertelement <2 x float> %23, float %26, i64 0
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %7, <2 x float> %14)
  %30 = fmul <2 x float> %i.cn, splat (float 4.000000e+00)
  %31 = fmul <2 x float> %30, %18
  %32 = insertelement <2 x float> %i.cl, float %29, i64 1 ; 2 uses
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %32, <2 x float> %31) ; 2 uses
  %i.co = extractelement <2 x float> %33, i64 0
  %i.cp = tail call noundef float @sqrtf(float noundef %i.co) #22, !tbaa !3
  %i.cq = fadd float %28, %i.cp
  %34 = extractelement <2 x float> %33, i64 1
  %35 = tail call noundef float @sqrtf(float noundef %34) #22, !tbaa !3
  %36 = fadd float %29, %35
  %i.cr = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.cg, i64 2
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.ct = shufflevector <2 x float> %17, <2 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float %i.ch, i64 3 ; 2 uses
  %i.cv = fmul <4 x float> %i.cs, %i.cu
  %i.cw = fsub <4 x float> %i.cs, %i.cu
  %i.cx = shufflevector <4 x float> %i.cv, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %37 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.cy = insertelement <4 x float> %37, float %i.cq, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %36, i64 1
  %i.da = fdiv <4 x float> %i.cx, %i.cz           ; 3 uses
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dc = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %7, <2 x float> %i.dc) ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0
  %i.df = extractelement <2 x float> %i.dd, i64 1
  %i.dg = select i1 %20, float %i.de, float %i.df
  %i.dh = extractelement <4 x float> %i.da, i64 2
  %i.di = fadd float %19, %i.dh
  %i.dj = select i1 %22, float %i.di, float %i.dg
  %i.dk = extractelement <2 x float> %i.cj, i64 1
  %i.dl = extractelement <4 x float> %i.da, i64 3
  %i.dm = fadd float %i.dk, %i.dl
  %i.dn = fcmp olt float %i.cg, %i.ch
  %i.do = select i1 %i.dn, float %i.dj, float %i.dm
  store float %i.do, ptr %i.cf, align 4, !tbaa !84
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dp = load <2 x float>, ptr %4, align 4, !tbaa !84
  store <2 x float> %i.dp, ptr %6, align 8, !tbaa !84
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !84
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.dr, ptr %i.ds, align 8, !tbaa !84
  %i.dt = load float, ptr %i.i, align 4, !tbaa !84
  %i.du = load float, ptr %i.j, align 4, !tbaa !84
  %i.dv = load float, ptr %i.k, align 4, !tbaa !84
  %i.dw = load float, ptr %i.n, align 4, !tbaa !84
  %i.dx = load float, ptr %i.o, align 4, !tbaa !84
  %i.dy = load float, ptr %i.p, align 4, !tbaa !84
  %i.dz = load float, ptr %i.s, align 8, !tbaa !84
  %i.ea = load float, ptr %i.t, align 4, !tbaa !84
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.dt, float noundef %i.du, float noundef %i.dv, float noundef %i.dw, float noundef %i.dx, float noundef %i.dy, float noundef %i.dz, float noundef %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %6)
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
  %i.aw = extractelement <2 x float> %i.v, i64 0  ; 3 uses
  %i.ax = extractelement <2 x float> %i.v, i64 1  ; 3 uses
  %i.ay = fsub float %i.ax, %i.aw                 ; 2 uses
  %i.az = fmul float %i.ay, 5.000000e-01
  %i.ba = fsub float %i.s, %i.t                   ; 6 uses
  %i.bb = fmul float %i.ba, %i.az
  %i.bc = fmul float %i.ba, %i.aw                 ; 3 uses
  %i.bd = fmul float %i.bb, 4.000000e+00
  %i.be = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.av, float %i.w, float %..i) ; 6 uses
  %i.bg = fsub float %i.bf, %i.be
  %i.bh = fsub float %i.be, %i.bf                 ; 2 uses
  %i.bi = fneg float %i.bh
  %i.bj = fmul float %i.bd, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bj)
  %i.bl = tail call noundef float @sqrtf(float noundef %i.bk) #22, !tbaa !3
  %i.bm = fadd float %i.bc, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bg, i64 1
  %i.bp = fmul <2 x float> %i.bo, <float -2.000000e+00, float 1.000000e+00>
  %i.bq = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x float> %i.bq, float %i.bm, i64 0
  %i.bs = fdiv <2 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ba, float %i.t)
  %shift11 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fadd <2 x float> %i.r, %shift11
  %i.bv = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.bw = fcmp olt float %i.bf, %i.be
  %i.bx = select i1 %i.bw, float %i.bv, float %i.bu ; 2 uses
  br i1 %3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = fsub float %i.bx, %i.t
  %i.bz = fdiv float %i.by, %i.w
  %i.ca = fadd float %i.t, %i.bz
  %i.cb = fdiv float %i.ba, %i.w
  %i.cc = fadd float %i.t, %i.cb
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
  %i.cn = insertelement <2 x float> %i.cm, float %i.bf, i64 1
  %i.co = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cp = insertelement <2 x float> %i.co, float %i.ci, i64 0
  %i.cq = fsub <2 x float> %i.cn, %i.cp
  %i.cr = fmul <2 x float> %i.cq, <float 5.000000e-01, float 1.000000e+00>
  %i.cs = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.w, i64 1
  %i.cu = fdiv <2 x float> %i.cr, %i.ct           ; 2 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0 ; 3 uses
  %i.cw = fmul float %i.cv, -2.000000e+00
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.s, float %i.cj) ; 2 uses
  %i.cy = fneg float %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.s, float %i.cc)
  %i.da = fmul float %i.cv, %i.cl
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.s, float %i.cz)
  %shift14 = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fadd <2 x float> %i.r, %shift14
  %i.dc = extractelement <2 x float> %foldExtExtBinop15, i64 0 ; 3 uses
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.dc, float %i.cx)
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dc, float %i.db)
  %i.df = fcmp olt float %i.dc, %i.s
  %i.dg = select i1 %i.df, float %i.ca, float %i.de
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.dh = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.di = fsub float %i.bf, %i.dh
  %i.dj = fdiv float %i.di, %i.ax
  %i.dk = fadd float %i.s, %i.dj
  %i.dl = fcmp olt float %i.bf, %i.dh
  %i.dm = select i1 %i.dl, float %i.bx, float %i.dk
  %i.dn = fsub float %i.dm, %i.s
  %i.do = fdiv float %i.dn, %i.w
  %i.dp = fadd float %i.s, %i.do
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.c
  %.0.sink.i = phi float [ %i.at, %bb.c ], [ %i.dp, %bb.g ], [ %i.dg, %bb.f ]
  store float %.0.sink.i, ptr %i.p, align 4, !tbaa !84
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.h:                                             ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dt = load float, ptr %4, align 4, !tbaa !84  ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !84 ; 6 uses
  %i.dw = load float, ptr %i.i, align 8, !tbaa !84 ; 5 uses
  %i.dx = load float, ptr %i.dr, align 4, !tbaa !84 ; 5 uses
  %i.dy = load float, ptr %i.ds, align 4, !tbaa !84 ; 17 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf:bb.a
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
  %i.ab = fmul <2 x float> %7, %23                ; 2 uses
  %28 = extractelement <2 x float> %i.ab, i64 0
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %11, float %10) ; 2 uses
  %i.ac = insertelement <2 x float> %23, float %26, i64 0
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %7, <2 x float> %14)
  %30 = fmul <2 x float> %i.ad, splat (float 4.000000e+00)
  %31 = fmul <2 x float> %30, %18
  %32 = insertelement <2 x float> %i.ab, float %29, i64 1 ; 2 uses
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %32, <2 x float> %31) ; 2 uses
  %i.ae = extractelement <2 x float> %33, i64 0
  %i.af = tail call noundef float @sqrtf(float noundef %i.ae) #22, !tbaa !3
  %i.ag = fadd float %28, %i.af
  %34 = extractelement <2 x float> %33, i64 1
  %35 = tail call noundef float @sqrtf(float noundef %34) #22, !tbaa !3
  %36 = fadd float %29, %35
  %i.ah = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.w, i64 2
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.aj = shufflevector <2 x float> %17, <2 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float %i.x, i64 3 ; 2 uses
  %i.al = fmul <4 x float> %i.ai, %i.ak
  %i.am = fsub <4 x float> %i.ai, %i.ak
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %37 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ao = insertelement <4 x float> %37, float %i.ag, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %36, i64 1
  %i.aq = fdiv <4 x float> %i.an, %i.ap           ; 3 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.as = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %7, <2 x float> %i.as) ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  %i.av = extractelement <2 x float> %i.at, i64 1
  %i.aw = select i1 %20, float %i.au, float %i.av
  %i.ax = extractelement <4 x float> %i.aq, i64 2
  %i.ay = fadd float %19, %i.ax
  %i.az = select i1 %22, float %i.ay, float %i.aw
  %i.ba = extractelement <2 x float> %i.z, i64 1
  %i.bb = extractelement <4 x float> %i.aq, i64 3
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = fcmp olt float %i.w, %i.x
  %i.be = select i1 %i.bd, float %i.az, float %i.bc
  store float %i.be, ptr %i.v, align 4, !tbaa !84
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bf = load <2 x float>, ptr %4, align 4, !tbaa !84
  store <2 x float> %i.bf, ptr %5, align 8, !tbaa !84
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bh, ptr %i.bi, align 8, !tbaa !84
  %i.bj = load float, ptr %i.i, align 4, !tbaa !84
  %i.bk = load float, ptr %i.j, align 4, !tbaa !84
  %i.bl = load float, ptr %i.k, align 4, !tbaa !84
  %i.bm = load float, ptr %i.n, align 4, !tbaa !84
  %i.bn = load float, ptr %i.o, align 4, !tbaa !84
  %i.bo = load float, ptr %i.p, align 4, !tbaa !84
  %i.bp = load float, ptr %i.s, align 8, !tbaa !84
  %i.bq = load float, ptr %i.t, align 4, !tbaa !84
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.bj, float noundef %i.bk, float noundef %i.bl, float noundef %i.bm, float noundef %i.bn, float noundef %i.bo, float noundef %i.bp, float noundef %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !84 ; 5 uses
  %i.bt = load float, ptr %i.n, align 4, !tbaa !84 ; 2 uses
  %i.bu = load float, ptr %i.o, align 4, !tbaa !84 ; 2 uses
  %i.bv = load float, ptr %i.p, align 4, !tbaa !84 ; 2 uses
  %i.bw = load float, ptr %i.s, align 8, !tbaa !84 ; 2 uses
  %i.bx = load float, ptr %i.t, align 4, !tbaa !84 ; 2 uses
  %i.by = load <2 x float>, ptr %i.i, align 4, !tbaa !84 ; 4 uses
  %i.bz = load <2 x float>, ptr %i.j, align 4, !tbaa !84 ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fsub <2 x float> %i.cb, %i.by           ; 2 uses
  %i.cd = fsub <2 x float> %i.bz, %i.by           ; 3 uses
  %i.ce = fdiv <2 x float> %i.cc, %i.cd           ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0 ; 6 uses
  %i.cg = fneg float %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cf, float 1.000000e+00)
  %i.ci = fmul float %i.cf, %i.bu
  %i.cj = fmul float %i.cf, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ch, float %i.cj)
  %i.cl = fsub float 1.000000e+00, %i.cf
  %i.cm = fmul float %i.cl, %i.bw
  %i.cn = fmul float %i.cf, %i.cm
  %i.co = extractelement <2 x float> %i.cd, i64 0
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.ck)
  %i.cq = extractelement <2 x float> %i.ce, i64 1 ; 5 uses
  %i.cr = fsub float 1.000000e+00, %i.cq          ; 2 uses
  %i.cs = fmul float %i.bu, %i.cr
  %i.ct = fsub float 2.000000e+00, %i.cq
  %i.cu = fmul float %i.bv, %i.ct
  %i.cv = fmul float %i.cq, %i.cu
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cr, float %i.cv)
  %i.cx = fadd float %i.cq, -1.000000e+00
  %i.cy = fmul float %i.cx, %i.bx
  %i.cz = fmul float %i.cq, %i.cy
  %i.da = extractelement <2 x float> %i.cd, i64 1
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.da, float %i.cw)
  %i.dc = extractelement <2 x float> %i.by, i64 1
  %i.dd = fcmp olt float %i.bs, %i.dc
  %i.de = select i1 %i.dd, float %i.cp, float %i.db
  %i.df = extractelement <2 x float> %i.cc, i64 0
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.bw, float %i.bt)
  %i.dh = extractelement <2 x float> %i.by, i64 0
  %i.di = fcmp olt float %i.bs, %i.dh
  %i.dj = select i1 %i.di, float %i.dg, float %i.de
  %i.dk = extractelement <2 x float> %i.bz, i64 1 ; 2 uses
  %i.dl = fsub float %i.bs, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.bx, float %i.bv)
  %i.dn = fcmp olt float %i.bs, %i.dk
  %i.do = select i1 %i.dn, float %i.dj, float %i.dm
  store float %i.do, ptr %i.br, align 4, !tbaa !84
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dp = load <2 x float>, ptr %4, align 4, !tbaa !84
  store <2 x float> %i.dp, ptr %6, align 8, !tbaa !84
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !84
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.dr, ptr %i.ds, align 8, !tbaa !84
  %i.dt = load float, ptr %i.i, align 4, !tbaa !84
  %i.du = load float, ptr %i.j, align 4, !tbaa !84
  %i.dv = load float, ptr %i.k, align 4, !tbaa !84
  %i.dw = load float, ptr %i.n, align 4, !tbaa !84
  %i.dx = load float, ptr %i.o, align 4, !tbaa !84
  %i.dy = load float, ptr %i.p, align 4, !tbaa !84
  %i.dz = load float, ptr %i.s, align 8, !tbaa !84
  %i.ea = load float, ptr %i.t, align 4, !tbaa !84
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.dt, float noundef %i.du, float noundef %i.dv, float noundef %i.dw, float noundef %i.dx, float noundef %i.dy, float noundef %i.dz, float noundef %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %6)
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
end_hunk_1
