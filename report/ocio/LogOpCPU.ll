Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/LogOpCPU?download=true
inline.NumInlined: 867
inline.NumDeleted: 411
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_515Log2LinRenderer5applyEPKvPvl:bb.a
  %i.aq = fmul float %i.ak, %i.ap
  store float %i.aq, ptr %.01819, align 4, !tbaa !35
  %i.ar = load float, ptr %i.l, align 8, !tbaa !35
  %i.as = fmul float %i.am, %i.ar
  store float %i.as, ptr %i.s, align 4, !tbaa !35
  %i.at = load float, ptr %i.m, align 4, !tbaa !35
  %i.au = fmul float %i.ao, %i.at
  store float %i.au, ptr %i.w, align 4, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %.01819, i64 12
  store float %i.o, ptr %i.av, align 4, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %.01819, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ay = add nuw nsw i64 %.01720, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !127
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Log2LinRendererSSEC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 2.000000e+00, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_515Log2LinRendererE, i64 16), ptr %0, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_515Log2LinRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %_ZN16OpenColorIO_v2_515Log2LinRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_515L2LBaseRendererD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(136) %0) #22
  resume { ptr, i32 } %i.c

_ZN16OpenColorIO_v2_515Log2LinRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_518Log2LinRendererSSEE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Log2LinRendererSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.c = load <4 x float>, ptr %i.b, align 4
  %i.d = load float, ptr %i.a, align 8, !tbaa !35
  %i.e = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.d, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> %i.c, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load <4 x float>, ptr %i.h, align 8
  %i.j = load float, ptr %i.g, align 4, !tbaa !35
  %i.k = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> %i.i, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = load float, ptr %i.m, align 8, !tbaa !35
  %i.q = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load <2 x float>, ptr %i.t, align 8, !tbaa !35
  %i.v = load float, ptr %i.s, align 4, !tbaa !35
  %i.w = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.w, <4 x float> %i.x, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.z = icmp sgt i64 %3, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.028 = phi ptr [ %i.bk, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %.02427 = phi i64 [ %i.bl, %.lr.ph ], [ 0, %bb.a ]
  %.02526 = phi ptr [ %i.bj, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.028, i64 4
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !35
  %i.ac = load float, ptr %.028, align 4, !tbaa !35
  %i.ad = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ag = fadd <4 x float> %i.l, %i.af
  %i.ah = fmul <4 x float> %i.f, %i.ag            ; 5 uses
  %i.ai = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ah)
  %i.aj = fcmp ult <4 x float> %i.ah, zeroinitializer
  %i.ak = sext <4 x i1> %i.aj to <4 x i32>
  %i.al = add <4 x i32> %i.ai, %i.ak              ; 2 uses
  %i.am = shl <4 x i32> %i.al, splat (i32 23)
  %i.an = add <4 x i32> %i.am, splat (i32 1065353216)
  %i.ao = bitcast <4 x i32> %i.an to <4 x float>
  %i.ap = sitofp <4 x i32> %i.al to <4 x float>
  %i.aq = fsub <4 x float> %i.ah, %i.ap           ; 4 uses
  %i.ar = fmul <4 x float> %i.aq, splat (float f0x3C5DBE6A)
  %i.as = fadd <4 x float> %i.ar, splat (float f0x3D5509F8)
  %i.at = fmul <4 x float> %i.aq, %i.as
  %i.au = fadd <4 x float> %i.at, splat (float f0x3E773CC5)
  %i.av = fmul <4 x float> %i.aq, %i.au
  %i.aw = fadd <4 x float> %i.av, splat (float f0x3F3168B3)
  %i.ax = fmul <4 x float> %i.aq, %i.aw
  %i.ay = fadd <4 x float> %i.ax, splat (float f0x3F800016)
  %i.az = fmul <4 x float> %i.ay, %i.ao
  %i.ba = fcmp uge <4 x float> %i.ah, splat (float -1.260000e+02)
  %i.bb = fcmp oge <4 x float> %i.ah, splat (float 1.280000e+02)
  %i.bc = select <4 x i1> %i.ba, <4 x float> %i.az, <4 x float> zeroinitializer
  %i.bd = select <4 x i1> %i.bb, <4 x float> splat (float +inf), <4 x float> %i.bc
  %i.be = fadd <4 x float> %i.r, %i.bd
  %i.bf = fmul <4 x float> %i.y, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !35
  store <4 x float> %i.bf, ptr %.02526, align 1, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %.02526, i64 12
  store float %i.bh, ptr %i.bi, align 4, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %.02526, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.bl = add nuw nsw i64 %.02427, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515Lin2LogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 2.000000e+00, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_515Lin2LogRendererE, i64 16), ptr %0, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_515Lin2LogRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_515L2LBaseRendererD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #22
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515Lin2LogRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = tail call noundef double @_ZNK16OpenColorIO_v2_59LogOpData7getBaseEv(ptr noundef nonnull align 8 dereferenceable(252) %i.a) #22
  %i.c = fptrunc double %i.b to float
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store float %i.c, ptr %i.d, align 8, !tbaa !31
  %i.e = load ptr, ptr %1, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n) ; 0 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !32   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !32   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !34
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !32   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !34
  %i.z = load <2 x double>, ptr %i.r, align 8, !tbaa !34
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.ab = insertelement <4 x double> %i.aa, double %i.v, i64 1
  %i.ac = insertelement <4 x double> %i.ab, double %i.y, i64 2
  %i.ad = fptrunc <4 x double> %i.ac to <4 x float>
  store <4 x float> %i.ad, ptr %i.s, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !34
  %i.aj = load double, ptr %i.q, align 8, !tbaa !34
  %i.ak = load float, ptr %i.d, align 8, !tbaa !31
  %i.al = tail call noundef float @log2f(float noundef %i.ak) #22
  %i.am = fpext float %i.al to double             ; 2 uses
  %i.an = load double, ptr %i.t, align 8, !tbaa !34
  %i.ao = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x double> %i.ap, %i.ar
  %i.at = insertelement <4 x double> poison, double %i.af, i64 0
  %i.au = insertelement <4 x double> %i.at, double %i.ai, i64 1
  %i.av = shufflevector <2 x double> %i.as, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x double> %i.au, <4 x double> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ax = fptrunc <4 x double> %i.aw to <4 x float>
  store <4 x float> %i.ax, ptr %i.ag, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %2 = load double, ptr %i.az, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !34
  %3 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bc = load double, ptr %i.w, align 8, !tbaa !34
  %4 = fdiv double %i.bc, %i.am
  %i.bd = load double, ptr %3, align 8, !tbaa !34
  %i.be = insertelement <4 x double> poison, double %4, i64 0
  %i.bf = insertelement <4 x double> %i.be, double %2, i64 1
  %i.bg = insertelement <4 x double> %i.bf, double %i.bb, i64 2
  %i.bh = insertelement <4 x double> %i.bg, double %i.bd, i64 3
  %i.bi = fptrunc <4 x double> %i.bh to <4 x float>
  store <4 x float> %i.bi, ptr %i.ay, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_515Lin2LogRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.022 = phi ptr [ %1, %.lr.ph ], [ %i.ba, %bb.b ] ; 3 uses
  %.01821 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.b ]
  %.01920 = phi ptr [ %2, %.lr.ph ], [ %i.az, %bb.b ] ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.022, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.01920, ptr noundef nonnull align 4 dereferenceable(16) %.022, i64 16, i1 false)
  %i.p = load float, ptr %.01920, align 4, !tbaa !35
  %i.q = load float, ptr %i.b, align 8, !tbaa !35
  %i.r = fmul float %i.p, %i.q                    ; 2 uses
  store float %i.r, ptr %.01920, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %.01920, i64 4 ; 6 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !35
  %i.u = load float, ptr %i.c, align 4, !tbaa !35
  %i.v = fmul float %i.t, %i.u                    ; 2 uses
  store float %i.v, ptr %i.s, align 4, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.01920, i64 8 ; 5 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !35
  %i.y = load float, ptr %i.d, align 8, !tbaa !35
  %i.z = fmul float %i.x, %i.y                    ; 2 uses
  store float %i.z, ptr %i.w, align 4, !tbaa !35
  %i.aa = load float, ptr %i.e, align 4, !tbaa !35
  %i.ab = fadd float %i.r, %i.aa                  ; 3 uses
  store float %i.ab, ptr %.01920, align 4, !tbaa !35
  %i.ac = load float, ptr %i.f, align 8, !tbaa !35
  %i.ad = fadd float %i.v, %i.ac                  ; 3 uses
  store float %i.ad, ptr %i.s, align 4, !tbaa !35
  %i.ae = load float, ptr %i.g, align 4, !tbaa !35
  %i.af = fadd float %i.z, %i.ae                  ; 2 uses
  %i.ag = fcmp ogt float %i.ab, f0x00800000
  %.sroa.speculated15.i = select i1 %i.ag, float %i.ab, float f0x00800000
  %i.ah = fcmp ogt float %i.ad, f0x00800000
  %.sroa.speculated12.i = select i1 %i.ah, float %i.ad, float f0x00800000
  %i.ai = fcmp ogt float %i.af, f0x00800000
  %.sroa.speculated.i = select i1 %i.ai, float %i.af, float f0x00800000
  %i.aj = tail call noundef float @log2f(float noundef %.sroa.speculated15.i) #22 ; 2 uses
  store float %i.aj, ptr %.01920, align 4, !tbaa !35
  %i.ak = tail call noundef float @log2f(float noundef %.sroa.speculated12.i) #22 ; 2 uses
  store float %i.ak, ptr %i.s, align 4, !tbaa !35
  %i.al = tail call noundef float @log2f(float noundef %.sroa.speculated.i) #22 ; 2 uses
  store float %i.al, ptr %i.w, align 4, !tbaa !35
  %i.am = load float, ptr %i.h, align 8, !tbaa !35
  %i.an = fmul float %i.aj, %i.am                 ; 2 uses
  store float %i.an, ptr %.01920, align 4, !tbaa !35
  %i.ao = load float, ptr %i.i, align 4, !tbaa !35
  %i.ap = fmul float %i.ak, %i.ao                 ; 2 uses
  store float %i.ap, ptr %i.s, align 4, !tbaa !35
  %i.aq = load float, ptr %i.j, align 8, !tbaa !35
  %i.ar = fmul float %i.al, %i.aq                 ; 2 uses
  store float %i.ar, ptr %i.w, align 4, !tbaa !35
  %i.as = load float, ptr %i.k, align 4, !tbaa !35
  %i.at = fadd float %i.an, %i.as
  store float %i.at, ptr %.01920, align 4, !tbaa !35
  %i.au = load float, ptr %i.l, align 8, !tbaa !35
  %i.av = fadd float %i.ap, %i.au
  store float %i.av, ptr %i.s, align 4, !tbaa !35
  %i.aw = load float, ptr %i.m, align 4, !tbaa !35
  %i.ax = fadd float %i.ar, %i.aw
  store float %i.ax, ptr %i.w, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.01920, i64 12
  store float %i.o, ptr %i.ay, align 4, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.01920, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.bb = add nuw nsw i64 %.01821, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !129
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Lin2LogRendererSSEC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 2.000000e+00, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_515Lin2LogRendererE, i64 16), ptr %0, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_515Lin2LogRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %_ZN16OpenColorIO_v2_515Lin2LogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_515L2LBaseRendererD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(136) %0) #22
  resume { ptr, i32 } %i.c

_ZN16OpenColorIO_v2_515Lin2LogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_518Lin2LogRendererSSEE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Lin2LogRendererSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.c = load <4 x float>, ptr %i.b, align 4
  %i.d = load float, ptr %i.a, align 8, !tbaa !35
  %i.e = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.d, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> %i.c, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load <4 x float>, ptr %i.h, align 8
  %i.j = load float, ptr %i.g, align 4, !tbaa !35
  %i.k = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> %i.i, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = load float, ptr %i.m, align 8, !tbaa !35
  %i.q = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load <2 x float>, ptr %i.t, align 8, !tbaa !35
  %i.v = load float, ptr %i.s, align 4, !tbaa !35
  %i.w = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.w, <4 x float> %i.x, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.z = icmp sgt i64 %3, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.029 = phi ptr [ %i.bi, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %.02528 = phi i64 [ %i.bj, %.lr.ph ], [ 0, %bb.a ]
  %.02627 = phi ptr [ %i.bh, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !35
  %i.ac = load float, ptr %.029, align 4, !tbaa !35
  %i.ad = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ag = fmul <4 x float> %i.f, %i.af
  %i.ah = fadd <4 x float> %i.l, %i.ag
  %i.ai = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ah, <4 x float> splat (float f0x00800000))
  %i.aj = bitcast <4 x float> %i.ai to <4 x i32>  ; 2 uses
  %i.ak = and <4 x i32> %i.aj, splat (i32 -2139095041)
  %i.al = or disjoint <4 x i32> %i.ak, splat (i32 1065353216)
  %i.am = bitcast <4 x i32> %i.al to <4 x float>  ; 5 uses
  %i.an = fmul nnan <4 x float> %i.am, splat (float f0x3D37CD65)
  %i.ao = fadd nnan <4 x float> %i.an, splat (float f0xBED547D7)
  %i.ap = fmul nnan <4 x float> %i.ao, %i.am
  %i.aq = fadd nnan <4 x float> %i.ap, splat (float f0x3FD0C97C)
  %i.ar = fmul nnan <4 x float> %i.aq, %i.am
  %i.as = fadd nnan <4 x float> %i.ar, splat (float f0xC0634031)
  %i.at = fmul nnan <4 x float> %i.as, %i.am
  %i.au = fadd nnan <4 x float> %i.at, splat (float f0x40A2EF4C)
  %i.av = fmul nnan <4 x float> %i.au, %i.am
  %i.aw = fadd nnan <4 x float> %i.av, splat (float f0xC033392A)
  %i.ax = lshr <4 x i32> %i.aj, splat (i32 23)
  %i.ay = and <4 x i32> %i.ax, splat (i32 255)
  %i.az = add nsw <4 x i32> %i.ay, splat (i32 -127)
  %i.ba = sitofp <4 x i32> %i.az to <4 x float>
  %i.bb = fadd nnan <4 x float> %i.aw, %i.ba
  %i.bc = fmul <4 x float> %i.r, %i.bb
  %i.bd = fadd <4 x float> %i.y, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !35
  store <4 x float> %i.bd, ptr %.02627, align 1, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %.02627, i64 12
  store float %i.bf, ptr %i.bg, align 4, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %.02627, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.bj = add nuw nsw i64 %.02528, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130
}

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_521CameraLog2LinRenderer5applyEPKvPvl:bb.a
  %i.bj = fcmp olt float %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.03843, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load float, ptr %i.q, align 4, !tbaa !35
  %i.bm = fadd float %i.bh, %i.bl
  %i.bn = load float, ptr %i.r, align 8, !tbaa !35
  %i.bo = fmul float %i.bm, %i.bn
  %i.bp = tail call noundef float @exp2f(float noundef %i.bo) #22 ; 2 uses
  store float %i.bp, ptr %i.bk, align 4, !tbaa !35
  %i.bq = load float, ptr %i.s, align 8, !tbaa !35
  %i.br = fadd float %i.bp, %i.bq
  %i.bs = load float, ptr %i.t, align 4, !tbaa !35
  %i.bt = fmul float %i.br, %i.bs
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bu = load float, ptr %i.u, align 8, !tbaa !35
  %i.bv = load float, ptr %i.v, align 4, !tbaa !35
  %i.bw = fadd float %i.bh, %i.bv
  %i.bx = fmul float %i.bu, %i.bw
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink53 = phi float [ %i.bx, %bb.j ], [ %i.bt, %bb.i ]
  store float %.sink53, ptr %i.bk, align 4, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %.03843, i64 12
  store float %i.x, ptr %i.by, align 4, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %.03843, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.03942, i64 16
  %i.cb = add nuw nsw i64 %.03744, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !131
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_524CameraLog2LinRendererSSEC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_521CameraLog2LinRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_524CameraLog2LinRendererSSEE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_524CameraLog2LinRendererSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = load <4 x float>, ptr %i.b, align 4
  %i.d = load float, ptr %i.a, align 8, !tbaa !35
  %i.e = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.d, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> %i.c, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load <4 x float>, ptr %i.h, align 8
  %i.j = load float, ptr %i.g, align 4, !tbaa !35
  %i.k = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> %i.i, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = load float, ptr %i.m, align 8, !tbaa !35
  %i.q = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = load <4 x float>, ptr %i.t, align 8
  %i.v = load float, ptr %i.s, align 4, !tbaa !35
  %i.w = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.u, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aa = load <4 x float>, ptr %i.z, align 4
  %i.ab = load float, ptr %i.y, align 8, !tbaa !35
  %i.ac = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ab, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> %i.aa, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = load <2 x float>, ptr %i.af, align 8, !tbaa !35
  %i.ah = load float, ptr %i.ae, align 4, !tbaa !35
  %i.ai = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.ai, <4 x float> %i.aj, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.an = load <4 x float>, ptr %i.am, align 4
  %i.ao = load float, ptr %i.al, align 8, !tbaa !35
  %i.ap = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ao, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.an, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ar = icmp sgt i64 %3, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.038 = phi ptr [ %i.cf, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %.03437 = phi ptr [ %i.ce, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %.03536 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %bb.a ]
  %i.as = getelementptr inbounds nuw i8, ptr %.038, i64 4
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !35
  %i.au = load float, ptr %.038, align 4, !tbaa !35
  %i.av = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 3 uses
  %i.ay = fcmp uge <4 x float> %i.ad, %i.ax
  %i.az = fadd <4 x float> %i.ak, %i.ax
  %i.ba = fmul <4 x float> %i.aq, %i.az
  %i.bb = fadd <4 x float> %i.l, %i.ax
  %i.bc = fmul <4 x float> %i.f, %i.bb            ; 5 uses
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bc)
  %i.be = fcmp ult <4 x float> %i.bc, zeroinitializer
  %i.bf = sext <4 x i1> %i.be to <4 x i32>
  %i.bg = add <4 x i32> %i.bd, %i.bf              ; 2 uses
  %i.bh = shl <4 x i32> %i.bg, splat (i32 23)
  %i.bi = add <4 x i32> %i.bh, splat (i32 1065353216)
  %i.bj = bitcast <4 x i32> %i.bi to <4 x float>
  %i.bk = sitofp <4 x i32> %i.bg to <4 x float>
  %i.bl = fsub <4 x float> %i.bc, %i.bk           ; 4 uses
  %i.bm = fmul <4 x float> %i.bl, splat (float f0x3C5DBE6A)
  %i.bn = fadd <4 x float> %i.bm, splat (float f0x3D5509F8)
  %i.bo = fmul <4 x float> %i.bl, %i.bn
  %i.bp = fadd <4 x float> %i.bo, splat (float f0x3E773CC5)
  %i.bq = fmul <4 x float> %i.bl, %i.bp
  %i.br = fadd <4 x float> %i.bq, splat (float f0x3F3168B3)
  %i.bs = fmul <4 x float> %i.bl, %i.br
  %i.bt = fadd <4 x float> %i.bs, splat (float f0x3F800016)
  %i.bu = fmul <4 x float> %i.bt, %i.bj
  %i.bv = fcmp uge <4 x float> %i.bc, splat (float -1.260000e+02)
  %i.bw = fcmp oge <4 x float> %i.bc, splat (float 1.280000e+02)
  %i.bx = select <4 x i1> %i.bv, <4 x float> %i.bu, <4 x float> zeroinitializer
  %i.by = select <4 x i1> %i.bw, <4 x float> splat (float +inf), <4 x float> %i.bx
  %i.bz = fadd <4 x float> %i.r, %i.by
  %i.ca = fmul <4 x float> %i.x, %i.bz
  %.v = select <4 x i1> %i.ay, <4 x float> %i.ba, <4 x float> %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %.038, i64 12
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !35
  store <4 x float> %.v, ptr %.03437, align 1, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %.03437, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %.03437, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.038, i64 16
  %i.cg = add nuw nsw i64 %.03536, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521CameraLin2LogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(188) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 2.000000e+00, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_521CameraLin2LogRendererE, i64 16), ptr %0, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_521CameraL2LBaseRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !34
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !34
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.p = insertelement <4 x double> %i.o, double %i.i, i64 1
  %i.q = insertelement <4 x double> %i.p, double %i.m, i64 2
  %i.r = fptrunc <4 x double> %i.q to <4 x float>
  store <4 x float> %i.r, ptr %i.e, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !34
  %i.x = load double, ptr %i.c, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.z = load float, ptr %i.y, align 4, !tbaa !39
  %i.aa = fpext float %i.z to double              ; 2 uses
  %i.ab = load double, ptr %i.g, align 8, !tbaa !34
  %i.ac = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1
  %i.ae = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x double> %i.ad, %i.af
  %i.ah = insertelement <4 x double> poison, double %i.t, i64 0
  %i.ai = insertelement <4 x double> %i.ah, double %i.w, i64 1
  %i.aj = shufflevector <2 x double> %i.ag, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x double> %i.ai, <4 x double> %i.aj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.al = fptrunc <4 x double> %i.ak to <4 x float>
  store <4 x float> %i.al, ptr %i.u, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %2 = load double, ptr %i.an, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !34
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aq = load double, ptr %i.k, align 8, !tbaa !34
  %4 = fdiv double %i.aq, %i.aa
  %i.ar = load double, ptr %3, align 8, !tbaa !34
  %i.as = insertelement <4 x double> poison, double %4, i64 0
  %i.at = insertelement <4 x double> %i.as, double %2, i64 1
  %i.au = insertelement <4 x double> %i.at, double %i.ap, i64 2
  %i.av = insertelement <4 x double> %i.au, double %i.ar, i64 3
  %i.aw = fptrunc <4 x double> %i.av to <4 x float>
  store <4 x float> %i.aw, ptr %i.am, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !34
  %i.bc = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.bb, i64 1
  %i.be = fptrunc <2 x double> %i.bd to <2 x float>
  store <2 x float> %i.be, ptr %i.az, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !34
  %i.bh = fptrunc double %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.bh, ptr %i.bi, align 8, !tbaa !35
  ret void

bb.c:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_515L2LBaseRendererD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #22
  resume { ptr, i32 } %i.bj
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521CameraLin2LogRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(188) initializes((8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_521CameraL2LBaseRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !34
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !34
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.o = insertelement <4 x double> %i.n, double %i.h, i64 1
  %i.p = insertelement <4 x double> %i.o, double %i.l, i64 2
  %i.q = fptrunc <4 x double> %i.p to <4 x float>
  store <4 x float> %i.q, ptr %i.d, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !34
  %i.w = load double, ptr %i.b, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.y = load float, ptr %i.x, align 4, !tbaa !39
  %i.z = fpext float %i.y to double               ; 2 uses
  %i.aa = load double, ptr %i.f, align 8, !tbaa !34
  %i.ab = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.aa, i64 1
  %i.ad = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x double> %i.ac, %i.ae
  %i.ag = insertelement <4 x double> poison, double %i.s, i64 0
  %i.ah = insertelement <4 x double> %i.ag, double %i.v, i64 1
  %i.ai = shufflevector <2 x double> %i.af, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x double> %i.ah, <4 x double> %i.ai, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ak = fptrunc <4 x double> %i.aj to <4 x float>
  store <4 x float> %i.ak, ptr %i.t, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = load double, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !34
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ap = load double, ptr %i.j, align 8, !tbaa !34
  %4 = fdiv double %i.ap, %i.z
  %i.aq = load double, ptr %3, align 8, !tbaa !34
  %i.ar = insertelement <4 x double> poison, double %4, i64 0
  %i.as = insertelement <4 x double> %i.ar, double %2, i64 1
  %i.at = insertelement <4 x double> %i.as, double %i.ao, i64 2
  %i.au = insertelement <4 x double> %i.at, double %i.aq, i64 3
  %i.av = fptrunc <4 x double> %i.au to <4 x float>
  store <4 x float> %i.av, ptr %i.al, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ba = load double, ptr %i.az, align 8, !tbaa !34
  %i.bb = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float>
  store <2 x float> %i.bd, ptr %i.ay, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bf = load double, ptr %i.be, align 8, !tbaa !34
  %i.bg = fptrunc double %i.bf to float
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.bg, ptr %i.bh, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_521CameraLin2LogRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.04148 = phi i64 [ 0, %.lr.ph ], [ %i.by, %bb.k ]
  %.04247 = phi ptr [ %2, %.lr.ph ], [ %i.bw, %bb.k ] ; 6 uses
  %.04346 = phi ptr [ %1, %.lr.ph ], [ %i.bx, %bb.k ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04346, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !35
  %i.y = load float, ptr %.04346, align 4, !tbaa !35 ; 3 uses
  %i.z = load float, ptr %i.b, align 8, !tbaa !35
  %i.aa = fcmp olt float %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load float, ptr %i.g, align 4, !tbaa !35
  %i.ac = load float, ptr %i.h, align 8, !tbaa !35
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.y, float %i.ac)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ae = load float, ptr %i.c, align 8, !tbaa !35
  %i.af = load float, ptr %i.d, align 4, !tbaa !35
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ae, float %i.af) ; 2 uses
  %i.ah = fcmp ogt float %i.ag, f0x00800000
  %i.ai = select i1 %i.ah, float %i.ag, float f0x00800000
  %i.aj = tail call noundef float @log2f(float noundef %i.ai) #22 ; 2 uses
  store float %i.aj, ptr %.04247, align 4, !tbaa !35
  %i.ak = load float, ptr %i.e, align 8, !tbaa !35
  %i.al = load float, ptr %i.f, align 4, !tbaa !35
  %i.am = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ak, float %i.al)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi float [ %i.ad, %bb.c ], [ %i.am, %bb.d ]
  store float %.sink, ptr %.04247, align 4, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %.04346, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !35 ; 3 uses
  %i.ap = load float, ptr %i.i, align 4, !tbaa !35
  %i.aq = fcmp olt float %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.04247, i64 4 ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load float, ptr %i.j, align 4, !tbaa !35
  %i.at = load float, ptr %i.k, align 8, !tbaa !35
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.as, float %i.at) ; 2 uses
  %i.av = fcmp ogt float %i.au, f0x00800000
  %i.aw = select i1 %i.av, float %i.au, float f0x00800000
  %i.ax = tail call noundef float @log2f(float noundef %i.aw) #22 ; 2 uses
  store float %i.ax, ptr %i.ar, align 4, !tbaa !35
  %i.ay = load float, ptr %i.l, align 4, !tbaa !35
  %i.az = load float, ptr %i.m, align 8, !tbaa !35
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ay, float %i.az)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bb = load float, ptr %i.n, align 8, !tbaa !35
  %i.bc = load float, ptr %i.o, align 4, !tbaa !35
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ao, float %i.bc)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink56 = phi float [ %i.bd, %bb.g ], [ %i.ba, %bb.f ]
  store float %.sink56, ptr %i.ar, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.04346, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !35 ; 3 uses
  %i.bg = load float, ptr %i.p, align 8, !tbaa !35
  %i.bh = fcmp olt float %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.04247, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load float, ptr %i.q, align 8, !tbaa !35
  %i.bk = load float, ptr %i.r, align 4, !tbaa !35
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bj, float %i.bk) ; 2 uses
  %i.bm = fcmp ogt float %i.bl, f0x00800000
  %i.bn = select i1 %i.bm, float %i.bl, float f0x00800000
  %i.bo = tail call noundef float @log2f(float noundef %i.bn) #22 ; 2 uses
  store float %i.bo, ptr %i.bi, align 4, !tbaa !35
  %i.bp = load float, ptr %i.s, align 8, !tbaa !35
  %i.bq = load float, ptr %i.t, align 4, !tbaa !35
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bp, float %i.bq)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bs = load float, ptr %i.u, align 4, !tbaa !35
  %i.bt = load float, ptr %i.v, align 8, !tbaa !35
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bf, float %i.bt)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink57 = phi float [ %i.bu, %bb.j ], [ %i.br, %bb.i ]
  store float %.sink57, ptr %i.bi, align 4, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.04247, i64 12
  store float %i.x, ptr %i.bv, align 4, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %.04247, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.04346, i64 16
  %i.by = add nuw nsw i64 %.04148, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !133
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_524CameraLin2LogRendererSSEC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(188) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_521CameraLin2LogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_524CameraLin2LogRendererSSEE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_524CameraLin2LogRendererSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = load <4 x float>, ptr %i.b, align 4
  %i.d = load float, ptr %i.a, align 8, !tbaa !35
  %i.e = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.d, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> %i.c, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load <4 x float>, ptr %i.h, align 8
  %i.j = load float, ptr %i.g, align 4, !tbaa !35
  %i.k = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> %i.i, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = load float, ptr %i.m, align 8, !tbaa !35
  %i.q = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = load <4 x float>, ptr %i.t, align 8
  %i.v = load float, ptr %i.s, align 4, !tbaa !35
  %i.w = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.u, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load <4 x float>, ptr %i.z, align 8
  %i.ab = load float, ptr %i.y, align 4, !tbaa !35
  %i.ac = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ab, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> %i.aa, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ag = load <4 x float>, ptr %i.af, align 4
end_hunk_1
