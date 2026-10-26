Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN3tev11ImageCanvas12scroll_eventERKN7nanogui5ArrayIiLm2EEERKNS2_IfLm2EEE:bb.a

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
  %i.df = shufflevector <4 x float> %i.bx, <4 x float> %i.bv, <2 x i32> <i32 1, i32 6>
  %i.dg = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = shufflevector <4 x float> %i.de, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dh, <2 x float> %i.di)
  %i.dk = load float, ptr %i.db, align 8, !tbaa !76, !noalias !694 ; 2 uses
  %i.dl = extractelement <4 x float> %i.de, i64 3
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dk, float %i.dl)
  %i.dn = shufflevector <4 x float> %i.bp, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.do = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dp, <2 x float> %i.dj)
  %i.dr = shufflevector <4 x float> %i.cd, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.dr, ptr %i.u, align 8
  %i.ds = extractelement <4 x float> %i.cv, i64 2
  store float %i.ds, ptr %i.ce, align 8
  %i.dt = extractelement <4 x float> %i.de, i64 0
  store float %i.dt, ptr %i.cf, align 4
  store float %i.dm, ptr %i.ch, align 8
  store <2 x float> %i.dq, ptr %i.cw, align 4
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

bb.j:                                             ; preds = %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !700
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43

bb.k:                                             ; preds = %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit
  %i.eu = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ev = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ew = fdiv float 1.000000e+00, %i.es          ; 2 uses
  %i.ex = fneg float %i.dz
  %i.ey = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.ef, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.ex, i64 3
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.fc = fmul <4 x float> %i.eu, %i.fb
  %i.fd = shufflevector <2 x float> %i.ec, <2 x float> %i.ds, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.fd, <4 x float> %i.fc) ; 4 uses
  %i.ff = fneg float %i.du
  %i.fg = shufflevector <2 x float> %i.ek, <2 x float> %i.em, <2 x i32> <i32 1, i32 3>
  %i.fh = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.fg, %i.fi
  %i.fk = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.ds, <2 x float> %i.fj) ; 2 uses
  %i.fm = fneg <4 x float> %i.fe
  %i.fn = insertelement <4 x float> %i.fm, float %i.eh, i64 0
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.fp = insertelement <4 x float> %i.fo, float %i.el, i64 3
  %i.fq = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fs = fmul <4 x float> %i.fp, %i.fr
  store <4 x float> %i.fs, ptr %4, align 16, !tbaa !76, !alias.scope !700
  %i.ft = fneg <2 x float> %i.fl
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x float> %i.fe, <4 x float> %i.fu, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.fw = insertelement <4 x float> %i.fv, float %i.ej, i64 2
  %i.fx = fneg <4 x float> %i.fe
  %i.fy = shufflevector <4 x float> %i.fw, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.fz = fmul <4 x float> %i.fy, %i.fr
  %i.ga = extractelement <2 x float> %i.fl, i64 0
  %i.gb = fmul float %i.ga, %i.ew
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43

_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43:  ; preds = %bb.j, %bb.k
  %.sink.i42 = phi float [ 0.000000e+00, %bb.j ], [ %i.gb, %bb.k ]
  %i.gc = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.fz, %bb.k ]
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x float> %i.gc, ptr %i.gd, align 16, !tbaa !76, !alias.scope !700
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %.sink.i42, ptr %i.ge, align 16, !tbaa !76, !alias.scope !700
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gg = load i8, ptr %i.gf, align 8             ; 2 uses
  %i.gh = trunc i8 %i.gg to i1                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.gl = select i1 %i.gh, ptr %i.gj, ptr %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = lshr i8 %i.gg, 1
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = select i1 %i.gh, i64 %i.gn, i64 %i.gp
  store ptr %i.gl, ptr %6, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.gq, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !174
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !175
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !208
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !209
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !210
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !82, !range !198, !noundef !199
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !76
  %i.hh = tail call float @glfwGetWindowSdrWhiteLevel(ptr noundef %i.c)
  %i.hi = fdiv float %i.hg, %i.hh
  br label %bb.m

bb.m:                                             ; preds = %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43, %bb.l
  %i.hj = phi float [ %i.hi, %bb.l ], [ 1.000000e+00, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit43 ]
  %not.or.cond = xor i1 %or.cond, true
  %spec.select = select i1 %not.or.cond, i1 %i.k, i1 false
  %i.hk = icmp eq ptr %i.an, %i.m
  %i.hl = or i1 %spec.select, %i.hk
  %i.hm = xor i1 %i.hl, true
  %i.hn = select i1 %i.n, i1 %i.hm, i1 false
  %i.ho = select i1 %i.hn, ptr %i.m, ptr null
  %i.hp = sitofp <2 x i32> %i.ar to <2 x float>
  %i.hq = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.hp
  %i.hr = fmul nnan <2 x float> %i.hq, splat (float 2.000000e+00)
  %i.hs = shufflevector <1 x float> %i.at, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ht = fdiv <2 x float> %i.hr, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hv = load float, ptr %i.hu, align 8, !tbaa !701
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !702
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !173, !range !198, !noundef !199
  %i.ia = trunc nuw i8 %i.hz to i1
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.ib, i64 16, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !211
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !212
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !176
  call void @_ZN3tev10UberShader4drawEN7nanogui5ArrayIfLm2EEES3_PNS_5ImageERKNS1_6MatrixIfLm3EEES5_S9_NSt3__117basic_string_viewIcNSA_11char_traitsIcEEEENS_18EInterpolationModeESF_ffffffbNS1_5ColorENS_8ETonemapENS_7EMetricENS_12EChannelMaskERKNSA_8optionalINS_3BoxIiLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, <2 x float> %i.ht, <2 x float> splat (float 2.000000e+01), ptr noundef %i.an, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef %i.ho, ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %6, i32 noundef %i.gt, i32 noundef %i.gv, float noundef %i.gx, float noundef %i.gz, float noundef %i.hb, float noundef %i.hj, float noundef %i.hv, float noundef %i.hx, i1 noundef zeroext %i.ia, ptr noundef nonnull byval(%"class.nanogui::Color") align 8 %7, i32 noundef %i.id, i32 noundef %i.if, i8 noundef zeroext %i.ih, ptr noundef nonnull align 4 dereferenceable(17) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

declare void @_ZN3tev10UberShader4drawEN7nanogui5ArrayIfLm2EEES3_PNS_5ImageERKNS1_6MatrixIfLm3EEES5_S9_NSt3__117basic_string_viewIcNSA_11char_traitsIcEEEENS_18EInterpolationModeESF_ffffffbNS1_5ColorENS_8ETonemapENS_7EMetricENS_12EChannelMaskERKNSA_8optionalINS_3BoxIiLj2EEEEE(ptr noundef nonnull align 8 dereferenceable(32), <2 x float>, <2 x float>, ptr noundef, ptr noundef nonnull align 4 dereferenceable(36), ptr noundef, ptr noundef nonnull align 4 dereferenceable(36), ptr noundef byval(%"class.std::__1::basic_string_view") align 8, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i1 noundef zeroext, ptr noundef byval(%"class.nanogui::Color") align 8, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(17)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas9transformEPKNS_5ImageE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.589", align 16 ; 7 uses
  %4 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !76, !alias.scope !711
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 4, !tbaa !76, !alias.scope !711
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !76, !alias.scope !711
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %.not118 = icmp eq ptr %i.d, null
  br i1 %.not118, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %bb.i, !prof !213

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.c
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47, !noalias !712
  store ptr @.str.4, ptr %3, align 16, !tbaa !79, !noalias !712
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1104, ptr %i.f, align 16, !tbaa !79, !noalias !712
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 132, ptr %i.g, align 16, !tbaa !79, !noalias !712
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @.str.30, ptr %i.h, align 16, !tbaa !79, !noalias !712
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %4, ptr nonnull @.str.32, i64 122, i64 49708, ptr nonnull %3)
          to label %bb.d unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47, !noalias !712
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.k unwind label %bb.f

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.011 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load i8, ptr %4, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.o = load i64, ptr %4, align 8
  %i.p = and i64 %i.o, -2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br i1 %.011, label %bb.g, label %bb.h

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br i1 %.011, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn117 = phi { ptr, i32 } [ %i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.j, %.split ]
  call void @__cxa_free_exception(ptr %i.e) #47
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn116 = phi { ptr, i32 } [ %.pn117, %bb.g ], [ %i.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.j, %.split ]
  resume { ptr, i32 } %.pn116

bb.i:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load <2 x i32>, ptr %i.q, align 8, !tbaa !204
  %i.s = sitofp <2 x i32> %i.r to <2 x float>     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.v = load <2 x float>, ptr %i.t, align 8, !tbaa !76, !noalias !713 ; 4 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = extractelement <2 x float> %i.v, i64 1
  %i.y = load <2 x float>, ptr %i.u, align 8, !tbaa !76, !noalias !713 ; 3 uses
  %i.z = shufflevector <2 x float> %i.v, <2 x float> %i.y, <4 x i32> <i32 1, i32 2, i32 2, i32 3>
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !76, !noalias !713 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.ad = extractelement <2 x float> %i.s, i64 0
  %i.ae = fdiv float 2.000000e+00, %i.ad          ; 3 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.w, float 0.000000e+00)
  %i.ag = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.af, i64 1
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> zeroinitializer, <2 x float> %i.ag) ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.ae, i64 3
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = load <2 x float>, ptr %i.ac, align 4, !tbaa !76, !noalias !713 ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.an = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.ae, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !214
  %i.as = extractelement <2 x float> %i.y, i64 0
  %i.at = load <2 x float>, ptr %i.ao, align 4, !tbaa !76, !noalias !713 ; 3 uses
  %i.au = load float, ptr %i.ap, align 8, !tbaa !76, !noalias !713
  %i.av = extractelement <2 x float> %i.y, i64 1
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %i.ax = insertelement <2 x float> %i.at, float %i.ab, i64 1
  %i.ay = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.az = insertelement <2 x float> %i.ay, float %i.au, i64 0
  %i.ba = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bc = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.be = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x float> %i.be, float %i.ar, i64 1
  %i.bg = fdiv <2 x float> <float -2.000000e+00, float 1.000000e+00>, %i.bf ; 5 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bl = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.x, float %i.ai)
  %i.bn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bm, i64 2
  %i.bo = shufflevector <4 x float> %i.ak, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.z, <4 x float> %i.bo) ; 5 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 0
  %i.br = fadd float %i.as, %i.bq                 ; 2 uses
  %i.bs = extractelement <4 x float> %i.bp, i64 3
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.bs)
  %i.bu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.bt, i64 0
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ab, float %i.aw)
  %i.bw = insertelement <4 x float> %i.bu, float %i.bv, i64 2
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.am, <4 x float> %i.bw) ; 6 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.bz = insertelement <2 x float> %i.by, float %i.aw, i64 1
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.bz)
  %i.cb = fadd <2 x float> %i.az, %i.ca           ; 2 uses
  %i.cc = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bk, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.cd = shufflevector <4 x float> %i.bx, <4 x float> %i.bp, <4 x i32> <i32 1, i32 3, i32 poison, i32 6>
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 4 uses
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.bb, <4 x float> %i.cf)
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> zeroinitializer, <4 x float> %i.cg) ; 3 uses
  %i.ci = shufflevector <4 x float> %i.bp, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %i.cj = insertelement <4 x float> %i.ci, float %i.br, i64 2
  %i.ck = shufflevector <4 x float> %i.bx, <4 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 poison, i32 5>
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cm = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.bj, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.cn, <4 x float> zeroinitializer)
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> zeroinitializer, <4 x float> %i.co) ; 2 uses
  %i.cq = insertelement <4 x float> %i.cp, float 0.000000e+00, i64 3
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> zeroinitializer, <4 x float> %i.cq) ; 8 uses
  %i.cs = shufflevector <4 x float> %i.bx, <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 2, i32 7>
end_hunk_0
