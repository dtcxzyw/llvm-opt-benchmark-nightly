Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingTone?download=true
inline.NumInlined: 239
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_520GradingTonePreRender15mids_precomputeERKNS_11GradingToneEff:bb.a
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ap ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  switch i32 %i.ao, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.f:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.g:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %i.af, %bb.d ], [ %i.ag, %bb.e ], [ %i.ad, %bb.f ], [ %i.ae, %bb.g ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bh = fcmp ogt float %.0.i, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.bh, float %.0.i, float f0x3C23D70A ; 2 uses
  %i.bi = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.bi, float 1.990000e+00, float %.sroa.speculated2.i ; 2 uses
  %i.bj = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.bj, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  store float %3, ptr %i.aq, align 8, !tbaa !19
  store float %2, ptr %i.av, align 4, !tbaa !19
  store float %3, ptr %i.aw, align 8, !tbaa !19
  store float 1.000000e+00, ptr %i.bc, align 8, !tbaa !19
  %i.bk = fadd float %.sroa.speculated.i, -1.000000e+00
  %i.bl = fmul float %i.bk, f0x3F666666           ; 4 uses
  %i.bm = fadd float %i.bl, 1.000000e+00          ; 7 uses
  store float %i.bm, ptr %i.be, align 8, !tbaa !19
  %i.bn = fsub float 1.000000e+00, %i.bl          ; 7 uses
  store float %i.bn, ptr %i.bf, align 4, !tbaa !19
  %i.bo = insertelement <2 x float> %i.al, float %i.bl, i64 0
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> <float 4.000000e-01, float 5.000000e-01>, <2 x float> %i.am) ; 4 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 1 ; 6 uses
  store float %i.bq, ptr %i.ar, align 4, !tbaa !19
  %i.br = fadd float %.sroa.speculated.i164, %i.bq ; 6 uses
  store float %i.br, ptr %i.au, align 8, !tbaa !19
  %i.bs = fsub float %i.br, %i.bq
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %i.bv) ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1 ; 7 uses
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 7 uses
  store float %i.by, ptr %i.as, align 8, !tbaa !19
  store float %i.bx, ptr %i.at, align 4, !tbaa !19
  %i.bz = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  store float %i.bz, ptr %i.bd, align 4, !tbaa !19
  %i.ca = fneg float %i.bl
  %.scalar = tail call float @llvm.fmuladd.f32(float %i.ca, float 4.000000e-01, float 1.000000e+00) ; 4 uses
  %i.cb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  store <2 x float> %i.cb, ptr %i.bg, align 8, !tbaa !19
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = fsub <2 x float> %i.bp, %i.aa           ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = extractelement <2 x float> %i.cc, i64 1 ; 2 uses
  %i.cf = fmul float %i.cd, %i.ce
  %i.cg = fsub float %i.by, %i.bq                 ; 2 uses
  %i.ch = fsub float %i.bm, %i.bz
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float 5.000000e-01, float %i.cd)
  %i.cj = fmul float %i.ci, %i.cg
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cf, float 5.000000e-01, float %i.cj)
  %i.cl = fsub float %.sroa.speculated.i166, %i.by
  %i.cm = fadd float %i.bm, -1.000000e+00
  %i.cn = fmul float %i.cm, %i.cl
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float 5.000000e-01, float %i.ck)
  %i.cp = fsub float %2, %i.br                    ; 2 uses
  %i.cq = fmul float %i.cp, 5.000000e-01
  %i.cr = fsub float %i.br, %i.bx                 ; 2 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bn, float 5.000000e-01, float -1.000000e+00)
  %i.ct = fmul float %i.cs, %i.cr
  %i.cu = fsub float %i.ct, %i.cq
  %i.cv = fsub float %i.bx, %.sroa.speculated.i166
  %i.cw = fadd float %i.bn, -1.000000e+00
  %i.cx = fmul float %i.cw, %i.cv
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float 5.000000e-01, float %i.cu)
  %i.cz = fadd float %i.cy, %i.co
  %i.da = fsub float %2, %i.bx
  %i.db = fmul float %i.da, -5.000000e-01
  %i.dc = fdiv float %i.cz, %i.db                 ; 2 uses
  store float %i.dc, ptr %i.bg, align 8, !tbaa !19
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dd = fsub float %2, %i.br                    ; 2 uses
  %i.de = fadd float %.scalar, -1.000000e+00      ; 2 uses
  %i.df = fmul float %i.de, %i.dd
  %i.dg = fsub float %i.br, %i.bx                 ; 2 uses
  %i.dh = fsub float %i.bn, %.scalar
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float 5.000000e-01, float %i.de)
  %i.dj = fmul float %i.di, %i.dg
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.df, float 5.000000e-01, float %i.dj)
  %i.dl = fsub float %i.bx, %.sroa.speculated.i166
  %i.dm = fadd float %i.bn, -1.000000e+00
  %i.dn = fmul float %i.dm, %i.dl
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float 5.000000e-01, float %i.dk)
  %i.dp = fsub float %i.bq, %3                    ; 2 uses
  %i.dq = fmul float %i.dp, 5.000000e-01
  %i.dr = fsub float %i.by, %i.bq                 ; 2 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.bm, float 5.000000e-01, float -1.000000e+00)
  %i.dt = fmul float %i.ds, %i.dr
  %i.du = fsub float %i.dt, %i.dq
  %i.dv = fsub float %.sroa.speculated.i166, %i.by
  %i.dw = fadd float %i.bm, -1.000000e+00
  %i.dx = fmul float %i.dw, %i.dv
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float 5.000000e-01, float %i.du)
  %i.dz = fadd float %i.dy, %i.do
  %i.ea = fsub float %i.by, %3
  %i.eb = fmul float %i.ea, -5.000000e-01
  %i.ec = fdiv float %i.dz, %i.eb                 ; 2 uses
  store float %i.ec, ptr %i.bd, align 4, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi171 = phi float [ %i.dd, %bb.j ], [ %i.cp, %bb.i ]
  %.pre-phi170 = phi float [ %i.dg, %bb.j ], [ %i.cr, %bb.i ]
  %.pre-phi169 = phi float [ %i.dr, %bb.j ], [ %i.cg, %bb.i ]
  %.pre-phi = phi float [ %i.dp, %bb.j ], [ %i.ce, %bb.i ]
  %i.ed = phi float [ %.scalar, %bb.j ], [ %i.dc, %bb.i ] ; 2 uses
  %i.ee = phi float [ %i.ec, %bb.j ], [ %i.bz, %bb.i ] ; 2 uses
  %i.ef = fadd float %i.ee, 1.000000e+00
  %i.eg = fmul float %i.ef, %.pre-phi
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eg, float 5.000000e-01, float %3) ; 2 uses
  store float %i.eh, ptr %i.ax, align 4, !tbaa !19
  %i.ei = fadd float %i.ee, %i.bm
  %i.ej = fmul float %i.ei, %.pre-phi169
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float 5.000000e-01, float %i.eh) ; 2 uses
  store float %i.ek, ptr %i.ay, align 8, !tbaa !19
  %i.el = fadd float %i.bm, %i.bn
  %i.em = fsub float %i.bx, %i.by
  %i.en = fmul float %i.el, %i.em
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float 5.000000e-01, float %i.ek) ; 2 uses
  store float %i.eo, ptr %i.az, align 4, !tbaa !19
  %i.ep = fadd float %i.bn, %i.ed
  %i.eq = fmul float %i.ep, %.pre-phi170
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eq, float 5.000000e-01, float %i.eo) ; 2 uses
  store float %i.er, ptr %i.ba, align 8, !tbaa !19
  %i.es = fadd float %i.ed, 1.000000e+00
  %i.et = fmul float %i.es, %.pre-phi171
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float 5.000000e-01, float %i.er)
  store float %i.eu, ptr %i.bb, align 4, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %.0.add = add nuw nsw i64 %.0.idx168, 4         ; 2 uses
  %.not = icmp eq i64 %.0.add, 16
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender26highlightShadow_precomputeERKNS_11GradingToneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load double, ptr %i.g, align 8
  %i.m = fptrunc double %i.l to float
  %i.n = load double, ptr %i.k, align 8
  %i.o = fptrunc double %i.n to float
  %i.p = load double, ptr %i.f, align 8
  %i.q = fptrunc double %i.p to float
  %i.r = load double, ptr %i.j, align 8
  %i.s = fptrunc double %i.r to float
  %i.t = load double, ptr %i.e, align 8
  %i.u = fptrunc double %i.t to float
  %i.v = load double, ptr %i.i, align 8
  %i.w = fptrunc double %i.v to float
  %i.x = load double, ptr %i.d, align 8
  %i.y = fptrunc double %i.x to float
  %i.z = load double, ptr %i.h, align 8
  %i.aa = fptrunc double %i.z to float
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.b:                                             ; preds = %bb.ai
  ret void

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit: ; preds = %bb.a, %bb.ai
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.ai ]
  %.092.idx126.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.a ], [ 1, %bb.ai ] ; 2 uses
  %i.ab = trunc nuw i8 %.092.idx126.sroa.phi.sroa.speculated to i1 ; 26 uses
  %i.ac = zext nneg i8 %.092.idx126.sroa.phi.sroa.speculated to i64 ; 3 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.ac ; 14 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.ac ; 14 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ac ; 9 uses
  %.in.idx = select i1 %i.ab, i64 0, i64 16
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.idx ; 4 uses
  %.in95.v = select i1 %i.ab, i64 8, i64 24
  %.in95 = getelementptr inbounds nuw i8, ptr %0, i64 %.in95.v ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.al = select i1 %i.ab, float %i.o, float %i.m ; 4 uses
  %i.am = fsub float 2.000000e+00, %i.al          ; 6 uses
  %storemerge = select i1 %i.ab, float %i.al, float %i.am ; 3 uses
  %i.an = fcmp une float %storemerge, 1.000000e+00
  br i1 %i.an, label %bb.c, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %i.ao = load double, ptr %.in, align 8, !tbaa !25
  %i.ap = fptrunc double %i.ao to float           ; 2 uses
  %i.aq = load double, ptr %.in95, align 8, !tbaa !25
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = select i1 %i.ab, float %i.ar, float %i.ap ; 4 uses
  store float %i.as, ptr %i.ad, align 8, !tbaa !19
  %i.at = select i1 %i.ab, float %i.ap, float %i.ar ; 3 uses
  store float %i.at, ptr %i.ah, align 8, !tbaa !19
  store float %i.as, ptr %i.ae, align 8, !tbaa !19
  store float %i.at, ptr %i.aj, align 8, !tbaa !19
  %i.au = fsub float %i.at, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float 5.000000e-01, float %i.as)
  store float %i.av, ptr %i.ag, align 4, !tbaa !19
  %i.aw = fcmp olt float %storemerge, 1.000000e+00
  br i1 %i.aw, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ax = fcmp ogt float %i.al, f0x3C23D70A
  %.sroa.speculated113 = select i1 %i.ax, float %i.al, float f0x3C23D70A
  br label %bb.f

.critedge:                                        ; preds = %bb.d
  %i.ay = fcmp ogt float %i.am, f0x3C23D70A
  %.sroa.speculated109 = select i1 %i.ay, float %i.am, float f0x3C23D70A
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sink = phi float [ %.sroa.speculated113, %bb.e ], [ 1.000000e+00, %.critedge ] ; 2 uses
  %i.az = phi float [ 1.000000e+00, %bb.e ], [ %.sroa.speculated109, %.critedge ] ; 2 uses
  store float %.sink, ptr %i.af, align 8, !tbaa !19
  store float %i.az, ptr %i.ak, align 4, !tbaa !19
  %i.ba = load float, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.bb = load float, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.bc = fsub float %i.ba, %i.bb
  %i.bd = fdiv float 5.000000e-01, %i.bc
  %i.be = load float, ptr %i.ae, align 8, !tbaa !19
  %i.bf = load float, ptr %i.ag, align 4, !tbaa !19 ; 2 uses
  %i.bg = fsub float %i.bf, %i.bb                 ; 2 uses
  %i.bh = fmul float %.sink, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.be, float 2.000000e+00, float %i.bh)
  %i.bj = fsub float %i.ba, %i.bf                 ; 2 uses
  %i.bk = load float, ptr %i.aj, align 8, !tbaa !19
  %i.bl = fneg float %i.bj
  %i.bm = fmul float %i.az, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bk, float 2.000000e+00, float %i.bm)
  %i.bo = fmul float %i.bg, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bj, float %i.bo)
  %i.bq = fmul float %i.bd, %i.bp
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.br = fcmp ogt float %storemerge, 1.000000e+00
  br i1 %i.br, label %bb.h, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

bb.h:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.i, label %.critedge97

bb.i:                                             ; preds = %bb.h
  %i.bs = fcmp ogt float %i.am, f0x3C23D70A
  %.sroa.speculated104 = select i1 %i.bs, float %i.am, float f0x3C23D70A
  br label %bb.j

.critedge97:                                      ; preds = %bb.h
  %i.bt = fsub float 2.000000e+00, %i.am          ; 2 uses
  %i.bu = fcmp ogt float %i.bt, f0x3C23D70A
  %.sroa.speculated = select i1 %i.bu, float %i.bt, float f0x3C23D70A
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge97
  %.sink127 = phi float [ %.sroa.speculated104, %bb.i ], [ 1.000000e+00, %.critedge97 ] ; 2 uses
  %i.bv = phi float [ 1.000000e+00, %bb.i ], [ %.sroa.speculated, %.critedge97 ] ; 2 uses
  store float %.sink127, ptr %i.af, align 8, !tbaa !19
  store float %i.bv, ptr %i.ak, align 4, !tbaa !19
  %i.bw = load <2 x float>, ptr %i.ag, align 4, !tbaa !19
  %i.bx = load <2 x float>, ptr %i.ad, align 8, !tbaa !19
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 3 uses
  %i.bz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by)
  %i.ca = fdiv float 5.000000e-01, %i.bz
  %i.cb = load float, ptr %i.ae, align 8, !tbaa !19
  %i.cc = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.cd = fmul float %i.cc, %.sink127
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cb, float 2.000000e+00, float %i.cd)
  %i.cf = load float, ptr %i.aj, align 8, !tbaa !19
  %i.cg = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.ch = fneg float %i.cg
  %i.ci = fmul float %i.bv, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cf, float 2.000000e+00, float %i.ci)
  %i.ck = fmul float %i.cc, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cg, float %i.ck)
  %i.cm = fmul float %i.ca, %i.cl
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.f
  %.sink128 = phi float [ %i.bq, %bb.f ], [ %i.cm, %bb.j ]
  store float %.sink128, ptr %i.ai, align 4, !tbaa !19
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1: ; preds = %.sink.split, %bb.g, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 20 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.cv = select i1 %i.ab, float %i.s, float %i.q ; 4 uses
  %i.cw = fsub float 2.000000e+00, %i.cv          ; 6 uses
  %storemerge.1 = select i1 %i.ab, float %i.cv, float %i.cw ; 3 uses
  %i.cx = fcmp une float %storemerge.1, 1.000000e+00
  br i1 %i.cx, label %bb.k, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1
  %i.cy = load double, ptr %.in, align 8, !tbaa !25
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %i.da = load double, ptr %.in95, align 8, !tbaa !25
  %i.db = fptrunc double %i.da to float           ; 2 uses
  %i.dc = select i1 %i.ab, float %i.db, float %i.cz ; 4 uses
  store float %i.dc, ptr %i.cn, align 4, !tbaa !19
  %i.dd = select i1 %i.ab, float %i.cz, float %i.db ; 3 uses
  store float %i.dd, ptr %i.cp, align 4, !tbaa !19
  store float %i.dc, ptr %i.cq, align 4, !tbaa !19
  store float %i.dd, ptr %i.cs, align 4, !tbaa !19
  %i.de = fsub float %i.dd, %i.dc
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float 5.000000e-01, float %i.dc)
  store float %i.df, ptr %i.co, align 8, !tbaa !19
  %i.dg = fcmp olt float %storemerge.1, 1.000000e+00
  br i1 %i.dg, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dh = fcmp ogt float %storemerge.1, 1.000000e+00
  br i1 %i.dh, label %bb.m, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2

bb.m:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.n, label %.critedge97.1

.critedge97.1:                                    ; preds = %bb.m
  %i.di = fsub float 2.000000e+00, %i.cw          ; 2 uses
  %i.dj = fcmp ogt float %i.di, f0x3C23D70A
  %.sroa.speculated.1 = select i1 %i.dj, float %i.di, float f0x3C23D70A
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dk = fcmp ogt float %i.cw, f0x3C23D70A
  %.sroa.speculated104.1 = select i1 %i.dk, float %i.cw, float f0x3C23D70A
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge97.1
  %.sink127.1 = phi float [ %.sroa.speculated104.1, %bb.n ], [ 1.000000e+00, %.critedge97.1 ] ; 2 uses
  %i.dl = phi float [ 1.000000e+00, %bb.n ], [ %.sroa.speculated.1, %.critedge97.1 ] ; 2 uses
  store float %.sink127.1, ptr %i.ct, align 8, !tbaa !19
  store float %i.dl, ptr %i.cu, align 4, !tbaa !19
  %i.dm = load <2 x float>, ptr %i.co, align 8, !tbaa !19
  %i.dn = load <2 x float>, ptr %i.cn, align 4, !tbaa !19
  %i.do = fsub <2 x float> %i.dm, %i.dn           ; 3 uses
  %i.dp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.do)
  %i.dq = fdiv float 5.000000e-01, %i.dp
  %i.dr = load float, ptr %i.cq, align 4, !tbaa !19
  %i.ds = extractelement <2 x float> %i.do, i64 0 ; 2 uses
  %i.dt = fmul float %i.ds, %.sink127.1
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dr, float 2.000000e+00, float %i.dt)
  %i.dv = load float, ptr %i.cs, align 4, !tbaa !19
  %i.dw = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.dx = fneg float %i.dw
  %i.dy = fmul float %i.dl, %i.dx
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dv, float 2.000000e+00, float %i.dy)
  %i.ea = fmul float %i.ds, %i.dz
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.du, float %i.dw, float %i.ea)
  %i.ec = fmul float %i.dq, %i.eb
  br label %.sink.split.1

bb.p:                                             ; preds = %bb.k
  br i1 %i.ab, label %bb.q, label %.critedge.1

.critedge.1:                                      ; preds = %bb.p
  %i.ed = fcmp ogt float %i.cw, f0x3C23D70A
  %.sroa.speculated109.1 = select i1 %i.ed, float %i.cw, float f0x3C23D70A
  br label %bb.r
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_520GradingTonePreRender26highlightShadow_precomputeERKNS_11GradingToneE:bb.a
  %i.fw = load <2 x float>, ptr %i.ey, align 4, !tbaa !19
  %i.fx = load <2 x float>, ptr %i.ex, align 8, !tbaa !19
  %i.fy = fsub <2 x float> %i.fw, %i.fx           ; 3 uses
  %i.fz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fy)
  %i.ga = fdiv float 5.000000e-01, %i.fz
  %i.gb = load float, ptr %i.fa, align 8, !tbaa !19
  %i.gc = extractelement <2 x float> %i.fy, i64 0 ; 2 uses
  %i.gd = fmul float %i.gc, %.sink127.2
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gb, float 2.000000e+00, float %i.gd)
  %i.gf = load float, ptr %i.fc, align 8, !tbaa !19
  %i.gg = extractelement <2 x float> %i.fy, i64 1 ; 2 uses
  %i.gh = fneg float %i.gg
  %i.gi = fmul float %i.fv, %i.gh
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gf, float 2.000000e+00, float %i.gi)
  %i.gk = fmul float %i.gc, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.gg, float %i.gk)
  %i.gm = fmul float %i.ga, %i.gl
  br label %.sink.split.2

bb.x:                                             ; preds = %bb.s
  br i1 %i.ab, label %bb.y, label %.critedge.2

.critedge.2:                                      ; preds = %bb.x
  %i.gn = fcmp ogt float %i.fg, f0x3C23D70A
  %.sroa.speculated109.2 = select i1 %i.gn, float %i.fg, float f0x3C23D70A
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.go = fcmp ogt float %i.ff, f0x3C23D70A
  %.sroa.speculated113.2 = select i1 %i.go, float %i.ff, float f0x3C23D70A
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.critedge.2
  %.sink.2 = phi float [ %.sroa.speculated113.2, %bb.y ], [ 1.000000e+00, %.critedge.2 ] ; 2 uses
  %i.gp = phi float [ 1.000000e+00, %bb.y ], [ %.sroa.speculated109.2, %.critedge.2 ] ; 2 uses
  store float %.sink.2, ptr %i.fd, align 8, !tbaa !19
  store float %i.gp, ptr %i.fe, align 4, !tbaa !19
  %i.gq = load float, ptr %i.ez, align 8, !tbaa !19 ; 2 uses
  %i.gr = load float, ptr %i.ex, align 8, !tbaa !19 ; 2 uses
  %i.gs = fsub float %i.gq, %i.gr
  %i.gt = fdiv float 5.000000e-01, %i.gs
  %i.gu = load float, ptr %i.fa, align 8, !tbaa !19
  %i.gv = load float, ptr %i.ey, align 4, !tbaa !19 ; 2 uses
  %i.gw = fsub float %i.gv, %i.gr                 ; 2 uses
  %i.gx = fmul float %.sink.2, %i.gw
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gu, float 2.000000e+00, float %i.gx)
  %i.gz = fsub float %i.gq, %i.gv                 ; 2 uses
  %i.ha = load float, ptr %i.fc, align 8, !tbaa !19
  %i.hb = fneg float %i.gz
  %i.hc = fmul float %i.gp, %i.hb
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.ha, float 2.000000e+00, float %i.hc)
  %i.he = fmul float %i.gw, %i.hd
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.gy, float %i.gz, float %i.he)
  %i.hg = fmul float %i.gt, %i.hf
  br label %.sink.split.2

.sink.split.2:                                    ; preds = %bb.z, %bb.w
  %.sink128.2 = phi float [ %i.hg, %bb.z ], [ %i.gm, %bb.w ]
  store float %.sink128.2, ptr %i.fb, align 4, !tbaa !19
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3: ; preds = %.sink.split.2, %bb.t, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ad, i64 44 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ae, i64 36 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ae, i64 44 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.af, i64 28 ; 2 uses
  %i.hp = select i1 %i.ab, float %i.aa, float %i.y ; 4 uses
  %i.hq = fsub float 2.000000e+00, %i.hp          ; 6 uses
  %storemerge.3 = select i1 %i.ab, float %i.hp, float %i.hq ; 3 uses
  %i.hr = fcmp une float %storemerge.3, 1.000000e+00
  br i1 %i.hr, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3
  %i.hs = load double, ptr %.in, align 8, !tbaa !25
  %i.ht = fptrunc double %i.hs to float           ; 2 uses
  %i.hu = load double, ptr %.in95, align 8, !tbaa !25
  %i.hv = fptrunc double %i.hu to float           ; 2 uses
  %i.hw = select i1 %i.ab, float %i.hv, float %i.ht ; 4 uses
  store float %i.hw, ptr %i.hh, align 4, !tbaa !19
  %i.hx = select i1 %i.ab, float %i.ht, float %i.hv ; 3 uses
  store float %i.hx, ptr %i.hj, align 4, !tbaa !19
  store float %i.hw, ptr %i.hk, align 4, !tbaa !19
  store float %i.hx, ptr %i.hm, align 4, !tbaa !19
  %i.hy = fsub float %i.hx, %i.hw
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hy, float 5.000000e-01, float %i.hw)
  store float %i.hz, ptr %i.hi, align 8, !tbaa !19
  %i.ia = fcmp olt float %storemerge.3, 1.000000e+00
  br i1 %i.ia, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ib = fcmp ogt float %storemerge.3, 1.000000e+00
  br i1 %i.ib, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ab, label %bb.ad, label %.critedge97.3

.critedge97.3:                                    ; preds = %bb.ac
  %i.ic = fsub float 2.000000e+00, %i.hq          ; 2 uses
  %i.id = fcmp ogt float %i.ic, f0x3C23D70A
  %.sroa.speculated.3 = select i1 %i.id, float %i.ic, float f0x3C23D70A
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ie = fcmp ogt float %i.hq, f0x3C23D70A
  %.sroa.speculated104.3 = select i1 %i.ie, float %i.hq, float f0x3C23D70A
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge97.3
  %.sink127.3 = phi float [ %.sroa.speculated104.3, %bb.ad ], [ 1.000000e+00, %.critedge97.3 ] ; 2 uses
  %i.if = phi float [ 1.000000e+00, %bb.ad ], [ %.sroa.speculated.3, %.critedge97.3 ] ; 2 uses
  store float %.sink127.3, ptr %i.hn, align 8, !tbaa !19
  store float %i.if, ptr %i.ho, align 4, !tbaa !19
  %i.ig = load <2 x float>, ptr %i.hi, align 8, !tbaa !19
  %i.ih = load <2 x float>, ptr %i.hh, align 4, !tbaa !19
  %i.ii = fsub <2 x float> %i.ig, %i.ih           ; 3 uses
  %i.ij = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ii)
  %i.ik = fdiv float 5.000000e-01, %i.ij
  %i.il = load float, ptr %i.hk, align 4, !tbaa !19
  %i.im = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %i.in = fmul float %i.im, %.sink127.3
  %i.io = tail call float @llvm.fmuladd.f32(float %i.il, float 2.000000e+00, float %i.in)
  %i.ip = load float, ptr %i.hm, align 4, !tbaa !19
  %i.iq = extractelement <2 x float> %i.ii, i64 1 ; 2 uses
  %i.ir = fneg float %i.iq
  %i.is = fmul float %i.if, %i.ir
  %i.it = tail call float @llvm.fmuladd.f32(float %i.ip, float 2.000000e+00, float %i.is)
  %i.iu = fmul float %i.im, %i.it
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.io, float %i.iq, float %i.iu)
  %i.iw = fmul float %i.ik, %i.iv
  br label %.sink.split.3

bb.af:                                            ; preds = %bb.aa
  br i1 %i.ab, label %bb.ag, label %.critedge.3

.critedge.3:                                      ; preds = %bb.af
  %i.ix = fcmp ogt float %i.hq, f0x3C23D70A
  %.sroa.speculated109.3 = select i1 %i.ix, float %i.hq, float f0x3C23D70A
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.iy = fcmp ogt float %i.hp, f0x3C23D70A
  %.sroa.speculated113.3 = select i1 %i.iy, float %i.hp, float f0x3C23D70A
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.critedge.3
  %.sink.3 = phi float [ %.sroa.speculated113.3, %bb.ag ], [ 1.000000e+00, %.critedge.3 ] ; 2 uses
  %i.iz = phi float [ 1.000000e+00, %bb.ag ], [ %.sroa.speculated109.3, %.critedge.3 ] ; 2 uses
  store float %.sink.3, ptr %i.hn, align 8, !tbaa !19
  store float %i.iz, ptr %i.ho, align 4, !tbaa !19
  %i.ja = load float, ptr %i.hj, align 4, !tbaa !19 ; 2 uses
  %i.jb = load float, ptr %i.hh, align 4, !tbaa !19 ; 2 uses
  %i.jc = fsub float %i.ja, %i.jb
  %i.jd = fdiv float 5.000000e-01, %i.jc
  %i.je = load float, ptr %i.hk, align 4, !tbaa !19
  %i.jf = load float, ptr %i.hi, align 8, !tbaa !19 ; 2 uses
  %i.jg = fsub float %i.jf, %i.jb                 ; 2 uses
  %i.jh = fmul float %.sink.3, %i.jg
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.je, float 2.000000e+00, float %i.jh)
  %i.jj = fsub float %i.ja, %i.jf                 ; 2 uses
  %i.jk = load float, ptr %i.hm, align 4, !tbaa !19
  %i.jl = fneg float %i.jj
  %i.jm = fmul float %i.iz, %i.jl
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jk, float 2.000000e+00, float %i.jm)
  %i.jo = fmul float %i.jg, %i.jn
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.jj, float %i.jo)
  %i.jq = fmul float %i.jd, %i.jp
  br label %.sink.split.3

.sink.split.3:                                    ; preds = %bb.ah, %bb.ae
  %.sink128.3 = phi float [ %i.jq, %bb.ah ], [ %i.iw, %bb.ae ]
  store float %.sink128.3, ptr %i.hl, align 8, !tbaa !19
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.3, %bb.ab, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3
  br i1 %.not, label %bb.b, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender21whiteBlack_precomputeERKNS_11GradingToneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.b:                                             ; preds = %bb.af
  ret void

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit: ; preds = %bb.a, %bb.af
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.af ]
  %.091.idx119.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.a ], [ 1, %bb.af ] ; 2 uses
  %i.k = trunc nuw i8 %.091.idx119.sroa.phi.sroa.speculated to i1 ; 20 uses
  %i.l = zext nneg i8 %.091.idx119.sroa.phi.sroa.speculated to i64 ; 4 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.l ; 8 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.l ; 10 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.l ; 10 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.l ; 4 uses
  %.in.v = select i1 %i.k, i64 32, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.q = load double, ptr %.in, align 8, !tbaa !25
  %i.r = fptrunc double %i.q to float             ; 31 uses
  %.in94.v = select i1 %i.k, i64 40, i64 56
  %.in94 = getelementptr inbounds nuw i8, ptr %0, i64 %.in94.v
  %i.s = load double, ptr %.in94, align 8, !tbaa !25
  %i.t = fptrunc double %i.s to float             ; 2 uses
  %i.u = fsub float %i.r, %i.t                    ; 2 uses
  %i.v = select i1 %i.k, float %i.u, float %i.r   ; 5 uses
  %i.w = fadd float %i.v, %i.t                    ; 2 uses
  %i.x = select i1 %i.k, float %i.r, float %i.w   ; 4 uses
  %i.y = fsub float %i.r, %i.u
  %i.z = fneg float %i.y                          ; 8 uses
  %i.aa = fsub float %i.w, %i.r                   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %spec.select.idx = select i1 %i.k, i64 0, i64 192
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  %.in126 = load double, ptr %spec.select, align 8, !tbaa !10
  %i.ae = fptrunc double %.in126 to float         ; 6 uses
  store float %i.v, ptr %i.m, align 8, !tbaa !19
  store float %i.x, ptr %i.ab, align 4, !tbaa !19
  %i.af = fsub float 2.000000e+00, %i.ae          ; 5 uses
  %i.ag = select i1 %i.k, float %i.af, float %i.ae ; 2 uses
  %i.ah = fcmp olt float %i.ag, 1.000000e+00
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  br i1 %i.k, label %.thread, label %.thread130

.thread130:                                       ; preds = %bb.c
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !19
  %i.ai = fcmp ogt float %i.ae, f0x3C23D70A
  %.sroa.speculated109 = select i1 %i.ai, float %i.ae, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated109, ptr %i.ad, align 4, !tbaa !19
  store float %i.r, ptr %i.n, align 8, !tbaa !19
  %i.aj = fadd float %.sroa.speculated109, 1.000000e+00
  %i.ak = fmul float %i.aa, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float 5.000000e-01, float %i.r)
  store float %i.al, ptr %i.ac, align 4, !tbaa !19
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

.thread:                                          ; preds = %bb.c
  %i.am = fcmp ogt float %i.af, f0x3C23D70A
  %.sroa.speculated105 = select i1 %i.am, float %i.af, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated105, ptr %i.o, align 8, !tbaa !19
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !19
  store float %i.r, ptr %i.ac, align 4, !tbaa !19
  %i.an = fadd float %.sroa.speculated105, 1.000000e+00
  %i.ao = fmul float %i.an, %i.z
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float 5.000000e-01, float %i.r)
  store float %i.ap, ptr %i.n, align 8, !tbaa !19
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %i.aq = fcmp ogt float %i.ag, 1.000000e+00
  br i1 %i.aq, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = fcmp ogt float %i.af, f0x3C23D70A
  %.sroa.speculated101 = select i1 %i.ar, float %i.af, float f0x3C23D70A
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.as = fcmp ogt float %i.ae, f0x3C23D70A
  %.sroa.speculated = select i1 %i.as, float %i.ae, float f0x3C23D70A ; 2 uses
  store float %i.r, ptr %i.ac, align 4, !tbaa !19
  %i.at = fadd float %.sroa.speculated, 1.000000e+00
  %i.au = fmul float %i.at, %i.z
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float 5.000000e-01, float %i.r)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi float [ %.sroa.speculated, %bb.g ], [ 1.000000e+00, %bb.f ] ; 2 uses
  %.sroa.speculated101.sink = phi float [ 1.000000e+00, %bb.g ], [ %.sroa.speculated101, %bb.f ] ; 2 uses
  %storemerge = phi float [ %i.av, %bb.g ], [ %i.r, %bb.f ]
  store float %.sink, ptr %i.o, align 8, !tbaa !19
  store float %.sroa.speculated101.sink, ptr %i.ad, align 4, !tbaa !19
  store float %storemerge, ptr %i.n, align 8, !tbaa !19
  %i.aw = fadd float %.sink, %.sroa.speculated101.sink
  %i.ax = fmul float %i.aw, 5.000000e-01
  store float %i.ax, ptr %i.p, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %spec.select135 = select i1 %i.k, ptr %i.j, ptr %i.g
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1: ; preds = %bb.i, %.thread, %.thread130
  %.in127.in = phi ptr [ %i.g, %.thread130 ], [ %spec.select135, %bb.i ], [ %i.j, %.thread ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.in127 = load double, ptr %.in127.in, align 8, !tbaa !11
  %i.bf = fptrunc double %.in127 to float         ; 6 uses
  store float %i.v, ptr %i.ay, align 8, !tbaa !19
  store float %i.x, ptr %i.az, align 4, !tbaa !19
  %i.bg = fsub float 2.000000e+00, %i.bf          ; 5 uses
  %i.bh = select i1 %i.k, float %i.bg, float %i.bf ; 2 uses
  %i.bi = fcmp olt float %i.bh, 1.000000e+00
  br i1 %i.bi, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1
  %i.bj = fcmp ogt float %i.bh, 1.000000e+00
  br i1 %i.bj, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.k, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = fcmp ogt float %i.bg, f0x3C23D70A
  %.sroa.speculated101.1 = select i1 %i.bk, float %i.bg, float f0x3C23D70A
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bl = fcmp ogt float %i.bf, f0x3C23D70A
  %.sroa.speculated.1 = select i1 %i.bl, float %i.bf, float f0x3C23D70A ; 2 uses
  store float %i.r, ptr %i.bb, align 4, !tbaa !19
  %i.bm = fadd float %.sroa.speculated.1, 1.000000e+00
  %i.bn = fmul float %i.bm, %i.z
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float 5.000000e-01, float %i.r)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink120 = phi float [ %.sroa.speculated.1, %bb.m ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %.sroa.speculated101.1.sink = phi float [ 1.000000e+00, %bb.m ], [ %.sroa.speculated101.1, %bb.l ] ; 2 uses
  %storemerge.1 = phi float [ %i.bo, %bb.m ], [ %i.r, %bb.l ]
  store float %.sink120, ptr %i.bc, align 8, !tbaa !19
  store float %.sroa.speculated101.1.sink, ptr %i.bd, align 4, !tbaa !19
  store float %storemerge.1, ptr %i.ba, align 8, !tbaa !19
  %i.bp = fadd float %.sink120, %.sroa.speculated101.1.sink
  %i.bq = fmul float %i.bp, 5.000000e-01
  store float %i.bq, ptr %i.be, align 4, !tbaa !19
  br label %bb.p

bb.o:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1
  br i1 %i.k, label %.thread131, label %.thread132

.thread132:                                       ; preds = %bb.o
  store float 1.000000e+00, ptr %i.bc, align 8, !tbaa !19
  %i.br = fcmp ogt float %i.bf, f0x3C23D70A
  %.sroa.speculated109.1 = select i1 %i.br, float %i.bf, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated109.1, ptr %i.bd, align 4, !tbaa !19
  store float %i.r, ptr %i.ba, align 8, !tbaa !19
  %i.bs = fadd float %.sroa.speculated109.1, 1.000000e+00
  %i.bt = fmul float %i.aa, %i.bs
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2.sink.split

.thread131:                                       ; preds = %bb.o
  %i.bu = fcmp ogt float %i.bg, f0x3C23D70A
  %.sroa.speculated105.1 = select i1 %i.bu, float %i.bg, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated105.1, ptr %i.bc, align 8, !tbaa !19
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !19
  store float %i.r, ptr %i.bb, align 4, !tbaa !19
  %i.bv = fadd float %.sroa.speculated105.1, 1.000000e+00
  %i.bw = fmul float %i.bv, %i.z
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2.sink.split

bb.p:                                             ; preds = %bb.n, %bb.j
  %spec.select136 = select i1 %i.k, ptr %i.i, ptr %i.f
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2.sink.split: ; preds = %.thread132, %.thread131
  %.sink139 = phi float [ %i.bw, %.thread131 ], [ %i.bt, %.thread132 ]
  %.sink138 = phi ptr [ %i.ba, %.thread131 ], [ %i.bb, %.thread132 ]
  %.in128.in.ph = phi ptr [ %i.i, %.thread131 ], [ %i.f, %.thread132 ]
  %i.bx = tail call float @llvm.fmuladd.f32(float %.sink139, float 5.000000e-01, float %i.r)
  store float %i.bx, ptr %.sink138, align 4, !tbaa !19
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2: ; preds = %bb.p, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2.sink.split
  %.in128.in = phi ptr [ %.in128.in.ph, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2.sink.split ], [ %spec.select136, %bb.p ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.in128 = load double, ptr %.in128.in, align 8, !tbaa !12
  %i.cf = fptrunc double %.in128 to float         ; 6 uses
  store float %i.v, ptr %i.by, align 8, !tbaa !19
  store float %i.x, ptr %i.bz, align 4, !tbaa !19
  %i.cg = fsub float 2.000000e+00, %i.cf          ; 5 uses
  %i.ch = select i1 %i.k, float %i.cg, float %i.cf ; 2 uses
  %i.ci = fcmp olt float %i.ch, 1.000000e+00
  br i1 %i.ci, label %bb.v, label %bb.q
end_hunk_1
