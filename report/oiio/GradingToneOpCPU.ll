inline.NumInlined: 775
inline.NumDeleted: 179
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_119GradingToneFwdOpCPU9scontrastERKNS_11GradingToneERKNS_20GradingTonePreRenderEPf:bb.a
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
  %10 = insertelement <2 x float> poison, float %5, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %12 = insertelement <2 x float> poison, float %4, i64 0 ; 2 uses
  %13 = insertelement <2 x float> %12, float %6, i64 1
  %14 = fsub <2 x float> %11, %13
  %i.a = fneg float %7
  %i.b = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !84 ; 4 uses
  %i.c = fneg float %8
  %15 = fcmp olt float %i.b, %5
  %16 = fcmp olt float %i.b, %4
  %17 = fcmp olt float %i.b, %6
  %18 = load <2 x float>, ptr %9, align 4, !tbaa !84 ; 7 uses
  %19 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %20 = fsub <2 x float> %19, %18                 ; 2 uses
  %21 = fsub float %2, %1                         ; 3 uses
  %22 = fmul float %5, -2.000000e+00
  %23 = fmul float %21, %7                        ; 2 uses
  %24 = tail call float @llvm.fmuladd.f32(float %6, float 2.000000e+00, float %22)
  %i.d = fsub float %3, %2                        ; 4 uses
  %25 = tail call float @llvm.fmuladd.f32(float %i.c, float %i.d, float %24) ; 3 uses
  %i.e = insertelement <2 x float> poison, float %i.a, i64 0
  %i.f = insertelement <2 x float> %i.e, float %8, i64 1
  %26 = insertelement <2 x float> poison, float %21, i64 0 ; 2 uses
  %i.g = insertelement <2 x float> %26, float %i.d, i64 1
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> %i.g, <2 x float> %14)
  %i.i = insertelement <2 x float> poison, float %23, i64 0 ; 2 uses
  %i.j = insertelement <2 x float> %i.i, float %25, i64 1 ; 2 uses
  %27 = fmul <2 x float> %i.j, %i.j               ; 2 uses
  %i.k = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.l = fmul <2 x float> %i.h, splat (float 4.000000e+00) ; 2 uses
  %28 = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %29 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %30 = fmul <2 x float> %20, splat (float 2.000000e+00)
  %i.m = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = insertelement <2 x float> poison, float %1, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fsub <2 x float> %11, %18                ; 3 uses
  %31 = extractelement <2 x float> %i.q, i64 0
  %32 = extractelement <2 x float> %i.l, i64 1    ; 2 uses
  %33 = fmul float %32, %31
  %34 = extractelement <2 x float> %i.q, i64 1
  %35 = fmul float %32, %34
  %36 = extractelement <2 x float> %27, i64 1     ; 2 uses
  %37 = fsub float %36, %33
  %38 = fsub float %36, %35
  %i.r = fmul <2 x float> %i.q, splat (float 2.000000e+00)
  %39 = insertelement <2 x float> poison, float %25, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <4 x float> poison, float %i.b, i64 0
  %i.t = insertelement <4 x float> %i.s, float %4, i64 2 ; 2 uses
  %i.u = insertelement <4 x float> %i.t, float %5, i64 3
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.w = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 0, i32 0>
  %i.x = insertelement <4 x float> %i.w, float %6, i64 1
  %i.y = fsub <4 x float> %i.v, %i.x              ; 2 uses
  %i.z = fmul <4 x float> %i.y, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %41 = shufflevector <4 x float> %29, <4 x float> %i.y, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  %i.aa = fmul <4 x float> %28, %41
  %i.ab = fsub <4 x float> %i.k, %i.aa            ; 4 uses
  %i.ac = extractelement <4 x float> %i.ab, i64 2
  %i.ad = tail call float @sqrtf(float noundef %i.ac) #22, !tbaa !3
  %i.ae = extractelement <4 x float> %i.ab, i64 3
  %i.af = tail call float @sqrtf(float noundef %i.ae) #22, !tbaa !3
  %i.ag = extractelement <4 x float> %i.ab, i64 0
  %i.ah = tail call float @sqrtf(float noundef %i.ag) #22, !tbaa !3
  %i.ai = fadd float %23, %i.ah
  %i.aj = tail call float @sqrtf(float noundef %37) #22, !tbaa !3
  %i.ak = tail call float @sqrtf(float noundef %38) #22, !tbaa !3
  %i.al = extractelement <4 x float> %i.ab, i64 1
  %i.am = tail call float @sqrtf(float noundef %i.al) #22, !tbaa !3
  %i.an = fadd float %25, %i.am
  %i.ao = insertelement <4 x float> poison, float %7, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %8, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ai, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 3
  %i.as = fdiv <4 x float> %i.z, %i.ar            ; 4 uses
  %i.at = extractelement <4 x float> %i.as, i64 0
  %i.au = fadd float %1, %i.at
  %i.av = extractelement <4 x float> %i.as, i64 1
  %i.aw = fadd float %3, %i.av
  %i.ax = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.af, i64 1
  %i.az = fadd <2 x float> %i.m, %i.ay
  %i.ba = fdiv <2 x float> %30, %i.az
  %i.bb = fmul <2 x float> %i.n, %i.ba
  %i.bc = extractelement <4 x float> %i.as, i64 2
  %i.bd = fmul float %21, %i.bc
  %i.be = fsub <2 x float> %i.p, %i.bb
  %i.bf = fsub float %1, %i.bd
  %i.bg = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.ak, i64 1
  %i.bi = fadd <2 x float> %40, %i.bh
  %i.bj = fdiv <2 x float> %i.r, %i.bi
  %42 = insertelement <2 x float> poison, float %i.d, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %43, %i.bj
  %i.bl = extractelement <4 x float> %i.as, i64 3
  %i.bm = fmul float %i.d, %i.bl
  %i.bn = insertelement <2 x float> poison, float %2, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fsub <2 x float> %i.bo, %i.bk
  %i.bq = fsub float %2, %i.bm
  %i.br = fcmp olt <2 x float> %18, %11
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.be, <2 x float> %i.bp
  %i.bt = select i1 %15, float %i.bf, float %i.bq
  %i.bu = fsub <2 x float> %18, %19
  %i.bv = insertelement <2 x float> poison, float %7, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x float> %i.bu, %i.bw
  %i.by = fadd <2 x float> %i.p, %i.bx
  %i.bz = fcmp olt <2 x float> %18, %19
  %i.ca = select <2 x i1> %i.bz, <2 x float> %i.by, <2 x float> %i.bs
  %i.cb = select i1 %16, float %i.au, float %i.bt
  %i.cc = insertelement <2 x float> poison, float %6, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = fsub <2 x float> %18, %i.cd
  %i.cf = insertelement <2 x float> poison, float %8, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x float> %i.ce, %i.cg
  %i.ci = insertelement <2 x float> poison, float %3, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fadd <2 x float> %i.cj, %i.ch
  %i.cl = fcmp olt <2 x float> %18, %i.cd
  %i.cm = select <2 x i1> %i.cl, <2 x float> %i.ca, <2 x float> %i.ck
  %i.cn = select i1 %17, float %i.cb, float %i.aw
  store <2 x float> %i.cm, ptr %0, align 4, !tbaa !84
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cn, ptr %i.co, align 4, !tbaa !84
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

end_hunk_0
