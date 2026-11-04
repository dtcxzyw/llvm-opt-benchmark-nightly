Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8460
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNK4pbrt16DiffuseAreaLight8SampleLeENS_6Point2IfEES2_RNS_18SampledWavelengthsEf:bb.a
  %i.en = fmul float %sqrt.i.i110, f0x3EA2F983
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u
  %.sroa.0154.1 = phi <2 x float> [ %.sroa.0154.0, %bb.u ], [ %.sroa.035.0.i.i106, %bb.aa ] ; 4 uses
  %.sroa.12158.1 = phi float [ %.sroa.12158.0, %bb.u ], [ %sqrt.i.i110, %bb.aa ] ; 2 uses
  %.071 = phi float [ %i.do, %bb.u ], [ %i.en, %bb.aa ] ; 2 uses
  %i.eo = fcmp oeq float %.071, 0.000000e+00
  br i1 %i.eo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.ep = load i8, ptr %i.h, align 8, !tbaa !227, !range !92, !noundef !93
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %.noexc118, label %.noexc114

.noexc114:                                        ; preds = %bb.ad
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.119, i32 noundef 235, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(4) @.str.120) #36
  unreachable

.noexc118:                                        ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.er, align 8 ; 10 uses
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  %.sroa.230.0.copyload = load float, ptr %.sroa.230.0..sroa_idx, align 16 ; 4 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.029.0.copyload, i64 0
  %i.es = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %.sroa.230.0.copyload) ; 5 uses
  %i.et = fadd float %.sroa.230.0.copyload, %i.es
  %i.eu = fdiv float -1.000000e+00, %i.et         ; 2 uses
  %shift177 = shufflevector <2 x float> %.sroa.029.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop178 = fmul <2 x float> %.sroa.029.0.copyload, %shift177
  %i.ev = extractelement <2 x float> %foldExtExtBinop178, i64 0
  %i.ew = fmul float %i.ev, %i.eu                 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.029.0.copyload, %.sroa.029.0.copyload
  %i.ex = fmul float %i.es, %i.ew
  %i.ey = fneg float %i.es
  %i.ez = fmul float %.sroa.01.0.vec.extract.i.i, %i.ey
  %.sroa.041.0.vec.extract.i = extractelement <2 x float> %.sroa.0154.1, i64 0
  %i.fa = fmul float %.sroa.041.0.vec.extract.i, %i.ez
  %foldExtExtBinop175 = fmul <2 x float> %.sroa.0154.1, %.sroa.029.0.copyload
  %i.fb = extractelement <2 x float> %foldExtExtBinop175, i64 1
  %i.fc = fsub float %i.fa, %i.fb
  %i.fd = fmul float %.sroa.12158.1, %.sroa.230.0.copyload
  %i.fe = insertelement <2 x float> %.sroa.029.0.copyload, float %i.es, i64 0
  %i.ff = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %.sroa.029.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.fg = fmul <2 x float> %i.fe, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.fg, %i.fi
  %i.fk = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.es, i64 1
  %i.fl = fadd <2 x float> %i.fk, %i.fj
  %i.fm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ew, i64 1
  %i.fo = fmul <2 x float> %.sroa.0154.1, %i.fn
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = fmul <2 x float> %.sroa.0154.1, %i.fl
  %i.fr = fadd <2 x float> %i.fp, %i.fq
  %i.fs = insertelement <2 x float> poison, float %.sroa.12158.1, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x float> %i.ft, %.sroa.029.0.copyload
  %i.fv = fadd <2 x float> %i.fu, %i.fr           ; 5 uses
  %i.fw = fadd float %i.fd, %i.fc                 ; 5 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 16
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.fx = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.fy = load <4 x float>, ptr %11, align 16
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ga = fadd <2 x float> %i.fx, %i.fz
  %i.gb = fmul <2 x float> %i.ga, splat (float 5.000000e-01)
  %i.gc = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.gd = fmul float %i.gc, 5.000000e-01
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 52 ; 2 uses
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.ge, align 4
  %i.gf = call { <2 x float>, <2 x float> } @_ZNK4pbrt16DiffuseAreaLight1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(352) %1, <2 x float> %i.gb, float %i.gd, <2 x float> %.sroa.029.0.copyload, float %.sroa.230.0.copyload, <2 x float> %.sroa.011.0.copyload, <2 x float> %i.fv, float %i.fw, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.gg = extractvalue { <2 x float>, <2 x float> } %i.gf, 0
  %i.gh = extractvalue { <2 x float>, <2 x float> } %i.gf, 1
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.er, align 8, !noalias !618
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.230.0..sroa_idx, align 16, !noalias !618
  %i.gi = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %11, <2 x float> %.sroa.09.0.copyload.i.i, float %.sroa.210.0.copyload.i.i, <2 x float> %i.fv, float %i.fw) ; 2 uses
  %i.gj = load float, ptr %i.k, align 8, !tbaa !240, !noalias !618
  %i.gk = load ptr, ptr %i.m, align 16, !tbaa !619, !noalias !620 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc118
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.er, align 8, !noalias !620 ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.230.0..sroa_idx, align 16, !noalias !620 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %i.gl = fmul float %i.fw, %.sroa.24.0.copyload.i.i ; 2 uses
  %i.gm = extractelement <2 x float> %i.fv, i64 1
  %i.gn = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %i.gm, float %i.gl)
  %i.go = fneg float %i.gl
  %i.gp = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i, float %i.fw, float %i.go)
  %i.gq = fadd float %i.gn, %i.gp
  %i.gr = extractelement <2 x float> %i.fv, i64 0
  %i.gs = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %i.gr, float %i.gq)
  %i.gt = fcmp ogt float %i.gs, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.gt, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 %spec.select.idx.i.i
  br label %bb.ag

bb.af:                                            ; preds = %.noexc118
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 72
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %bb.ae ], [ %i.gu, %bb.af ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.gi, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.gi, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8, !tbaa !40, !noalias !620
  %i.gv = load i8, ptr %i.h, align 8, !tbaa !227, !range !92, !noundef !93
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit120, label %.noexc119

.noexc119:                                        ; preds = %bb.ag
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.119, i32 noundef 235, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(4) @.str.120) #36
  unreachable

_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit120: ; preds = %bb.ag
  %i.gx = load <2 x float>, ptr %i.er, align 8    ; 3 uses
  %.sroa.18.56.copyload = load float, ptr %.sroa.230.0..sroa_idx, align 16 ; 2 uses
  %i.gy = extractelement <2 x float> %i.gx, i64 0
  %i.gz = fcmp une float %i.gy, 0.000000e+00
  %i.ha = extractelement <2 x float> %i.gx, i64 1
  %i.hb = fcmp une float %i.ha, 0.000000e+00
  %or.cond.i.i121 = select i1 %i.gz, i1 true, i1 %i.hb
  %i.hc = fcmp une float %.sroa.18.56.copyload, 0.000000e+00
  %or.cond.i = select i1 %or.cond.i.i121, i1 true, i1 %i.hc
  br i1 %or.cond.i, label %bb.ah, label %.noexc122

.noexc122:                                        ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit120
  call void @_ZN4pbrt8LogFatalIJRA35_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 68, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(35) @.str.138) #36
  unreachable

bb.ah:                                            ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEptEv.exit120
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.he = load i32, ptr %i.hd, align 16, !tbaa !236
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !40
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.hh, align 8, !tbaa !100
  store <2 x float> %i.gg, ptr %0, align 8
  %.sroa.0125.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.gh, ptr %.sroa.0125.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.fca.0.extract.i, ptr %i.hi, align 8
  %.sroa.7127.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.fca.1.extract.i, ptr %.sroa.7127.16..sroa_idx, align 8
  %.sroa.8128.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.fv, ptr %.sroa.8128.16..sroa_idx, align 4
  %.sroa.9129.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.fw, ptr %.sroa.9129.16..sroa_idx, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.gj, ptr %.sroa.10.16..sroa_idx, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %storemerge.i.i, ptr %i.hj, align 8, !tbaa !40
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.hk, align 8, !tbaa !102
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hl, ptr noundef nonnull align 16 dereferenceable(40) %11, i64 40, i1 false)
  %.sroa.16.56..sroa_idx132 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x float> %i.gx, ptr %.sroa.16.56..sroa_idx132, align 8
  %.sroa.18.56..sroa_idx136 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %.sroa.18.56.copyload, ptr %.sroa.18.56..sroa_idx136, align 8
  %.sroa.19.56..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.19.56..sroa_idx138, ptr noundef nonnull align 4 dereferenceable(20) %i.ge, i64 20, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.hg, ptr %i.hm, align 8, !tbaa !40
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.he, ptr %i.hn, align 8
  %.sroa_idx124 = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %.071, ptr %.sroa_idx124, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ac, %bb.ah, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16DiffuseAreaLight6PDF_LeERKNS_11InteractionENS_7Vector3IfEEPfS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, <2 x float> %2, float %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #10 align 2 {
bb.a:
  %6 = alloca %class.anon.172, align 8            ; 4 uses
  %7 = alloca %"class.pbrt::Normal3", align 8     ; 6 uses
  %8 = alloca %"class.pbrt::Normal3", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !241
  %i.c = load <2 x float>, ptr %7, align 8
  %9 = fcmp une <2 x float> %i.c, zeroinitializer ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1
  %or.cond.i = select i1 %10, i1 true, i1 %11
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load float, ptr %i.d, align 8
  %i.f = fcmp une float %i.e, 0.000000e+00
  %or.cond = select i1 %or.cond.i, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA7_KcRA18_S1_S3_RNS_7Normal3IfEES5_S8_EEEvNS_8LogLevelEPS1_iSA_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 855, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(7) @.str.62, ptr noundef nonnull align 1 dereferenceable(18) @.str.63, ptr noundef nonnull align 1 dereferenceable(7) @.str.62, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 1 dereferenceable(18) @.str.63, ptr noundef nonnull align 4 dereferenceable(12) %8) #36
  unreachable

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %1, ptr %6, align 8, !tbaa !243
  %i.h = load i64, ptr %i.g, align 8, !tbaa !213  ; 2 uses
  %i.i = and i64 %i.h, 144115188075855871
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = lshr i64 %i.h, 57
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = add nsw i32 %i.l, -1
  %i.n = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Shape3PDFERKNS_11InteractionEEUlT_E_fNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.j, i32 noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  store float %i.n, ptr %4, align 4, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.p = load i8, ptr %i.o, align 4, !tbaa !218, !range !92, !noundef !93
  %i.q = trunc nuw i8 %i.p to i1
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.a, align 8 ; 2 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.214.0.copyload = load float, ptr %.sroa.214.0..sroa_idx, align 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.copyload, i64 0
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %2, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.copyload, i64 1
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %2, i64 1
  %i.r = fmul float %3, %.sroa.214.0.copyload     ; 2 uses
  %i.s = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %.sroa.01.4.vec.extract.i.i, float %i.r)
  %i.t = fneg float %i.r
  %i.u = call noundef float @llvm.fma.f32(float %.sroa.214.0.copyload, float %3, float %i.t)
  %i.v = fadd float %i.s, %i.u
  %i.w = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.01.0.vec.extract.i.i, float %i.v) ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %i.x = call noundef float @llvm.fabs.f32(float %i.w)
  %i.y = fmul float %i.x, f0x3EA2F983
  %i.z = fmul float %i.y, 5.000000e-01
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %i.aa = fmul float %i.w, f0x3EA2F983
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi float [ %i.z, %bb.c ], [ %i.aa, %bb.d ]
  store float %i.ab, ptr %5, align 4, !tbaa !77
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA7_KcRA18_S1_S3_RNS_7Normal3IfEES5_S8_EEEvNS_8LogLevelEPS1_iSA_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(7) %4, ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(7) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 4 dereferenceable(12) %9) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !24, !alias.scope !623
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !623
  store i8 0, ptr %i.a, align 8, !tbaa !28, !alias.scope !623
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA7_KcJRA18_S2_S4_RNS_7Normal3IfEES6_S9_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(7) %4, ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(7) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 4 dereferenceable(12) %9)
          to label %_ZN4pbrt12StringPrintfIJRA7_KcRA18_S1_S3_RNS_7Normal3IfEES5_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !29, !alias.scope !623 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28, !alias.scope !623
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA7_KcRA18_S1_S3_RNS_7Normal3IfEES5_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !29
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA7_KcRA18_S1_S3_RNS_7Normal3IfEES5_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA7_KcRA18_S1_S3_RNS_7Normal3IfEES5_S8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !29    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16DiffuseAreaLight8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(352) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !24, !alias.scope !630
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !27, !alias.scope !630
  store i8 0, ptr %i.d, align 8, !tbaa !28, !alias.scope !630
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_9LightTypeEJRKNS_15MediumInterfaceERKNS_9TransformEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(128) %i.c)
          to label %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !29, !alias.scope !630 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !28, !alias.scope !630
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit:  ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.p = load i8, ptr %i.o, align 4, !tbaa !218, !range !92, !noundef !93
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = select i1 %i.q, ptr @.str.65, ptr @.str.66
  store ptr %i.r, ptr %i.a, align 8, !tbaa !244
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !24, !alias.scope !631
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !27, !alias.scope !631
  store i8 0, ptr %i.u, align 8, !tbaa !28, !alias.scope !631
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKPKNS_22DenselySampledSpectrumERKfRKNS_5ShapeERKNS_12FloatTextureEPKcSE_RKNS_5ImageEEEEvPS7_SM_OT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.64, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 8 dereferenceable(152) %i.t)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfRKNS_5ShapeERKNS_12FloatTextureEPKcSD_RKNS_5ImageEEEES6_SL_DpOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !631 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.u
  br i1 %i.y, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.u, align 8, !tbaa !28, !alias.scope !631
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #35
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfRKNS_5ShapeERKNS_12FloatTextureEPKcSD_RKNS_5ImageEEEES6_SL_DpOT_.exit: ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ab = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfRKNS_5ShapeERKNS_12FloatTextureEPKcSD_RKNS_5ImageEEEES6_SL_DpOT_.exit
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !28
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfRKNS_5ShapeERKNS_12FloatTextureEPKcSD_RKNS_5ImageEEEES6_SL_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
end_hunk_0
begin_hunk_1_@_ZNK4pbrt5Light6PDF_LeERKNS_3RayEPfS4_:bb.a
  store float %i.he, ptr %3, align 4, !tbaa !77
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !253 ; 2 uses
  %i.hh = fmul float %i.hg, %i.hg
  %i.hi = fmul float %i.hh, f0x40490FDB
  %i.hj = fdiv float 1.000000e+00, %i.hi
  store float %i.hj, ptr %2, align 4, !tbaa !77
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE8DispatchIRZNKS_5Light6PDF_LeERKNS_3RayEPfSG_E3$_0EEDcOT_.exit"

bb.n:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt24PortalImageInfiniteLight6PDF_LeERKNS_3RayEPfS4_(ptr noundef nonnull align 8 dereferenceable(516) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE8DispatchIRZNKS_5Light6PDF_LeERKNS_3RayEPfSG_E3$_0EEDcOT_.exit"

"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE8DispatchIRZNKS_5Light6PDF_LeERKNS_3RayEPfSG_E3$_0EEDcOT_.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %"_ZZNK4pbrt5Light6PDF_LeERKNS_3RayEPfS4_ENK3$_0clIPKNS_9SpotLightEEEDaT_.exit.i.i", %bb.l, %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Light6BoundsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.21") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.val = load i64, ptr %1, align 8, !tbaa !290   ; 2 uses
  %i.a = and i64 %.val, 144115188075855871
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = lshr i64 %.val, 57
  %i.d = trunc nuw nsw i64 %i.c to i32
  switch i32 %i.d, label %bb.j [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt10PointLight6BoundsEv(ptr dead_on_unwind writable sret(%"class.pstd::optional.21") align 4 %0, ptr noundef nonnull readonly align 8 dereferenceable(164) %i.b)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, i8 0, i64 56, i1 false), !alias.scope !768
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt15ProjectionLight6BoundsEv(ptr dead_on_unwind writable sret(%"class.pstd::optional.21") align 4 %0, ptr noundef nonnull readonly align 8 dereferenceable(728) %i.b)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt16GoniometricLight6BoundsEv(ptr dead_on_unwind writable sret(%"class.pstd::optional.21") align 4 %0, ptr noundef nonnull readonly align 8 dereferenceable(448) %i.b)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt9SpotLight6BoundsEv(ptr dead_on_unwind writable sret(%"class.pstd::optional.21") align 4 %0, ptr noundef nonnull readonly align 8 dereferenceable(172) %i.b)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt16DiffuseAreaLight6BoundsEv(ptr dead_on_unwind writable sret(%"class.pstd::optional.21") align 4 %0, ptr noundef nonnull align 8 dereferenceable(352) %i.b)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, i8 0, i64 56, i1 false), !alias.scope !769
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, i8 0, i64 56, i1 false), !alias.scope !770
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, i8 0, i64 56, i1 false), !alias.scope !771
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit"

"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light6BoundsEvE3$_0EEDcOT_.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Light8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !290    ; 2 uses
  %i.b = and i64 %i.a, 144115188075855871         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.85, i64 9, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.f, align 1, !tbaa !28
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.a, 57
  %i.h = trunc nuw nsw i64 %i.g to i32
  switch i32 %i.h, label %bb.k [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt10PointLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(164) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt12DistantLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(180) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt15ProjectionLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(728) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.f:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt16GoniometricLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(448) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.g:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt9SpotLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(172) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.h:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt16DiffuseAreaLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(352) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.i:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt20UniformInfiniteLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(180) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.j:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt18ImageInfiniteLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(592) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.k:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt24PortalImageInfiniteLight8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(516) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE11DispatchCPUIRZNKS_5Light8ToStringB5cxx11EvE3$_0EEDcOT_.exit": ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Light6PDF_LeERKNS_11InteractionENS_7Vector3IfEEPfS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, <2 x float> %2, float %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #10 align 2 {
bb.a:
  %6 = alloca %class.anon.172, align 8            ; 4 uses
  %7 = alloca %"class.pbrt::Normal3", align 8     ; 6 uses
  %8 = alloca %"class.pbrt::Normal3", align 8     ; 5 uses
  %.val = load i64, ptr %0, align 8, !tbaa !290   ; 2 uses
  %i.a = and i64 %.val, 144115188075855871
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = lshr i64 %.val, 57
  %i.d = trunc nuw nsw i64 %i.c to i32
  switch i32 %i.d, label %bb.m [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 213, ptr noundef nonnull @.str.140) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 270, ptr noundef nonnull @.str.140) #36
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 333, ptr noundef nonnull @.str.140) #36
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 385, ptr noundef nonnull @.str.140) #36
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 763, ptr noundef nonnull @.str.140) #36
  unreachable

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !241
  %i.g = load <2 x float>, ptr %7, align 8
  %9 = fcmp une <2 x float> %i.g, zeroinitializer ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1
  %or.cond.i.i.i.i.i = select i1 %10, i1 true, i1 %11
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = load float, ptr %i.h, align 8
  %i.j = fcmp une float %i.i, 0.000000e+00
  %or.cond.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i.i.i, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4pbrt8LogFatalIJRA7_KcRA18_S1_S3_RNS_7Normal3IfEES5_S8_EEEvNS_8LogLevelEPS1_iSA_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef 855, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(7) @.str.62, ptr noundef nonnull align 1 dereferenceable(18) @.str.63, ptr noundef nonnull align 1 dereferenceable(7) @.str.62, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 1 dereferenceable(18) @.str.63, ptr noundef nonnull align 4 dereferenceable(12) %8) #36
  unreachable

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %1, ptr %6, align 8, !tbaa !243
  %i.l = load i64, ptr %i.k, align 8, !tbaa !213  ; 2 uses
  %i.m = and i64 %i.l, 144115188075855871
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = lshr i64 %i.l, 57
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = add nsw i32 %i.p, -1
  %i.r = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Shape3PDFERKNS_11InteractionEEUlT_E_fNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.n, i32 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  store float %i.r, ptr %4, align 4, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.t = load i8, ptr %i.s, align 4, !tbaa !218, !range !92, !noundef !93
  %i.u = trunc nuw i8 %i.t to i1
  %.sroa.013.0.copyload.i.i.i.i = load <2 x float>, ptr %i.e, align 8 ; 2 uses
  %.sroa.214.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.214.0.copyload.i.i.i.i = load float, ptr %.sroa.214.0..sroa_idx.i.i.i.i, align 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.013.0.copyload.i.i.i.i, i64 0
  %.sroa.01.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %2, i64 0
  %.sroa.04.4.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.013.0.copyload.i.i.i.i, i64 1
  %.sroa.01.4.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %2, i64 1
  %i.v = fmul float %3, %.sroa.214.0.copyload.i.i.i.i ; 2 uses
  %i.w = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i.i.i.i.i, float %.sroa.01.4.vec.extract.i.i.i.i.i.i, float %i.v)
  %i.x = fneg float %i.v
  %i.y = call noundef float @llvm.fma.f32(float %.sroa.214.0.copyload.i.i.i.i, float %3, float %i.x)
  %i.z = fadd float %i.w, %i.y
  %i.aa = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i.i.i.i.i, float %.sroa.01.0.vec.extract.i.i.i.i.i.i, float %i.z) ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread.i.i.i.i
  %i.ab = call noundef float @llvm.fabs.f32(float %i.aa)
  %i.ac = fmul float %i.ab, f0x3EA2F983
  %i.ad = fmul float %i.ac, 5.000000e-01
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE8DispatchIRZNKS_5Light6PDF_LeERKNS_11InteractionENS_7Vector3IfEEPfSI_E3$_0EEDcOT_.exit"

bb.j:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread.i.i.i.i
  %i.ae = fmul float %i.aa, f0x3EA2F983
  br label %"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE8DispatchIRZNKS_5Light6PDF_LeERKNS_11InteractionENS_7Vector3IfEEPfSI_E3$_0EEDcOT_.exit"

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 528, ptr noundef nonnull @.str.140) #36
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 568, ptr noundef nonnull @.str.140) #36
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.137, i32 noundef 664, ptr noundef nonnull @.str.140) #36
  unreachable

"_ZNK4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEE8DispatchIRZNKS_5Light6PDF_LeERKNS_11InteractionENS_7Vector3IfEEPfSI_E3$_0EEDcOT_.exit": ; preds = %bb.i, %bb.j
  %i.af = phi float [ %i.ad, %bb.i ], [ %i.ae, %bb.j ]
  store float %i.af, ptr %5, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt5Light6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ParameterDictionaryERKNS_9TransformERKNS_15CameraTransformENS_6MediumEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Light") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 4 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(824) %4, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %5, ptr noundef %6, i64 %7) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.pstd::pmr::polymorphic_allocator", align 8 ; 11 uses
  %9 = alloca %"class.pbrt::Medium", align 8      ; 2 uses
  %10 = alloca %"class.pbrt::Medium", align 8     ; 2 uses
  %11 = alloca %"class.pbrt::Medium", align 8     ; 2 uses
  %12 = alloca %"class.pbrt::Medium", align 8     ; 2 uses
  %13 = alloca %"class.std::vector.111", align 8  ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 16 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::vector", align 8      ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %24 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %25 = alloca %"struct.pbrt::ImageAndMetadata", align 8 ; 48 uses
  %26 = alloca %"class.pbrt::Spectrum", align 8   ; 3 uses
  %27 = alloca %"class.pbrt::Image", align 8      ; 7 uses
  %28 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 20 uses
  %29 = alloca %"class.std::allocator", align 1   ; 5 uses
  %30 = alloca %"class.std::allocator", align 1   ; 5 uses
  %31 = alloca %"class.std::allocator", align 1   ; 5 uses
  %32 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %33 = alloca %"struct.pbrt::ImageAndMetadata", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %36 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 10 uses
  %37 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %38 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %39 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 11 uses
  %40 = alloca %"class.pbrt::Image", align 8      ; 8 uses
  %i.d = inttoptr i64 %7 to ptr                   ; 7 uses
  store ptr %i.d, ptr %8, align 8
  store i64 0, ptr %0, align 8, !tbaa !290
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 6 uses
  switch i64 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit276.thread441 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit268
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit272
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit274
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit276
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = xor i32 %i.h, 1852403568
  %i.j = getelementptr i8, ptr %i.g, i64 4
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = xor i32 %i.l, 116
  %i.n = or i32 %i.i, %i.m
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit276.thread441

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = load i64, ptr %5, align 8, !tbaa !40
  store i64 %i.r, ptr %9, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !295
  %i.u = call noundef ptr @_ZN4pbrt10PointLight6CreateERKNS_9TransformENS_6MediumERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 4 dereferenceable(128) %3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef %i.t, ptr poison, ptr %i.d)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = or i64 %i.v, 144115188075855872          ; 2 uses
  store i64 %i.w, ptr %0, align 8, !tbaa !290
  br label %bb.cm

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit268: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !29
  %bcmp.i267 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.87, i64 %i.f)
  %i.x = icmp eq i32 %bcmp.i267, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit268.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit276.thread441

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit268.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit268
  %i.y = load i64, ptr %5, align 8, !tbaa !40
  store i64 %i.y, ptr %10, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !295
  %i.ab = call noundef ptr @_ZN4pbrt9SpotLight6CreateERKNS_9TransformENS_6MediumERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 4 dereferenceable(128) %3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef %i.aa, ptr poison, ptr %i.d)
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = or i64 %i.ac, 720575940379279360        ; 2 uses
  store i64 %i.ad, ptr %0, align 8, !tbaa !290
  br label %bb.cm

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270: ; preds = %bb.a
  %.pre522 = load ptr, ptr %1, align 8, !tbaa !29
  %bcmp.i269 = tail call i32 @bcmp(ptr %.pre522, ptr nonnull @.str.88, i64 %i.f)
  %i.ae = icmp eq i32 %bcmp.i269, 0
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit276.thread441

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270
  %i.af = load i64, ptr %5, align 8, !tbaa !40
  store i64 %i.af, ptr %11, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !295
  %i.ai = call noundef ptr @_ZN4pbrt16GoniometricLight6CreateERKNS_9TransformENS_6MediumERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 4 dereferenceable(128) %3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef %i.ah, ptr noundef %6, ptr %i.d)
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = or i64 %i.aj, 576460752303423488        ; 2 uses
  store i64 %i.ak, ptr %0, align 8, !tbaa !290
  br label %bb.cm

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit272: ; preds = %bb.a
  %.pre523 = load ptr, ptr %1, align 8, !tbaa !29
  %bcmp.i271 = tail call i32 @bcmp(ptr %.pre523, ptr nonnull @.str.89, i64 %i.f)
  %i.al = icmp eq i32 %bcmp.i271, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit272.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit276.thread441

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit272.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit272
  %i.am = load i64, ptr %5, align 8, !tbaa !40
  store i64 %i.am, ptr %12, align 8, !tbaa !40
  %i.an = call noundef ptr @_ZN4pbrt15ProjectionLight6CreateERKNS_9TransformENS_6MediumERKNS_19ParameterDictionaryEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 4 dereferenceable(128) %3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef %6, ptr %i.d)
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = or i64 %i.ao, 432345564227567616        ; 2 uses
  store i64 %i.ap, ptr %0, align 8, !tbaa !290
  br label %bb.cm

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit274: ; preds = %bb.a
  %.pre524 = load ptr, ptr %1, align 8, !tbaa !29
end_hunk_1
