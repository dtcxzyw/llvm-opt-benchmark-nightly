Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GammaOpCPU?download=true
inline.NumInlined: 810
inline.NumDeleted: 380
begin_hunk_0_@_ZNK16OpenColorIO_v2_523GammaBasicPassThruOpCPU5applyEPKvPvl:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = load float, ptr %i.c, align 4, !tbaa !61
  %i.s = tail call noundef float @powf(float noundef %i.h, float noundef %i.r) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi float [ %i.s, %bb.e ], [ %i.h, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.02333, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !65
  %i.v = fcmp ogt float %i.j, 0.000000e+00
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load float, ptr %i.d, align 8, !tbaa !62
  %i.x = tail call noundef float @powf(float noundef %i.j, float noundef %i.w) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.y = phi float [ %i.x, %bb.g ], [ %i.j, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.02333, i64 8
  store float %i.y, ptr %i.z, align 4, !tbaa !65
  %i.aa = fcmp ogt float %i.l, 0.000000e+00
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load float, ptr %i.e, align 4, !tbaa !63
  %i.ac = tail call noundef float @powf(float noundef %i.l, float noundef %i.ab) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = phi float [ %i.ac, %bb.i ], [ %i.l, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.02333, i64 12
  store float %i.ad, ptr %i.ae, align 4, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %.02432, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.02333, i64 16
  %i.ah = add nuw nsw i64 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !155
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521GammaMoncurveOpCPUFwdC2ERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_521GammaMoncurveOpCPUFwdE, i64 16), ptr %0, align 8, !tbaa !53
  %i.i = load ptr, ptr %1, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.a)
  %i.k = load ptr, ptr %1, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.m = load ptr, ptr %1, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.e)
  %i.o = load ptr, ptr %1, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521GammaMoncurveOpCPUFwd6updateERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
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
  %i.c = load float, ptr %i.b, align 4, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 8      ; 4 uses
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 1
  %i.m = insertelement <4 x float> %i.l, float %i.f, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.c, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load float, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %i.q, align 4, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.k, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = load float, ptr %i.a, align 4, !tbaa !75
  %i.y = load float, ptr %i.d, align 8, !tbaa !76
  %i.z = load <4 x float>, ptr %i.i, align 8      ; 3 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load float, ptr %i.af, align 8, !tbaa !78
  %i.ah = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 2, i32 7, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float %i.ag, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.ae, i64 3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load float, ptr %i.ak, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = load float, ptr %i.am, align 4, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !81
  %i.aq = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ar = insertelement <4 x float> %i.aq, float %i.ap, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.al, i64 3
  %i.au = icmp sgt i64 %3, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.029 = phi ptr [ %i.co, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.02528 = phi ptr [ %i.cp, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02627 = phi i64 [ %i.cq, %.lr.ph ], [ 0, %bb.a ]
  %i.av = load <4 x float>, ptr %.029, align 4, !tbaa !65 ; 3 uses
  %i.aw = fmul <4 x float> %i.n, %i.av
  %i.ax = fadd <4 x float> %i.w, %i.aw            ; 2 uses
  %i.ay = bitcast <4 x float> %i.ax to <4 x i32>  ; 2 uses
  %i.az = and <4 x i32> %i.ay, splat (i32 -2139095041)
  %i.ba = or disjoint <4 x i32> %i.az, splat (i32 1065353216)
  %i.bb = bitcast <4 x i32> %i.ba to <4 x float>  ; 5 uses
  %i.bc = fmul nnan <4 x float> %i.bb, splat (float f0x3D37CD65)
  %i.bd = fadd nnan <4 x float> %i.bc, splat (float f0xBED547D7)
  %i.be = fmul nnan <4 x float> %i.bd, %i.bb
  %i.bf = fadd nnan <4 x float> %i.be, splat (float f0x3FD0C97C)
  %i.bg = fmul nnan <4 x float> %i.bf, %i.bb
  %i.bh = fadd nnan <4 x float> %i.bg, splat (float f0xC0634031)
  %i.bi = fmul nnan <4 x float> %i.bh, %i.bb
  %i.bj = fadd nnan <4 x float> %i.bi, splat (float f0x40A2EF4C)
  %i.bk = fmul nnan <4 x float> %i.bj, %i.bb
  %i.bl = fadd nnan <4 x float> %i.bk, splat (float f0xC033392A)
  %i.bm = lshr <4 x i32> %i.ay, splat (i32 23)
  %i.bn = and <4 x i32> %i.bm, splat (i32 255)
  %i.bo = add nsw <4 x i32> %i.bn, splat (i32 -127)
  %i.bp = sitofp <4 x i32> %i.bo to <4 x float>
  %i.bq = fadd nnan <4 x float> %i.bl, %i.bp
  %i.br = fmul <4 x float> %i.ac, %i.bq           ; 5 uses
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.br)
  %i.bt = fcmp ult <4 x float> %i.br, zeroinitializer
  %i.bu = sext <4 x i1> %i.bt to <4 x i32>
  %i.bv = add <4 x i32> %i.bs, %i.bu              ; 2 uses
  %i.bw = shl <4 x i32> %i.bv, splat (i32 23)
  %i.bx = add <4 x i32> %i.bw, splat (i32 1065353216)
  %i.by = bitcast <4 x i32> %i.bx to <4 x float>
  %i.bz = sitofp <4 x i32> %i.bv to <4 x float>
  %i.ca = fsub <4 x float> %i.br, %i.bz           ; 4 uses
  %i.cb = fmul <4 x float> %i.ca, splat (float f0x3C5DBE6A)
  %i.cc = fadd <4 x float> %i.cb, splat (float f0x3D5509F8)
  %i.cd = fmul <4 x float> %i.ca, %i.cc
  %i.ce = fadd <4 x float> %i.cd, splat (float f0x3E773CC5)
  %i.cf = fmul <4 x float> %i.ca, %i.ce
  %i.cg = fadd <4 x float> %i.cf, splat (float f0x3F3168B3)
  %i.ch = fmul <4 x float> %i.ca, %i.cg
  %i.ci = fadd <4 x float> %i.ch, splat (float f0x3F800016)
  %i.cj = fmul <4 x float> %i.ci, %i.by
  %i.ck = fcmp uge <4 x float> %i.br, splat (float -1.260000e+02)
  %i.cl = fcmp oge <4 x float> %i.br, splat (float 1.280000e+02)
  %i.cm = fcmp ogt <4 x float> %i.ax, zeroinitializer
  %i.cn = fcmp olt <4 x float> %i.aj, %i.av       ; 2 uses
  %4 = bitcast <4 x float> %i.cj to <4 x i32>
  %5 = select <4 x i1> %i.ck, <4 x i32> %4, <4 x i32> zeroinitializer
  %6 = select <4 x i1> %i.cl, <4 x i32> splat (i32 2139095040), <4 x i32> %5
  %7 = select <4 x i1> %i.cn, <4 x i1> %i.cm, <4 x i1> zeroinitializer
  %8 = select <4 x i1> %7, <4 x i32> %6, <4 x i32> zeroinitializer
  %9 = fmul <4 x float> %i.at, %i.av
  %10 = bitcast <4 x float> %9 to <4 x i32>
  %11 = select <4 x i1> %i.cn, <4 x i32> zeroinitializer, <4 x i32> %10
  %12 = or <4 x i32> %8, %11
  store <4 x i32> %12, ptr %.02528, align 1, !tbaa !66
  %i.co = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.02528, i64 16
  %i.cq = add nuw nsw i64 %.02627, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !156
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_521GammaMoncurveOpCPUFwd5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <4 x float>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load <4 x float>, ptr %i.d, align 4
  %i.f = load float, ptr %i.a, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load float, ptr %i.k, align 8, !tbaa !83
  %i.m = load float, ptr %i.h, align 4, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load float, ptr %i.r, align 4, !tbaa !74
  %i.t = load float, ptr %i.o, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.x = load float, ptr %i.w, align 4, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load float, ptr %i.y, align 8, !tbaa !73
  %i.aa = load float, ptr %i.v, align 4, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ac = load <2 x float>, ptr %i.g, align 8, !tbaa !65 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.n, align 4, !tbaa !65 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.u, align 8     ; 2 uses
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !65
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
  %i.au = load <4 x float>, ptr %.049, align 4, !tbaa !65 ; 3 uses
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
  store <4 x float> %i.bk, ptr %.04548, align 4, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.04548, i64 16
  %i.bn = add nuw nsw i64 %.04647, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !157
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521GammaMoncurveOpCPURevC2ERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_521GammaMoncurveOpCPURevE, i64 16), ptr %0, align 8, !tbaa !53
  %i.i = load ptr, ptr %1, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.a)
  %i.k = load ptr, ptr %1, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.m = load ptr, ptr %1, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.e)
  %i.o = load ptr, ptr %1, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521GammaMoncurveOpCPURev6updateERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
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
  %i.c = load float, ptr %i.b, align 4, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 8      ; 4 uses
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 1
  %i.m = insertelement <4 x float> %i.l, float %i.f, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.c, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load float, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %i.q, align 4, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.k, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = load float, ptr %i.a, align 4, !tbaa !75
  %i.y = load float, ptr %i.d, align 8, !tbaa !76
  %i.z = load <4 x float>, ptr %i.i, align 8      ; 3 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load float, ptr %i.af, align 8, !tbaa !78
  %i.ah = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 2, i32 7, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float %i.ag, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.ae, i64 3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load float, ptr %i.ak, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = load float, ptr %i.am, align 4, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !81
  %i.aq = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ar = insertelement <4 x float> %i.aq, float %i.ap, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.al, i64 3
  %i.au = icmp sgt i64 %3, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_521GammaMoncurveOpCPURev5applyEPKvPvl:bb.a
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
  %i.as = load <4 x float>, ptr %.049, align 4, !tbaa !65 ; 6 uses
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
  store <4 x float> %i.bi, ptr %.04548, align 4, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.04548, i64 16
  %i.bl = add nuw nsw i64 %.04647, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPUFwdC2ERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPUFwdE, i64 16), ptr %0, align 8, !tbaa !53
  %i.i = load ptr, ptr %1, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.a)
  %i.k = load ptr, ptr %1, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.m = load ptr, ptr %1, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.e)
  %i.o = load ptr, ptr %1, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPUFwd6updateERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsFwdERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
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
  %i.c = load float, ptr %i.b, align 4, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 8      ; 4 uses
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 1
  %i.m = insertelement <4 x float> %i.l, float %i.f, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.c, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load float, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %i.q, align 4, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.k, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = load float, ptr %i.a, align 4, !tbaa !75
  %i.y = load float, ptr %i.d, align 8, !tbaa !76
  %i.z = load <4 x float>, ptr %i.i, align 8      ; 3 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load float, ptr %i.af, align 8, !tbaa !78
  %i.ah = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 2, i32 7, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float %i.ag, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.ae, i64 3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load float, ptr %i.ak, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = load float, ptr %i.am, align 4, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !81
  %i.aq = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ar = insertelement <4 x float> %i.aq, float %i.ap, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.al, i64 3
  %i.au = icmp sgt i64 %3, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi ptr [ %i.cy, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.02932 = phi ptr [ %i.cz, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.03031 = phi i64 [ %i.da, %.lr.ph ], [ 0, %bb.a ]
  %i.av = load <4 x float>, ptr %.033, align 4, !tbaa !65 ; 2 uses
  %i.aw = bitcast <4 x float> %i.av to <4 x i32>
  %i.ax = and <4 x i32> %i.aw, splat (i32 -2147483648)
  %i.ay = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.av) ; 3 uses
  %i.az = fmul <4 x float> %i.n, %i.ay
  %i.ba = fadd <4 x float> %i.w, %i.az            ; 2 uses
  %i.bb = bitcast <4 x float> %i.ba to <4 x i32>  ; 2 uses
  %i.bc = and <4 x i32> %i.bb, splat (i32 -2139095041)
  %i.bd = or disjoint <4 x i32> %i.bc, splat (i32 1065353216)
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>  ; 5 uses
  %i.bf = fmul nnan <4 x float> %i.be, splat (float f0x3D37CD65)
  %i.bg = fadd nnan <4 x float> %i.bf, splat (float f0xBED547D7)
  %i.bh = fmul nnan <4 x float> %i.bg, %i.be
  %i.bi = fadd nnan <4 x float> %i.bh, splat (float f0x3FD0C97C)
  %i.bj = fmul nnan <4 x float> %i.bi, %i.be
  %i.bk = fadd nnan <4 x float> %i.bj, splat (float f0xC0634031)
  %i.bl = fmul nnan <4 x float> %i.bk, %i.be
  %i.bm = fadd nnan <4 x float> %i.bl, splat (float f0x40A2EF4C)
  %i.bn = fmul nnan <4 x float> %i.bm, %i.be
  %i.bo = fadd nnan <4 x float> %i.bn, splat (float f0xC033392A)
  %i.bp = lshr <4 x i32> %i.bb, splat (i32 23)
  %i.bq = and <4 x i32> %i.bp, splat (i32 255)
  %i.br = add nsw <4 x i32> %i.bq, splat (i32 -127)
  %i.bs = sitofp <4 x i32> %i.br to <4 x float>
  %i.bt = fadd nnan <4 x float> %i.bo, %i.bs
  %i.bu = fmul <4 x float> %i.ac, %i.bt           ; 5 uses
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bu)
  %i.bw = fcmp ult <4 x float> %i.bu, zeroinitializer
  %i.bx = sext <4 x i1> %i.bw to <4 x i32>
  %i.by = add <4 x i32> %i.bv, %i.bx              ; 2 uses
  %i.bz = shl <4 x i32> %i.by, splat (i32 23)
  %i.ca = add <4 x i32> %i.bz, splat (i32 1065353216)
  %i.cb = bitcast <4 x i32> %i.ca to <4 x float>
  %i.cc = sitofp <4 x i32> %i.by to <4 x float>
  %i.cd = fsub <4 x float> %i.bu, %i.cc           ; 4 uses
  %i.ce = fmul <4 x float> %i.cd, splat (float f0x3C5DBE6A)
  %i.cf = fadd <4 x float> %i.ce, splat (float f0x3D5509F8)
  %i.cg = fmul <4 x float> %i.cd, %i.cf
  %i.ch = fadd <4 x float> %i.cg, splat (float f0x3E773CC5)
  %i.ci = fmul <4 x float> %i.cd, %i.ch
  %i.cj = fadd <4 x float> %i.ci, splat (float f0x3F3168B3)
  %i.ck = fmul <4 x float> %i.cd, %i.cj
  %i.cl = fadd <4 x float> %i.ck, splat (float f0x3F800016)
  %i.cm = fmul <4 x float> %i.cl, %i.cb
  %i.cn = fcmp uge <4 x float> %i.bu, splat (float -1.260000e+02)
  %i.co = fcmp oge <4 x float> %i.bu, splat (float 1.280000e+02)
  %i.cp = fcmp ogt <4 x float> %i.ba, zeroinitializer
  %i.cq = fcmp olt <4 x float> %i.aj, %i.ay       ; 2 uses
  %i.cr = bitcast <4 x float> %i.cm to <4 x i32>
  %4 = select <4 x i1> %i.cn, <4 x i32> %i.cr, <4 x i32> zeroinitializer
  %i.cs = select <4 x i1> %i.co, <4 x i32> splat (i32 2139095040), <4 x i32> %4
  %5 = select <4 x i1> %i.cq, <4 x i1> %i.cp, <4 x i1> zeroinitializer
  %i.ct = select <4 x i1> %5, <4 x i32> %i.cs, <4 x i32> zeroinitializer
  %i.cu = fmul <4 x float> %i.at, %i.ay
  %i.cv = bitcast <4 x float> %i.cu to <4 x i32>
  %i.cw = select <4 x i1> %i.cq, <4 x i32> zeroinitializer, <4 x i32> %i.cv
  %6 = or <4 x i32> %i.cw, %i.ax
  %i.cx = or <4 x i32> %6, %i.ct
  store <4 x i32> %i.cx, ptr %.02932, align 1, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %.02932, i64 16
  %i.da = add nuw nsw i64 %.03031, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_527GammaMoncurveMirrorOpCPUFwd5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <4 x float>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load <4 x float>, ptr %i.d, align 4
  %i.f = load float, ptr %i.a, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load float, ptr %i.k, align 8, !tbaa !83
  %i.m = load float, ptr %i.h, align 4, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load float, ptr %i.r, align 4, !tbaa !74
  %i.t = load float, ptr %i.o, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.x = load float, ptr %i.w, align 4, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load float, ptr %i.y, align 8, !tbaa !73
  %i.aa = load float, ptr %i.v, align 4, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ac = load <2 x float>, ptr %i.g, align 8, !tbaa !65 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.n, align 4, !tbaa !65 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.u, align 8     ; 2 uses
  %i.af = load <2 x float>, ptr %i.ab, align 4, !tbaa !65
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
  %i.au = load <4 x float>, ptr %.057, align 4, !tbaa !65 ; 2 uses
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
  store <4 x float> %i.bn, ptr %.05356, align 4, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %.057, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.05356, i64 16
  %i.bq = add nuw nsw i64 %.05455, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !161
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPURevC2ERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.f, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPURevE, i64 16), ptr %0, align 8, !tbaa !53
  %i.i = load ptr, ptr %1, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(20) %i.a)
  %i.k = load ptr, ptr %1, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.m = load ptr, ptr %1, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(20) %i.e)
  %i.o = load ptr, ptr %1, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(20) %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_527GammaMoncurveMirrorOpCPURev6updateERSt10shared_ptrIKNS_11GammaOpDataEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_516ComputeParamsRevERKSt6vectorIdSaIdEERNS_14RendererParamsE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(20) %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
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
  %i.c = load float, ptr %i.b, align 4, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load float, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 8      ; 4 uses
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 1
  %i.m = insertelement <4 x float> %i.l, float %i.f, i64 2
  %i.n = insertelement <4 x float> %i.m, float %i.c, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load float, ptr %i.o, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %i.q, align 4, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.k, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = load float, ptr %i.a, align 4, !tbaa !75
  %i.y = load float, ptr %i.d, align 8, !tbaa !76
  %i.z = load <4 x float>, ptr %i.i, align 8      ; 3 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.x, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load float, ptr %i.af, align 8, !tbaa !78
  %i.ah = shufflevector <4 x float> %i.z, <4 x float> %i.k, <4 x i32> <i32 2, i32 7, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float %i.ag, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.ae, i64 3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load float, ptr %i.ak, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.an = load float, ptr %i.am, align 4, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !81
  %i.aq = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ar = insertelement <4 x float> %i.aq, float %i.ap, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.al, i64 3
end_hunk_1
