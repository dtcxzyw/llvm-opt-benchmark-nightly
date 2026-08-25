Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GammaOpCPU?download=true
inline.NumInlined: 810
inline.NumDeleted: 380
begin_hunk_0_@_ZNK16OpenColorIO_v2_526GammaBasicPassThruOpCPUSSE5applyEPKvPvl:bb.a
  %i.ac = sitofp <4 x i32> %i.ab to <4 x float>
  %i.ad = fadd nnan <4 x float> %i.y, %i.ac
  %i.ae = fmul <4 x float> %i.i, %i.ad            ; 5 uses
  %i.af = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ae)
  %i.ag = fcmp ult <4 x float> %i.ae, zeroinitializer
  %i.ah = sext <4 x i1> %i.ag to <4 x i32>
  %i.ai = add <4 x i32> %i.af, %i.ah              ; 2 uses
  %i.aj = shl <4 x i32> %i.ai, splat (i32 23)
  %i.ak = add <4 x i32> %i.aj, splat (i32 1065353216)
  %i.al = bitcast <4 x i32> %i.ak to <4 x float>
  %i.am = sitofp <4 x i32> %i.ai to <4 x float>
  %i.an = fsub <4 x float> %i.ae, %i.am           ; 4 uses
  %i.ao = fmul <4 x float> %i.an, splat (float f0x3C5DBE6A)
  %i.ap = fadd <4 x float> %i.ao, splat (float f0x3D5509F8)
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %i.ar = fadd <4 x float> %i.aq, splat (float f0x3E773CC5)
  %i.as = fmul <4 x float> %i.an, %i.ar
  %i.at = fadd <4 x float> %i.as, splat (float f0x3F3168B3)
  %i.au = fmul <4 x float> %i.an, %i.at
  %i.av = fadd <4 x float> %i.au, splat (float f0x3F800016)
  %i.aw = fmul <4 x float> %i.av, %i.al
  %i.ax = fcmp uge <4 x float> %i.ae, splat (float -1.260000e+02)
  %i.ay = fcmp oge <4 x float> %i.ae, splat (float 1.280000e+02)
  %i.az = fcmp ule <4 x float> %i.k, zeroinitializer
  %i.ba = select <4 x i1> %i.ax, <4 x float> %i.aw, <4 x float> zeroinitializer
  %i.bb = select <4 x i1> %i.ay, <4 x float> splat (float +inf), <4 x float> %i.ba
  %i.bc = select <4 x i1> %i.az, <4 x float> %i.k, <4 x float> %i.bb
  store <4 x float> %i.bc, ptr %.02124, align 1, !tbaa !129
  %i.bd = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.02124, i64 16
  %i.bf = add nuw nsw i64 %.02223, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GammaBasicPassThruOpCPU5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.034 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.j ]
  %.02333 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %bb.j ] ; 5 uses
  %.02432 = phi ptr [ %1, %.lr.ph ], [ %i.af, %bb.j ] ; 5 uses
  %i.f = load float, ptr %.02432, align 4, !tbaa !128 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02432, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !128 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02432, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !128 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02432, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !128 ; 3 uses
  %i.m = fcmp ogt float %i.f, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load float, ptr %i.b, align 8, !tbaa !102
  %i.o = tail call noundef float @powf(float noundef %i.f, float noundef %i.n) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi float [ %i.o, %bb.c ], [ %i.f, %bb.b ]
  store float %i.p, ptr %.02333, align 4, !tbaa !128
  %i.q = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load float, ptr %i.c, align 4, !tbaa !106
  %i.s = tail call noundef float @powf(float noundef %i.h, float noundef %i.r) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi float [ %i.s, %bb.e ], [ %i.h, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.02333, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !128
  %i.v = fcmp ogt float %i.j, 0.000000e+00
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load float, ptr %i.d, align 8, !tbaa !107
  %i.x = tail call noundef float @powf(float noundef %i.j, float noundef %i.w) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.y = phi float [ %i.x, %bb.g ], [ %i.j, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.02333, i64 8
  store float %i.y, ptr %i.z, align 4, !tbaa !128
  %i.aa = fcmp ogt float %i.l, 0.000000e+00
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load float, ptr %i.e, align 4, !tbaa !108
  %i.ac = tail call noundef float @powf(float noundef %i.l, float noundef %i.ab) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = phi float [ %i.ac, %bb.i ], [ %i.l, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.02333, i64 12
  store float %i.ad, ptr %i.ae, align 4, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %.02432, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.02333, i64 16
  %i.ah = add nuw nsw i64 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !136
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521GammaMoncurveOpCPUFwdC2ERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !128
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_521GammaMoncurveOpCPUFwdE, i64 16), ptr %0, align 8, !tbaa !94
  %i.i = load ptr, ptr %1, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.a)
  %i.k = load ptr, ptr %1, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.m = load ptr, ptr %1, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.e)
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521GammaMoncurveOpCPUFwd6updateERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  ret void
}

declare void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_524GammaMoncurveOpCPUFwdSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.c = load float, ptr %i.b, align 4, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 8      ; 4 uses
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 1
  %i.m = insertelement <4 x float> %i.l, float %i.f, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.c, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load float, ptr %i.o, align 8, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %i.q, align 4, !tbaa !143
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.k, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = load float, ptr %i.a, align 4, !tbaa !144
  %i.y = load float, ptr %i.d, align 8, !tbaa !145
  %i.z = load <4 x float>, ptr %i.i, align 8
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !146
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load float, ptr %i.af, align 8, !tbaa !147
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <4 x float>, ptr %4, align 8
  %6 = shufflevector <4 x float> %5, <4 x float> %i.k, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.ah = insertelement <4 x float> %6, float %i.ag, i64 2
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.am = load float, ptr %i.al, align 4, !tbaa !149
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 8, !tbaa !150
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %8 = load <4 x float>, ptr %7, align 4
  %i.ap = insertelement <4 x float> %8, float %i.ao, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.ak, i64 3
  %i.as = icmp sgt i64 %3, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.029 = phi ptr [ %i.cv, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.02528 = phi ptr [ %i.cw, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02627 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %bb.a ]
  %i.at = load <4 x float>, ptr %.029, align 4, !tbaa !128 ; 3 uses
  %i.au = fmul <4 x float> %i.n, %i.at
  %i.av = fadd <4 x float> %i.w, %i.au            ; 2 uses
  %i.aw = bitcast <4 x float> %i.av to <4 x i32>  ; 2 uses
  %i.ax = and <4 x i32> %i.aw, splat (i32 -2139095041)
  %i.ay = or disjoint <4 x i32> %i.ax, splat (i32 1065353216)
  %i.az = bitcast <4 x i32> %i.ay to <4 x float>  ; 5 uses
  %i.ba = fmul nnan <4 x float> %i.az, splat (float f0x3D37CD65)
  %i.bb = fadd nnan <4 x float> %i.ba, splat (float f0xBED547D7)
  %i.bc = fmul nnan <4 x float> %i.bb, %i.az
  %i.bd = fadd nnan <4 x float> %i.bc, splat (float f0x3FD0C97C)
  %i.be = fmul nnan <4 x float> %i.bd, %i.az
  %i.bf = fadd nnan <4 x float> %i.be, splat (float f0xC0634031)
  %i.bg = fmul nnan <4 x float> %i.bf, %i.az
  %i.bh = fadd nnan <4 x float> %i.bg, splat (float f0x40A2EF4C)
  %i.bi = fmul nnan <4 x float> %i.bh, %i.az
  %i.bj = fadd nnan <4 x float> %i.bi, splat (float f0xC033392A)
  %i.bk = lshr <4 x i32> %i.aw, splat (i32 23)
  %i.bl = and <4 x i32> %i.bk, splat (i32 255)
  %i.bm = add nsw <4 x i32> %i.bl, splat (i32 -127)
  %i.bn = sitofp <4 x i32> %i.bm to <4 x float>
  %i.bo = fadd nnan <4 x float> %i.bj, %i.bn
  %i.bp = fmul <4 x float> %i.ac, %i.bo           ; 5 uses
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bp)
  %i.br = fcmp ult <4 x float> %i.bp, zeroinitializer
  %i.bs = sext <4 x i1> %i.br to <4 x i32>
  %i.bt = add <4 x i32> %i.bq, %i.bs              ; 2 uses
  %i.bu = shl <4 x i32> %i.bt, splat (i32 23)
  %i.bv = add <4 x i32> %i.bu, splat (i32 1065353216)
  %i.bw = bitcast <4 x i32> %i.bv to <4 x float>
  %i.bx = sitofp <4 x i32> %i.bt to <4 x float>
  %i.by = fsub <4 x float> %i.bp, %i.bx           ; 4 uses
  %i.bz = fmul <4 x float> %i.by, splat (float f0x3C5DBE6A)
  %i.ca = fadd <4 x float> %i.bz, splat (float f0x3D5509F8)
  %i.cb = fmul <4 x float> %i.by, %i.ca
  %i.cc = fadd <4 x float> %i.cb, splat (float f0x3E773CC5)
  %i.cd = fmul <4 x float> %i.by, %i.cc
  %i.ce = fadd <4 x float> %i.cd, splat (float f0x3F3168B3)
  %i.cf = fmul <4 x float> %i.by, %i.ce
  %i.cg = fadd <4 x float> %i.cf, splat (float f0x3F800016)
  %i.ch = fmul <4 x float> %i.cg, %i.bw
  %i.ci = fcmp uge <4 x float> %i.bp, splat (float -1.260000e+02)
  %i.cj = fcmp oge <4 x float> %i.bp, splat (float 1.280000e+02)
  %i.ck = fcmp ogt <4 x float> %i.av, zeroinitializer
  %i.cl = fcmp olt <4 x float> %i.ai, %i.at       ; 2 uses
  %i.cm = bitcast <4 x float> %i.ch to <4 x i32>
  %i.cn = select <4 x i1> %i.ci, <4 x i32> %i.cm, <4 x i32> zeroinitializer
  %i.co = select <4 x i1> %i.cj, <4 x i32> splat (i32 2139095040), <4 x i32> %i.cn
  %i.cp = select <4 x i1> %i.cl, <4 x i1> %i.ck, <4 x i1> zeroinitializer
  %i.cq = select <4 x i1> %i.cp, <4 x i32> %i.co, <4 x i32> zeroinitializer
  %i.cr = fmul <4 x float> %i.ar, %i.at
  %i.cs = bitcast <4 x float> %i.cr to <4 x i32>
  %i.ct = select <4 x i1> %i.cl, <4 x i32> zeroinitializer, <4 x i32> %i.cs
  %i.cu = or <4 x i32> %i.cq, %i.ct
  store <4 x i32> %i.cu, ptr %.02528, align 1, !tbaa !129
  %i.cv = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.02528, i64 16
  %i.cx = add nuw nsw i64 %.02627, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_521GammaMoncurveOpCPUFwd5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <4 x float>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load <4 x float>, ptr %i.d, align 4
  %i.f = load float, ptr %i.a, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load float, ptr %i.k, align 8, !tbaa !153
  %i.m = load float, ptr %i.h, align 4, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load float, ptr %i.r, align 4, !tbaa !143
  %i.t = load float, ptr %i.o, align 8, !tbaa !145
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.x = load float, ptr %i.w, align 4, !tbaa !137
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load float, ptr %i.y, align 8, !tbaa !142
  %i.aa = load float, ptr %i.v, align 4, !tbaa !144
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ac = load <2 x float>, ptr %i.g, align 8, !tbaa !128 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.n, align 4, !tbaa !128 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.u, align 8     ; 2 uses
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !128
  %i.ag = icmp sgt i64 %3, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ah = insertelement <4 x float> %i.c, float %i.j, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %i.q, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.x, i64 3
  %i.ak = insertelement <4 x float> %i.e, float %i.l, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.s, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.z, i64 3
  %i.an = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ap = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ar = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.049 = phi ptr [ %i.bl, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04548 = phi ptr [ %i.bm, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.04647 = phi i64 [ %i.bn, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.au = load <4 x float>, ptr %.049, align 4, !tbaa !128 ; 3 uses
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.aj, <4 x float> %i.am) ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 0
  %i.ax = tail call noundef float @powf(float noundef %i.aw, float noundef %i.f) #18
  %i.ay = extractelement <4 x float> %i.av, i64 1
  %i.az = tail call noundef float @powf(float noundef %i.ay, float noundef %i.m) #18
  %i.ba = extractelement <4 x float> %i.av, i64 2
  %i.bb = tail call noundef float @powf(float noundef %i.ba, float noundef %i.t) #18
  %i.bc = extractelement <4 x float> %i.av, i64 3
  %i.bd = tail call noundef float @powf(float noundef %i.bc, float noundef %i.aa) #18
  %i.be = fcmp ole <4 x float> %i.au, %i.aq
  %i.bf = fmul <4 x float> %i.at, %i.au
  %i.bg = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.az, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.bb, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bd, i64 3
  %i.bk = select <4 x i1> %i.be, <4 x float> %i.bf, <4 x float> %i.bj
  store <4 x float> %i.bk, ptr %.04548, align 4, !tbaa !128
  %i.bl = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.04548, i64 16
  %i.bn = add nuw nsw i64 %.04647, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !155
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521GammaMoncurveOpCPURevC2ERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !128
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_521GammaMoncurveOpCPURevE, i64 16), ptr %0, align 8, !tbaa !94
  %i.i = load ptr, ptr %1, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.a)
  %i.k = load ptr, ptr %1, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.m = load ptr, ptr %1, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.e)
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521GammaMoncurveOpCPURev6updateERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  ret void
}

declare void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_524GammaMoncurveOpCPURevSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.c = load float, ptr %i.b, align 4, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 8      ; 4 uses
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 1
  %i.m = insertelement <4 x float> %i.l, float %i.f, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.c, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load float, ptr %i.o, align 8, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %i.q, align 4, !tbaa !143
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.k, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = load float, ptr %i.a, align 4, !tbaa !144
  %i.y = load float, ptr %i.d, align 8, !tbaa !145
  %i.z = load <4 x float>, ptr %i.i, align 8
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !146
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load float, ptr %i.af, align 8, !tbaa !147
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <4 x float>, ptr %4, align 8
  %6 = shufflevector <4 x float> %5, <4 x float> %i.k, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.ah = insertelement <4 x float> %6, float %i.ag, i64 2
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.am = load float, ptr %i.al, align 4, !tbaa !149
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 8, !tbaa !150
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %8 = load <4 x float>, ptr %7, align 4
  %i.ap = insertelement <4 x float> %8, float %i.ao, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.ak, i64 3
  %i.as = icmp sgt i64 %3, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.029 = phi ptr [ %i.cq, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.02528 = phi ptr [ %i.cr, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02627 = phi i64 [ %i.cs, %.lr.ph ], [ 0, %bb.a ]
  %i.at = load <4 x float>, ptr %.029, align 4, !tbaa !128 ; 4 uses
  %i.au = bitcast <4 x float> %i.at to <4 x i32>  ; 2 uses
  %i.av = and <4 x i32> %i.au, splat (i32 -2139095041)
  %i.aw = or disjoint <4 x i32> %i.av, splat (i32 1065353216)
  %i.ax = bitcast <4 x i32> %i.aw to <4 x float>  ; 5 uses
  %i.ay = fmul nnan <4 x float> %i.ax, splat (float f0x3D37CD65)
  %i.az = fadd nnan <4 x float> %i.ay, splat (float f0xBED547D7)
  %i.ba = fmul nnan <4 x float> %i.az, %i.ax
  %i.bb = fadd nnan <4 x float> %i.ba, splat (float f0x3FD0C97C)
  %i.bc = fmul nnan <4 x float> %i.bb, %i.ax
  %i.bd = fadd nnan <4 x float> %i.bc, splat (float f0xC0634031)
  %i.be = fmul nnan <4 x float> %i.bd, %i.ax
  %i.bf = fadd nnan <4 x float> %i.be, splat (float f0x40A2EF4C)
  %i.bg = fmul nnan <4 x float> %i.bf, %i.ax
  %i.bh = fadd nnan <4 x float> %i.bg, splat (float f0xC033392A)
  %i.bi = lshr <4 x i32> %i.au, splat (i32 23)
  %i.bj = and <4 x i32> %i.bi, splat (i32 255)
  %i.bk = add nsw <4 x i32> %i.bj, splat (i32 -127)
  %i.bl = sitofp <4 x i32> %i.bk to <4 x float>
  %i.bm = fadd nnan <4 x float> %i.bh, %i.bl
  %i.bn = fmul <4 x float> %i.ac, %i.bm           ; 5 uses
  %i.bo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bn)
  %i.bp = fcmp ult <4 x float> %i.bn, zeroinitializer
  %i.bq = sext <4 x i1> %i.bp to <4 x i32>
  %i.br = add <4 x i32> %i.bo, %i.bq              ; 2 uses
  %i.bs = shl <4 x i32> %i.br, splat (i32 23)
  %i.bt = add <4 x i32> %i.bs, splat (i32 1065353216)
  %i.bu = bitcast <4 x i32> %i.bt to <4 x float>
  %i.bv = sitofp <4 x i32> %i.br to <4 x float>
  %i.bw = fsub <4 x float> %i.bn, %i.bv           ; 4 uses
  %i.bx = fmul <4 x float> %i.bw, splat (float f0x3C5DBE6A)
  %i.by = fadd <4 x float> %i.bx, splat (float f0x3D5509F8)
  %i.bz = fmul <4 x float> %i.bw, %i.by
  %i.ca = fadd <4 x float> %i.bz, splat (float f0x3E773CC5)
  %i.cb = fmul <4 x float> %i.bw, %i.ca
  %i.cc = fadd <4 x float> %i.cb, splat (float f0x3F3168B3)
  %i.cd = fmul <4 x float> %i.bw, %i.cc
  %i.ce = fadd <4 x float> %i.cd, splat (float f0x3F800016)
  %i.cf = fmul <4 x float> %i.ce, %i.bu
  %i.cg = fcmp uge <4 x float> %i.bn, splat (float -1.260000e+02)
  %i.ch = fcmp oge <4 x float> %i.bn, splat (float 1.280000e+02)
  %i.ci = fcmp ogt <4 x float> %i.at, zeroinitializer
  %i.cj = select <4 x i1> %i.cg, <4 x float> %i.cf, <4 x float> zeroinitializer
  %i.ck = select <4 x i1> %i.ch, <4 x float> splat (float +inf), <4 x float> %i.cj
  %i.cl = select <4 x i1> %i.ci, <4 x float> %i.ck, <4 x float> zeroinitializer
  %i.cm = fmul <4 x float> %i.n, %i.cl
  %i.cn = fsub <4 x float> %i.cm, %i.w
  %i.co = fcmp uge <4 x float> %i.ai, %i.at
  %i.cp = fmul <4 x float> %i.ar, %i.at
  %.v = select <4 x i1> %i.co, <4 x float> %i.cp, <4 x float> %i.cn
  store <4 x float> %.v, ptr %.02528, align 1, !tbaa !129
  %i.cq = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.02528, i64 16
  %i.cs = add nuw nsw i64 %.02627, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !156
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_521GammaMoncurveOpCPURev5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load float, ptr %i.e, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.h = load float, ptr %i.g, align 4, !tbaa !144
  %i.i = icmp sgt i64 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load <2 x float>, ptr %i.j, align 8, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load <4 x float>, ptr %i.l, align 8, !tbaa !128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <4 x float>, ptr %i.n, align 8      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load <4 x float>, ptr %i.r, align 8, !tbaa !128
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !128 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load float, ptr %i.w, align 8, !tbaa !142
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.z = load float, ptr %i.y, align 4, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !153
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load <4 x float>, ptr %i.ac, align 4
  %i.ae = insertelement <4 x float> %i.ad, float %i.ab, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.x, i64 3
  %i.ah = fneg <4 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.v, <2 x float> %i.t, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.al = shufflevector <2 x float> %i.v, <2 x float> %i.q, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> %i.al, <4 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.an = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ap = shufflevector <2 x float> %i.t, <2 x float> %i.q, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.049 = phi ptr [ %1, %.lr.ph ], [ %i.bj, %bb.b ] ; 2 uses
  %.04548 = phi ptr [ %2, %.lr.ph ], [ %i.bk, %bb.b ] ; 2 uses
  %.04647 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %bb.b ]
  %i.as = load <4 x float>, ptr %.049, align 4, !tbaa !128 ; 6 uses
  %i.at = extractelement <4 x float> %i.as, i64 0
  %i.au = tail call noundef float @powf(float noundef %i.at, float noundef %i.b) #18
  %i.av = extractelement <4 x float> %i.as, i64 1
  %i.aw = tail call noundef float @powf(float noundef %i.av, float noundef %i.d) #18
  %i.ax = extractelement <4 x float> %i.as, i64 2
  %i.ay = tail call noundef float @powf(float noundef %i.ax, float noundef %i.f) #18
  %i.az = extractelement <4 x float> %i.as, i64 3
  %i.ba = tail call noundef float @powf(float noundef %i.az, float noundef %i.h) #18
  %i.bb = insertelement <4 x float> poison, float %i.au, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.aw, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.ay, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ar, <4 x float> %i.ah)
  %i.bg = fcmp ole <4 x float> %i.as, %i.ak
  %i.bh = fmul <4 x float> %i.ao, %i.as
  %i.bi = select <4 x i1> %i.bg, <4 x float> %i.bh, <4 x float> %i.bf
  store <4 x float> %i.bi, ptr %.04548, align 4, !tbaa !128
  %i.bj = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.04548, i64 16
  %i.bl = add nuw nsw i64 %.04647, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !157
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPUFwdC2ERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !128
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPUFwdE, i64 16), ptr %0, align 8, !tbaa !94
  %i.i = load ptr, ptr %1, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.a)
  %i.k = load ptr, ptr %1, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.m = load ptr, ptr %1, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.e)
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPUFwd6updateERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_530GammaMoncurveMirrorOpCPUFwdSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.c = load float, ptr %i.b, align 4, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 8      ; 4 uses
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 1
  %i.m = insertelement <4 x float> %i.l, float %i.f, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.c, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load float, ptr %i.o, align 8, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %i.q, align 4, !tbaa !143
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.k, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = load float, ptr %i.a, align 4, !tbaa !144
  %i.y = load float, ptr %i.d, align 8, !tbaa !145
  %i.z = load <4 x float>, ptr %i.i, align 8
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !146
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load float, ptr %i.af, align 8, !tbaa !147
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <4 x float>, ptr %4, align 8
  %6 = shufflevector <4 x float> %5, <4 x float> %i.k, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.ah = insertelement <4 x float> %6, float %i.ag, i64 2
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.am = load float, ptr %i.al, align 4, !tbaa !149
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 8, !tbaa !150
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %8 = load <4 x float>, ptr %7, align 4
  %i.ap = insertelement <4 x float> %8, float %i.ao, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.ak, i64 3
  %i.as = icmp sgt i64 %3, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi ptr [ %i.cz, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.02932 = phi ptr [ %i.da, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.03031 = phi i64 [ %i.db, %.lr.ph ], [ 0, %bb.a ]
  %i.at = load <4 x float>, ptr %.033, align 4, !tbaa !128 ; 2 uses
  %i.au = bitcast <4 x float> %i.at to <4 x i32>
  %i.av = and <4 x i32> %i.au, splat (i32 -2147483648)
  %i.aw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.at) ; 3 uses
  %i.ax = fmul <4 x float> %i.n, %i.aw
  %i.ay = fadd <4 x float> %i.w, %i.ax            ; 2 uses
  %i.az = bitcast <4 x float> %i.ay to <4 x i32>  ; 2 uses
  %i.ba = and <4 x i32> %i.az, splat (i32 -2139095041)
  %i.bb = or disjoint <4 x i32> %i.ba, splat (i32 1065353216)
  %i.bc = bitcast <4 x i32> %i.bb to <4 x float>  ; 5 uses
  %i.bd = fmul nnan <4 x float> %i.bc, splat (float f0x3D37CD65)
  %i.be = fadd nnan <4 x float> %i.bd, splat (float f0xBED547D7)
  %i.bf = fmul nnan <4 x float> %i.be, %i.bc
  %i.bg = fadd nnan <4 x float> %i.bf, splat (float f0x3FD0C97C)
  %i.bh = fmul nnan <4 x float> %i.bg, %i.bc
  %i.bi = fadd nnan <4 x float> %i.bh, splat (float f0xC0634031)
  %i.bj = fmul nnan <4 x float> %i.bi, %i.bc
  %i.bk = fadd nnan <4 x float> %i.bj, splat (float f0x40A2EF4C)
  %i.bl = fmul nnan <4 x float> %i.bk, %i.bc
  %i.bm = fadd nnan <4 x float> %i.bl, splat (float f0xC033392A)
  %i.bn = lshr <4 x i32> %i.az, splat (i32 23)
  %i.bo = and <4 x i32> %i.bn, splat (i32 255)
  %i.bp = add nsw <4 x i32> %i.bo, splat (i32 -127)
  %i.bq = sitofp <4 x i32> %i.bp to <4 x float>
  %i.br = fadd nnan <4 x float> %i.bm, %i.bq
  %i.bs = fmul <4 x float> %i.ac, %i.br           ; 5 uses
  %i.bt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bs)
  %i.bu = fcmp ult <4 x float> %i.bs, zeroinitializer
  %i.bv = sext <4 x i1> %i.bu to <4 x i32>
  %i.bw = add <4 x i32> %i.bt, %i.bv              ; 2 uses
  %i.bx = shl <4 x i32> %i.bw, splat (i32 23)
  %i.by = add <4 x i32> %i.bx, splat (i32 1065353216)
  %i.bz = bitcast <4 x i32> %i.by to <4 x float>
  %i.ca = sitofp <4 x i32> %i.bw to <4 x float>
  %i.cb = fsub <4 x float> %i.bs, %i.ca           ; 4 uses
  %i.cc = fmul <4 x float> %i.cb, splat (float f0x3C5DBE6A)
  %i.cd = fadd <4 x float> %i.cc, splat (float f0x3D5509F8)
  %i.ce = fmul <4 x float> %i.cb, %i.cd
  %i.cf = fadd <4 x float> %i.ce, splat (float f0x3E773CC5)
  %i.cg = fmul <4 x float> %i.cb, %i.cf
  %i.ch = fadd <4 x float> %i.cg, splat (float f0x3F3168B3)
  %i.ci = fmul <4 x float> %i.cb, %i.ch
  %i.cj = fadd <4 x float> %i.ci, splat (float f0x3F800016)
  %i.ck = fmul <4 x float> %i.cj, %i.bz
  %i.cl = fcmp uge <4 x float> %i.bs, splat (float -1.260000e+02)
  %i.cm = fcmp oge <4 x float> %i.bs, splat (float 1.280000e+02)
  %i.cn = fcmp ogt <4 x float> %i.ay, zeroinitializer
  %i.co = fcmp olt <4 x float> %i.ai, %i.aw       ; 2 uses
  %i.cp = bitcast <4 x float> %i.ck to <4 x i32>
  %i.cq = select <4 x i1> %i.cl, <4 x i32> %i.cp, <4 x i32> zeroinitializer
  %i.cr = select <4 x i1> %i.cm, <4 x i32> splat (i32 2139095040), <4 x i32> %i.cq
  %i.cs = select <4 x i1> %i.co, <4 x i1> %i.cn, <4 x i1> zeroinitializer
  %i.ct = select <4 x i1> %i.cs, <4 x i32> %i.cr, <4 x i32> zeroinitializer
  %i.cu = fmul <4 x float> %i.ar, %i.aw
  %i.cv = bitcast <4 x float> %i.cu to <4 x i32>
  %i.cw = select <4 x i1> %i.co, <4 x i32> zeroinitializer, <4 x i32> %i.cv
  %i.cx = or <4 x i32> %i.cw, %i.av
  %i.cy = or <4 x i32> %i.cx, %i.ct
  store <4 x i32> %i.cy, ptr %.02932, align 1, !tbaa !129
  %i.cz = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %.02932, i64 16
  %i.db = add nuw nsw i64 %.03031, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_527GammaMoncurveMirrorOpCPUFwd5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <4 x float>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load <4 x float>, ptr %i.d, align 4
  %i.f = load float, ptr %i.a, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load float, ptr %i.k, align 8, !tbaa !153
  %i.m = load float, ptr %i.h, align 4, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load float, ptr %i.r, align 4, !tbaa !143
  %i.t = load float, ptr %i.o, align 8, !tbaa !145
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.x = load float, ptr %i.w, align 4, !tbaa !137
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load float, ptr %i.y, align 8, !tbaa !142
  %i.aa = load float, ptr %i.v, align 4, !tbaa !144
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ac = load <2 x float>, ptr %i.g, align 8, !tbaa !128 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.n, align 4, !tbaa !128 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.u, align 8     ; 2 uses
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !128
  %i.ag = icmp sgt i64 %3, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ah = insertelement <4 x float> %i.c, float %i.j, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %i.q, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.x, i64 3
  %i.ak = insertelement <4 x float> %i.e, float %i.l, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.s, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.z, i64 3
  %i.an = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ap = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ar = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.057 = phi ptr [ %i.bo, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.05356 = phi ptr [ %i.bp, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.05455 = phi i64 [ %i.bq, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.au = load <4 x float>, ptr %.057, align 4, !tbaa !128 ; 2 uses
  %i.av = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 1.000000e+00), <4 x float> %i.au)
  %i.aw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.au) ; 3 uses
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.aj, <4 x float> %i.am) ; 4 uses
  %i.ay = extractelement <4 x float> %i.ax, i64 0
  %i.az = tail call noundef float @powf(float noundef %i.ay, float noundef %i.f) #18
  %i.ba = extractelement <4 x float> %i.ax, i64 1
  %i.bb = tail call noundef float @powf(float noundef %i.ba, float noundef %i.m) #18
  %i.bc = extractelement <4 x float> %i.ax, i64 2
  %i.bd = tail call noundef float @powf(float noundef %i.bc, float noundef %i.t) #18
  %i.be = extractelement <4 x float> %i.ax, i64 3
  %i.bf = tail call noundef float @powf(float noundef %i.be, float noundef %i.aa) #18
  %i.bg = fcmp ole <4 x float> %i.aw, %i.aq
  %i.bh = fmul <4 x float> %i.at, %i.aw
  %i.bi = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bb, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bd, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bf, i64 3
  %i.bm = select <4 x i1> %i.bg, <4 x float> %i.bh, <4 x float> %i.bl
  %i.bn = fmul <4 x float> %i.av, %i.bm
  store <4 x float> %i.bn, ptr %.05356, align 4, !tbaa !128
  %i.bo = getelementptr inbounds nuw i8, ptr %.057, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.05356, i64 16
  %i.bq = add nuw nsw i64 %.05455, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPURevC2ERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !128
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPURevE, i64 16), ptr %0, align 8, !tbaa !94
  %i.i = load ptr, ptr %1, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.a)
  %i.k = load ptr, ptr %1, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.m = load ptr, ptr %1, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.e)
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPURev6updateERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_530GammaMoncurveMirrorOpCPURevSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.c = load float, ptr %i.b, align 4, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 8      ; 4 uses
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 1
  %i.m = insertelement <4 x float> %i.l, float %i.f, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.c, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load float, ptr %i.o, align 8, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %i.q, align 4, !tbaa !143
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.k, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = load float, ptr %i.a, align 4, !tbaa !144
  %i.y = load float, ptr %i.d, align 8, !tbaa !145
  %i.z = load <4 x float>, ptr %i.i, align 8
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !146
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load float, ptr %i.af, align 8, !tbaa !147
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load <4 x float>, ptr %4, align 8
  %6 = shufflevector <4 x float> %5, <4 x float> %i.k, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.ah = insertelement <4 x float> %6, float %i.ag, i64 2
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.am = load float, ptr %i.al, align 4, !tbaa !149
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 8, !tbaa !150
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %8 = load <4 x float>, ptr %7, align 4
  %i.ap = insertelement <4 x float> %8, float %i.ao, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.ak, i64 3
  %i.as = icmp sgt i64 %3, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi ptr [ %i.cu, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.02932 = phi ptr [ %i.cv, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.03031 = phi i64 [ %i.cw, %.lr.ph ], [ 0, %bb.a ]
  %i.at = load <4 x float>, ptr %.033, align 4, !tbaa !128 ; 3 uses
  %i.au = bitcast <4 x float> %i.at to <4 x i32>
  %i.av = and <4 x i32> %i.au, splat (i32 -2147483648)
  %i.aw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.at) ; 3 uses
  %i.ax = bitcast <4 x float> %i.aw to <4 x i32>  ; 2 uses
  %i.ay = and <4 x i32> %i.ax, splat (i32 8388607)
  %i.az = or disjoint <4 x i32> %i.ay, splat (i32 1065353216)
  %i.ba = bitcast <4 x i32> %i.az to <4 x float>  ; 5 uses
  %i.bb = fmul nnan <4 x float> %i.ba, splat (float f0x3D37CD65)
  %i.bc = fadd nnan <4 x float> %i.bb, splat (float f0xBED547D7)
  %i.bd = fmul nnan <4 x float> %i.bc, %i.ba
  %i.be = fadd nnan <4 x float> %i.bd, splat (float f0x3FD0C97C)
  %i.bf = fmul nnan <4 x float> %i.be, %i.ba
  %i.bg = fadd nnan <4 x float> %i.bf, splat (float f0xC0634031)
  %i.bh = fmul nnan <4 x float> %i.bg, %i.ba
  %i.bi = fadd nnan <4 x float> %i.bh, splat (float f0x40A2EF4C)
  %i.bj = fmul nnan <4 x float> %i.bi, %i.ba
  %i.bk = fadd nnan <4 x float> %i.bj, splat (float f0xC033392A)
  %i.bl = lshr <4 x i32> %i.ax, splat (i32 23)
  %i.bm = add nsw <4 x i32> %i.bl, splat (i32 -127)
  %i.bn = sitofp <4 x i32> %i.bm to <4 x float>
  %i.bo = fadd nnan <4 x float> %i.bk, %i.bn
  %i.bp = fmul <4 x float> %i.ac, %i.bo           ; 5 uses
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bp)
  %i.br = fcmp ult <4 x float> %i.bp, zeroinitializer
  %i.bs = sext <4 x i1> %i.br to <4 x i32>
  %i.bt = add <4 x i32> %i.bq, %i.bs              ; 2 uses
  %i.bu = shl <4 x i32> %i.bt, splat (i32 23)
  %i.bv = add <4 x i32> %i.bu, splat (i32 1065353216)
  %i.bw = bitcast <4 x i32> %i.bv to <4 x float>
  %i.bx = sitofp <4 x i32> %i.bt to <4 x float>
  %i.by = fsub <4 x float> %i.bp, %i.bx           ; 4 uses
  %i.bz = fmul <4 x float> %i.by, splat (float f0x3C5DBE6A)
  %i.ca = fadd <4 x float> %i.bz, splat (float f0x3D5509F8)
  %i.cb = fmul <4 x float> %i.by, %i.ca
  %i.cc = fadd <4 x float> %i.cb, splat (float f0x3E773CC5)
  %i.cd = fmul <4 x float> %i.by, %i.cc
  %i.ce = fadd <4 x float> %i.cd, splat (float f0x3F3168B3)
  %i.cf = fmul <4 x float> %i.by, %i.ce
  %i.cg = fadd <4 x float> %i.cf, splat (float f0x3F800016)
  %i.ch = fmul <4 x float> %i.cg, %i.bw
  %i.ci = fcmp uge <4 x float> %i.bp, splat (float -1.260000e+02)
  %i.cj = fcmp oge <4 x float> %i.bp, splat (float 1.280000e+02)
  %i.ck = fcmp one <4 x float> %i.at, zeroinitializer
  %i.cl = select <4 x i1> %i.ci, <4 x float> %i.ch, <4 x float> zeroinitializer
  %i.cm = select <4 x i1> %i.cj, <4 x float> splat (float +inf), <4 x float> %i.cl
  %i.cn = select <4 x i1> %i.ck, <4 x float> %i.cm, <4 x float> zeroinitializer
  %i.co = fmul <4 x float> %i.n, %i.cn
  %i.cp = fsub <4 x float> %i.co, %i.w
  %i.cq = fcmp uge <4 x float> %i.ai, %i.aw
  %i.cr = fmul <4 x float> %i.ar, %i.aw
  %.v = select <4 x i1> %i.cq, <4 x float> %i.cr, <4 x float> %i.cp
  %i.cs = bitcast <4 x float> %.v to <4 x i32>
  %i.ct = or <4 x i32> %i.av, %i.cs
  store <4 x i32> %i.ct, ptr %.02932, align 1, !tbaa !129
  %i.cu = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %.02932, i64 16
  %i.cw = add nuw nsw i64 %.03031, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_527GammaMoncurveMirrorOpCPURev5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load float, ptr %i.e, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.h = load float, ptr %i.g, align 4, !tbaa !144
  %i.i = icmp sgt i64 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load <2 x float>, ptr %i.j, align 8, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load <4 x float>, ptr %i.l, align 8, !tbaa !128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load <4 x float>, ptr %i.n, align 8      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load <4 x float>, ptr %i.r, align 8, !tbaa !128
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !128 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load float, ptr %i.w, align 8, !tbaa !142
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.z = load float, ptr %i.y, align 4, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !153
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load <4 x float>, ptr %i.ac, align 4
  %i.ae = insertelement <4 x float> %i.ad, float %i.ab, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.x, i64 3
  %i.ah = fneg <4 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.v, <2 x float> %i.t, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.al = shufflevector <2 x float> %i.v, <2 x float> %i.q, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> %i.al, <4 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.an = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ap = shufflevector <2 x float> %i.t, <2 x float> %i.q, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.057 = phi ptr [ %1, %.lr.ph ], [ %i.bm, %bb.b ] ; 2 uses
  %.05356 = phi ptr [ %2, %.lr.ph ], [ %i.bn, %bb.b ] ; 2 uses
  %.05455 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %bb.b ]
  %i.as = load <4 x float>, ptr %.057, align 4, !tbaa !128 ; 2 uses
  %i.at = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 1.000000e+00), <4 x float> %i.as)
  %i.au = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.as) ; 6 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = tail call noundef float @powf(float noundef %i.av, float noundef %i.b) #18
  %i.ax = extractelement <4 x float> %i.au, i64 1
  %i.ay = tail call noundef float @powf(float noundef %i.ax, float noundef %i.d) #18
  %i.az = extractelement <4 x float> %i.au, i64 2
  %i.ba = tail call noundef float @powf(float noundef %i.az, float noundef %i.f) #18
  %i.bb = extractelement <4 x float> %i.au, i64 3
  %i.bc = tail call noundef float @powf(float noundef %i.bb, float noundef %i.h) #18
  %i.bd = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ay, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.ba, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.ar, <4 x float> %i.ah)
  %i.bi = fcmp ole <4 x float> %i.au, %i.ak
  %i.bj = fmul <4 x float> %i.ao, %i.au
  %i.bk = select <4 x i1> %i.bi, <4 x float> %i.bj, <4 x float> %i.bh
  %i.bl = fmul <4 x float> %i.at, %i.bk
  store <4 x float> %i.bl, ptr %.05356, align 4, !tbaa !128
  %i.bm = getelementptr inbounds nuw i8, ptr %.057, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.05356, i64 16
  %i.bo = add nuw nsw i64 %.05455, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !161
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_515GammaBasicOpCPUD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518GammaBasicOpCPUSSED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_521GammaBasicMirrorOpCPUD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_524GammaBasicMirrorOpCPUSSED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_523GammaBasicPassThruOpCPUD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
end_hunk_0
