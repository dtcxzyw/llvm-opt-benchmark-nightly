Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_perlin?download=true
inline.NumInlined: 36
begin_hunk_0_@stb_perlin_noise3_internal:bb.a
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  %i.du = shufflevector <2 x float> %i.dq, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dn, <2 x float> %i.dt)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !9
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.ce, i64 1
  %i.ea = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ea, <2 x float> %i.dv) ; 2 uses
  %i.ec = add nuw nsw i32 %i.ad, %i.bq
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !10
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.eg ; 2 uses
  %i.ei = load <2 x float>, ptr %i.eh, align 16, !tbaa !9 ; 2 uses
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.ek = fmul <2 x float> %i.dr, %i.ej
  %i.el = shufflevector <2 x float> %i.ei, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dn, <2 x float> %i.ek)
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.eo = load float, ptr %i.en, align 8, !tbaa !9
  %i.ep = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.cn, i64 1
  %i.er = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.er, <2 x float> %i.em)
  %i.et = add nuw nsw i32 %i.ab, %i.bv
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !10
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ex ; 2 uses
  %i.ez = load <2 x float>, ptr %i.ey, align 16, !tbaa !9 ; 2 uses
  %i.fa = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.fc = fmul <2 x float> %i.fa, %i.fb
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.dn, <2 x float> %i.fc)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !9
  %i.fh = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.cx, i64 1
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.ea, <2 x float> %i.fe) ; 2 uses
  %i.fk = add nuw nsw i32 %i.ad, %i.bv
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !10
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fo ; 2 uses
  %i.fq = load <2 x float>, ptr %i.fp, align 16, !tbaa !9 ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> %i.de, <2 x i32> <i32 1, i32 3>
  %i.fs = fmul <2 x float> %i.fa, %i.fr
  %i.ft = shufflevector <2 x float> %i.fq, <2 x float> %i.de, <2 x i32> <i32 0, i32 2>
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.dn, <2 x float> %i.fs)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !9
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.dg, i64 1
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.er, <2 x float> %i.fu)
  %i.ga = fsub <2 x float> %i.es, %i.eb
  %i.gb = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.eb) ; 2 uses
  %i.gd = fsub <2 x float> %i.fz, %i.fj
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.gb, <2 x float> %i.fj)
  %i.gf = fsub <2 x float> %i.ge, %i.gc
  %i.gg = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gg, <2 x float> %i.gc) ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0
  %i.gj = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gk = fsub float %i.gi, %i.gj
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.al, float %i.gj)
  ret float %i.gl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @stb_perlin_noise3(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call float @stb_perlin_noise3_internal(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext 0)
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @stb_perlin_noise3_seed(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = trunc i32 %6 to i8
  %i.b = tail call float @stb_perlin_noise3_internal(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %i.a)
  ret float %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stb_perlin_ridge_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02330 = phi float [ %i.k, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.02429 = phi float [ %i.m, %.lr.ph ], [ 5.000000e-01, %bb.a ] ; 2 uses
  %.02528 = phi float [ %i.i, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %.02627 = phi float [ %i.l, %.lr.ph ], [ 1.000000e+00, %bb.a ] ; 4 uses
  %i.b = fmul float %0, %.02627
  %i.c = fmul float %1, %.02627
  %i.d = fmul float %2, %.02627
  %i.e = trunc i32 %.031 to i8
  %i.f = tail call float @stb_perlin_noise3_internal(float noundef %i.b, float noundef %i.c, float noundef %i.d, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.e)
  %i.g = tail call float @llvm.fabs.f32(float %i.f)
  %i.h = fsub float %5, %i.g                      ; 2 uses
  %i.i = fmul float %i.h, %i.h                    ; 2 uses
  %i.j = fmul float %.02429, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %.02528, float %.02330) ; 2 uses
  %i.l = fmul float %3, %.02627
  %i.m = fmul float %4, %.02429
  %i.n = add nuw nsw i32 %.031, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.023.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.k, %.lr.ph ]
  ret float %.023.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stb_perlin_fbm_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %3, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022 = phi float [ %i.l, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.01819 = phi i32 [ %i.n, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.d = phi <2 x float> [ %i.m, %.lr.ph ], [ splat (float 1.000000e+00), %.lr.ph.preheader ] ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.f = fmul float %0, %i.e
  %i.g = fmul float %1, %i.e
  %i.h = fmul float %2, %i.e
  %i.i = trunc i32 %.01819 to i8
  %i.j = tail call float @stb_perlin_noise3_internal(float noundef %i.f, float noundef %i.g, float noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.i)
  %i.k = extractelement <2 x float> %i.d, i64 0
  %i.l = tail call float @llvm.fmuladd.f32(float %i.j, float %i.k, float %.022) ; 2 uses
  %i.m = fmul <2 x float> %i.c, %i.d
  %i.n = add nuw nsw i32 %.01819, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.l, %.lr.ph ]
  ret float %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stb_perlin_turbulence_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %3, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.023 = phi i32 [ %i.p, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01722 = phi float [ %i.n, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.d = phi <2 x float> [ %i.o, %.lr.ph ], [ splat (float 1.000000e+00), %.lr.ph.preheader ] ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.f = fmul float %0, %i.e
  %i.g = fmul float %1, %i.e
  %i.h = fmul float %2, %i.e
  %i.i = trunc i32 %.023 to i8
  %i.j = tail call float @stb_perlin_noise3_internal(float noundef %i.f, float noundef %i.g, float noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.i)
  %i.k = extractelement <2 x float> %i.d, i64 0
  %i.l = fmul float %i.k, %i.j
  %i.m = tail call float @llvm.fabs.f32(float %i.l)
  %i.n = fadd float %.01722, %i.m                 ; 2 uses
  %i.o = fmul <2 x float> %i.c, %i.d
  %i.p = add nuw nsw i32 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.n, %.lr.ph ]
  ret float %.017.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @stb_perlin_noise3_wrap_nonpow2(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #2 {
bb.a:
  %i.a = fptosi float %0 to i32                   ; 2 uses
  %i.b = insertelement <2 x float> poison, float %2, i64 0
  %i.c = insertelement <2 x float> %i.b, float %1, i64 1 ; 3 uses
  %i.d = fptosi <2 x float> %i.c to <2 x i32>     ; 2 uses
  %.not = icmp eq i32 %3, 0
  %i.e = select i1 %.not, i32 256, i32 %3         ; 3 uses
  %.not132 = icmp eq i32 %4, 0
  %7 = select i1 %.not132, i32 256, i32 %4        ; 3 uses
  %.not133 = icmp eq i32 %5, 0
  %8 = select i1 %.not133, i32 256, i32 %5        ; 3 uses
  %i.f = zext i8 %6 to i32                        ; 2 uses
  %i.g = sitofp <2 x i32> %i.d to <2 x float>
  %i.h = sitofp i32 %i.a to float
  %i.i = fcmp olt <2 x float> %i.c, %i.g
  %i.j = fcmp olt float %0, %i.h
  %i.k = sext <2 x i1> %i.i to <2 x i32>
  %i.l = sext i1 %i.j to i32
  %i.m = add nsw <2 x i32> %i.k, %i.d             ; 3 uses
  %i.n = add nsw i32 %i.l, %i.a                   ; 2 uses
  %9 = srem i32 %i.n, %i.e                        ; 2 uses
  %10 = extractelement <2 x i32> %i.m, i64 1
  %11 = srem i32 %10, %7                          ; 2 uses
  %12 = extractelement <2 x i32> %i.m, i64 0
  %i.o = srem i32 %12, %8                         ; 2 uses
  %i.p = icmp slt i32 %9, 0
  %i.q = select i1 %i.p, i32 %i.e, i32 0
  %spec.select = add nsw i32 %i.q, %9             ; 2 uses
  %13 = icmp slt i32 %11, 0
  %14 = select i1 %13, i32 %7, i32 0
  %.0125 = add nsw i32 %14, %11                   ; 3 uses
  %15 = icmp slt i32 %i.o, 0
  %16 = select i1 %15, i32 %8, i32 0
  %.0 = add nsw i32 %16, %i.o                     ; 5 uses
  %17 = add nsw i32 %spec.select, 1
  %18 = srem i32 %17, %i.e
  %19 = add nsw i32 %.0125, 1
  %20 = srem i32 %19, %7                          ; 2 uses
  %21 = add nsw i32 %.0, 1
  %22 = srem i32 %21, %8                          ; 4 uses
  %i.r = sitofp <2 x i32> %i.m to <2 x float>
  %i.s = sitofp i32 %i.n to float
  %i.t = fsub float %0, %i.s                      ; 6 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float 6.000000e+00, float -1.500000e+01)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.t, float 1.000000e+01)
  %i.w = fmul float %i.t, %i.v
  %i.x = fmul float %i.t, %i.w
  %i.y = fmul float %i.t, %i.x
  %i.z = fsub <2 x float> %i.c, %i.r              ; 8 uses
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.z, <2 x float> splat (float 1.000000e+01))
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = fmul <2 x float> %i.z, %i.ac
  %i.ae = fmul <2 x float> %i.z, %i.ad            ; 2 uses
  %i.af = sext i32 %spec.select to i64
  %i.ag = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ai, %i.f
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = sext i32 %18 to i64
  %i.ap = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ar, %i.f
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !10
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = add nsw i32 %.0125, %i.an
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = add nsw i32 %20, %i.an
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !10
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = add nsw i32 %.0125, %i.aw
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = add nsw i32 %20, %i.aw
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = add nsw i32 %.0, %i.bb
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.bv ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bw, align 16, !tbaa !9 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load float, ptr %i.by, align 8, !tbaa !9
  %i.ca = add nsw i32 %22, %i.bb
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ce ; 2 uses
  %i.cg = load <2 x float>, ptr %i.cf, align 16, !tbaa !9 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !9
  %i.cj = add nsw i32 %.0, %i.bg
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = fadd <2 x float> %i.z, splat (float -1.000000e+00) ; 2 uses
  %i.co = zext i8 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.co ; 2 uses
  %i.cq = load <2 x float>, ptr %i.cp, align 16, !tbaa !9 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !9
  %i.ct = add nsw i32 %22, %i.bg
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !10
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.cx ; 2 uses
  %i.cz = load <2 x float>, ptr %i.cy, align 16, !tbaa !9 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load float, ptr %i.da, align 8, !tbaa !9
  %i.dc = add nsw i32 %.0, %i.bl
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dg = insertelement <2 x float> poison, float %i.t, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fadd <2 x float> %i.dh, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.dj = zext i8 %i.df to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.dj ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dk, align 16, !tbaa !9 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.do = fmul <2 x float> %i.dm, %i.dn
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.di, <2 x float> %i.do)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !9
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.bz, i64 1
  %i.dv = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dv, <2 x float> %i.dq) ; 2 uses
  %i.dx = add nsw i32 %22, %i.bl
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !10
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.eb ; 2 uses
  %i.ed = load <2 x float>, ptr %i.ec, align 16, !tbaa !9 ; 2 uses
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.ef = fmul <2 x float> %i.dm, %i.ee
  %i.eg = shufflevector <2 x float> %i.ed, <2 x float> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.di, <2 x float> %i.ef)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !9
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ci, i64 1
  %i.em = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.em, <2 x float> %i.eh)
  %i.eo = add nsw i32 %.0, %i.bq
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !10
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.es ; 2 uses
  %i.eu = load <2 x float>, ptr %i.et, align 16, !tbaa !9 ; 2 uses
  %i.ev = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ew = shufflevector <2 x float> %i.eu, <2 x float> %i.cq, <2 x i32> <i32 1, i32 3>
  %i.ex = fmul <2 x float> %i.ev, %i.ew
  %i.ey = shufflevector <2 x float> %i.eu, <2 x float> %i.cq, <2 x i32> <i32 0, i32 2>
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.di, <2 x float> %i.ex)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !9
  %i.fc = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.cs, i64 1
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.dv, <2 x float> %i.ez) ; 2 uses
  %i.ff = add nsw i32 %22, %i.bq
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !10
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fj ; 2 uses
  %i.fl = load <2 x float>, ptr %i.fk, align 16, !tbaa !9 ; 2 uses
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.fn = fmul <2 x float> %i.ev, %i.fm
  %i.fo = shufflevector <2 x float> %i.fl, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.di, <2 x float> %i.fn)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fr = load float, ptr %i.fq, align 8, !tbaa !9
  %i.fs = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.db, i64 1
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.em, <2 x float> %i.fp)
  %i.fv = fsub <2 x float> %i.en, %i.dw
  %i.fw = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.dw) ; 2 uses
  %i.fy = fsub <2 x float> %i.fu, %i.fe
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fw, <2 x float> %i.fe)
  %i.ga = fsub <2 x float> %i.fz, %i.fx
  %i.gb = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.fx) ; 2 uses
  %i.gd = extractelement <2 x float> %i.gc, i64 0
  %i.ge = extractelement <2 x float> %i.gc, i64 1 ; 2 uses
  %i.gf = fsub float %i.gd, %i.ge
  %i.gg = tail call noundef float @llvm.fmuladd.f32(float %i.gf, float %i.y, float %i.ge)
  ret float %i.gg
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
end_hunk_0
