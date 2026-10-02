Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dpm_cascade?download=true
inline.NumInlined: 753
inline.NumDeleted: 305
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dpm10DPMCascade6detectERNS_3MatE:bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !126
  store ptr %2, ptr %i.k, align 8, !tbaa !127
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 70, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN2cv3dpm10DPMCascade15computeFeaturesERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(208) %2)
  call void @_ZN2cv3dpm10DPMCascade14initDPMCascadeEv(ptr noundef nonnull align 8 dereferenceable(1033) %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv3dpm10DPMCascade7processERSt6vectorIS2_IdSaIdEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN2cv3dpm21NonMaximumSuppression7processERSt6vectorIS2_IdSaIdEESaIS4_EEd(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef 5.000000e-01)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn14 = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.m, %bb.h ]
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  resume { ptr, i32 } %.pn14
}

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dpm10DPMCascade15computeFeaturesERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(1033) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::dpm::Feature", align 8  ; 9 uses
  %3 = alloca %"class.cv::dpm::PyramidParameter", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = load <4 x i32>, ptr %i.a, align 8, !tbaa !79
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  store <4 x i32> %i.c, ptr %3, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double 1.000000e+00, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv3dpm7FeatureC1ENS0_16PyramidParameterE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 28, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZN2cv3dpm7FeatureaSERKS1_.exit unwind label %bb.f ; 0 uses

_ZN2cv3dpm7FeatureaSERKS1_.exit:                  ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i12, label %_ZN2cv3dpm7FeatureD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv3dpm7FeatureaSERKS1_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZN2cv3dpm7FeatureD2Ev.exit

_ZN2cv3dpm7FeatureD2Ev.exit:                      ; preds = %_ZN2cv3dpm7FeatureaSERKS1_.exit, %bb.c
  %i.s = load ptr, ptr %i.d, align 16, !tbaa !75  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3dpm16PyramidParameterD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2cv3dpm7FeatureD2Ev.exit
  %i.t = load ptr, ptr %i.e, align 16, !tbaa !82
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #20
  br label %_ZN2cv3dpm16PyramidParameterD2Ev.exit

_ZN2cv3dpm16PyramidParameterD2Ev.exit:            ; preds = %_ZN2cv3dpm7FeatureD2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  call void @_ZN2cv3dpm7Feature21computeFeaturePyramidERKNS_3MatERSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 984
  call void @_ZN2cv3dpm7Feature21projectFeaturePyramidERKNS_3MatERKSt6vectorIS2_SaIS2_EERS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv3dpm7FeatureD2Ev.exit16

bb.f:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !75  ; 3 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i15, label %_ZN2cv3dpm7FeatureD2Ev.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #20
  br label %_ZN2cv3dpm7FeatureD2Ev.exit16

_ZN2cv3dpm7FeatureD2Ev.exit16:                    ; preds = %bb.g, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.ab, %bb.f ], [ %i.ab, %bb.g ]
  %i.ai = load ptr, ptr %i.d, align 16, !tbaa !75 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i17, label %_ZN2cv3dpm16PyramidParameterD2Ev.exit18, label %bb.h

bb.h:                                             ; preds = %_ZN2cv3dpm7FeatureD2Ev.exit16
  %i.aj = load ptr, ptr %i.e, align 16, !tbaa !82
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #20
  br label %_ZN2cv3dpm16PyramidParameterD2Ev.exit18

_ZN2cv3dpm16PyramidParameterD2Ev.exit18:          ; preds = %bb.h, %_ZN2cv3dpm7FeatureD2Ev.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dpm10DPMCascade7processERSt6vectorIS2_IdSaIdEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(1033) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.30", align 1 ; 3 uses
  %4 = alloca %"class.std::vector.5", align 8     ; 14 uses
  %5 = alloca %"class.std::vector.33", align 8    ; 14 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.sroa.0375.0.copyload = load i32, ptr %i.a, align 8 ; 2 uses
  %.sroa.5376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.b = load <2 x i32>, ptr %.sroa.5376.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74, !noalias !138 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !75, !noalias !138 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !83

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19, !noalias !138
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21, !noalias !138
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !76, !noalias !138 ; 2 uses
  %.pre1.i = load ptr, ptr %i.d, align 8, !tbaa !76, !noalias !138
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %.pre-phi4.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.k, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.n = sub i64 %.pre-phi.i, %.pre-phi4.i        ; 10 uses
  %i.o = icmp sgt i64 %i.n, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !84

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.n, i1 false), !noalias !138
  br label %_ZN2cv3dpm7Feature20getPyramidParametersEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 8
  br i1 %i.p, label %.thread585, label %_ZN2cv3dpm7Feature20getPyramidParametersEv.exit

_ZN2cv3dpm7Feature20getPyramidParametersEv.exit:  ; preds = %bb.d, %bb.e
  %.not.i.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i
  br i1 %.not.i.i.i.i, label %.thread, label %bb.f

.thread585:                                       ; preds = %bb.e
  %i.q = load double, ptr %i.l, align 8, !tbaa !77, !noalias !138
  store double %i.q, ptr %i.m, align 8, !tbaa !77, !noalias !138
  br label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i

.thread:                                          ; preds = %_ZN2cv3dpm7Feature20getPyramidParametersEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr null, i64 %i.n
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.f:                                             ; preds = %_ZN2cv3dpm7Feature20getPyramidParametersEv.exit
  %i.s = icmp ugt i64 %i.n, 9223372036854775800
  br i1 %i.s, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !139

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %.thread585, %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21
          to label %.noexc168 unwind label %bb.j  ; 6 uses

.noexc168:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 3 uses
  %8 = icmp samesign ugt i64 %i.n, 8
  br i1 %8, label %bb.g, label %bb.h, !prof !140

bb.g:                                             ; preds = %.noexc168
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.m, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.h:                                             ; preds = %.noexc168
  %i.v = icmp eq i64 %i.n, 8
  br i1 %i.v, label %bb.i, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %i.m, align 8, !tbaa !77
  store double %i.w, ptr %i.t, align 8, !tbaa !77
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.i, %bb.h, %bb.g, %.thread
  %i.x = phi ptr [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.r, %.thread ] ; 2 uses
  %i.y = phi ptr [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ null, %.thread ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 208
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = sub nsw i32 %i.ah, %.sroa.0375.0.copyload ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %bb.k

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit330

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv3dpm10DPMCascade7processERSt6vectorIS2_IdSaIdEESaIS4_EE, ptr noundef nonnull @.str.1, i32 noundef 268) #19
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.am, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit328

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !85 ; 3 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = icmp slt i32 %i.at, 0
  br i1 %i.av, label %bb.q, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
          to label %.noexc170 unwind label %bb.r

.noexc170:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.p
  %.not.i.i.i.i169 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i169, label %._crit_edge, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.aw = mul nuw nsw i64 %i.au, 24               ; 3 uses
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #21
          to label %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit unwind label %bb.r ; 7 uses

_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit:    ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.aw, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ax, i64 %i.aw ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %.pre = load i32, ptr %i.as, align 4, !tbaa !85 ; 2 uses
  %i.ba = icmp sgt i32 %.pre, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.s

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit
  %.0.lcssa.i.i.i.i.i594 = phi ptr [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ] ; 3 uses
  %.sink.i592 = phi i64 [ 0, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.az, %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit ], [ %i.az, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ] ; 2 uses
  %.sroa.0361.0590 = phi ptr [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ax, %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit ], [ %i.ax, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv3dpm10DPMCascade21computeLocationScoresERSt6vectorIS2_IdSaIdEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(1033) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.x unwind label %bb.ag

bb.r:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit328

bb.s:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.bd = phi i32 [ %.pre, %.lr.ph ], [ %i.bv, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %indvars.iv ; 3 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !79
  %i.bi = add nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 2 uses
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !75 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bj
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = sub nuw nsw i64 %i.bj, %i.bq
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.bs)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge unwind label %bb.w

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge:    ; preds = %bb.t
  %.pre475 = load i32, ptr %i.as, align 4, !tbaa !85
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.u:                                             ; preds = %bb.s
  %i.bt = icmp ugt i64 %i.bq, %i.bj
  br i1 %i.bt, label %bb.v, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bj ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.bu
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.v
  store ptr %i.bu, ptr %i.bk, align 8, !tbaa !74
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.v, %bb.u
  %i.bv = phi i32 [ %.pre475, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %i.bd, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.bd, %bb.v ], [ %i.bd, %bb.u ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.s, label %._crit_edge, !llvm.loop !131

bb.w:                                             ; preds = %bb.t
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv3dpm10DPMCascade20computeRootPCAScoresERSt6vectorIS2_INS_3MatESaIS3_EESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(1033) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader406 unwind label %bb.ah

.preheader406:                                    ; preds = %bb.x
  %i.bz = load i32, ptr %i.as, align 4, !tbaa !85
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.preheader.preheader, label %._crit_edge451.split

.preheader.preheader:                             ; preds = %.preheader406
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.cd = sitofp <2 x i32> %i.b to <2 x double>
  %i.ce = fmul nnan <2 x double> %i.cd, splat (double 5.000000e-01) ; 2 uses
  %i.cf = extractelement <2 x double> %i.ce, i64 0
  %i.cg = call double @llvm.ceil.f64(double %i.cf)
  %i.ch = fptosi double %i.cg to i32              ; 4 uses
  %i.ci = extractelement <2 x double> %i.ce, i64 1
  %i.cj = call double @llvm.ceil.f64(double %i.ci)
  %i.ck = fptosi double %i.cj to i32              ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 4
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_:bb.a
  store ptr %i.k, ptr %i.l, align 8, !tbaa !82
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !76 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !84

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load double, ptr %i.m, align 8, !tbaa !77
  store double %i.t, ptr %i.i, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #18 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #19
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #22
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv3MatESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv3MatESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !89
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
  unreachable

_ZNKSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #21 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !97, !alias.scope !195, !noalias !194
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !97, !alias.scope !194, !noalias !195
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !90, !alias.scope !195, !noalias !194
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !90, !alias.scope !194, !noalias !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !195, !noalias !194
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !193

_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIN2cv3MatESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #20
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv3MatESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt6vectorIN2cv3MatESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !89
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv3MatESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIN2cv3MatESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 208                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 208                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 44343134792571038
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 44343134792571037, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.057.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i) #18
  %i.p = add i64 %.057.i.i.i, -1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !196

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !21
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 44343134792571037) ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 208
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #21 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.y, %.lr.ph.i.i.i30 ], [ %i.w, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32 = phi i64 [ %i.x, %.lr.ph.i.i.i30 ], [ %1, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i31) #18
  %i.x = add i64 %.057.i.i.i32, -1                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  %.not.i.i.i33 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !196

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i37 ], [ %i.v, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #18
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #18
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208
  %.not.i.i.i38 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !197

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.v, ptr %0, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.w, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %i.t
  store ptr %i.af, ptr %i.h, align 8, !tbaa !90
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74   ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !75     ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !83

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !76    ; 2 uses
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !76
  %.pre44 = ptrtoint ptr %.pre43 to i64
  %.pre45 = ptrtoint ptr %.pre to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi46 = phi i64 [ %.pre45, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.v, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre44, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.u, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.t, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !82
  %i.ae = sub i64 %.pre-phi, %.pre-phi46          ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 8
  br i1 %i.af, label %bb.d, label %bb.e, !prof !84

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.z, i64 %i.ae, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ag = icmp eq i64 %i.ae, 8
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load double, ptr %i.z, align 8, !tbaa !77
  store double %i.ah, ptr %i.aa, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !74
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !76, !alias.scope !205, !noalias !204
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !76, !alias.scope !204, !noalias !205
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !82, !alias.scope !205, !noalias !204
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !82, !alias.scope !204, !noalias !205
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !205, !noalias !204
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ao, %.lr.ph.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %i.ap, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.aq = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !76, !alias.scope !207, !noalias !206
  store <2 x ptr> %i.aq, ptr %.012.i.i.i29, align 8, !tbaa !76, !alias.scope !206, !noalias !207
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82, !alias.scope !207, !noalias !206
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !82, !alias.scope !206, !noalias !207
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !207, !noalias !206
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !3

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ap, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.av, %.lr.ph.i.i.i28 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #20
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !92
  ret void

end_hunk_1
