Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/LogOpCPU?download=true
inline.NumInlined: 867
inline.NumDeleted: 411
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIdSaIdEEaSERKS1_:bb.a
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load double, ptr %i.c, align 8, !tbaa !34
  store double %i.ah, ptr %i.i, align 8, !tbaa !34
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !122

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !34
  store double %i.ap, ptr %i.ai, align 8, !tbaa !34
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !120
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_511LogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_511LogRendererE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.a, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_511LogRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi ptr [ %1, %.lr.ph ], [ %i.v, %bb.b ] ; 3 uses
  %.01518 = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.b ]
  %.01617 = phi ptr [ %2, %.lr.ph ], [ %i.w, %bb.b ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.019, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.01617, ptr noundef nonnull align 4 dereferenceable(16) %.019, i64 16, i1 false)
  %i.e = load float, ptr %.01617, align 4, !tbaa !35 ; 2 uses
  %i.f = fcmp ogt float %i.e, f0x00800000
  %.sroa.speculated15.i = select i1 %i.f, float %i.e, float f0x00800000
  %i.g = getelementptr inbounds nuw i8, ptr %.01617, i64 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01617, i64 8 ; 2 uses
  %i.i = load <2 x float>, ptr %i.g, align 4, !tbaa !35 ; 2 uses
  %i.j = fcmp ogt <2 x float> %i.i, splat (float f0x00800000)
  %i.k = select <2 x i1> %i.j, <2 x float> %i.i, <2 x float> splat (float f0x00800000) ; 2 uses
  %i.l = tail call noundef float @log2f(float noundef %.sroa.speculated15.i) #22 ; 2 uses
  store float %i.l, ptr %.01617, align 4, !tbaa !35
  %i.m = extractelement <2 x float> %i.k, i64 0
  %i.n = tail call noundef float @log2f(float noundef %i.m) #22 ; 2 uses
  store float %i.n, ptr %i.g, align 4, !tbaa !35
  %i.o = extractelement <2 x float> %i.k, i64 1
  %i.p = tail call noundef float @log2f(float noundef %i.o) #22 ; 2 uses
  store float %i.p, ptr %i.h, align 4, !tbaa !35
  %i.q = load float, ptr %i.b, align 8, !tbaa !27 ; 3 uses
  %i.r = fmul float %i.l, %i.q
  store float %i.r, ptr %.01617, align 4, !tbaa !35
  %i.s = fmul float %i.n, %i.q
  store float %i.s, ptr %i.g, align 4, !tbaa !35
  %i.t = fmul float %i.p, %i.q
  store float %i.t, ptr %i.h, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %.01617, i64 12
  store float %i.d, ptr %i.u, align 4, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.01617, i64 16
  %i.x = add nuw nsw i64 %.01518, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !123
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_514LogRendererSSEC2ERSt10shared_ptrIKNS_9LogOpDataEEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.a, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_514LogRendererSSEE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_514LogRendererSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !27
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer
  %i.e = icmp sgt i64 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi ptr [ %i.aj, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %.01922 = phi i64 [ %i.al, %.lr.ph ], [ 0, %bb.a ]
  %.02021 = phi ptr [ %i.ak, %.lr.ph ], [ %2, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.023, i64 4
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !35
  %i.h = load float, ptr %.023, align 4, !tbaa !35
  %i.i = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.k = shufflevector <4 x float> %i.i, <4 x float> %i.j, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.k, <4 x float> splat (float f0x00800000))
  %i.m = bitcast <4 x float> %i.l to <4 x i32>    ; 2 uses
  %i.n = and <4 x i32> %i.m, splat (i32 -2139095041)
  %i.o = or disjoint <4 x i32> %i.n, splat (i32 1065353216)
  %i.p = bitcast <4 x i32> %i.o to <4 x float>    ; 5 uses
  %i.q = fmul nnan <4 x float> %i.p, splat (float f0x3D37CD65)
  %i.r = fadd nnan <4 x float> %i.q, splat (float f0xBED547D7)
  %i.s = fmul nnan <4 x float> %i.r, %i.p
  %i.t = fadd nnan <4 x float> %i.s, splat (float f0x3FD0C97C)
  %i.u = fmul nnan <4 x float> %i.t, %i.p
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
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !35
  store <4 x float> %i.af, ptr %.02021, align 1, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %.02021, i64 12
  store float %i.ah, ptr %i.ai, align 4, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.02021, i64 16
  %i.al = add nuw nsw i64 %.01922, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_515AntiLogRendererC2ERSt10shared_ptrIKNS_9LogOpDataEEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_515AntiLogRendererE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.a, align 8, !tbaa !29
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
  %.018 = phi ptr [ %1, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  %.01417 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.b ]
  %.01516 = phi ptr [ %2, %.lr.ph ], [ %i.n, %bb.b ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.018, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.01516, ptr noundef nonnull align 4 dereferenceable(16) %.018, i64 16, i1 false)
  %i.e = load float, ptr %i.b, align 8, !tbaa !29 ; 2 uses
  %i.f = load float, ptr %.01516, align 4, !tbaa !35
  %i.g = fmul float %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.01516, i64 4 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01516, i64 8
  %5 = load <2 x float>, ptr %i.h, align 4, !tbaa !35
  %6 = insertelement <2 x float> poison, float %i.e, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, %5                    ; 2 uses
  %i.i = tail call noundef float @exp2f(float noundef %i.g) #22
  store float %i.i, ptr %.01516, align 4, !tbaa !35
  %9 = extractelement <2 x float> %8, i64 0
  %i.j = tail call noundef float @exp2f(float noundef %9) #22
  store float %i.j, ptr %i.h, align 4, !tbaa !35
  %10 = extractelement <2 x float> %8, i64 1
  %i.k = tail call noundef float @exp2f(float noundef %10) #22
  store float %i.k, ptr %4, align 4, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %.01516, i64 12
  store float %i.d, ptr %i.l, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %.018, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.01516, i64 16
  %i.o = add nuw nsw i64 %.01417, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_518AntiLogRendererSSEC2ERSt10shared_ptrIKNS_9LogOpDataEEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, float noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.a, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_518AntiLogRendererSSEE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_518AntiLogRendererSSE5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !29
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
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !35
  %i.h = load float, ptr %.021, align 4, !tbaa !35
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
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !35
  store <4 x float> %i.ah, ptr %.01819, align 1, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %.01819, i64 12
  store float %i.aj, ptr %i.ak, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01819, i64 16
  %i.an = add nuw nsw i64 %.01720, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515Log2LinRendererC2ERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 12), (16, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 2.000000e+00, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_515Log2LinRendererE, i64 16), ptr %0, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_515Log2LinRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
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
define hidden void @_ZN16OpenColorIO_v2_515Log2LinRenderer10updateDataERSt10shared_ptrIKNS_9LogOpDataEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
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
  %i.q = load float, ptr %i.d, align 8, !tbaa !31
  %i.r = tail call float @log2f(float noundef %i.q) #22 ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !32   ; 4 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !32   ; 4 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !34
  %i.x = insertelement <2 x double> poison, double %i.t, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = fptrunc <2 x double> %i.y to <2 x float>
  %i.aa = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x float> %i.ab, %i.z
  store <2 x float> %i.ac, ptr %i.u, align 8, !tbaa !35
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !32  ; 4 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !34
  %i.ap = insertelement <4 x double> poison, double %i.ah, i64 0
  %i.aq = insertelement <4 x double> %i.ap, double %i.ak, i64 1
  %i.ar = insertelement <4 x double> %i.aq, double %i.am, i64 2
  %i.as = insertelement <4 x double> %i.ar, double %i.ao, i64 3
  %i.at = fptrunc <4 x double> %i.as to <4 x float>
  %i.au = fneg <4 x float> %i.at
  store <4 x float> %i.au, ptr %i.ai, align 4, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aw = load double, ptr %i.av, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.az = load double, ptr %i.ay, align 8, !tbaa !34
  %i.ba = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  %i.bd = fneg <2 x float> %i.bc
  store <2 x float> %i.bd, ptr %i.ax, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !34
  %i.bj = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bi, i64 1
  %i.bl = fptrunc <2 x double> %i.bk to <2 x float>
  %i.bm = fdiv <2 x float> splat (float 1.000000e+00), %i.bl
  store <2 x float> %i.bm, ptr %i.bg, align 4, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !34
  %i.bp = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bo, i64 1
  %i.br = fptrunc <2 x double> %i.bq to <2 x float>
  %i.bs = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.r, i64 0
  %i.bt = fdiv <2 x float> %i.bs, %i.br           ; 2 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  store float %i.bu, ptr %i.af, align 8, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bw = extractelement <2 x float> %i.bt, i64 1
  store float %i.bw, ptr %i.bv, align 4, !tbaa !35
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
end_hunk_0
