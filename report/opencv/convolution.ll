Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convolution?download=true
inline.NumInlined: 742
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbE3$_0", ptr %0, align 8, !tbaa !127
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !95
  store ptr %.val, ptr %0, align 8, !tbaa !95
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !231
  store ptr %i.a, ptr %0, align 8, !tbaa !95
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !95 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12initFastConvERKNS1_11_InputArrayEPfiiiRKSt6vectorImSaImEESB_SB_SB_SB_ibbE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_1E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !95    ; 8 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !86     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !87   ; 2 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph85.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESA_SA_SA_SA_ibbE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph85.i.i.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 16 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.n = load i32, ptr %i.m, align 4, !tbaa !39   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph85.split.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESA_SA_SA_SA_ibbE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph85.split.preheader.i.i.i:                   ; preds = %.lr.ph85.i.i.i
  %i.p = sext i32 %i.b to i64
  br label %.lr.ph85.split.i.i.i

.lr.ph85.split.i.i.i:                             ; preds = %._crit_edge.i.i.i, %.lr.ph85.split.preheader.i.i.i
  %i.q = phi i32 [ %i.d, %.lr.ph85.split.preheader.i.i.i ], [ %i.ac, %._crit_edge.i.i.i ]
  %i.r = phi i32 [ %i.n, %.lr.ph85.split.preheader.i.i.i ], [ %i.ad, %._crit_edge.i.i.i ] ; 3 uses
  %indvars.iv99.i.i.i = phi i64 [ %i.p, %.lr.ph85.split.preheader.i.i.i ], [ %indvars.iv.next100.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.s = load ptr, ptr %.val, align 8, !tbaa !236, !nonnull !67, !align !125
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39   ; 3 uses
  %i.u = trunc nsw i64 %indvars.iv99.i.i.i to i32 ; 2 uses
  %i.v = sdiv i32 %i.u, %i.t                      ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.t                   ; 0 uses
  %.recomposed = srem i32 %i.u, %i.t              ; 2 uses
  %i.x = sdiv i32 %.recomposed, 4                 ; 2 uses
  %i.y = icmp sgt i32 %i.r, 0
  br i1 %i.y, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph85.split.i.i.i
  %i.z = shl i32 %.recomposed, 2
  %i.aa = shl i32 %i.x, 4
  %i.ab = sub i32 %i.z, %i.aa
  br label %.preheader.preheader.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.ai
  %.pre.i.i.i = load i32, ptr %i.c, align 4, !tbaa !87
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.lr.ph85.split.i.i.i
  %i.ac = phi i32 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.q, %.lr.ph85.split.i.i.i ] ; 2 uses
  %i.ad = phi i32 [ %i.nr, %._crit_edge.loopexit.i.i.i ], [ %i.r, %.lr.ph85.split.i.i.i ]
  %indvars.iv.next100.i.i.i = add nsw i64 %indvars.iv99.i.i.i, 1 ; 2 uses
  %i.ae = sext i32 %i.ac to i64
  %i.af = icmp slt i64 %indvars.iv.next100.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph85.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESA_SA_SA_SA_ibbE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", !llvm.loop !232

.preheader.preheader.i.i.i:                       ; preds = %bb.ai, %.lr.ph.i.i.i
  %indvars.iv96.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next97.i.i.i, %bb.ai ] ; 3 uses
  %i.ag = phi i32 [ %i.r, %.lr.ph.i.i.i ], [ %i.nr, %bb.ai ]
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !238, !nonnull !67, !align !124
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !239, !nonnull !67, !align !124
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !38
  %i.al = mul i64 %i.ak, %indvars.iv99.i.i.i
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !240, !nonnull !67, !align !125
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !39
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %indvars.iv96.i.i.i, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.aq ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !99 ; 2 uses
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.aw = load <4 x float>, ptr %i.av, align 4, !tbaa !99 ; 7 uses
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> %i.aw, <4 x i32> <i32 0, i32 4, i32 poison, i32 0> ; 2 uses
  %i.ay = insertelement <4 x float> %i.ax, float -0.000000e+00, i64 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ba = load float, ptr %i.az, align 4, !tbaa !99 ; 3 uses
  %i.bb = insertelement <4 x float> %i.ay, float %i.ba, i64 2
  %i.bc = load <8 x float>, ptr %i.ar, align 4, !tbaa !99 ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.be = load <2 x float>, ptr %i.bd, align 4, !tbaa !99 ; 4 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bg = shufflevector <8 x float> %i.bc, <8 x float> %i.bf, <4 x i32> <i32 0, i32 poison, i32 8, i32 0>
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !99 ; 2 uses
  %i.bj = insertelement <4 x float> %i.bg, float %i.bi, i64 1 ; 2 uses
  %i.bk = insertelement <4 x float> %i.bj, float %i.ba, i64 3
  %i.bl = shufflevector <8 x float> %i.bc, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float 1.000000e+00, i64 3
  %i.bn = fmul <4 x float> %i.bm, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.bo = extractelement <2 x float> %i.be, i64 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !99 ; 3 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = fmul float %i.br, f0xBEB60B61
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bo, float f0x3F360B61, float %i.bs)
  %i.bu = insertelement <4 x float> %i.bn, float %i.bt, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0x3E360B61>, <4 x float> %i.bu)
  %i.bw = fadd <4 x float> %i.bb, %i.bv           ; 3 uses
  %i.bx = shufflevector <4 x float> %i.aw, <4 x float> %i.au, <4 x i32> <i32 0, i32 poison, i32 4, i32 0>
  %i.by = insertelement <4 x float> %i.bx, float %i.ba, i64 1
  %i.bz = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.cb = shufflevector <8 x float> %i.bf, <8 x float> %i.bc, <4 x i32> <i32 poison, i32 0, i32 8, i32 poison>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.cd = shufflevector <2 x float> %i.bq, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <8 x float> %i.bc, <8 x float> %i.cd, <4 x i32> <i32 4, i32 8, i32 poison, i32 4>
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.cg = load <2 x float>, ptr %i.cf, align 4, !tbaa !99 ; 3 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ce, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cj = fmul <4 x float> %i.ci, <float f0x3EB60B61, float f0x3EB60B61, float f0xBEB60B61, float f0xBEB60B61>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> splat (float f0x3F360B61), <4 x float> %i.cj)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> splat (float f0x3E360B61), <4 x float> %i.ck) ; 3 uses
  %i.cm = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cn = shufflevector <4 x float> %i.ax, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.co = shufflevector <2 x float> %i.cg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cp = shufflevector <8 x float> %i.co, <8 x float> %i.bc, <4 x i32> <i32 0, i32 12, i32 poison, i32 0>
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cr = fmul <4 x float> %i.cq, <float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0x3EB60B61>
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> <float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3F360B61>, <4 x float> %i.cr)
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> <float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3E360B61>, <4 x float> %i.cs) ; 3 uses
  %i.cu = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> %i.cm, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> %i.au, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %i.cx = shufflevector <2 x float> %i.be, <2 x float> %i.at, <4 x i32> <i32 0, i32 poison, i32 3, i32 0>
  %i.cy = shufflevector <8 x float> %i.bc, <8 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cx, <4 x float> %i.cy, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.da = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 1>
  %i.db = shufflevector <8 x float> %i.co, <8 x float> %i.bc, <4 x i32> <i32 poison, i32 0, i32 12, i32 poison>
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dd = fmul <4 x float> %i.dc, <float f0x3E638E39, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> <float f0xBE638E39, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61>, <4 x float> %i.dd)
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> <float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61>, <4 x float> %i.de) ; 3 uses
  %i.dg = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.aw, <4 x float> %i.dg, <4 x i32> <i32 0, i32 3, i32 5, i32 0>
  %i.di = shufflevector <8 x float> %i.bc, <8 x float> poison, <4 x i32> <i32 4, i32 1, i32 0, i32 4> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.au, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %i.aw, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.dl = shufflevector <4 x float> %i.di, <4 x float> %i.aw, <4 x i32> <i32 0, i32 6, i32 poison, i32 3>
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.dn = fmul <4 x float> %i.dm, <float f0xBE638E39, float f0xBE638E39, float f0x3E638E39, float f0x3E638E39>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> splat (float f0xBE638E39), <4 x float> %i.dn)
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> splat (float f0xBE638E39), <4 x float> %i.do) ; 3 uses
  %i.dq = shufflevector <8 x float> %i.bc, <8 x float> poison, <3 x i32> <i32 2, i32 5, i32 poison>
  %i.dr = shufflevector <4 x float> %i.aw, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.ds = shufflevector <3 x float> %i.dq, <3 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.dt = shufflevector <8 x float> %i.bc, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.du = shufflevector <8 x float> <float -0.000000e+00, float 1.000000e+00, float -0.000000e+00, float poison, float poison, float poison, float poison, float poison>, <8 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 9>
  %i.dv = fmul <4 x float> %i.du, <float 1.000000e+00, float -0.000000e+00, float 1.000000e+00, float f0xBE638E39>
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0xBE638E39>, <4 x float> %i.dv)
  %i.dx = fadd <4 x float> %i.dw, %i.bn
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0xBE638E39>, <4 x float> %i.dx) ; 3 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.dp, <4 x i32> <i32 0, i32 3, i32 6, i32 poison>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 6 uses
  %i.eb = shufflevector <4 x float> %i.dy, <4 x float> %i.dp, <4 x i32> <i32 1, i32 4, i32 7, i32 poison>
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 5 uses
  %i.ed = shufflevector <4 x float> %i.dy, <4 x float> %i.dp, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 7> ; 5 uses
  %i.ef = fmul <4 x float> %i.ec, zeroinitializer ; 2 uses
  %i.eg = fadd <4 x float> %i.ea, %i.ef
  %i.eh = fmul <4 x float> %i.ec, splat (float f0xBE638E39)
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> splat (float f0xBE638E39), <4 x float> %i.eh)
  %i.ej = fmul <4 x float> %i.ec, splat (float f0xBEB60B61)
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> splat (float f0x3F360B61), <4 x float> %i.ej)
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> splat (float f0x3E360B61), <4 x float> %i.ek)
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> zeroinitializer, <4 x float> %i.ef)
  %i.en = fadd <4 x float> %i.ee, %i.em
  %i.eo = shufflevector <4 x float> %i.ee, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ep = shufflevector <4 x float> %i.eg, <4 x float> %i.ei, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = shufflevector <4 x float> %i.ee, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eq = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.er = shufflevector <4 x float> %i.ec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.es = fmul <8 x float> %i.er, <float f0x3E638E39, float f0x3E638E39, float f0x3E638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61>
  %i.et = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.eq, <8 x float> <float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61>, <8 x float> %i.es)
  %4 = shufflevector <4 x float> %i.ee, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eu = shufflevector <4 x float> %i.ec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ev = fmul <8 x float> %i.eu, <float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0x3EB60B61, float f0x3EB60B61, float f0x3EB60B61, float f0x3EB60B61>
  %i.ew = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %5, <8 x float> <float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3F360B61, float f0x3F360B61, float f0x3F360B61, float f0x3F360B61>, <8 x float> %i.ev)
  %i.ex = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> <float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3E360B61, float f0x3E360B61, float f0x3E360B61, float f0x3E360B61>, <8 x float> %i.ew)
  %i.ey = shufflevector <4 x float> %i.el, <4 x float> %i.en, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <8 x float> %i.eo, <8 x float> %3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ez = shufflevector <8 x float> %i.ep, <8 x float> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fa = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %6, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61>, <16 x float> %i.ez)
  %i.fb = shufflevector <8 x float> %i.ex, <8 x float> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.fa, <16 x float> %i.fb, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 8 uses
  %i.fc = shufflevector <4 x float> %i.ct, <4 x float> %i.cl, <4 x i32> <i32 0, i32 3, i32 6, i32 poison>
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 6 uses
  %i.fe = shufflevector <4 x float> %i.ct, <4 x float> %i.cl, <4 x i32> <i32 1, i32 4, i32 7, i32 poison>
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 5 uses
  %i.fg = shufflevector <4 x float> %i.ct, <4 x float> %i.cl, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 7, i32 6> ; 5 uses
  %i.fi = fmul <4 x float> %i.ff, zeroinitializer ; 2 uses
  %i.fj = fadd <4 x float> %i.fd, %i.fi
  %i.fk = fmul <4 x float> %i.ff, splat (float f0xBE638E39)
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> splat (float f0xBE638E39), <4 x float> %i.fk)
  %i.fm = fmul <4 x float> %i.ff, splat (float f0xBEB60B61)
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> splat (float f0x3F360B61), <4 x float> %i.fm)
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> splat (float f0x3E360B61), <4 x float> %i.fn)
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> zeroinitializer, <4 x float> %i.fi)
  %i.fq = fadd <4 x float> %i.fh, %i.fp
  %i.fr = shufflevector <4 x float> %i.fh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fs = shufflevector <4 x float> %i.fj, <4 x float> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x float> %i.fh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ft = shufflevector <4 x float> %i.fd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fu = shufflevector <4 x float> %i.ff, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fv = fmul <8 x float> %i.fu, <float f0x3E638E39, float f0x3E638E39, float f0x3E638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61>
  %i.fw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ft, <8 x float> <float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61>, <8 x float> %i.fv)
  %8 = shufflevector <4 x float> %i.fh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <4 x float> %i.fd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fx = shufflevector <4 x float> %i.ff, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fy = fmul <8 x float> %i.fx, <float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0x3EB60B61, float f0x3EB60B61, float f0x3EB60B61, float f0x3EB60B61>
  %i.fz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %9, <8 x float> <float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3F360B61, float f0x3F360B61, float f0x3F360B61, float f0x3F360B61>, <8 x float> %i.fy)
  %i.ga = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %8, <8 x float> <float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3E360B61, float f0x3E360B61, float f0x3E360B61, float f0x3E360B61>, <8 x float> %i.fz)
  %i.gb = shufflevector <4 x float> %i.fo, <4 x float> %i.fq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %10 = shufflevector <8 x float> %i.fr, <8 x float> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gc = shufflevector <8 x float> %i.fs, <8 x float> %i.fw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gd = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %10, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61>, <16 x float> %i.gc)
  %i.ge = shufflevector <8 x float> %i.ga, <8 x float> %i.gb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec.1 = shufflevector <16 x float> %i.gd, <16 x float> %i.ge, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 8 uses
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !83
  %i.gh = load ptr, ptr %i.k, align 8, !tbaa !242, !nonnull !67, !align !125
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !39
  %i.gj = mul nsw i32 %i.gi, %i.v
  %i.gk = add nsw i32 %i.gj, %i.x
  %i.gl = shl i32 %i.ag, 8
  %i.gm = mul i32 %i.gl, %i.gk
  %i.gn = sext i32 %i.gm to i64
  %i.go = trunc nuw nsw i64 %indvars.iv96.i.i.i to i32
  %i.gp = shl i32 %i.go, 4
  %i.gq = add i32 %i.ab, %i.gp
  %i.gr = sext i32 %i.gq to i64
  %.idx140.i.i.i = add nsw i64 %i.gn, %i.gr       ; 2 uses
  %i.gs = shl nsw i64 %.idx140.i.i.i, 2           ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gg, i64 %i.gs ; 2 uses
  %.not.i.i.i = icmp slt i64 %.idx140.i.i.i, 0
  br i1 %.not.i.i.i, label %.noexc.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader.i.i.i
  %i.gu = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !38
  %.idx.i.i.i = shl nuw nsw i64 %i.gv, 2
  %i.gw = add nuw nsw i64 %i.gs, 16
  %.not75.i.i.i = icmp sgt i64 %i.gw, %.idx.i.i.i
  br i1 %.not75.i.i.i, label %.noexc.i.i.i.i, label %bb.e

.noexc.i.i.i.i:                                   ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %.preheader.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.gx, ptr %2, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 68, ptr %i.a, align 8, !tbaa !38
  %i.gy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.gy, ptr %2, align 8, !tbaa !35
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  store i64 %i.gz, ptr %i.gx, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.gy, ptr noundef nonnull align 1 dereferenceable(68) @.str.22, i64 68, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !105
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gz
  store i8 0, ptr %i.hb, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @"__func__._ZZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbENK3$_1clERKNS_5RangeE", ptr noundef nonnull @.str.1, i32 noundef 345) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i.i.i.i
  unreachable

bb.d:                                             ; preds = %.noexc.i.i.i.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gx
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.hf = load i64, ptr %i.gx, align 8, !tbaa !36
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.hc

bb.e:                                             ; preds = %bb.b
  %.sroa.038.0.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %.sroa.038.0.vec.extract, ptr %i.gt, align 4
  %i.hh = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !39
  %i.hj = shl nsw i32 %i.hi, 4
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.hk ; 4 uses
  %i.hm = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !83 ; 2 uses
  %.not.1.i.i.i = icmp ugt ptr %i.hn, %i.hl
  br i1 %.not.1.i.i.i, label %.noexc.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hp = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !38
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hq
  %.not75.1.i.i.i = icmp ugt ptr %i.ho, %i.hr
  br i1 %.not75.1.i.i.i, label %.noexc.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.038.16.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %.sroa.038.16.vec.extract, ptr %i.hl, align 4
  %i.hs = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !39
  %i.hu = shl nsw i32 %i.ht, 4
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hv ; 4 uses
  %i.hx = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !83 ; 2 uses
  %.not.2.i.i.i = icmp ugt ptr %i.hy, %i.hw
  br i1 %.not.2.i.i.i, label %.noexc.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ia = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !38
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ib
  %.not75.2.i.i.i = icmp ugt ptr %i.hz, %i.ic
  br i1 %.not75.2.i.i.i, label %.noexc.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.038.32.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %.sroa.038.32.vec.extract, ptr %i.hw, align 4
  %i.id = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !39
  %i.if = shl nsw i32 %i.ie, 4
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.ig ; 4 uses
  %i.ii = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !83 ; 2 uses
  %.not.3.i.i.i = icmp ugt ptr %i.ij, %i.ih
  br i1 %.not.3.i.i.i, label %.noexc.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.im = load i64, ptr %i.il, align 8, !tbaa !38
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.im
  %.not75.3.i.i.i = icmp ugt ptr %i.ik, %i.in
  br i1 %.not75.3.i.i.i, label %.noexc.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.038.48.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %.sroa.038.48.vec.extract, ptr %i.ih, align 4
  %i.io = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !39
  %i.iq = shl nsw i32 %i.ip, 4
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ir ; 4 uses
  %i.it = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !83 ; 2 uses
  %.not.4.i.i.i = icmp ugt ptr %i.iu, %i.is
  br i1 %.not.4.i.i.i, label %.noexc.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iw = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !38
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ix
  %.not75.4.i.i.i = icmp ugt ptr %i.iv, %i.iy
  br i1 %.not75.4.i.i.i, label %.noexc.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.038.64.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x float> %.sroa.038.64.vec.extract, ptr %i.is, align 4
  %i.iz = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !39
  %i.jb = shl nsw i32 %i.ja, 4
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.jc ; 4 uses
  %i.je = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !83 ; 2 uses
  %.not.5.i.i.i = icmp ugt ptr %i.jf, %i.jd
  br i1 %.not.5.i.i.i, label %.noexc.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jh = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !38
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.ji
  %.not75.5.i.i.i = icmp ugt ptr %i.jg, %i.jj
  br i1 %.not75.5.i.i.i, label %.noexc.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.038.80.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x float> %.sroa.038.80.vec.extract, ptr %i.jd, align 4
  %i.jk = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !39
  %i.jm = shl nsw i32 %i.jl, 4
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jn ; 4 uses
  %i.jp = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !83 ; 2 uses
  %.not.6.i.i.i = icmp ugt ptr %i.jq, %i.jo
  br i1 %.not.6.i.i.i, label %.noexc.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.js = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !38
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jt
  %.not75.6.i.i.i = icmp ugt ptr %i.jr, %i.ju
  br i1 %.not75.6.i.i.i, label %.noexc.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.038.96.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x float> %.sroa.038.96.vec.extract, ptr %i.jo, align 4
  %i.jv = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !39
  %i.jx = shl nsw i32 %i.jw, 4
end_hunk_0
