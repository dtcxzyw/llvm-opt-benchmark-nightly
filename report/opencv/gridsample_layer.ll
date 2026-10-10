Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gridsample_layer?download=true
inline.NumInlined: 3976
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfSA_PfiiiiiibfEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.kh = fcmp olt float %i.kf, %.sroa.42.0.i.i.i
  %i.ki = select i1 %i.kh, float %.sroa.42.0.i.i.i, float %i.kf ; 2 uses
  %i.kj = fcmp olt float %.sroa.46.0.i.i.i, %.sroa.speculated.2.2.i.i.i
  %.sroa.speculated.3.2.i.i.i = select i1 %i.kj, float %.sroa.46.0.i.i.i, float %.sroa.speculated.2.2.i.i.i ; 2 uses
  %i.kk = fcmp olt float %i.ki, %.sroa.46.0.i.i.i
  %i.kl = select i1 %i.kk, float %.sroa.46.0.i.i.i, float %i.ki ; 2 uses
  %i.km = fmul float %i.dn, %.sroa.54.0.i.i.i
  %i.kn = tail call float @llvm.fmuladd.f32(float %.sroa.50.0.i.i.i, float %i.cr, float %i.km)
  %i.ko = tail call float @llvm.fmuladd.f32(float %.sroa.58.0.i.i.i, float %i.dp, float %i.kn)
  %i.kp = tail call float @llvm.fmuladd.f32(float %.sroa.62.0.i.i.i, float %i.dr, float %i.ko)
  %i.kq = fcmp olt float %.sroa.50.0.i.i.i, %.sroa.speculated.3.2.i.i.i
  %.sroa.speculated.352.i.i.i = select i1 %i.kq, float %.sroa.50.0.i.i.i, float %.sroa.speculated.3.2.i.i.i ; 2 uses
  %i.kr = fcmp olt float %i.kl, %.sroa.50.0.i.i.i
  %i.ks = select i1 %i.kr, float %.sroa.50.0.i.i.i, float %i.kl ; 2 uses
  %i.kt = fcmp olt float %.sroa.54.0.i.i.i, %.sroa.speculated.352.i.i.i
  %.sroa.speculated.1.3.i.i.i = select i1 %i.kt, float %.sroa.54.0.i.i.i, float %.sroa.speculated.352.i.i.i ; 2 uses
  %i.ku = fcmp olt float %i.ks, %.sroa.54.0.i.i.i
  %i.kv = select i1 %i.ku, float %.sroa.54.0.i.i.i, float %i.ks ; 2 uses
  %i.kw = fcmp olt float %.sroa.58.0.i.i.i, %.sroa.speculated.1.3.i.i.i
  %.sroa.speculated.2.3.i.i.i = select i1 %i.kw, float %.sroa.58.0.i.i.i, float %.sroa.speculated.1.3.i.i.i ; 2 uses
  %i.kx = fcmp olt float %i.kv, %.sroa.58.0.i.i.i
  %i.ky = select i1 %i.kx, float %.sroa.58.0.i.i.i, float %i.kv ; 2 uses
  %i.kz = fcmp olt float %.sroa.62.0.i.i.i, %.sroa.speculated.2.3.i.i.i
  %.sroa.speculated.3.3.i.i.i = select i1 %i.kz, float %.sroa.62.0.i.i.i, float %.sroa.speculated.2.3.i.i.i ; 2 uses
  %i.la = fcmp olt float %i.ky, %.sroa.62.0.i.i.i
  %i.lb = select i1 %i.la, float %.sroa.62.0.i.i.i, float %i.ky ; 2 uses
  %i.lc = fmul float %i.dt, %i.jj
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.it, float %i.da, float %i.lc)
  %i.le = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.dv, float %i.ld)
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.kp, float %i.dy, float %i.le) ; 2 uses
  %i.lg = fcmp olt float %i.lb, %i.lf
  %i.lh = select i1 %i.lg, float %i.lb, float %i.lf ; 2 uses
  %i.li = fcmp olt float %.sroa.speculated.3.3.i.i.i, %i.lh
  %.sroa.speculated7.i.i.i = select i1 %i.li, float %i.lh, float %.sroa.speculated.3.3.i.i.i
  %i.lj = mul i64 %indvars.iv.i.i.i, %i.et
  %gep36.i.i.i = getelementptr [4 x i8], ptr %invariant.gep35.i.i.i, i64 %i.lj
  store float %.sroa.speculated7.i.i.i, ptr %gep36.i.i.i, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.f, !llvm.loop !1687

._crit_edge.i.i.i:                                ; preds = %.loopexit.i.i.i, %bb.e
  %indvars.iv.next55.i.i.i = add nuw nsw i64 %indvars.iv54.i.i.i, 1 ; 2 uses
  %exitcond58.not.i.i.i = icmp eq i64 %indvars.iv.next55.i.i.i, %wide.trip.count57.i.i.i
  br i1 %exitcond58.not.i.i.i, label %._crit_edge40.i.i.i, label %bb.b, !llvm.loop !1688

_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS6_PfiiiiiibfEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge40.i.i.i, %bb.a, %.lr.ph43.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfSA_PfiiiiiibfEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS7_PfiiiiiibfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS5_PfiiiiiibfEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !116
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS7_PfiiiiiibfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %.val, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS7_PfiiiiiibfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(176) %.val6, i64 176, i1 false), !tbaa.struct !135
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS7_PfiiiiiibfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS7_PfiiiiiibfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 176) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS7_PfiiiiiibfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi1EEEvPKfS7_PfiiiiiibfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi2EEEvPKfSA_PfiiiiiibfEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %i.a = alloca [4 x [4 x float]], align 16       ; 5 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !22   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.b, align 4            ; 2 uses
  %i.c = icmp slt i32 %.val2, %.val3
  br i1 %i.c, label %.lr.ph35.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi2EEEvPKfS6_PfiiiiiibfEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph35.i.i.i:                                   ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !33    ; 22 uses
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1716, !nonnull !79, !align !113
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1717, !nonnull !79, !align !114
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1718, !nonnull !79, !align !114
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1719, !nonnull !79, !align !114
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1720, !nonnull !79, !align !114
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1721, !nonnull !79, !align !114
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1722, !nonnull !79, !align !114
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1723, !nonnull !79, !align !114
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1724, !nonnull !79, !align !114
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1725, !nonnull !79, !align !113 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !79, !align !113
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !14 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph35.split.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi2EEEvPKfS6_PfiiiiiibfEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph35.split.i.i.i:                             ; preds = %.lr.ph35.i.i.i, %._crit_edge32.i.i.i
  %i.at = phi i32 [ %i.bq, %._crit_edge32.i.i.i ], [ %i.ar, %.lr.ph35.i.i.i ] ; 2 uses
  %i.au = phi i32 [ %i.br, %._crit_edge32.i.i.i ], [ %i.ar, %.lr.ph35.i.i.i ] ; 2 uses
  %.09433.i.i.i = phi i32 [ %i.bs, %._crit_edge32.i.i.i ], [ %.val2, %.lr.ph35.i.i.i ] ; 3 uses
  %i.av = load i32, ptr %i.d, align 4, !tbaa !14  ; 3 uses
  %i.aw = sdiv i32 %.09433.i.i.i, %i.av           ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.av                ; 0 uses
  %.recomposed = srem i32 %.09433.i.i.i, %i.av
  %i.ay = sext i32 %i.aw to i64                   ; 3 uses
  %i.az = mul i64 %i.j, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = mul i64 %i.p, %i.ay
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bb
  %i.bd = sext i32 %.recomposed to i64            ; 2 uses
  %i.be = mul i64 %i.s, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.be
  %i.bg = mul i64 %i.y, %i.ay
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bg
  %i.bi = mul i64 %i.ab, %i.bd
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = icmp sgt i32 %i.au, 0
  br i1 %i.bk, label %.lr.ph31.i.i.i, label %._crit_edge32.i.i.i

.lr.ph31.i.i.i:                                   ; preds = %.lr.ph35.split.i.i.i
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !1726, !nonnull !79, !align !113
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !1727, !nonnull !79, !align !113
  %i.bn = load ptr, ptr %i.ai, align 8, !tbaa !1728, !nonnull !79, !align !113
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !1729, !nonnull !79, !align !113
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !1730, !nonnull !79, !align !113 ; 2 uses
  br label %bb.b

._crit_edge32.i.i.i:                              ; preds = %._crit_edge.i.i.i, %.lr.ph35.split.i.i.i
  %i.bq = phi i32 [ %i.at, %.lr.ph35.split.i.i.i ], [ %i.rl, %._crit_edge.i.i.i ]
  %i.br = phi i32 [ %i.au, %.lr.ph35.split.i.i.i ], [ %i.rl, %._crit_edge.i.i.i ]
  %i.bs = add nsw i32 %.09433.i.i.i, 1            ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.bs, %.val3
  br i1 %exitcond61.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9bicubic2DILi2EEEvPKfS6_PfiiiiiibfEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph35.split.i.i.i, !llvm.loop !1711

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph31.i.i.i
  %i.bt = phi i32 [ %i.at, %.lr.ph31.i.i.i ], [ %i.rl, %._crit_edge.i.i.i ]
  %indvars.iv58.i.i.i = phi i64 [ 0, %.lr.ph31.i.i.i ], [ %indvars.iv.next59.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv58.i.i.i, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.i.i
  %i.bv = load float, ptr %i.af, align 4, !tbaa !20
  %i.bw = load float, ptr %i.bl, align 4, !tbaa !20
  %i.bx = load float, ptr %i.bm, align 4, !tbaa !20
  %i.by = load float, ptr %i.bn, align 4, !tbaa !20
  %i.bz = load <2 x float>, ptr %i.bu, align 4, !tbaa !20
  %i.ca = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bx, i64 1
  %i.cc = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.by, i64 1
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cb, <2 x float> %i.cd) ; 3 uses
  %i.cf = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ce) ; 2 uses
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ch = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cg) ; 6 uses
  %i.ci = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cj = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ci) ; 4 uses
  %i.ck = sitofp i32 %i.ch to float               ; 2 uses
  %i.cl = extractelement <2 x float> %i.ce, i64 0
  %i.cm = fsub float %i.cl, %i.ck                 ; 4 uses
  %i.cn = sitofp i32 %i.cj to float
  %i.co = extractelement <2 x float> %i.ce, i64 1
  %i.cp = fsub float %i.co, %i.cn                 ; 4 uses
  %i.cq = load float, ptr %i.bo, align 4, !tbaa !20 ; 7 uses
  %i.cr = fadd float %i.cm, 1.000000e+00          ; 3 uses
  %i.cs = fmul float %i.cq, -5.000000e+00         ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cr, float %i.cs)
  %i.cu = fmul float %i.cq, 8.000000e+00          ; 2 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cr, float %i.cu)
  %i.cw = fmul float %i.cq, -4.000000e+00         ; 2 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cr, float %i.cw) ; 5 uses
  %i.cy = fadd float %i.cq, 2.000000e+00
  %i.cz = fadd float %i.cq, 3.000000e+00
  %i.da = fneg float %i.cz
  %i.db = fsub float 1.000000e+00, %i.cm          ; 2 uses
  %i.dc = fsub float 1.000000e+00, %i.cx
  %i.dd = fadd float %i.cp, 1.000000e+00          ; 3 uses
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.dd, float %i.cs)
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.dd, float %i.cu)
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.dd, float %i.cw) ; 2 uses
  %i.dh = fsub float 1.000000e+00, %i.cp          ; 2 uses
  %i.di = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.db, i64 1
  %i.dm = insertelement <4 x float> %i.dl, float %i.cp, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %i.dh, i64 3 ; 2 uses
  %i.do = insertelement <4 x float> poison, float %i.da, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.dn, <4 x float> %i.dp)
  %i.dr = fmul <4 x float> %i.dn, %i.dq           ; 4 uses
  %i.ds = extractelement <4 x float> %i.dr, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.cm, float 1.000000e+00) ; 5 uses
  %i.du = extractelement <4 x float> %i.dr, i64 1
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.db, float 1.000000e+00) ; 5 uses
  %i.dw = fsub float %i.dc, %i.dt
  %i.dx = fsub float %i.dw, %i.dv                 ; 4 uses
  %i.dy = extractelement <4 x float> %i.dr, i64 2
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.cp, float 1.000000e+00) ; 2 uses
  %i.ea = extractelement <4 x float> %i.dr, i64 3
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.dh, float 1.000000e+00) ; 2 uses
  %i.ec = fsub float 1.000000e+00, %i.dg
  %i.ed = fsub float %i.ec, %i.dz
  %i.ee = fsub float %i.ed, %i.eb
  %i.ef = icmp sgt i32 %i.ch, 0
  %i.eg = icmp sgt i32 %i.cj, 0
  %or.cond.i.i.i = and i1 %i.ef, %i.eg
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.eh = add nuw nsw i32 %i.ch, 2
  %i.ei = load ptr, ptr %i.ak, align 8, !tbaa !1731, !nonnull !79, !align !113
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !14
  %i.ek = icmp slt i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.el = add nuw nsw i32 %i.cj, 2
  %i.em = load ptr, ptr %i.al, align 8, !tbaa !1732, !nonnull !79, !align !113
  %i.en = load i32, ptr %i.em, align 4, !tbaa !14
  %i.eo = icmp slt i32 %i.el, %i.en
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ep = phi i1 [ false, %bb.c ], [ %i.eo, %bb.d ], [ false, %bb.b ]
  %i.eq = load i32, ptr %i.bp, align 4, !tbaa !14
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.es = load ptr, ptr %i.an, align 8, !tbaa !1733, !nonnull !79, !align !114
  %i.et = load i64, ptr %i.es, align 8, !tbaa !18
  %i.eu = add nsw i32 %i.cj, -1
  %i.ev = add nsw i32 %i.ch, -1
  %i.ew = sitofp i32 %i.ev to float
  %2 = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <2 x i32> zeroinitializer
  %4 = add nsw <2 x i32> %3, <i32 1, i32 2>
  %5 = sitofp <2 x i32> %4 to <2 x float>         ; 2 uses
  %i.ex = sext i32 %i.eu to i64                   ; 2 uses
  %i.ey = sext i32 %i.ch to i64
  %i.ez = load ptr, ptr %i.aq, align 8, !tbaa !1734, !nonnull !79, !align !114
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !18
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.bj, i64 %indvars.iv58.i.i.i
  %6 = extractelement <2 x float> %5, i64 0
  %7 = extractelement <2 x float> %5, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv55.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next56.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %i.fb = mul i64 %indvars.iv55.i.i.i, %i.et
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.fb ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br i1 %i.ep, label %.loopexit.loopexit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.f
  %i.fd = load ptr, ptr %i.al, align 8, !tbaa !1732, !nonnull !79, !align !113 ; 4 uses
  %i.fe = load ptr, ptr %i.ak, align 8, !tbaa !1731, !nonnull !79, !align !113 ; 4 uses
  %i.ff = load ptr, ptr %i.ao, align 8, !tbaa !1735, !nonnull !79, !align !114
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !18 ; 4 uses
  %i.fh = load ptr, ptr %i.ap, align 8, !tbaa !1736, !nonnull !79
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !16, !range !78, !noundef !79
  %i.fj = trunc nuw i8 %i.fi to i1                ; 9 uses
  %i.fk = select i1 %i.fj, float 0.000000e+00, float -5.000000e-01 ; 24 uses
  %i.fl = fsub float %i.ew, %i.fk
  %i.fm = fsub float %i.ck, %i.fk
  %i.fn = fsub float %6, %i.fk
  %i.fo = fsub float %7, %i.fk
  br label %bb.g

.loopexit.loopexit.i.i.i:                         ; preds = %bb.f
  %i.fp = load ptr, ptr %i.ao, align 8, !tbaa !1735, !nonnull !79, !align !114
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !18 ; 4 uses
  %i.fr = mul i64 %i.fq, %i.ex
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fr
  %i.ft = getelementptr [4 x i8], ptr %i.fs, i64 %i.ey
  %i.fu = getelementptr i8, ptr %i.ft, i64 -4     ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fq ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fq ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fq
  %i.fy = load <4 x float>, ptr %i.fu, align 4, !tbaa !20 ; 2 uses
  store <4 x float> %i.fy, ptr %i.a, align 16, !tbaa !20
  %i.fz = load <4 x float>, ptr %i.fv, align 4, !tbaa !20
  %i.ga = load <4 x float>, ptr %i.fw, align 4, !tbaa !20
  %i.gb = load <4 x float>, ptr %i.fx, align 4, !tbaa !20
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.ga, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.gd = shufflevector <4 x float> %i.fy, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ge = shufflevector <16 x float> %i.gd, <16 x float> %i.gc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gf = shufflevector <4 x float> %i.fz, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <16 x float> %i.ge, <16 x float> %i.gf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.loopexit.i.i.i

bb.g:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit141.i.i.i, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit141.i.i.i ] ; 3 uses
  %i.gh = add nsw i64 %indvars.iv.i.i.i, %i.ex    ; 4 uses
  %i.gi = load i32, ptr %i.fd, align 4, !tbaa !14 ; 4 uses
  %i.gj = load i32, ptr %i.fe, align 4, !tbaa !14 ; 4 uses
  %i.gk = icmp slt i32 %i.gj, 2
  br i1 %i.gk, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gl = add nsw i32 %i.gj, -1
  %i.gm = uitofp nneg i32 %i.gl to float
  %i.gn = uitofp nneg i32 %i.gj to float
  %i.go = fadd float %i.gn, -5.000000e-01
  %i.gp = select i1 %i.fj, float %i.gm, float %i.go
  %i.gq = fsub float %i.gp, %i.fk                 ; 2 uses
  %i.gr = fmul nnan float %i.gq, 2.000000e+00     ; 3 uses
  %i.gs = tail call float @fmodf(float noundef %i.fl, float noundef %i.gr) #22 ; 3 uses
  %i.gt = fcmp olt float %i.gs, 0.000000e+00
  %i.gu = fadd float %i.gr, %i.gs
  %.0.i.i.i.i.i = select i1 %i.gt, float %i.gu, float %i.gs ; 3 uses
  %i.gv = fcmp ogt float %.0.i.i.i.i.i, %i.gq
  %i.gw = fsub float %i.gr, %.0.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.gv, float %i.gw, float %.0.i.i.i.i.i
  %i.gx = fadd float %i.fk, %.1.i.i.i.i.i
  %i.gy = fadd float %i.gx, 5.000000e-01
  %i.gz = tail call float @llvm.floor.f32(float %i.gy)
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.020.i.i.i.i.i = phi float [ %i.gz, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ha = insertelement <4 x float> poison, float %.020.i.i.i.i.i, i64 0
  %i.hb = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ha) ; 3 uses
  %i.hc = icmp slt i32 %i.gi, 2
  br i1 %i.hc, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i.i.i.i
  %i.hd = trunc nsw i64 %i.gh to i32
  %i.he = sitofp i32 %i.hd to float
  %i.hf = add nsw i32 %i.gi, -1
  %i.hg = uitofp nneg i32 %i.hf to float
  %i.hh = uitofp nneg i32 %i.gi to float
  %i.hi = fadd float %i.hh, -5.000000e-01
  %i.hj = select i1 %i.fj, float %i.hg, float %i.hi
  %i.hk = fsub float %i.hj, %i.fk                 ; 2 uses
  %i.hl = fmul nnan float %i.hk, 2.000000e+00     ; 3 uses
  %i.hm = fsub float %i.he, %i.fk
  %i.hn = tail call float @fmodf(float noundef %i.hm, float noundef %i.hl) #22 ; 3 uses
  %i.ho = fcmp olt float %i.hn, 0.000000e+00
  %i.hp = fadd float %i.hl, %i.hn
  %.0.i23.i.i.i.i = select i1 %i.ho, float %i.hp, float %i.hn ; 3 uses
  %i.hq = fcmp ogt float %.0.i23.i.i.i.i, %i.hk
  %i.hr = fsub float %i.hl, %.0.i23.i.i.i.i
  %.1.i24.i.i.i.i = select i1 %i.hq, float %i.hr, float %.0.i23.i.i.i.i
  %i.hs = fadd float %i.fk, %.1.i24.i.i.i.i
  %i.ht = fadd float %i.hs, 5.000000e-01
  %i.hu = tail call float @llvm.floor.f32(float %i.ht)
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i.i.i.i: ; preds = %bb.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i.i.i.i
  %.020.i25.i.i.i.i = phi float [ %i.hu, %bb.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i.i.i.i ]
  %i.hv = insertelement <4 x float> poison, float %.020.i25.i.i.i.i, i64 0
  %i.hw = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hv) ; 3 uses
  %i.hx = or i32 %i.hw, %i.hb
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.hx, -1
  %.not.i.i.i.i = icmp slt i32 %i.hb, %i.gj
  %or.cond.i.i.i.i = and i1 %.not.i.i.i.i, %or.cond.not.i.i.i.i
  %.not21.i.i.i.i = icmp slt i32 %i.hw, %i.gi
  %or.cond22.i.i.i.i = and i1 %.not21.i.i.i.i, %or.cond.i.i.i.i
  br i1 %or.cond22.i.i.i.i, label %bb.j, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit.i.i.i

bb.j:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i.i.i.i
  %i.hy = zext nneg i32 %i.hw to i64
  %i.hz = mul i64 %i.fg, %i.hy
  %i.ia = zext nneg i32 %i.hb to i64
  %i.ib = getelementptr [4 x i8], ptr %i.fc, i64 %i.hz
  %i.ic = getelementptr [4 x i8], ptr %i.ib, i64 %i.ia
  %i.id = load float, ptr %i.ic, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit.i.i.i: ; preds = %bb.j, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i.i.i.i
  %.0.i.i.i.i = phi float [ %i.id, %bb.j ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i.i.i.i ]
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.i.i.i ; 4 uses
  store float %.0.i.i.i.i, ptr %i.ie, align 16, !tbaa !20
  %i.if = load i32, ptr %i.fd, align 4, !tbaa !14 ; 4 uses
  %i.ig = load i32, ptr %i.fe, align 4, !tbaa !14 ; 4 uses
  %i.ih = icmp slt i32 %i.ig, 2
  br i1 %i.ih, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i99.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit.i.i.i
  %i.ii = add nsw i32 %i.ig, -1
  %i.ij = uitofp nneg i32 %i.ii to float
  %i.ik = uitofp nneg i32 %i.ig to float
  %i.il = fadd float %i.ik, -5.000000e-01
  %i.im = select i1 %i.fj, float %i.ij, float %i.il
  %i.in = fsub float %i.im, %i.fk                 ; 2 uses
  %i.io = fmul nnan float %i.in, 2.000000e+00     ; 3 uses
  %i.ip = tail call float @fmodf(float noundef %i.fm, float noundef %i.io) #22 ; 3 uses
  %i.iq = fcmp olt float %i.ip, 0.000000e+00
  %i.ir = fadd float %i.io, %i.ip
  %.0.i.i97.i.i.i = select i1 %i.iq, float %i.ir, float %i.ip ; 3 uses
  %i.is = fcmp ogt float %.0.i.i97.i.i.i, %i.in
  %i.it = fsub float %i.io, %.0.i.i97.i.i.i
  %.1.i.i98.i.i.i = select i1 %i.is, float %i.it, float %.0.i.i97.i.i.i
  %i.iu = fadd float %i.fk, %.1.i.i98.i.i.i
  %i.iv = fadd float %i.iu, 5.000000e-01
  %i.iw = tail call float @llvm.floor.f32(float %i.iv)
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i99.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i99.i.i.i: ; preds = %bb.k, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit.i.i.i
  %.020.i.i100.i.i.i = phi float [ %i.iw, %bb.k ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit.i.i.i ]
  %i.ix = insertelement <4 x float> poison, float %.020.i.i100.i.i.i, i64 0
  %i.iy = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ix) ; 3 uses
  %i.iz = icmp slt i32 %i.if, 2
  br i1 %i.iz, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i103.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i99.i.i.i
  %i.ja = trunc nsw i64 %i.gh to i32
  %i.jb = sitofp i32 %i.ja to float
  %i.jc = add nsw i32 %i.if, -1
  %i.jd = uitofp nneg i32 %i.jc to float
  %i.je = uitofp nneg i32 %i.if to float
  %i.jf = fadd float %i.je, -5.000000e-01
  %i.jg = select i1 %i.fj, float %i.jd, float %i.jf
  %i.jh = fsub float %i.jg, %i.fk                 ; 2 uses
  %i.ji = fmul nnan float %i.jh, 2.000000e+00     ; 3 uses
  %i.jj = fsub float %i.jb, %i.fk
  %i.jk = tail call float @fmodf(float noundef %i.jj, float noundef %i.ji) #22 ; 3 uses
  %i.jl = fcmp olt float %i.jk, 0.000000e+00
  %i.jm = fadd float %i.ji, %i.jk
  %.0.i23.i101.i.i.i = select i1 %i.jl, float %i.jm, float %i.jk ; 3 uses
  %i.jn = fcmp ogt float %.0.i23.i101.i.i.i, %i.jh
  %i.jo = fsub float %i.ji, %.0.i23.i101.i.i.i
  %.1.i24.i102.i.i.i = select i1 %i.jn, float %i.jo, float %.0.i23.i101.i.i.i
  %i.jp = fadd float %i.fk, %.1.i24.i102.i.i.i
  %i.jq = fadd float %i.jp, 5.000000e-01
  %i.jr = tail call float @llvm.floor.f32(float %i.jq)
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i103.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i103.i.i.i: ; preds = %bb.l, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i99.i.i.i
  %.020.i25.i104.i.i.i = phi float [ %i.jr, %bb.l ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i99.i.i.i ]
  %i.js = insertelement <4 x float> poison, float %.020.i25.i104.i.i.i, i64 0
  %i.jt = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.js) ; 3 uses
  %i.ju = or i32 %i.jt, %i.iy
  %or.cond.not.i105.i.i.i = icmp sgt i32 %i.ju, -1
  %.not.i106.i.i.i = icmp slt i32 %i.iy, %i.ig
  %or.cond.i107.i.i.i = and i1 %.not.i106.i.i.i, %or.cond.not.i105.i.i.i
  %.not21.i108.i.i.i = icmp slt i32 %i.jt, %i.if
  %or.cond22.i109.i.i.i = and i1 %.not21.i108.i.i.i, %or.cond.i107.i.i.i
  br i1 %or.cond22.i109.i.i.i, label %bb.m, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit111.i.i.i

bb.m:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i103.i.i.i
  %i.jv = zext nneg i32 %i.jt to i64
  %i.jw = mul i64 %i.fg, %i.jv
  %i.jx = zext nneg i32 %i.iy to i64
  %i.jy = getelementptr [4 x i8], ptr %i.fc, i64 %i.jw
  %i.jz = getelementptr [4 x i8], ptr %i.jy, i64 %i.jx
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit111.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit111.i.i.i: ; preds = %bb.m, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i103.i.i.i
  %.0.i110.i.i.i = phi float [ %i.ka, %bb.m ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit26.i103.i.i.i ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store float %.0.i110.i.i.i, ptr %i.kb, align 4, !tbaa !20
  %i.kc = load i32, ptr %i.fd, align 4, !tbaa !14 ; 4 uses
  %i.kd = load i32, ptr %i.fe, align 4, !tbaa !14 ; 4 uses
  %i.ke = icmp slt i32 %i.kd, 2
  br i1 %i.ke, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_reflectEfib.exit.i114.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi2EEEfPKfiiiimb.exit111.i.i.i
  %i.kf = add nsw i32 %i.kd, -1
  %i.kg = uitofp nneg i32 %i.kf to float
  %i.kh = uitofp nneg i32 %i.kd to float
  %i.ki = fadd float %i.kh, -5.000000e-01
  %i.kj = select i1 %i.fj, float %i.kg, float %i.ki
  %i.kk = fsub float %i.kj, %i.fk                 ; 2 uses
  %i.kl = fmul nnan float %i.kk, 2.000000e+00     ; 3 uses
end_hunk_0
