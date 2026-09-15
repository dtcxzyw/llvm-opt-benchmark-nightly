Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 117
begin_hunk_0_@"_ZNSt17_Function_handlerIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEZNS0_19ImageTileIntegrator6RenderEvE3$_3E9_M_invokeERKSt9_Any_dataOS2_OS6_":bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.a, align 4            ; 2 uses
  %.val5 = load ptr, ptr %2, align 8, !tbaa !731  ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.val3 to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %.val3, 32
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i to i32 ; 3 uses
  %.sroa.5.8.extract.trunc.i.i.i = trunc i64 %.val4 to i32 ; 2 uses
  %.sroa.8.8.extract.shift.i.i.i = lshr i64 %.val4, 32
  %.sroa.8.8.extract.trunc.i.i.i = trunc nuw i64 %.sroa.8.8.extract.shift.i.i.i to i32 ; 2 uses
  %.not.i.i.i.i = icmp sge i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.5.8.extract.trunc.i.i.i
  %i.b = tail call i32 @llvm.smax.i32(i32 %.sroa.4.0.extract.trunc.i.i.i, i32 %.sroa.8.8.extract.trunc.i.i.i)
  %.not5.i.i = icmp sge i32 %.sroa.4.0.extract.trunc.i.i.i, %.sroa.8.8.extract.trunc.i.i.i
  %.not.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %"_ZSt10__invoke_rIvRZN4pbrt19ImageTileIntegrator6RenderEvE3$_3JNS0_7Bounds2IiEEN4pstd4spanINS7_IfEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i.i = and i64 %.val3, 4294967295
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %invariant.op.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 4294967296
  %i.f = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN4pbrt3RGBixEi.exit.2.i.i.i ] ; 4 uses
  %.sroa.025.4.extract.trunc47.i.i.i = phi i32 [ %.sroa.4.0.extract.trunc.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.025.4.extract.trunc.i.i.i, %_ZN4pbrt3RGBixEi.exit.2.i.i.i ]
  %.sroa.025.0.extract.trunc46.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.025.0.extract.trunc.i.i.i, %_ZN4pbrt3RGBixEi.exit.2.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i = phi i64 [ %.val3, %.lr.ph.i.i.i ], [ %.sroa.025.1.i.i.i, %_ZN4pbrt3RGBixEi.exit.2.i.i.i ]
  %i.h = load ptr, ptr %.val, align 8, !tbaa !2680, !nonnull !137, !align !686
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !2681, !nonnull !137, !align !637 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !149
  %i.k = add nsw i32 %i.j, %.sroa.025.0.extract.trunc46.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !150
  %i.n = add nsw i32 %i.m, %.sroa.025.4.extract.trunc47.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.n to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i17.i.i.i = zext i32 %i.k to i64
  %.sroa.0.0.insert.insert.i18.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i17.i.i.i ; 3 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !2682, !nonnull !137, !align !637
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !2683, !nonnull !137, !align !637
  %i.r = load i32, ptr %i.q, align 4, !tbaa !49
  %i.s = add nsw i32 %i.r, %i.p
  %i.t = sitofp i32 %i.s to float
  %i.u = fdiv float 2.000000e+00, %i.t            ; 3 uses
  %i.v = load i64, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.w = and i64 %i.v, 144115188075855871
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = lshr i64 %i.v, 57
  %i.z = trunc nuw nsw i64 %i.y to i32
  switch i32 %i.z, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call { <2 x float>, float } @_ZNK4pbrt7RGBFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(168) %i.x, i64 %.sroa.0.0.insert.insert.i18.i.i.i, float noundef %i.u)
  br label %_ZN4pbrt3RGBixEi.exit.2.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ab = tail call { <2 x float>, float } @_ZNK4pbrt11GBufferFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(872) %i.x, i64 %.sroa.0.0.insert.insert.i18.i.i.i, float noundef %i.u)
  br label %_ZN4pbrt3RGBixEi.exit.2.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.ac = tail call { <2 x float>, float } @_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(180) %i.x, i64 %.sroa.0.0.insert.insert.i18.i.i.i, float noundef %i.u)
  br label %_ZN4pbrt3RGBixEi.exit.2.i.i.i

_ZN4pbrt3RGBixEi.exit.2.i.i.i:                    ; preds = %bb.e, %bb.d, %bb.c
  %.pn.i.i.i.i.i.i = phi { <2 x float>, float } [ %i.ac, %bb.e ], [ %i.aa, %bb.c ], [ %i.ab, %bb.d ] ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { <2 x float>, float } %.pn.i.i.i.i.i.i, 1
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 1
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i, i64 0
  %i.ad = load ptr, ptr %.val5, align 8, !tbaa !733
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  store float %.sroa.0.0.vec.extract.i.i.i, ptr %i.ae, align 4, !tbaa !189
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !733
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i.i.i
  store float %.sroa.0.4.vec.extract.i.i.i, ptr %i.ag, align 4, !tbaa !189
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !733
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i
  store float %.fca.1.extract.i.i.i, ptr %i.ai, align 4, !tbaa !189
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.aj = add nsw i32 %.sroa.025.0.extract.trunc46.i.i.i, 1 ; 2 uses
  %.sroa.025.0.insert.ext.i.i.i = zext i32 %i.aj to i64
  %.sroa.025.0.insert.mask.i.i.i = and i64 %.sroa.025.044.i.i.i, -4294967296 ; 2 uses
  %.sroa.025.0.insert.insert.i.i.i = or disjoint i64 %.sroa.025.0.insert.mask.i.i.i, %.sroa.025.0.insert.ext.i.i.i
  %i.ak = icmp eq i32 %i.aj, %.sroa.5.8.extract.trunc.i.i.i
  %.sroa.025.4.insert.insert.reass.i.i.i = add i64 %invariant.op.i.i.i, %.sroa.025.0.insert.mask.i.i.i
  %.sroa.025.1.i.i.i = select i1 %i.ak, i64 %.sroa.025.4.insert.insert.reass.i.i.i, i64 %.sroa.025.0.insert.insert.i.i.i ; 3 uses
  %.sroa.025.0.extract.trunc.i.i.i = trunc i64 %.sroa.025.1.i.i.i to i32 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.025.0.extract.trunc.i.i.i
  %.sroa.025.4.extract.shift.i.i.i = lshr i64 %.sroa.025.1.i.i.i, 32
  %.sroa.025.4.extract.trunc.i.i.i = trunc nuw i64 %.sroa.025.4.extract.shift.i.i.i to i32 ; 2 uses
  %i.al = icmp ne i32 %i.b, %.sroa.025.4.extract.trunc.i.i.i
  %i.am = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.al
  br i1 %i.am, label %bb.b, label %"_ZSt10__invoke_rIvRZN4pbrt19ImageTileIntegrator6RenderEvE3$_3JNS0_7Bounds2IiEEN4pstd4spanINS7_IfEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

"_ZSt10__invoke_rIvRZN4pbrt19ImageTileIntegrator6RenderEvE3$_3JNS0_7Bounds2IiEEN4pstd4spanINS7_IfEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %_ZN4pbrt3RGBixEi.exit.2.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4pbrt7Bounds2IiEEN4pstd4spanINS4_IfEEEEEZNS0_19ImageTileIntegrator6RenderEvE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_3E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt19ImageTileIntegrator6RenderEvE3$_3", ptr %0, align 8, !tbaa !719
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_3E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !165
  store ptr %.val, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_3E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !2684
  store ptr %i.a, ptr %0, align 8, !tbaa !165
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_3E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !165 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_3E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #39
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_3E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt19ImageTileIntegrator6RenderEvE3$_3E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt7RGBFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, float noundef %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN4pbrt3RGBixEi.exit.2:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = sub i32 %.sroa.0.0.extract.trunc.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !150
  %i.f = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !683
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !149
  %i.k = sub nsw i32 %i.j, %i.b
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = add nsw i32 %i.c, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.n ; 6 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !607
  %i.q = fptrunc <2 x double> %i.p to <2 x float> ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !607
  %i.t = fptrunc double %i.s to float             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !2686
  %i.w = fptrunc double %i.v to float             ; 3 uses
  %i.x = fcmp une float %i.w, 0.000000e+00        ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fdiv <2 x float> %i.q, %i.z
  %i.ab = fdiv float %i.t, %i.w
  %.sroa.0.0 = select i1 %i.x, <2 x float> %i.aa, <2 x float> %i.q
  %.sroa.11.0 = select i1 %i.x, float %i.ab, float %i.t
  %i.ac = fpext float %2 to double                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.af = load atomic i64, ptr %i.ad seq_cst, align 8
  %i.ag = load float, ptr %i.ae, align 8, !tbaa !2687
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ai = load atomic i64, ptr %i.ah seq_cst, align 8
  %i.aj = load float, ptr %i.ae, align 8, !tbaa !2687
  %i.ak = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.al = insertelement <2 x i64> %i.ak, i64 %i.ai, i64 1
  %i.am = bitcast <2 x i64> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.am
  %i.aq = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.aj, i64 1
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  %i.at = fdiv <2 x double> %i.ap, %i.as
  %i.au = fpext <2 x float> %.sroa.0.0 to <2 x double>
  %i.av = fadd <2 x double> %i.at, %i.au
  %i.aw = fptrunc <2 x double> %i.av to <2 x float> ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ay = load atomic i64, ptr %i.ax seq_cst, align 8
  %i.az = load float, ptr %i.ae, align 8, !tbaa !2687
  %i.ba = bitcast i64 %i.ay to double
  %i.bb = fmul double %i.ac, %i.ba
  %i.bc = fpext float %i.az to double
  %i.bd = fdiv double %i.bb, %i.bc
  %i.be = fpext float %.sroa.11.0 to double
  %i.bf = fadd double %i.bd, %i.be
  %i.bg = fptrunc double %i.bf to float           ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 116
  %3 = load <4 x float>, ptr %i.bh, align 4, !tbaa !189 ; 3 uses
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %5 = load <2 x float>, ptr %i.bi, align 4, !tbaa !189
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %7 = shufflevector <4 x float> %3, <4 x float> %6, <2 x i32> <i32 1, i32 4>
  %.sroa.014.i.4.vec.insert.i = insertelement <2 x float> poison, float %i.bg, i64 0
  %8 = shufflevector <2 x float> %.sroa.014.i.4.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <4 x float> %3, <4 x float> %6, <2 x i32> <i32 2, i32 5>
  %10 = fmul <2 x float> %8, %9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 124
  %11 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %11, %4
  %13 = fadd <2 x float> %12, zeroinitializer
  %14 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %15 = fmul <2 x float> %14, %7
  %16 = fadd <2 x float> %13, %15
  %17 = fadd <2 x float> %16, %10
  %18 = load <2 x float>, ptr %i.bj, align 4, !tbaa !189
  %19 = fmul <2 x float> %18, %i.aw               ; 2 uses
  %20 = extractelement <2 x float> %19, i64 0
  %i.bk = fadd float %20, 0.000000e+00
  %21 = extractelement <2 x float> %19, i64 1
  %i.bl = fadd float %21, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !189
  %i.bo = fmul float %i.bn, %i.bg
  %i.bp = fadd float %i.bo, %i.bl
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %17, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.bp, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt11GBufferFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(872) %0, i64 %1, float noundef %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN4pbrt3RGBixEi.exit.2:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = sub i32 %.sroa.0.0.extract.trunc.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.e = load i32, ptr %i.d, align 4, !tbaa !150
  %i.f = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2690
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.j = load i32, ptr %i.i, align 8, !tbaa !149
  %i.k = sub nsw i32 %i.j, %i.b
  %i.l = mul nsw i32 %i.k, %i.f
  %i.m = add nsw i32 %i.c, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [192 x i8], ptr %i.h, i64 %i.n ; 6 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !607
  %i.q = fptrunc <2 x double> %i.p to <2 x float> ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !607
  %i.t = fptrunc double %i.s to float             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !2692
  %i.w = fptrunc double %i.v to float             ; 3 uses
  %i.x = fcmp une float %i.w, 0.000000e+00        ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fdiv <2 x float> %i.q, %i.z
  %i.ab = fdiv float %i.t, %i.w
  %.sroa.0.0 = select i1 %i.x, <2 x float> %i.aa, <2 x float> %i.q
  %.sroa.11.0 = select i1 %i.x, float %i.ab, float %i.t
  %i.ac = fpext float %2 to double                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 3 uses
  %i.af = load atomic i64, ptr %i.ad seq_cst, align 8
  %i.ag = load float, ptr %i.ae, align 8, !tbaa !2694
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ai = load atomic i64, ptr %i.ah seq_cst, align 8
  %i.aj = load float, ptr %i.ae, align 8, !tbaa !2694
  %i.ak = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.al = insertelement <2 x i64> %i.ak, i64 %i.ai, i64 1
  %i.am = bitcast <2 x i64> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.am
  %i.aq = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.aj, i64 1
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  %i.at = fdiv <2 x double> %i.ap, %i.as
  %i.au = fpext <2 x float> %.sroa.0.0 to <2 x double>
  %i.av = fadd <2 x double> %i.at, %i.au
  %i.aw = fptrunc <2 x double> %i.av to <2 x float> ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ay = load atomic i64, ptr %i.ax seq_cst, align 8
  %i.az = load float, ptr %i.ae, align 8, !tbaa !2694
  %i.ba = bitcast i64 %i.ay to double
  %i.bb = fmul double %i.ac, %i.ba
  %i.bc = fpext float %i.az to double
  %i.bd = fdiv double %i.bb, %i.bc
  %i.be = fpext float %.sroa.11.0 to double
  %i.bf = fadd double %i.bd, %i.be
  %i.bg = fptrunc double %i.bf to float           ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 852
  %3 = load <4 x float>, ptr %i.bh, align 4, !tbaa !189 ; 3 uses
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %5 = load <2 x float>, ptr %i.bi, align 4, !tbaa !189
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %7 = shufflevector <4 x float> %3, <4 x float> %6, <2 x i32> <i32 1, i32 4>
  %.sroa.014.i.4.vec.insert.i = insertelement <2 x float> poison, float %i.bg, i64 0
  %8 = shufflevector <2 x float> %.sroa.014.i.4.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <4 x float> %3, <4 x float> %6, <2 x i32> <i32 2, i32 5>
  %10 = fmul <2 x float> %8, %9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 860
  %11 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %11, %4
  %13 = fadd <2 x float> %12, zeroinitializer
  %14 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %15 = fmul <2 x float> %14, %7
  %16 = fadd <2 x float> %13, %15
  %17 = fadd <2 x float> %16, %10
  %18 = load <2 x float>, ptr %i.bj, align 4, !tbaa !189
  %19 = fmul <2 x float> %18, %i.aw               ; 2 uses
  %20 = extractelement <2 x float> %19, i64 0
  %i.bk = fadd float %20, 0.000000e+00
  %21 = extractelement <2 x float> %19, i64 1
  %i.bl = fadd float %21, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !189
  %i.bo = fmul float %i.bn, %i.bg
  %i.bp = fadd float %i.bo, %i.bl
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %17, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.bp, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

declare { <2 x float>, float } @_ZNK4pbrt12SpectralFilm11GetPixelRGBENS_6Point2IiEEf(ptr noundef nonnull align 8 dereferenceable(180), i64, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4pbrt7Bounds2IiEEEZNS0_19ImageTileIntegrator6RenderEvE3$_4E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.anon.360, align 8            ; 6 uses
  %4 = alloca %"class.pbrt::Sampler", align 8     ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !165   ; 8 uses
  %.val2 = load i64, ptr %1, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.c, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.val2 to i32 ; 4 uses
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.val2, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32 ; 3 uses
  %.sroa.7.8.extract.trunc.i.i.i = trunc i64 %.val3 to i32 ; 3 uses
  %.sroa.11.8.extract.shift.i.i.i = lshr i64 %.val3, 32
  %.sroa.11.8.extract.trunc.i.i.i = trunc nuw i64 %.sroa.11.8.extract.shift.i.i.i to i32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2699 ; 2 uses
  %i.f = load ptr, ptr %.val, align 8, !tbaa !2700, !nonnull !137, !align !686
  %i.g = tail call noundef nonnull align 64 dereferenceable(40) ptr @_ZN4pbrt11ThreadLocalINS_13ScratchBufferEE3GetEv(ptr noundef nonnull align 8 dereferenceable(112) %i.f) ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2701, !nonnull !137, !align !686
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pbrt11ThreadLocalINS_7SamplerEE3GetEv(ptr noundef nonnull align 8 dereferenceable(112) %i.i) ; 2 uses
  %.not.i.i.i.i = icmp sge i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.7.8.extract.trunc.i.i.i
  %i.k = tail call i32 @llvm.smax.i32(i32 %.sroa.6.0.extract.trunc.i.i.i, i32 %.sroa.11.8.extract.trunc.i.i.i)
  %.not1.i.i = icmp sge i32 %.sroa.6.0.extract.trunc.i.i.i, %.sroa.11.8.extract.trunc.i.i.i
  %.not.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not1.i.i
  br i1 %.not.i.i, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit.i.i.i, label %.lr.ph51.i.i.i

.lr.ph51.i.i.i:                                   ; preds = %bb.a
  %.sroa.0.0.insert.ext.i.i.i = and i64 %.val2, 4294967295
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN4pbrt19ImageTileIntegrator6RenderEvE11threadPixel)
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.o = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN4pbrt19ImageTileIntegrator6RenderEvE17threadSampleIndex)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %invariant.op.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 4294967296
  %i.u = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.v = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.c

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit.i.i.i:   ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2702, !nonnull !137, !align !686 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2703, !nonnull !137, !align !637
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2704, !nonnull !137, !align !637
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.ae = sub nsw i32 %i.aa, %i.ad
  %i.af = sub nsw i32 %.sroa.7.8.extract.trunc.i.i.i, %.sroa.0.0.extract.trunc.i.i.i
  %i.ag = sub nsw i32 %.sroa.11.8.extract.trunc.i.i.i, %.sroa.6.0.extract.trunc.i.i.i
  %i.ah = mul i32 %i.ag, %i.af
  %i.ai = mul i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.al = load i8, ptr %i.ak, align 8, !range !136
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i25.i.i.i = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %or.cond.i25.i.i.i, label %"_ZSt10__invoke_rIvRZN4pbrt19ImageTileIntegrator6RenderEvE3$_4JNS0_7Bounds2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit", label %bb.b

bb.b:                                             ; preds = %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit.i.i.i
  %i.an = sext i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ap = atomicrmw add ptr %i.ao, i64 %i.an seq_cst, align 8 ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN4pbrt19ImageTileIntegrator6RenderEvE3$_4JNS0_7Bounds2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

bb.c:                                             ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i, %.lr.ph51.i.i.i
  %.sroa.031.0.extract.trunc50.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i, %.lr.ph51.i.i.i ], [ %.sroa.031.0.extract.trunc.i.i.i, %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i ]
  %.sroa.031.049.i.i.i = phi i64 [ %.val2, %.lr.ph51.i.i.i ], [ %.sroa.031.1.i.i.i, %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i ] ; 6 uses
  call void @_ZN4pbrt21StatsReportPixelStartENS_6Point2IiEE(i64 %.sroa.031.049.i.i.i)
  store i64 %.sroa.031.049.i.i.i, ptr %i.l, align 8
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !2704, !nonnull !137, !align !637
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49 ; 2 uses
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !2703, !nonnull !137, !align !637
  %i.at = load i32, ptr %i.as, align 4, !tbaa !49
  %i.au = icmp slt i32 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i

_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i:        ; preds = %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i, %bb.c
  call void @_ZN4pbrt19StatsReportPixelEndENS_6Point2IiEE(i64 %.sroa.031.049.i.i.i)
  %i.av = add nsw i32 %.sroa.031.0.extract.trunc50.i.i.i, 1 ; 2 uses
  %.sroa.031.0.insert.ext.i.i.i = zext i32 %i.av to i64
  %.sroa.031.0.insert.mask.i.i.i = and i64 %.sroa.031.049.i.i.i, -4294967296 ; 2 uses
  %.sroa.031.0.insert.insert.i.i.i = or disjoint i64 %.sroa.031.0.insert.mask.i.i.i, %.sroa.031.0.insert.ext.i.i.i
  %i.aw = icmp eq i32 %i.av, %.sroa.7.8.extract.trunc.i.i.i
  %.sroa.031.4.insert.insert.i.reass.i.i = add i64 %invariant.op.i.i, %.sroa.031.0.insert.mask.i.i.i
  %.sroa.031.1.i.i.i = select i1 %i.aw, i64 %.sroa.031.4.insert.insert.i.reass.i.i, i64 %.sroa.031.0.insert.insert.i.i.i ; 3 uses
  %.sroa.031.0.extract.trunc.i.i.i = trunc i64 %.sroa.031.1.i.i.i to i32 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.031.0.extract.trunc.i.i.i
  %.sroa.031.4.extract.shift.i.i.i = lshr i64 %.sroa.031.1.i.i.i, 32
  %.sroa.031.4.extract.trunc.i.i.i = trunc nuw i64 %.sroa.031.4.extract.shift.i.i.i to i32
  %i.ax = icmp ne i32 %i.k, %.sroa.031.4.extract.trunc.i.i.i
  %i.ay = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.ax
  br i1 %i.ay, label %bb.c, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i
  %.044.i.i.i = phi i32 [ %i.bt, %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i ], [ %i.ar, %bb.c ] ; 4 uses
  store i32 %.044.i.i.i, ptr %i.o, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.031.049.i.i.i, ptr %2, align 8
  store i32 %.044.i.i.i, ptr %i.a, align 4, !tbaa !49
  store i32 0, ptr %i.b, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %2, ptr %3, align 8, !tbaa !91
  store ptr %i.a, ptr %i.p, align 8, !tbaa !74
  store ptr %i.b, ptr %i.q, align 8, !tbaa !74
  %i.az = load i64, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %i.ba = and i64 %i.az, 144115188075855871
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = lshr i64 %i.az, 57
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -1
  call void @_ZN4pbrt6detail8DispatchIRZNS_7Sampler16StartPixelSampleENS_6Point2IiEEiiEUlT_E_vNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS5_Pvi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.bb, i32 noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !53
  store i64 %i.bf, ptr %4, align 8, !tbaa !53
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 %.sroa.031.049.i.i.i, i32 noundef %.044.i.i.i, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr noundef nonnull align 64 dereferenceable(40) %i.g), !inline_history !2695
  %.sroa.07.010.i.i.i.i = load ptr, ptr %i.r, align 16, !tbaa !86 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %.sroa.07.010.i.i.i.i, %i.r
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.r, align 16, !tbaa !86
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.lr.ph.i.i.i
  %i.bj = phi ptr [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.010.i.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.r
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i, i64 noundef 32) #39
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i
  %.sroa.07.012.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i ], [ %.sroa.07.010.i.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i, i64 16
  %i.bm = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #38 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !217 ; 2 uses
  %.not.i.i5.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i5.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !218
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull %i.bn, i64 noundef %i.bp, i64 noundef 64), !inline_history !2696
  br label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE16deallocate_bytesEPvmm.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.sroa.07.0.i.i.i.i = load ptr, ptr %.sroa.07.012.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %.sroa.07.0.i.i.i.i, %i.r
  br i1 %.not.i30.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN4pbrt13ScratchBuffer5ResetEv.exit.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i.i.i.i
  store <2 x ptr> %i.v, ptr %i.r, align 16, !tbaa !734
  store i64 0, ptr %i.s, align 32, !tbaa !87
  store i32 0, ptr %i.t, align 4, !tbaa !84
  %i.bt = add nsw i32 %.044.i.i.i, 1              ; 2 uses
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !2703, !nonnull !137, !align !637
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !49
  %i.bw = icmp slt i32 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i.i, label %_ZN4pbrt16Bounds2iIteratorppEv.exit.i.i.i, !llvm.loop !2697

"_ZSt10__invoke_rIvRZN4pbrt19ImageTileIntegrator6RenderEvE3$_4JNS0_7Bounds2IiEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4pbrt7Bounds2IiEEEZNS0_19ImageTileIntegrator6RenderEvE3$_4E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
end_hunk_0
