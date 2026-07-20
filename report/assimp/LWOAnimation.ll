inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver15DoInterpolationEN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEEPNS0_8EnvelopeEdRf:bb.a
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.l, %bb.p, %bb.o, %bb.n, %bb.d, %bb.h, %bb.g, %bb.f, %bb.q, %bb.i, %bb.b
  %storemerge6.i29.sink = phi float [ 0.000000e+00, %bb.l ], [ %i.bg, %bb.q ], [ %i.ax, %bb.o ], [ 0.000000e+00, %bb.d ], [ %i.ag, %bb.i ], [ %i.x, %bb.g ], [ %i.j, %bb.b ], [ %i.q, %bb.f ], [ %i.ae, %bb.h ], [ %i.aq, %bb.n ], [ %i.be, %bb.p ], [ %i.bk, %bb.r ], [ %i.by, %bb.t ], [ %i.br, %bb.s ]
  store float %storemerge6.i29.sink, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load double, ptr %2, align 8
  %i.f = load double, ptr %1, align 8             ; 2 uses
  %i.g = fsub double %i.e, %i.f                   ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 8            ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load float, ptr %i.k, align 8
  %i.m = fsub float %i.l, %i.j
  %i.n = fsub double %3, %i.f
  %i.o = fdiv double %i.n, %i.g
  %i.p = fptrunc double %i.o to float
  %i.q = tail call float @llvm.fmuladd.f32(float %i.m, float %i.p, float %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %storemerge6 = phi float [ %i.d, %bb.b ], [ %i.q, %bb.d ], [ %i.j, %bb.c ]
  store float %storemerge6, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver18SubsampleAnimTrackERSt6vectorI11aiVectorKeySaIS3_EEdd(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readnone align 1 captures(none) %1, double noundef %2, double noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 20)) %2, double noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  store double %3, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load double, ptr %i.b, align 8
  %i.d = fcmp oeq double %i.c, %3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 8
  store float %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -40
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.m, %i.l
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.n, ptr %i.a, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.o, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @_ZN6Assimp3LWO12AnimResolver15DoInterpolationEN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEEPNS0_8EnvelopeEdRf(ptr nonnull align 8 poison, ptr nonnull %i.b, ptr noundef %i.q, double noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = load double, ptr %i.s, align 8
  %i.u = fcmp oeq double %i.t, %3
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load float, ptr %i.w, align 8
  store float %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -40
  %i.ad = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not25 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.ae, ptr %i.r, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 1, ptr %i.af, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void @_ZN6Assimp3LWO12AnimResolver15DoInterpolationEN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEEPNS0_8EnvelopeEdRf(ptr nonnull align 8 poison, ptr nonnull %i.s, ptr noundef %i.ah, double noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fcmp oeq double %i.ak, %3
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load float, ptr %i.an, align 8
  store float %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -40
  %i.au = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not26 = icmp eq ptr %i.au, %i.at
  br i1 %.not26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr %i.av, ptr %i.ai, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.aw, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void @_ZN6Assimp3LWO12AnimResolver15DoInterpolationEN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEEPNS0_8EnvelopeEdRf(ptr nonnull align 8 poison, ptr nonnull %i.aj, ptr noundef %i.ay, double noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.am)
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) initializes((112, 136), (164, 168)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Assimp::LWO::Envelope", align 16 ; 14 uses
  %7 = alloca %"struct.Assimp::LWO::Envelope", align 16 ; 11 uses
  %8 = alloca %"struct.Assimp::LWO::Envelope", align 16 ; 11 uses
  %9 = alloca %struct.aiVectorKey, align 8        ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store ptr %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  store i32 %5, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store <4 x i32> <i32 0, i32 16, i32 1, i32 1>, ptr %6, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store <4 x i32> <i32 0, i32 16, i32 1, i32 1>, ptr %7, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store <4 x i32> <i32 0, i32 16, i32 1, i32 1>, ptr %8, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %.sroa.gep243 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.gep244 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.gep247 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.gep248 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.gep251 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.gep252 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.gep253 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.gep249 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.gep245 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 7
  br i1 %i.j, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not37 = icmp eq ptr %3, null
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 8
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not38 = icmp eq ptr %4, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 9
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.g ], [ 1.000000e+00, %bb.f ], [ 1.000000e+00, %bb.d ] ; 3 uses
  br i1 %.not, label %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  store ptr %6, ptr %i.a, align 8
  %i.q = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17
          to label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i unwind label %bb.i ; 6 uses

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double 0.000000e+00, ptr %i.q, align 8
  %.sroa.11.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store float %.sroa.11.0, ptr %.sroa.11.0..sroa_idx138, align 8
  %.sroa.14.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 1, ptr %.sroa.14.0..sroa_idx148, align 4
  %.sroa.15.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.15.0..sroa_idx158, i8 0, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store ptr %i.q, ptr %i.e, align 16
  store ptr %i.t, ptr %i.s, align 8
  store ptr %i.t, ptr %i.r, align 16
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i68, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i52, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.h
  %.sroa.phi242 = phi ptr [ %.sroa.gep243, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.gep244, %bb.h ], [ %.sroa.gep245, %bb.b ]
  %.sroa.phi246 = phi ptr [ %.sroa.gep247, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.gep248, %bb.h ], [ %.sroa.gep249, %bb.b ]
  %.sroa.phi250 = phi ptr [ %.sroa.gep251, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.gep252, %bb.h ], [ %.sroa.gep253, %bb.b ]
  %i.v = phi ptr [ %6, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %2, %bb.h ], [ %2, %bb.b ]
  %.sroa.11.0174 = phi float [ %.sroa.11.0, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11.0, %bb.h ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %.not40 = icmp eq ptr %3, null
  br i1 %.not40, label %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i52, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit66

_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i52: ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit
  store ptr %7, ptr %i.b, align 8
  %i.w = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17
          to label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i63 unwind label %bb.i ; 6 uses

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i63: ; preds = %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i52
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double 0.000000e+00, ptr %i.w, align 8
  %.sroa.11.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store float %.sroa.11.0174, ptr %.sroa.11.0..sroa_idx142, align 8
  %.sroa.14.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 1, ptr %.sroa.14.0..sroa_idx152, align 4
  %.sroa.15.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.15.0..sroa_idx160, i8 0, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store ptr %i.w, ptr %i.f, align 16
  store ptr %i.z, ptr %i.y, align 8
  store ptr %i.z, ptr %i.x, align 16
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit66

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit66: ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i63, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit
  %i.aa = phi ptr [ %7, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i63 ], [ %3, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.phi239 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.not41 = icmp eq ptr %4, null
  br i1 %.not41, label %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i68, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit82

_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i68: ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit66
  store ptr %8, ptr %i.c, align 8
  %i.ab = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17
          to label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79 unwind label %bb.i ; 6 uses

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79: ; preds = %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i68
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store double 0.000000e+00, ptr %i.ab, align 8
  %.sroa.11.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store float %.sroa.11.0174, ptr %.sroa.11.0..sroa_idx146, align 8
  %.sroa.14.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 1, ptr %.sroa.14.0..sroa_idx156, align 4
  %.sroa.15.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.15.0..sroa_idx162, i8 0, i64 20, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  store ptr %i.ab, ptr %i.g, align 16
  store ptr %i.ae, ptr %i.ad, align 8
  store ptr %i.ae, ptr %i.ac, align 16
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit82

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit82: ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit66
  %i.af = phi ptr [ %8, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i79 ], [ %4, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit66 ] ; 4 uses
  %.not42 = trunc nuw i32 %5 to i1
  br i1 %.not42, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit82
  %.sroa.phi.a = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load double, ptr %i.ag, align 8         ; 2 uses
  %i.ai = fcmp une double %i.ah, 0.000000e+00
  %. = select i1 %i.ai, double %i.ah, double 1.000000e+02 ; 2 uses
  %i.aj = fdiv double 1.000000e+00, %.
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %.sroa.phi250, align 8, !noalias !16
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -40
  %i.an = load ptr, ptr %.sroa.phi239, align 8, !noalias !19
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -40
  %i.ap = load ptr, ptr %.sroa.phi.a, align 8, !noalias !22
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -40
  %i.ar = load double, ptr %i.ao, align 8         ; 2 uses
  %i.as = load double, ptr %i.aq, align 8         ; 2 uses
  %i.at = fcmp olt double %i.ar, %i.as
  %i.au = load double, ptr %i.am, align 8         ; 2 uses
  %i.av = select i1 %i.at, double %i.as, double %i.ar ; 2 uses
  %i.aw = fcmp olt double %i.au, %i.av
  %i.ax = select i1 %i.aw, double %i.av, double %i.au
  %i.ay = fmul double %., %i.ax
  %i.az = fptoui double %i.ay to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit82
  %.sroa.phi236 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.phi233 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ba = load ptr, ptr %.sroa.phi242, align 8
  %i.bb = load ptr, ptr %.sroa.phi246, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 40
  %i.bg = load ptr, ptr %.sroa.phi233, align 8
  %i.bh = load ptr, ptr %.sroa.phi236, align 8
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 40
  %i.bm = call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bl)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.027 = phi i64 [ %i.az, %bb.j ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bn = lshr i64 %.027, 1
  %i.bo = add i64 %i.bn, %.027                    ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, 384307168202282325
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
          to label %.noexc86 unwind label %bb.s

.noexc86:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %1, align 8               ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = sdiv exact i64 %i.bv, 24
  %i.bx = icmp ult i64 %i.bw, %i.bo
  br i1 %i.bx, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bu
  %i.cc = mul nuw nsw i64 %i.bo, 24
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #17
          to label %.noexc87 unwind label %bb.s   ; 4 uses

.noexc87:                                         ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bs, %i.bz
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc87, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.cd, %.noexc87 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.bs, %.noexc87 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !25
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ce, %i.bz
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc87
  %.not.i8.i = icmp eq ptr %i.bs, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #19
  br label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.o, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.cd, ptr %1, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store ptr %i.cg, ptr %i.by, align 8
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.bo
  store ptr %i.ch, ptr %i.bq, align 8
  %.pre = load ptr, ptr %i.a, align 8
  %.pre197 = load ptr, ptr %i.b, align 8
  %.pre198 = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.n
  %i.ci = phi ptr [ %.pre198, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.af, %bb.n ]
  %i.cj = phi ptr [ %.pre197, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.aa, %bb.n ]
  %i.ck = phi ptr [ %.pre, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.v, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64
  store i64 %i.co, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  store i64 %i.cs, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  store i64 %i.cw, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 4 uses
  store i8 0, ptr %i.cx, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 4 uses
  store i8 0, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i8 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.ax, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit
  %i.df = phi ptr [ %i.ga, %bb.ax ], [ %i.cu, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ] ; 4 uses
  %i.dg = phi i8 [ %i.gb, %bb.ax ], [ 0, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ] ; 2 uses
  %i.dh = phi ptr [ %i.fr, %bb.ax ], [ %i.cq, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ] ; 2 uses
  %i.di = phi ptr [ %i.fi, %bb.ax ], [ %i.cm, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.da, align 4
  %i.dj = load double, ptr %i.di, align 8         ; 6 uses
  %i.dk = load double, ptr %i.dh, align 8         ; 5 uses
  %i.dl = fcmp oeq double %i.dj, %i.dk
  br i1 %i.dl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dm = load double, ptr %i.df, align 8
  %i.dn = fcmp oeq double %i.dj, %i.dm
  br i1 %i.dn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store double %i.dj, ptr %9, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dp = load float, ptr %i.do, align 8
  store float %i.dp, ptr %i.dc, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dr = load float, ptr %i.dq, align 8
  store float %i.dr, ptr %i.dd, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dt = load float, ptr %i.ds, align 8
  store float %i.dt, ptr %i.de, align 8
  br label %bb.ad

bb.s:                                             ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i, %bb.m
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.dv = fcmp ugt double %i.dj, %i.dk
  %i.dw = trunc nuw i8 %i.dg to i1
  %or.cond = or i1 %i.dv, %i.dw
  %i.dx = load double, ptr %i.df, align 8         ; 3 uses
  br i1 %or.cond, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = fcmp ugt double %i.dx, %i.dj
  br i1 %i.dy, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = load i8, ptr %i.cx, align 2, !range !30, !noundef !5
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.dx)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %bb.u
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.dj)
  br label %bb.ad

bb.y:                                             ; preds = %bb.t
  %i.eb = fcmp ugt double %i.dx, %i.dk
  %.pre199 = load i8, ptr %i.cy, align 1, !range !30
  %.pre200 = trunc nuw i8 %.pre199 to i1          ; 2 uses
  br i1 %i.eb, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.pre200, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.dk)
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  br i1 %.pre200, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.dk)
  br label %bb.ad

.thread:                                          ; preds = %bb.z, %bb.ab
  %i.ec = trunc nuw i8 %i.dg to i1
  %spec.select = select i1 %i.ec, ptr %i.df, ptr %i.di
  %i.ed = load double, ptr %spec.select, align 8
  call void @_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %9, double noundef %i.ed)
  br label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.ac, %bb.aa, %bb.x, %bb.w, %bb.r
  %i.ee = load double, ptr %9, align 8            ; 3 uses
end_hunk_0
