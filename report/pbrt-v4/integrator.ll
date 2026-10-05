Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrator?download=true
inline.NumInlined: 4025
inline.NumDeleted: 1526
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 39
begin_hunk_0_@"_ZNSt17_Function_handlerIFvlEZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation":bb.a
  store ptr @"_ZTIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5", ptr %0, align 8, !tbaa !339
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !138
  store ptr %.val, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !138
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !138 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt23WavefrontPathIntegrator6RenderEvE3$_5E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #32
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
  %7 = alloca %"class.pbrt::Ray", align 8         ; 8 uses
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
  %sext.i.i = shl i64 %.val3, 32
  %i.e = ashr exact i64 %sext.i.i, 32             ; 26 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !437, !noalias !1100
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %.val2.val, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !329, !noalias !1100
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.e
  %i.k = load float, ptr %i.j, align 4, !tbaa !437, !noalias !1100
  %.sroa.0.4.vec.insert.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i, float %i.k, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.val, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !1100
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.e
  %i.o = load float, ptr %i.n, align 4, !tbaa !437, !noalias !1100
  %i.p = getelementptr inbounds nuw i8, ptr %.val2.val, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !334, !noalias !1100
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.e
  %i.s = load float, ptr %i.r, align 4, !tbaa !437, !noalias !1100
  %.sroa.0.0.vec.insert.i23.i.i.i.i = insertelement <2 x float> poison, float %i.s, i64 0
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.val, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !335, !noalias !1100
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.e
  %i.w = load float, ptr %i.v, align 4, !tbaa !437, !noalias !1100
  %.sroa.0.4.vec.insert.i24.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i23.i.i.i.i, float %i.w, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.val, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150, !noalias !1100
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.e
  %i.aa = load float, ptr %i.z, align 4, !tbaa !437, !noalias !1100
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.val, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !363, !noalias !1100
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.e
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !130, !noalias !1100
  %i.af = getelementptr inbounds nuw i8, ptr %.val2.val, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !268, !noalias !1100
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.ah, align 16, !noalias !1100
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !122, !noalias !1100
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2.val, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !268, !noalias !1100
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i29.i.i.i.i = load <2 x float>, ptr %i.ak, align 16, !noalias !1100
  %.sroa.2.0..0..sroa_idx.i.i30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.2.0.copyload.i.i31.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i30.i.i.i.i, align 8, !tbaa !122, !noalias !1100
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.val, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !268, !noalias !1100
  %i.an = getelementptr inbounds [16 x i8], ptr %i.am, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i34.i.i.i.i = load <2 x float>, ptr %i.an, align 16, !noalias !1100
  %.sroa.2.0..0..sroa_idx.i.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2.0.copyload.i.i36.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i35.i.i.i.i, align 8, !tbaa !122, !noalias !1100
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.val, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !266, !noalias !1101
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2.val, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !267, !noalias !1101
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i39.i.i.i.i = load <2 x float>, ptr %i.as, align 16, !noalias !1101
  %.sroa.2.0..0..sroa_idx.i.i40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.2.0.copyload.i.i41.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i40.i.i.i.i, align 8, !tbaa !122, !noalias !1101
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i16.i.i.i.i.i = load <2 x float>, ptr %i.at, align 16, !noalias !1101
  %.sroa.2.0..0..sroa_idx.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.2.0.copyload.i18.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i17.i.i.i.i.i, align 8, !tbaa !122, !noalias !1101
  %i.au = getelementptr inbounds nuw i8, ptr %.val2.val, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !350, !noalias !1102
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.e
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2.val, i64 224
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !351, !noalias !1102
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.e
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.4.vec.insert.i.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i, float %i.bb, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2.val, i64 240
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !350, !noalias !1102
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.e
  %i.bf = load float, ptr %i.be, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.0.vec.insert.i5.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2.val, i64 248
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !351, !noalias !1102
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.e
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.4.vec.insert.i6.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i5.i.i.i.i.i.i, float %i.bj, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.val2.val, i64 264
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !350, !noalias !1102
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.e
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.0.vec.insert.i7.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2.val, i64 272
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !351, !noalias !1102
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.e
  %i.br = load float, ptr %i.bq, align 4, !tbaa !437, !noalias !1102
  %.sroa.0.4.vec.insert.i8.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i7.i.i.i.i.i.i, float %i.br, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2.val, i64 288
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !330, !noalias !1103
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.e
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !437, !noalias !1103
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bw = getelementptr inbounds nuw i8, ptr %.val2.val, i64 296
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !331, !noalias !1103
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.e
  %i.bz = load float, ptr %i.by, align 4, !tbaa !437, !noalias !1103
  %.sroa.0.4.vec.insert.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i.i.i, float %i.bz, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.val2.val, i64 304
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !146, !noalias !1103
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.e
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !437, !noalias !1103
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2.val, i64 320
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !330, !noalias !1103
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.e
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !437, !noalias !1103
  %.sroa.0.0.vec.insert.i10.i.i.i.i.i = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ci = getelementptr inbounds nuw i8, ptr %.val2.val, i64 328
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !331, !noalias !1103
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.e
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !437, !noalias !1103
  %.sroa.0.4.vec.insert.i11.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i10.i.i.i.i.i, float %i.cl, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2.val, i64 336
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !146, !noalias !1103
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.e
  %i.cp = load float, ptr %i.co, align 4, !tbaa !437, !noalias !1103
  %i.cq = getelementptr inbounds nuw i8, ptr %.val2.val, i64 344
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !364, !noalias !1100
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.e
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !130, !noalias !1100
  %i.cu = getelementptr inbounds nuw i8, ptr %.val2.val, i64 352
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !365, !noalias !1100
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.e
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !130, !noalias !1100
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i.i, ptr %10, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float %i.o, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i24.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  store float %i.aa, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store i32 %i.ae, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i39.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 36
  store <2 x float> %.sroa.2.0.copyload.i.i41.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 44
  store <2 x float> %.sroa.0.0.copyload.i16.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 52
  store <2 x float> %.sroa.2.0.copyload.i18.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 60 ; 2 uses
  store i32 %i.cx, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store <2 x float> %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  store <2 x float> %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  store i32 %i.ct, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8
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
  store float %i.cd, ptr %.sroa.22.0..sroa_idx.i.i.i, align 4
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 152
  store <2 x float> %.sroa.0.4.vec.insert.i11.i.i.i.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 160
  store float %i.cp, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.val, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !95 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !105 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !103 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dd, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx.i.i.i.i
  %.not91.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not91.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.sroa.27.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.23.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 96
  br label %bb.b

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.a
  %.sroa.037.0.lcssa.i.i.i.i = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.gh, %bb.f ] ; 3 uses
  %i.do = fcmp une <4 x float> %.sroa.037.0.lcssa.i.i.i.i, zeroinitializer
  %i.dp = bitcast <4 x i1> %i.do to i4
  %.not4 = icmp eq i4 %i.dp, 0
  br i1 %.not4, label %"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator17HandleEscapedRaysEvE3$_0NS0_18EscapedRayWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit", label %bb.g

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.093.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i ], [ %i.gi, %bb.f ] ; 4 uses
  %.sroa.037.092.i.i.i.i = phi <4 x float> [ zeroinitializer, %.lr.ph.i.i.i.i ], [ %i.gh, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %.sroa.011.0.copyload.i.i.i.i = load <2 x float>, ptr %10, align 8
  %.sroa.212.0.copyload.i.i.i.i = load float, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.sroa.09.0.copyload.i.i.i.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4
  %.sroa.210.0.copyload.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  store <2 x float> %.sroa.011.0.copyload.i.i.i.i, ptr %7, align 8
  store float %.sroa.212.0.copyload.i.i.i.i, ptr %.sroa.27.0..sroa_idx.i.i.i.i.i, align 8
  store <2 x float> %.sroa.09.0.copyload.i.i.i.i, ptr %i.df, align 4
  %i.dq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.210.0.copyload.i.i.i.i, i64 0
  store <2 x float> %i.dq, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i, align 4
  store i64 0, ptr %i.dg, align 8, !tbaa !1104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %7, ptr %6, align 8, !tbaa !1105
  store ptr %.sroa.6.0..sroa_idx.i.i.i, ptr %i.dh, align 8, !tbaa !1106
  %i.dr = load i64, ptr %.093.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %i.ds = and i64 %i.dr, 144115188075855871
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = lshr i64 %i.dr, 57
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_5Light2LeERKNS_3RayERKNS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS9_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.dt, i32 noundef %i.dw) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.dy = extractvalue { <2 x float>, <2 x float> } %i.dx, 0
  %i.dz = extractvalue { <2 x float>, <2 x float> } %i.dx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
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
  %i.ei = load float, ptr %i.dm, align 8, !tbaa !437
  %i.ej = fadd float %i.eh, %i.ei
  %i.ek = load float, ptr %.sroa.15.0..sroa_idx.i.i.i, align 4, !tbaa !437
  %i.el = fadd float %i.ej, %i.ek
  %i.em = load float, ptr %i.dn, align 8, !tbaa !437
  %i.en = fadd float %i.el, %i.em
  %i.eo = fmul float %i.en, 2.500000e-01
  %11 = shufflevector <2 x float> %.sroa.0.0.copyload4.i.i.i.i.i, <2 x float> %.sroa.8.0.copyload.i.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ep = fmul <4 x float> %.fr, %11
  %i.eq = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fdiv <4 x float> %i.ep, %i.er
  %i.et = fadd <4 x float> %.sroa.037.092.i.i.i.i, %i.es
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) %.sroa.18.0..sroa_idx.i.i.i, i64 48, i1 false)
  %i.eu = load i64, ptr %.093.i.i.i.i, align 8, !tbaa !99
  store i64 %i.eu, ptr %9, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %8, ptr %5, align 8, !tbaa !468
  store ptr %9, ptr %i.dj, align 8, !tbaa !97
  %i.ev = load i64, ptr %i.di, align 8, !tbaa !71 ; 2 uses
  %i.ew = and i64 %i.ev, 144115188075855871
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = lshr i64 %i.ev, 57
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = add nsw i32 %i.ez, -1
  %i.fb = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_12LightSampler3PMFERKNS_18LightSampleContextENS_5LightEEUlT_E_fNS_19UniformLightSamplerENS_17PowerLightSamplerENS_22ExhaustiveLightSamplerENS_15BVHLightSamplerEEET0_OS7_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ex, i32 noundef %i.fa)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %4, ptr %3, align 8, !tbaa !468
  store ptr %2, ptr %i.dk, align 8, !tbaa !470
  store ptr %i.a, ptr %i.dl, align 8, !tbaa !471
  %i.fc = load i64, ptr %.093.i.i.i.i, align 8, !tbaa !99 ; 2 uses
  %i.fd = and i64 %i.fc, 144115188075855871
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = lshr i64 %i.fc, 57
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -1
  %i.fi = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_5Light6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEbEUlT_E_fNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS6_PKvi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.fe, i32 noundef %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fj = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %12 = shufflevector <2 x float> %.sroa.6.0.copyload.i.i.i.i.i, <2 x float> %.sroa.0.0.copyload.i.i.i.i.i, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.fl = fmul <4 x float> %i.fk, %12
  %i.fm = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = fmul <4 x float> %i.fl, %i.fn           ; 3 uses
  %.sroa.0.0.copyload4.i58.i.i.i.i = load <2 x float>, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8
  %.sroa.8.0.copyload.i60.i.i.i.i = load <2 x float>, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !tbaa !122
  %.sroa.0.0.copyload4.i71.i.i.i.i = load <2 x float>, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.8.0.copyload.i73.i.i.i.i = load <2 x float>, ptr %.sroa.15.0..sroa_idx.i.i.i, align 4, !tbaa !122 ; 2 uses
  %.sroa.0.0.vec.extract.i74.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload4.i71.i.i.i.i, i64 0
  %i.fp = extractelement <4 x float> %i.fo, i64 1
  %i.fq = fadd float %i.fp, %.sroa.0.0.vec.extract.i74.i.i.i.i
  %i.fr = shufflevector <4 x float> %i.fo, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fs = shufflevector <2 x float> %.sroa.0.0.copyload4.i71.i.i.i.i, <2 x float> %.sroa.8.0.copyload.i73.i.i.i.i, <2 x i32> <i32 1, i32 2>
  %i.ft = fadd <2 x float> %i.fr, %i.fs           ; 2 uses
  %.sroa.8.12.vec.extract.i80.i.i.i.i = extractelement <2 x float> %.sroa.8.0.copyload.i73.i.i.i.i, i64 1
  %i.fu = extractelement <4 x float> %i.fo, i64 0
  %i.fv = fadd float %i.fu, %.sroa.8.12.vec.extract.i80.i.i.i.i
  %i.fw = extractelement <2 x float> %i.ft, i64 0
  %i.fx = fadd float %i.fq, %i.fw
  %i.fy = extractelement <2 x float> %i.ft, i64 1
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = fadd float %i.fv, %i.fz
  %i.gb = fmul float %i.ga, 2.500000e-01
  %13 = shufflevector <2 x float> %.sroa.0.0.copyload4.i58.i.i.i.i, <2 x float> %.sroa.8.0.copyload.i60.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gc = fmul <4 x float> %.fr, %13
  %i.gd = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gf = fdiv <4 x float> %i.gc, %i.ge
  %i.gg = fadd <4 x float> %.sroa.037.092.i.i.i.i, %i.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.037.1.i.i.i.i = phi <4 x float> [ %i.et, %bb.d ], [ %i.gg, %bb.e ], [ %.sroa.037.092.i.i.i.i, %bb.b ]
  %i.gh = freeze <4 x float> %.sroa.037.1.i.i.i.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.093.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gi, %i.de
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.b

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gj = load i32, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !tbaa !1109
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.val, i64 208
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !268
  %i.gm = sext i32 %i.gj to i64
  %i.gn = getelementptr inbounds [16 x i8], ptr %i.gl, i64 %i.gm ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %i.gn, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !122
  %i.go = shufflevector <4 x float> %.sroa.037.0.lcssa.i.i.i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gp = fadd <2 x float> %i.go, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.gq = shufflevector <4 x float> %.sroa.037.0.lcssa.i.i.i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gr = fadd <2 x float> %i.gq, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  store <2 x float> %i.gp, ptr %i.gn, align 16
  store <2 x float> %i.gr, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !122
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
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.al) ; 2 uses
  %i.am = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x float> %i.ah, %i.an
  %i.ap = fdiv float %i.s, %sqrt.i.i.i.i
  %i.aq = tail call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %i.ao, float %i.ap)
  %i.ar = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt18ImageInfiniteLight7ImageLeENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(592) %1, <2 x float> %i.aq, ptr noundef nonnull align 4 dereferenceable(32) %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %0, align 8, !tbaa !1112, !nonnull !119, !align !438
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1113, !nonnull !119, !align !472
  %i.av = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt24PortalImageInfiniteLight2LeERKNS_3RayERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(516) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 4 dereferenceable(32) %i.au)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c, %bb.b
  %.pn = phi { <2 x float>, <2 x float> } [ %i.av, %bb.d ], [ %i.ar, %bb.c ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.a ], [ %i.d, %bb.b ], [ zeroinitializer, %bb.a ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
end_hunk_0
