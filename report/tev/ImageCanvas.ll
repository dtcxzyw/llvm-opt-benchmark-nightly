Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 118
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind writable sret(%"struct.std::__1::array") align 4) local_unnamed_addr #5

declare noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148)) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN3tev10UberShaderC1EPN7nanogui10RenderPassEf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, float noundef) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #47, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #47
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7nanogui6CanvasD2Ev(ptr noundef nonnull align 8 dead_on_return(181) dereferenceable(181) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN7nanogui6CanvasE, i64 16), ptr %0, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN7nanogui3refINS_10RenderPassEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #47
  br label %_ZN7nanogui3refINS_10RenderPassEED2Ev.exit

_ZN7nanogui3refINS_10RenderPassEED2Ev.exit:       ; preds = %bb.a, %bb.b
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3tev11ImageCanvas12scroll_eventERKN7nanogui5ArrayIiLm2EEERKNS2_IfLm2EEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !76 ; 3 uses
  %i.d = tail call noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203  ; 4 uses
  %i.g = tail call i32 @glfwGetKey(ptr noundef %i.f, i32 noundef 340)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @glfwGetKey(ptr noundef %i.f, i32 noundef 344)
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = fmul float %i.c, 1.250000e-01
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @glfwGetKey(ptr noundef %i.f, i32 noundef 341)
  %.not15 = icmp eq i32 %i.j, 0
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @glfwGetKey(ptr noundef %i.f, i32 noundef 345)
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = fmul float %i.c, 8.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.0 = phi float [ %i.i, %bb.d ], [ %i.l, %bb.g ], [ %i.c, %bb.f ]
  %i.m = load <2 x i32>, ptr %1, align 4, !tbaa !204
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  tail call void @_ZN3tev11ImageCanvas5scaleEfN7nanogui5ArrayIfLm2EEE(ptr noundef nonnull align 8 dereferenceable(504) %0, float noundef %.0, <2 x float> %i.n)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret i1 true
}

declare noundef zeroext i1 @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #5

declare i32 @glfwGetKey(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3tev11ImageCanvas5scaleEfN7nanogui5ArrayIfLm2EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) %0, float noundef %1, <2 x float> %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN3tev11ImageCanvas5scaleEfN7nanogui5ArrayIfLm2EEEE10BASE_SCALE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !205

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev11ImageCanvas5scaleEfN7nanogui5ArrayIfLm2EEEE10BASE_SCALE) #47
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double f0x3FF172B83C7D517B, ptr @_ZZN3tev11ImageCanvas5scaleEfN7nanogui5ArrayIfLm2EEEE10BASE_SCALE, align 8, !tbaa !206
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN3tev11ImageCanvas5scaleEfN7nanogui5ArrayIfLm2EEEE10BASE_SCALE) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev11ImageCanvas5scaleEfN7nanogui5ArrayIfLm2EEEE10BASE_SCALE) #47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load double, ptr @_ZZN3tev11ImageCanvas5scaleEfN7nanogui5ArrayIfLm2EEEE10BASE_SCALE, align 8, !tbaa !206
  %i.f = fpext float %1 to double
  %i.g = tail call double @pow(double noundef %i.e, double noundef %i.f) #47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = fptrunc double %i.g to float             ; 2 uses
  %i.k = load <2 x i32>, ptr %i.h, align 8, !tbaa !204
  %i.l = sitofp <2 x i32> %i.k to <2 x float>
  %i.m = fsub <2 x float> %2, %i.l
  %i.n = load <2 x i32>, ptr %i.i, align 8, !tbaa !204
  %i.o = sitofp <2 x i32> %i.n to <2 x float>
  %i.p = fmul nnan <2 x float> %i.o, splat (float 5.000000e-01)
  %i.q = fsub <2 x float> %i.p, %i.m              ; 6 uses
  %i.r = fneg <2 x float> %i.q                    ; 2 uses
  %i.s = fadd float %i.j, 0.000000e+00            ; 2 uses
  %i.t = extractelement <2 x float> %i.q, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.j, float 0.000000e+00, float 0.000000e+00)
  %i.w = load float, ptr %i.u, align 8, !tbaa !76, !noalias !694
  %i.x = insertelement <2 x float> poison, float %i.v, i64 0 ; 2 uses
  %i.y = insertelement <2 x float> %i.x, float %i.w, i64 1
  %i.z = fadd <2 x float> %i.y, <float 0.000000e+00, float -0.000000e+00> ; 3 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0  ; 4 uses
  %i.ac = insertelement <2 x float> %i.x, float %i.s, i64 1
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> zeroinitializer, <2 x float> %i.ac) ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.ab)
  %i.ah = fadd float %i.ag, 0.000000e+00          ; 3 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float 0.000000e+00)
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.t, float 0.000000e+00)
  %i.ak = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.al = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.aj, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.an = load <4 x float>, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.aq = shufflevector <2 x float> %i.ad, <2 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ar = fsub <2 x float> zeroinitializer, %i.q
  %i.as = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = shufflevector <4 x float> %i.aa, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 6, i32 7>
  %i.av = insertelement <4 x float> %i.au, float %i.s, i64 0
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>, <4 x float> %i.av) ; 3 uses
  %i.ax = fadd <4 x float> %i.aw, <float 0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> zeroinitializer, <4 x float> %i.ay)
  %i.ba = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.bb = shufflevector <4 x float> %i.aw, <4 x float> %i.ba, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> zeroinitializer, <4 x float> %i.az) ; 6 uses
  %i.bd = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.be, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -0.000000e+00>)
  %i.bg = shufflevector <4 x float> %i.ae, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bh = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bi, <4 x float> %i.bf)
  %i.bk = shufflevector <4 x float> %i.ak, <4 x float> %i.bc, <4 x i32> <i32 1, i32 4, i32 5, i32 poison>
  %i.bl = insertelement <4 x float> %i.bk, float %i.ah, i64 3
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.bl, <4 x float> %i.al) ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.bc, <4 x i32> <i32 poison, i32 poison, i32 0, i32 5>
  %i.bo = shufflevector <4 x float> %i.ba, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bp = fadd <4 x float> %i.bo, %i.bj           ; 5 uses
  %i.bq = load <2 x float>, ptr %i.ao, align 8, !tbaa !76, !noalias !694 ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bs = shufflevector <4 x float> %i.aq, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bt = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 3, i32 poison, i32 7>
  %i.bu = insertelement <4 x float> %i.bt, float %i.ai, i64 2
  %i.bv = fadd <4 x float> %i.bs, %i.bu           ; 3 uses
  %i.bw = shufflevector <4 x float> %i.ba, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> zeroinitializer, <4 x float> %i.bv) ; 4 uses
  %i.by = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.an, <4 x float> %i.by, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ca = shufflevector <4 x float> %i.bm, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.bz, <4 x float> %i.ca) ; 2 uses
  %i.cc = insertelement <4 x float> %i.cb, float 0.000000e+00, i64 3
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.br, <4 x float> %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.cg = extractelement <4 x float> %i.bp, i64 0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ci = load <4 x float>, ptr %i.ap, align 4
  %i.cj = load <3 x float>, ptr %i.ce, align 8, !tbaa !76, !noalias !694 ; 2 uses
  %i.ck = shufflevector <3 x float> %i.cj, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.cl = shufflevector <4 x float> %i.bx, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 1, i32 7>
  %i.cm = insertelement <4 x float> %i.cl, float %i.ah, i64 0
  %i.cn = shufflevector <3 x float> %i.cj, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.co = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.cn, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.cp = shufflevector <4 x float> %i.ci, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cq = shufflevector <4 x float> %i.cb, <4 x float> %i.cd, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.cr = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.cp, <4 x float> %i.cr)
  %i.ct = shufflevector <4 x float> %i.bv, <4 x float> %i.bp, <4 x i32> <i32 2, i32 4, i32 5, i32 poison>
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.ck, <4 x float> %i.cs) ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.cx = shufflevector <4 x float> %i.bp, <4 x float> %i.bc, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.cy = insertelement <4 x float> %i.cx, float %i.ah, i64 2
  %i.cz = shufflevector <4 x float> %i.cn, <4 x float> %i.bx, <4 x i32> <i32 1, i32 2, i32 2, i32 4>
  %i.da = shufflevector <4 x float> %i.cv, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dc = load float, ptr %i.cw, align 4, !tbaa !76, !noalias !694 ; 2 uses
  %i.dd = insertelement <4 x float> %i.cy, float %i.dc, i64 3
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.cz, <4 x float> %i.da) ; 3 uses
  %3 = shufflevector <4 x float> %i.bx, <4 x float> %i.bv, <2 x i32> <i32 1, i32 6>
  %i.df = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = shufflevector <4 x float> %i.de, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> %i.dg, <2 x float> %i.dh)
  %i.dj = load float, ptr %i.db, align 8, !tbaa !76, !noalias !694 ; 2 uses
  %i.dk = extractelement <4 x float> %i.de, i64 3
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dj, float %i.dk)
  %i.dm = shufflevector <4 x float> %i.bp, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dn = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.do, <2 x float> %i.di)
  %i.dq = shufflevector <4 x float> %i.cd, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.dq, ptr %i.u, align 8
  %i.dr = extractelement <4 x float> %i.cv, i64 2
  store float %i.dr, ptr %i.ce, align 8
  %i.ds = extractelement <4 x float> %i.de, i64 0
  store float %i.ds, ptr %i.cf, align 4
  store float %i.dl, ptr %i.ch, align 8
  store <2 x float> %i.dp, ptr %i.cw, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas13draw_contentsEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::__1::optional.17", align 8 ; 10 uses
  %2 = alloca %"struct.nanogui::Matrix", align 16 ; 7 uses
  %3 = alloca %"struct.nanogui::Matrix", align 8  ; 10 uses
  %4 = alloca %"struct.nanogui::Matrix", align 16 ; 7 uses
  %5 = alloca %"struct.nanogui::Matrix", align 8  ; 10 uses
  %6 = alloca %"class.std::__1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.nanogui::Color", align 8    ; 2 uses
  %i.a = tail call noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203  ; 5 uses
  %i.d = tail call i32 @glfwGetKey(ptr noundef %i.c, i32 noundef 340)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @glfwGetKey(ptr noundef %i.c, i32 noundef 344)
  %i.f = icmp ne i32 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]  ; 2 uses
  %i.h = tail call i32 @glfwGetKey(ptr noundef %i.c, i32 noundef 341)
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @glfwGetKey(ptr noundef %i.c, i32 noundef 345)
  %i.j = icmp ne i32 %i.i, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i1 [ true, %bb.c ], [ %i.j, %bb.d ]  ; 2 uses
  %or.cond = select i1 %i.g, i1 %i.k, i1 false    ; 2 uses
  %spec.select26 = xor i1 %i.g, %or.cond
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207  ; 4 uses
  %i.n = icmp ne ptr %i.m, null                   ; 2 uses
  %or.cond3 = select i1 %i.n, i1 %spec.select26, i1 false
  br i1 %or.cond3, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store i8 0, ptr %1, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !177
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !207  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store i8 0, ptr %1, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !177
  %.not24 = icmp eq ptr %i.q, null
  br i1 %.not24, label %.thread60, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.s = phi ptr [ %i.o, %.thread ], [ %i.r, %bb.f ]
  %i.t = phi ptr [ %i.m, %.thread ], [ %i.q, %bb.f ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.v = load i8, ptr %i.u, align 4, !tbaa !177, !range !198, !noundef !199
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZNSt3__18optionalIN3tev3BoxIiLj2EEEEaSB8ne180100IS3_vEERS4_OT_.exit, label %.thread60

_ZNSt3__18optionalIN3tev3BoxIiLj2EEEEaSB8ne180100IS3_vEERS4_OT_.exit: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 376
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !79 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 360
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.z, align 8, !tbaa !79 ; 2 uses
  %i.aa = sub i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i27
  %.sroa.055.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.055.4.extract.trunc = trunc nuw i64 %.sroa.055.4.extract.shift to i32
  %.sroa.054.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i27, 32
  %.sroa.054.4.extract.trunc = trunc nuw i64 %.sroa.054.4.extract.shift to i32
  %i.ab = sub nsw i32 %.sroa.055.4.extract.trunc, %.sroa.054.4.extract.trunc ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.aa to i32 ; 2 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !204
  %i.ad = add nsw i32 %i.ac, %.sroa.0.0.extract.trunc.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !204
  %i.ag = add nsw i32 %i.ab, %i.af
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ag to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ad to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !204
  %i.aj = add nsw i32 %i.ai, %.sroa.0.0.extract.trunc.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !204
  %i.am = add nsw i32 %i.al, %i.ab
  %.sroa.2.0.insert.ext.i2.i = zext i32 %i.am to i64
  %.sroa.2.0.insert.shift.i3.i = shl nuw i64 %.sroa.2.0.insert.ext.i2.i, 32
  %.sroa.0.0.insert.ext.i4.i = zext i32 %i.aj to i64
  %.sroa.0.0.insert.insert.i5.i = or disjoint i64 %.sroa.2.0.insert.shift.i3.i, %.sroa.0.0.insert.ext.i4.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %1, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.0.0.insert.insert.i5.i, ptr %.sroa.458.0..sroa_idx, align 8
  store i8 1, ptr %i.s, align 4, !tbaa !177
  br label %.thread60

.thread60:                                        ; preds = %_ZNSt3__18optionalIN3tev3BoxIiLj2EEEEaSB8ne180100IS3_vEERS4_OT_.exit, %bb.g, %bb.f
  %i.an = phi ptr [ %i.t, %_ZNSt3__18optionalIN3tev3BoxIiLj2EEEEaSB8ne180100IS3_vEERS4_OT_.exit ], [ %i.t, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !201
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load <2 x i32>, ptr %i.aq, align 8, !tbaa !204
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = load <1 x float>, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !207
  call void @_ZN3tev11ImageCanvas9transformEPKNS_5ImageE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %3, ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %i.av)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ba = load <2 x float>, ptr %i.ax, align 8, !tbaa !76, !noalias !699 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bc = load float, ptr %i.aw, align 4, !tbaa !76, !noalias !699 ; 3 uses
  %i.bd = load float, ptr %i.ay, align 8, !tbaa !76, !noalias !699
  %i.be = fneg float %i.bd                        ; 3 uses
  %i.bf = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bg = fmul float %i.bf, %i.be
  %i.bh = extractelement <2 x float> %i.ba, i64 0 ; 3 uses
  %i.bi = fmul float %i.bh, %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bk = load <2 x float>, ptr %i.bb, align 4, !tbaa !76, !noalias !699 ; 2 uses
  %i.bl = load float, ptr %i.az, align 8, !tbaa !76, !noalias !699 ; 2 uses
  %i.bm = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.bn = fneg float %i.bm                        ; 2 uses
  %i.bo = fmul float %i.bf, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bl, float %i.bo) ; 2 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bl, float %i.bg)
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bm, float %i.bi) ; 2 uses
  %i.bs = load <2 x float>, ptr %3, align 8, !tbaa !76, !noalias !699 ; 5 uses
  %i.bt = fneg float %i.bq                        ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bj, align 4, !tbaa !76, !noalias !699 ; 3 uses
  %i.bv = extractelement <2 x float> %i.bs, i64 1
  %i.bw = fmul float %i.bv, %i.bt
  %i.bx = extractelement <2 x float> %i.bs, i64 0
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bp, float %i.bw)
  %i.bz = extractelement <2 x float> %i.bu, i64 1
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.br, float %i.by) ; 2 uses
  %i.cb = fcmp oeq float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !699
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

bb.i:                                             ; preds = %.thread60
  %i.cc = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.cd = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ce = fdiv float 1.000000e+00, %i.ca          ; 2 uses
  %i.cf = fneg float %i.bh
  %i.cg = insertelement <4 x float> poison, float %i.be, i64 0
  %i.ch = insertelement <4 x float> %i.cg, float %i.bn, i64 1
  %i.ci = insertelement <4 x float> %i.ch, float %i.cf, i64 3
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ck = fmul <4 x float> %i.cc, %i.cj
  %i.cl = shufflevector <2 x float> %i.bk, <2 x float> %i.ba, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.cl, <4 x float> %i.ck) ; 4 uses
  %i.cn = fneg float %i.bc
  %i.co = shufflevector <2 x float> %i.bs, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.cp = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.co, %i.cq
  %i.cs = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ba, <2 x float> %i.cr) ; 2 uses
  %i.cu = fneg <4 x float> %i.cm
end_hunk_0
