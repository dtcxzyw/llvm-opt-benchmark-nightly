Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 112
begin_hunk_0_@"_ZZN3tev11ImageCanvas4drawEP10NVGcontextENK3$_2clERKN7nanogui5ColorENSt3__14spanIKNS_9VgCommandELm18446744073709551615EEE":bb.a
  br i1 %.not.i.i.i21, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22.preheader, label %bb.an

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22.preheader: ; preds = %bb.an, %bb.al, %bb.am
  br label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22: ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22.preheader, %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22
  %.020 = phi i64 [ %i.aiv, %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22 ], [ 0, %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22.preheader ]
  %i.aiu = load ptr, ptr %.0.val, align 8, !tbaa !257
  tail call void @nvgRestore(ptr noundef %i.aiu)
  %i.aiv = add nuw i64 %.020, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.aiv, %.2
  br i1 %exitcond.not, label %.loopexit, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22, !llvm.loop !848

.loopexit:                                        ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit22, %bb.a, %._crit_edge
  %i.aiw = load ptr, ptr %.0.val, align 8, !tbaa !257
  tail call void @nvgRestore(ptr noundef %i.aiw)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3tev11ImageCanvas9translateEN7nanogui5ArrayIfLm2EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) %0, <2 x float> %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !76, !noalias !856 ; 2 uses
  %i.i = load <4 x float>, ptr %i.a, align 8, !tbaa !76, !noalias !856 ; 3 uses
  %i.j = load float, ptr %i.b, align 4, !tbaa !76, !noalias !856
  %i.k = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.l = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> zeroinitializer)
  %i.m = load <2 x float>, ptr %i.c, align 8, !tbaa !76, !noalias !856 ; 3 uses
  %i.n = load <4 x float>, ptr %i.d, align 4
  %i.o = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.p = shufflevector <4 x float> %i.i, <4 x float> %i.o, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.q = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.l)
  %i.r = load <2 x float>, ptr %i.e, align 8, !tbaa !76, !noalias !856 ; 3 uses
  %i.s = load float, ptr %i.f, align 4, !tbaa !76, !noalias !856 ; 2 uses
  %i.t = extractelement <2 x float> %i.r, i64 0
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %i.v = fadd float %i.s, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.u)
  %i.x = fadd float %i.h, %i.w
  %i.y = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.z = insertelement <2 x float> %i.y, float %i.j, i64 0
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> zeroinitializer) ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.m, %i.aa
  %i.ab = shufflevector <2 x float> %i.m, <2 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.aa)
  %i.ad = shufflevector <4 x float> %i.i, <4 x float> %i.o, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.ae = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.af = insertelement <4 x float> %i.ae, float 1.000000e+00, i64 2
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.af, <4 x float> %i.q)
  store <4 x float> %i.ag, ptr %i.a, align 8
  %i.ah = insertelement <4 x float> %i.n, float %i.h, i64 1
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aj = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %i.ak = insertelement <4 x float> %i.aj, float 1.000000e+00, i64 1
  %i.al = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ac, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.am = insertelement <4 x float> %i.al, float %i.v, i64 3
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.ak, <4 x float> %i.am)
  store <4 x float> %i.an, ptr %i.c, align 8
  store float %i.x, ptr %i.g, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZN3tev11ImageCanvas14getImageCoordsEPKNS_5ImageEN7nanogui5ArrayIiLm2EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.nanogui::Matrix", align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @_ZN3tev11ImageCanvas16textureToNanoguiEPKNS_5ImageE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %3, ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load <2 x float>, ptr %i.b, align 8, !tbaa !76, !noalias !859 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.g = load float, ptr %i.a, align 4, !tbaa !76, !noalias !859 ; 3 uses
  %i.h = load float, ptr %i.c, align 8, !tbaa !76, !noalias !859
  %i.i = fneg float %i.h                          ; 3 uses
  %i.j = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.k = fmul float %i.j, %i.i
  %i.l = extractelement <2 x float> %i.e, i64 0   ; 3 uses
  %i.m = fmul float %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load <2 x float>, ptr %i.f, align 4, !tbaa !76, !noalias !859 ; 2 uses
  %i.p = load float, ptr %i.d, align 8, !tbaa !76, !noalias !859 ; 2 uses
  %i.q = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.r = fneg float %i.q                          ; 2 uses
  %i.s = fmul float %i.j, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.l, float %i.p, float %i.s) ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.g, float %i.p, float %i.k)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.g, float %i.q, float %i.m) ; 2 uses
  %i.w = load <2 x float>, ptr %3, align 8, !tbaa !76, !noalias !859 ; 5 uses
  %i.x = fneg float %i.u                          ; 2 uses
  %i.y = load <2 x float>, ptr %i.n, align 4, !tbaa !76, !noalias !859 ; 3 uses
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fmul float %i.z, %i.x
  %i.ab = extractelement <2 x float> %i.w, i64 0
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.t, float %i.aa)
  %i.ad = extractelement <2 x float> %i.y, i64 1
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.v, float %i.ac) ; 2 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  br i1 %i.af, label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ah = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = fdiv float 1.000000e+00, %i.ae          ; 4 uses
  %i.aj = fneg float %i.l
  %i.ak = insertelement <4 x float> poison, float %i.i, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.r, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.aj, i64 3
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ao = fmul <4 x float> %i.ag, %i.an
  %i.ap = shufflevector <2 x float> %i.o, <2 x float> %i.e, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.ap, <4 x float> %i.ao) ; 4 uses
  %i.ar = fneg float %i.g
  %i.as = shufflevector <2 x float> %i.w, <2 x float> %i.y, <2 x i32> <i32 1, i32 3>
  %i.at = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.as, %i.au
  %i.aw = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.e, <2 x float> %i.av) ; 2 uses
  %i.ay = fneg <4 x float> %i.aq
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ba = insertelement <2 x float> %i.az, float %i.t, i64 0
  %i.bb = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bd = fmul <2 x float> %i.ba, %i.bc
  %i.be = extractelement <4 x float> %i.aq, i64 3
  %i.bf = fmul float %i.be, %i.ai
  %i.bg = insertelement <4 x float> poison, float %i.x, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.aq, <2 x i32> <i32 0, i32 4>
  %i.bi = fmul <2 x float> %i.bc, %i.bh
  %i.bj = extractelement <2 x float> %i.ax, i64 1
  %i.bk = fneg float %i.bj
  %i.bl = fmul float %i.ai, %i.bk
  %i.bm = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bn = fneg <4 x float> %i.aq
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bp = shufflevector <2 x float> %i.bm, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bq = fmul <2 x float> %i.bp, %i.bc
  %i.br = extractelement <2 x float> %i.ax, i64 0
  %i.bs = fmul float %i.br, %i.ai
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit:    ; preds = %bb.a, %bb.b
  %.sroa.7.0 = phi float [ %i.bf, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink64.i = phi float [ %i.bl, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink.i = phi float [ %i.bs, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.bt = phi <2 x float> [ %i.bq, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.bu = phi <2 x float> [ %i.bi, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.bv = phi <2 x float> [ %i.bd, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %.sroa.04.0.extract.trunc = trunc i64 %2 to i32
  %i.bw = sitofp i32 %.sroa.04.0.extract.trunc to float ; 2 uses
  %i.bx = sitofp i32 %.sroa.2.0.extract.trunc to float ; 2 uses
  %i.by = fmul float %.sroa.7.0, %i.bw
  %i.bz = fadd float %i.by, 0.000000e+00
  %i.ca = fmul float %.sink64.i, %i.bx
  %i.cb = fadd float %i.bz, %i.ca
  %i.cc = fadd float %i.cb, %.sink.i
  %i.cd = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.bu, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bv, %i.ch
  %i.cj = fadd <2 x float> %i.ci, zeroinitializer
  %i.ck = fadd <2 x float> %i.cf, %i.cj
  %i.cl = fadd <2 x float> %i.bt, %i.ck
  %i.cm = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fdiv <2 x float> %i.cl, %i.cn           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = tail call noundef float @llvm.floor.f32(float %i.cp)
  %i.cr = fptosi float %i.cq to i32
  %i.cs = extractelement <2 x float> %i.co, i64 1
  %i.ct = tail call noundef float @llvm.floor.f32(float %i.cs)
  %i.cu = fptosi float %i.ct to i32
  %.sroa.26.0.insert.ext = zext i32 %i.cu to i64
  %.sroa.26.0.insert.shift = shl nuw i64 %.sroa.26.0.insert.ext, 32
  %.sroa.05.0.insert.ext = zext i32 %i.cr to i64
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.26.0.insert.shift, %.sroa.05.0.insert.ext
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZN3tev11ImageCanvas22getDisplayWindowCoordsEPKNS_5ImageEN7nanogui5ArrayIiLm2EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN3tev11ImageCanvas14getImageCoordsEPKNS_5ImageEN7nanogui5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1, i64 %2)
  %3 = bitcast i64 %i.a to <2 x i32>
  %4 = sitofp <2 x i32> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.c, align 8, !tbaa !79 ; 2 uses
  %i.d = sub i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i6
  %.sroa.011.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.011.4.extract.trunc = trunc nuw i64 %.sroa.011.4.extract.shift to i32
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i6, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.e = sub nsw i32 %.sroa.011.4.extract.trunc, %.sroa.0.4.extract.trunc
  %.sroa.013.0.extract.trunc = trunc i64 %i.d to i32
  %i.f = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.g = insertelement <2 x i32> %i.f, i32 %.sroa.013.0.extract.trunc, i64 1
  %i.h = sitofp <2 x i32> %i.g to <2 x float>
  %i.i = fadd <2 x float> %5, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi <2 x float> [ %5, %bb.a ], [ %i.i, %bb.b ]
  %i.k = fptosi <2 x float> %i.j to <2 x i32>     ; 2 uses
  %i.l = extractelement <2 x i32> %i.k, i64 0
  %i.m = zext i32 %i.l to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %i.m, 32
  %i.n = extractelement <2 x i32> %i.k, i64 1
  %i.o = zext i32 %i.n to i64
  %.sroa.021.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %i.o
  ret i64 %.sroa.021.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { i64, i64 } @_ZNK3tev11ImageCanvas17cropInImageCoordsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.d = load i8, ptr %i.c, align 4, !tbaa !177, !range !198, !noundef !199
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 376 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.sroa.3.0.in = select i1 %i.e, ptr %.sroa.3.0..sroa_idx, ptr %.sroa.2.0..sroa_idx.i
  %.sroa.0.0.in = select i1 %i.e, ptr %i.f, ptr %i.g
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 4, !tbaa !79 ; 2 uses
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 4, !tbaa !79 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0 to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 2 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.3.0 to i32 ; 2 uses
  %.sroa.5.8.extract.shift.i = lshr i64 %.sroa.3.0, 32
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.5.8.extract.shift.i to i32 ; 2 uses
  %i.h = icmp sge i32 %.sroa.3.8.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  %i.i = icmp sge i32 %.sroa.5.8.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  %i.l = load i32, ptr %i.k, align 4, !tbaa !204
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  %i.n = load i32, ptr %i.m, align 4, !tbaa !204
  %i.o = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = add nsw i32 %i.o, %.sroa.2.0.extract.trunc.i
  %i.q = add nsw i32 %i.o, %.sroa.5.8.extract.trunc.i
  %i.r = load i32, ptr %i.g, align 4, !tbaa !204
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.t = load i32, ptr %i.s, align 4, !tbaa !204
  %i.u = sub nsw i32 %i.r, %i.t                   ; 2 uses
  %i.v = add nsw i32 %i.u, %.sroa.0.0.extract.trunc.i
  %i.w = add nsw i32 %i.u, %.sroa.3.8.extract.trunc.i
  %.sroa.0.0.insert.ext.i4.i.i = zext i32 %i.w to i64
  %.sroa.2.0.insert.ext.i2.i.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i3.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i2.i.i, 32
  %.sroa.0.0.insert.insert.i5.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i3.i.i, %.sroa.0.0.insert.ext.i4.i.i
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.01.sroa.0.0.insert.ext = zext i32 %i.v to i64
  %.sroa.01.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.01.sroa.0.0.insert.ext
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.04.1 = phi i64 [ 0, %bb.a ], [ %.sroa.01.sroa.0.0.insert.insert, %bb.c ], [ 0, %bb.b ]
  %.sroa.4.1 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.insert.insert.i5.i.i, %bb.c ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.04.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3tev11ImageCanvas16fitImageToScreenERKNS_5ImageE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) initializes((304, 340)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(516) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load <4 x float>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !79 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 16, !tbaa !79 ; 2 uses
  %.sroa.57.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32
  %.sroa.06.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.e = sub nsw i32 %.sroa.57.8.extract.trunc, %.sroa.06.0.extract.trunc
  %.sroa.57.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.57.12.extract.trunc = trunc nuw i64 %.sroa.57.12.extract.shift to i32
  %.sroa.06.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.06.4.extract.trunc = trunc nuw i64 %.sroa.06.4.extract.shift to i32
  %i.f = sub nsw i32 %.sroa.57.12.extract.trunc, %.sroa.06.4.extract.trunc
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.h = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %i.i = uitofp nneg i32 %i.g to float
  %i.j = uitofp nneg i32 %i.h to float
  %i.k = insertelement <2 x float> poison, float %i.i, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.l, %i.m
  %i.o = load <2 x i32>, ptr %i.d, align 8, !tbaa !204
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = fdiv <2 x float> %i.p, %i.n              ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0   ; 2 uses
  %i.s = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.t = fcmp olt float %i.s, %i.r
  %.sroa.speculated = select i1 %i.t, float %i.s, float %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  store float %.sroa.speculated, ptr %i.u, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 308
  store <2 x float> zeroinitializer, ptr %.sroa.43.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store float %.sroa.speculated, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 324
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.8.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3tev11ImageCanvas14resetTransformEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(504) initializes((304, 340)) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store float 1.000000e+00, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3tev11ImageCanvas19getRgbaHdrImageDataEbi(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(504) %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.tev::HeapArray", align 8    ; 6 uses
  %5 = alloca %"class.std::__1::basic_string_view", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #51 ; 17 uses
  store ptr @_ZNK3tev11ImageCanvas19getRgbaHdrImageDataEbi.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZNK3tev11ImageCanvas19getRgbaHdrImageDataEbi.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr105 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %.reload.addr106 = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %.reload.addr108 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #48
          to label %.noexc unwind label %.body.from. ; 3 uses

.noexc:                                           ; preds = %.from.
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.c, i8 0, i64 108, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__assoc_stateIN3tev9HeapArrayIfEEEE, i64 16), ptr %i.b, align 8, !tbaa !78
  store ptr %i.b, ptr %.reload.addr108, align 8, !tbaa !292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.d = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48
          to label %bb.a unwind label %.body.from.101 ; 5 uses

.body.from.101:                                   ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIN3tev9HeapArrayIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr108) #47
  br label %.body

.body.from.:                                      ; preds = %.from.
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !872
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.d, align 8, !tbaa !78, !noalias !872
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !872
  store i32 2, ptr %i.j, align 8, !tbaa !294, !noalias !872
  store ptr %i.i, ptr %i.g, align 8, !tbaa !297, !alias.scope !873
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !tbaa !298, !alias.scope !873
  tail call void @_ZN3tev11TaskPromiseINS_4TaskINS_9HeapArrayIfEEEES3_E17get_return_objectEv(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr108) #47
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207  ; 3 uses
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %.reload.addr108, align 8, !tbaa !292 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #50
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  unreachable

end_hunk_0
