Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN3tev11ImageCanvas12scroll_eventERKN7nanogui5ArrayIiLm2EEERKNS2_IfLm2EEE:bb.a
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
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !76, !noalias !694 ; 2 uses
  %i.r = fptrunc double %i.g to float             ; 2 uses
  %i.s = load <2 x i32>, ptr %i.h, align 8, !tbaa !204
  %i.t = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.u = insertelement <4 x float> %i.t, float 0.000000e+00, i64 2
  %i.v = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = sitofp <4 x i32> %i.v to <4 x float>
  %i.x = shufflevector <4 x float> %i.w, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.y = fsub <4 x float> %i.u, %i.x
  %i.z = load <2 x i32>, ptr %i.i, align 8, !tbaa !204
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = sitofp <4 x i32> %i.aa to <4 x float>
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.ad = fmul nnan <4 x float> %i.ac, <float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 5.000000e-01>
  %i.ae = fsub <4 x float> %i.ad, %i.y            ; 5 uses
  %i.af = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.r, i64 0
  %i.ag = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.r, i64 1
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> zeroinitializer, <2 x float> %i.ag)
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.aj = fadd <4 x float> %i.ai, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 4 uses
  %i.ak = fneg <4 x float> %i.ae
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0> ; 2 uses
  %i.am = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 1>
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> zeroinitializer, <4 x float> %i.am) ; 3 uses
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> zeroinitializer, <4 x float> %i.aj) ; 3 uses
  %i.ap = fsub <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %i.ae ; 2 uses
  %i.aq = fsub <4 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>, %i.ae
  %i.ar = extractelement <4 x float> %i.an, i64 0 ; 2 uses
  %i.as = fadd float %i.ar, 0.000000e+00
  %i.at = extractelement <4 x float> %i.ao, i64 0 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.as)
  %i.av = shufflevector <4 x float> %i.ap, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.aw = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.ar, float 0.000000e+00, float 0.000000e+00)
  %i.ay = fadd float %i.at, %i.ax
  %i.az = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ba = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.ba, <4 x float> zeroinitializer)
  %i.bc = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.bc, <4 x float> %i.bb)
  %i.be = fadd <4 x float> %i.ap, %i.bd           ; 3 uses
  %i.bf = load <4 x float>, ptr %i.j, align 8, !tbaa !76, !noalias !694 ; 3 uses
  %i.bg = load float, ptr %i.k, align 4, !tbaa !76, !noalias !694
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bi = load <2 x float>, ptr %i.l, align 8, !tbaa !76, !noalias !694
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.bk = shufflevector <4 x float> %i.bf, <4 x float> %i.bj, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.bl = shufflevector <4 x float> %i.bf, <4 x float> %i.bj, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.bm = extractelement <4 x float> %i.be, i64 2
  %i.bn = load float, ptr %i.o, align 4, !tbaa !76, !noalias !694 ; 2 uses
  %i.bo = shufflevector <4 x float> %i.an, <4 x float> %i.aj, <2 x i32> <i32 1, i32 6> ; 2 uses
  %i.bp = fadd <2 x float> %i.bo, <float 0.000000e+00, float -0.000000e+00>
  %i.bq = shufflevector <4 x float> %i.ao, <4 x float> %i.aj, <2 x i32> <i32 1, i32 6> ; 2 uses
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> zeroinitializer, <2 x float> %i.bp)
  %i.bs = fadd <2 x float> %i.br, <float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bu = shufflevector <4 x float> %i.aw, <4 x float> %i.bt, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> zeroinitializer, <4 x float> %i.bu) ; 2 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %i.bx = fadd <2 x float> %i.bq, %i.bw           ; 2 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bz = shufflevector <4 x float> %i.az, <4 x float> %i.by, <4 x i32> <i32 0, i32 4, i32 5, i32 0>
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> zeroinitializer, <4 x float> %i.bz) ; 3 uses
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bh, <4 x float> zeroinitializer)
  %i.cc = load <2 x float>, ptr %i.m, align 4, !tbaa !76, !noalias !694 ; 2 uses
  %i.cd = load float, ptr %i.n, align 8, !tbaa !76, !noalias !694
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.bk, <4 x float> %i.cb)
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.bl, <4 x float> %i.ce)
  %i.cg = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ci = insertelement <2 x float> %i.cc, float %i.bg, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.cj, <4 x float> zeroinitializer)
  %i.cl = extractelement <2 x float> %i.bs, i64 1
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cd, float 0.000000e+00)
  %i.cn = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float %i.bn, i64 1
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 1>
  %i.cq = shufflevector <4 x float> %i.bj, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 0, i32 5>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cq, <4 x float> %i.ck)
  %i.cs = extractelement <2 x float> %i.bx, i64 1
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.bn, float %i.cm)
  %i.cu = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.cv = insertelement <2 x float> %i.cc, float %i.q, i64 1
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.cw, <4 x float> %i.cr)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.q, float %i.ct)
  store <4 x float> %i.cf, ptr %i.j, align 8
  %i.cz = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.cz, ptr %i.l, align 8
  store float %i.cy, ptr %i.p, align 8, !tbaa !79
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
  %i.at = load float, ptr %i.as, align 8, !tbaa !208
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
  %i.cv = insertelement <4 x float> %i.cu, float %i.bp, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.cx = insertelement <4 x float> %i.cw, float %i.bt, i64 3
  %i.cy = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.da = fmul <4 x float> %i.cx, %i.cz
  store <4 x float> %i.da, ptr %2, align 16, !tbaa !76, !alias.scope !699
  %i.db = fneg <2 x float> %i.ct
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dd = shufflevector <4 x float> %i.cm, <4 x float> %i.dc, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.de = insertelement <4 x float> %i.dd, float %i.br, i64 2
  %i.df = fneg <4 x float> %i.cm
  %i.dg = shufflevector <4 x float> %i.de, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.dh = fmul <4 x float> %i.dg, %i.cz
  %i.di = extractelement <2 x float> %i.ct, i64 0
  %i.dj = fmul float %i.di, %i.ce
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit:    ; preds = %bb.h, %bb.i
  %.sink.i = phi float [ 0.000000e+00, %bb.h ], [ %i.dj, %bb.i ]
  %i.dk = phi <4 x float> [ zeroinitializer, %bb.h ], [ %i.dh, %bb.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> %i.dk, ptr %i.dl, align 16, !tbaa !76, !alias.scope !699
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %.sink.i, ptr %i.dm, align 16, !tbaa !76, !alias.scope !699
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.dn = load ptr, ptr %i.l, align 8, !tbaa !207
  call void @_ZN3tev11ImageCanvas9transformEPKNS_5ImageE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %5, ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %i.dn)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ds = load <2 x float>, ptr %i.dp, align 8, !tbaa !76, !noalias !700 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.du = load float, ptr %i.do, align 4, !tbaa !76, !noalias !700 ; 3 uses
  %i.dv = load float, ptr %i.dq, align 8, !tbaa !76, !noalias !700
  %i.dw = fneg float %i.dv                        ; 3 uses
  %i.dx = extractelement <2 x float> %i.ds, i64 1 ; 2 uses
  %i.dy = fmul float %i.dx, %i.dw
  %i.dz = extractelement <2 x float> %i.ds, i64 0 ; 3 uses
  %i.ea = fmul float %i.dz, %i.dw
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ec = load <2 x float>, ptr %i.dt, align 4, !tbaa !76, !noalias !700 ; 2 uses
  %i.ed = load float, ptr %i.dr, align 8, !tbaa !76, !noalias !700 ; 2 uses
  %i.ee = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.ef = fneg float %i.ee                        ; 2 uses
  %i.eg = fmul float %i.dx, %i.ef
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.ed, float %i.eg) ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.du, float %i.ed, float %i.dy)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.du, float %i.ee, float %i.ea) ; 2 uses
  %i.ek = load <2 x float>, ptr %5, align 8, !tbaa !76, !noalias !700 ; 5 uses
  %i.el = fneg float %i.ei                        ; 2 uses
  %i.em = load <2 x float>, ptr %i.eb, align 4, !tbaa !76, !noalias !700 ; 3 uses
  %i.en = extractelement <2 x float> %i.ek, i64 1
  %i.eo = fmul float %i.en, %i.el
  %i.ep = extractelement <2 x float> %i.ek, i64 0
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.eh, float %i.eo)
  %i.er = extractelement <2 x float> %i.em, i64 1
  %i.es = tail call float @llvm.fmuladd.f32(float %i.er, float %i.ej, float %i.eq) ; 2 uses
  %i.et = fcmp oeq float %i.es, 0.000000e+00
  br i1 %i.et, label %bb.j, label %bb.k
end_hunk_0
