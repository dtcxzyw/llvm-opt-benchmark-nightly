Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_perlin?download=true
inline.NumInlined: 36
begin_hunk_0_@stb_perlin_noise3_internal:bb.a
  %i.dx = shufflevector <2 x float> %i.dt, <2 x float> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dq, <2 x float> %i.dw)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !9
  %i.eb = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.ci, i64 1
  %i.ed = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ed, <2 x float> %i.dy) ; 2 uses
  %i.ef = add nuw nsw i32 %i.ag, %i.bu
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !10
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ej ; 2 uses
  %i.el = load <2 x float>, ptr %i.ek, align 16, !tbaa !9 ; 2 uses
  %i.em = shufflevector <2 x float> %i.el, <2 x float> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.en = fmul <2 x float> %i.du, %i.em
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.dq, <2 x float> %i.en)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.er = load float, ptr %i.eq, align 8, !tbaa !9
  %i.es = insertelement <2 x float> poison, float %i.er, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.cr, i64 1
  %i.eu = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.eu, <2 x float> %i.ep)
  %i.ew = add nuw nsw i32 %i.ae, %i.bz
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !10
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fa ; 2 uses
  %i.fc = load <2 x float>, ptr %i.fb, align 16, !tbaa !9 ; 2 uses
  %i.fd = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fc, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.ff = fmul <2 x float> %i.fd, %i.fe
  %i.fg = shufflevector <2 x float> %i.fc, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.dq, <2 x float> %i.ff)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !9
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.db, i64 1
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.ed, <2 x float> %i.fh) ; 2 uses
  %i.fn = add nuw nsw i32 %i.ag, %i.bz
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !10
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fr ; 2 uses
  %i.ft = load <2 x float>, ptr %i.fs, align 16, !tbaa !9 ; 2 uses
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> %i.di, <2 x i32> <i32 1, i32 3>
  %i.fv = fmul <2 x float> %i.fd, %i.fu
  %i.fw = shufflevector <2 x float> %i.ft, <2 x float> %i.di, <2 x i32> <i32 0, i32 2>
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.dq, <2 x float> %i.fv)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !9
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.dk, i64 1
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.eu, <2 x float> %i.fx)
  %i.gd = fsub <2 x float> %i.ev, %i.ee
  %i.ge = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ge, <2 x float> %i.ee) ; 2 uses
  %i.gg = fsub <2 x float> %i.gc, %i.fm
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.ge, <2 x float> %i.fm)
  %i.gi = fsub <2 x float> %i.gh, %i.gf
  %i.gj = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gj, <2 x float> %i.gf) ; 2 uses
  %i.gl = extractelement <2 x float> %i.gk, i64 0
  %i.gm = extractelement <2 x float> %i.gk, i64 1 ; 2 uses
  %i.gn = fsub float %i.gl, %i.gm
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.gn, float %i.ap, float %i.gm)
  ret float %i.go
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
  %i.a = insertelement <3 x float> poison, float %0, i64 0
  %i.b = insertelement <3 x float> %i.a, float %2, i64 1
  %i.c = insertelement <3 x float> %i.b, float %1, i64 2 ; 4 uses
  %i.d = fptosi <3 x float> %i.c to <3 x i32>     ; 2 uses
  %i.e = shufflevector <3 x float> %i.c, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.f = fptosi <2 x float> %i.e to <2 x i32>     ; 2 uses
  %.not = icmp eq i32 %3, 0
  %i.g = select i1 %.not, i32 256, i32 %3         ; 3 uses
  %.not132 = icmp eq i32 %4, 0
  %7 = select i1 %.not132, i32 256, i32 %4        ; 3 uses
  %.not133 = icmp eq i32 %5, 0
  %8 = select i1 %.not133, i32 256, i32 %5        ; 3 uses
  %i.h = zext i8 %6 to i32                        ; 2 uses
  %i.i = sitofp <2 x i32> %i.f to <2 x float>
  %i.j = sitofp <3 x i32> %i.d to <3 x float>
  %i.k = fcmp olt <2 x float> %i.e, %i.i
  %i.l = fcmp olt <3 x float> %i.c, %i.j
  %i.m = sext <2 x i1> %i.k to <2 x i32>
  %i.n = sext <3 x i1> %i.l to <3 x i32>
  %i.o = add nsw <2 x i32> %i.m, %i.f             ; 3 uses
  %i.p = add nsw <3 x i32> %i.n, %i.d             ; 2 uses
  %9 = extractelement <3 x i32> %i.p, i64 0
  %10 = srem i32 %9, %i.g                         ; 2 uses
  %11 = extractelement <2 x i32> %i.o, i64 1
  %12 = srem i32 %11, %7                          ; 2 uses
  %i.q = extractelement <2 x i32> %i.o, i64 0
  %i.r = srem i32 %i.q, %8                        ; 2 uses
  %i.s = icmp slt i32 %10, 0
  %i.t = select i1 %i.s, i32 %i.g, i32 0
  %spec.select = add nsw i32 %i.t, %10            ; 2 uses
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %13, i32 %7, i32 0
  %.0125 = add nsw i32 %14, %12                   ; 3 uses
  %15 = icmp slt i32 %i.r, 0
  %16 = select i1 %15, i32 %8, i32 0
  %.0 = add nsw i32 %16, %i.r                     ; 5 uses
  %17 = add nsw i32 %spec.select, 1
  %18 = srem i32 %17, %i.g
  %19 = add nsw i32 %.0125, 1
  %20 = srem i32 %19, %7                          ; 2 uses
  %21 = add nsw i32 %.0, 1
  %22 = srem i32 %21, %8                          ; 4 uses
  %i.u = sitofp <2 x i32> %i.o to <2 x float>
  %i.v = sitofp <3 x i32> %i.p to <3 x float>
  %i.w = fsub <3 x float> %i.c, %i.v              ; 2 uses
  %i.x = extractelement <3 x float> %i.w, i64 0   ; 5 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 6.000000e+00, float -1.500000e+01)
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.x, float 1.000000e+01)
  %i.aa = fmul float %i.x, %i.z
  %i.ab = fmul float %i.x, %i.aa
  %i.ac = fmul float %i.x, %i.ab
  %i.ad = fsub <2 x float> %i.e, %i.u             ; 8 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ad, <2 x float> splat (float 1.000000e+01))
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = fmul <2 x float> %i.ad, %i.ag
  %i.ai = fmul <2 x float> %i.ad, %i.ah           ; 2 uses
  %i.aj = sext i32 %spec.select to i64
  %i.ak = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %i.am, %i.h
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = sext i32 %18 to i64
  %i.at = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, %i.h
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = add nsw i32 %.0125, %i.ar
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = add nsw i32 %20, %i.ar
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !10
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = add nsw i32 %.0125, %i.ba
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = add nsw i32 %20, %i.ba
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = add nsw i32 %.0, %i.bf
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.bz ; 2 uses
  %i.cb = load <2 x float>, ptr %i.ca, align 16, !tbaa !9 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !9
  %i.ce = add nsw i32 %22, %i.bf
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ci ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cj, align 16, !tbaa !9 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !9
  %i.cn = add nsw i32 %.0, %i.bk
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !10
  %i.cr = fadd <2 x float> %i.ad, splat (float -1.000000e+00) ; 2 uses
  %i.cs = zext i8 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.cs ; 2 uses
  %i.cu = load <2 x float>, ptr %i.ct, align 16, !tbaa !9 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !9
  %i.cx = add nsw i32 %22, %i.bk
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !10
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.db ; 2 uses
  %i.dd = load <2 x float>, ptr %i.dc, align 16, !tbaa !9 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load float, ptr %i.de, align 8, !tbaa !9
  %i.dg = add nsw i32 %.0, %i.bp
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !10
  %i.dk = shufflevector <3 x float> %i.w, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fadd <2 x float> %i.dk, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.dm = zext i8 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.dm ; 2 uses
  %i.do = load <2 x float>, ptr %i.dn, align 16, !tbaa !9 ; 2 uses
  %i.dp = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> %i.cb, <2 x i32> <i32 1, i32 3>
  %i.dr = fmul <2 x float> %i.dp, %i.dq
  %i.ds = shufflevector <2 x float> %i.do, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dl, <2 x float> %i.dr)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dv = load float, ptr %i.du, align 8, !tbaa !9
  %i.dw = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.cd, i64 1
  %i.dy = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dy, <2 x float> %i.dt) ; 2 uses
  %i.ea = add nsw i32 %22, %i.bp
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !10
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ee ; 2 uses
  %i.eg = load <2 x float>, ptr %i.ef, align 16, !tbaa !9 ; 2 uses
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.ei = fmul <2 x float> %i.dp, %i.eh
  %i.ej = shufflevector <2 x float> %i.eg, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.dl, <2 x float> %i.ei)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.em = load float, ptr %i.el, align 8, !tbaa !9
  %i.en = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.cm, i64 1
  %i.ep = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.ep, <2 x float> %i.ek)
  %i.er = add nsw i32 %.0, %i.bu
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !10
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ev ; 2 uses
  %i.ex = load <2 x float>, ptr %i.ew, align 16, !tbaa !9 ; 2 uses
  %i.ey = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> %i.cu, <2 x i32> <i32 1, i32 3>
  %i.fa = fmul <2 x float> %i.ey, %i.ez
  %i.fb = shufflevector <2 x float> %i.ex, <2 x float> %i.cu, <2 x i32> <i32 0, i32 2>
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.dl, <2 x float> %i.fa)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !9
  %i.ff = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.cw, i64 1
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.dy, <2 x float> %i.fc) ; 2 uses
  %i.fi = add nsw i32 %22, %i.bu
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !10
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fm ; 2 uses
  %i.fo = load <2 x float>, ptr %i.fn, align 16, !tbaa !9 ; 2 uses
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.fq = fmul <2 x float> %i.ey, %i.fp
  %i.fr = shufflevector <2 x float> %i.fo, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.dl, <2 x float> %i.fq)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fu = load float, ptr %i.ft, align 8, !tbaa !9
  %i.fv = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.df, i64 1
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.ep, <2 x float> %i.fs)
  %i.fy = fsub <2 x float> %i.eq, %i.dz
  %i.fz = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fz, <2 x float> %i.dz) ; 2 uses
  %i.gb = fsub <2 x float> %i.fx, %i.fh
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.fz, <2 x float> %i.fh)
  %i.gd = fsub <2 x float> %i.gc, %i.ga
  %i.ge = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ge, <2 x float> %i.ga) ; 2 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 0
  %i.gh = extractelement <2 x float> %i.gf, i64 1 ; 2 uses
  %i.gi = fsub float %i.gg, %i.gh
  %i.gj = tail call noundef float @llvm.fmuladd.f32(float %i.gi, float %i.ac, float %i.gh)
  ret float %i.gj
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
