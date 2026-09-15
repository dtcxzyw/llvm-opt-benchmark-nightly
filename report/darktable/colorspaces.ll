Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorspaces?download=true
inline.NumInlined: 104
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 50
begin_hunk_0_@dt_colorspaces_rgb_to_cygm:bb.a
  %i.s = shufflevector <3 x double> %i.o, <3 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.t = fmul reassoc nsz arcp contract afn <4 x double> %i.j, %i.s
  %i.u = fpext <4 x float> %i.r to <4 x double>
  %i.v = fadd reassoc nsz arcp contract afn <4 x double> %i.t, %i.u
  %i.w = fptrunc <4 x double> %i.v to <4 x float>
  %i.x = shufflevector <3 x double> %i.o, <3 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.y = fmul reassoc nsz arcp contract afn <4 x double> %i.i, %i.x
  %i.z = fpext <4 x float> %i.w to <4 x double>
  %i.aa = fadd reassoc nsz arcp contract afn <4 x double> %i.y, %i.z
  %i.ab = fptrunc <4 x double> %i.aa to <4 x float>
  store <4 x float> %i.ab, ptr %i.m, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.ad = load <3 x float>, ptr %i.ac, align 4, !tbaa !14
  %i.ae = fpext <3 x float> %i.ad to <3 x double> ; 3 uses
  %i.af = shufflevector <3 x double> %i.ae, <3 x double> poison, <4 x i32> zeroinitializer
  %i.ag = fmul reassoc nsz arcp contract afn <4 x double> %i.k, %i.af
  %i.ah = fptrunc <4 x double> %i.ag to <4 x float>
  %i.ai = shufflevector <3 x double> %i.ae, <3 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aj = fmul reassoc nsz arcp contract afn <4 x double> %i.j, %i.ai
  %i.ak = fpext <4 x float> %i.ah to <4 x double>
  %i.al = fadd reassoc nsz arcp contract afn <4 x double> %i.aj, %i.ak
  %i.am = fptrunc <4 x double> %i.al to <4 x float>
  %i.an = shufflevector <3 x double> %i.ae, <3 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ao = fmul reassoc nsz arcp contract afn <4 x double> %i.i, %i.an
  %i.ap = fpext <4 x float> %i.am to <4 x double>
  %i.aq = fadd reassoc nsz arcp contract afn <4 x double> %i.ao, %i.ap
  %i.ar = fptrunc <4 x double> %i.aq to <4 x float>
  store <4 x float> %i.ar, ptr %i.ac, align 4, !tbaa !14
  %i.as = mul nuw i64 %indvars.iv, 12
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 2 uses
  %i.av = load <3 x float>, ptr %i.au, align 4, !tbaa !14
  %i.aw = fpext <3 x float> %i.av to <3 x double> ; 3 uses
  %i.ax = shufflevector <3 x double> %i.aw, <3 x double> poison, <4 x i32> zeroinitializer
  %i.ay = fmul reassoc nsz arcp contract afn <4 x double> %i.k, %i.ax
  %i.az = fptrunc <4 x double> %i.ay to <4 x float>
  %i.ba = shufflevector <3 x double> %i.aw, <3 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bb = fmul reassoc nsz arcp contract afn <4 x double> %i.j, %i.ba
  %i.bc = fpext <4 x float> %i.az to <4 x double>
  %i.bd = fadd reassoc nsz arcp contract afn <4 x double> %i.bb, %i.bc
  %i.be = fptrunc <4 x double> %i.bd to <4 x float>
  %i.bf = shufflevector <3 x double> %i.aw, <3 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bg = fmul reassoc nsz arcp contract afn <4 x double> %i.i, %i.bf
  %i.bh = fpext <4 x float> %i.be to <4 x double>
  %i.bi = fadd reassoc nsz arcp contract afn <4 x double> %i.bg, %i.bh
  %i.bj = fptrunc <4 x double> %i.bi to <4 x float>
  store <4 x float> %i.bj, ptr %i.au, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsCIEXYZ_to_xy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !15
  %i.d = fptrunc reassoc nsz arcp contract afn double %i.c to float
  %i.e = shufflevector <2 x double> %i.a, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.f = fptrunc <4 x double> %i.e to <4 x float>
  %i.g = insertelement <4 x float> %i.f, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert = insertelement <4 x float> %i.g, float %i.d, i64 2
  %i.h = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.h, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i = extractelement <4 x float> %i.h, i64 1 ; 2 uses
  %i.i = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract4.i
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.h, i64 2
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, %.sroa.0.8.vec.extract.i ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00 ; 2 uses
  %i.l = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %i.j
  %i.m = select i1 %i.k, float %i.l, float 3.456700e-01
  %i.n = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i, %i.j
  %i.o = select i1 %i.k, float %i.n, float 3.585000e-01
  store float %i.m, ptr %1, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.o, ptr %i.p, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_colorspaces_get_primaries_and_whitepoint_from_profile(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call ptr @cmsReadTag(ptr noundef %0, i32 noundef 1918392666) #26 ; 3 uses
  %i.b = tail call ptr @cmsReadTag(ptr noundef %0, i32 noundef 1733843290) #26 ; 3 uses
  %i.c = tail call ptr @cmsReadTag(ptr noundef %0, i32 noundef 1649957210) #26 ; 3 uses
  %i.d = tail call ptr @cmsReadTag(ptr noundef %0, i32 noundef 2004119668) #26 ; 3 uses
  %i.e = icmp ne ptr %i.a, null
  %i.f = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  %i.g = icmp ne ptr %i.c, null
  %or.cond3 = select i1 %or.cond, i1 %i.g, i1 false
  %i.h = icmp ne ptr %i.d, null
  %or.cond5 = select i1 %or.cond3, i1 %i.h, i1 false
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !15
  %i.l = fptrunc reassoc nsz arcp contract afn double %i.k to float
  %i.m = shufflevector <2 x double> %i.i, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.n = fptrunc <4 x double> %i.m to <4 x float>
  %i.o = insertelement <4 x float> %i.n, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert.i = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.p = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert.i, <4 x float> zeroinitializer) ; 4 uses
  %i.q = load <2 x double>, ptr %i.b, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !15
  %i.t = fptrunc reassoc nsz arcp contract afn double %i.s to float
  %i.u = shufflevector <2 x double> %i.q, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.v = fptrunc <4 x double> %i.u to <4 x float>
  %i.w = insertelement <4 x float> %i.v, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert.i25 = insertelement <4 x float> %i.w, float %i.t, i64 2
  %i.x = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert.i25, <4 x float> zeroinitializer) ; 4 uses
  %i.y = shufflevector <4 x float> %i.p, <4 x float> %i.x, <2 x i32> <i32 0, i32 4>
  %i.z = shufflevector <4 x float> %i.p, <4 x float> %i.x, <2 x i32> <i32 1, i32 5>
  %i.aa = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.z
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ac = shufflevector <4 x float> %i.p, <4 x float> %i.x, <4 x i32> <i32 2, i32 2, i32 6, i32 6>
  %i.ad = fadd reassoc nsz arcp contract afn <4 x float> %i.ab, %i.ac ; 3 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = fcmp reassoc nsz arcp contract afn ogt float %i.ae, 0.000000e+00
  %i.ag = extractelement <4 x float> %i.ad, i64 2
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 0.000000e+00
  %i.ai = shufflevector <4 x float> %i.p, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aj = fdiv reassoc nsz arcp contract afn <4 x float> %i.ai, %i.ad
  %i.ak = insertelement <4 x i1> poison, i1 %i.af, i64 0
  %i.al = insertelement <4 x i1> %i.ak, i1 %i.ah, i64 2
  %i.am = shufflevector <4 x i1> %i.al, <4 x i1> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.an = select <4 x i1> %i.am, <4 x float> %i.aj, <4 x float> <float 3.456700e-01, float 3.585000e-01, float 3.456700e-01, float 3.585000e-01>
  store <4 x float> %i.an, ptr %1, align 4, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load <2 x double>, ptr %i.c, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !15
  %i.as = fptrunc reassoc nsz arcp contract afn double %i.ar to float
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = fptrunc <4 x double> %i.at to <4 x float>
  %i.av = insertelement <4 x float> %i.au, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert.i29 = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.aw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert.i29, <4 x float> zeroinitializer) ; 4 uses
  %.sroa.0.0.vec.extract.i.i30 = extractelement <4 x float> %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ay = load <2 x double>, ptr %i.d, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !15
  %i.bb = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  %i.bc = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  %i.be = insertelement <4 x float> %i.bd, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert.i33 = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert.i33, <4 x float> zeroinitializer) ; 4 uses
  %.sroa.0.0.vec.extract.i.i34 = extractelement <4 x float> %i.bf, i64 0
  %i.bg = shufflevector <4 x float> %i.aw, <4 x float> %i.bf, <2 x i32> <i32 0, i32 4>
  %i.bh = shufflevector <4 x float> %i.aw, <4 x float> %i.bf, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.bi = fadd reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bh
  %i.bj = shufflevector <4 x float> %i.aw, <4 x float> %i.bf, <2 x i32> <i32 2, i32 6>
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bj ; 4 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i30, %i.bl
  %i.bn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bk, zeroinitializer ; 3 uses
  %i.bo = extractelement <2 x i1> %i.bn, i64 0
  %i.bp = select i1 %i.bo, float %i.bm, float 3.456700e-01
  store float %i.bp, ptr %i.ao, align 4, !tbaa !14
  %i.bq = fdiv reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bk
  %i.br = select <2 x i1> %i.bn, <2 x float> %i.bq, <2 x float> splat (float 3.585000e-01) ; 2 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  store float %i.bs, ptr %i.ax, align 4, !tbaa !14
  %i.bt = extractelement <2 x float> %i.bk, i64 1
  %i.bu = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i34, %i.bt
  %i.bv = extractelement <2 x i1> %i.bn, i64 1
  %i.bw = select i1 %i.bv, float %i.bu, float 3.456700e-01
  store float %i.bw, ptr %2, align 4, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = extractelement <2 x float> %i.br, i64 1
  store float %i.by, ptr %i.bx, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @cmsReadTag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28), (32, 44)) %2) local_unnamed_addr #0 {
.preheader:
  %i.a = alloca [4 x [4 x float]], align 64       ; 14 uses
  %i.b = alloca [4 x [4 x float]], align 64       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !14
  %i.h = load <4 x float>, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.i = load float, ptr %i.e, align 4, !tbaa !14
  %i.j = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 5 uses
  %i.k = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.j, splat (float f0x34000000)
  %i.l = fcmp reassoc nsz arcp contract afn oge <2 x float> %i.j, zeroinitializer
  %i.m = and <2 x i1> %i.k, %i.l
  %i.n = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.j, zeroinitializer
  %i.o = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.j, splat (float f0xB4000000)
  %i.p = and <2 x i1> %i.n, %i.o
  %i.q = select <2 x i1> %i.p, <2 x float> splat (float f0xB4000000), <2 x float> %i.j
  %i.r = select <2 x i1> %i.m, <2 x float> splat (float f0x34000000), <2 x float> %i.q ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %i.h, %i.s
  %i.t = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.u = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.v = extractelement <2 x float> %i.r, i64 1
  %i.w = fadd reassoc nsz arcp contract afn float %i.i, %i.v
  %i.x = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.y = insertelement <4 x float> %i.h, float %i.u, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.x, i64 3
  %i.aa = fdiv reassoc nsz arcp contract afn <4 x float> %i.z, %i.s ; 4 uses
  %i.ab = extractelement <4 x float> %i.aa, i64 0
  store float %i.ab, ptr %i.a, align 64, !tbaa !14
  %i.ac = extractelement <4 x float> %i.aa, i64 1
  store float %i.ac, ptr %i.d, align 8, !tbaa !14
  %i.ad = extractelement <4 x float> %i.aa, i64 2
  store float %i.ad, ptr %i.f, align 16, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.af = extractelement <4 x float> %i.aa, i64 3
  store float %i.af, ptr %i.ae, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !14 ; 5 uses
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %i.ai, f0x34000000
  %i.ak = fcmp reassoc nsz arcp contract afn oge float %i.ai, 0.000000e+00
  %or.cond.i33.2 = and i1 %i.aj, %i.ak
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ai, 0.000000e+00
  %i.am = fcmp reassoc nsz arcp contract afn ogt float %i.ai, f0xB4000000
  %or.cond3.i34.2 = and i1 %i.al, %i.am
  %..i35.2 = select nsz i1 %or.cond3.i34.2, float f0xB4000000, float %i.ai
  %.0.i36.2 = select nsz i1 %or.cond.i33.2, float f0x34000000, float %..i35.2 ; 3 uses
  %i.an = load float, ptr %i.ag, align 4, !tbaa !14 ; 2 uses
  %i.ao = fdiv reassoc nsz arcp contract afn float %i.an, %.0.i36.2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store float %i.ao, ptr %i.ap, align 32, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store float 1.000000e+00, ptr %i.aq, align 4, !tbaa !14
  %i.ar = fadd reassoc nsz arcp contract afn float %i.an, %.0.i36.2
  %i.as = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ar
  %i.at = fdiv reassoc nsz arcp contract afn float %i.as, %.0.i36.2
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store float %i.at, ptr %i.au, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.av = call i32 @mat3SSEinv(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !14 ; 5 uses
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.ax, f0x34000000
  %i.az = fcmp reassoc nsz arcp contract afn oge float %i.ax, 0.000000e+00
  %or.cond.i = and i1 %i.ay, %i.az
  %i.ba = fcmp reassoc nsz arcp contract afn olt float %i.ax, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %i.ax, f0xB4000000
  %or.cond3.i = and i1 %i.ba, %i.bb
  %..i = select nsz i1 %or.cond3.i, float f0xB4000000, float %i.ax
  %.0.i = select nsz i1 %or.cond.i, float f0x34000000, float %..i ; 3 uses
  %i.bc = load float, ptr %1, align 4, !tbaa !14  ; 2 uses
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %.0.i
  %i.be = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bh = load float, ptr %i.b, align 64, !tbaa !14
  %i.bi = load float, ptr %i.bf, align 16, !tbaa !14
  %i.bj = load float, ptr %i.bg, align 32, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %5 = load <2 x float>, ptr %i.a, align 64, !tbaa !14
  %i.bl = load float, ptr %i.d, align 8, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = load <2 x float>, ptr %i.f, align 16, !tbaa !14
  %8 = load <4 x float>, ptr %i.ae, align 8
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %11 = load <2 x float>, ptr %i.ap, align 32, !tbaa !14
  %12 = load float, ptr %i.au, align 8, !tbaa !14
  %13 = fdiv reassoc nsz arcp contract afn float %i.be, %.0.i ; 2 uses
  %14 = fdiv reassoc nsz arcp contract afn float %i.bc, %.0.i ; 2 uses
  %15 = fmul reassoc nsz arcp contract afn float %14, %i.bh
  %16 = fadd reassoc nsz arcp contract afn float %i.bi, %15
  %i.bo = fmul reassoc nsz arcp contract afn float %13, %i.bj
  %i.bp = fadd reassoc nsz arcp contract afn float %16, %i.bo ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bk, align 4, !tbaa !14
  %i.br = insertelement <2 x float> poison, float %14, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bs
  %17 = load <2 x float>, ptr %3, align 4, !tbaa !14
  %18 = fadd reassoc nsz arcp contract afn <2 x float> %17, %i.bt
  %19 = load <2 x float>, ptr %4, align 4, !tbaa !14
  %20 = insertelement <2 x float> poison, float %13, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul reassoc nsz arcp contract afn <2 x float> %19, %21
  %23 = fadd reassoc nsz arcp contract afn <2 x float> %18, %22 ; 3 uses
  %i.bu = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %5, %i.bv
  store <2 x float> %i.bw, ptr %2, align 4, !tbaa !14
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bl, %i.bp
  store float %i.bx, ptr %6, align 4, !tbaa !14
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fmul reassoc nsz arcp contract afn <2 x float> %7, %24
  store <2 x float> %25, ptr %i.bm, align 4, !tbaa !14
  %i.by = insertelement <2 x float> %9, float %12, i64 1
  %26 = fmul reassoc nsz arcp contract afn <2 x float> %i.by, %23 ; 2 uses
  %27 = extractelement <2 x float> %26, i64 0
  store float %27, ptr %i.bn, align 4, !tbaa !14
  %28 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %29 = fmul reassoc nsz arcp contract afn <2 x float> %11, %28
  store <2 x float> %29, ptr %10, align 4, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %30 = extractelement <2 x float> %26, i64 1
  store float %30, ptr %i.bz, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @mat3SSEinv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @dt_colorspaces_profile_is_wide_gamut(i32 noundef %0) local_unnamed_addr #18 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 25
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_colorspaces_profile_is_wide_gamut, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @cmsIsMatrixShaper(ptr noundef) local_unnamed_addr #3

declare i32 @cmsIsCLUT(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmsIsToneCurveLinear(ptr noundef) local_unnamed_addr #3

declare float @cmsEvalToneCurveFloat(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cmsReverseToneCurveEx(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cmsXYZ2xyY(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cmsCreateProfilePlaceholder(ptr noundef) local_unnamed_addr #3

declare void @cmsSetDeviceClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cmsSetColorSpace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cmsSetPCS(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmsLinkTag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmsCreateTransform(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmsBuildParametricToneCurve(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_create_lcms_profile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = tail call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.c = tail call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.d = tail call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.e = tail call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %4, ptr %i.a, align 16, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %4, ptr %i.g, align 16, !tbaa !20
  %i.h = call ptr @cmsCreateRGBProfile(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a) #26 ; 8 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @cmsSetProfileVersion(ptr noundef %i.h, double noundef 2.400000e+00) #26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not29 = icmp eq ptr %5, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1667851120, ptr noundef nonnull %5) #26 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  call void @cmsSetHeaderFlags(ptr noundef %i.h, i32 noundef 1) #26
  %i.j = call i32 @cmsMLUsetASCII(ptr noundef %i.b, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.181) #26 ; 0 uses
  %i.k = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1668313716, ptr noundef %i.b) #26 ; 0 uses
  %i.l = call i32 @cmsMLUsetASCII(ptr noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %0) #26 ; 0 uses
  %i.m = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1684370275, ptr noundef %i.c) #26 ; 0 uses
  %i.n = call i32 @cmsMLUsetASCII(ptr noundef %i.d, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %1) #26 ; 0 uses
  %i.o = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1684890724, ptr noundef %i.d) #26 ; 0 uses
  %i.p = call i32 @cmsMLUsetASCII(ptr noundef %i.e, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.182) #26 ; 0 uses
  %i.q = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1684893284, ptr noundef %i.e) #26 ; 0 uses
  call void @cmsMLUfree(ptr noundef %i.b) #26
  call void @cmsMLUfree(ptr noundef %i.c) #26
  call void @cmsMLUfree(ptr noundef %i.d) #26
  call void @cmsMLUfree(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %i.h
}

declare void @cmsSetHeaderFlags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #19

declare ptr @cmsBuildTabulatedToneCurveFloat(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #20

declare ptr @cmsCreateXYZProfile() local_unnamed_addr #3

declare void @cmsSetHeaderRenderingIntent(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmsCreateLab4Profile(ptr noundef) local_unnamed_addr #3

declare ptr @cmsD50_xyY() local_unnamed_addr #3

declare void @dt_loc_get_user_config_dir(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @dt_loc_get_datadir(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #21

declare noalias ptr @g_build_filename(ptr noundef, ...) local_unnamed_addr #3

declare ptr @g_dir_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_dir_read_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_read_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_dir_close(ptr noundef) local_unnamed_addr #3

declare ptr @g_list_sort(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @_sort_profiles(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.b = tail call noalias ptr @g_utf8_casefold(ptr noundef nonnull %i.a, i64 noundef -1) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.d = tail call noalias ptr @g_utf8_casefold(ptr noundef nonnull %i.c, i64 noundef -1) #26 ; 2 uses
  %i.e = tail call i32 @g_strcmp0(ptr noundef %i.b, ptr noundef %i.d) #26
  tail call void @g_free(ptr noundef %i.b) #26
  tail call void @g_free(ptr noundef %i.d) #26
  ret i32 %i.e
}

declare noalias ptr @g_utf8_casefold(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gdk_monitor_get_display(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_display_get_n_monitors(ptr noundef) local_unnamed_addr #3

declare ptr @gdk_display_get_monitor(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #10

declare ptr @cd_window_get_profile_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cd_profile_get_filename(ptr noundef) local_unnamed_addr #3

declare i32 @g_file_get_contents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x i32> @llvm.masked.load.v10i32.p0(ptr captures(none), <10 x i1>, <10 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.exp.v8f64(<8 x double>) #20
end_hunk_0
