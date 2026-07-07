inline.NumInlined: 867
inline.NumDeleted: 411
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_514LogRendererSSE5applyEPKvPvl:bb.a
  %i.v = fadd nnan <4 x float> %i.u, splat (float f0xC0634031)
  %i.w = fmul nnan <4 x float> %i.v, %i.p
  %i.x = fadd nnan <4 x float> %i.w, splat (float f0x40A2EF4C)
  %i.y = fmul nnan <4 x float> %i.x, %i.p
  %i.z = fadd nnan <4 x float> %i.y, splat (float f0xC033392A)
  %i.aa = lshr <4 x i32> %i.m, splat (i32 23)
  %i.ab = and <4 x i32> %i.aa, splat (i32 255)
  %i.ac = add nsw <4 x i32> %i.ab, splat (i32 -127)
  %i.ad = sitofp <4 x i32> %i.ac to <4 x float>
  %i.ae = fadd nnan <4 x float> %i.z, %i.ad
  %i.af = fmul <4 x float> %i.d, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.023, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !114
  store <4 x float> %i.af, ptr %.02021, align 1, !tbaa !117
  %i.ai = getelementptr inbounds nuw i8, ptr %.02021, i64 12
  store float %i.ah, ptr %i.ai, align 4, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.02021, i64 16
  %i.al = add nuw nsw i64 %.01922, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_515AntiLogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_515AntiLogRendererE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_515AntiLogRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.018 = phi ptr [ %1, %.lr.ph ], [ %i.r, %bb.b ] ; 3 uses
  %.01417 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.b ]
  %.01516 = phi ptr [ %2, %.lr.ph ], [ %i.s, %bb.b ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.018, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.01516, ptr noundef nonnull align 4 dereferenceable(16) %.018, i64 16, i1 false)
  %i.e = load float, ptr %i.b, align 8, !tbaa !65 ; 3 uses
  %i.f = load float, ptr %.01516, align 4, !tbaa !114
  %i.g = fmul float %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.01516, i64 4 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !114
  %i.j = fmul float %i.e, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01516, i64 8 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !114
  %i.m = fmul float %i.e, %i.l
  %i.n = tail call noundef float @exp2f(float noundef %i.g) #22, !tbaa !3
  store float %i.n, ptr %.01516, align 4, !tbaa !114
  %i.o = tail call noundef float @exp2f(float noundef %i.j) #22, !tbaa !3
  store float %i.o, ptr %i.h, align 4, !tbaa !114
  %i.p = tail call noundef float @exp2f(float noundef %i.m) #22, !tbaa !3
  store float %i.p, ptr %i.k, align 4, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %.01516, i64 12
  store float %i.d, ptr %i.q, align 4, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.01516, i64 16
  %i.t = add nuw nsw i64 %.01417, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_518AntiLogRendererSSEC2ERSt10shared_ptrIKNS_9LogOpDataEEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.a, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_518AntiLogRendererSSEE, i64 16), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_518AntiLogRendererSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !65
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer
  %i.e = icmp sgt i64 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.021 = phi ptr [ %i.al, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %.01720 = phi i64 [ %i.an, %.lr.ph ], [ 0, %bb.a ]
  %.01819 = phi ptr [ %i.am, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.021, i64 4
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !114
  %i.h = load float, ptr %.021, align 4, !tbaa !114
  %i.i = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.k = shufflevector <4 x float> %i.i, <4 x float> %i.j, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.l = fmul <4 x float> %i.d, %i.k              ; 5 uses
  %i.m = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.l)
  %i.n = fcmp ult <4 x float> %i.l, zeroinitializer
  %i.o = sext <4 x i1> %i.n to <4 x i32>
  %i.p = add <4 x i32> %i.m, %i.o                 ; 2 uses
  %i.q = shl <4 x i32> %i.p, splat (i32 23)
  %i.r = add <4 x i32> %i.q, splat (i32 1065353216)
  %i.s = bitcast <4 x i32> %i.r to <4 x float>
  %i.t = sitofp <4 x i32> %i.p to <4 x float>
  %i.u = fsub <4 x float> %i.l, %i.t              ; 4 uses
  %i.v = fmul <4 x float> %i.u, splat (float f0x3C5DBE6A)
  %i.w = fadd <4 x float> %i.v, splat (float f0x3D5509F8)
  %i.x = fmul <4 x float> %i.u, %i.w
  %i.y = fadd <4 x float> %i.x, splat (float f0x3E773CC5)
  %i.z = fmul <4 x float> %i.u, %i.y
  %i.aa = fadd <4 x float> %i.z, splat (float f0x3F3168B3)
  %i.ab = fmul <4 x float> %i.u, %i.aa
  %i.ac = fadd <4 x float> %i.ab, splat (float f0x3F800016)
  %i.ad = fmul <4 x float> %i.ac, %i.s
  %i.ae = fcmp uge <4 x float> %i.l, splat (float -1.260000e+02)
  %i.af = fcmp oge <4 x float> %i.l, splat (float 1.280000e+02)
  %i.ag = select <4 x i1> %i.ae, <4 x float> %i.ad, <4 x float> zeroinitializer
  %i.ah = select <4 x i1> %i.af, <4 x float> splat (float +inf), <4 x float> %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.021, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !114
  store <4 x float> %i.ah, ptr %.01819, align 1, !tbaa !117
  %i.ak = getelementptr inbounds nuw i8, ptr %.01819, i64 12
  store float %i.aj, ptr %i.ak, align 4, !tbaa !114
  %i.al = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01819, i64 16
  %i.an = add nuw nsw i64 %.01720, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515Log2LinRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 2.000000e+00, ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_515Log2LinRendererE, i64 16), ptr %0, align 8, !tbaa !45
  invoke void @_ZN16OpenColorIO_v2_515Log2LinRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_515L2LBaseRendererD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #22
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515Log2LinRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = tail call noundef double @_ZNK16OpenColorIO_v2_59LogOpData7getBaseEv(ptr noundef nonnull align 8 dereferenceable(252) %i.a) #22
  %i.c = fptrunc double %i.b to float
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store float %i.c, ptr %i.d, align 8, !tbaa !97
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n) ; 0 uses
  %i.q = load float, ptr %i.d, align 8, !tbaa !97
  %i.r = tail call float @log2f(float noundef %i.q) #22, !tbaa !3 ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !109  ; 4 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !109  ; 4 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !113
  %i.x = insertelement <2 x double> poison, double %i.t, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = fptrunc <2 x double> %i.y to <2 x float>
  %i.aa = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x float> %i.ab, %i.z
  store <2 x float> %i.ac, ptr %i.u, align 8, !tbaa !114
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !109 ; 4 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !113
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !113
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !113
  %i.ap = insertelement <4 x double> poison, double %i.ah, i64 0
  %i.aq = insertelement <4 x double> %i.ap, double %i.ak, i64 1
  %i.ar = insertelement <4 x double> %i.aq, double %i.am, i64 2
  %i.as = insertelement <4 x double> %i.ar, double %i.ao, i64 3
  %i.at = fptrunc <4 x double> %i.as to <4 x float>
  %i.au = fneg <4 x float> %i.at
  store <4 x float> %i.au, ptr %i.ai, align 4, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aw = load double, ptr %i.av, align 8, !tbaa !113
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.az = load double, ptr %i.ay, align 8, !tbaa !113
  %i.ba = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  %i.bd = fneg <2 x float> %i.bc
  store <2 x float> %i.bd, ptr %i.ax, align 4, !tbaa !114
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !113
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !113
  %i.bj = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bi, i64 1
  %i.bl = fptrunc <2 x double> %i.bk to <2 x float>
  %i.bm = fdiv <2 x float> splat (float 1.000000e+00), %i.bl
  store <2 x float> %i.bm, ptr %i.bg, align 4, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !113
  %2 = insertelement <2 x double> poison, double %i.ae, i64 0
  %3 = insertelement <2 x double> %2, double %i.bo, i64 1
  %4 = fptrunc <2 x double> %3 to <2 x float>
  %5 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.r, i64 0
  %6 = fdiv <2 x float> %5, %4                    ; 2 uses
  %7 = extractelement <2 x float> %6, i64 0
  store float %7, ptr %i.af, align 8, !tbaa !114
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 132
  %8 = extractelement <2 x float> %6, i64 1
  store float %8, ptr %i.bp, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @log2f(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_515Log2LinRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
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
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.ax, %bb.b ] ; 3 uses
  %.01720 = phi i64 [ 0, %.lr.ph ], [ %i.ay, %bb.b ]
  %.01819 = phi ptr [ %2, %.lr.ph ], [ %i.aw, %bb.b ] ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.021, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.01819, ptr noundef nonnull align 4 dereferenceable(16) %.021, i64 16, i1 false)
  %i.p = load float, ptr %.01819, align 4, !tbaa !114
  %i.q = load float, ptr %i.b, align 4, !tbaa !114
  %i.r = fadd float %i.p, %i.q                    ; 2 uses
  store float %i.r, ptr %.01819, align 4, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %.01819, i64 4 ; 6 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !114
  %i.u = load float, ptr %i.c, align 8, !tbaa !114
  %i.v = fadd float %i.t, %i.u                    ; 2 uses
  store float %i.v, ptr %i.s, align 4, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %.01819, i64 8 ; 5 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !114
  %i.y = load float, ptr %i.d, align 4, !tbaa !114
  %i.z = fadd float %i.x, %i.y                    ; 2 uses
  store float %i.z, ptr %i.w, align 4, !tbaa !114
  %i.aa = load float, ptr %i.e, align 8, !tbaa !114
  %i.ab = fmul float %i.r, %i.aa                  ; 2 uses
  store float %i.ab, ptr %.01819, align 4, !tbaa !114
  %i.ac = load float, ptr %i.f, align 4, !tbaa !114
  %i.ad = fmul float %i.v, %i.ac                  ; 2 uses
  store float %i.ad, ptr %i.s, align 4, !tbaa !114
  %i.ae = load float, ptr %i.g, align 8, !tbaa !114
  %i.af = fmul float %i.z, %i.ae
  %i.ag = tail call noundef float @exp2f(float noundef %i.ab) #22, !tbaa !3 ; 2 uses
  store float %i.ag, ptr %.01819, align 4, !tbaa !114
  %i.ah = tail call noundef float @exp2f(float noundef %i.ad) #22, !tbaa !3 ; 2 uses
  store float %i.ah, ptr %i.s, align 4, !tbaa !114
  %i.ai = tail call noundef float @exp2f(float noundef %i.af) #22, !tbaa !3 ; 2 uses
  store float %i.ai, ptr %i.w, align 4, !tbaa !114
  %i.aj = load float, ptr %i.h, align 8, !tbaa !114
  %i.ak = fadd float %i.ag, %i.aj                 ; 2 uses
  store float %i.ak, ptr %.01819, align 4, !tbaa !114
  %i.al = load float, ptr %i.i, align 4, !tbaa !114
  %i.am = fadd float %i.ah, %i.al                 ; 2 uses
  store float %i.am, ptr %i.s, align 4, !tbaa !114
  %i.an = load float, ptr %i.j, align 8, !tbaa !114
  %i.ao = fadd float %i.ai, %i.an                 ; 2 uses
  store float %i.ao, ptr %i.w, align 4, !tbaa !114
  %i.ap = load float, ptr %i.k, align 4, !tbaa !114
  %i.aq = fmul float %i.ak, %i.ap
  store float %i.aq, ptr %.01819, align 4, !tbaa !114
  %i.ar = load float, ptr %i.l, align 8, !tbaa !114
  %i.as = fmul float %i.am, %i.ar
  store float %i.as, ptr %i.s, align 4, !tbaa !114
  %i.at = load float, ptr %i.m, align 4, !tbaa !114
  %i.au = fmul float %i.ao, %i.at
  store float %i.au, ptr %i.w, align 4, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %.01819, i64 12
  store float %i.o, ptr %i.av, align 4, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %.01819, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ay = add nuw nsw i64 %.01720, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !121
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518Log2LinRendererSSEC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 2.000000e+00, ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_515Log2LinRendererE, i64 16), ptr %0, align 8, !tbaa !45
  invoke void @_ZN16OpenColorIO_v2_515Log2LinRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %_ZN16OpenColorIO_v2_515Log2LinRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_515L2LBaseRendererD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #22
  resume { ptr, i32 } %i.c

_ZN16OpenColorIO_v2_515Log2LinRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_518Log2LinRendererSSEE, i64 16), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_518Log2LinRendererSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.c = load <4 x float>, ptr %i.b, align 4
  %i.d = load float, ptr %i.a, align 8, !tbaa !114
  %i.e = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.d, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> %i.c, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load <4 x float>, ptr %i.h, align 8
  %i.j = load float, ptr %i.g, align 4, !tbaa !114
  %i.k = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> %i.i, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = load float, ptr %i.m, align 8, !tbaa !114
  %i.q = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.p, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> %i.o, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load <2 x float>, ptr %i.t, align 8, !tbaa !114
  %i.v = load float, ptr %i.s, align 4, !tbaa !114
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
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !114
  %i.ac = load float, ptr %.028, align 4, !tbaa !114
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
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !114
  store <4 x float> %i.bf, ptr %.02526, align 1, !tbaa !117
  %i.bi = getelementptr inbounds nuw i8, ptr %.02526, i64 12
  store float %i.bh, ptr %i.bi, align 4, !tbaa !114
  %i.bj = getelementptr inbounds nuw i8, ptr %.02526, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.bl = add nuw nsw i64 %.02427, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515Lin2LogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
