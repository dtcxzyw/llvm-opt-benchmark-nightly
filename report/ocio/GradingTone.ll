Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingTone?download=true
inline.NumInlined: 239
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_520GradingTonePreRender21whiteBlack_precomputeERKNS_11GradingToneE:bb.a
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

bb.q:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2
  %i.cj = fcmp ogt float %i.ch, 1.000000e+00
  br i1 %i.cj, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  br i1 %i.k, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = fcmp ogt float %i.cg, f0x3C23D70A
  %.sroa.speculated101.2 = select i1 %i.ck, float %i.cg, float f0x3C23D70A
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cl = fcmp ogt float %i.cf, f0x3C23D70A
  %.sroa.speculated.2 = select i1 %i.cl, float %i.cf, float f0x3C23D70A ; 2 uses
  store float %i.r, ptr %i.cb, align 4, !tbaa !19
  %i.cm = fadd float %.sroa.speculated.2, 1.000000e+00
  %i.cn = fmul float %i.cm, %i.z
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float 5.000000e-01, float %i.r)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink121 = phi float [ %.sroa.speculated.2, %bb.t ], [ 1.000000e+00, %bb.s ] ; 2 uses
  %.sroa.speculated101.2.sink = phi float [ 1.000000e+00, %bb.t ], [ %.sroa.speculated101.2, %bb.s ] ; 2 uses
  %storemerge.2 = phi float [ %i.co, %bb.t ], [ %i.r, %bb.s ]
  store float %.sink121, ptr %i.cc, align 8, !tbaa !19
  store float %.sroa.speculated101.2.sink, ptr %i.cd, align 4, !tbaa !19
  store float %storemerge.2, ptr %i.ca, align 8, !tbaa !19
  %i.cp = fadd float %.sink121, %.sroa.speculated101.2.sink
  %i.cq = fmul float %i.cp, 5.000000e-01
  store float %i.cq, ptr %i.ce, align 8, !tbaa !19
  br label %bb.w

bb.v:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2
  br i1 %i.k, label %.thread133, label %.thread134

.thread134:                                       ; preds = %bb.v
  store float 1.000000e+00, ptr %i.cc, align 8, !tbaa !19
  %i.cr = fcmp ogt float %i.cf, f0x3C23D70A
  %.sroa.speculated109.2 = select i1 %i.cr, float %i.cf, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated109.2, ptr %i.cd, align 4, !tbaa !19
  store float %i.r, ptr %i.ca, align 8, !tbaa !19
  %i.cs = fadd float %.sroa.speculated109.2, 1.000000e+00
  %i.ct = fmul float %i.aa, %i.cs
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3.sink.split

.thread133:                                       ; preds = %bb.v
  %i.cu = fcmp ogt float %i.cg, f0x3C23D70A
  %.sroa.speculated105.2 = select i1 %i.cu, float %i.cg, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated105.2, ptr %i.cc, align 8, !tbaa !19
  store float 1.000000e+00, ptr %i.cd, align 4, !tbaa !19
  store float %i.r, ptr %i.cb, align 4, !tbaa !19
  %i.cv = fadd float %.sroa.speculated105.2, 1.000000e+00
  %i.cw = fmul float %i.cv, %i.z
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3.sink.split

bb.w:                                             ; preds = %bb.u, %bb.q
  %spec.select140 = select i1 %i.k, ptr %i.h, ptr %i.e
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3.sink.split: ; preds = %.thread134, %.thread133
  %.sink143 = phi float [ %i.cw, %.thread133 ], [ %i.ct, %.thread134 ]
  %.sink142 = phi ptr [ %i.ca, %.thread133 ], [ %i.cb, %.thread134 ]
  %.in129.in.ph = phi ptr [ %i.h, %.thread133 ], [ %i.e, %.thread134 ]
  %i.cx = tail call float @llvm.fmuladd.f32(float %.sink143, float 5.000000e-01, float %i.r)
  store float %i.cx, ptr %.sink142, align 4, !tbaa !19
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3: ; preds = %bb.w, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3.sink.split
  %.in129.in = phi ptr [ %.in129.in.ph, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3.sink.split ], [ %spec.select140, %bb.w ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 28 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.in129 = load double, ptr %.in129.in, align 8, !tbaa !13
  %i.df = fptrunc double %.in129 to float         ; 6 uses
  store float %i.v, ptr %i.cy, align 8, !tbaa !19
  store float %i.x, ptr %i.cz, align 4, !tbaa !19
  %i.dg = fsub float 2.000000e+00, %i.df          ; 5 uses
  %i.dh = select i1 %i.k, float %i.dg, float %i.df ; 2 uses
  %i.di = fcmp olt float %i.dh, 1.000000e+00
  br i1 %i.di, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3
  %i.dj = fcmp ogt float %i.dh, 1.000000e+00
  br i1 %i.dj, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  br i1 %i.k, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = fcmp ogt float %i.dg, f0x3C23D70A
  %.sroa.speculated101.3 = select i1 %i.dk, float %i.dg, float f0x3C23D70A
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dl = fcmp ogt float %i.df, f0x3C23D70A
  %.sroa.speculated.3 = select i1 %i.dl, float %i.df, float f0x3C23D70A ; 2 uses
  store float %i.r, ptr %i.db, align 4, !tbaa !19
  %i.dm = fadd float %.sroa.speculated.3, 1.000000e+00
  %i.dn = fmul float %i.dm, %i.z
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float 5.000000e-01, float %i.r)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink122 = phi float [ %.sroa.speculated.3, %bb.aa ], [ 1.000000e+00, %bb.z ] ; 2 uses
  %.sroa.speculated101.3.sink = phi float [ 1.000000e+00, %bb.aa ], [ %.sroa.speculated101.3, %bb.z ] ; 2 uses
  %storemerge.3 = phi float [ %i.do, %bb.aa ], [ %i.r, %bb.z ]
  store float %.sink122, ptr %i.dc, align 8, !tbaa !19
  store float %.sroa.speculated101.3.sink, ptr %i.dd, align 4, !tbaa !19
  store float %storemerge.3, ptr %i.da, align 8, !tbaa !19
  %i.dp = fadd float %.sink122, %.sroa.speculated101.3.sink
  %i.dq = fmul float %i.dp, 5.000000e-01
  store float %i.dq, ptr %i.de, align 4, !tbaa !19
  br label %bb.af

bb.ac:                                            ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.3
  br i1 %i.k, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float 1.000000e+00, ptr %i.dc, align 8, !tbaa !19
  %i.dr = fcmp ogt float %i.df, f0x3C23D70A
  %.sroa.speculated109.3 = select i1 %i.dr, float %i.df, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated109.3, ptr %i.dd, align 4, !tbaa !19
  store float %i.r, ptr %i.da, align 8, !tbaa !19
  %i.ds = fadd float %.sroa.speculated109.3, 1.000000e+00
  %i.dt = fmul float %i.aa, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float 5.000000e-01, float %i.r)
  store float %i.du, ptr %i.db, align 4, !tbaa !19
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.dv = fcmp ogt float %i.dg, f0x3C23D70A
  %.sroa.speculated105.3 = select i1 %i.dv, float %i.dg, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated105.3, ptr %i.dc, align 8, !tbaa !19
  store float 1.000000e+00, ptr %i.dd, align 4, !tbaa !19
  store float %i.r, ptr %i.db, align 4, !tbaa !19
  %i.dw = fadd float %.sroa.speculated105.3, 1.000000e+00
  %i.dx = fmul float %i.dw, %i.z
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float 5.000000e-01, float %i.r)
  store float %i.dy, ptr %i.da, align 8, !tbaa !19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.x
  br i1 %.not, label %bb.b, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender20scontrast_precomputeERKNS_11GradingToneEfff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load double, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  %i.c = fptrunc double %i.b to float             ; 5 uses
  %i.d = fcmp une float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ogt double %i.b, f0x3FF0000010000000
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp ogt float %i.c, 1.990000e+00
  %.sroa.speculated136 = select i1 %i.f, float 1.990000e+00, float %i.c
  %i.g = tail call float @llvm.fmuladd.f32(float %.sroa.speculated136, float -8.125000e-01, float 1.812500e+00)
  %i.h = fdiv float 1.000000e+00, %i.g
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = fcmp olt float %i.c, f0x3C23D70A
  %.sroa.speculated = select i1 %i.i, float f0x3C23D70A, float %i.c
  %i.j = tail call float @llvm.fmuladd.f32(float %.sroa.speculated, float 7.187500e-01, float 2.812500e-01)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi float [ %i.h, %bb.c ], [ %i.j, %bb.d ] ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 836 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 900 ; 2 uses
  store float %2, ptr %i.o, align 4, !tbaa !19
  store float %2, ptr %i.s, align 4, !tbaa !19
  %i.v = fsub float %2, %4
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.500000e-01, float %4) ; 5 uses
  store float %i.w, ptr %i.p, align 8, !tbaa !19
  store float %i.k, ptr %i.t, align 8, !tbaa !19
  %5 = fsub float %i.w, %4
  %i.x = fsub float %2, %i.w                      ; 2 uses
  %6 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %5, i64 1
  %7 = insertelement <2 x float> poison, float %i.k, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fdiv <2 x float> %6, %8                    ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0      ; 9 uses
  %11 = insertelement <2 x float> <float -0.000000e+00, float poison>, float %4, i64 1
  %12 = fadd <2 x float> %9, %11                  ; 2 uses
  %13 = extractelement <2 x float> %12, i64 1     ; 10 uses
  store float %13, ptr %i.l, align 8, !tbaa !19
  %i.y = fsub float %2, %13
  %i.z = fmul float %i.y, 3.000000e-01            ; 2 uses
  store float %10, ptr %i.u, align 4, !tbaa !19
  %14 = fneg <2 x float> %12                      ; 2 uses
  %15 = extractelement <2 x float> %14, i64 0
  %i.aa = tail call float @llvm.fmuladd.f32(float %15, float %2, float %i.x)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.k, float %13, float %i.aa)
  %i.ac = fsub float %i.k, %10
  %i.ad = fdiv float %i.ab, %i.ac                 ; 2 uses
  store float %13, ptr %i.m, align 4, !tbaa !19
  %16 = extractelement <2 x float> %14, i64 1
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float 2.000000e+00, float %16) ; 4 uses
  store float %i.ae, ptr %i.n, align 8, !tbaa !19
  %i.af = fcmp ogt float %i.ae, %2
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %2, ptr %i.n, align 8, !tbaa !19
  %i.ag = fneg float %2
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ad, float 2.000000e+00, float %i.ag) ; 2 uses
  store float %i.ah, ptr %i.m, align 4, !tbaa !19
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ai = fsub float %i.ae, %13
  %i.aj = fcmp olt float %i.ai, %i.z
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = fadd float %13, %i.z                    ; 3 uses
  store float %i.ak, ptr %i.n, align 8, !tbaa !19
  %i.al = fadd float %13, %i.ak
  %i.am = fmul float %i.al, 5.000000e-01          ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.k, float %13, float %i.x)
  %i.ao = fneg float %i.am
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.k, float %i.an)
  %i.aq = fsub float %2, %i.am
  %i.ar = fdiv float %i.ap, %i.aq                 ; 2 uses
  store float %i.ar, ptr %i.u, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.as = phi float [ %13, %bb.g ], [ %13, %bb.h ], [ %i.ah, %bb.f ]
  %i.at = phi float [ %i.ae, %bb.g ], [ %i.ak, %bb.h ], [ %2, %bb.f ]
  %i.au = phi float [ %10, %bb.g ], [ %i.ar, %bb.h ], [ %10, %bb.f ]
  store float %i.w, ptr %i.q, align 4, !tbaa !19
  %i.av = fadd float %i.k, %i.au
  %i.aw = fsub float %i.at, %i.as
  %i.ax = fmul float %i.av, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float 5.000000e-01, float %i.w)
  store float %i.ay, ptr %i.r, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 852 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float %3, ptr %i.az, align 8, !tbaa !19
  store float %3, ptr %i.bd, align 8, !tbaa !19
  %i.bj = fsub float %4, %3
  %i.bk = fneg float %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float 2.500000e-01, float %4) ; 5 uses
  store float %i.bl, ptr %i.bg, align 4, !tbaa !19
  store float %i.k, ptr %i.bi, align 4, !tbaa !19
  %i.bm = fsub float %4, %i.bl
  %i.bn = fdiv float %i.bm, %i.k
  %i.bo = fsub float %4, %i.bn                    ; 10 uses
  store float %i.bo, ptr %i.bc, align 4, !tbaa !19
  %i.bp = fsub float %i.bo, %3
  %i.bq = fmul float %i.bp, 3.000000e-01          ; 2 uses
  store float %10, ptr %i.bh, align 8, !tbaa !19
  %i.br = fsub float %i.bl, %3
  %i.bs = fneg float %i.k
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bo, float %i.br) ; 2 uses
  %i.bu = tail call float @llvm.fmuladd.f32(float %10, float %3, float %i.bt)
  %i.bv = fsub float %10, %i.k
  %i.bw = fdiv float %i.bu, %i.bv                 ; 2 uses
  store float %i.bo, ptr %i.bb, align 8, !tbaa !19
  %i.bx = fneg float %i.bo
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bw, float 2.000000e+00, float %i.bx) ; 4 uses
  store float %i.by, ptr %i.ba, align 4, !tbaa !19
  %i.bz = fcmp olt float %i.by, %3
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %3, ptr %i.ba, align 4, !tbaa !19
  %i.ca = fneg float %3
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bw, float 2.000000e+00, float %i.ca) ; 2 uses
  store float %i.cb, ptr %i.bb, align 8, !tbaa !19
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cc = fsub float %i.bo, %i.by
  %i.cd = fcmp olt float %i.cc, %i.bq
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = fsub float %i.bo, %i.bq                 ; 3 uses
  store float %i.ce, ptr %i.ba, align 4, !tbaa !19
  %i.cf = fadd float %i.bo, %i.ce
  %i.cg = fmul float %i.cf, 5.000000e-01          ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.k, float %i.bt)
  %i.ci = fsub float %i.cg, %3
  %i.cj = fdiv float %i.ch, %i.ci                 ; 2 uses
  store float %i.cj, ptr %i.bh, align 8, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ck = phi float [ %i.by, %bb.k ], [ %i.ce, %bb.l ], [ %3, %bb.j ]
  %i.cl = phi float [ %i.bo, %bb.k ], [ %i.bo, %bb.l ], [ %i.cb, %bb.j ]
  %i.cm = phi float [ %10, %bb.k ], [ %i.cj, %bb.l ], [ %10, %bb.j ]
  store float %i.bl, ptr %i.bf, align 8, !tbaa !19
  %i.cn = fadd float %i.k, %i.cm
  %i.co = fsub float %i.cl, %i.ck
  %i.cp = fneg float %i.co
  %i.cq = fmul float %i.cn, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float 5.000000e-01, float %i.bl)
  store float %i.cr, ptr %i.be, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"_ZTSN16OpenColorIO_v2_513GradingRGBMSWE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!10 = !{!9, !8, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!9, !8, i64 16}
!13 = !{!9, !8, i64 24}
!14 = !{!9, !8, i64 32}
!15 = !{!9, !8, i64 40}
!16 = !{!"_ZTSN16OpenColorIO_v2_511GradingToneE", !9, i64 0, !9, i64 48, !9, i64 96, !9, i64 144, !9, i64 192, !8, i64 240}
!17 = !{!16, !8, i64 240}
!18 = !{!"float", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"bool", !4, i64 0}
!21 = !{!"_ZTSN16OpenColorIO_v2_512GradingStyleE", !4, i64 0}
!22 = !{!"_ZTSN16OpenColorIO_v2_520GradingTonePreRenderE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !4, i64 64, !4, i64 160, !4, i64 256, !4, i64 352, !4, i64 448, !4, i64 544, !4, i64 608, !4, i64 672, !4, i64 736, !4, i64 800, !4, i64 832, !4, i64 864, !4, i64 896, !18, i64 912, !18, i64 916, !18, i64 920, !18, i64 924, !20, i64 928, !21, i64 932}
!23 = !{!22, !20, i64 928}
!24 = !{!22, !21, i64 932}
!25 = !{!8, !8, i64 0}
!26 = !{!"any pointer", !4, i64 0}
!27 = !{!"p1 omnipotent char", !26, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!29 = !{!"long", !4, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !29, i64 8, !4, i64 16}
!31 = !{!30, !27, i64 0}
!32 = !{!4, !4, i64 0}
!33 = !{!16, !8, i64 168}
!34 = !{!16, !8, i64 176}
!35 = !{!16, !8, i64 184}
!36 = !{!16, !8, i64 224}
!37 = !{!16, !8, i64 232}
!38 = !{!22, !8, i64 16}
!39 = !{!22, !8, i64 24}
!40 = !{!22, !8, i64 48}
!41 = !{!22, !8, i64 56}
!42 = !{!16, !8, i64 72}
!43 = !{!16, !8, i64 80}
!44 = !{!16, !8, i64 88}
!45 = !{!16, !8, i64 32}
!46 = !{!16, !8, i64 40}
!47 = !{!22, !8, i64 0}
!48 = !{!22, !8, i64 8}
!49 = !{!22, !8, i64 32}
!50 = !{!22, !8, i64 40}
!51 = !{!22, !18, i64 912}
!52 = !{!22, !18, i64 920}
!53 = !{!22, !18, i64 916}
!54 = !{!22, !18, i64 924}
!55 = !{!"_ZTSN16OpenColorIO_v2_511RGBMChannelE", !4, i64 0}
!56 = !{!55, !55, i64 0}
end_hunk_0
