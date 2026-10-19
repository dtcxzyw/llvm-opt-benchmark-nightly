Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingToneOpCPU?download=true
inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU4midsERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEPf:bb.a
  %i.fn = fmul <2 x float> %i.ei, %i.fm
  %i.fo = fadd <2 x float> %i.ek, %i.fn
  %i.fp = fmul <2 x float> %i.eh, %i.fo
  %i.fq = fadd <2 x float> %i.em, %i.fp
  %i.fr = fmul <4 x float> %i.dm, %i.dy
  %i.fs = fmul <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.ft = fmul <4 x float> %i.fs, %i.fl
  %i.fu = fadd <4 x float> %i.fk, %i.ft
  %i.fv = fmul <4 x float> %i.fr, %i.fu           ; 4 uses
  %i.fw = extractelement <4 x float> %i.fv, i64 0
  %i.fx = fadd float %i.cm, %i.fw
  %i.fy = shufflevector <4 x float> %i.fl, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fz = fmul <2 x float> %i.eo, %i.fy
  %i.ga = fadd <2 x float> %i.ep, %i.fz
  %i.gb = fmul <2 x float> %i.en, %i.ga
  %i.gc = fadd <2 x float> %i.er, %i.gb
  %i.gd = extractelement <4 x float> %i.fv, i64 1
  %i.ge = fadd float %i.cn, %i.gd
  %i.gf = shufflevector <4 x float> %i.fl, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gg = fmul <2 x float> %i.et, %i.gf
  %i.gh = fadd <2 x float> %i.eu, %i.gg
  %i.gi = fmul <2 x float> %i.es, %i.gh
  %i.gj = fadd <2 x float> %i.ew, %i.gi
  %i.gk = extractelement <4 x float> %i.fv, i64 2
  %i.gl = fadd float %i.co, %i.gk
  %i.gm = shufflevector <4 x float> %i.fl, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gn = fmul <2 x float> %i.ey, %i.gm
  %i.go = fadd <2 x float> %i.fc, %i.gn
  %i.gp = fmul <2 x float> %i.ex, %i.go
  %i.gq = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fadd <2 x float> %i.gr, %i.gp
  %i.gt = extractelement <4 x float> %i.fv, i64 3
  %i.gu = fadd float %i.cp, %i.gt
  %i.gv = fmul <2 x float> %i.ee, %i.ef
  %i.gw = fmul float %i.ec, %i.eg
  %i.gx = fmul <2 x float> %i.ef, splat (float 5.000000e-01)
  %i.gy = fmul float %i.eg, 5.000000e-01
  %i.gz = fsub float %i.fa, %i.fb                 ; 2 uses
  %i.ha = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.gx, %i.hb
  %i.hd = fmul float %i.gy, %i.gz
  %i.he = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fadd <2 x float> %i.he, %i.hc
  %i.hg = fadd float %i.fb, %i.hd
  %i.hh = fmul <2 x float> %i.gv, %i.hf
  %i.hi = fmul float %i.gw, %i.hg
  %i.hj = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fadd <2 x float> %i.hk, %i.hh
  %i.hm = fadd float %i.cq, %i.hi
  %i.hn = fmul <2 x float> %i.cw, %i.ek
  %foldExtExtBinop = fmul <4 x float> %i.dv, %i.ej
  %i.ho = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.hp = fadd <2 x float> %i.em, %i.hn
  %i.hq = fadd float %i.cm, %i.ho
  %i.hr = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hs = fsub <2 x float> %i.cs, %i.hr
  %i.ht = fsub float %i.cl, %i.df
  %i.hu = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = fmul <2 x float> %i.hs, %i.hu
  %i.hw = fmul float %i.ht, %i.fa
  %i.hx = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fadd <2 x float> %i.hv, %i.hy
  %i.ia = fadd float %i.hw, %i.cr
  %i.ib = fcmp olt <2 x float> %i.cs, %i.cy
  %i.ic = select <2 x i1> %i.ib, <2 x float> %i.fq, <2 x float> %i.gc
  %i.id = extractelement <2 x float> %i.dh, i64 0
  %i.ie = fcmp olt float %i.cl, %i.id
  %i.if = select i1 %i.ie, float %i.fx, float %i.ge
  %i.ig = fcmp olt <2 x float> %i.cs, %i.da
  %i.ih = select <2 x i1> %i.ig, <2 x float> %i.ic, <2 x float> %i.gj
  %i.ii = fcmp olt float %i.cl, %i.di
  %i.ij = select i1 %i.ii, float %i.if, float %i.gl
  %i.ik = fcmp olt <2 x float> %i.cs, %i.dc
  %i.il = select <2 x i1> %i.ik, <2 x float> %i.ih, <2 x float> %i.gs
  %i.im = fcmp olt float %i.cl, %i.cu
  %i.in = select i1 %i.im, float %i.ij, float %i.gu
  %i.io = fcmp olt <2 x float> %i.cs, %i.dz
  %i.ip = select <2 x i1> %i.io, <2 x float> %i.il, <2 x float> %i.hl
  %i.iq = fcmp olt float %i.cl, %i.dg
  %i.ir = select i1 %i.iq, float %i.in, float %i.hm
  %i.is = fcmp olt <2 x float> %i.cs, %i.cv
  %i.it = select <2 x i1> %i.is, <2 x float> %i.hp, <2 x float> %i.ip
  %i.iu = fcmp olt float %i.cl, %i.cx
  %i.iv = select i1 %i.iu, float %i.hq, float %i.ir
  %i.iw = fcmp olt <2 x float> %i.cs, %i.hr
  %i.ix = select <2 x i1> %i.iw, <2 x float> %i.it, <2 x float> %i.hz
  %i.iy = fcmp olt float %i.cl, %i.df
  %i.iz = select i1 %i.iy, float %i.iv, float %i.ia
  store <2 x float> %i.ix, ptr %3, align 4, !tbaa !70
  store float %i.iz, ptr %i.ck, align 4, !tbaa !70
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
  %i.bd = fmul float %i.bb, 4.000000e+00
  %i.be = tail call float @llvm.fmuladd.f32(float %i.av, float %i.w, float %..i) ; 6 uses
  %i.bf = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.bg = fsub float %i.bf, %i.be                 ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = fmul float %i.bd, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bi)
  %i.bk = tail call noundef float @sqrtf(float noundef %i.bj) #22
  %i.bl = fadd float %i.bc, %i.bk
  %i.bm = fsub float %i.be, %i.bf
  %i.bn = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bm, i64 1
  %i.bp = fmul <2 x float> %i.bo, <float -2.000000e+00, float 1.000000e+00>
  %i.bq = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x float> %i.bq, float %i.bl, i64 0
  %i.bs = fdiv <2 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ba, float %i.t)
  %shift11 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fadd <2 x float> %i.r, %shift11
  %i.bv = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.bw = fcmp olt float %i.be, %i.bf
  %i.bx = select i1 %i.bw, float %i.bv, float %i.bu ; 2 uses
  br i1 %3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = fsub float %i.bx, %i.t
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.ba, i64 1
  %i.cb = insertelement <2 x float> poison, float %i.w, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fdiv <2 x float> %i.ca, %i.cc
  %i.ce = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = fadd <2 x float> %i.ce, %i.cd           ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ba, float 9.900000e-01, float %i.t) ; 2 uses
  %i.ch = fsub float %i.cg, %i.t
  %i.ci = fmul float %i.ch, %i.ay
  %i.cj = fdiv float %i.ci, %i.ba
  %i.ck = fadd float %i.aw, %i.cj
  %i.cl = fdiv float 1.000000e+00, %i.ck
  %i.cm = fdiv float 1.000000e+00, %i.ax          ; 2 uses
  %i.cn = fsub float %i.s, %i.cg
  %i.co = fneg float %i.s
  %i.cp = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.be, i64 1
  %i.cr = insertelement <2 x float> %i.ce, float %i.cl, i64 0
  %i.cs = fsub <2 x float> %i.cq, %i.cr
  %i.ct = fmul <2 x float> %i.cs, <float 5.000000e-01, float 1.000000e+00>
  %i.cu = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.w, i64 1
  %i.cw = fdiv <2 x float> %i.ct, %i.cv           ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0 ; 3 uses
  %i.cy = fmul float %i.cx, -2.000000e+00
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.s, float %i.cm) ; 2 uses
  %i.da = fneg float %i.cz
  %i.db = extractelement <2 x float> %i.cf, i64 1
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.da, float %i.s, float %i.db)
  %i.dd = fmul float %i.cx, %i.co
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.s, float %i.dc)
  %shift14 = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fadd <2 x float> %i.r, %shift14
  %i.df = extractelement <2 x float> %foldExtExtBinop15, i64 0 ; 3 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.df, float %i.cz)
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.df, float %i.de)
  %i.di = fcmp olt float %i.df, %i.s
  %i.dj = extractelement <2 x float> %i.cf, i64 0
  %i.dk = select i1 %i.di, float %i.dj, float %i.dh
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.dl = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.dm = fsub float %i.be, %i.dl
  %i.dn = fdiv float %i.dm, %i.ax
  %i.do = fadd float %i.s, %i.dn
  %i.dp = fcmp olt float %i.be, %i.dl
  %i.dq = select i1 %i.dp, float %i.bx, float %i.do
  %i.dr = fsub float %i.dq, %i.s
  %i.ds = fdiv float %i.dr, %i.w
  %i.dt = fadd float %i.s, %i.ds
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.c
  %.0.sink.i = phi float [ %i.at, %bb.c ], [ %i.dt, %bb.g ], [ %i.dk, %bb.f ]
  store float %.0.sink.i, ptr %i.p, align 4, !tbaa !70
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeWBFwdIfEEvNS_11RGBMChannelEbPfffffffffRT_.exit

bb.h:                                             ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dx = load float, ptr %4, align 4, !tbaa !70  ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.dz = load float, ptr %i.i, align 8, !tbaa !70 ; 5 uses
  %i.ea = load float, ptr %i.dv, align 4, !tbaa !70 ; 5 uses
  %i.eb = load <2 x float>, ptr %i.dy, align 4, !tbaa !70 ; 6 uses
  %i.ec = load <2 x float>, ptr %i.f, align 8, !tbaa !70 ; 5 uses
  %i.ed = load float, ptr %i.dw, align 4, !tbaa !70 ; 16 uses
  %i.ee = load <2 x float>, ptr %i.l, align 8, !tbaa !70 ; 6 uses
  %i.ef = load float, ptr %i.du, align 4, !tbaa !70 ; 6 uses
  %i.eg = load float, ptr %i.o, align 4, !tbaa !70 ; 6 uses
  %i.eh = fsub float 2.000000e+00, %i.a
  %i.ei = select i1 %3, float %i.eh, float %i.a   ; 2 uses
  %i.ej = fcmp olt float %i.ei, 1.000000e+00
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ek = extractelement <2 x float> %i.ec, i64 0 ; 3 uses
  %i.el = fsub float %i.dx, %i.ek                 ; 2 uses
  %i.em = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = fsub <2 x float> %i.eb, %i.em           ; 2 uses
  %i.eo = fsub float %i.ed, %i.ek                 ; 3 uses
  %i.ep = fdiv float %i.el, %i.eo                 ; 2 uses
  %i.eq = fmul float %i.eo, %i.ep
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneRevOpCPU10whiteBlackERKNS_11GradingToneERKNS_20GradingTonePreRenderENS_11RGBMChannelEbPf:bb.a
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
  %i.ac = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ad = fmul float %i.ac, -2.000000e+00
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.x, float 2.000000e+00, float %i.ad)
  %i.af = extractelement <2 x float> %i.ab, i64 1
  %i.ag = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = insertelement <2 x float> %i.aa, float %i.x, i64 1
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fsub <2 x float> %i.aa, %i.ak           ; 2 uses
  %i.am = fneg <2 x float> %i.al
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
  %i.bt = fdiv <4 x float> %i.bp, %i.bs           ; 2 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bv = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.ab, <2 x float> %i.bv) ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = extractelement <2 x float> %i.bw, i64 1
  %i.bz = select i1 %i.an, float %i.bx, float %i.by
  %i.ca = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 3>
  %i.cb = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cc = fadd <2 x float> %i.ca, %i.cb           ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0
  %i.ce = select i1 %i.ap, float %i.cd, float %i.bz
  %i.cf = fcmp olt float %i.w, %i.x
  %i.cg = extractelement <2 x float> %i.cc, i64 1
  %i.ch = select i1 %i.cf, float %i.ce, float %i.cg
  store float %i.ch, ptr %i.v, align 4, !tbaa !70
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ci = load <2 x float>, ptr %4, align 4, !tbaa !70
  store <2 x float> %i.ci, ptr %5, align 8, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !70
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.ck, ptr %i.cl, align 8, !tbaa !70
  %i.cm = load float, ptr %i.i, align 4, !tbaa !70
  %i.cn = load float, ptr %i.j, align 4, !tbaa !70
  %i.co = load float, ptr %i.k, align 4, !tbaa !70
  %i.cp = load float, ptr %i.n, align 4, !tbaa !70
  %i.cq = load float, ptr %i.o, align 4, !tbaa !70
  %i.cr = load float, ptr %i.p, align 4, !tbaa !70
  %i.cs = load float, ptr %i.s, align 8, !tbaa !70
  %i.ct = load float, ptr %i.t, align 4, !tbaa !70
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSRevINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.cm, float noundef %i.cn, float noundef %i.co, float noundef %i.cp, float noundef %i.cq, float noundef %i.cr, float noundef %i.cs, float noundef %i.ct, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !70 ; 5 uses
  %i.cw = load float, ptr %i.n, align 4, !tbaa !70 ; 2 uses
  %i.cx = load float, ptr %i.o, align 4, !tbaa !70 ; 2 uses
  %i.cy = load float, ptr %i.p, align 4, !tbaa !70 ; 2 uses
  %i.cz = load float, ptr %i.s, align 8, !tbaa !70 ; 2 uses
  %i.da = load float, ptr %i.t, align 4, !tbaa !70 ; 2 uses
  %i.db = load <2 x float>, ptr %i.i, align 4, !tbaa !70 ; 4 uses
  %i.dc = load <2 x float>, ptr %i.j, align 4, !tbaa !70 ; 2 uses
  %i.dd = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fsub <2 x float> %i.de, %i.db           ; 2 uses
  %i.dg = fsub <2 x float> %i.dc, %i.db           ; 3 uses
  %i.dh = fdiv <2 x float> %i.df, %i.dg           ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0 ; 6 uses
  %i.dj = fneg float %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.di, float 1.000000e+00)
  %i.dl = fmul float %i.di, %i.cx
  %i.dm = fmul float %i.di, %i.dl
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.dk, float %i.dm)
  %i.do = fsub float 1.000000e+00, %i.di
  %i.dp = fmul float %i.do, %i.cz
  %i.dq = fmul float %i.di, %i.dp
  %i.dr = extractelement <2 x float> %i.dg, i64 0
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dr, float %i.dn)
  %i.dt = extractelement <2 x float> %i.dh, i64 1 ; 5 uses
  %i.du = fsub float 1.000000e+00, %i.dt          ; 2 uses
  %i.dv = fmul float %i.cx, %i.du
  %i.dw = fsub float 2.000000e+00, %i.dt
  %i.dx = fmul float %i.cy, %i.dw
  %i.dy = fmul float %i.dt, %i.dx
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.du, float %i.dy)
  %i.ea = fadd float %i.dt, -1.000000e+00
  %i.eb = fmul float %i.ea, %i.da
  %i.ec = fmul float %i.dt, %i.eb
  %i.ed = extractelement <2 x float> %i.dg, i64 1
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ed, float %i.dz)
  %i.ef = extractelement <2 x float> %i.db, i64 1
  %i.eg = fcmp olt float %i.cv, %i.ef
  %i.eh = select i1 %i.eg, float %i.ds, float %i.ee
  %i.ei = extractelement <2 x float> %i.df, i64 0
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.cz, float %i.cw)
  %i.ek = extractelement <2 x float> %i.db, i64 0
  %i.el = fcmp olt float %i.cv, %i.ek
  %i.em = select i1 %i.el, float %i.ej, float %i.eh
  %i.en = extractelement <2 x float> %i.dc, i64 1 ; 2 uses
  %i.eo = fsub float %i.cv, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.da, float %i.cy)
  %i.eq = fcmp olt float %i.cv, %i.en
  %i.er = select i1 %i.eq, float %i.em, float %i.ep
  store float %i.er, ptr %i.cu, align 4, !tbaa !70
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
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112ComputeHSFwdINS0_6float3EEEvNS_11RGBMChannelEPfffffffffRT_(ptr noundef nonnull %4, float noundef %i.ew, float noundef %i.ex, float noundef %i.ey, float noundef %i.ez, float noundef %i.fa, float noundef %i.fb, float noundef %i.fc, float noundef %i.fd, ptr noundef nonnull align 4 dereferenceable(12) %6)
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
end_hunk_1
