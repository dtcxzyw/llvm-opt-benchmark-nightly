Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrator?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1526
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !301
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = add i64 %.05.i.i.i, 1                    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not.i.i.i, label %_ZSt10__invoke_rIvRZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !1073

_ZSt10__invoke_rIvRZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_JllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit: ; preds = %_ZNKSt8functionIFvlEEclEl.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_, ptr %0, align 8, !tbaa !339
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !138
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !291
  store i64 %i.a, ptr %0, align 8, !tbaa !291
  br label %_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !138   ; 4 uses
  %.val2 = load i64, ptr %1, align 8, !tbaa !178
  %i.a = trunc i64 %.val2 to i32                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1077
  %i.d = load i32, ptr %.val, align 8, !tbaa !440 ; 2 uses
  %i.e = srem i32 %i.a, %i.d
  %i.f = sdiv i32 %i.a, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !441
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !442
  %i.m = add nsw i32 %i.l, %i.f                   ; 3 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  %i.o = and i64 %i.n, 144115188075855871
  %i.p = inttoptr i64 %i.o to ptr                 ; 13 uses
  %i.q = lshr i64 %i.n, 57
  %i.r = trunc nuw nsw i64 %i.q to i32
  switch i32 %i.r, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.t = load i32, ptr %i.s, align 8, !tbaa !441  ; 2 uses
  %i.u = sub i32 %i.j, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 140
  %i.w = load i32, ptr %i.v, align 4, !tbaa !442
  %i.x = sub nsw i32 %i.m, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !446
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !441
  %i.ac = sub nsw i32 %i.ab, %i.t
  %i.ad = mul nsw i32 %i.ac, %i.x
  %i.ae = add nsw i32 %i.u, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 56, i1 false)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit"

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 784
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !441 ; 2 uses
  %i.aj = sub i32 %i.j, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 788
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !442
  %i.am = sub nsw i32 %i.m, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 808
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !449
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 792
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !441
  %i.ar = sub nsw i32 %i.aq, %i.ai
  %i.as = mul nsw i32 %i.ar, %i.am
  %i.at = add nsw i32 %i.aj, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [192 x i8], ptr %i.ao, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.av, i8 0, i64 192, i1 false)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit"

bb.d:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !441 ; 2 uses
  %i.ay = sub i32 %i.j, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !442
  %i.bb = sub nsw i32 %i.m, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1080
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !441
  %i.bg = sub nsw i32 %i.bf, %i.ax
  %i.bh = mul nsw i32 %i.bg, %i.bb
  %i.bi = add nsw i32 %i.ay, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [80 x i8], ptr %i.bd, i64 %i.bj ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  store atomic i64 0, ptr %i.bm seq_cst, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store atomic i64 0, ptr %i.bn seq_cst, align 8
  store atomic i64 0, ptr %i.bl seq_cst, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1084
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !1086
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.bt, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1087
  %i.bw = load i32, ptr %i.bq, align 8, !tbaa !1086
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.by, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1088
  %i.cb = load i32, ptr %i.bq, align 8, !tbaa !1086
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl nsw i64 %i.cc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 0, i64 %i.cd, i1 false)
  br label %"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit"

"_ZSt10__invoke_rIvRZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit": ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !138
  store ptr %.val, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !138 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #23 align 2 {
bb.a:
  %2 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.415, align 8            ; 6 uses
  %4 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %5 = alloca %class.anon.388, align 8            ; 5 uses
  %6 = alloca %class.anon.372, align 8            ; 5 uses
  %7 = alloca %"class.pbrt::Ray", align 8         ; 7 uses
  %8 = alloca %"class.pbrt::LightSampleContext", align 4 ; 5 uses
  %9 = alloca %"class.pbrt::Light", align 8       ; 4 uses
  %10 = alloca %"struct.pbrt::EscapedRayWorkItem", align 8 ; 29 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1098
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !1099
  %.val3 = load i64, ptr %1, align 8, !tbaa !178
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !285 ; 3 uses
  %.val2.val = load ptr, ptr %.val2, align 8, !tbaa !287 ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !328, !noalias !1100
  %i.e = shl i64 %.val3, 32
  %i.f = ashr exact i64 %i.e, 32                  ; 26 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !437, !noalias !1100
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %.val2.val, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !329, !noalias !1100
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.f
  %i.l = load float, ptr %i.k, align 4, !tbaa !437, !noalias !1100
  %.sroa.0.4.vec.insert.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i, float %i.l, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.val, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144, !noalias !1100
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.f
  %i.p = load float, ptr %i.o, align 4, !tbaa !437, !noalias !1100
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.val, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !334, !noalias !1100
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.f
  %i.t = load float, ptr %i.s, align 4, !tbaa !437, !noalias !1100
  %.sroa.0.0.vec.insert.i23.i.i.i.i = insertelement <2 x float> poison, float %i.t, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.val, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !335, !noalias !1100
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.f
  %i.x = load float, ptr %i.w, align 4, !tbaa !437, !noalias !1100
  %.sroa.0.4.vec.insert.i24.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i23.i.i.i.i, float %i.x, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.val2.val, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !150, !noalias !1100
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.f
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !437, !noalias !1100
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.val, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !363, !noalias !1100
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.f
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !130, !noalias !1100
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2.val, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !268, !noalias !1100
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.ai, align 16, !noalias !1100
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !122, !noalias !1100
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2.val, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !268, !noalias !1100
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i29.i.i.i.i = load <2 x float>, ptr %i.al, align 16, !noalias !1100
  %.sroa.2.0..0..sroa_idx.i.i30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.2.0.copyload.i.i31.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i30.i.i.i.i, align 8, !tbaa !122, !noalias !1100
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.val, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !268, !noalias !1100
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i34.i.i.i.i = load <2 x float>, ptr %i.ao, align 16, !noalias !1100
  %.sroa.2.0..0..sroa_idx.i.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.2.0.copyload.i.i36.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i35.i.i.i.i, align 8, !tbaa !122, !noalias !1100
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2.val, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !266, !noalias !1101
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2.val, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !267, !noalias !1101
  %i.at = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i39.i.i.i.i = load <2 x float>, ptr %i.at, align 16, !noalias !1101
  %.sroa.2.0..0..sroa_idx.i.i40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.2.0.copyload.i.i41.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i40.i.i.i.i, align 8, !tbaa !122, !noalias !1101
  %i.au = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i16.i.i.i.i.i = load <2 x float>, ptr %i.au, align 16, !noalias !1101
  %.sroa.2.0..0..sroa_idx.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload.i18.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i17.i.i.i.i.i, align 8, !tbaa !122, !noalias !1101
  %i.av = getelementptr inbounds nuw i8, ptr %.val2.val, i64 216
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !350, !noalias !1102
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.f
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.az = getelementptr inbounds nuw i8, ptr %.val2.val, i64 224
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !351, !noalias !1102
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.f
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.4.vec.insert.i.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, float %i.bc, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.val2.val, i64 240
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !350, !noalias !1102
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.f
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.0.vec.insert.i5.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2.val, i64 248
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !351, !noalias !1102
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.f
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.4.vec.insert.i6.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i5.i.i.i.i.i.i, float %i.bk, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2.val, i64 264
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !350, !noalias !1102
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.f
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.0.vec.insert.i7.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2.val, i64 272
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !351, !noalias !1102
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.f
  %i.bs = load float, ptr %i.br, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.4.vec.insert.i8.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i7.i.i.i.i.i.i, float %i.bs, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2.val, i64 288
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !330, !noalias !1103
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.f
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !437, !noalias !1103
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2.val, i64 296
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !331, !noalias !1103
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.f
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !437, !noalias !1103
  %.sroa.0.4.vec.insert.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i.i, float %i.ca, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2.val, i64 304
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !146, !noalias !1103
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.f
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !437, !noalias !1103
  %i.cf = getelementptr inbounds nuw i8, ptr %.val2.val, i64 320
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !330, !noalias !1103
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.f
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !437, !noalias !1103
  %.sroa.0.0.vec.insert.i10.i.i.i.i.i = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2.val, i64 328
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !331, !noalias !1103
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.f
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !437, !noalias !1103
  %.sroa.0.4.vec.insert.i11.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i10.i.i.i.i.i, float %i.cm, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.val2.val, i64 336
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !146, !noalias !1103
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.f
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !437, !noalias !1103
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2.val, i64 344
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !364, !noalias !1100
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.f
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !130, !noalias !1100
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2.val, i64 352
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !365, !noalias !1100
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.f
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !130, !noalias !1100
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i, ptr %10, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float %i.p, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i24.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  store float %i.ab, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store i32 %i.af, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i39.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 36
  store <2 x float> %.sroa.2.0.copyload.i.i41.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 44
  store <2 x float> %.sroa.0.0.copyload.i16.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 52
  store <2 x float> %.sroa.2.0.copyload.i18.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 60 ; 2 uses
  store i32 %i.cy, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store <2 x float> %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  store <2 x float> %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  store i32 %i.cu, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 3 uses
  store <2 x float> %.sroa.0.0.copyload.i.i29.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 92 ; 3 uses
  store <2 x float> %.sroa.2.0.copyload.i.i31.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i, align 4
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 100 ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i34.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i, align 4
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 108 ; 2 uses
  store <2 x float> %.sroa.2.0.copyload.i.i36.i.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i, align 4
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 116 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i.i, ptr %.sroa.18.0..sroa_idx.i.i.i, align 4
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 124
  store <2 x float> %.sroa.0.4.vec.insert.i6.i.i.i.i.i.i, ptr %.sroa.19.0..sroa_idx.i.i.i, align 4
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 132
  store <2 x float> %.sroa.0.4.vec.insert.i8.i.i.i.i.i.i, ptr %.sroa.20.0..sroa_idx.i.i.i, align 4
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 140
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i, ptr %.sroa.21.0..sroa_idx.i.i.i, align 4
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 148
  store float %i.ce, ptr %.sroa.22.0..sroa_idx.i.i.i, align 4
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 152
  store <2 x float> %.sroa.0.4.vec.insert.i11.i.i.i.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 160
  store float %i.cq, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.val, i64 80
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !95 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !105 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !103 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.de, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx.i.i.i.i
  %.not91.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not91.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.23.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 96
  br label %bb.b

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.a
  %.sroa.037.0.lcssa.i.i.i.i = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.gk, %bb.f ] ; 3 uses
  %i.dp = fcmp une <4 x float> %.sroa.037.0.lcssa.i.i.i.i, zeroinitializer
  %i.dq = bitcast <4 x i1> %i.dp to i4
  %.not4 = icmp eq i4 %i.dq, 0
  br i1 %.not4, label %"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS0_18EscapedRayWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit", label %bb.g

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.093.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %i.gl, %bb.f ] ; 4 uses
  %.sroa.037.092.i.i.i.i = phi <4 x float> [ zeroinitializer, %.lr.ph.i.i.i.i ], [ %i.gk, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.011.0.copyload.i.i.i.i = load <2 x float>, ptr %10, align 8
  %.sroa.212.0.copyload.i.i.i.i = load float, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.sroa.09.0.copyload.i.i.i.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4
  %.sroa.210.0.copyload.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  store <2 x float> %.sroa.011.0.copyload.i.i.i.i, ptr %7, align 8
  store float %.sroa.212.0.copyload.i.i.i.i, ptr %i.dg, align 8
  %11 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.210.0.copyload.i.i.i.i, i64 0
  %12 = shufflevector <2 x float> %.sroa.09.0.copyload.i.i.i.i, <2 x float> %11, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %12, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i, align 4
  store i64 0, ptr %i.dh, align 8, !tbaa !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %7, ptr %6, align 8, !tbaa !1105
  store ptr %.sroa.6.0..sroa_idx.i.i.i, ptr %i.di, align 8, !tbaa !1106
  %i.dr = load i64, ptr %.093.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %i.ds = and i64 %i.dr, 144115188075855871
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = lshr i64 %i.dr, 57
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_5Light2LeERKNS_3RayERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS9_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dt, i32 noundef %i.dw) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.dy = extractvalue { <2 x float>, <2 x float> } %i.dx, 0
  %i.dz = extractvalue { <2 x float>, <2 x float> } %i.dx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.ea                 ; 3 uses
  %i.eb = fcmp une <4 x float> %.fr, zeroinitializer
  %i.ec = bitcast <4 x i1> %i.eb to i4
  %.not = icmp eq i4 %i.ec, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ed = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !1108
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = load i32, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8
  %i.eg = icmp ne i32 %i.ef, 0
  %or.cond.i.i.i.i = select i1 %i.ee, i1 true, i1 %i.eg
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload4.i.i.i.i.i = load <2 x float>, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.8.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !tbaa !122
  %i.eh = load float, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4, !tbaa !437
  %i.ei = load float, ptr %i.dn, align 8, !tbaa !437
  %i.ej = fadd float %i.eh, %i.ei
  %i.ek = load float, ptr %.sroa.15.0..sroa_idx.i.i.i, align 4, !tbaa !437
  %i.el = fadd float %i.ej, %i.ek
  %i.em = load float, ptr %i.do, align 8, !tbaa !437
  %i.en = fadd float %i.el, %i.em
  %i.eo = fmul float %i.en, 2.500000e-01
  %i.ep = shufflevector <2 x float> %.sroa.0.0.copyload4.i.i.i.i.i, <2 x float> %.sroa.8.0.copyload.i.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eq = fmul <4 x float> %.fr, %i.ep
  %i.er = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = fdiv <4 x float> %i.eq, %i.es
  %i.eu = fadd <4 x float> %.sroa.037.092.i.i.i.i, %i.et
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) %.sroa.18.0..sroa_idx.i.i.i, i64 48, i1 false)
  %i.ev = load i64, ptr %.093.i.i.i.i, align 8, !tbaa !99
  store i64 %i.ev, ptr %9, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %8, ptr %5, align 8, !tbaa !468
  store ptr %9, ptr %i.dk, align 8, !tbaa !97
  %i.ew = load i64, ptr %i.dj, align 8, !tbaa !71 ; 2 uses
  %i.ex = and i64 %i.ew, 144115188075855871
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = lshr i64 %i.ew, 57
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = add nsw i32 %i.fa, -1
  %i.fc = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_12LightSampler3PMFERKNS_18LightSampleContextENS_5LightEEUlT_E_fNS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEET0_OS7_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ey, i32 noundef %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.sroa.0.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.16.0..sroa_idx.i.i.i, align 4
  %.sroa.6.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.17.0..sroa_idx.i.i.i, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %8, i64 48, i1 false)
  %.sroa.03.0.copyload.i.i.i.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4
  %.sroa.24.0.copyload.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x float> %.sroa.03.0.copyload.i.i.i.i, ptr %2, align 8
  store float %.sroa.24.0.copyload.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  store i8 1, ptr %i.a, align 1, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %4, ptr %3, align 8, !tbaa !468
  store ptr %2, ptr %i.dl, align 8, !tbaa !470
  store ptr %i.a, ptr %i.dm, align 8, !tbaa !471
  %i.fd = load i64, ptr %.093.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %i.fe = and i64 %i.fd, 144115188075855871
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = lshr i64 %i.fd, 57
  %i.fh = trunc nuw nsw i64 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -1
  %i.fj = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Light6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEbEUlT_E_fNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.ff, i32 noundef %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fk = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fm = shufflevector <2 x float> %.sroa.6.0.copyload.i.i.i.i.i, <2 x float> %.sroa.0.0.copyload.i.i.i.i.i, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.fn = fmul <4 x float> %i.fl, %i.fm
  %i.fo = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = fmul <4 x float> %i.fn, %i.fp           ; 3 uses
  %.sroa.0.0.copyload4.i58.i.i.i.i = load <2 x float>, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.8.0.copyload.i60.i.i.i.i = load <2 x float>, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !tbaa !122
  %.sroa.0.0.copyload4.i71.i.i.i.i = load <2 x float>, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.8.0.copyload.i73.i.i.i.i = load <2 x float>, ptr %.sroa.15.0..sroa_idx.i.i.i, align 4, !tbaa !122 ; 2 uses
  %.sroa.0.0.vec.extract.i74.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload4.i71.i.i.i.i, i64 0
  %i.fr = extractelement <4 x float> %i.fq, i64 1
  %i.fs = fadd float %i.fr, %.sroa.0.0.vec.extract.i74.i.i.i.i
  %i.ft = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fu = shufflevector <2 x float> %.sroa.0.0.copyload4.i71.i.i.i.i, <2 x float> %.sroa.8.0.copyload.i73.i.i.i.i, <2 x i32> <i32 1, i32 2>
  %i.fv = fadd <2 x float> %i.ft, %i.fu           ; 2 uses
  %.sroa.8.12.vec.extract.i80.i.i.i.i = extractelement <2 x float> %.sroa.8.0.copyload.i73.i.i.i.i, i64 1
  %i.fw = extractelement <4 x float> %i.fq, i64 0
  %i.fx = fadd float %i.fw, %.sroa.8.12.vec.extract.i80.i.i.i.i
  %i.fy = extractelement <2 x float> %i.fv, i64 0
  %i.fz = fadd float %i.fs, %i.fy
  %i.ga = extractelement <2 x float> %i.fv, i64 1
  %i.gb = fadd float %i.fz, %i.ga
  %i.gc = fadd float %i.fx, %i.gb
  %i.gd = fmul float %i.gc, 2.500000e-01
  %i.ge = shufflevector <2 x float> %.sroa.0.0.copyload4.i58.i.i.i.i, <2 x float> %.sroa.8.0.copyload.i60.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gf = fmul <4 x float> %.fr, %i.ge
  %i.gg = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fdiv <4 x float> %i.gf, %i.gh
  %i.gj = fadd <4 x float> %.sroa.037.092.i.i.i.i, %i.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.037.1.i.i.i.i = phi <4 x float> [ %i.eu, %bb.d ], [ %i.gj, %bb.e ], [ %.sroa.037.092.i.i.i.i, %bb.b ]
  %i.gk = freeze <4 x float> %.sroa.037.1.i.i.i.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.093.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gl, %i.df
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.b

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gm = load i32, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !tbaa !1109
  %i.gn = getelementptr inbounds nuw i8, ptr %.val.val, i64 208
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !268
  %i.gp = sext i32 %i.gm to i64
  %i.gq = getelementptr inbounds [16 x i8], ptr %i.go, i64 %i.gp ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %i.gq, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  %i.gr = shufflevector <4 x float> %.sroa.037.0.lcssa.i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gs = fadd <2 x float> %i.gr, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.gt = shufflevector <4 x float> %.sroa.037.0.lcssa.i.i.i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gu = fadd <2 x float> %i.gt, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  %13 = shufflevector <2 x float> %i.gs, <2 x float> %i.gu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %13, ptr %i.gq, align 16
  br label %"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS0_18EscapedRayWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit"

"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS0_18EscapedRayWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit": ; preds = %._crit_edge.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt12ForAllQueuedIZNS_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS_18EscapedRayWorkItemEEEvPKcPKNS_9WorkQueueIT0_EEiOT_EUliE_", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1110
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS1_18EscapedRayWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_5Light2LeERKNS_3RayERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS9_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #23 comdat {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 6, label %bb.b
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1112, !nonnull !119, !align !438
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1113, !nonnull !119, !align !472
  %i.d = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt20UniformInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(180) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1112, !nonnull !119, !align !438 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1113, !nonnull !119, !align !472
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.015.0.copyload.i.i = load <2 x float>, ptr %i.h, align 4 ; 3 uses
  %.sroa.216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.216.0.copyload.i.i = load float, ptr %.sroa.216.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.i = shufflevector <2 x float> %.sroa.015.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !437
  %i.n = fmul <2 x float> %.sroa.015.0.copyload.i.i, %i.m ; 2 uses
  %shift = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.n, %shift
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load float, ptr %i.p, align 4, !tbaa !437
  %i.r = fmul float %.sroa.216.0.copyload.i.i, %i.q
  %i.s = fadd float %i.o, %i.r                    ; 3 uses
  %i.t = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.j, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !437 ; 3 uses
  %i.u = shufflevector <5 x float> %i.t, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <5 x float> %i.t, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.w = fmul <2 x float> %i.i, %i.v
  %i.x = load <2 x float>, ptr %i.k, align 4, !tbaa !437 ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <4 x float> %i.u, <4 x float> %i.y, <2 x i32> <i32 0, i32 4>
  %i.aa = fmul <2 x float> %.sroa.015.0.copyload.i.i, %i.z
  %i.ab = fadd <2 x float> %i.w, %i.aa
  %i.ac = insertelement <2 x float> poison, float %.sroa.216.0.copyload.i.i, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x float> %i.x, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <5 x float> %i.t, <5 x float> %i.ae, <2 x i32> <i32 2, i32 6>
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = fadd <2 x float> %i.ab, %i.ag           ; 3 uses
  %i.ai = fmul <2 x float> %i.ah, %i.ah           ; 2 uses
  %shift21 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop22 = fadd <2 x float> %i.ai, %shift21
  %i.aj = extractelement <2 x float> %foldExtExtBinop22, i64 0
  %i.ak = fmul float %i.s, %i.s
  %i.al = fadd float %i.aj, %i.ak
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #30 ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv <2 x float> %i.ah, %i.ao
  %i.aq = fdiv float %i.s, %i.am
  %i.ar = tail call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %i.ap, float %i.aq)
  %i.as = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt18ImageInfiniteLight7ImageLeENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(592) %1, <2 x float> %i.ar, ptr noundef nonnull align 4 dereferenceable(32) %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %0, align 8, !tbaa !1112, !nonnull !119, !align !438
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1113, !nonnull !119, !align !472
  %i.aw = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt24PortalImageInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(516) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 4 dereferenceable(32) %i.av)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c, %bb.b
  %.pn = phi { <2 x float>, <2 x float> } [ %i.aw, %bb.d ], [ %i.as, %bb.c ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %i.d, %bb.b ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, <2 x float> } %.pn
}

declare { <2 x float>, <2 x float> } @_ZNK4pbrt20UniformInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(180), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

declare <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float>, float) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt18ImageInfiniteLight7ImageLeENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(592) %0, <2 x float> %1, ptr noundef nonnull align 4 dereferenceable(32) %2) local_unnamed_addr #23 comdat align 2 {
_ZN4pbrt3RGBixEi.exit.2:
  %3 = alloca %"class.pbrt::RGBIlluminantSpectrum", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !441
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul float %.sroa.03.0.vec.extract.i, %i.e
  %i.g = fptosi float %i.f to i32
  %i.h = load i32, ptr %i.c, align 8, !tbaa !442
  %i.i = sitofp i32 %i.h to float
  %i.j = fmul float %.sroa.03.4.vec.extract.i, %i.i
  %i.k = fptosi float %i.j to i32
  %.sroa.4.0.insert.ext.i = zext i32 %i.k to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.g to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.l = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 12884901891)
  %.sroa.024.0.vec.insert = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = load i32, ptr %i.b, align 4, !tbaa !441
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %.sroa.03.0.vec.extract.i, %i.n
  %i.p = fptosi float %i.o to i32
  %i.q = load i32, ptr %i.c, align 8, !tbaa !442
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %.sroa.03.4.vec.extract.i, %i.r
  %i.t = fptosi float %i.s to i32
  %.sroa.4.0.insert.ext.i.1 = zext i32 %i.t to i64
  %.sroa.4.0.insert.shift.i.1 = shl nuw i64 %.sroa.4.0.insert.ext.i.1, 32
  %.sroa.0.0.insert.ext.i.1 = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.4.0.insert.shift.i.1, %.sroa.0.0.insert.ext.i.1
  %i.u = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.1, i32 noundef 1, i64 12884901891)
  %.sroa.024.4.vec.insert = insertelement <2 x float> %.sroa.024.0.vec.insert, float %i.u, i64 1 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.b, align 4, !tbaa !130
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = fmul <2 x float> %1, %i.w                ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fptosi float %i.aa to i32
  %.sroa.4.0.insert.ext.i.2 = zext i32 %i.ab to i64
  %.sroa.4.0.insert.shift.i.2 = shl nuw i64 %.sroa.4.0.insert.ext.i.2, 32
  %.sroa.0.0.insert.ext.i.2 = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.4.0.insert.shift.i.2, %.sroa.0.0.insert.ext.i.2
  %i.ac = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.2, i32 noundef 2, i64 12884901891) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1121
  %i.af = fcmp ogt <2 x float> %.sroa.024.4.vec.insert, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x float> %.sroa.024.4.vec.insert, <2 x float> zeroinitializer
  %i.ah = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ah, float %i.ac, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(152) %i.ae, <2 x float> %i.ag, float %.sroa.speculated.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aj = load <1 x float>, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !494 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.am = load float, ptr %3, align 8, !tbaa !495 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !496 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !497 ; 4 uses
  %i.as = load float, ptr %i.an, align 4, !tbaa !498 ; 4 uses
  %i.at = load float, ptr %2, align 4, !tbaa !437 ; 2 uses
  %i.au = call noundef float @llvm.fma.f32(float %i.at, float %i.as, float %i.ar)
  %i.av = call noundef float @llvm.fma.f32(float %i.at, float %i.au, float %i.ap) ; 5 uses
  %i.aw = call float @llvm.fabs.f32(float %i.av)
  %i.ax = fcmp oeq float %i.aw, +inf
  br i1 %i.ax, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvlEZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS1_20HitAreaLightWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E9_M_invokeERKSt9_Any_dataOl":bb.a
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !437, !noalias !1225
  %.sroa.0.4.vec.insert.i8.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i7.i.i.i.i.i.i, float %i.cz, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %.val2.val, i64 352
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !330, !noalias !1226
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.g
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !437, !noalias !1226
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.de = getelementptr inbounds nuw i8, ptr %.val2.val, i64 360
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !331, !noalias !1226
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.g
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !437, !noalias !1226
  %.sroa.0.4.vec.insert.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i.i, float %i.dh, i64 1
  %i.di = getelementptr inbounds nuw i8, ptr %.val2.val, i64 368
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !146, !noalias !1226
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.g
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !437, !noalias !1226
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2.val, i64 384
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !330, !noalias !1226
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.g
  %i.dp = load float, ptr %i.do, align 4, !tbaa !437, !noalias !1226
  %.sroa.0.0.vec.insert.i10.i.i.i.i.i = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2.val, i64 392
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !331, !noalias !1226
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.g
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !437, !noalias !1226
  %.sroa.0.4.vec.insert.i11.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i10.i.i.i.i.i, float %i.dt, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %.val2.val, i64 400
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !146, !noalias !1226
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.g
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !437, !noalias !1226
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i.i, ptr %i.dy, align 8, !alias.scope !1220
  %.sroa.4.0..sroa_idx59.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <2 x float> %.sroa.0.4.vec.insert.i6.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx59.i.i.i.i, align 8, !alias.scope !1220
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 152
  store <2 x float> %.sroa.0.4.vec.insert.i8.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1220
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 160
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1220
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 168
  store float %i.dl, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1220
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 172
  store <2 x float> %.sroa.0.4.vec.insert.i11.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 4, !alias.scope !1220
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 180
  store float %i.dx, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !alias.scope !1220
  %i.dz = getelementptr inbounds nuw i8, ptr %.val2.val, i64 408
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !369, !noalias !1220
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.g
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !130, !noalias !1220
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 2 uses
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !1227, !alias.scope !1220
  %i.ee = getelementptr inbounds nuw i8, ptr %.val2.val, i64 416
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !370, !noalias !1220
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.g
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !130, !noalias !1220
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 188 ; 2 uses
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !1228, !alias.scope !1220
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ej = and i64 %i.i, 144115188075855871
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !1229
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA26_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.94, i32 noundef 808, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(26) @.str.95) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %.mask.i.i.i.i.i.i = and i64 %i.i, -144115188075855872
  %cond.i.i.i.i.i.i.i = icmp eq i64 %.mask.i.i.i.i.i.i, 864691128455135232
  br i1 %cond.i.i.i.i.i.i.i, label %bb.d, label %_ZNK4pbrt5Light1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.en = call { <2 x float>, <2 x float> } @_ZNK4pbrt16DiffuseAreaLight1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(352) %i.ek, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i, float %i.am, <2 x float> %.sroa.0.4.vec.insert.i49.i.i.i.i, float %i.az, <2 x float> %.sroa.0.4.vec.insert.i53.i.i.i.i, <2 x float> %.sroa.0.4.vec.insert.i55.i.i.i.i, float %i.bv, ptr noundef nonnull align 4 dereferenceable(32) %i.p)
  br label %_ZNK4pbrt5Light1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE.exit.i.i.i.i

_ZNK4pbrt5Light1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.pn.i.i.i.i.i.i.i = phi { <2 x float>, <2 x float> } [ %i.en, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.eo = extractvalue { <2 x float>, <2 x float> } %.pn.i.i.i.i.i.i.i, 0 ; 3 uses
  %i.ep = extractvalue { <2 x float>, <2 x float> } %.pn.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.eq
  %i.er = fcmp une <4 x float> %.fr, zeroinitializer
  %i.es = bitcast <4 x i1> %i.er to i4
  %.not = icmp eq i4 %i.es, 0
  br i1 %.not, label %"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS0_20HitAreaLightWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNK4pbrt5Light1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE.exit.i.i.i.i
  %i.et = load i32, ptr %i.cb, align 4, !tbaa !1224
  %i.eu = icmp ne i32 %i.et, 0
  %i.ev = load i32, ptr %i.ed, align 8
  %.not.i.i.i.i = icmp eq i32 %i.ev, 0
  %or.cond.i.i.i = select i1 %i.eu, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload4.i.i.i.i.i = load <2 x float>, ptr %i.c, align 8
  %.sroa.8.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.420.0..sroa_idx.i.i.i.i, align 8, !tbaa !122
  %i.ew = load float, ptr %i.w, align 8, !tbaa !437
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 108
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !437
  %i.ez = fadd float %i.ew, %i.ey
  %i.fa = load float, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !tbaa !437
  %i.fb = fadd float %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 116
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !437
  %i.fe = fadd float %i.fb, %i.fd
  %i.ff = fmul float %i.fe, 2.500000e-01
  %i.fg = fmul <2 x float> %i.eo, %.sroa.0.0.copyload4.i.i.i.i.i
  %i.fh = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fi = fmul <2 x float> %i.ep, %.sroa.8.0.copyload.i.i.i.i.i
  %i.fj = shufflevector <2 x float> %i.fg, <2 x float> %i.fi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fk = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> zeroinitializer
  %.sroa.015.8.vecblend29.i.i.i.i = fdiv <4 x float> %i.fj, %i.fk
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.fl = load <2 x float>, ptr %i.bw, align 8, !tbaa !437
  %i.fm = fneg <2 x float> %i.fl
  %i.fn = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !1230
  %i.fo = fneg float %i.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.dy, i64 48, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.fq = load i64, ptr %8, align 8, !tbaa !99
  store i64 %i.fq, ptr %7, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %6, ptr %5, align 8, !tbaa !468
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %7, ptr %i.fr, align 8, !tbaa !97
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !71 ; 2 uses
  %i.ft = and i64 %i.fs, 144115188075855871
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = lshr i64 %i.fs, 57
  %i.fw = trunc nuw nsw i64 %i.fv to i32
  %i.fx = add nsw i32 %i.fw, -1
  %i.fy = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_12LightSampler3PMFERKNS_18LightSampleContextENS_5LightEEUlT_E_fNS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEET0_OS7_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.fu, i32 noundef %i.fx)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %6, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x float> %i.fm, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.fo, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  store i8 1, ptr %i.a, align 1, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %4, ptr %3, align 8, !tbaa !468
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.fz, align 8, !tbaa !470
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.ga, align 8, !tbaa !471
  %i.gb = load i64, ptr %8, align 8, !tbaa !99    ; 2 uses
  %i.gc = and i64 %i.gb, 144115188075855871
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = lshr i64 %i.gb, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i32
  %i.gg = add nsw i32 %i.gf, -1
  %i.gh = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Light6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEbEUlT_E_fNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.gd, i32 noundef %i.gg)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gi = fmul float %i.fy, %i.gh
  %.sroa.011.0.copyload.i.i.i.i = load <2 x float>, ptr %i.w, align 8
  %.sroa.412.0.copyload.i.i.i.i = load <2 x float>, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !tbaa !122
  %.sroa.0.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.aa, align 8
  %.sroa.6.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !tbaa !122
  %.sroa.0.0.copyload4.i48.i.i.i.i = load <2 x float>, ptr %i.c, align 8
  %.sroa.8.0.copyload.i50.i.i.i.i = load <2 x float>, ptr %.sroa.420.0..sroa_idx.i.i.i.i, align 8, !tbaa !122
  %i.gj = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gl = fmul <2 x float> %i.gk, %.sroa.0.0.copyload.i.i.i.i.i
  %i.gm = fadd <2 x float> %.sroa.011.0.copyload.i.i.i.i, %i.gl ; 2 uses
  %i.gn = fmul <2 x float> %i.gk, %.sroa.6.0.copyload.i.i.i.i.i
  %i.go = fadd <2 x float> %.sroa.412.0.copyload.i.i.i.i, %i.gn ; 2 uses
  %shift = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.gm, %shift
  %foldExtExtBinop7 = fadd <2 x float> %foldExtExtBinop, %i.go
  %shift9 = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10 = fadd <2 x float> %shift9, %foldExtExtBinop7
  %i.gp = extractelement <2 x float> %foldExtExtBinop10, i64 0
  %i.gq = fmul float %i.gp, 2.500000e-01
  %i.gr = fmul <2 x float> %i.eo, %.sroa.0.0.copyload4.i48.i.i.i.i
  %i.gs = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gt = fmul <2 x float> %i.ep, %.sroa.8.0.copyload.i50.i.i.i.i
  %i.gu = shufflevector <2 x float> %i.gr, <2 x float> %i.gt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gv = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> zeroinitializer
  %.sroa.015.8.vecblend.i.i.i.i = fdiv <4 x float> %i.gu, %i.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.015.0.i.i.i.i = phi <4 x float> [ %.sroa.015.8.vecblend29.i.i.i.i, %bb.f ], [ %.sroa.015.8.vecblend.i.i.i.i, %bb.g ] ; 2 uses
  %i.gw = load i32, ptr %i.ei, align 4, !tbaa !1228
  %i.gx = getelementptr inbounds nuw i8, ptr %.val.val, i64 208
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !268
  %i.gz = sext i32 %i.gw to i64
  %i.ha = getelementptr inbounds [16 x i8], ptr %i.gy, i64 %i.gz ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %i.ha, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  %i.hb = shufflevector <4 x float> %.sroa.015.0.i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hc = fadd <2 x float> %i.hb, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.hd = shufflevector <4 x float> %.sroa.015.0.i.i.i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.he = fadd <2 x float> %i.hd, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  %9 = shufflevector <2 x float> %i.hc, <2 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %i.ha, align 16
  br label %"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS0_20HitAreaLightWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit"

"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS0_20HitAreaLightWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit": ; preds = %_ZNK4pbrt5Light1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS1_20HitAreaLightWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS1_20HitAreaLightWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4pbrt12ForAllQueuedIZNS_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS_20HitAreaLightWorkItemEEEvPKcPKNS_9WorkQueueIT0_EEiOT_EUliE_", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS1_20HitAreaLightWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS1_20HitAreaLightWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1231
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS1_20HitAreaLightWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator26HandleEmissiveIntersectionEvE3$_0NS1_20HitAreaLightWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt16DiffuseAreaLight1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(352) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, <2 x float> %5, <2 x float> %6, float %7, ptr noundef nonnull align 4 dereferenceable(32) %8) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %9 = alloca %"class.pbrt::UniversalTextureEvaluator", align 1 ; 3 uses
  %10 = alloca %"class.pbrt::FloatTexture", align 8 ; 6 uses
  %11 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 10 uses
  %12 = alloca %"class.pbrt::RGBIlluminantSpectrum", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1236, !range !118, !noundef !119
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %3, i64 0
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %6, i64 0
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %3, i64 1
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %6, i64 1
  %i.d = fmul float %4, %7                        ; 2 uses
  %i.e = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.d)
  %i.f = fneg float %i.d
  %i.g = tail call noundef float @llvm.fma.f32(float %4, float %7, float %i.f)
  %i.h = fadd float %i.e, %i.g
  %i.i = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i, float %.sroa.01.0.vec.extract.i, float %i.h)
  %i.j = fcmp olt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load i64, ptr %i.k, align 8, !tbaa !181  ; 2 uses
  %i.m = and i64 %i.l, 144115188075855871
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i64 %i.l, ptr %10, align 8, !tbaa !181
  %i.n = fadd <2 x float> %1, %1
  %i.o = fmul <2 x float> %i.n, splat (float 5.000000e-01) ; 2 uses
  %i.p = fadd float %2, %2
  %i.q = fmul float %i.p, 5.000000e-01            ; 2 uses
  store <2 x float> %i.o, ptr %11, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.q, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.r, i8 0, i64 36, i1 false)
  store <2 x float> %5, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  %i.u = call noundef float @_ZN4pbrt25UniversalTextureEvaluatorclENS_12FloatTextureENS_18TextureEvalContextE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %11) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.v = fcmp ult float %i.u, 1.000000e+00
  br i1 %i.v, label %bb.e, label %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.w = fcmp ugt float %i.u, 0.000000e+00
  br i1 %i.w, label %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit, label %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99

_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.q

_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.f

_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit: ; preds = %bb.e
  %i.x = bitcast float %i.q to i32
  %i.y = bitcast <2 x float> %i.o to i64
  %i.z = mul i64 %i.y, -4132994306676758123       ; 2 uses
  %i.aa = lshr i64 %i.z, 47
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -4132994306676758123
  %i.ad = xor i64 %i.ac, 5744300541007557372
  %i.ae = mul i64 %i.ad, -4132994306676758123
  %i.af = zext i32 %i.x to i64
  %i.ag = xor i64 %i.ae, %i.af
  %i.ah = mul i64 %i.ag, -4132994306676758123     ; 2 uses
  %i.ai = lshr i64 %i.ah, 47
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.aj, -4132994306676758123     ; 2 uses
  %i.al = lshr i64 %i.ak, 47
  %i.am = xor i64 %i.al, %i.ak
  %i.an = trunc i64 %i.am to i32
  %i.ao = uitofp i32 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x2F800000
  %i.aq = fcmp ogt float %i.ap, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %i.aq, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !441 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %i.ax, label %_ZN4pbrt3RGBixEi.exit.2, label %bb.p

bb.g:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.ay = load float, ptr %12, align 8, !tbaa !495 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !496 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !497 ; 4 uses
  %i.be = load float, ptr %i.az, align 4, !tbaa !498 ; 4 uses
  %i.bf = load float, ptr %8, align 4, !tbaa !437 ; 2 uses
  %i.bg = call noundef float @llvm.fma.f32(float %i.bf, float %i.be, float %i.bd)
  %i.bh = call noundef float @llvm.fma.f32(float %i.bf, float %i.bg, float %i.bb) ; 5 uses
  %i.bi = call float @llvm.fabs.f32(float %i.bh)
  %i.bj = fcmp oeq float %i.bi, +inf
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = fcmp ogt float %i.bh, 0.000000e+00
  %i.bl = uitofp i1 %i.bk to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bm = fmul float %i.bh, %i.bh
  %i.bn = fadd float %i.bm, 1.000000e+00
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.bn)
  %i.bo = fmul float %sqrt.i.i.i, 2.000000e+00
  %i.bp = fdiv float %i.bh, %i.bo
  %i.bq = fadd float %i.bp, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i:       ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi float [ %i.bl, %bb.h ], [ %i.bq, %bb.i ]
  %i.br = fmul float %i.ay, %.0.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !437 ; 2 uses
  %i.bu = call noundef float @llvm.fma.f32(float %i.bt, float %i.be, float %i.bd)
  %i.bv = call noundef float @llvm.fma.f32(float %i.bt, float %i.bu, float %i.bb) ; 5 uses
  %i.bw = call float @llvm.fabs.f32(float %i.bv)
  %i.bx = fcmp oeq float %i.bw, +inf
  br i1 %i.bx, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.by = fmul float %i.bv, %i.bv
  %i.bz = fadd float %i.by, 1.000000e+00
  %sqrt.i.i.1.i = call float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fmul float %sqrt.i.i.1.i, 2.000000e+00
  %i.cb = fdiv float %i.bv, %i.ca
  %i.cc = fadd float %i.cb, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

bb.k:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.cd = fcmp ogt float %i.bv, 0.000000e+00
  %i.ce = uitofp i1 %i.cd to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i:     ; preds = %bb.k, %bb.j
  %.0.i.i.1.i = phi float [ %i.ce, %bb.k ], [ %i.cc, %bb.j ]
  %i.cf = fmul float %i.ay, %.0.i.i.1.i
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !437 ; 2 uses
  %i.ci = call noundef float @llvm.fma.f32(float %i.ch, float %i.be, float %i.bd)
  %i.cj = call noundef float @llvm.fma.f32(float %i.ch, float %i.ci, float %i.bb) ; 5 uses
  %i.ck = call float @llvm.fabs.f32(float %i.cj)
end_hunk_1
