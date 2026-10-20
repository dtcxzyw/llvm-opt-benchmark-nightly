Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN3tev8ituth27311transferRgbIfEEN7nanogui5ArrayIT_Lm3EEENS0_9ETransferERKS5_:bb.a
  tail call void @__clang_call_terminate(ptr %i.x) #52
  unreachable

bb.r:                                             ; preds = %bb.a
  %i.y = invoke { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE7EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #52
  unreachable

bb.t:                                             ; preds = %bb.a
  %i.ab = load <2 x float>, ptr %1, align 4, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !76
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ab, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.ad, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.u:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load float, ptr %1, align 4, !tbaa !76  ; 2 uses
  %i.ag = tail call noundef float @log10f(float noundef %i.af) #47
  %i.ah = load float, ptr %i.ae, align 4, !tbaa !76 ; 2 uses
  %i.ai = tail call noundef float @log10f(float noundef %i.ah) #47
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float 1.000000e+00))
  %i.am = insertelement <2 x float> poison, float %i.af, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ah, i64 1
  %i.ao = fcmp oge <2 x float> %i.an, splat (float f0x3C23D70A)
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.al, <2 x float> zeroinitializer
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !76 ; 2 uses
  %i.as = tail call noundef float @log10f(float noundef %i.ar) #47
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float 5.000000e-01, float 1.000000e+00)
  %i.au = fcmp oge float %i.ar, f0x3C23D70A
  %.sroa.speculated.i.i.i4.i.i = select i1 %i.au, float %i.at, float 0.000000e+00
  %.fca.0.insert.i.i107 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ap, 0
  %.fca.1.insert.i.i108 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i107, float %.sroa.speculated.i.i.i4.i.i, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.v:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aw = load float, ptr %1, align 4, !tbaa !76  ; 2 uses
  %i.ax = tail call noundef float @log10f(float noundef %i.aw) #47
  %i.ay = load float, ptr %i.av, align 4, !tbaa !76 ; 2 uses
  %i.az = tail call noundef float @log10f(float noundef %i.ay) #47
  %i.ba = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.az, i64 1
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> splat (float 4.000000e-01), <2 x float> splat (float 1.000000e+00))
  %i.bd = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.ay, i64 1
  %i.bf = fcmp oge <2 x float> %i.be, splat (float f0x3B4F3E37)
  %i.bg = select <2 x i1> %i.bf, <2 x float> %i.bc, <2 x float> zeroinitializer
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !76 ; 2 uses
  %i.bj = tail call noundef float @log10f(float noundef %i.bi) #47
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float 4.000000e-01, float 1.000000e+00)
  %i.bl = fcmp oge float %i.bi, f0x3B4F3E37
  %.sroa.speculated.i.i.i4.i.i111 = select i1 %i.bl, float %i.bk, float 0.000000e+00
  %.fca.0.insert.i.i114 = insertvalue { <2 x float>, float } poison, <2 x float> %i.bg, 0
  %.fca.1.insert.i.i115 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i114, float %.sroa.speculated.i.i.i4.i.i111, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.w:                                             ; preds = %bb.a
  %i.bm = invoke { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #52
  unreachable

bb.y:                                             ; preds = %bb.a
  %i.bp = invoke { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE16EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #52
  unreachable

bb.aa:                                            ; preds = %bb.a
  %i.bs = invoke { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE17EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #52
  unreachable

bb.ac:                                            ; preds = %bb.a
  %i.bv = invoke { <2 x float>, float } @_ZN3tev8ituth27311linearToHlgIfEEN7nanogui5ArrayIT_Lm3EEERKS5_(ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #52
  unreachable

bb.ae:                                            ; preds = %bb.a
  %i.by = load <2 x float>, ptr %1, align 4, !tbaa !76
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !76
  %.fca.0.insert.i.i118 = insertvalue { <2 x float>, float } poison, <2 x float> %i.by, 0
  %.fca.1.insert.i.i119 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i118, float %i.ca, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.af:                                            ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !76 ; 2 uses
  %i.cd = load <2 x float>, ptr %1, align 4, !tbaa !76 ; 4 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 1
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> <float -1.687360e-01, float 5.870000e-01>, <2 x float> <float 5.000000e-01, float -0.000000e+00>)
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> <float 2.990000e-01, float -3.312640e-01>, <2 x float> %i.cg)
  %i.ci = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> <float 1.140000e-01, float 5.000000e-01>, <2 x float> %i.ch)
  %i.cl = extractelement <2 x float> %i.cd, i64 0
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float 5.000000e-01, float 5.000000e-01)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ce, float -4.186880e-01, float %i.cm)
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cc, float -8.131200e-02, float %i.cn)
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ck, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.co, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.ag:                                            ; preds = %bb.a
  %i.cp = invoke { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.ah ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  tail call void @__clang_call_terminate(ptr %i.cr) #52
  unreachable

_ZN3tev8ituth27311transferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit: ; preds = %bb.ag
  %.fca.0.extract3.i.i = extractvalue { <2 x float>, float } %i.cp, 0 ; 4 uses
  %.fca.1.extract4.i.i = extractvalue { <2 x float>, float } %i.cp, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract3.i.i, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract3.i.i, i64 1
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.extract3.i.i, <2 x float> <float -1.687360e-01, float 5.870000e-01>, <2 x float> <float 5.000000e-01, float -0.000000e+00>)
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.extract3.i.i, <2 x float> <float 2.990000e-01, float -3.312640e-01>, <2 x float> %i.ct)
  %i.cv = insertelement <2 x float> poison, float %.fca.1.extract4.i.i, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> <float 1.140000e-01, float 5.000000e-01>, <2 x float> %i.cu)
  %i.cy = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float 5.000000e-01, float 5.000000e-01)
  %i.cz = tail call float @llvm.fmuladd.f32(float %.sroa.0.4.vec.extract.i.i, float -4.186880e-01, float %i.cy)
  %i.da = tail call float @llvm.fmuladd.f32(float %.fca.1.extract4.i.i, float -8.131200e-02, float %i.cz)
  %.fca.0.insert.i.i.i122 = insertvalue { <2 x float>, float } poison, <2 x float> %i.cx, 0
  %.fca.1.insert.i.i.i123 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i122, float %i.da, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.ai:                                            ; preds = %bb.a
  %i.db = load <2 x float>, ptr %1, align 4, !tbaa !76
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !76
  %.fca.0.insert.i.i126 = insertvalue { <2 x float>, float } poison, <2 x float> %i.db, 0
  %.fca.1.insert.i.i127 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i126, float %i.dd, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.aj:                                            ; preds = %bb.a
  %i.de = load <2 x float>, ptr %1, align 4, !tbaa !76
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !76
  %.fca.0.insert.i.i130 = insertvalue { <2 x float>, float } poison, <2 x float> %i.de, 0
  %.fca.1.insert.i.i131 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i130, float %i.dg, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.ak:                                            ; preds = %bb.a
  %.sroa.0104.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.23.0..0.103.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..0.103.sroa_idx, align 4, !tbaa !79
  %i.dh = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0104.0.copyload, 0
  %i.di = insertvalue { <2 x float>, float } %i.dh, float %.sroa.23.0.copyload, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit: ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.ak, %bb.aj, %bb.ai, %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit, %bb.af, %bb.ae, %bb.v, %bb.u, %bb.t
  %.fca.1.insert.merged = phi { <2 x float>, float } [ %i.di, %bb.ak ], [ %.fca.1.insert.i.i131, %bb.aj ], [ %i.a, %bb.b ], [ %i.d, %bb.d ], [ %i.g, %bb.f ], [ %i.j, %bb.h ], [ %i.m, %bb.j ], [ %i.p, %bb.l ], [ %i.s, %bb.n ], [ %i.v, %bb.p ], [ %.fca.1.insert.i.i, %bb.t ], [ %.fca.1.insert.i.i108, %bb.u ], [ %.fca.1.insert.i.i115, %bb.v ], [ %i.y, %bb.r ], [ %i.bm, %bb.w ], [ %i.bp, %bb.y ], [ %i.bs, %bb.aa ], [ %.fca.1.insert.i.i119, %bb.ae ], [ %.fca.1.insert.i.i.i, %bb.af ], [ %.fca.1.insert.i.i.i123, %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit ], [ %.fca.1.insert.i.i127, %bb.ai ], [ %i.bv, %bb.ac ]
  ret { <2 x float>, float } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZN3tev8ituth27317transferComponentIfEET_NS0_9ETransferERKS2_(i8 noundef zeroext %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !76   ; 38 uses
  switch i8 %0, label %bb.o [
    i8 1, label %bb.b
    i8 6, label %bb.b
    i8 14, label %bb.b
    i8 15, label %bb.b
    i8 11, label %bb.c
    i8 12, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 7, label %bb.g
    i8 125, label %bb.n
    i8 9, label %bb.h
    i8 10, label %bb.i
    i8 13, label %bb.j
    i8 16, label %bb.k
    i8 17, label %bb.l
    i8 18, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = fmul float %i.a, 4.500000e+00
  %i.c = fcmp olt float %i.a, f0x00800000
  %i.d = bitcast float %i.a to i32
  %i.e = select i1 %i.c, i32 8388608, i32 %i.d    ; 2 uses
  %i.f = lshr i32 %i.e, 23
  %i.g = and i32 %i.f, 255
  %i.h = add nsw i32 %i.g, -127
  %i.i = sitofp i32 %i.h to float
  %i.j = and i32 %i.e, 8388607
  %i.k = or disjoint i32 %i.j, 1065353216
  %i.l = bitcast i32 %i.k to float
  %i.m = fadd float %i.l, -1.000000e+00           ; 5 uses
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float f0x3D3BF404, float f0xBE471796)
  %i.o = tail call noundef float @llvm.fma.f32(float %i.n, float %i.m, float f0x3ED4B281)
  %i.p = tail call noundef float @llvm.fma.f32(float %i.o, float %i.m, float f0xBF356C3D)
  %i.q = tail call noundef float @llvm.fma.f32(float %i.p, float %i.m, float f0x3FB88DC0)
  %i.r = fmul float %i.m, %i.q
  %i.s = fadd float %i.r, %i.i
  %i.t = fmul float %i.s, 4.500000e-01            ; 2 uses
  %i.u = tail call noundef float @llvm.rint.f32(float %i.t) ; 2 uses
  %i.v = fsub float %i.t, %i.u                    ; 6 uses
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float f0x39222A61, float f0x3AAF931A)
  %i.x = tail call noundef float @llvm.fma.f32(float %i.w, float %i.v, float 9.618040e-03)
  %i.y = tail call noundef float @llvm.fma.f32(float %i.x, float %i.v, float f0x3D63578A)
  %i.z = tail call noundef float @llvm.fma.f32(float %i.y, float %i.v, float f0x3E75FDF0)
  %i.aa = tail call noundef float @llvm.fma.f32(float %i.z, float %i.v, float f0x3F317218)
  %i.ab = tail call noundef float @llvm.fma.f32(float %i.aa, float %i.v, float 1.000000e+00)
  %i.ac = fptosi float %i.u to i32
  %i.ad = shl i32 %i.ac, 23
  %i.ae = add i32 %i.ad, 1065353216
  %i.af = bitcast i32 %i.ae to float
  %i.ag = fmul float %i.ab, %i.af
  %i.ah = fcmp oeq float %i.a, 0.000000e+00
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ag, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.aj = select i1 %i.ah, float f0xBDCB5C20, float %i.ai
  %i.ak = fcmp ole float %i.a, f0x3C93E5EB
  %.sroa.speculated.i = select i1 %i.ak, float %i.b, float %i.aj
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.a) ; 4 uses
  %i.am = fmul float %i.al, 4.500000e+00
  %i.an = fcmp olt float %i.al, f0x00800000
  %i.ao = bitcast float %i.al to i32
  %i.ap = select i1 %i.an, i32 8388608, i32 %i.ao ; 2 uses
  %i.aq = lshr i32 %i.ap, 23
  %i.ar = add nsw i32 %i.aq, -127
  %i.as = sitofp i32 %i.ar to float
  %i.at = and i32 %i.ap, 8388607
  %i.au = or disjoint i32 %i.at, 1065353216
  %i.av = bitcast i32 %i.au to float
  %i.aw = fadd float %i.av, -1.000000e+00         ; 5 uses
  %i.ax = tail call noundef float @llvm.fma.f32(float %i.aw, float f0x3D3BF404, float f0xBE471796)
  %i.ay = tail call noundef float @llvm.fma.f32(float %i.ax, float %i.aw, float f0x3ED4B281)
  %i.az = tail call noundef float @llvm.fma.f32(float %i.ay, float %i.aw, float f0xBF356C3D)
  %i.ba = tail call noundef float @llvm.fma.f32(float %i.az, float %i.aw, float f0x3FB88DC0)
  %i.bb = fmul float %i.aw, %i.ba
  %i.bc = fadd float %i.bb, %i.as
  %i.bd = fmul float %i.bc, 4.500000e-01          ; 2 uses
  %i.be = tail call noundef float @llvm.rint.f32(float %i.bd) ; 2 uses
  %i.bf = fsub float %i.bd, %i.be                 ; 6 uses
  %i.bg = tail call noundef float @llvm.fma.f32(float %i.bf, float f0x39222A61, float f0x3AAF931A)
  %i.bh = tail call noundef float @llvm.fma.f32(float %i.bg, float %i.bf, float 9.618040e-03)
  %i.bi = tail call noundef float @llvm.fma.f32(float %i.bh, float %i.bf, float f0x3D63578A)
  %i.bj = tail call noundef float @llvm.fma.f32(float %i.bi, float %i.bf, float f0x3E75FDF0)
  %i.bk = tail call noundef float @llvm.fma.f32(float %i.bj, float %i.bf, float f0x3F317218)
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bk, float %i.bf, float 1.000000e+00)
  %i.bm = fptosi float %i.be to i32
  %i.bn = shl i32 %i.bm, 23
  %i.bo = add i32 %i.bn, 1065353216
  %i.bp = bitcast i32 %i.bo to float
  %i.bq = fmul float %i.bl, %i.bp
  %i.br = fcmp oeq float %i.a, 0.000000e+00
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bq, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.bt = select i1 %i.br, float f0xBDCB5C20, float %i.bs
  %i.bu = fcmp ole float %i.al, f0x3C93E5EB
  %.sroa.speculated.i.i = select i1 %i.bu, float %i.am, float %i.bt
  %i.bv = tail call noundef float @llvm.copysign.f32(float %.sroa.speculated.i.i, float %i.a)
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.bw = fmul float %i.a, 4.500000e+00
  %2 = insertelement <2 x float> poison, float %i.a, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %4 = fmul <2 x float> %3, <float -4.000000e+00, float 1.000000e+00> ; 3 uses
  %5 = fcmp olt <2 x float> %4, splat (float f0x00800000)
  %6 = bitcast <2 x float> %4 to <2 x i32>
  %7 = select <2 x i1> %5, <2 x i32> splat (i32 8388608), <2 x i32> %6 ; 2 uses
  %8 = lshr <2 x i32> %7, splat (i32 23)
  %9 = and <2 x i32> %8, splat (i32 255)
  %10 = add nsw <2 x i32> %9, splat (i32 -127)
  %11 = sitofp <2 x i32> %10 to <2 x float>
  %12 = extractelement <2 x float> %4, i64 0
  %i.bx = fcmp oeq float %12, 0.000000e+00
  %13 = and <2 x i32> %7, splat (i32 8388607)
  %14 = or disjoint <2 x i32> %13, splat (i32 1065353216)
  %15 = bitcast <2 x i32> %14 to <2 x float>
  %16 = fadd <2 x float> %15, splat (float -1.000000e+00) ; 3 uses
  %17 = extractelement <2 x float> %16, i64 0     ; 4 uses
  %18 = tail call noundef float @llvm.fma.f32(float %17, float f0x3D3BF404, float f0xBE471796)
  %19 = tail call noundef float @llvm.fma.f32(float %18, float %17, float f0x3ED4B281)
  %20 = tail call noundef float @llvm.fma.f32(float %19, float %17, float f0xBF356C3D)
  %21 = tail call noundef float @llvm.fma.f32(float %20, float %17, float f0x3FB88DC0)
  %22 = extractelement <2 x float> %16, i64 1     ; 4 uses
  %i.by = tail call noundef float @llvm.fma.f32(float %22, float f0x3D3BF404, float f0xBE471796)
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.by, float %22, float f0x3ED4B281)
  %i.ca = tail call noundef float @llvm.fma.f32(float %i.bz, float %22, float f0xBF356C3D)
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float %22, float f0x3FB88DC0)
  %23 = insertelement <2 x float> poison, float %21, i64 0
  %24 = insertelement <2 x float> %23, float %i.cb, i64 1
  %25 = fmul <2 x float> %16, %24
  %26 = fadd <2 x float> %25, %11
  %27 = fmul <2 x float> %26, splat (float 4.500000e-01) ; 3 uses
  %28 = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %27) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %27, %28
  %29 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.cc = tail call noundef float @llvm.fma.f32(float %29, float f0x39222A61, float f0x3AAF931A)
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cc, float %29, float 9.618040e-03)
  %i.ce = tail call noundef float @llvm.fma.f32(float %i.cd, float %29, float f0x3D63578A)
  %i.cf = tail call noundef float @llvm.fma.f32(float %i.ce, float %29, float f0x3E75FDF0)
  %i.cg = tail call noundef float @llvm.fma.f32(float %i.cf, float %29, float f0x3F317218)
  %i.ch = tail call noundef float @llvm.fma.f32(float %i.cg, float %29, float 1.000000e+00)
  %30 = fptosi <2 x float> %28 to <2 x i32>
  %31 = shl <2 x i32> %30, splat (i32 23)
  %32 = add <2 x i32> %31, splat (i32 1065353216) ; 2 uses
  %bc = bitcast <2 x i32> %32 to <2 x float>
  %33 = extractelement <2 x float> %bc, i64 0
  %34 = fmul float %i.ch, %33
  %i.ci = tail call float @llvm.fmuladd.f32(float %34, float f0x3F8CB5C2, float f0xBDCB5C20)
  %35 = fmul float %i.ci, -2.500000e-01
  %36 = select i1 %i.bx, float f0x3CCB5C20, float %35
  %foldExtExtBinop32 = fsub <2 x float> %27, %28
  %37 = extractelement <2 x float> %foldExtExtBinop32, i64 1 ; 6 uses
  %i.cj = tail call noundef float @llvm.fma.f32(float %37, float f0x39222A61, float f0x3AAF931A)
  %38 = tail call noundef float @llvm.fma.f32(float %i.cj, float %37, float 9.618040e-03)
  %39 = tail call noundef float @llvm.fma.f32(float %38, float %37, float f0x3D63578A)
  %40 = tail call noundef float @llvm.fma.f32(float %39, float %37, float f0x3E75FDF0)
  %41 = tail call noundef float @llvm.fma.f32(float %40, float %37, float f0x3F317218)
  %42 = tail call noundef float @llvm.fma.f32(float %41, float %37, float 1.000000e+00)
  %i.ck = bitcast <2 x i32> %32 to <2 x float>
  %i.cl = extractelement <2 x float> %i.ck, i64 1
  %i.cm = fmul float %42, %i.cl
  %43 = fcmp oeq float %i.a, 0.000000e+00
  %44 = tail call float @llvm.fmuladd.f32(float %i.cm, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.cn = select i1 %43, float f0xBDCB5C20, float %44
  %i.co = fcmp olt float %i.a, f0xBB93E5EB
  %i.cp = fcmp ole float %i.a, f0x3C93E5EB
  %.sroa.speculated8.i = select i1 %i.cp, float %i.bw, float %i.cn
  %.sroa.speculated.i17 = select i1 %i.co, float %36, float %.sroa.speculated8.i
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.cq = fcmp olt float %i.a, 0.000000e+00
  %..i.i = select i1 %i.cq, float 0.000000e+00, float %i.a ; 3 uses
  %i.cr = fcmp olt float %..i.i, f0x00800000
  %i.cs = bitcast float %..i.i to i32
  %i.ct = select i1 %i.cr, i32 8388608, i32 %i.cs ; 2 uses
  %i.cu = lshr i32 %i.ct, 23
  %i.cv = and i32 %i.cu, 255
  %i.cw = add nsw i32 %i.cv, -127
  %i.cx = sitofp i32 %i.cw to float
  %i.cy = and i32 %i.ct, 8388607
  %i.cz = or disjoint i32 %i.cy, 1065353216
  %i.da = bitcast i32 %i.cz to float
  %i.db = fadd float %i.da, -1.000000e+00         ; 5 uses
  %i.dc = tail call noundef float @llvm.fma.f32(float %i.db, float f0x3D3BF404, float f0xBE471796)
  %i.dd = tail call noundef float @llvm.fma.f32(float %i.dc, float %i.db, float f0x3ED4B281)
  %i.de = tail call noundef float @llvm.fma.f32(float %i.dd, float %i.db, float f0xBF356C3D)
  %i.df = tail call noundef float @llvm.fma.f32(float %i.de, float %i.db, float f0x3FB88DC0)
  %i.dg = fmul float %i.db, %i.df
  %i.dh = fadd float %i.dg, %i.cx
  %i.di = fmul float %i.dh, f0x3EE8BA2E           ; 2 uses
  %i.dj = tail call noundef float @llvm.rint.f32(float %i.di) ; 2 uses
  %i.dk = fsub float %i.di, %i.dj                 ; 6 uses
  %i.dl = tail call noundef float @llvm.fma.f32(float %i.dk, float f0x39222A61, float f0x3AAF931A)
  %i.dm = tail call noundef float @llvm.fma.f32(float %i.dl, float %i.dk, float 9.618040e-03)
  %i.dn = tail call noundef float @llvm.fma.f32(float %i.dm, float %i.dk, float f0x3D63578A)
  %i.do = tail call noundef float @llvm.fma.f32(float %i.dn, float %i.dk, float f0x3E75FDF0)
  %i.dp = tail call noundef float @llvm.fma.f32(float %i.do, float %i.dk, float f0x3F317218)
  %i.dq = tail call noundef float @llvm.fma.f32(float %i.dp, float %i.dk, float 1.000000e+00)
  %i.dr = fptosi float %i.dj to i32
  %i.ds = shl i32 %i.dr, 23
  %i.dt = add i32 %i.ds, 1065353216
  %i.du = bitcast i32 %i.dt to float
  %i.dv = fmul float %i.dq, %i.du
  %i.dw = fcmp oeq float %..i.i, 0.000000e+00
  %.sroa.speculated.i.i18 = select i1 %i.dw, float 0.000000e+00, float %i.dv
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.dx = fcmp olt float %i.a, 0.000000e+00
  %..i.i19 = select i1 %i.dx, float 0.000000e+00, float %i.a ; 3 uses
  %i.dy = fcmp olt float %..i.i19, f0x00800000
  %i.dz = bitcast float %..i.i19 to i32
  %i.ea = select i1 %i.dy, i32 8388608, i32 %i.dz ; 2 uses
  %i.eb = lshr i32 %i.ea, 23
  %i.ec = and i32 %i.eb, 255
  %i.ed = add nsw i32 %i.ec, -127
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = and i32 %i.ea, 8388607
  %i.eg = or disjoint i32 %i.ef, 1065353216
  %i.eh = bitcast i32 %i.eg to float
  %i.ei = fadd float %i.eh, -1.000000e+00         ; 5 uses
  %i.ej = tail call noundef float @llvm.fma.f32(float %i.ei, float f0x3D3BF404, float f0xBE471796)
  %i.ek = tail call noundef float @llvm.fma.f32(float %i.ej, float %i.ei, float f0x3ED4B281)
  %i.el = tail call noundef float @llvm.fma.f32(float %i.ek, float %i.ei, float f0xBF356C3D)
  %i.em = tail call noundef float @llvm.fma.f32(float %i.el, float %i.ei, float f0x3FB88DC0)
  %i.en = fmul float %i.ei, %i.em
  %i.eo = fadd float %i.en, %i.ee
  %i.ep = fmul float %i.eo, f0x3EB6DB6E           ; 2 uses
  %i.eq = tail call noundef float @llvm.rint.f32(float %i.ep) ; 2 uses
  %i.er = fsub float %i.ep, %i.eq                 ; 6 uses
  %i.es = tail call noundef float @llvm.fma.f32(float %i.er, float f0x39222A61, float f0x3AAF931A)
  %i.et = tail call noundef float @llvm.fma.f32(float %i.es, float %i.er, float 9.618040e-03)
  %i.eu = tail call noundef float @llvm.fma.f32(float %i.et, float %i.er, float f0x3D63578A)
  %i.ev = tail call noundef float @llvm.fma.f32(float %i.eu, float %i.er, float f0x3E75FDF0)
  %i.ew = tail call noundef float @llvm.fma.f32(float %i.ev, float %i.er, float f0x3F317218)
  %i.ex = tail call noundef float @llvm.fma.f32(float %i.ew, float %i.er, float 1.000000e+00)
  %i.ey = fptosi float %i.eq to i32
  %i.ez = shl i32 %i.ey, 23
  %i.fa = add i32 %i.ez, 1065353216
  %i.fb = bitcast i32 %i.fa to float
  %i.fc = fmul float %i.ex, %i.fb
  %i.fd = fcmp oeq float %..i.i19, 0.000000e+00
  %.sroa.speculated.i.i20 = select i1 %i.fd, float 0.000000e+00, float %i.fc
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.fe = fmul float %i.a, 4.000000e+00
  %i.ff = fcmp olt float %i.a, f0x00800000
  %i.fg = bitcast float %i.a to i32
  %i.fh = select i1 %i.ff, i32 8388608, i32 %i.fg ; 2 uses
  %i.fi = lshr i32 %i.fh, 23
  %i.fj = and i32 %i.fi, 255
  %i.fk = add nsw i32 %i.fj, -127
  %i.fl = sitofp i32 %i.fk to float
  %i.fm = and i32 %i.fh, 8388607
  %i.fn = or disjoint i32 %i.fm, 1065353216
  %i.fo = bitcast i32 %i.fn to float
  %i.fp = fadd float %i.fo, -1.000000e+00         ; 5 uses
  %i.fq = tail call noundef float @llvm.fma.f32(float %i.fp, float f0x3D3BF404, float f0xBE471796)
  %i.fr = tail call noundef float @llvm.fma.f32(float %i.fq, float %i.fp, float f0x3ED4B281)
  %i.fs = tail call noundef float @llvm.fma.f32(float %i.fr, float %i.fp, float f0xBF356C3D)
  %i.ft = tail call noundef float @llvm.fma.f32(float %i.fs, float %i.fp, float f0x3FB88DC0)
  %i.fu = fmul float %i.fp, %i.ft
  %i.fv = fadd float %i.fu, %i.fl
  %i.fw = fmul float %i.fv, 4.500000e-01          ; 2 uses
  %i.fx = tail call noundef float @llvm.rint.f32(float %i.fw) ; 2 uses
  %i.fy = fsub float %i.fw, %i.fx                 ; 6 uses
  %i.fz = tail call noundef float @llvm.fma.f32(float %i.fy, float f0x39222A61, float f0x3AAF931A)
  %i.ga = tail call noundef float @llvm.fma.f32(float %i.fz, float %i.fy, float 9.618040e-03)
  %i.gb = tail call noundef float @llvm.fma.f32(float %i.ga, float %i.fy, float f0x3D63578A)
  %i.gc = tail call noundef float @llvm.fma.f32(float %i.gb, float %i.fy, float f0x3E75FDF0)
  %i.gd = tail call noundef float @llvm.fma.f32(float %i.gc, float %i.fy, float f0x3F317218)
  %i.ge = tail call noundef float @llvm.fma.f32(float %i.gd, float %i.fy, float 1.000000e+00)
  %i.gf = fptosi float %i.fx to i32
  %i.gg = shl i32 %i.gf, 23
  %i.gh = add i32 %i.gg, 1065353216
  %i.gi = bitcast i32 %i.gh to float
  %i.gj = fmul float %i.ge, %i.gi
  %i.gk = fcmp oeq float %i.a, 0.000000e+00
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.gj, float 1.111500e+00, float -1.115000e-01)
  %i.gm = select i1 %i.gk, float -1.115000e-01, float %i.gl
  %i.gn = fcmp ole float %i.a, 2.282500e-02
  %.sroa.speculated.i21 = select i1 %i.gn, float %i.fe, float %i.gm
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.go = tail call noundef float @log10f(float noundef %i.a) #47
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.go, float 5.000000e-01, float 1.000000e+00)
  %i.gq = fcmp oge float %i.a, f0x3C23D70A
  %.sroa.speculated.i22 = select i1 %i.gq, float %i.gp, float 0.000000e+00
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.gr = tail call noundef float @log10f(float noundef %i.a) #47
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gr, float 4.000000e-01, float 1.000000e+00)
  %i.gt = fcmp oge float %i.a, f0x3B4F3E37
  %.sroa.speculated.i23 = select i1 %i.gt, float %i.gs, float 0.000000e+00
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.gu = tail call noundef float @llvm.fabs.f32(float %i.a) ; 3 uses
  %i.gv = fmul float %i.a, 1.292000e+01
  %i.gw = fcmp olt float %i.gu, f0x00800000
  %i.gx = bitcast float %i.gu to i32
  %i.gy = select i1 %i.gw, i32 8388608, i32 %i.gx ; 2 uses
  %i.gz = lshr i32 %i.gy, 23
  %i.ha = add nsw i32 %i.gz, -127
  %i.hb = sitofp i32 %i.ha to float
  %i.hc = and i32 %i.gy, 8388607
  %i.hd = or disjoint i32 %i.hc, 1065353216
  %i.he = bitcast i32 %i.hd to float
  %i.hf = fadd float %i.he, -1.000000e+00         ; 5 uses
  %i.hg = tail call noundef float @llvm.fma.f32(float %i.hf, float f0x3D3BF404, float f0xBE471796)
  %i.hh = tail call noundef float @llvm.fma.f32(float %i.hg, float %i.hf, float f0x3ED4B281)
  %i.hi = tail call noundef float @llvm.fma.f32(float %i.hh, float %i.hf, float f0xBF356C3D)
  %i.hj = tail call noundef float @llvm.fma.f32(float %i.hi, float %i.hf, float f0x3FB88DC0)
  %i.hk = fmul float %i.hf, %i.hj
  %i.hl = fadd float %i.hk, %i.hb
  %i.hm = fmul float %i.hl, f0x3ED55555           ; 2 uses
  %i.hn = tail call noundef float @llvm.rint.f32(float %i.hm) ; 2 uses
  %i.ho = fsub float %i.hm, %i.hn                 ; 6 uses
  %i.hp = tail call noundef float @llvm.fma.f32(float %i.ho, float f0x39222A61, float f0x3AAF931A)
  %i.hq = tail call noundef float @llvm.fma.f32(float %i.hp, float %i.ho, float 9.618040e-03)
  %i.hr = tail call noundef float @llvm.fma.f32(float %i.hq, float %i.ho, float f0x3D63578A)
  %i.hs = tail call noundef float @llvm.fma.f32(float %i.hr, float %i.ho, float f0x3E75FDF0)
  %i.ht = tail call noundef float @llvm.fma.f32(float %i.hs, float %i.ho, float f0x3F317218)
  %i.hu = tail call noundef float @llvm.fma.f32(float %i.ht, float %i.ho, float 1.000000e+00)
  %i.hv = fptosi float %i.hn to i32
  %i.hw = shl i32 %i.hv, 23
  %i.hx = add i32 %i.hw, 1065353216
  %i.hy = bitcast i32 %i.hx to float
  %i.hz = fmul float %i.hu, %i.hy
  %i.ia = fcmp oeq float %i.a, 0.000000e+00
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hz, float 1.055000e+00, float -5.500000e-02)
  %i.ic = select i1 %i.ia, float -5.500000e-02, float %i.ib
  %i.id = tail call noundef float @llvm.copysign.f32(float %i.ic, float %i.a)
  %i.ie = fcmp ole float %i.gu, 3.130800e-03
  %.sroa.speculated.i24 = select i1 %i.ie, float %i.gv, float %i.id
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.if = fmul float %i.a, 2.030000e-02           ; 2 uses
  %i.ig = fcmp olt float %i.if, 0.000000e+00
  %..i.i25 = select i1 %i.ig, float 0.000000e+00, float %i.if ; 3 uses
  %i.ih = fcmp olt float %..i.i25, f0x00800000
  %i.ii = bitcast float %..i.i25 to i32
  %i.ij = select i1 %i.ih, i32 8388608, i32 %i.ii ; 2 uses
  %i.ik = lshr i32 %i.ij, 23
  %i.il = and i32 %i.ik, 255
  %i.im = add nsw i32 %i.il, -127
  %i.in = sitofp i32 %i.im to float
  %i.io = and i32 %i.ij, 8388607
  %i.ip = or disjoint i32 %i.io, 1065353216
  %i.iq = bitcast i32 %i.ip to float
  %i.ir = fadd float %i.iq, -1.000000e+00         ; 5 uses
  %i.is = tail call noundef float @llvm.fma.f32(float %i.ir, float f0x3D3BF404, float f0xBE471796)
  %i.it = tail call noundef float @llvm.fma.f32(float %i.is, float %i.ir, float f0x3ED4B281)
  %i.iu = tail call noundef float @llvm.fma.f32(float %i.it, float %i.ir, float f0xBF356C3D)
  %i.iv = tail call noundef float @llvm.fma.f32(float %i.iu, float %i.ir, float f0x3FB88DC0)
  %i.iw = fmul float %i.ir, %i.iv
  %i.ix = fadd float %i.iw, %i.in
  %i.iy = fmul float %i.ix, f0x3E232000           ; 2 uses
  %i.iz = tail call noundef float @llvm.rint.f32(float %i.iy) ; 2 uses
  %i.ja = fsub float %i.iy, %i.iz                 ; 6 uses
  %i.jb = tail call noundef float @llvm.fma.f32(float %i.ja, float f0x39222A61, float f0x3AAF931A)
  %i.jc = tail call noundef float @llvm.fma.f32(float %i.jb, float %i.ja, float 9.618040e-03)
  %i.jd = tail call noundef float @llvm.fma.f32(float %i.jc, float %i.ja, float f0x3D63578A)
end_hunk_0
begin_hunk_1_@_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE11EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_:bb.a
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float %i.r, float f0x3FB88DC0)
  %i.w = insertelement <2 x float> poison, float %i.n, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = fmul <2 x float> %i.i, %i.x
  %i.z = fadd <2 x float> %i.y, %i.q
  %i.aa = fmul <2 x float> %i.z, splat (float 4.500000e-01) ; 3 uses
  %i.ab = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.aa) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.aa, %i.ab
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.ad = tail call noundef float @llvm.fma.f32(float %i.ac, float f0x39222A61, float f0x3AAF931A)
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.ad, float %i.ac, float 9.618040e-03)
  %i.af = tail call noundef float @llvm.fma.f32(float %i.ae, float %i.ac, float f0x3D63578A)
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ac, float f0x3E75FDF0)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ac, float f0x3F317218)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.ac, float 1.000000e+00)
  %i.aj = fmul <2 x float> %i.b, splat (float 4.500000e+00)
  %foldExtExtBinop7 = fsub <2 x float> %i.aa, %i.ab
  %i.ak = extractelement <2 x float> %foldExtExtBinop7, i64 1 ; 6 uses
  %i.al = tail call noundef float @llvm.fma.f32(float %i.ak, float f0x39222A61, float f0x3AAF931A)
  %i.am = tail call noundef float @llvm.fma.f32(float %i.al, float %i.ak, float 9.618040e-03)
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.ak, float f0x3D63578A)
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.an, float %i.ak, float f0x3E75FDF0)
  %i.ap = tail call noundef float @llvm.fma.f32(float %i.ao, float %i.ak, float f0x3F317218)
  %i.aq = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.ak, float 1.000000e+00)
  %i.ar = fptosi <2 x float> %i.ab to <2 x i32>
  %i.as = shl <2 x i32> %i.ar, splat (i32 23)
  %i.at = add <2 x i32> %i.as, splat (i32 1065353216)
  %i.au = bitcast <2 x i32> %i.at to <2 x float>
  %i.av = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.aq, i64 1
  %i.ax = fmul <2 x float> %i.aw, %i.au
  %i.ay = fcmp oeq <2 x float> %i.a, zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> splat (float f0x3F8CB5C2), <2 x float> splat (float f0xBDCB5C20))
  %i.ba = select <2 x i1> %i.ay, <2 x float> splat (float f0xBDCB5C20), <2 x float> %i.az
  %i.bb = fcmp ole <2 x float> %i.b, splat (float f0x3C93E5EB)
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.aj, <2 x float> %i.ba
  %i.bd = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> %i.bc, <2 x float> %i.a)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !76 ; 3 uses
  %i.bg = tail call noundef float @llvm.fabs.f32(float %i.bf) ; 4 uses
  %i.bh = fmul float %i.bg, 4.500000e+00
  %i.bi = fcmp olt float %i.bg, f0x00800000
  %i.bj = bitcast float %i.bg to i32
  %i.bk = select i1 %i.bi, i32 8388608, i32 %i.bj ; 2 uses
  %i.bl = lshr i32 %i.bk, 23
  %i.bm = add nsw i32 %i.bl, -127
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = and i32 %i.bk, 8388607
  %i.bp = or disjoint i32 %i.bo, 1065353216
  %i.bq = bitcast i32 %i.bp to float
  %i.br = fadd float %i.bq, -1.000000e+00         ; 5 uses
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float f0x3D3BF404, float f0xBE471796)
  %i.bt = tail call noundef float @llvm.fma.f32(float %i.bs, float %i.br, float f0x3ED4B281)
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.br, float f0xBF356C3D)
  %i.bv = tail call noundef float @llvm.fma.f32(float %i.bu, float %i.br, float f0x3FB88DC0)
  %i.bw = fmul float %i.br, %i.bv
  %i.bx = fadd float %i.bw, %i.bn
  %i.by = fmul float %i.bx, 4.500000e-01          ; 2 uses
  %i.bz = tail call noundef float @llvm.rint.f32(float %i.by) ; 2 uses
  %i.ca = fsub float %i.by, %i.bz                 ; 6 uses
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float f0x39222A61, float f0x3AAF931A)
  %i.cc = tail call noundef float @llvm.fma.f32(float %i.cb, float %i.ca, float 9.618040e-03)
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cc, float %i.ca, float f0x3D63578A)
  %i.ce = tail call noundef float @llvm.fma.f32(float %i.cd, float %i.ca, float f0x3E75FDF0)
  %i.cf = tail call noundef float @llvm.fma.f32(float %i.ce, float %i.ca, float f0x3F317218)
  %i.cg = tail call noundef float @llvm.fma.f32(float %i.cf, float %i.ca, float 1.000000e+00)
  %i.ch = fptosi float %i.bz to i32
  %i.ci = shl i32 %i.ch, 23
  %i.cj = add i32 %i.ci, 1065353216
  %i.ck = bitcast i32 %i.cj to float
  %i.cl = fmul float %i.cg, %i.ck
  %i.cm = fcmp oeq float %i.bf, 0.000000e+00
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cl, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.co = select i1 %i.cm, float f0xBDCB5C20, float %i.cn
  %i.cp = fcmp ole float %i.bg, f0x3C93E5EB
  %.sroa.speculated.i.i.i.i4 = select i1 %i.cp, float %i.bh, float %i.co
  %i.cq = tail call noundef float @llvm.copysign.f32(float %.sroa.speculated.i.i.i.i4, float %i.bf)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.bd, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.cq, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE12EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !76 ; 7 uses
  %i.b = fmul <2 x float> %i.a, splat (float -4.000000e+00) ; 3 uses
  %i.c = fcmp olt <2 x float> %i.b, splat (float f0x00800000)
  %i.d = bitcast <2 x float> %i.b to <2 x i32>
  %i.e = select <2 x i1> %i.c, <2 x i32> splat (i32 8388608), <2 x i32> %i.d ; 2 uses
  %i.f = and <2 x i32> %i.e, splat (i32 8388607)
  %i.g = or disjoint <2 x i32> %i.f, splat (i32 1065353216)
  %i.h = bitcast <2 x i32> %i.g to <2 x float>
  %i.i = fadd <2 x float> %i.h, splat (float -1.000000e+00) ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 0   ; 4 uses
  %i.k = tail call noundef float @llvm.fma.f32(float %i.j, float f0x3D3BF404, float f0xBE471796)
  %i.l = tail call noundef float @llvm.fma.f32(float %i.k, float %i.j, float f0x3ED4B281)
  %i.m = tail call noundef float @llvm.fma.f32(float %i.l, float %i.j, float f0xBF356C3D)
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float %i.j, float f0x3FB88DC0)
  %i.o = lshr <2 x i32> %i.e, splat (i32 23)
  %i.p = and <2 x i32> %i.o, splat (i32 255)
  %i.q = add nsw <2 x i32> %i.p, splat (i32 -127)
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %i.s = extractelement <2 x float> %i.i, i64 1   ; 4 uses
  %i.t = tail call noundef float @llvm.fma.f32(float %i.s, float f0x3D3BF404, float f0xBE471796)
  %i.u = tail call noundef float @llvm.fma.f32(float %i.t, float %i.s, float f0x3ED4B281)
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float %i.s, float f0xBF356C3D)
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float %i.s, float f0x3FB88DC0)
  %i.x = insertelement <2 x float> poison, float %i.n, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.w, i64 1
  %i.z = fmul <2 x float> %i.i, %i.y
  %i.aa = fadd <2 x float> %i.z, %i.r
  %i.ab = fmul <2 x float> %i.aa, splat (float 4.500000e-01) ; 3 uses
  %i.ac = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.ab) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.ab, %i.ac
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.ad, float f0x39222A61, float f0x3AAF931A)
  %i.af = tail call noundef float @llvm.fma.f32(float %i.ae, float %i.ad, float 9.618040e-03)
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ad, float f0x3D63578A)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ad, float f0x3E75FDF0)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.ad, float f0x3F317218)
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ai, float %i.ad, float 1.000000e+00)
  %i.ak = fcmp olt <2 x float> %i.a, splat (float f0x00800000)
  %i.al = bitcast <2 x float> %i.a to <2 x i32>
  %i.am = select <2 x i1> %i.ak, <2 x i32> splat (i32 8388608), <2 x i32> %i.al ; 2 uses
  %i.an = and <2 x i32> %i.am, splat (i32 8388607)
  %i.ao = or disjoint <2 x i32> %i.an, splat (i32 1065353216)
  %i.ap = bitcast <2 x i32> %i.ao to <2 x float>
  %i.aq = fadd <2 x float> %i.ap, splat (float -1.000000e+00) ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0 ; 4 uses
  %i.as = tail call noundef float @llvm.fma.f32(float %i.ar, float f0x3D3BF404, float f0xBE471796)
  %i.at = tail call noundef float @llvm.fma.f32(float %i.as, float %i.ar, float f0x3ED4B281)
  %i.au = tail call noundef float @llvm.fma.f32(float %i.at, float %i.ar, float f0xBF356C3D)
  %i.av = tail call noundef float @llvm.fma.f32(float %i.au, float %i.ar, float f0x3FB88DC0)
  %i.aw = lshr <2 x i32> %i.am, splat (i32 23)
  %i.ax = and <2 x i32> %i.aw, splat (i32 255)
  %i.ay = add nsw <2 x i32> %i.ax, splat (i32 -127)
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>
  %i.ba = extractelement <2 x float> %i.aq, i64 1 ; 4 uses
  %i.bb = tail call noundef float @llvm.fma.f32(float %i.ba, float f0x3D3BF404, float f0xBE471796)
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.bb, float %i.ba, float f0x3ED4B281)
  %i.bd = tail call noundef float @llvm.fma.f32(float %i.bc, float %i.ba, float f0xBF356C3D)
  %i.be = tail call noundef float @llvm.fma.f32(float %i.bd, float %i.ba, float f0x3FB88DC0)
  %i.bf = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
  %i.bh = fmul <2 x float> %i.aq, %i.bg
  %i.bi = fadd <2 x float> %i.bh, %i.az
  %i.bj = fmul <2 x float> %i.bi, splat (float 4.500000e-01) ; 3 uses
  %i.bk = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.bj) ; 3 uses
  %foldExtExtBinop9 = fsub <2 x float> %i.bj, %i.bk
  %i.bl = extractelement <2 x float> %foldExtExtBinop9, i64 0 ; 6 uses
  %i.bm = tail call noundef float @llvm.fma.f32(float %i.bl, float f0x39222A61, float f0x3AAF931A)
  %i.bn = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bl, float 9.618040e-03)
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bn, float %i.bl, float f0x3D63578A)
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bo, float %i.bl, float f0x3E75FDF0)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bp, float %i.bl, float f0x3F317218)
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.bl, float 1.000000e+00)
  %foldExtExtBinop11 = fsub <2 x float> %i.ab, %i.ac
  %i.bs = extractelement <2 x float> %foldExtExtBinop11, i64 1 ; 6 uses
  %i.bt = tail call noundef float @llvm.fma.f32(float %i.bs, float f0x39222A61, float f0x3AAF931A)
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.bs, float 9.618040e-03)
  %i.bv = tail call noundef float @llvm.fma.f32(float %i.bu, float %i.bs, float f0x3D63578A)
  %i.bw = tail call noundef float @llvm.fma.f32(float %i.bv, float %i.bs, float f0x3E75FDF0)
  %i.bx = tail call noundef float @llvm.fma.f32(float %i.bw, float %i.bs, float f0x3F317218)
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float %i.bs, float 1.000000e+00)
  %i.bz = fptosi <2 x float> %i.ac to <2 x i32>
  %i.ca = shl <2 x i32> %i.bz, splat (i32 23)
  %i.cb = add <2 x i32> %i.ca, splat (i32 1065353216)
  %i.cc = bitcast <2 x i32> %i.cb to <2 x float>
  %i.cd = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.by, i64 1
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = fcmp oeq <2 x float> %i.b, zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> splat (float f0x3F8CB5C2), <2 x float> splat (float f0xBDCB5C20))
  %i.ci = fmul <2 x float> %i.ch, splat (float -2.500000e-01)
  %i.cj = select <2 x i1> %i.cg, <2 x float> splat (float f0x3CCB5C20), <2 x float> %i.ci
  %i.ck = fmul <2 x float> %i.a, splat (float 4.500000e+00)
  %foldExtExtBinop13 = fsub <2 x float> %i.bj, %i.bk
  %i.cl = extractelement <2 x float> %foldExtExtBinop13, i64 1 ; 6 uses
  %i.cm = tail call noundef float @llvm.fma.f32(float %i.cl, float f0x39222A61, float f0x3AAF931A)
  %i.cn = tail call noundef float @llvm.fma.f32(float %i.cm, float %i.cl, float 9.618040e-03)
  %i.co = tail call noundef float @llvm.fma.f32(float %i.cn, float %i.cl, float f0x3D63578A)
  %i.cp = tail call noundef float @llvm.fma.f32(float %i.co, float %i.cl, float f0x3E75FDF0)
  %i.cq = tail call noundef float @llvm.fma.f32(float %i.cp, float %i.cl, float f0x3F317218)
  %i.cr = tail call noundef float @llvm.fma.f32(float %i.cq, float %i.cl, float 1.000000e+00)
  %i.cs = fptosi <2 x float> %i.bk to <2 x i32>
  %i.ct = shl <2 x i32> %i.cs, splat (i32 23)
  %i.cu = add <2 x i32> %i.ct, splat (i32 1065353216)
  %i.cv = bitcast <2 x i32> %i.cu to <2 x float>
  %i.cw = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cr, i64 1
  %i.cy = fmul <2 x float> %i.cx, %i.cv
  %i.cz = fcmp oeq <2 x float> %i.a, zeroinitializer
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> splat (float f0x3F8CB5C2), <2 x float> splat (float f0xBDCB5C20))
  %i.db = select <2 x i1> %i.cz, <2 x float> splat (float f0xBDCB5C20), <2 x float> %i.da
  %i.dc = fcmp olt <2 x float> %i.a, splat (float f0xBB93E5EB)
  %i.dd = fcmp ole <2 x float> %i.a, splat (float f0x3C93E5EB)
  %i.de = select <2 x i1> %i.dd, <2 x float> %i.ck, <2 x float> %i.db
  %i.df = select <2 x i1> %i.dc, <2 x float> %i.cj, <2 x float> %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !76 ; 5 uses
  %1 = insertelement <2 x float> poison, float %i.dh, i64 0
  %2 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %3 = fmul <2 x float> %2, <float -4.000000e+00, float 1.000000e+00> ; 3 uses
  %4 = fcmp olt <2 x float> %3, splat (float f0x00800000)
  %5 = bitcast <2 x float> %3 to <2 x i32>
  %6 = select <2 x i1> %4, <2 x i32> splat (i32 8388608), <2 x i32> %5 ; 2 uses
  %7 = lshr <2 x i32> %6, splat (i32 23)
  %8 = and <2 x i32> %7, splat (i32 255)
  %9 = add nsw <2 x i32> %8, splat (i32 -127)
  %10 = sitofp <2 x i32> %9 to <2 x float>
  %11 = extractelement <2 x float> %3, i64 0
  %i.di = fcmp oeq float %11, 0.000000e+00
  %i.dj = fmul float %i.dh, 4.500000e+00
  %12 = and <2 x i32> %6, splat (i32 8388607)
  %13 = or disjoint <2 x i32> %12, splat (i32 1065353216)
  %14 = bitcast <2 x i32> %13 to <2 x float>
  %15 = fadd <2 x float> %14, splat (float -1.000000e+00) ; 3 uses
  %16 = extractelement <2 x float> %15, i64 0     ; 4 uses
  %17 = tail call noundef float @llvm.fma.f32(float %16, float f0x3D3BF404, float f0xBE471796)
  %18 = tail call noundef float @llvm.fma.f32(float %17, float %16, float f0x3ED4B281)
  %19 = tail call noundef float @llvm.fma.f32(float %18, float %16, float f0xBF356C3D)
  %20 = tail call noundef float @llvm.fma.f32(float %19, float %16, float f0x3FB88DC0)
  %21 = extractelement <2 x float> %15, i64 1     ; 4 uses
  %i.dk = tail call noundef float @llvm.fma.f32(float %21, float f0x3D3BF404, float f0xBE471796)
  %i.dl = tail call noundef float @llvm.fma.f32(float %i.dk, float %21, float f0x3ED4B281)
  %i.dm = tail call noundef float @llvm.fma.f32(float %i.dl, float %21, float f0xBF356C3D)
  %22 = tail call noundef float @llvm.fma.f32(float %i.dm, float %21, float f0x3FB88DC0)
  %23 = insertelement <2 x float> poison, float %20, i64 0
  %24 = insertelement <2 x float> %23, float %22, i64 1
  %25 = fmul <2 x float> %15, %24
  %26 = fadd <2 x float> %25, %10
  %27 = fmul <2 x float> %26, splat (float 4.500000e-01) ; 3 uses
  %28 = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %27) ; 3 uses
  %foldExtExtBinop15 = fsub <2 x float> %27, %28
  %29 = extractelement <2 x float> %foldExtExtBinop15, i64 0 ; 6 uses
  %i.dn = tail call noundef float @llvm.fma.f32(float %29, float f0x39222A61, float f0x3AAF931A)
  %i.do = tail call noundef float @llvm.fma.f32(float %i.dn, float %29, float 9.618040e-03)
  %i.dp = tail call noundef float @llvm.fma.f32(float %i.do, float %29, float f0x3D63578A)
  %i.dq = tail call noundef float @llvm.fma.f32(float %i.dp, float %29, float f0x3E75FDF0)
  %i.dr = tail call noundef float @llvm.fma.f32(float %i.dq, float %29, float f0x3F317218)
  %30 = tail call noundef float @llvm.fma.f32(float %i.dr, float %29, float 1.000000e+00)
  %31 = fptosi <2 x float> %28 to <2 x i32>
  %32 = shl <2 x i32> %31, splat (i32 23)
  %33 = add <2 x i32> %32, splat (i32 1065353216) ; 2 uses
  %bc = bitcast <2 x i32> %33 to <2 x float>
  %34 = extractelement <2 x float> %bc, i64 0
  %35 = fmul float %30, %34
  %i.ds = tail call float @llvm.fmuladd.f32(float %35, float f0x3F8CB5C2, float f0xBDCB5C20)
  %36 = fmul float %i.ds, -2.500000e-01
  %37 = select i1 %i.di, float f0x3CCB5C20, float %36
  %foldExtExtBinop17 = fsub <2 x float> %27, %28
  %38 = extractelement <2 x float> %foldExtExtBinop17, i64 1 ; 6 uses
  %i.dt = tail call noundef float @llvm.fma.f32(float %38, float f0x39222A61, float f0x3AAF931A)
  %39 = tail call noundef float @llvm.fma.f32(float %i.dt, float %38, float 9.618040e-03)
  %40 = tail call noundef float @llvm.fma.f32(float %39, float %38, float f0x3D63578A)
  %41 = tail call noundef float @llvm.fma.f32(float %40, float %38, float f0x3E75FDF0)
  %42 = tail call noundef float @llvm.fma.f32(float %41, float %38, float f0x3F317218)
  %43 = tail call noundef float @llvm.fma.f32(float %42, float %38, float 1.000000e+00)
  %i.du = bitcast <2 x i32> %33 to <2 x float>
  %i.dv = extractelement <2 x float> %i.du, i64 1
  %i.dw = fmul float %43, %i.dv
  %44 = fcmp oeq float %i.dh, 0.000000e+00
  %45 = tail call float @llvm.fmuladd.f32(float %i.dw, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.dx = select i1 %44, float f0xBDCB5C20, float %45
  %i.dy = fcmp olt float %i.dh, f0xBB93E5EB
  %i.dz = fcmp ole float %i.dh, f0x3C93E5EB
  %.sroa.speculated8.i.i.i5 = select i1 %i.dz, float %i.dj, float %i.dx
  %.sroa.speculated.i.i.i6 = select i1 %i.dy, float %37, float %.sroa.speculated8.i.i.i5
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.df, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.speculated.i.i.i6, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE4EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !76 ; 2 uses
  %i.b = fcmp olt <2 x float> %i.a, zeroinitializer
  %i.c = select <2 x i1> %i.b, <2 x float> zeroinitializer, <2 x float> %i.a ; 3 uses
  %i.d = fcmp olt <2 x float> %i.c, splat (float f0x00800000)
  %i.e = bitcast <2 x float> %i.c to <2 x i32>
  %i.f = select <2 x i1> %i.d, <2 x i32> splat (i32 8388608), <2 x i32> %i.e ; 2 uses
  %i.g = and <2 x i32> %i.f, splat (i32 8388607)
  %i.h = or disjoint <2 x i32> %i.g, splat (i32 1065353216)
  %i.i = bitcast <2 x i32> %i.h to <2 x float>
  %i.j = fadd <2 x float> %i.i, splat (float -1.000000e+00) ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %i.l = tail call noundef float @llvm.fma.f32(float %i.k, float f0x3D3BF404, float f0xBE471796)
  %i.m = tail call noundef float @llvm.fma.f32(float %i.l, float %i.k, float f0x3ED4B281)
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float %i.k, float f0xBF356C3D)
  %i.o = tail call noundef float @llvm.fma.f32(float %i.n, float %i.k, float f0x3FB88DC0)
  %i.p = lshr <2 x i32> %i.f, splat (i32 23)
  %i.q = and <2 x i32> %i.p, splat (i32 255)
  %i.r = add nsw <2 x i32> %i.q, splat (i32 -127)
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %i.t = extractelement <2 x float> %i.j, i64 1   ; 4 uses
  %i.u = tail call noundef float @llvm.fma.f32(float %i.t, float f0x3D3BF404, float f0xBE471796)
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float %i.t, float f0x3ED4B281)
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float %i.t, float f0xBF356C3D)
  %i.x = tail call noundef float @llvm.fma.f32(float %i.w, float %i.t, float f0x3FB88DC0)
  %i.y = insertelement <2 x float> poison, float %i.o, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = fmul <2 x float> %i.j, %i.z
  %i.ab = fadd <2 x float> %i.aa, %i.s
  %i.ac = fmul <2 x float> %i.ab, splat (float f0x3EE8BA2E) ; 3 uses
  %i.ad = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.ac) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.ac, %i.ad
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.af = tail call noundef float @llvm.fma.f32(float %i.ae, float f0x39222A61, float f0x3AAF931A)
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ae, float 9.618040e-03)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ae, float f0x3D63578A)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.ae, float f0x3E75FDF0)
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ai, float %i.ae, float f0x3F317218)
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.aj, float %i.ae, float 1.000000e+00)
  %foldExtExtBinop9 = fsub <2 x float> %i.ac, %i.ad
  %i.al = extractelement <2 x float> %foldExtExtBinop9, i64 1 ; 6 uses
  %i.am = tail call noundef float @llvm.fma.f32(float %i.al, float f0x39222A61, float f0x3AAF931A)
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.al, float 9.618040e-03)
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.an, float %i.al, float f0x3D63578A)
  %i.ap = tail call noundef float @llvm.fma.f32(float %i.ao, float %i.al, float f0x3E75FDF0)
  %i.aq = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.al, float f0x3F317218)
  %i.ar = tail call noundef float @llvm.fma.f32(float %i.aq, float %i.al, float 1.000000e+00)
  %i.as = fptosi <2 x float> %i.ad to <2 x i32>
  %i.at = shl <2 x i32> %i.as, splat (i32 23)
  %i.au = add <2 x i32> %i.at, splat (i32 1065353216)
  %i.av = bitcast <2 x i32> %i.au to <2 x float>
  %i.aw = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.ar, i64 1
  %i.ay = fmul <2 x float> %i.ax, %i.av
  %i.az = fcmp oeq <2 x float> %i.c, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x float> zeroinitializer, <2 x float> %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !76 ; 2 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00
  %..i.i.i.i5 = select i1 %i.bd, float 0.000000e+00, float %i.bc ; 3 uses
  %i.be = fcmp olt float %..i.i.i.i5, f0x00800000
  %i.bf = bitcast float %..i.i.i.i5 to i32
  %i.bg = select i1 %i.be, i32 8388608, i32 %i.bf ; 2 uses
  %i.bh = lshr i32 %i.bg, 23
  %i.bi = and i32 %i.bh, 255
  %i.bj = add nsw i32 %i.bi, -127
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = and i32 %i.bg, 8388607
  %i.bm = or disjoint i32 %i.bl, 1065353216
  %i.bn = bitcast i32 %i.bm to float
  %i.bo = fadd float %i.bn, -1.000000e+00         ; 5 uses
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bo, float f0x3D3BF404, float f0xBE471796)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bp, float %i.bo, float f0x3ED4B281)
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.bo, float f0xBF356C3D)
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float %i.bo, float f0x3FB88DC0)
  %i.bt = fmul float %i.bo, %i.bs
  %i.bu = fadd float %i.bt, %i.bk
  %i.bv = fmul float %i.bu, f0x3EE8BA2E           ; 2 uses
  %i.bw = tail call noundef float @llvm.rint.f32(float %i.bv) ; 2 uses
  %i.bx = fsub float %i.bv, %i.bw                 ; 6 uses
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float f0x39222A61, float f0x3AAF931A)
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.by, float %i.bx, float 9.618040e-03)
  %i.ca = tail call noundef float @llvm.fma.f32(float %i.bz, float %i.bx, float f0x3D63578A)
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float %i.bx, float f0x3E75FDF0)
  %i.cc = tail call noundef float @llvm.fma.f32(float %i.cb, float %i.bx, float f0x3F317218)
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cc, float %i.bx, float 1.000000e+00)
  %i.ce = fptosi float %i.bw to i32
  %i.cf = shl i32 %i.ce, 23
  %i.cg = add i32 %i.cf, 1065353216
  %i.ch = bitcast i32 %i.cg to float
  %i.ci = fmul float %i.cd, %i.ch
  %i.cj = fcmp oeq float %..i.i.i.i5, 0.000000e+00
  %.sroa.speculated.i.i.i.i6 = select i1 %i.cj, float 0.000000e+00, float %i.ci
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.ba, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.speculated.i.i.i.i6, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE5EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !76 ; 2 uses
  %i.b = fcmp olt <2 x float> %i.a, zeroinitializer
  %i.c = select <2 x i1> %i.b, <2 x float> zeroinitializer, <2 x float> %i.a ; 3 uses
  %i.d = fcmp olt <2 x float> %i.c, splat (float f0x00800000)
  %i.e = bitcast <2 x float> %i.c to <2 x i32>
  %i.f = select <2 x i1> %i.d, <2 x i32> splat (i32 8388608), <2 x i32> %i.e ; 2 uses
  %i.g = and <2 x i32> %i.f, splat (i32 8388607)
  %i.h = or disjoint <2 x i32> %i.g, splat (i32 1065353216)
  %i.i = bitcast <2 x i32> %i.h to <2 x float>
  %i.j = fadd <2 x float> %i.i, splat (float -1.000000e+00) ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %i.l = tail call noundef float @llvm.fma.f32(float %i.k, float f0x3D3BF404, float f0xBE471796)
  %i.m = tail call noundef float @llvm.fma.f32(float %i.l, float %i.k, float f0x3ED4B281)
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float %i.k, float f0xBF356C3D)
  %i.o = tail call noundef float @llvm.fma.f32(float %i.n, float %i.k, float f0x3FB88DC0)
  %i.p = lshr <2 x i32> %i.f, splat (i32 23)
  %i.q = and <2 x i32> %i.p, splat (i32 255)
  %i.r = add nsw <2 x i32> %i.q, splat (i32 -127)
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %i.t = extractelement <2 x float> %i.j, i64 1   ; 4 uses
  %i.u = tail call noundef float @llvm.fma.f32(float %i.t, float f0x3D3BF404, float f0xBE471796)
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float %i.t, float f0x3ED4B281)
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float %i.t, float f0xBF356C3D)
  %i.x = tail call noundef float @llvm.fma.f32(float %i.w, float %i.t, float f0x3FB88DC0)
  %i.y = insertelement <2 x float> poison, float %i.o, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = fmul <2 x float> %i.j, %i.z
  %i.ab = fadd <2 x float> %i.aa, %i.s
  %i.ac = fmul <2 x float> %i.ab, splat (float f0x3EB6DB6E) ; 3 uses
  %i.ad = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.ac) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.ac, %i.ad
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.af = tail call noundef float @llvm.fma.f32(float %i.ae, float f0x39222A61, float f0x3AAF931A)
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ae, float 9.618040e-03)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ae, float f0x3D63578A)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.ae, float f0x3E75FDF0)
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ai, float %i.ae, float f0x3F317218)
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.aj, float %i.ae, float 1.000000e+00)
  %foldExtExtBinop9 = fsub <2 x float> %i.ac, %i.ad
  %i.al = extractelement <2 x float> %foldExtExtBinop9, i64 1 ; 6 uses
  %i.am = tail call noundef float @llvm.fma.f32(float %i.al, float f0x39222A61, float f0x3AAF931A)
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.al, float 9.618040e-03)
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.an, float %i.al, float f0x3D63578A)
  %i.ap = tail call noundef float @llvm.fma.f32(float %i.ao, float %i.al, float f0x3E75FDF0)
  %i.aq = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.al, float f0x3F317218)
  %i.ar = tail call noundef float @llvm.fma.f32(float %i.aq, float %i.al, float 1.000000e+00)
  %i.as = fptosi <2 x float> %i.ad to <2 x i32>
  %i.at = shl <2 x i32> %i.as, splat (i32 23)
  %i.au = add <2 x i32> %i.at, splat (i32 1065353216)
  %i.av = bitcast <2 x i32> %i.au to <2 x float>
  %i.aw = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.ar, i64 1
  %i.ay = fmul <2 x float> %i.ax, %i.av
  %i.az = fcmp oeq <2 x float> %i.c, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x float> zeroinitializer, <2 x float> %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !76 ; 2 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00
  %..i.i.i.i5 = select i1 %i.bd, float 0.000000e+00, float %i.bc ; 3 uses
  %i.be = fcmp olt float %..i.i.i.i5, f0x00800000
  %i.bf = bitcast float %..i.i.i.i5 to i32
  %i.bg = select i1 %i.be, i32 8388608, i32 %i.bf ; 2 uses
  %i.bh = lshr i32 %i.bg, 23
  %i.bi = and i32 %i.bh, 255
  %i.bj = add nsw i32 %i.bi, -127
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = and i32 %i.bg, 8388607
  %i.bm = or disjoint i32 %i.bl, 1065353216
  %i.bn = bitcast i32 %i.bm to float
  %i.bo = fadd float %i.bn, -1.000000e+00         ; 5 uses
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bo, float f0x3D3BF404, float f0xBE471796)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bp, float %i.bo, float f0x3ED4B281)
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.bo, float f0xBF356C3D)
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float %i.bo, float f0x3FB88DC0)
  %i.bt = fmul float %i.bo, %i.bs
  %i.bu = fadd float %i.bt, %i.bk
  %i.bv = fmul float %i.bu, f0x3EB6DB6E           ; 2 uses
  %i.bw = tail call noundef float @llvm.rint.f32(float %i.bv) ; 2 uses
  %i.bx = fsub float %i.bv, %i.bw                 ; 6 uses
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float f0x39222A61, float f0x3AAF931A)
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.by, float %i.bx, float 9.618040e-03)
  %i.ca = tail call noundef float @llvm.fma.f32(float %i.bz, float %i.bx, float f0x3D63578A)
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float %i.bx, float f0x3E75FDF0)
  %i.cc = tail call noundef float @llvm.fma.f32(float %i.cb, float %i.bx, float f0x3F317218)
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cc, float %i.bx, float 1.000000e+00)
  %i.ce = fptosi float %i.bw to i32
  %i.cf = shl i32 %i.ce, 23
  %i.cg = add i32 %i.cf, 1065353216
  %i.ch = bitcast i32 %i.cg to float
  %i.ci = fmul float %i.cd, %i.ch
  %i.cj = fcmp oeq float %..i.i.i.i5, 0.000000e+00
  %.sroa.speculated.i.i.i.i6 = select i1 %i.cj, float 0.000000e+00, float %i.ci
end_hunk_1
begin_hunk_2_@"_ZN3tev18invokeTaskDetachedITkNS_13TaskCoroutineEZNS_11ImageCanvas16canvasStatisticsEvE3$_0JEEENS_12DetachedTaskEOT_DpOT0_.resume":bb.a
  %.reload.addr35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pr = load ptr, ptr %.reload.addr34, align 8, !tbaa !317 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.h, !inline_history !15

.thread.sink.split:                               ; preds = %bb.b
  store ptr null, ptr %.reload.addr34, align 8, !tbaa !317
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN3tev4TaskIvE12await_resumeEv.exit unwind label %bb.h

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %.thread
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr34) #47
  tail call void @_ZNSt3__17promiseINS_10shared_ptrIN3tev16CanvasStatisticsEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #47
  %i.f = load i8, ptr %i.e, align 8
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

bb.c:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = load i64, ptr %i.e, align 8
  %i.k = and i64 %i.j, -2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i: ; preds = %bb.c, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !202  ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 -1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #47, !inline_history !14
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i: ; preds = %bb.e, %bb.d, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202  ; 5 uses
  %.not.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i1.i, label %"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit", label %bb.f

bb.f:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = atomicrmw add ptr %i.v, i64 -1 acq_rel, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.g, label %"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit"

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #47, !inline_history !14
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #47
  br label %"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit"

bb.h:                                             ; preds = %.thread, %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr34) #47
  %.04 = extractvalue { ptr, i32 } %i.ab, 0
  tail call fastcc void @"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.reload.addr) #47
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %.04) #47 ; 0 uses
  invoke void @_ZN3tev12DetachedTask12promise_type19unhandled_exceptionEv(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr35)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit" unwind label %.from.32

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

.from.32:                                         ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit": ; preds = %bb.i, %bb.g, %bb.f, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #47
  ret void

bb.k:                                             ; preds = %.from.32, %bb.j
  %.pn7 = phi { ptr, i32 } [ %i.ae, %.from.32 ], [ %i.ad, %bb.j ]
  store ptr null, ptr %0, align 8
  resume { ptr, i32 } %.pn7

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #52
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev18invokeTaskDetachedITkNS_13TaskCoroutineEZNS_11ImageCanvas16canvasStatisticsEvE3$_0JEEENS_12DetachedTaskEOT_DpOT0_.destroy"(ptr noundef nonnull align 8 dereferenceable(184) %0) #9 personality ptr @__gxx_personality_v0 {
_ZN3tev4TaskIvE12await_resumeEv.exit:
  %.reload.addr34 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr34) #47
  tail call void @_ZNSt3__17promiseINS_10shared_ptrIN3tev16CanvasStatisticsEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #47
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.a, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

bb.a:                                             ; preds = %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.g = load i64, ptr %i.b, align 8
  %i.h = and i64 %i.g, -2
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.h) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i: ; preds = %bb.a, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202  ; 5 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = atomicrmw add ptr %i.k, i64 -1 acq_rel, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #47, !inline_history !14
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i: ; preds = %bb.c, %bb.b, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !202  ; 5 uses
  %.not.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i1.i, label %"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit", label %bb.d

bb.d:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit"

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #47, !inline_history !14
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #47
  br label %"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit"

"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev.exit": ; preds = %bb.e, %bb.d, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #47
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.rint.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind memory(none) }
attributes #38 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #41 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nounwind }
attributes #48 = { builtin allocsize(0) }
attributes #49 = { builtin nounwind }
attributes #50 = { noreturn }
attributes #51 = { allocsize(0) }
attributes #52 = { noreturn nounwind }
attributes #53 = { nounwind allocsize(0) }

!llvm.module.flags = !{!65, !66, !67, !68}
!llvm.ident = !{!69}
!llvm.errno.tbaa = !{!74}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null}
!2 = distinct !{!2, !215}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null, null, null, null, null, null}
!6 = distinct !{ptr @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev, null, null}
!7 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINS_9HeapArrayIfEEEES3_ED2Ev, null, null, null}
!8 = distinct !{null, null, null}
!9 = distinct !{null}
!10 = distinct !{null, null, null, null, null, null}
!11 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINS_9HeapArrayIhEEEES3_ED2Ev, null, null, null}
!12 = distinct !{ptr @_ZNSt3__110shared_ptrIN3tev4LazyINS0_INS1_16CanvasStatisticsEEEEEED2B8ne180100Ev, null, null}
!13 = distinct !{null, null}
!14 = distinct !{ptr @"_ZZN3tev11ImageCanvas16canvasStatisticsEvEN3$_0D2Ev", ptr @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev, null, null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null, null, null, null, null, null}
!19 = distinct !{ptr @_ZNSt3__110shared_ptrIN3tev16CanvasStatisticsEED2B8ne180100Ev, null, null}
!20 = distinct !{ptr @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev, null, null, null, null, null, null, null, null, null}
!21 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__110shared_ptrINS_16CanvasStatisticsEEEEES5_ED2Ev, null, null, null}
!22 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!23 = distinct !{!23, !215}
!24 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!25 = distinct !{null, null}
!26 = distinct !{!26, !215}
!27 = distinct !{!27, !215}
!28 = distinct !{!28, !215}
!29 = distinct !{null, null}
!30 = distinct !{null, null, null}
!31 = distinct !{null, null}
!32 = distinct !{!32, !215}
!33 = distinct !{!33, !215}
!34 = distinct !{!34, !215}
!35 = distinct !{!35, !215}
!36 = distinct !{null, null}
!37 = distinct !{null, null}
!38 = distinct !{!38, !215}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{!41, !215}
!42 = distinct !{!42, !215}
!43 = distinct !{!43, !215}
!44 = distinct !{null, null, null, null}
!45 = distinct !{!45, !215}
!46 = distinct !{null, null}
!47 = distinct !{null}
!48 = distinct !{null, null}
!49 = distinct !{!49, !215}
!50 = distinct !{!50, !215}
!51 = distinct !{!51, !215}
!52 = distinct !{null}
!53 = distinct !{null, null, null, null}
!54 = distinct !{null, null, null}
!55 = distinct !{null}
!56 = distinct !{!56, !215}
!57 = distinct !{!57, !215}
!58 = distinct !{null, null, null, null}
!59 = distinct !{null, null, null, null, null}
!60 = distinct !{null}
!61 = distinct !{!61, !215}
!62 = distinct !{null, null, null}
!63 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!64 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!65 = !{i32 1, !"long-double-type", !"x86_fp80"}
!66 = !{i32 8, !"PIC Level", i32 2}
!67 = !{i32 7, !"PIE Level", i32 2}
!68 = !{i32 7, !"uwtable", i32 2}
!69 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!70 = !{!"Simple C++ TBAA"}
!71 = !{!"omnipotent char", !70, i64 0}
!72 = !{!"int", !71, i64 0}
!73 = !{!"__libc_errno", !72, i64 0}
!74 = !{!73, !72, i64 0}
!75 = !{!"float", !71, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"vtable pointer", !70, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!71, !71, i64 0}
!80 = !{!"bool", !71, i64 0}
!81 = !{!"_ZTSNSt3__124__optional_destruct_baseIfLb1EEE", !71, i64 0, !80, i64 4}
!82 = !{!81, !80, i64 4}
!83 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !71, i64 0}
!84 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !84, i64 0}
!86 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !85, i64 0}
!87 = !{!"_ZTSNSt3__16atomicImEE", !86, i64 0}
!88 = !{!"_ZTSN7nanogui6ObjectE", !87, i64 8}
!89 = !{!"any pointer", !71, i64 0}
!90 = !{!"p1 _ZTSN7nanogui6WidgetE", !89, i64 0}
!91 = !{!"p1 _ZTSN7nanogui5ThemeE", !89, i64 0}
!92 = !{!"_ZTSN7nanogui3refINS_5ThemeEEE", !91, i64 0}
!93 = !{!"p1 _ZTSN7nanogui6LayoutE", !89, i64 0}
!94 = !{!"_ZTSN7nanogui3refINS_6LayoutEEE", !93, i64 0}
!95 = !{!"_ZTSN7nanogui5ArrayIiLm2EEE", !71, i64 0}
!96 = !{!"any p2 pointer", !89, i64 0}
!97 = !{!"p2 _ZTSN7nanogui6WidgetE", !96, i64 0}
!98 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPN7nanogui6WidgetELi0ELb0EEE", !97, i64 0}
!99 = !{!"_ZTSNSt3__117__compressed_pairIPPN7nanogui6WidgetENS_9allocatorIS3_EEEE", !98, i64 0}
!100 = !{!"_ZTSNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEEE", !97, i64 0, !97, i64 8, !99, i64 16}
!101 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !71, i64 0}
!102 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !101, i64 0}
!103 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !102, i64 0}
!104 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !103, i64 0}
!105 = !{!"_ZTSN7nanogui6CursorE", !71, i64 0}
!106 = !{!"_ZTSN7nanogui6WidgetE", !88, i64 0, !90, i64 16, !92, i64 24, !94, i64 32, !95, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !80, i64 72, !100, i64 80, !80, i64 104, !80, i64 105, !80, i64 106, !80, i64 107, !104, i64 112, !72, i64 136, !75, i64 140, !105, i64 144}
!107 = !{!"p1 _ZTSN7nanogui10RenderPassE", !89, i64 0}
!108 = !{!"_ZTSN7nanogui3refINS_10RenderPassEEE", !107, i64 0}
!109 = !{!"_ZTSN7nanogui5ArrayIfLm4EEE", !71, i64 0}
!110 = !{!"_ZTSN7nanogui5ColorE", !109, i64 0}
!111 = !{!"_ZTSN7nanogui6CanvasE", !106, i64 0, !108, i64 152, !80, i64 160, !110, i64 164, !80, i64 180}
!112 = !{!"_ZTSNSt3__123__optional_storage_baseIfLb0EEE", !81, i64 0}
!113 = !{!"_ZTSNSt3__120__optional_copy_baseIfLb1EEE", !112, i64 0}
!114 = !{!"_ZTSNSt3__120__optional_move_baseIfLb1EEE", !113, i64 0}
!115 = !{!"_ZTSNSt3__127__optional_copy_assign_baseIfLb1EEE", !114, i64 0}
!116 = !{!"_ZTSNSt3__127__optional_move_assign_baseIfLb1EEE", !115, i64 0}
!117 = !{!"_ZTSNSt3__18optionalIfEE", !116, i64 0}
!118 = !{!"_ZTSN3tev18EInterpolationModeE", !71, i64 0}
!119 = !{!"p1 _ZTSN3tev5ImageE", !89, i64 0}
!120 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !89, i64 0}
!121 = !{!"_ZTSNSt3__110shared_ptrIN3tev5ImageEEE", !119, i64 0, !120, i64 8}
!122 = !{!"_ZTSN7nanogui6MatrixIfLm3EEE", !71, i64 0}
!123 = !{!"p1 _ZTSN3tev10UberShaderE", !89, i64 0}
!124 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3tev10UberShaderELi0ELb0EEE", !123, i64 0}
!125 = !{!"_ZTSNSt3__117__compressed_pairIPN3tev10UberShaderENS_14default_deleteIS2_EEEE", !124, i64 0}
!126 = !{!"_ZTSNSt3__110unique_ptrIN3tev10UberShaderENS_14default_deleteIS2_EEEE", !125, i64 0}
!127 = !{!"_ZTSN3tev12EChannelMaskE", !71, i64 0}
!128 = !{!"_ZTSN3tev8ETonemapE", !71, i64 0}
!129 = !{!"_ZTSN3tev7EMetricE", !71, i64 0}
!130 = !{!"_ZTSNSt3__124__optional_destruct_baseIN3tev3BoxIiLj2EEELb1EEE", !71, i64 0, !80, i64 16}
end_hunk_2
