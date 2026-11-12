Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontext:bb.a
  %i.ad = load float, ptr %i.x, align 4, !tbaa !76, !noalias !823 ; 2 uses
  %i.ae = insertelement <4 x float> %i.ac, float -0.000000e+00, i64 3
  %i.af = fadd <4 x float> %i.ae, zeroinitializer
  %i.ag = load <2 x float>, ptr %i.y, align 16, !tbaa !76, !noalias !823 ; 3 uses
  %i.ah = load float, ptr %i.z, align 4, !tbaa !76, !noalias !823 ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ac, <4 x float> %i.ai, <4 x i32> <i32 3, i32 4, i32 5, i32 0>
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> zeroinitializer, <4 x float> %i.af) ; 2 uses
  %i.al = load <2 x float>, ptr %i.aa, align 8, !tbaa !76, !noalias !823 ; 3 uses
  %i.am = insertelement <4 x float> %i.ak, float 0.000000e+00, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ao = extractelement <2 x float> %i.al, i64 0
  %i.ap = load <4 x float>, ptr %i.w, align 4     ; 3 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> zeroinitializer, <4 x float> <float 0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>)
  %i.as = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ah, i64 0
  %i.at = fadd <4 x float> %i.ar, %i.as
  %i.au = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.av = insertelement <2 x float> %i.au, float %i.ad, i64 0
  %i.aw = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ax = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.s, i64 1
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.az = insertelement <2 x float> %i.ag, float %i.ah, i64 1
  %i.ba = insertelement <2 x float> poison, float %i.t, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.be = load <2 x float>, ptr %i.ab, align 4, !tbaa !76, !noalias !823 ; 4 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bg = shufflevector <2 x float> %i.al, <2 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> zeroinitializer, <4 x float> %i.am) ; 3 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bj, ptr %5, align 8, !tbaa !76, !alias.scope !823
  %i.bk = extractelement <4 x float> %i.bi, i64 2
  store float %i.bk, ptr %i.u, align 8, !tbaa !76, !alias.scope !823
  %i.bl = shufflevector <4 x float> %i.ak, <4 x float> %i.bi, <2 x i32> <i32 3, i32 7>
  %i.bm = fadd <2 x float> %i.bl, %i.av
  %i.bn = shufflevector <2 x float> %i.al, <2 x float> %i.be, <2 x i32> <i32 0, i32 2>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> zeroinitializer, <2 x float> %i.bm)
  store <2 x float> %i.bo, ptr %i.v, align 4, !tbaa !76, !alias.scope !823
  %i.bp = shufflevector <4 x float> %i.bf, <4 x float> %i.aw, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.ay, <4 x float> %i.at) ; 3 uses
  %i.bs = extractelement <4 x float> %i.br, i64 0
  store float %i.bs, ptr %i.an, align 4, !tbaa !76, !alias.scope !823
  %i.bt = extractelement <4 x float> %i.br, i64 1
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.t, float %i.bt)
  %i.bv = shufflevector <4 x float> %i.br, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.bb, <2 x float> %i.bv)
  %i.bx = fadd float %i.bu, %i.ao
  %i.by = fadd <2 x float> %i.bw, %i.be
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47, !noalias !821
  store float %i.bx, ptr %i.bc, align 8, !tbaa !76, !alias.scope !821
  store <2 x float> %i.by, ptr %i.bd, align 4, !tbaa !76, !alias.scope !821
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %0, ptr %6, align 8, !tbaa !262
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.bz, align 8, !tbaa !263
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.a, ptr %i.ca, align 8, !tbaa !264
  call fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_1clEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr nonnull %0, ptr nonnull %6, i32 noundef 2)
  call fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_1clEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr nonnull %0, ptr nonnull %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas22displayWindowToNanoguiEPKNS_5ImageE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"struct.nanogui::Matrix", align 8  ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !76, !alias.scope !828
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.a, align 4, !tbaa !76, !alias.scope !828
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @_ZN3tev11ImageCanvas16textureToNanoguiEPKNS_5ImageE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %3, ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 360
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !76, !noalias !829 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load float, ptr %i.j, align 8, !tbaa !76, !noalias !829 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = fadd float %i.f, 0.000000e+00
  %i.n = load float, ptr %i.h, align 4, !tbaa !76, !noalias !829 ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 0.000000e+00, float %i.m)
  %i.p = tail call float @llvm.fmuladd.f32(float %i.f, float 0.000000e+00, float 0.000000e+00)
  %i.q = fadd float %i.p, %i.n
  %i.r = insertelement <2 x float> poison, float %i.k, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %i.o, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.q, i64 1
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> zeroinitializer, <2 x float> %i.u) ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  store float %i.w, ptr %i.c, align 4, !tbaa !76, !alias.scope !829
  %i.x = extractelement <2 x float> %i.v, i64 1
  store float %i.x, ptr %i.l, align 4, !tbaa !76, !alias.scope !829
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.y = sub nsw i32 0, %.sroa.0.4.extract.trunc
  %i.z = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.04.0.extract.trunc = sub i32 0, %i.z
  %i.aa = sitofp i32 %.sroa.04.0.extract.trunc to float ; 2 uses
  %i.ab = sitofp i32 %i.y to float                ; 2 uses
  %i.ac = load <2 x float>, ptr %3, align 8, !tbaa !76, !noalias !829 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.g, align 4, !tbaa !76, !noalias !829 ; 3 uses
  %i.ae = load <2 x float>, ptr %i.i, align 8, !tbaa !76, !noalias !829 ; 2 uses
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ah = fadd <4 x float> %i.ag, zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ad, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> zeroinitializer, <4 x float> %i.ah) ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.am = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = fadd <4 x float> %i.al, %i.am
  %i.ao = shufflevector <4 x float> %i.aj, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> zeroinitializer, <4 x float> %i.ao) ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.aq, ptr %0, align 4, !tbaa !76, !alias.scope !829
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.ar, ptr %i.d, align 4, !tbaa !76, !alias.scope !829
  %i.as = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.at, <2 x float> zeroinitializer)
  %i.av = tail call float @llvm.fmuladd.f32(float %i.f, float %i.aa, float 0.000000e+00)
  %i.aw = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ax, <2 x float> %i.au)
  %i.az = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ab, float %i.av)
  %i.ba = fadd <2 x float> %i.ay, %i.ae
  %i.bb = fadd float %i.az, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ 1.000000e+00, %bb.b ], [ %i.bb, %bb.c ]
  %i.bc = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.ba, %bb.c ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.bc, ptr %i.bd, align 4, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink, ptr %i.be, align 4, !tbaa !76
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_1clEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i32 noundef range(i32 1, 3) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !79 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !79 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 248 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %.sroa.0.0.copyload.i18 = load i64, ptr %i.f, align 8, !tbaa !79 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i18 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i18, 32
  %.sroa.074.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.074.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.not.i.i = icmp eq i32 %.sroa.074.0.extract.trunc, %.sroa.0.0.extract.trunc.i
  %.sroa.074.4.extract.trunc = trunc nuw i64 %.sroa.074.4.extract.shift to i32
  %.not.1.i.i = icmp eq i64 %.sroa.074.4.extract.shift, %.sroa.2.0.extract.shift.i
  %.not.lcssa.i.i = and i1 %.not.i.i, %.not.1.i.i
  br i1 %.not.lcssa.i.i, label %_ZNK3tev3BoxIiLj2EEeqES1_.exit, label %_ZNK3tev3BoxIiLj2EEeqES1_.exit.thread

_ZNK3tev3BoxIiLj2EEeqES1_.exit:                   ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %.sroa.2.0.copyload.i20 = load i64, ptr %.sroa.2.0..sroa_idx.i19, align 8, !tbaa !79
  %.not.lcssa.i3.i = icmp eq i64 %.sroa.2.0.copyload.i, %.sroa.2.0.copyload.i20
  br i1 %.not.lcssa.i3.i, label %bb.c, label %_ZNK3tev3BoxIiLj2EEeqES1_.exit.thread

_ZNK3tev3BoxIiLj2EEeqES1_.exit.thread:            ; preds = %bb.b, %_ZNK3tev3BoxIiLj2EEeqES1_.exit
  %i.g = bitcast i64 %.sroa.0.0.copyload.i to <2 x i32>
  %i.h = sitofp <2 x i32> %i.g to <2 x float>
  %i.i = bitcast i64 %.sroa.2.0.copyload.i to <2 x i32>
  %i.j = sitofp <2 x i32> %i.i to <2 x float>
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.k, align 8, !tbaa !79
  %.sroa.066.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i28, 32
  %.sroa.066.4.extract.trunc = trunc nuw i64 %.sroa.066.4.extract.shift to i32
  %i.l = icmp sgt i32 %.sroa.066.4.extract.trunc, %.sroa.074.4.extract.trunc
  tail call fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_0clENS_3BoxIfLj2EEEN7nanogui5ColorEbbNSt3__117basic_string_viewIcNS8_11char_traitsIcEEEEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, <2 x float> %i.h, <2 x float> %i.j, <2 x float> <float f0x3F333333, float 4.000000e-01>, <2 x float> <float 4.000000e-01, float 1.000000e+00>, i1 noundef zeroext %i.l, i1 noundef zeroext true, ptr nonnull @.str.37, i64 21, i32 noundef %0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !207
  %.pre76 = load ptr, ptr %i.d, align 8, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3tev3BoxIiLj2EEeqES1_.exit.thread, %_ZNK3tev3BoxIiLj2EEeqES1_.exit
  %i.m = phi ptr [ %.pre76, %_ZNK3tev3BoxIiLj2EEeqES1_.exit.thread ], [ %i.e, %_ZNK3tev3BoxIiLj2EEeqES1_.exit ] ; 2 uses
  %i.n = phi ptr [ %.pre, %_ZNK3tev3BoxIiLj2EEeqES1_.exit.thread ], [ %i.b, %_ZNK3tev3BoxIiLj2EEeqES1_.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 376
  %.sroa.0.0.copyload.i38 = load i64, ptr %i.o, align 8, !tbaa !79 ; 3 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !79 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 376
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.p, align 8, !tbaa !79 ; 2 uses
  %.sroa.0.0.extract.trunc.i48 = trunc i64 %.sroa.0.0.copyload.i43 to i32
  %.sroa.2.0.extract.shift.i49 = lshr i64 %.sroa.0.0.copyload.i43, 32
  %.sroa.060.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i38, 32 ; 2 uses
  %.sroa.060.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i38 to i32
  %.not.i.i51 = icmp eq i32 %.sroa.060.0.extract.trunc, %.sroa.0.0.extract.trunc.i48
  %.sroa.060.4.extract.trunc = trunc nuw i64 %.sroa.060.4.extract.shift to i32
  %.not.1.i.i52 = icmp eq i64 %.sroa.060.4.extract.shift, %.sroa.2.0.extract.shift.i49
  %.not.lcssa.i.i53 = and i1 %.not.i.i51, %.not.1.i.i52
  br i1 %.not.lcssa.i.i53, label %_ZNK3tev3BoxIiLj2EEeqES1_.exit60, label %_ZNK3tev3BoxIiLj2EEeqES1_.exit60.thread

_ZNK3tev3BoxIiLj2EEeqES1_.exit60:                 ; preds = %bb.c
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %.sroa.2.0.copyload.i45 = load i64, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !79
  %.not.lcssa.i3.i59 = icmp eq i64 %.sroa.2.0.copyload.i40, %.sroa.2.0.copyload.i45
  br i1 %.not.lcssa.i3.i59, label %bb.d, label %_ZNK3tev3BoxIiLj2EEeqES1_.exit60.thread

_ZNK3tev3BoxIiLj2EEeqES1_.exit60.thread:          ; preds = %bb.c, %_ZNK3tev3BoxIiLj2EEeqES1_.exit60
  %i.q = bitcast i64 %.sroa.0.0.copyload.i38 to <2 x i32>
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %i.s = bitcast i64 %.sroa.2.0.copyload.i40 to <2 x i32>
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  %.sroa.0.0.copyload.i71 = load i64, ptr %i.u, align 8, !tbaa !79
  %.sroa.050.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i71, 32
  %.sroa.050.4.extract.trunc = trunc nuw i64 %.sroa.050.4.extract.shift to i32
  %1 = icmp sle i32 %.sroa.060.4.extract.trunc, %.sroa.050.4.extract.trunc
  tail call fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_0clENS_3BoxIfLj2EEEN7nanogui5ColorEbbNSt3__117basic_string_viewIcNS8_11char_traitsIcEEEEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, <2 x float> %i.r, <2 x float> %i.t, <2 x float> <float f0x3F333333, float 4.000000e-01>, <2 x float> <float 4.000000e-01, float 1.000000e+00>, i1 noundef zeroext %1, i1 noundef zeroext true, ptr nonnull @.str.38, i64 24, i32 noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK3tev3BoxIiLj2EEeqES1_.exit60, %_ZNK3tev3BoxIiLj2EEeqES1_.exit60.thread, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 248 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !207  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %.sroa.0.0.copyload.i76 = load i64, ptr %i.x, align 8, !tbaa !79 ; 3 uses
  %.sroa.2.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %.sroa.2.0.copyload.i78 = load i64, ptr %.sroa.2.0..sroa_idx.i77, align 8, !tbaa !79 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %.sroa.0.0.copyload.i81 = load i64, ptr %i.y, align 8, !tbaa !79 ; 3 uses
  %.sroa.2.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  %.sroa.2.0.copyload.i83 = load i64, ptr %.sroa.2.0..sroa_idx.i82, align 8, !tbaa !79
  %.sroa.2.0.extract.shift.i87 = lshr i64 %.sroa.0.0.copyload.i81, 32 ; 2 uses
  %.sroa.0.0.extract.trunc.i86 = trunc i64 %.sroa.0.0.copyload.i81 to i32
  %.sroa.2.0.extract.trunc.i88 = trunc nuw i64 %.sroa.2.0.extract.shift.i87 to i32 ; 2 uses
  %.sroa.046.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i76, 32 ; 2 uses
  %.sroa.046.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i76 to i32
  %.not.i.i89 = icmp eq i32 %.sroa.046.0.extract.trunc, %.sroa.0.0.extract.trunc.i86
  %.sroa.046.4.extract.trunc = trunc nuw i64 %.sroa.046.4.extract.shift to i32 ; 2 uses
  %.not.1.i.i90 = icmp eq i64 %.sroa.046.4.extract.shift, %.sroa.2.0.extract.shift.i87
  %.not.lcssa.i.i91 = and i1 %.not.i.i89, %.not.1.i.i90
  %.not.lcssa.i3.i97 = icmp eq i64 %.sroa.2.0.copyload.i78, %.sroa.2.0.copyload.i83
  %or.cond = select i1 %.not.lcssa.i.i91, i1 %.not.lcssa.i3.i97, i1 false
  %i.z = bitcast i64 %.sroa.2.0.copyload.i78 to <2 x i32>
  %i.aa = sitofp <2 x i32> %i.z to <2 x float>    ; 2 uses
  br i1 %or.cond, label %bb.e, label %_ZNK3tev3BoxIiLj2EEeqES1_.exit98.thread

_ZNK3tev3BoxIiLj2EEeqES1_.exit98.thread:          ; preds = %bb.d
  %i.ab = bitcast i64 %.sroa.0.0.copyload.i76 to <2 x i32>
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>
  %i.ad = icmp sgt i32 %.sroa.2.0.extract.trunc.i88, %.sroa.046.4.extract.trunc
  tail call fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_0clENS_3BoxIfLj2EEEN7nanogui5ColorEbbNSt3__117basic_string_viewIcNS8_11char_traitsIcEEEEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, <2 x float> %i.ac, <2 x float> %i.aa, <2 x float> splat (float 3.500000e-01), <2 x float> <float 8.000000e-01, float 1.000000e+00>, i1 noundef zeroext %i.ad, i1 noundef zeroext false, ptr nonnull @.str.39, i64 11, i32 noundef %0)
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !207 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 376
  %.sroa.0.0.copyload.i114 = load i64, ptr %i.af, align 8, !tbaa !79 ; 2 uses
  %.sroa.2.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %.sroa.2.0.copyload.i11677 = load <2 x i32>, ptr %.sroa.2.0..sroa_idx.i115, align 8, !tbaa !79
  %.sroa.028.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i114, 32
  %.sroa.028.4.extract.trunc = trunc nuw i64 %.sroa.028.4.extract.shift to i32
  %i.ag = bitcast i64 %.sroa.0.0.copyload.i114 to <2 x i32>
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ai = sitofp <2 x i32> %.sroa.2.0.copyload.i11677 to <2 x float>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  %.sroa.0.0.copyload.i124 = load i64, ptr %i.aj, align 8, !tbaa !79
  %.sroa.020.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i124, 32
  %.sroa.020.4.extract.trunc = trunc nuw i64 %.sroa.020.4.extract.shift to i32
  %2 = icmp sle i32 %.sroa.028.4.extract.trunc, %.sroa.020.4.extract.trunc
  tail call fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_0clENS_3BoxIfLj2EEEN7nanogui5ColorEbbNSt3__117basic_string_viewIcNS8_11char_traitsIcEEEEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, <2 x float> %i.ah, <2 x float> %i.ai, <2 x float> splat (float 3.000000e-01), <2 x float> <float 3.000000e-01, float 1.000000e+00>, i1 noundef zeroext %2, i1 noundef zeroext false, ptr nonnull @.str.40, i64 14, i32 noundef %0)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = bitcast i64 %.sroa.0.0.copyload.i81 to <2 x i32>
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>
  %i.am = icmp sle i32 %.sroa.2.0.extract.trunc.i88, %.sroa.046.4.extract.trunc
  tail call fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_0clENS_3BoxIfLj2EEEN7nanogui5ColorEbbNSt3__117basic_string_viewIcNS8_11char_traitsIcEEEEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, <2 x float> %i.al, <2 x float> %i.aa, <2 x float> splat (float 3.000000e-01), <2 x float> <float 3.000000e-01, float 1.000000e+00>, i1 noundef zeroext %i.am, i1 noundef zeroext false, ptr nonnull @.str, i64 0, i32 noundef %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK3tev3BoxIiLj2EEeqES1_.exit98.thread
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 380
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !177, !range !198, !noundef !199
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZNRSt3__18optionalIN3tev3BoxIiLj2EEEE5valueB8ne180100Ev.exit, label %bb.g

_ZNRSt3__18optionalIN3tev3BoxIiLj2EEEE5valueB8ne180100Ev.exit: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 364
  %i.ar = load <2 x i32>, ptr %i.aq, align 4, !tbaa !204
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 372
  %i.au = load <2 x i32>, ptr %i.at, align 4, !tbaa !204
  %i.av = sitofp <2 x i32> %i.au to <2 x float>
  tail call fastcc void @"_ZZN3tev11ImageCanvas20drawCoordinateSystemEP10NVGcontextENK3$_0clENS_3BoxIfLj2EEEN7nanogui5ColorEbbNSt3__117basic_string_viewIcNS8_11char_traitsIcEEEEZNS0_20drawCoordinateSystemES2_E9DrawFlags"(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, <2 x float> %i.as, <2 x float> %i.av, <2 x float> <float 2.000000e-01, float 5.000000e-01>, <2 x float> <float 2.000000e-01, float 1.000000e+00>, i1 noundef zeroext false, i1 noundef zeroext false, ptr nonnull @.str.41, i64 4, i32 noundef %0)
  br label %bb.g

bb.g:                                             ; preds = %_ZNRSt3__18optionalIN3tev3BoxIiLj2EEEE5valueB8ne180100Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas15drawEdgeShadowsEP10NVGcontext(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %struct.NVGpaint, align 8           ; 4 uses
  %3 = alloca %struct.NVGcolor, align 8           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !830  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !832  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !833  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load <4 x i32>, ptr %i.g, align 8, !tbaa !204
  %i.l = sitofp <4 x i32> %i.k to <4 x float>     ; 4 uses
  %i.m = shl nsw i32 %i.f, 1
  %i.n = sitofp i32 %i.m to float
  %i.o = shl nsw i32 %i.d, 1                      ; 3 uses
  %i.p = sitofp i32 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.q, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !834
  %i.s = extractelement <4 x float> %i.l, i64 0
  %i.t = extractelement <4 x float> %i.l, i64 1
  %i.u = extractelement <4 x float> %i.l, i64 2
  %i.v = extractelement <4 x float> %i.l, i64 3
  call void @nvgBoxGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %2, ptr noundef %1, float noundef %i.s, float noundef %i.t, float noundef %i.u, float noundef %i.v, float noundef %i.n, float noundef %i.p, <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.2.0.copyload, ptr noundef nonnull byval(%struct.NVGcolor) align 8 %3)
  call void @nvgSave(ptr noundef %1)
  call void @nvgResetScissor(ptr noundef %1)
  call void @nvgBeginPath(ptr noundef %1)
  %i.w = load <4 x i32>, ptr %i.g, align 8, !tbaa !204
  %i.x = sitofp <4 x i32> %i.w to <4 x float>     ; 4 uses
  %i.y = extractelement <4 x float> %i.x, i64 0
  %i.z = extractelement <4 x float> %i.x, i64 1
  %i.aa = extractelement <4 x float> %i.x, i64 2
  %i.ab = extractelement <4 x float> %i.x, i64 3
  call void @nvgRect(ptr noundef %1, float noundef %i.y, float noundef %i.z, float noundef %i.aa, float noundef %i.ab)
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !204
  %i.ad = add nsw i32 %i.ac, %i.d
  %i.ae = sitofp i32 %i.ad to float
  %i.af = load i32, ptr %i.h, align 4, !tbaa !204
  %i.ag = add nsw i32 %i.af, %i.d
  %i.ah = sitofp i32 %i.ag to float
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !204
  %i.aj = sub nsw i32 %i.ai, %i.o
  %i.ak = sitofp i32 %i.aj to float
  %i.al = load i32, ptr %i.j, align 4, !tbaa !204
  %i.am = sub nsw i32 %i.al, %i.o
  %i.an = sitofp i32 %i.am to float
  %i.ao = sitofp i32 %i.f to float
  call void @nvgRoundedRect(ptr noundef %1, float noundef %i.ae, float noundef %i.ah, float noundef %i.ak, float noundef %i.an, float noundef %i.ao)
  call void @nvgPathWinding(ptr noundef %1, i32 noundef 2)
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %2)
  call void @nvgFill(ptr noundef %1)
  call void @nvgRestore(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  ret void
}

declare void @nvgBoxGradient(ptr dead_on_unwind writable sret(%struct.NVGpaint) align 4, ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, <2 x float>, <2 x float>, ptr noundef byval(%struct.NVGcolor) align 8) local_unnamed_addr #5

declare void @nvgSave(ptr noundef) local_unnamed_addr #5

declare void @nvgResetScissor(ptr noundef) local_unnamed_addr #5

declare void @nvgBeginPath(ptr noundef) local_unnamed_addr #5

declare void @nvgRect(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @nvgRoundedRect(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @nvgPathWinding(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @nvgFillPaint(ptr noundef, ptr noundef byval(%struct.NVGpaint) align 8) local_unnamed_addr #5

declare void @nvgFill(ptr noundef) local_unnamed_addr #5

declare void @nvgRestore(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas4drawEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"struct.nanogui::Matrix", align 8  ; 9 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"struct.nanogui::Matrix", align 8  ; 11 uses
  %4 = alloca %class.anon.208, align 8            ; 5 uses
  %5 = alloca %class.anon.209, align 8            ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !257
  tail call void @_ZN7nanogui6Canvas4drawEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(181) %0, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207
  %.not93 = icmp eq ptr %i.c, null
  br i1 %.not93, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tev11ImageCanvas21drawPixelValuesAsTextEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !207  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %3, align 8, !tbaa !76, !alias.scope !842
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !76, !alias.scope !842
  br label %_ZN3tev11ImageCanvas22displayWindowToNanoguiEPKNS_5ImageE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47, !noalias !841
  call void @_ZN3tev11ImageCanvas16textureToNanoguiEPKNS_5ImageE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %2, ptr noundef nonnull readonly align 8 dereferenceable(504) %0, ptr noundef nonnull readonly %i.d), !noalias !841
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !79, !noalias !841 ; 2 uses
  %.sroa.0.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.g = sub nsw i32 0, %.sroa.0.4.extract.trunc.i
  %i.h = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.04.0.extract.trunc.i = sub i32 0, %i.h
  %i.i = sitofp i32 %.sroa.04.0.extract.trunc.i to float ; 2 uses
  %i.j = sitofp i32 %i.g to float                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !76, !noalias !844 ; 2 uses
  %i.n = fadd float %i.m, 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !76, !noalias !844 ; 3 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 0.000000e+00, float %i.n)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load float, ptr %i.t, align 8, !tbaa !76, !noalias !844 ; 3 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float 0.000000e+00, float %i.r)
  store float %i.v, ptr %i.k, align 8, !tbaa !76, !alias.scope !844
  %i.w = load <2 x float>, ptr %2, align 8, !tbaa !76, !noalias !844 ; 3 uses
  %i.x = load <2 x float>, ptr %i.o, align 4, !tbaa !76, !noalias !844 ; 3 uses
  %i.y = load <2 x float>, ptr %i.s, align 8, !tbaa !76, !noalias !844 ; 4 uses
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %i.aa = fadd <2 x float> %i.z, %i.x
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> zeroinitializer, <2 x float> %i.aa)
  %i.ac = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.i, i64 0
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> zeroinitializer)
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> %i.w, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.ah = insertelement <4 x float> <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.q, i64 3
  %i.ai = fadd <4 x float> %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float %i.q, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.u, i64 3
  %i.am = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.j, i64 0
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.am, <4 x float> %i.ai) ; 3 uses
  %i.ao = shufflevector <2 x float> %i.y, <2 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ap = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.i, i64 2
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ar = shufflevector <4 x float> %i.an, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 6, i32 7>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.aq, <4 x float> %i.ar) ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.at, ptr %3, align 8, !tbaa !76, !alias.scope !844
  %i.au = insertelement <2 x float> poison, float %i.j, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.av, <2 x float> %i.aw) ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.ax, %i.y
end_hunk_0
