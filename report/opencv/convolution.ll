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
  %i.ad = phi i32 [ %i.mt, %._crit_edge.loopexit.i.i.i ], [ %i.r, %.lr.ph85.split.i.i.i ]
  %indvars.iv.next100.i.i.i = add nsw i64 %indvars.iv99.i.i.i, 1 ; 2 uses
  %i.ae = sext i32 %i.ac to i64
  %i.af = icmp slt i64 %indvars.iv.next100.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph85.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESA_SA_SA_SA_ibbE3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", !llvm.loop !232

.preheader.preheader.i.i.i:                       ; preds = %bb.ai, %.lr.ph.i.i.i
  %indvars.iv96.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next97.i.i.i, %bb.ai ] ; 3 uses
  %i.ag = phi i32 [ %i.r, %.lr.ph.i.i.i ], [ %i.mt, %bb.ai ]
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
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 5 uses
  %3 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eb = shufflevector <4 x float> %i.dy, <4 x float> %i.dp, <4 x i32> <i32 1, i32 4, i32 7, i32 poison>
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 5 uses
  %i.ed = shufflevector <4 x float> %i.dy, <4 x float> %i.dp, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 7> ; 3 uses
  %4 = shufflevector <4 x float> %i.ee, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %5 = shufflevector <8 x float> %4, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ef = fmul <4 x float> %i.ec, zeroinitializer ; 2 uses
  %6 = fadd <4 x float> %i.ea, %i.ef
  %i.eg = fmul <4 x float> %i.ec, splat (float f0xBE638E39)
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> splat (float f0xBE638E39), <4 x float> %i.eg)
  %7 = shufflevector <4 x float> %6, <4 x float> %i.eh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ei = shufflevector <4 x float> %i.ec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %8 = fmul <8 x float> %i.ei, <float f0x3E638E39, float f0x3E638E39, float f0x3E638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61>
  %9 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> <float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61>, <8 x float> %8)
  %10 = shufflevector <8 x float> %7, <8 x float> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ej = shufflevector <4 x float> %i.ec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ek = fmul <8 x float> %i.ej, <float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0x3EB60B61, float f0x3EB60B61, float f0x3EB60B61, float f0x3EB60B61>
  %i.el = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> <float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3F360B61, float f0x3F360B61, float f0x3F360B61, float f0x3F360B61>, <8 x float> %i.ek)
  %11 = fmul <4 x float> %i.ec, splat (float f0xBEB60B61)
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> splat (float f0x3F360B61), <4 x float> %11)
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> splat (float f0x3E360B61), <4 x float> %12)
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> zeroinitializer, <4 x float> %i.ef)
  %15 = fadd <4 x float> %i.ee, %14
  %i.em = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> <float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3E360B61, float f0x3E360B61, float f0x3E360B61, float f0x3E360B61>, <8 x float> %i.el)
  %i.en = shufflevector <4 x float> %13, <4 x float> %15, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eo = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %5, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61>, <16 x float> %10)
  %i.ep = shufflevector <8 x float> %i.em, <8 x float> %i.en, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.eo, <16 x float> %i.ep, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 8 uses
  %i.eq = shufflevector <4 x float> %i.ct, <4 x float> %i.cl, <4 x i32> <i32 0, i32 3, i32 6, i32 poison>
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 5 uses
  %16 = shufflevector <4 x float> %i.er, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.es = shufflevector <4 x float> %i.ct, <4 x float> %i.cl, <4 x i32> <i32 1, i32 4, i32 7, i32 poison>
  %i.et = shufflevector <4 x float> %i.es, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 5 uses
  %i.eu = shufflevector <4 x float> %i.ct, <4 x float> %i.cl, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 7, i32 6> ; 3 uses
  %17 = shufflevector <4 x float> %i.ev, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %18 = shufflevector <8 x float> %17, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ew = fmul <4 x float> %i.et, zeroinitializer ; 2 uses
  %19 = fadd <4 x float> %i.er, %i.ew
  %i.ex = fmul <4 x float> %i.et, splat (float f0xBE638E39)
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> splat (float f0xBE638E39), <4 x float> %i.ex)
  %20 = shufflevector <4 x float> %19, <4 x float> %i.ey, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ez = shufflevector <4 x float> %i.et, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %21 = fmul <8 x float> %i.ez, <float f0x3E638E39, float f0x3E638E39, float f0x3E638E39, float f0x3E638E39, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61, float f0x3CB60B61>
  %22 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %16, <8 x float> <float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61>, <8 x float> %21)
  %23 = shufflevector <8 x float> %20, <8 x float> %22, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fa = shufflevector <4 x float> %i.et, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fb = fmul <8 x float> %i.fa, <float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0xBCB60B61, float f0x3EB60B61, float f0x3EB60B61, float f0x3EB60B61, float f0x3EB60B61>
  %i.fc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %16, <8 x float> <float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3C360B61, float f0x3F360B61, float f0x3F360B61, float f0x3F360B61, float f0x3F360B61>, <8 x float> %i.fb)
  %24 = fmul <4 x float> %i.et, splat (float f0xBEB60B61)
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> splat (float f0x3F360B61), <4 x float> %24)
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> splat (float f0x3E360B61), <4 x float> %25)
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> zeroinitializer, <4 x float> %i.ew)
  %28 = fadd <4 x float> %i.ev, %27
  %i.fd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %17, <8 x float> <float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3E360B61, float f0x3E360B61, float f0x3E360B61, float f0x3E360B61>, <8 x float> %i.fc)
  %i.fe = shufflevector <4 x float> %26, <4 x float> %28, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ff = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %18, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0xBE638E39, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61, float f0x3D360B61>, <16 x float> %23)
  %i.fg = shufflevector <8 x float> %i.fd, <8 x float> %i.fe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec.1 = shufflevector <16 x float> %i.ff, <16 x float> %i.fg, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 8 uses
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !83
  %i.fj = load ptr, ptr %i.k, align 8, !tbaa !242, !nonnull !67, !align !125
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !39
  %i.fl = mul nsw i32 %i.fk, %i.v
  %i.fm = add nsw i32 %i.fl, %i.x
  %i.fn = shl i32 %i.ag, 8
  %i.fo = mul i32 %i.fn, %i.fm
  %i.fp = sext i32 %i.fo to i64
  %i.fq = trunc nuw nsw i64 %indvars.iv96.i.i.i to i32
  %i.fr = shl i32 %i.fq, 4
  %i.fs = add i32 %i.ab, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %.idx140.i.i.i = add nsw i64 %i.fp, %i.ft       ; 2 uses
  %i.fu = shl nsw i64 %.idx140.i.i.i, 2           ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fi, i64 %i.fu ; 2 uses
  %.not.i.i.i = icmp slt i64 %.idx140.i.i.i, 0
  br i1 %.not.i.i.i, label %.noexc.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader.i.i.i
  %i.fw = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !38
  %.idx.i.i.i = shl nuw nsw i64 %i.fx, 2
  %i.fy = add nuw nsw i64 %i.fu, 16
  %.not75.i.i.i = icmp sgt i64 %i.fy, %.idx.i.i.i
  br i1 %.not75.i.i.i, label %.noexc.i.i.i.i, label %bb.e

.noexc.i.i.i.i:                                   ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %.preheader.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.fz, ptr %2, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 68, ptr %i.a, align 8, !tbaa !38
  %i.ga = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.ga, ptr %2, align 8, !tbaa !35
  %i.gb = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.ga, ptr noundef nonnull align 1 dereferenceable(68) @.str.22, i64 68, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !105
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  store i8 0, ptr %i.gd, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @"__func__._ZZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibbENK3$_1clERKNS_5RangeE", ptr noundef nonnull @.str.1, i32 noundef 345) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i.i.i.i
  unreachable

bb.d:                                             ; preds = %.noexc.i.i.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fz
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.gh = load i64, ptr %i.fz, align 8, !tbaa !36
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.ge

bb.e:                                             ; preds = %bb.b
  %.sroa.038.0.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %.sroa.038.0.vec.extract, ptr %i.fv, align 4
  %i.gj = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !39
  %i.gl = shl nsw i32 %i.gk, 4
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.gm ; 4 uses
  %i.go = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !83 ; 2 uses
  %.not.1.i.i.i = icmp ugt ptr %i.gp, %i.gn
  br i1 %.not.1.i.i.i, label %.noexc.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gr = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gs
  %.not75.1.i.i.i = icmp ugt ptr %i.gq, %i.gt
  br i1 %.not75.1.i.i.i, label %.noexc.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.038.16.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %.sroa.038.16.vec.extract, ptr %i.gn, align 4
  %i.gu = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !39
  %i.gw = shl nsw i32 %i.gv, 4
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.gx ; 4 uses
  %i.gz = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !83 ; 2 uses
  %.not.2.i.i.i = icmp ugt ptr %i.ha, %i.gy
  br i1 %.not.2.i.i.i, label %.noexc.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hc = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !38
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hd
  %.not75.2.i.i.i = icmp ugt ptr %i.hb, %i.he
  br i1 %.not75.2.i.i.i, label %.noexc.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.038.32.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %.sroa.038.32.vec.extract, ptr %i.gy, align 4
  %i.hf = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !39
  %i.hh = shl nsw i32 %i.hg, 4
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hi ; 4 uses
  %i.hk = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !83 ; 2 uses
  %.not.3.i.i.i = icmp ugt ptr %i.hl, %i.hj
  br i1 %.not.3.i.i.i, label %.noexc.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hn = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !38
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ho
  %.not75.3.i.i.i = icmp ugt ptr %i.hm, %i.hp
  br i1 %.not75.3.i.i.i, label %.noexc.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.038.48.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %.sroa.038.48.vec.extract, ptr %i.hj, align 4
  %i.hq = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !39
  %i.hs = shl nsw i32 %i.hr, 4
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ht ; 4 uses
  %i.hv = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !83 ; 2 uses
  %.not.4.i.i.i = icmp ugt ptr %i.hw, %i.hu
  br i1 %.not.4.i.i.i, label %.noexc.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hy = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !38
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hz
  %.not75.4.i.i.i = icmp ugt ptr %i.hx, %i.ia
  br i1 %.not75.4.i.i.i, label %.noexc.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.038.64.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 16, i32 17, i32 18, i32 19>
  store <4 x float> %.sroa.038.64.vec.extract, ptr %i.hu, align 4
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !39
  %i.id = shl nsw i32 %i.ic, 4
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.ie ; 4 uses
  %i.ig = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !83 ; 2 uses
  %.not.5.i.i.i = icmp ugt ptr %i.ih, %i.if
  br i1 %.not.5.i.i.i, label %.noexc.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !38
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ik
  %.not75.5.i.i.i = icmp ugt ptr %i.ii, %i.il
  br i1 %.not75.5.i.i.i, label %.noexc.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.038.80.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 20, i32 21, i32 22, i32 23>
  store <4 x float> %.sroa.038.80.vec.extract, ptr %i.if, align 4
  %i.im = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.in = load i32, ptr %i.im, align 4, !tbaa !39
  %i.io = shl nsw i32 %i.in, 4
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.ip ; 4 uses
  %i.ir = load ptr, ptr %i.j, align 8, !tbaa !241, !nonnull !67, !align !124
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !83 ; 2 uses
  %.not.6.i.i.i = icmp ugt ptr %i.is, %i.iq
  br i1 %.not.6.i.i.i, label %.noexc.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.iu = load ptr, ptr %i.l, align 8, !tbaa !243, !nonnull !67, !align !124
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !38
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.iv
  %.not75.6.i.i.i = icmp ugt ptr %i.it, %i.iw
  br i1 %.not75.6.i.i.i, label %.noexc.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.038.96.vec.extract = shufflevector <32 x float> %interleaved.vec, <32 x float> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27>
  store <4 x float> %.sroa.038.96.vec.extract, ptr %i.iq, align 4
  %i.ix = load ptr, ptr %i.f, align 8, !tbaa !235, !nonnull !67, !align !125
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !39
  %i.iz = shl nsw i32 %i.iy, 4
end_hunk_0
