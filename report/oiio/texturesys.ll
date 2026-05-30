inline.NumInlined: 5129
inline.NumDeleted: 1476
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !34
  store <4 x float> zeroinitializer, ptr %14, align 16, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !290 ; 4 uses
  %i.f = fcmp oge float %i.e, 0.000000e+00
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8
  %i.i = trunc i32 %i.h to i1
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !288 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load float, ptr %i.m, align 8, !tbaa !289 ; 2 uses
  %i.o = fmul float %8, %i.l                      ; 5 uses
  %i.p = fmul float %9, %i.n                      ; 5 uses
  %i.q = fmul float %10, %i.l                     ; 5 uses
  %i.r = fmul float %11, %i.n                     ; 5 uses
  %i.s = fmul float %i.p, %i.p
  %i.t = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.s) ; 2 uses
  %i.u = fmul float %i.r, %i.r
  %i.v = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.u) ; 2 uses
  %i.w = fcmp olt float %i.t, 1.000000e-16
  %i.x = fcmp olt float %i.v, 1.000000e-16        ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call float @llvm.sqrt.f32(float %i.v)
  %i.z = fdiv float f0x322BCC77, %i.y             ; 2 uses
  %i.aa = fmul float %i.r, %i.z
  %i.ab = fneg float %i.q
  %i.ac = fmul float %i.z, %i.ab
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.f:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.g, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call float @llvm.sqrt.f32(float %i.t)
  %i.ae = fdiv float f0x322BCC77, %i.ad           ; 2 uses
  %i.af = fneg float %i.p
  %i.ag = fmul float %i.ae, %i.af
  %i.ah = fmul float %i.o, %i.ae
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0122 = phi float [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %i.ag, %bb.g ], [ 0.000000e+00, %bb.d ]
  %.0121 = phi float [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.ah, %bb.g ], [ f0x322BCC77, %bb.d ]
  %.0120 = phi float [ %i.p, %bb.f ], [ %i.ac, %bb.e ], [ %i.p, %bb.g ], [ 0.000000e+00, %bb.d ]
  %.0119 = phi float [ %i.o, %bb.f ], [ %i.aa, %bb.e ], [ %i.o, %bb.g ], [ f0x322BCC77, %bb.d ]
  %i.ai = tail call float @llvm.fabs.f32(float %.0119) ; 2 uses
  %i.aj = tail call float @llvm.fabs.f32(float %.0122) ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %.sroa.speculated92 = select i1 %i.ak, float %i.aj, float %i.ai ; 4 uses
  %i.al = tail call float @llvm.fabs.f32(float %.0120) ; 2 uses
  %i.am = tail call float @llvm.fabs.f32(float %.0121) ; 2 uses
  %i.an = fcmp olt float %i.al, %i.am
  %.sroa.speculated = select i1 %i.an, float %i.am, float %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !280, !range !62, !noundef !63
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = fcmp olt float %.sroa.speculated92, %.sroa.speculated
  %i.as = fcmp olt float %.sroa.speculated, %.sroa.speculated92
  %..i75.val = select i1 %i.ar, float %.sroa.speculated, float %.sroa.speculated92
  %..i76.val = select i1 %i.as, float %.sroa.speculated, float %.sroa.speculated92
  %i.at = select i1 %i.aq, float %..i75.val, float %..i76.val
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aw = load float, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %i.ax = load float, ptr %i.av, align 4, !tbaa !26 ; 2 uses
  %i.ay = fcmp olt float %i.aw, %i.ax
  %i.az = select i1 %i.ay, float %i.ax, float %i.aw
  %i.ba = fadd float %i.at, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !197
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = sext i32 %i.bc to i64
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !198
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %i.bf, i64 %i.be ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !473 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 100
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !474 ; 7 uses
  %i.bl = icmp slt i32 %i.bk, %i.bi
  br i1 %i.bl, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !475
  %i.bo = sext i32 %i.bk to i64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = sitofp i32 %i.bq to float
  %i.bs = fmul float %i.ba, %i.br                 ; 2 uses
  %i.bt = fcmp ugt float %i.bs, 1.000000e+00
  br i1 %i.bt, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.h
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bi, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.h, !llvm.loop !476

.loopexit.i:                                      ; preds = %bb.h
  %i.bu = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bs, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i = fcmp oge float %i.bw, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i, float %i.bw, float 0.000000e+00 ; 2 uses
  %i.bx = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.bx, float 1.000000e+00, float %.0.i77.i ; 6 uses
  %i.by = fsub float 1.000000e+00, %.1.i78.i
  %i.bz = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.bz, label %.loopexit.i.thread, label %bb.i

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %.loopexit.i
  %i.ca = add nsw i32 %i.bi, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.i:                                             ; preds = %.loopexit.i
  %.not174 = icmp slt i32 %i.bk, %i.bu
  br i1 %.not174, label %bb.j, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !193
  switch i8 %i.cc, label %bb.l [
    i8 1, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.l:                                             ; preds = %bb.j
  br i1 %i.j, label %bb.m, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.m:                                             ; preds = %bb.l
  %i.cd = fcmp ult float %i.e, %.1.i78.i          ; 2 uses
  %i.ce = fdiv float %i.e, %.1.i78.i
  %i.cf = fsub float %i.e, %.1.i78.i
  %i.cg = fsub float 1.000000e+00, %.1.i78.i
  %i.ch = fdiv float %i.cf, %i.cg
  %.sroa.0146.1 = select i1 %i.cd, i32 %i.bu, i32 %i.bv ; 2 uses
  %.sink109.i = select i1 %i.cd, float %i.ce, float %i.ch ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.ci = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.ci, float 1.000000e+00, float %.0.i.i
  store float %.1.i.i, ptr %i.d, align 8, !tbaa !290
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.i, %bb.j, %.loopexit.i.thread, %bb.k, %bb.l, %bb.m
  %.sroa.0146.2 = phi i32 [ %i.ca, %.loopexit.i.thread ], [ %i.bu, %bb.k ], [ %.sroa.0146.1, %bb.m ], [ %i.bv, %bb.l ], [ %i.bk, %bb.j ], [ %i.bk, %bb.i ] ; 2 uses
  %.sroa.10.1 = phi float [ 0.000000e+00, %.loopexit.i.thread ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.m ], [ %.1.i78.i, %bb.l ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 4 uses
  %.sroa.0.1 = phi float [ 1.000000e+00, %.loopexit.i.thread ], [ 1.000000e+00, %bb.k ], [ 1.000000e+00, %bb.m ], [ %i.by, %bb.l ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.i ] ; 3 uses
  %.sroa.11.2 = phi i32 [ %i.ca, %.loopexit.i.thread ], [ %i.bu, %bb.k ], [ %.sroa.0146.1, %bb.m ], [ %i.bu, %bb.l ], [ %i.bk, %bb.j ], [ %i.bk, %bb.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !276
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E16sample_functions, i64 %i.cl
  %.unpack = load i64, ptr %i.cm, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store float %6, ptr %i.a, align 16, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.cn, align 4, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.co, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store float %7, ptr %i.b, align 16, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.cp, align 4, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.cq, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_.weight, i64 16, i1 false)
  %i.cr = inttoptr i64 %.unpack to ptr            ; 4 uses
  %i.cs = fcmp une float %.sroa.0.1, 0.000000e+00 ; 2 uses
  br i1 %.not, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.cs, label %bb.p, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.cs, label %bb.n, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.ct = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0146.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %18 = zext i1 %i.ct to i8
  %i.cu = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cw = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.cx = fmul <4 x float> %i.cv, %i.cw
  %i.cy = fadd <4 x float> %i.cx, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1: ; preds = %bb.n, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  %.sroa.088.1.us = phi <4 x float> [ %i.cy, %bb.n ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %.158.us = phi i64 [ 1, %bb.n ], [ 0, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %.1.us = phi i8 [ %18, %bb.n ], [ 1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %i.cz = fcmp une float %.sroa.10.1, 0.000000e+00
  br i1 %i.cz, label %bb.o, label %.split.us.thread

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.da = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.11.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %19 = icmp ne i8 %.1.us, 0
  %i.db = and i1 %i.da, %19
  %20 = zext i1 %i.db to i8
  %i.dc = add nuw nsw i64 %.158.us, 1
  %i.dd = insertelement <4 x float> poison, float %.sroa.10.1, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.dg = fmul <4 x float> %i.de, %i.df
  %i.dh = fadd <4 x float> %.sroa.088.1.us, %i.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %.split.us.thread

.split.us.thread:                                 ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1, %bb.o
  %.us-phi.ph = phi <4 x float> [ %.sroa.088.1.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.dh, %bb.o ]
  %.us-phi138.ph = phi i64 [ %.158.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.dc, %bb.o ]
  %.us-phi139.ph = phi i8 [ %.1.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %20, %bb.o ]
  store <4 x float> %.us-phi.ph, ptr %12, align 16, !tbaa !34
  br label %bb.s

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.di = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0146.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %21 = zext i1 %i.di to i8
  %i.dj = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.dl = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.dm = fmul <4 x float> %i.dk, %i.dl
  %i.dn = fadd <4 x float> %i.dm, zeroinitializer
  %i.do = load <4 x float>, ptr %16, align 16, !tbaa !34
  %i.dp = fmul <4 x float> %i.dk, %i.do
  %i.dq = fadd <4 x float> %i.dp, zeroinitializer
  %i.dr = load <4 x float>, ptr %17, align 16, !tbaa !34
  %i.ds = fmul <4 x float> %i.dk, %i.dr
  %i.dt = fadd <4 x float> %i.ds, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader, %bb.p
  %.sroa.088.1 = phi <4 x float> [ %i.dn, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.sroa.087.3 = phi <4 x float> [ %i.dq, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.sroa.086.3 = phi <4 x float> [ %i.dt, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.158 = phi i64 [ 1, %bb.p ], [ 0, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.1 = phi i8 [ %21, %bb.p ], [ 1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %i.du = fcmp une float %.sroa.10.1, 0.000000e+00
  br i1 %i.du, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.dv = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.11.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %22 = icmp ne i8 %.1, 0
  %i.dw = and i1 %i.dv, %22
  %23 = zext i1 %i.dw to i8
  %i.dx = add nuw nsw i64 %.158, 1
  %i.dy = insertelement <4 x float> poison, float %.sroa.10.1, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ea = load <4 x float>, ptr %15, align 16, !tbaa !34
  %i.eb = fmul <4 x float> %i.dz, %i.ea
  %i.ec = fadd <4 x float> %.sroa.088.1, %i.eb
  %i.ed = load <4 x float>, ptr %16, align 16, !tbaa !34
  %i.ee = fmul <4 x float> %i.dz, %i.ed
  %i.ef = fadd <4 x float> %.sroa.087.3, %i.ee
  %i.eg = load <4 x float>, ptr %17, align 16, !tbaa !34
  %i.eh = fmul <4 x float> %i.dz, %i.eg
  %i.ei = fadd <4 x float> %.sroa.086.3, %i.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1
  %.sroa.088.1.1 = phi <4 x float> [ %i.ec, %bb.q ], [ %.sroa.088.1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.sroa.087.3.1 = phi <4 x float> [ %i.ef, %bb.q ], [ %.sroa.087.3, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.sroa.086.3.1 = phi <4 x float> [ %i.ei, %bb.q ], [ %.sroa.086.3, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.158.1 = phi i64 [ %i.dx, %bb.q ], [ %.158, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.1.1 = phi i8 [ %23, %bb.q ], [ %.1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  store <4 x float> %.sroa.088.1.1, ptr %12, align 16, !tbaa !34
  store <4 x float> %.sroa.087.3.1, ptr %13, align 16, !tbaa !34
  store <4 x float> %.sroa.086.3.1, ptr %14, align 16, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %.split.us.thread, %bb.r
  %.us-phi139168 = phi i8 [ %.us-phi139.ph, %.split.us.thread ], [ %.1.1, %bb.r ]
  %.us-phi138167 = phi i64 [ %.us-phi138.ph, %.split.us.thread ], [ %.158.1, %bb.r ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.ek = load <2 x i64>, ptr %i.ej, align 8, !tbaa !195
  %i.el = insertelement <2 x i64> poison, i64 %.us-phi138167, i64 0
  %i.em = shufflevector <2 x i64> %i.el, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.en = add nsw <2 x i64> %i.ek, %i.em
  store <2 x i64> %i.en, ptr %i.ej, align 8, !tbaa !195
  %i.eo = load i8, ptr %i.cj, align 4, !tbaa !276 ; 2 uses
  %i.ep = icmp ult i8 %i.eo, 4
  br i1 %i.ep, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %bb.s
  %i.eq = zext nneg i8 %i.eo to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_, i64 %i.eq
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %switch.load ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !195
  %i.et = add nsw i64 %i.es, %.us-phi138167
  store i64 %i.et, ptr %i.er, align 8, !tbaa !195
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %switch.lookup
  %24 = trunc nuw i8 %.us-phi139168 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %24
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #25

declare noundef i32 @_ZN11OpenImageIO4v3_114ImageCacheImpl18subimage_from_nameEPNS0_14ImageCacheFileENS0_7ustringE(ptr noundef nonnull align 64 dereferenceable(25240), ptr noundef, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNS0_7ustringES3_EEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.324", align 16 ; 7 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #3, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3, !noalias !482
  %i.b = load ptr, ptr %2, align 8, !tbaa !196, !noalias !482 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !173, !noalias !482
  br label %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i

_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store ptr %i.b, ptr %4, align 16, !tbaa !34, !noalias !482
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !34, !noalias !482
  %i.f = load ptr, ptr %3, align 8, !tbaa !196, !noalias !482 ; 3 uses
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !173, !noalias !482
  br label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit

_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit: ; preds = %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i, %bb.c
  %.0.i.i.i.i.i4.i = phi i64 [ %i.h, %bb.c ], [ 0, %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.f, ptr %i.i, align 16, !tbaa !34, !noalias !482
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.0.i.i.i.i.i4.i, ptr %i.j, align 8, !tbaa !34, !noalias !482
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 221, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3, !noalias !482
  %i.k = load ptr, ptr %6, align 8, !tbaa !30
  store ptr %i.k, ptr %5, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !107
  store i64 %i.n, ptr %i.l, align 8, !tbaa !106
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.o = load ptr, ptr %6, align 8, !tbaa !30     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !34
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  ret void

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !30     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.e
  %i.x = load i64, ptr %i.v, align 8, !tbaa !34
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  resume { ptr, i32 } %i.t
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #25

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(400) %5, ptr noundef %6, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(76) %7, i32 noundef %8, i32 noundef %9, ptr noundef readonly captures(none) %10, ptr noundef writeonly captures(none) %11, ptr noundef writeonly captures(address_is_null) %12, ptr noundef writeonly captures(none) %13) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %14 = alloca %"struct.OpenImageIO::v3_1::TileID", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !197  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.f = sext i32 %i.d to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !198
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %i.f ; 3 uses
  %i.i = sext i32 %4 to i64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !300
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !301  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %.not.i, ptr %i.n, ptr %i.l    ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !485
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !245
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.x = load i8, ptr %i.w, align 1, !tbaa !248
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ab = load i32, ptr %7, align 8, !tbaa !187   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !311 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.ag = icmp sgt i32 %i.ad, %i.af               ; 2 uses
  %i.ah = add nsw i32 %i.ab, %9
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.ad ; 2 uses
  %spec.select117 = select i1 %i.ag, i32 %i.ab, i32 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #3
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !285
  store i32 0, ptr %14, align 8, !tbaa !313
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !315
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.al, align 8, !tbaa !316
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %i.d, ptr %i.am, align 4, !tbaa !317
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %4, ptr %i.an, align 8, !tbaa !318
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.ap = trunc i32 %spec.select117 to i16
  store i16 %i.ap, ptr %i.ao, align 4, !tbaa !319
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 22 ; 3 uses
  %i.ar = trunc i32 %spec.select to i16
  store i16 %i.ar, ptr %i.aq, align 2, !tbaa !320
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %i.aj, ptr %i.as, align 8, !tbaa !321
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 0, ptr %i.at, align 4, !tbaa !322
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %5, ptr %i.au, align 8, !tbaa !323
  %i.av = icmp slt i32 %spec.select, %spec.select117
  br i1 %i.av, label %bb.b, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !227
  %i.ay = trunc i32 %i.ax to i16
  store i16 %i.ay, ptr %i.aq, align 2, !tbaa !320
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.a, %bb.b
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 165
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 80
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.x, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %.sroa.0157.0.lcssa = phi <2 x i64> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.sroa.0157.1, %bb.x ]
  %.0101.lcssa = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.1102, %bb.x ] ; 2 uses
  %.0.lcssa = phi i1 [ true, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.2, %bb.x ]
  %i.bk = sext i32 %9 to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 %i.bk
  %.sroa.0143.0.copyload181 = load <4 x i32>, ptr %i.bl, align 16, !tbaa !34 ; 2 uses
  %i.bm = bitcast <4 x i32> %.sroa.0143.0.copyload181 to <2 x i64>
  %i.bn = and <2 x i64> %.sroa.0157.0.lcssa, %i.bm ; 3 uses
  %i.bo = fcmp olt float %.0101.lcssa, 1.000000e+00
  %i.bp = icmp sgt i32 %8, %9
  %or.cond118 = and i1 %i.bp, %i.bo
end_hunk_0
