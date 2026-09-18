Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf:bb.a
  %i.hj = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x float> %i.hh, %i.hk
  %i.hm = fmul float %i.hi, %i.dr
  %i.hn = shufflevector <4 x float> %i.dh, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ho = fadd <2 x float> %i.hn, %i.hl
  %i.hp = fadd float %i.di, %i.hm
  %i.hq = fmul <2 x float> %i.he, %i.ho
  %i.hr = fmul float %i.hg, %i.hp
  %i.hs = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fadd <2 x float> %i.ht, %i.hq
  %i.hv = fadd float %i.cw, %i.hr
  %i.hw = fmul <2 x float> %i.ey, %i.ez
  %i.hx = fmul float %i.dq, %i.fa
  %i.hy = fmul <2 x float> %i.ez, splat (float 5.000000e-01)
  %i.hz = fmul float %i.fa, 5.000000e-01
  %i.ia = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.hy, %i.ib
  %i.id = fmul float %i.hz, %i.do
  %i.ie = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fadd <2 x float> %i.ie, %i.ic
  %i.ig = fadd float %i.dn, %i.id
  %i.ih = fmul <2 x float> %i.hw, %i.if
  %i.ii = fmul float %i.hx, %i.ig
  %i.ij = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = fadd <2 x float> %i.ik, %i.ih
  %i.im = fadd float %i.cx, %i.ii
  %i.in = fmul <2 x float> %i.dd, %i.fk
  %foldExtExtBinop175 = fmul <4 x float> %i.eq, %i.dh
  %i.io = extractelement <4 x float> %foldExtExtBinop175, i64 0
  %i.ip = fadd <2 x float> %i.fq, %i.in
  %i.iq = fadd float %i.ct, %i.io
  %i.ir = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.is = fsub <2 x float> %i.cz, %i.ir
  %i.it = fsub float %i.cs, %i.dg
  %i.iu = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iv = fmul <2 x float> %i.is, %i.iu
  %i.iw = fmul float %i.it, %i.dm
  %i.ix = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fadd <2 x float> %i.iv, %i.iy
  %i.ja = fadd float %i.iw, %i.cy
  %i.jb = fcmp olt <2 x float> %i.cz, %i.dw
  %i.jc = select <2 x i1> %i.jb, <2 x float> %i.fr, <2 x float> %i.gd
  %i.jd = extractelement <2 x float> %i.ec, i64 0
  %i.je = fcmp olt float %i.cs, %i.jd
  %i.jf = select i1 %i.je, float %i.fs, float %i.go
  %i.jg = fcmp olt <2 x float> %i.cz, %i.dy
  %i.jh = select <2 x i1> %i.jg, <2 x float> %i.jc, <2 x float> %i.hc
  %i.ji = fcmp olt float %i.cs, %i.ed
  %i.jj = select i1 %i.ji, float %i.jf, float %i.hd
  %i.jk = fcmp olt <2 x float> %i.cz, %i.ea
  %i.jl = select <2 x i1> %i.jk, <2 x float> %i.jh, <2 x float> %i.hu
  %i.jm = fcmp olt float %i.cs, %i.db
  %i.jn = select i1 %i.jm, float %i.jj, float %i.hv
  %i.jo = fcmp olt <2 x float> %i.cz, %i.eu
  %i.jp = select <2 x i1> %i.jo, <2 x float> %i.jl, <2 x float> %i.il
  %i.jq = fcmp olt float %i.cs, %i.dp
  %i.jr = select i1 %i.jq, float %i.jn, float %i.im
  %i.js = fcmp olt <2 x float> %i.cz, %i.dc
  %i.jt = select <2 x i1> %i.js, <2 x float> %i.ip, <2 x float> %i.jp
  %i.ju = fcmp olt float %i.cs, %i.de
  %i.jv = select i1 %i.ju, float %i.iq, float %i.jr
  %i.jw = fcmp olt <2 x float> %i.cz, %i.ir
  %i.jx = select <2 x i1> %i.jw, <2 x float> %i.jt, <2 x float> %i.iz
  %i.jy = fcmp olt float %i.cs, %i.dg
  %i.jz = select i1 %i.jy, float %i.jv, float %i.ja
  store <2 x float> %i.jx, ptr %3, align 4, !tbaa !70
  store float %i.jz, ptr %i.cr, align 4, !tbaa !70
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
  %i.w = load float, ptr %i.v, align 4, !tbaa !70 ; 5 uses
  %i.x = load float, ptr %i.n, align 4, !tbaa !70 ; 2 uses
  %i.y = load float, ptr %i.o, align 4, !tbaa !70 ; 2 uses
  %i.z = load float, ptr %i.p, align 4, !tbaa !70 ; 2 uses
  %i.aa = load float, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.ab = load float, ptr %i.t, align 4, !tbaa !70 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 4 uses
  %i.ad = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 2 uses
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
  %7 = extractelement <2 x float> %i.cl, i64 0
  %i.cm = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.cn = fmul float %i.cm, -2.000000e+00
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ch, float 2.000000e+00, float %i.cn)
  %i.cp = extractelement <2 x float> %i.cl, i64 1 ; 2 uses
  %i.cq = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = insertelement <2 x float> %i.ck, float %i.ch, i64 1
  %i.cs = fsub <2 x float> %i.cq, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fsub <2 x float> %i.ck, %i.cu           ; 2 uses
  %i.cw = fneg <2 x float> %i.cv
  %8 = extractelement <2 x float> %i.ci, i64 0
  %9 = extractelement <2 x float> %i.cj, i64 0
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
  %i.ed = fdiv <4 x float> %i.dz, %i.ec           ; 3 uses
  %10 = extractelement <4 x float> %i.ed, i64 0
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %7, float %8)
  %i.ee = extractelement <4 x float> %i.ed, i64 1
  %12 = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.cp, float %9)
  %i.ef = select i1 %i.cx, float %11, float %12
  %i.eg = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.eh = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ei = fadd <2 x float> %i.eg, %i.eh           ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 0
  %i.ek = select i1 %i.cz, float %i.ej, float %i.ef
  %i.el = fcmp olt float %i.cg, %i.ch
  %i.em = extractelement <2 x float> %i.ei, i64 1
  %i.en = select i1 %i.el, float %i.ek, float %i.em
  store float %i.en, ptr %i.cf, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.eo = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.eo, ptr %6, align 8, !tbaa !70
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !70
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.eq, ptr %i.er, align 8, !tbaa !70
  %i.es = load float, ptr %i.i, align 4, !tbaa !70
  %i.et = load float, ptr %i.j, align 4, !tbaa !70
  %i.eu = load float, ptr %i.k, align 4, !tbaa !70
  %i.ev = load float, ptr %i.n, align 4, !tbaa !70
  %i.ew = load float, ptr %i.o, align 4, !tbaa !70
  %i.ex = load float, ptr %i.p, align 4, !tbaa !70
  %i.ey = load float, ptr %i.s, align 8, !tbaa !70
  %i.ez = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.es, float noundef %i.et, float noundef %i.eu, float noundef %i.ev, float noundef %i.ew, float noundef %i.ex, float noundef %i.ey, float noundef %i.ez, ptr noundef nonnull align 4 dereferenceable(12) %6)
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
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.e ; 2 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.e ; 2 uses
  %8 = load float, ptr %i.p, align 4, !tbaa !70   ; 5 uses
  %i.q = load float, ptr %i.f, align 8, !tbaa !70 ; 13 uses
  %9 = load float, ptr %5, align 4, !tbaa !70     ; 14 uses
  %10 = load float, ptr %i.i, align 8, !tbaa !70  ; 5 uses
  %11 = load float, ptr %6, align 4, !tbaa !70    ; 3 uses
  %12 = load float, ptr %i.l, align 8, !tbaa !70  ; 7 uses
  %13 = load float, ptr %7, align 4, !tbaa !70    ; 5 uses
  %i.r = load float, ptr %i.o, align 4, !tbaa !70 ; 4 uses
  %i.s = fsub float 2.000000e+00, %i.a
  %i.t = select i1 %3, float %i.s, float %i.a     ; 2 uses
  %i.u = fcmp olt float %i.t, 1.000000e+00
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = fsub float %8, %i.q                      ; 2 uses
  %14 = fsub float %9, %i.q                       ; 2 uses
  %i.w = fdiv float %i.v, %14                     ; 2 uses
  %i.x = fmul float %14, %i.w
  %i.y = fmul float %i.w, 5.000000e-01
  %15 = fsub float %13, %12
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %15, float %12)
  %16 = tail call float @llvm.fmuladd.f32(float %i.x, float %i.z, float %10)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.v, float %12, float %10)
  %i.ab = fcmp olt float %8, %i.q
  %17 = select i1 %i.ab, float %i.aa, float %16
  %18 = fsub float %8, %9
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %13, float %11)
  %i.ac = fcmp olt float %8, %9
  %i.ad = select i1 %i.ac, float %17, float %19
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.ae = fcmp ogt float %i.t, 1.000000e+00
  br i1 %i.ae, label %bb.e, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.e:                                             ; preds = %bb.d
  %..i = select i1 %3, float %9, float %i.q       ; 2 uses
  %i.af = fsub float %8, %..i
  %i.ag = fsub float %13, %12                     ; 2 uses
  %i.ah = fmul float %i.ag, 5.000000e-01
  %i.ai = fsub float %9, %i.q                     ; 6 uses
  %i.aj = fmul float %i.ai, %i.ah
  %i.ak = fmul float %i.ai, %12                   ; 3 uses
  %i.al = fmul float %i.aj, 4.000000e+00
  %i.am = tail call float @llvm.fmuladd.f32(float %i.af, float %i.r, float %..i) ; 6 uses
  %i.an = fsub float %i.am, %10
  %i.ao = fsub float %10, %i.am                   ; 2 uses
  %i.ap = fneg float %i.ao
  %i.aq = fmul float %i.al, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.aq)
  %i.as = tail call noundef float @sqrtf(float noundef %i.ar) #22
  %i.at = fadd float %i.ak, %i.as
  %i.au = insertelement <2 x float> poison, float %i.an, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.ao, i64 1
  %i.aw = fmul <2 x float> %i.av, <float 1.000000e+00, float -2.000000e+00>
  %20 = insertelement <2 x float> poison, float %12, i64 0
  %i.ax = insertelement <2 x float> %20, float %i.at, i64 1
  %i.ay = fdiv <2 x float> %i.aw, %i.ax           ; 2 uses
  %i.az = extractelement <2 x float> %i.ay, i64 1
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ai, float %i.q)
  %21 = extractelement <2 x float> %i.ay, i64 0
  %22 = fadd float %i.q, %21
  %i.bb = fcmp olt float %i.am, %10
  %i.bc = select i1 %i.bb, float %22, float %i.ba ; 2 uses
  br i1 %3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = fsub float %i.bc, %i.q
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ai, i64 1
  %i.bg = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fdiv <2 x float> %i.bf, %i.bh
  %23 = insertelement <2 x float> poison, float %i.q, i64 0
  %i.bj = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fadd <2 x float> %i.bj, %i.bi           ; 2 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ai, float 9.900000e-01, float %i.q) ; 2 uses
  %i.bm = fsub float %i.bl, %i.q
  %i.bn = fmul float %i.bm, %i.ag
  %i.bo = fdiv float %i.bn, %i.ai
  %i.bp = fadd float %12, %i.bo
  %i.bq = fdiv float 1.000000e+00, %i.bp
  %i.br = fdiv float 1.000000e+00, %13            ; 2 uses
  %i.bs = fsub float %9, %i.bl
  %i.bt = fneg float %9
  %24 = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bu = insertelement <2 x float> %24, float %i.am, i64 1
  %i.bv = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.q, i64 1
  %i.bx = fsub <2 x float> %i.bu, %i.bw
  %i.by = fmul <2 x float> %i.bx, <float 5.000000e-01, float 1.000000e+00>
  %i.bz = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.r, i64 1
  %i.cb = fdiv <2 x float> %i.by, %i.ca           ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 3 uses
  %i.cd = fmul float %i.cc, -2.000000e+00
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %9, float %i.br) ; 2 uses
  %i.cf = fneg float %i.ce
  %i.cg = extractelement <2 x float> %i.bk, i64 1
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cf, float %9, float %i.cg)
  %i.ci = fmul float %i.cc, %i.bt
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %9, float %i.ch)
  %25 = extractelement <2 x float> %i.cb, i64 1
  %26 = fadd float %i.q, %25                      ; 3 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cc, float %26, float %i.ce)
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %26, float %i.cj)
  %i.cm = fcmp olt float %26, %9
  %i.cn = extractelement <2 x float> %i.bk, i64 0
  %i.co = select i1 %i.cm, float %i.cn, float %i.cl
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.cp = fsub float %i.am, %11
  %i.cq = fdiv float %i.cp, %13
  %i.cr = fadd float %9, %i.cq
  %i.cs = fcmp olt float %i.am, %11
  %i.ct = select i1 %i.cs, float %i.bc, float %i.cr
  %i.cu = fsub float %i.ct, %9
  %i.cv = fdiv float %i.cu, %i.r
  %i.cw = fadd float %9, %i.cv
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.c
  %.0.sink.i = phi float [ %i.ad, %bb.c ], [ %i.cw, %bb.g ], [ %i.co, %bb.f ]
  store float %.0.sink.i, ptr %i.p, align 4, !tbaa !70
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.h:                                             ; preds = %bb.a
  %i.cx = load float, ptr %4, align 4, !tbaa !70  ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cz = load float, ptr %i.i, align 8, !tbaa !70 ; 5 uses
  %i.da = load float, ptr %6, align 4, !tbaa !70  ; 5 uses
  %i.db = load <2 x float>, ptr %i.cy, align 4, !tbaa !70 ; 6 uses
  %i.dc = load <2 x float>, ptr %i.f, align 8, !tbaa !70 ; 5 uses
  %i.dd = load float, ptr %5, align 4, !tbaa !70  ; 16 uses
  %i.de = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 6 uses
  %i.df = load float, ptr %7, align 4, !tbaa !70  ; 6 uses
  %i.dg = load float, ptr %i.o, align 4, !tbaa !70 ; 6 uses
  %i.dh = fsub float 2.000000e+00, %i.a
  %i.di = select i1 %3, float %i.dh, float %i.a   ; 2 uses
  %i.dj = fcmp olt float %i.di, 1.000000e+00
  br i1 %i.dj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dk = extractelement <2 x float> %i.dc, i64 0 ; 3 uses
  %i.dl = fsub float %i.cx, %i.dk                 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = fsub <2 x float> %i.db, %i.dm           ; 2 uses
  %i.do = fsub float %i.dd, %i.dk                 ; 3 uses
  %i.dp = fdiv float %i.dl, %i.do                 ; 2 uses
  %i.dq = fmul float %i.do, %i.dp
  %i.dr = fmul float %i.dp, 5.000000e-01
  %i.ds = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.dt = fsub float %i.df, %i.ds                 ; 2 uses
  %i.du = fmul float %i.dr, %i.dt
  %i.dv = fadd float %i.ds, %i.du
  %i.dw = fmul float %i.dq, %i.dv
  %i.dx = fmul float %i.dl, %i.ds
  %i.dy = fcmp olt float %i.cx, %i.dk
  %.v640.i = select i1 %i.dy, float %i.dx, float %i.dw
  %i.dz = fadd float %i.cz, %.v640.i
  %i.ea = fcmp olt <2 x float> %i.db, %i.dm
  %i.eb = fsub float %i.cx, %i.dd
  %i.ec = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ed = fsub <2 x float> %i.db, %i.ec
  %i.ee = fmul float %i.eb, %i.df
  %i.ef = fadd float %i.da, %i.ee
  %i.eg = insertelement <2 x float> poison, float %i.do, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ei = fdiv <2 x float> %i.dn, %i.eh           ; 2 uses
  %i.ej = fmul <2 x float> %i.eh, %i.ei
  %i.ek = fmul <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.el = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.ek, %i.em
  %i.eo = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fadd <2 x float> %i.eo, %i.en
  %i.eq = fmul <2 x float> %i.ej, %i.ep
  %i.er = fmul <2 x float> %i.dn, %i.eo
  %i.es = select <2 x i1> %i.ea, <2 x float> %i.er, <2 x float> %i.eq
  %i.et = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fadd <2 x float> %i.eu, %i.es
  %i.ew = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul <2 x float> %i.ed, %i.ew
  %i.ey = insertelement <2 x float> poison, float %i.da, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fadd <2 x float> %i.ez, %i.ex
  %i.fb = fcmp olt float %i.cx, %i.dd
  %i.fc = select i1 %i.fb, float %i.dz, float %i.ef
  %i.fd = fcmp olt <2 x float> %i.db, %i.ec
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.ev, <2 x float> %i.fa
  store float %i.fc, ptr %4, align 4, !tbaa !70
  br label %.sink.split.i52

bb.j:                                             ; preds = %bb.h
  %i.ff = fcmp ogt float %i.di, 1.000000e+00
  br i1 %i.ff, label %bb.k, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.k:                                             ; preds = %bb.j
  %i.fg = extractelement <2 x float> %i.dc, i64 0 ; 10 uses
  %..i51 = select i1 %3, float %i.dd, float %i.fg ; 3 uses
  %i.fh = extractelement <2 x float> %i.db, i64 1
  %i.fi = fsub float %i.fh, %..i51
  %i.fj = fmul float %i.fi, %i.dg
  %i.fk = fadd float %..i51, %i.fj                ; 5 uses
  %i.fl = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.fm = fsub float %i.df, %i.fl                 ; 2 uses
  %i.fn = fmul float %i.fm, 5.000000e-01
  %i.fo = fsub float %i.dd, %i.fg                 ; 7 uses
  %i.fp = fmul float %i.fo, %i.fn
  %i.fq = fmul float %i.fo, %i.fl                 ; 4 uses
  %i.fr = fmul float %i.fq, %i.fq                 ; 3 uses
  %i.fs = fmul float %i.fp, 4.000000e+00          ; 3 uses
  %i.ft = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fu = insertelement <2 x float> %i.ft, float %i.cx, i64 0
  %i.fv = insertelement <2 x float> poison, float %..i51, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fx = fsub <2 x float> %i.fu, %i.fw
  %i.fy = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ga = fmul <2 x float> %i.fx, %i.fz
  %i.gb = fadd <2 x float> %i.fw, %i.ga           ; 6 uses
  %i.gc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ge = fsub <2 x float> %i.gd, %i.gb           ; 3 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  %i.gg = fmul float %i.fs, %i.gf
  %i.gh = extractelement <2 x float> %i.ge, i64 1
  %i.gi = fmul float %i.fs, %i.gh
  %i.gj = fsub float %i.fr, %i.gg
  %i.gk = fsub float %i.fr, %i.gi
  %i.gl = tail call float @sqrtf(float noundef %i.gj) #22
  %i.gm = tail call float @sqrtf(float noundef %i.gk) #22
  %i.gn = fmul <2 x float> %i.ge, splat (float -2.000000e+00)
  %i.go = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.gm, i64 1
  %i.gs = fadd <2 x float> %i.gp, %i.gr
  %i.gt = fdiv <2 x float> %i.gn, %i.gs
  %i.gu = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.cz, i64 1 ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gx = fsub <2 x float> %i.gv, %i.gw           ; 2 uses
  %i.gy = extractelement <2 x float> %i.gx, i64 1
  %i.gz = fmul float %i.fs, %i.gy
  %i.ha = fsub float %i.fr, %i.gz
  %i.hb = fmul <2 x float> %i.gx, <float 1.000000e+00, float -2.000000e+00>
  %i.hc = tail call float @sqrtf(float noundef %i.ha) #22
  %i.hd = fadd float %i.fq, %i.hc
  %i.he = insertelement <2 x float> %i.de, float %i.hd, i64 1
  %i.hf = fdiv <2 x float> %i.hb, %i.he           ; 2 uses
  %i.hg = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x float> %i.hh, %i.gt
  %i.hj = extractelement <2 x float> %i.hf, i64 1
  %i.hk = fmul float %i.fo, %i.hj
  %i.hl = fsub <2 x float> %i.gb, %i.gd
  %i.hm = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fdiv <2 x float> %i.hl, %i.hm
  %i.ho = fcmp olt <2 x float> %i.gb, %i.gd
  %i.hp = select <2 x i1> %i.ho, <2 x float> %i.hn, <2 x float> %i.hi
  %i.hq = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.hr = fadd <2 x float> %i.hq, %i.hp           ; 2 uses
  %i.hs = fcmp olt float %i.fk, %i.cz
  %i.ht = extractelement <2 x float> %i.hf, i64 0
  %.v639.i = select i1 %i.hs, float %i.ht, float %i.hk
  %i.hu = fadd float %i.fg, %.v639.i              ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hv = fsub float %i.hu, %i.fg
  %i.hw = fdiv float %i.hv, %i.dg
  %i.hx = fadd float %i.fg, %i.hw
  %i.hy = fdiv float %i.fo, %i.dg
  %i.hz = fadd float %i.fg, %i.hy
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.fo, float 9.900000e-01, float %i.fg) ; 2 uses
  %i.ib = fsub float %i.ia, %i.fg
  %i.ic = fmul float %i.ib, %i.fm
  %i.id = fdiv float %i.ic, %i.fo
  %i.ie = fadd float %i.fl, %i.id
  %i.if = insertelement <2 x float> poison, float %i.df, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ie, i64 1
  %i.ih = fdiv <2 x float> splat (float 1.000000e+00), %i.ig ; 3 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0
  %shift.a = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fsub <2 x float> %i.ih, %shift.a
  %i.ij = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %i.ik = fmul float %i.ij, 5.000000e-01
  %i.il = fsub float %i.dd, %i.ia
  %i.im = fdiv float %i.ik, %i.il                 ; 4 uses
  %i.in = fmul float %i.im, -2.000000e+00
  %i.io = fneg float %i.dd
  %i.ip = fmul float %i.im, %i.io
  %i.iq = fsub float %i.fk, %i.fg
  %i.ir = fdiv float %i.iq, %i.dg
  %i.is = fadd float %i.fg, %i.ir                 ; 3 uses
  %i.it = fmul float %i.is, %i.im
  %i.iu = fsub <2 x float> %i.hr, %i.hq
  %i.iv = fdiv <2 x float> %i.iu, %i.fz
  %i.iw = fadd <2 x float> %i.hq, %i.iv
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.in, float %i.dd, float %i.ii) ; 3 uses
  %i.iy = fneg float %i.ix
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.dd, float %i.hz)
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.dd, float %i.iz) ; 2 uses
  %i.jb = fsub <2 x float> %i.gb, %i.hq
  %i.jc = fdiv <2 x float> %i.jb, %i.fz
  %i.jd = fadd <2 x float> %i.hq, %i.jc           ; 3 uses
  %i.je = insertelement <2 x float> poison, float %i.im, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.jd, %i.jf
  %i.jh = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fadd <2 x float> %i.jg, %i.ji
  %i.jk = fadd float %i.it, %i.ix
  %i.jl = fmul <2 x float> %i.jd, %i.jj
  %i.jm = fmul float %i.is, %i.jk
  %i.jn = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fadd <2 x float> %i.jo, %i.jl
  %i.jq = fadd float %i.ja, %i.jm
  %i.jr = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = fcmp olt <2 x float> %i.jd, %i.js
  %i.ju = select <2 x i1> %i.jt, <2 x float> %i.iw, <2 x float> %i.jp
  %i.jv = fcmp olt float %i.is, %i.dd
  %i.jw = select i1 %i.jv, float %i.hx, float %i.jq
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.jx = insertelement <2 x float> poison, float %i.da, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jz = fsub <2 x float> %i.gb, %i.jy
  %i.ka = fsub float %i.fk, %i.da
  %i.kb = fdiv float %i.ka, %i.df
  %i.kc = fadd float %i.dd, %i.kb
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf:bb.a
  %i.gt = fsub float %i.gs, %i.go                 ; 3 uses
  %i.gu = fmul float %i.dw, %i.gt
  %i.gv = extractelement <2 x float> %i.du, i64 0
  %i.gw = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gx = insertelement <2 x float> %i.gw, float %i.dp, i64 0
  %i.gy = insertelement <2 x float> poison, float %..i51, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fsub <2 x float> %i.gx, %i.gz
  %i.hb = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hd = fmul <2 x float> %i.ha, %i.hc
  %i.he = fadd <2 x float> %i.gz, %i.hd           ; 4 uses
  %i.hf = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.hg = fsub <2 x float> %i.he, %i.hf           ; 3 uses
  %i.hh = shufflevector <2 x float> %i.dv, <2 x float> %i.ds, <2 x i32> <i32 3, i32 1>
  %i.hi = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hj = shufflevector <2 x float> %i.ds, <2 x float> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.hk = fsub <2 x float> %i.hh, %i.hj           ; 4 uses
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = fdiv <2 x float> %i.hg, %i.hl           ; 2 uses
  %i.hn = extractelement <2 x float> %i.hk, i64 0 ; 5 uses
  %i.ho = fdiv float %i.gt, %i.hn                 ; 2 uses
  %i.hp = fmul <2 x float> %i.hl, %i.hm
  %i.hq = fmul float %i.hn, %i.ho
  %i.hr = fmul <2 x float> %i.hm, splat (float 5.000000e-01)
  %i.hs = fmul float %i.ho, 5.000000e-01
  %i.ht = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x float> %i.ht, %i.hr
  %i.hv = extractelement <2 x float> %i.hk, i64 1 ; 2 uses
  %i.hw = fmul float %i.hv, %i.hs
  %i.hx = fadd <2 x float> %i.hi, %i.hu
  %i.hy = fadd float %i.dw, %i.hw
  %i.hz = fmul <2 x float> %i.hp, %i.hx
  %i.ia = fmul float %i.hq, %i.hy
  %i.ib = fmul <2 x float> %i.hi, %i.hg
  %i.ic = fcmp olt <2 x float> %i.he, %i.hf
  %i.id = select <2 x i1> %i.ic, <2 x float> %i.ib, <2 x float> %i.hz
  %i.ie = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fadd <2 x float> %i.ie, %i.id           ; 2 uses
  %i.ig = fcmp olt float %i.gs, %i.go
  %.v680.i = select i1 %i.ig, float %i.gu, float %i.ia
  %i.ih = fadd float %i.gv, %.v680.i              ; 2 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ii = fsub float %i.ih, %i.go
  %i.ij = fdiv float %i.ii, %i.dx
  %i.ik = fadd float %i.go, %i.ij
  %i.il = fdiv float %i.hn, %i.dx
  %i.im = fadd float %i.go, %i.il
  %i.in = tail call float @llvm.fmuladd.f32(float %i.hn, float 9.900000e-01, float %i.go) ; 2 uses
  %i.io = fsub float %i.in, %i.go
  %i.ip = fmul float %i.io, %i.hv
  %i.iq = fdiv float %i.ip, %i.hn
  %i.ir = fadd float %i.dw, %i.iq
  %i.is = fdiv float 1.000000e+00, %i.ir
  %i.it = extractelement <2 x float> %i.dv, i64 1
  %i.iu = fdiv float 1.000000e+00, %i.it          ; 2 uses
  %i.iv = fsub float %i.iu, %i.is
  %i.iw = fmul float %i.iv, 5.000000e-01
  %i.ix = fsub float %i.dt, %i.in
  %i.iy = fdiv float %i.iw, %i.ix                 ; 4 uses
  %i.iz = fmul float %i.iy, -2.000000e+00
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.dt, float %i.iu) ; 6 uses
  %i.jb = fneg float %i.ja
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.dt, float %i.im)
  %i.jd = fneg float %i.dt
  %i.je = fmul float %i.iy, %i.jd
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.je, float %i.dt, float %i.jc) ; 3 uses
  %i.jg = fdiv float %i.gt, %i.dx
  %i.jh = fadd float %i.go, %i.jg                 ; 2 uses
  %i.ji = fsub float %i.jf, %i.jh                 ; 2 uses
  %i.jj = fmul float %i.ja, %i.ja                 ; 3 uses
  %i.jk = fmul float %i.iy, 4.000000e+00          ; 3 uses
  %i.jl = fmul float %i.jk, %i.ji
  %i.jm = fsub float %i.jj, %i.jl
  %i.jn = fmul float %i.ji, -2.000000e+00
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.dt, float %i.ja)
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jo, float %i.dt, float %i.jf) ; 2 uses
  %i.jq = fsub <2 x float> %i.if, %i.hf
  %i.jr = fdiv <2 x float> %i.jq, %i.hc
  %i.js = fadd <2 x float> %i.hf, %i.jr
  %i.jt = fdiv <2 x float> %i.hg, %i.hc
  %i.ju = fadd <2 x float> %i.hf, %i.jt           ; 2 uses
  %i.jv = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fsub <2 x float> %i.jw, %i.ju           ; 3 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 0
  %i.jz = fmul float %i.jk, %i.jy
  %i.ka = extractelement <2 x float> %i.jx, i64 1
  %i.kb = fmul float %i.jk, %i.ka
  %i.kc = fsub float %i.jj, %i.jz
  %i.kd = fsub float %i.jj, %i.kb
  %i.ke = tail call float @sqrtf(float noundef %i.kc) #22
  %i.kf = tail call float @sqrtf(float noundef %i.kd) #22
  %i.kg = tail call float @sqrtf(float noundef %i.jm) #22
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
  %i.kv = select i1 %i.ku, float %i.ik, float %i.kp
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.kw = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.kx = fsub <2 x float> %i.he, %i.kw
  %i.ky = fsub float %i.gs, %i.dt
  %i.kz = extractelement <2 x float> %i.dv, i64 1
  %i.la = fmul float %i.kz, %i.ky
  %i.lb = extractelement <2 x float> %i.du, i64 1
  %i.lc = fadd float %i.lb, %i.la
  %i.ld = fcmp olt <2 x float> %i.he, %i.kw
  %i.le = fcmp olt float %i.gs, %i.dt
  %i.lf = select i1 %i.le, float %i.ih, float %i.lc
  %i.lg = fsub float %i.lf, %i.dt
  %i.lh = fdiv float %i.lg, %i.dx
  %i.li = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = fmul <2 x float> %i.li, %i.kx
  %i.lk = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ll = fadd <2 x float> %i.lk, %i.lj
  %i.lm = select <2 x i1> %i.ld, <2 x float> %i.if, <2 x float> %i.ll
  %i.ln = fsub <2 x float> %i.lm, %i.kw
  %i.lo = fdiv <2 x float> %i.ln, %i.hc
  %i.lp = fadd <2 x float> %i.kw, %i.lo
  %i.lq = fadd float %i.dt, %i.lh
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0574.0.i = phi <2 x float> [ %i.lp, %bb.m ], [ %i.kt, %bb.l ] ; 2 uses
  %.sroa.23.0.i = phi float [ %i.lq, %bb.m ], [ %i.kv, %bb.l ]
  %.sroa.0574.0.vec.extract589.i = extractelement <2 x float> %.sroa.0574.0.i, i64 0
  store float %.sroa.0574.0.vec.extract589.i, ptr %4, align 4, !tbaa !70
  %i.lr = shufflevector <2 x float> %.sroa.0574.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ls = insertelement <2 x float> %i.lr, float %.sroa.23.0.i, i64 1
  br label %.sink.split.i52

.sink.split.i52:                                  ; preds = %bb.n, %bb.i
  %i.lt = phi <2 x float> [ %i.ls, %bb.n ], [ %i.gm, %bb.i ]
  store <2 x float> %i.lt, ptr %i.dq, align 4, !tbaa !70
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
  %i.w = load float, ptr %i.v, align 4, !tbaa !70 ; 5 uses
  %i.x = load float, ptr %i.p, align 4, !tbaa !70 ; 4 uses
  %i.y = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 3 uses
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 3 uses
  %i.aa = load <2 x float>, ptr %i.n, align 4, !tbaa !70 ; 6 uses
  %i.ab = fsub <2 x float> %i.z, %i.y             ; 4 uses
  %7 = extractelement <2 x float> %i.ab, i64 0
  %i.ac = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ad = fmul float %i.ac, -2.000000e+00
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.x, float 2.000000e+00, float %i.ad)
  %i.af = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ag = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = insertelement <2 x float> %i.aa, float %i.x, i64 1
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fsub <2 x float> %i.aa, %i.ak           ; 2 uses
  %i.am = fneg <2 x float> %i.al
  %8 = extractelement <2 x float> %i.y, i64 0
  %9 = extractelement <2 x float> %i.z, i64 0
  %i.an = fcmp olt float %i.w, %i.ac
  %i.ao = extractelement <2 x float> %i.aa, i64 0
  %i.ap = fcmp olt float %i.w, %i.ao
  %i.aq = load <2 x float>, ptr %i.s, align 8, !tbaa !70 ; 4 uses
  %i.ar = load float, ptr %i.t, align 4, !tbaa !70
  %i.as = extractelement <2 x float> %i.aq, i64 0
  %i.at = fneg float %i.as
  %i.au = fneg float %i.ar
  %foldExtExtBinop = fmul <2 x float> %i.ab, %i.aq ; 2 uses
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.au, float %i.af, float %i.ae) ; 2 uses
  %i.ax = insertelement <2 x float> %i.aq, float %i.at, i64 0
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ab, <2 x float> %i.ai)
  %i.az = fmul <2 x float> %i.ay, splat (float 4.000000e+00)
  %i.ba = fmul <2 x float> %i.az, %i.am
  %i.bb = insertelement <2 x float> %foldExtExtBinop, float %i.aw, i64 1 ; 2 uses
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bb, <2 x float> %i.ba) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = tail call noundef float @sqrtf(float noundef %i.bd) #22
  %i.bf = fadd float %i.av, %i.be
  %i.bg = extractelement <2 x float> %i.bc, i64 1
  %i.bh = tail call noundef float @sqrtf(float noundef %i.bg) #22
  %i.bi = fadd float %i.aw, %i.bh
  %i.bj = insertelement <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, float %i.w, i64 2
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.bl = shufflevector <2 x float> %i.al, <2 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float %i.x, i64 3 ; 2 uses
  %i.bn = fmul <4 x float> %i.bk, %i.bm
  %i.bo = fsub <4 x float> %i.bk, %i.bm
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.br = insertelement <4 x float> %i.bq, float %i.bf, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bi, i64 1
  %i.bt = fdiv <4 x float> %i.bp, %i.bs           ; 3 uses
  %10 = extractelement <4 x float> %i.bt, i64 0
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %7, float %8)
  %i.bu = extractelement <4 x float> %i.bt, i64 1
  %12 = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.af, float %9)
  %i.bv = select i1 %i.an, float %11, float %12
  %i.bw = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 3>
  %i.bx = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.by = fadd <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = select i1 %i.ap, float %i.bz, float %i.bv
  %i.cb = fcmp olt float %i.w, %i.x
  %i.cc = extractelement <2 x float> %i.by, i64 1
  %i.cd = select i1 %i.cb, float %i.ca, float %i.cc
  store float %i.cd, ptr %i.v, align 4, !tbaa !70
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ce = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.ce, ptr %5, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !70
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.cg, ptr %i.ch, align 8, !tbaa !70
  %i.ci = load float, ptr %i.i, align 4, !tbaa !70
  %i.cj = load float, ptr %i.j, align 4, !tbaa !70
  %i.ck = load float, ptr %i.k, align 4, !tbaa !70
  %i.cl = load float, ptr %i.n, align 4, !tbaa !70
  %i.cm = load float, ptr %i.o, align 4, !tbaa !70
  %i.cn = load float, ptr %i.p, align 4, !tbaa !70
  %i.co = load float, ptr %i.s, align 8, !tbaa !70
  %i.cp = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.ci, float noundef %i.cj, float noundef %i.ck, float noundef %i.cl, float noundef %i.cm, float noundef %i.cn, float noundef %i.co, float noundef %i.cp, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !70 ; 5 uses
  %i.cs = load float, ptr %i.n, align 4, !tbaa !70 ; 2 uses
  %i.ct = load float, ptr %i.o, align 4, !tbaa !70 ; 2 uses
  %i.cu = load float, ptr %i.p, align 4, !tbaa !70 ; 2 uses
  %i.cv = load float, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.cw = load float, ptr %i.t, align 4, !tbaa !70 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 4 uses
  %i.cy = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fsub <2 x float> %i.da, %i.cx           ; 2 uses
  %i.dc = fsub <2 x float> %i.cy, %i.cx           ; 3 uses
  %i.dd = fdiv <2 x float> %i.db, %i.dc           ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0 ; 6 uses
  %i.df = fneg float %i.de
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.de, float 1.000000e+00)
  %i.dh = fmul float %i.de, %i.ct
  %i.di = fmul float %i.de, %i.dh
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.dg, float %i.di)
  %i.dk = fsub float 1.000000e+00, %i.de
  %i.dl = fmul float %i.dk, %i.cv
  %i.dm = fmul float %i.de, %i.dl
  %i.dn = extractelement <2 x float> %i.dc, i64 0
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.dn, float %i.dj)
  %i.dp = extractelement <2 x float> %i.dd, i64 1 ; 5 uses
  %i.dq = fsub float 1.000000e+00, %i.dp          ; 2 uses
  %i.dr = fmul float %i.ct, %i.dq
  %i.ds = fsub float 2.000000e+00, %i.dp
  %i.dt = fmul float %i.cu, %i.ds
  %i.du = fmul float %i.dp, %i.dt
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.dq, float %i.du)
  %i.dw = fadd float %i.dp, -1.000000e+00
  %i.dx = fmul float %i.dw, %i.cw
  %i.dy = fmul float %i.dp, %i.dx
  %i.dz = extractelement <2 x float> %i.dc, i64 1
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dz, float %i.dv)
  %i.eb = extractelement <2 x float> %i.cx, i64 1
  %i.ec = fcmp olt float %i.cr, %i.eb
  %i.ed = select i1 %i.ec, float %i.do, float %i.ea
  %i.ee = extractelement <2 x float> %i.db, i64 0
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.cv, float %i.cs)
  %i.eg = extractelement <2 x float> %i.cx, i64 0
  %i.eh = fcmp olt float %i.cr, %i.eg
  %i.ei = select i1 %i.eh, float %i.ef, float %i.ed
  %i.ej = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  %i.ek = fsub float %i.cr, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.cw, float %i.cu)
  %i.em = fcmp olt float %i.cr, %i.ej
  %i.en = select i1 %i.em, float %i.ei, float %i.el
  store float %i.en, ptr %i.cq, align 4, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.eo = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.eo, ptr %6, align 8, !tbaa !70
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !70
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.eq, ptr %i.er, align 8, !tbaa !70
  %i.es = load float, ptr %i.i, align 4, !tbaa !70
  %i.et = load float, ptr %i.j, align 4, !tbaa !70
  %i.eu = load float, ptr %i.k, align 4, !tbaa !70
  %i.ev = load float, ptr %i.n, align 4, !tbaa !70
  %i.ew = load float, ptr %i.o, align 4, !tbaa !70
  %i.ex = load float, ptr %i.p, align 4, !tbaa !70
  %i.ey = load float, ptr %i.s, align 8, !tbaa !70
  %i.ez = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.es, float noundef %i.et, float noundef %i.eu, float noundef %i.ev, float noundef %i.ew, float noundef %i.ex, float noundef %i.ey, float noundef %i.ez, ptr noundef nonnull align 4 dereferenceable(12) %6)
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
end_hunk_1
