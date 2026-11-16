Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Colors?download=true
inline.NumInlined: 6654
inline.NumDeleted: 2190
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN3tev8rgbToXyzERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf:bb.a
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !96
  call void @_ZN4tlog6Logger3logIJRKfEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i32 noundef 8, ptr nonnull @.str.28, i64 92, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !59
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cf, align 4, !tbaa !59
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %i.cg = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fdiv <2 x float> %i.bl, %i.ch           ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ck = fdiv float %i.br, %i.aq                 ; 3 uses
  %i.cl = fsub float 1.000000e+00, %i.an
  %i.cm = fsub float %i.cl, %i.ad
  %i.cn = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.co = insertelement <4 x float> %i.cn, float %i.cm, i64 2
  %i.cp = fmul <4 x float> %i.co, %i.cj
  store <4 x float> %i.cp, ptr %0, align 4, !tbaa !59
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = fsub float 1.000000e+00, %i.ac
  %i.cs = fsub float %i.cr, %i.ab
  %i.ct = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.cs, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.ck, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.z, i64 3
  %i.cx = shufflevector <2 x float> %i.ci, <2 x float> %i.y, <4 x i32> <i32 1, i32 1, i32 2, i32 poison>
  %i.cy = insertelement <4 x float> %i.cx, float %i.ck, i64 3
  %i.cz = fmul <4 x float> %i.cw, %i.cy
  store <4 x float> %i.cz, ptr %i.cq, align 4, !tbaa !59
  %i.da = fsub float 1.000000e+00, %i.af
  %i.db = fsub float %i.da, %i.z
  %i.dc = fmul float %i.db, %i.ck
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi float [ %i.dc, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink, ptr %i.dd, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev8xyzToRgbERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) initializes((0, 36)) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef %2) local_unnamed_addr #9 {
bb.a:
  %3 = alloca %"struct.nanogui::Matrix", align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN3tev8rgbToXyzERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %3, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load <2 x float>, ptr %i.b, align 8, !tbaa !59, !noalias !573 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.g = load float, ptr %i.a, align 4, !tbaa !59, !noalias !573 ; 3 uses
  %i.h = load float, ptr %i.c, align 8, !tbaa !59, !noalias !573
  %i.i = fneg float %i.h                          ; 3 uses
  %i.j = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.k = fmul float %i.j, %i.i
  %i.l = extractelement <2 x float> %i.e, i64 0   ; 3 uses
  %i.m = fmul float %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load <2 x float>, ptr %i.f, align 4, !tbaa !59, !noalias !573 ; 2 uses
  %i.p = load float, ptr %i.d, align 8, !tbaa !59, !noalias !573 ; 2 uses
  %i.q = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.r = fneg float %i.q                          ; 2 uses
  %i.s = fmul float %i.j, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.l, float %i.p, float %i.s) ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.g, float %i.p, float %i.k)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.g, float %i.q, float %i.m) ; 2 uses
  %i.w = load <2 x float>, ptr %3, align 8, !tbaa !59, !noalias !573 ; 5 uses
  %i.x = fneg float %i.u                          ; 2 uses
  %i.y = load <2 x float>, ptr %i.n, align 4, !tbaa !59, !noalias !573 ; 3 uses
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fmul float %i.z, %i.x
  %i.ab = extractelement <2 x float> %i.w, i64 0
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.t, float %i.aa)
  %i.ad = extractelement <2 x float> %i.y, i64 1
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.v, float %i.ac) ; 2 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !573
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.ag = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ah = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = fdiv float 1.000000e+00, %i.ae          ; 2 uses
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
  %i.az = insertelement <4 x float> %i.ay, float %i.t, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %i.x, i64 3
  %i.bc = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.be = fmul <4 x float> %i.bb, %i.bd
  store <4 x float> %i.be, ptr %0, align 4, !tbaa !59, !alias.scope !573
  %i.bf = fneg <2 x float> %i.ax
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.aq, <4 x float> %i.bg, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.bi = insertelement <4 x float> %i.bh, float %i.v, i64 2
  %i.bj = fneg <4 x float> %i.aq
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.bl = fmul <4 x float> %i.bk, %i.bd
  %i.bm = extractelement <2 x float> %i.ax, i64 0
  %i.bn = fmul float %i.bm, %i.ai
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit:    ; preds = %bb.b, %bb.c
  %.sink.i = phi float [ 0.000000e+00, %bb.b ], [ %i.bn, %bb.c ]
  %i.bo = phi <4 x float> [ zeroinitializer, %bb.b ], [ %i.bl, %bb.c ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !59, !alias.scope !573
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink.i, ptr %i.bq, align 4, !tbaa !59, !alias.scope !573
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev17xyzToChromaMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) initializes((0, 36)) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #9 {
bb.a:
  tail call void @_ZN3tev8xyzToRgbERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind writable sret(%"struct.nanogui::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef 1.000000e+00)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3tev18adaptWhiteBradfordEN7nanogui5ArrayIfLm2EEES2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) initializes((0, 36)) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #11 {
bb.a:
  %.sroa.0106.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %.sroa.0104.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %i.a = fcmp oeq float %.sroa.0106.0.vec.extract, %.sroa.0104.0.vec.extract
  %.sroa.0106.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.0104.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.b = fcmp oeq float %.sroa.0106.4.vec.extract, %.sroa.0104.4.vec.extract
  %.lcssa.i = select i1 %i.a, i1 %i.b, i1 false
  br i1 %.lcssa.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !59
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = fsub float 1.000000e+00, %.sroa.0106.0.vec.extract
  %i.f = fsub float %i.e, %.sroa.0106.4.vec.extract
  %i.g = fsub float 1.000000e+00, %.sroa.0104.0.vec.extract
  %i.h = fsub float %i.g, %.sroa.0104.4.vec.extract
  %i.i = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.j = insertelement <4 x float> %i.i, float %i.f, i64 1
  %i.k = insertelement <4 x float> %i.j, float %i.h, i64 3
  %i.l = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.m = fdiv <4 x float> %i.k, %i.l              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = shufflevector <4 x float> %i.m, <4 x float> poison, <3 x i32> zeroinitializer
  %i.q = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.p, <3 x float> <float 3.890000e-02, float f0xBF400D1B, float f0x3F652546>, <3 x float> zeroinitializer)
  %i.r = fadd <3 x float> %i.q, <float -6.850000e-02, float 1.713500e+00, float 2.664000e-01>
  %i.s = shufflevector <4 x float> %i.m, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.t = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.s, <3 x float> <float 1.029600e+00, float 3.670000e-02, float -1.614000e-01>, <3 x float> %i.r)
  %i.u = shufflevector <4 x float> %i.m, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.v = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.u, <3 x float> <float 3.890000e-02, float f0xBF400D1B, float f0x3F652546>, <3 x float> zeroinitializer)
  %i.w = fadd <3 x float> %i.v, <float -6.850000e-02, float 1.713500e+00, float 2.664000e-01>
  %i.x = shufflevector <4 x float> %i.m, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.y = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.x, <3 x float> <float 1.029600e+00, float 3.670000e-02, float -1.614000e-01>, <3 x float> %i.w)
  %i.z = fdiv <3 x float> %i.y, %i.t              ; 5 uses
  %i.aa = shufflevector <3 x float> %i.z, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> <float f0x3EDD571F, float -8.528700e-03>, <2 x float> zeroinitializer)
  %i.ac = fadd <2 x float> %i.ab, zeroinitializer ; 4 uses
  %i.ad = extractelement <3 x float> %i.z, i64 1
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float f0xBE169567, float 0.000000e+00)
  %i.af = shufflevector <3 x float> %i.z, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> <float f0x3F04B343, float 4.004280e-02>, <2 x float> zeroinitializer)
  %i.ah = fadd float %i.ae, 0.000000e+00          ; 3 uses
  %i.ai = fadd <2 x float> %i.ag, zeroinitializer ; 4 uses
  %i.aj = shufflevector <3 x float> %i.z, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> <float f0x3E23CD43, float f0x3F7CAB91>, <2 x float> zeroinitializer) ; 4 uses
  %i.al = fadd <2 x float> %i.ak, <float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.am = shufflevector <3 x float> %i.z, <3 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> <float 4.929120e-02, float f0x3F77EEBF>, <2 x float> zeroinitializer) ; 4 uses
  %i.ao = shufflevector <2 x float> %i.ac, <2 x float> %i.ai, <4 x i32> <i32 1, i32 poison, i32 2, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float -0.000000e+00, i64 3
  %i.aq = insertelement <4 x float> %i.ap, float %i.ah, i64 1
  %i.ar = shufflevector <2 x float> %i.al, <2 x float> %i.ac, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> <float f0x3F652546, float f0x3F652546, float poison, float poison>, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>)
  %i.at = shufflevector <4 x float> %i.as, <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 1, i32 7>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> <float f0x3F652546, float f0xBF400D1B, float f0xBF400D1B, float 0.000000e+00>, <4 x float> %i.at)
  %i.av = shufflevector <2 x float> %i.ai, <2 x float> %i.an, <4 x i32> <i32 1, i32 poison, i32 2, i32 poison>
  %3 = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison> ; 2 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> %3, <4 x i32> <i32 0, i32 poison, i32 2, i32 5>
  %i.ax = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> <float f0xBF400D1B, float 3.890000e-02, float 3.890000e-02, float 2.664000e-01>, <4 x float> %i.au) ; 2 uses
  %i.ba = shufflevector <2 x float> %i.an, <2 x float> %i.ac, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %i.ah, i64 3
  %i.bc = shufflevector <4 x float> %i.az, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> <float 3.890000e-02, float 2.664000e-01, float 2.664000e-01, float 1.713500e+00>, <4 x float> %i.bc) ; 2 uses
  %4 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %5 = shufflevector <4 x float> %4, <4 x float> %3, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> <float 1.713500e+00, float 1.713500e+00, float -6.850000e-02, float -1.614000e-01>, <4 x float> %i.be) ; 3 uses
  %i.bg = shufflevector <4 x float> %i.az, <4 x float> %i.bd, <4 x i32> <i32 1, i32 2, i32 4, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.bh, ptr %0, align 4, !tbaa !59, !alias.scope !576
  %i.bi = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> splat (float -6.850000e-02), <2 x float> %i.bi)
  store <2 x float> %i.bj, ptr %i.o, align 4, !tbaa !59, !alias.scope !576
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> splat (float -1.614000e-01), <2 x float> zeroinitializer)
  %i.bl = extractelement <4 x float> %i.bf, i64 3
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ah, float 3.670000e-02, float %i.bl)
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> splat (float 3.670000e-02), <2 x float> %i.bk)
  %i.bo = extractelement <2 x float> %i.ak, i64 0
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float 1.029600e+00, float %i.bm)
  store float %i.bp, ptr %i.n, align 4, !tbaa !59, !alias.scope !576
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> splat (float 1.029600e+00), <2 x float> %i.bn)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.br = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ], [ %i.bq, %bb.c ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.br, ptr %i.bs, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev20chromaToRec709MatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEENS_16ERenderingIntentE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %"struct.std::__1::array", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store <4 x float> <float 6.400000e-01, float 3.300000e-01, float 3.000000e-01, float 6.000000e-01>, ptr %3, align 16, !tbaa !59, !alias.scope !579
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 16, !tbaa !59, !alias.scope !579
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 8, !alias.scope !579
  call void @_ZN3tev23convertColorspaceMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEES7_NS_16ERenderingIntentENS0_8optionalIS4_EE(ptr dead_on_unwind writable sret(%"struct.nanogui::Matrix") align 4 %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %3, i32 noundef %2, i64 0, i8 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev8whiteD50Ev() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 3.456700e-01, float 3.585000e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev8whiteD55Ev() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 3.324200e-01, float 3.474300e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev8whiteD65Ev() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 3.127100e-01, float 3.290200e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev8whiteD75Ev() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 2.990200e-01, float 3.148500e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev8whiteD93Ev() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 2.831500e-01, float 2.971100e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev6whiteAEv() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 4.475800e-01, float 4.074500e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev6whiteBEv() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 3.484200e-01, float 3.516100e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev6whiteCEv() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 3.100600e-01, float 3.161600e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev11whiteCenterEv() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> splat (float 3.333330e-01)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef <2 x float> @_ZN3tev8whiteDciEv() local_unnamed_addr #19 {
bb.a:
  ret <2 x float> <float 3.140000e-01, float 3.510000e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3tev11adobeChromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #11 {
bb.a:
  store <4 x float> <float 6.400000e-01, float 3.300000e-01, float 2.100000e-01, float f0x3F35C28F>, ptr %0, align 4, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3tev14proPhotoChromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #11 {
bb.a:
  store <4 x float> <float 7.346990e-01, float 2.653010e-01, float 1.595970e-01, float 8.404030e-01>, ptr %0, align 4, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 3.659800e-02, float 1.050000e-04>, ptr %i.a, align 4, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.456700e-01, float 3.585000e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3tev15displayP3ChromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #11 {
bb.a:
  store <4 x float> <float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7>, ptr %0, align 4, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3tev11dciP3ChromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #11 {
bb.a:
  store <4 x float> <float 6.800000e-01, float 3.200000e-01, float 2.650000e-01, float f0x3F30A3D7>, ptr %0, align 4, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.140000e-01, float 3.510000e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3tev12bt2020ChromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #11 {
bb.a:
  store <4 x float> <float 7.080000e-01, float 2.920000e-01, float 1.700000e-01, float f0x3F4C0831>, ptr %0, align 4, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.310000e-01, float 4.600000e-02>, ptr %i.a, align 4, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3tev12bt2100ChromaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::__1::array") align 4 captures(none) initializes((0, 32)) %0) local_unnamed_addr #11 {
bb.a:
  store <4 x float> <float 7.080000e-01, float 2.920000e-01, float 1.700000e-01, float f0x3F4C0831>, ptr %0, align 4, !tbaa !59, !alias.scope !582
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 1.310000e-01, float 4.600000e-02>, ptr %i.a, align 4, !tbaa !59, !alias.scope !582
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float 3.127100e-01, float 3.290200e-01>, ptr %i.b, align 4, !alias.scope !582
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN3tev8toStringENS_16EExifLightSourceE(i16 noundef zeroext %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i16 %0, label %bb.w [
    i16 0, label %bb.z
    i16 1, label %bb.b
    i16 2, label %bb.c
    i16 3, label %bb.d
    i16 4, label %bb.e
    i16 9, label %bb.f
    i16 10, label %bb.g
    i16 11, label %bb.h
    i16 12, label %bb.i
    i16 13, label %bb.j
    i16 14, label %bb.k
    i16 15, label %bb.l
    i16 16, label %bb.m
    i16 17, label %bb.n
    i16 18, label %bb.o
    i16 19, label %bb.p
    i16 20, label %bb.q
    i16 21, label %bb.r
    i16 22, label %bb.s
    i16 23, label %bb.t
    i16 24, label %bb.u
    i16 255, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  br label %bb.z
end_hunk_0
