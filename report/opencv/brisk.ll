Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/brisk?download=true
inline.NumInlined: 1012
inline.NumDeleted: 417
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@__func__._ZN2cv11xfeatures2d10BriskLayer10halfsampleERKNS_3MatERS2_ = private unnamed_addr constant [11 x i8] c"halfsample\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"srcimg.rows / 2 == dstimg.rows\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"dims <= 2\00", align 1
@__func__._ZNK2cv8MatShapeclEv = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"(srcimg.cols / 3) * 2 == dstimg.cols\00", align 1
@__func__._ZN2cv11xfeatures2d10BriskLayer14twothirdsampleERKNS_3MatERS2_ = private unnamed_addr constant [15 x i8] c"twothirdsample\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"(srcimg.rows / 3) * 2 == dstimg.rows\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"No element name has been given\00", align 1
@__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_ = private unnamed_addr constant [11 x i8] c"operator<<\00", align 1
@.str.24 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/persistence.hpp\00", align 1
@.str.26 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [94 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d10BRISK_ImplESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8

@_ZN2cv11xfeatures2d10BRISK_ImplC1Eiif = hidden unnamed_addr alias void (ptr, i32, i32, float), ptr @_ZN2cv11xfeatures2d10BRISK_ImplC2Eiif
@_ZN2cv11xfeatures2d10BRISK_ImplC1ERKSt6vectorIfSaIfEERKS2_IiSaIiEEffS8_ = hidden unnamed_addr alias void (ptr, ptr, ptr, float, float, ptr), ptr @_ZN2cv11xfeatures2d10BRISK_ImplC2ERKSt6vectorIfSaIfEERKS2_IiSaIiEEffS8_
@_ZN2cv11xfeatures2d10BRISK_ImplC1EiiRKSt6vectorIfSaIfEERKS2_IiSaIiEEffS8_ = hidden unnamed_addr alias void (ptr, i32, i32, ptr, ptr, float, float, ptr), ptr @_ZN2cv11xfeatures2d10BRISK_ImplC2EiiRKSt6vectorIfSaIfEERKS2_IiSaIiEEffS8_
@_ZN2cv11xfeatures2d10BRISK_ImplD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv11xfeatures2d10BRISK_ImplD2Ev
@_ZN2cv11xfeatures2d15BriskScaleSpaceC1Ei = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN2cv11xfeatures2d15BriskScaleSpaceC2Ei
@_ZN2cv11xfeatures2d15BriskScaleSpaceD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv11xfeatures2d15BriskScaleSpaceD2Ev
@_ZN2cv11xfeatures2d10BriskLayerC1ERKNS_3MatEff = hidden unnamed_addr alias void (ptr, ptr, float, float), ptr @_ZN2cv11xfeatures2d10BriskLayerC2ERKNS_3MatEff
@_ZN2cv11xfeatures2d10BriskLayerC1ERKS1_i = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN2cv11xfeatures2d10BriskLayerC2ERKS1_i

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d10BRISK_ImplC2Eiif(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN2cv11xfeatures2d10BRISK_ImplE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4, !tbaa !29
  invoke void @_ZN2cv11xfeatures2d10BRISK_Impl15setPatternScaleEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN2cv9Feature2DD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d10BRISK_Impl15setPatternScaleEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:
  %2 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store float %1, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #25 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store ptr %i.b, ptr %2, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !33
  store ptr %i.e, ptr %i.c, align 8, !tbaa !148
  %i.f = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #25
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit18 ; 6 uses

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %3, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !36
  store ptr %i.i, ptr %i.g, align 8, !tbaa !37
  %i.j = load float, ptr %i.a, align 8, !tbaa !30
  %i.k = fpext float %i.j to double               ; 3 uses
  %i.l = fmul double %i.k, 8.500000e-01           ; 2 uses
  %i.m = insertelement <4 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <4 x double> %i.m, <4 x double> poison, <4 x i32> zeroinitializer
  %i.o = fmul <4 x double> %i.n, <double 0.000000e+00, double 2.900000e+00, double 4.900000e+00, double 7.400000e+00>
  %i.p = fptrunc <4 x double> %i.o to <4 x float>
  store <4 x float> %i.p, ptr %i.b, align 4, !tbaa !38
  %i.q = fmul double %i.l, 1.080000e+01
  %i.r = fptrunc double %i.q to float
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.r, ptr %i.s, align 4, !tbaa !38
  store <4 x i32> <i32 1, i32 10, i32 14, i32 15>, ptr %i.f, align 4, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 20, ptr %i.t, align 4, !tbaa !39
  %i.u = fmul double %i.k, 5.850000e+00
  %i.v = fptrunc double %i.u to float
  %i.w = fmul double %i.k, f0x4020666666666666
  %i.x = fptrunc double %i.w to float
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv11xfeatures2d10BRISK_Impl14generateKernelERKSt6vectorIfSaIfEERKS2_IiSaIiEEffSA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, float noundef %i.v, float noundef %i.x, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit18.thread

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit18.thread:           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 20) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit20

_ZNSt6vectorIiSaIiEED2Ev.exit18:                  ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit20

_ZNSt6vectorIfSaIfEED2Ev.exit20:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit18, %_ZNSt6vectorIiSaIiEED2Ev.exit18.thread
  %.pn3639 = phi { ptr, i32 } [ %i.y, %_ZNSt6vectorIiSaIiEED2Ev.exit18.thread ], [ %i.z, %_ZNSt6vectorIiSaIiEED2Ev.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn3639
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d10BRISK_ImplC2ERKSt6vectorIfSaIfEERKS2_IiSaIiEEffS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, float noundef %3, float noundef %4, ptr nofree noundef readonly align 8 captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN2cv11xfeatures2d10BRISK_ImplE, i64 16), ptr %0, align 8, !tbaa !16
  invoke void @_ZN2cv11xfeatures2d10BRISK_Impl14generateKernelERKSt6vectorIfSaIfEERKS2_IiSaIiEEffSA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, float noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 20, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 3, ptr %i.b, align 4, !tbaa !29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN2cv9Feature2DD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d10BRISK_Impl14generateKernelERKSt6vectorIfSaIfEERKS2_IiSaIiEEffSA_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, float noundef %3, float noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [1024 x double], align 16         ; 6 uses
  %i.b = alloca [1024 x double], align 16         ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = load ptr, ptr %5, align 8, !tbaa !35     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !40

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
  %.pre = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %.pre242 = load ptr, ptr %i.c, align 8, !tbaa !41
  %.pre243 = ptrtoint ptr %.pre242 to i64
  %.pre244 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi245 = phi i64 [ %.pre244, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre243, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h ; 9 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi245          ; 10 uses
  %i.o = icmp sgt i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 4
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.k, align 4, !tbaa !39
  store i32 %i.q, ptr %i.l, align 4, !tbaa !39
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float %3, ptr %i.s, align 4, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %4, ptr %i.t, align 8, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33   ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %.fr207 = freeze i64 %i.z                       ; 2 uses
  %i.aa = lshr i64 %.fr207, 2                     ; 5 uses
  %i.ab = trunc i64 %i.aa to i32
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ae = load ptr, ptr %2, align 8, !tbaa !35    ; 9 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %.fr207, %i.ah
  br i1 %i.ai, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv11xfeatures2d10BRISK_Impl14generateKernelERKSt6vectorIfSaIfEERKS2_IiSaIiEEffSA_, ptr noundef nonnull @.str.5, i32 noundef 413) #27
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !48
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bg

bb.m:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ar = icmp sgt i32 %i.ab, 0                   ; 2 uses
  br i1 %i.ar, label %.lr.ph, label %.preheader182

.lr.ph:                                           ; preds = %bb.m
  %wide.trip.count = and i64 %i.aa, 2147483647    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep278 = getelementptr i8, ptr %i.ae, i64 %i.as
  %bound0 = icmp ult ptr %i.aq, %scevgep278
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi279 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !39, !alias.scope !166
  %wide.load280 = load <4 x i32>, ptr %i.au, align 4, !tbaa !39, !alias.scope !166
  %i.av = add <4 x i32> %vec.phi, %wide.load      ; 2 uses
  %i.aw = add <4 x i32> %vec.phi279, %wide.load280 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ay, ptr %i.aq, align 8, !tbaa !49, !alias.scope !167, !noalias !166
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %.preheader182.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.ay, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.az = phi i32 [ %i.bc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.prol
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.bc = add i32 %i.az, %i.bb                    ; 4 uses
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !49
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !153

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa294.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.preheader182.loopexit, label %scalar.ph

.preheader182.loopexit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa277 = phi i32 [ %i.ay, %middle.block ], [ %.lcssa294.unr, %scalar.ph.prol.loopexit ], [ %i.by, %scalar.ph ]
  %i.bf = shl i32 %.lcssa277, 16
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul nuw nsw i64 %i.bg, 12
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.loopexit, %bb.m
  %i.bi = phi i64 [ %i.bh, %.preheader182.loopexit ], [ 0, %bb.m ]
  br label %bb.o

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bj = phi i32 [ %i.by, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !39
  %i.bm = add i32 %i.bj, %i.bl                    ; 2 uses
  store i32 %i.bm, ptr %i.aq, align 8, !tbaa !49
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !39
  %i.bq = add i32 %i.bm, %i.bp                    ; 2 uses
  store i32 %i.bq, ptr %i.aq, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !39
  %i.bu = add i32 %i.bq, %i.bt                    ; 2 uses
  store i32 %i.bu, ptr %i.aq, align 8, !tbaa !49
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !39
  %i.by = add i32 %i.bu, %i.bx                    ; 3 uses
  store i32 %i.by, ptr %i.aq, align 8, !tbaa !49
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader182.loopexit, label %scalar.ph, !llvm.loop !154

bb.n:                                             ; preds = %bb.o
  %i.bz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #25
          to label %bb.p unwind label %bb.ah

bb.o:                                             ; preds = %bb.o, %.preheader182
  %.0144185 = phi i64 [ 0, %.preheader182 ], [ %i.cq, %bb.o ] ; 4 uses
  %i.ca = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.preheader182 ], [ %i.cp, %bb.o ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0144185
  %i.cc = extractelement <2 x double> %i.ca, i64 0
  store double %i.cc, ptr %i.cb, align 16, !tbaa !54
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0144185
  %i.ce = extractelement <2 x double> %i.ca, i64 1
  store double %i.ce, ptr %i.cd, align 16, !tbaa !54
  %i.cf = fmul <2 x double> %i.ca, <double f0xBF7921F0FE670071, double f0x3F7921F0FE670071>
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> splat (double f0x3FEFFFD8858E8A92), <2 x double> %i.cg) ; 4 uses
  %i.ci = or disjoint i64 %.0144185, 1            ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci
  %i.ck = extractelement <2 x double> %i.ch, i64 0
  store double %i.ck, ptr %i.cj, align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ci
  %i.cm = extractelement <2 x double> %i.ch, i64 1
  store double %i.cm, ptr %i.cl, align 8, !tbaa !54
  %i.cn = fmul <2 x double> %i.ch, <double f0xBF7921F0FE670071, double f0x3F7921F0FE670071>
end_hunk_0
begin_hunk_1_@_ZN2cv11xfeatures2d10BRISK_Impl14generateKernelERKSt6vectorIfSaIfEERKS2_IiSaIiEEffSA_:bb.a
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.0135188.us = phi i64 [ 0, %bb.ae ], [ %i.ga, %bb.af ] ; 3 uses
  %.0136187.us = phi ptr [ %.1141189.us, %bb.ae ], [ %i.fz, %bb.af ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0135188.us
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !54 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0135188.us
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !54 ; 2 uses
  %i.fq = insertelement <2 x double> %i.fl, double %i.fp, i64 0
  %i.fr = insertelement <2 x double> %i.fk, double %i.fn, i64 1
  %i.fs = fmul <2 x double> %i.fq, %i.fr
  %i.ft = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fp, i64 1
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.fj, <2 x double> %i.fs)
  %i.fw = fmul <2 x double> %i.fv, %i.gi
  %i.fx = fptrunc <2 x double> %i.fw to <2 x float>
  store <2 x float> %i.fx, ptr %.0136187.us, align 4, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %.0136187.us, i64 8
  store float %.0138.us, ptr %i.fy, align 4, !tbaa !60
  %i.fz = getelementptr inbounds nuw [12 x i8], ptr %.0136187.us, i64 %i.gg
  %i.ga = add nuw nsw i64 %.0135188.us, 1         ; 2 uses
  %exitcond217.not = icmp eq i64 %i.ga, 1024
  br i1 %exitcond217.not, label %bb.ag, label %bb.af, !llvm.loop !156

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %.1141189.us, i64 12 ; 2 uses
  %i.gc = add nuw nsw i32 %.0137190.us, 1         ; 2 uses
  %i.gd = load i32, ptr %i.ew, align 4, !tbaa !39 ; 2 uses
  %i.ge = icmp slt i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.ae, label %._crit_edge.us, !llvm.loop !157

._crit_edge.us:                                   ; preds = %bb.ag, %bb.ad
  %.1141.lcssa.us = phi ptr [ %.0140192.us, %bb.ad ], [ %i.gb, %bb.ag ]
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge196.us, label %bb.y, !llvm.loop !158

.lr.ph191.us:                                     ; preds = %bb.ad
  %i.gf = load i32, ptr %i.aq, align 8, !tbaa !49
  %i.gg = zext i32 %i.gf to i64
  %i.gh = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ae

._crit_edge196.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next224, 64
  br i1 %exitcond226.not, label %.split199.us, label %.lr.ph195.us, !llvm.loop !159

.split199.us:                                     ; preds = %.split, %._crit_edge196.us
  %i.gj = load i32, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.gk = add i32 %i.gj, -1
  %i.gl = mul i32 %i.gk, %i.gj
  %i.gm = lshr i32 %i.gl, 1
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.go) #25
          to label %bb.ai unwind label %bb.ar

bb.ah:                                            ; preds = %bb.w, %bb.v, %bb.n
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.split:                                           ; preds = %bb.x, %.split
  %indvars.iv213 = phi i64 [ %indvars.iv.next214.1, %.split ], [ 0, %bb.x ] ; 5 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv213 to i32
  %i.gs = uitofp nneg i32 %i.gr to float
  %i.gt = load float, ptr @_ZZN2cv11xfeatures2d10BRISK_Impl14generateKernelERKSt6vectorIfSaIfEERKS2_IiSaIiEEffSA_E13lb_scale_step, align 4, !tbaa !38
  %i.gu = fmul float %i.gt, %i.gs
  %i.gv = fpext float %i.gu to double
  %exp2 = tail call double @exp2(double %i.gv)
  %i.gw = fptrunc double %exp2 to float
  %i.gx = load ptr, ptr %i.dd, align 8, !tbaa !57
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv213
  store float %i.gw, ptr %i.gy, align 4, !tbaa !38
  %i.gz = load ptr, ptr %i.df, align 8, !tbaa !58
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv213
  store i32 0, ptr %i.ha, align 4, !tbaa !39
  %indvars.iv.next214 = or disjoint i64 %indvars.iv213, 1 ; 3 uses
  %i.hb = trunc nuw nsw i64 %indvars.iv.next214 to i32
  %i.hc = uitofp nneg i32 %i.hb to float
  %i.hd = load float, ptr @_ZZN2cv11xfeatures2d10BRISK_Impl14generateKernelERKSt6vectorIfSaIfEERKS2_IiSaIiEEffSA_E13lb_scale_step, align 4, !tbaa !38
  %i.he = fmul float %i.hd, %i.hc
  %i.hf = fpext float %i.he to double
  %exp2.1 = tail call double @exp2(double %i.hf)
  %i.hg = fptrunc double %exp2.1 to float
  %i.hh = load ptr, ptr %i.dd, align 8, !tbaa !57
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next214
  store float %i.hg, ptr %i.hi, align 4, !tbaa !38
  %i.hj = load ptr, ptr %i.df, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next214
  store i32 0, ptr %i.hk, align 4, !tbaa !39
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213, 2 ; 2 uses
  %exitcond216.not.1 = icmp eq i64 %indvars.iv.next214.1, 64
  br i1 %exitcond216.not.1, label %.split199.us, label %.split, !llvm.loop !159

bb.ai:                                            ; preds = %.split199.us
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.gp, ptr %i.hl, align 8, !tbaa !61
  %i.hm = load i32, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.hn = add i32 %i.hm, -1
  %i.ho = mul i32 %i.hn, %i.hm
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = shl nuw nsw i64 %i.hq, 4
  %i.hs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hr) #25
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !62
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i32 0, ptr %i.hu, align 8, !tbaa !63
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 0, ptr %i.hv, align 4, !tbaa !64
  %i.hw = ashr exact i64 %i.n, 2                  ; 7 uses
  %i.hx = trunc i64 %i.hw to i32                  ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hz = load i32, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.ia = add i32 %i.hz, -1
  %i.ib = mul i32 %i.ia, %i.hz
  %i.ic = lshr i32 %i.ib, 1
  %i.id = zext nneg i32 %i.ic to i64              ; 4 uses
  %i.ie = icmp ult i64 %i.hw, %i.id
  br i1 %i.ie, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.if = sub nuw nsw i64 %i.id, %i.hw            ; 5 uses
  %gepdiff = sub nsw i64 %i.h, %i.n
  %i.ig = ashr exact i64 %gepdiff, 2              ; 2 uses
  %i.ih = xor i64 %i.hw, 2305843009213693951
  %i.ii = icmp ule i64 %i.ig, %i.ih
  tail call void @llvm.assume(i1 %i.ii)
  %.not28.i = icmp ult i64 %i.ig, %i.if
  br i1 %.not28.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.r, align 4, !tbaa !39
  %i.ij = getelementptr i8, ptr %i.r, i64 4       ; 3 uses
  %i.ik = add nsw i64 %i.if, -1                   ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.am
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ik, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ij, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !39
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.al
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.hw, i64 %i.if)
  %i.in = add nuw nsw i64 %.sroa.speculated.i.i, %i.hw ; 2 uses
  %i.io = shl nuw nsw i64 %i.in, 2
  %i.ip = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.io) #25
          to label %.noexc168 unwind label %bb.as ; 4 uses

.noexc168:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.n ; 3 uses
  store i32 0, ptr %i.iq, align 4, !tbaa !39
  %i.ir = add nsw i64 %i.if, -1                   ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc168
  %i.it = getelementptr i8, ptr %i.iq, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ir, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.it, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !39
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc168
  %i.iu = icmp sgt i64 %i.n, 0
  br i1 %i.iu, label %bb.an, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.an:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ip, ptr align 4 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.an, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.l, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.h) #26
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.ao, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.if
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.in
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ap:                                            ; preds = %bb.ak
  %i.ix = icmp ugt i64 %i.hw, %i.id
  br i1 %i.ix, label %bb.aq, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.aq:                                            ; preds = %bb.ap
  %.idx = shl nuw nsw i64 %i.id, 2                ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not.i.i = icmp eq i64 %i.n, %.idx
  %spec.select = select i1 %.not.i.i, ptr %i.r, ptr %i.iy
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.aq, %bb.ap, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.am
  %.sroa.0.3 = phi ptr [ %i.l, %bb.ap ], [ %i.l, %bb.aq ], [ %i.l, %bb.am ], [ %i.l, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ip, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 6 uses
  %.sroa.14.0 = phi ptr [ %i.r, %bb.ap ], [ %spec.select, %bb.aq ], [ %i.ij, %bb.am ], [ %i.im, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.iv, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %.sroa.23.3 = phi ptr [ %i.m, %bb.ap ], [ %i.m, %bb.aq ], [ %i.m, %bb.am ], [ %i.m, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.iw, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 3 uses
  %i.iz = ptrtoint ptr %.sroa.14.0 to i64
  %i.ja = ptrtoint ptr %.sroa.0.3 to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = lshr exact i64 %i.jb, 2                 ; 3 uses
  %i.jd = trunc i64 %i.jc to i32                  ; 3 uses
  %.not208 = icmp eq i32 %i.jd, 0
  br i1 %.not208, label %.loopexit, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %wide.trip.count230 = and i64 %i.jc, 4294967295 ; 3 uses
  %min.iters.check282 = icmp samesign ult i64 %wide.trip.count230, 8
  br i1 %min.iters.check282, label %.lr.ph201.preheader292, label %vector.ph283

vector.ph283:                                     ; preds = %.lr.ph201.preheader
  %n.vec284 = and i64 %i.jc, 4294967288           ; 3 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next287, %vector.body285 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph283 ], [ %vec.ind.next, %vector.body285 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %index286 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x i32> %vec.ind, ptr %i.je, align 4, !tbaa !39
  store <4 x i32> %step.add, ptr %i.jf, align 4, !tbaa !39
  %index.next287 = add nuw i64 %index286, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.jg = icmp eq i64 %index.next287, %n.vec284
  br i1 %i.jg, label %middle.block288, label %vector.body285, !llvm.loop !160

middle.block288:                                  ; preds = %vector.body285
  %cmp.n289 = icmp eq i64 %wide.trip.count230, %n.vec284
  br i1 %cmp.n289, label %.loopexit, label %.lr.ph201.preheader292

.lr.ph201.preheader292:                           ; preds = %.lr.ph201.preheader, %middle.block288
  %indvars.iv227.ph = phi i64 [ 0, %.lr.ph201.preheader ], [ %n.vec284, %middle.block288 ]
  br label %.lr.ph201

bb.ar:                                            ; preds = %bb.ai, %.split199.us
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.as:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.lr.ph201:                                        ; preds = %.lr.ph201.preheader292, %.lr.ph201
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %.lr.ph201 ], [ %indvars.iv227.ph, %.lr.ph201.preheader292 ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %indvars.iv227
  %i.jk = trunc nuw i64 %indvars.iv227 to i32
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !39
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.loopexit, label %.lr.ph201, !llvm.loop !161

.loopexit:                                        ; preds = %.lr.ph201, %middle.block288, %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.aj
  %.sroa.0.0 = phi ptr [ %i.l, %bb.aj ], [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.sroa.0.3, %middle.block288 ], [ %.sroa.0.3, %.lr.ph201 ] ; 5 uses
  %.sroa.23.0 = phi ptr [ %i.m, %bb.aj ], [ %.sroa.23.3, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.sroa.23.3, %middle.block288 ], [ %.sroa.23.3, %.lr.ph201 ] ; 2 uses
  %.0127 = phi i32 [ %i.hx, %bb.aj ], [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.jd, %middle.block288 ], [ %i.jd, %.lr.ph201 ]
  %i.jl = load <2 x float>, ptr %i.s, align 4, !tbaa !38 ; 2 uses
  %i.jm = fmul <2 x float> %i.jl, %i.jl           ; 2 uses
  %i.jn = load i32, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.jo = icmp ugt i32 %i.jn, 1
  br i1 %i.jo, label %.preheader.preheader, label %._crit_edge205

.preheader.preheader:                             ; preds = %.loopexit
  %wide.trip.count240 = zext i32 %i.jn to i64
  %i.jp = load ptr, ptr %i.cr, align 8, !tbaa !55 ; 2 uses
  %i.jq = extractelement <2 x float> %i.jm, i64 0
  %i.jr = extractelement <2 x float> %i.jm, i64 1
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %._crit_edge, %.preheader.preheader
  %indvars.iv237 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next238, %._crit_edge ] ; 5 uses
  %i.js = getelementptr inbounds nuw [12 x i8], ptr %i.jp, i64 %indvars.iv237
  %i.jt = load <2 x float>, ptr %i.js, align 4, !tbaa !38
  %i.ju = trunc nuw i64 %indvars.iv237 to i32
  %i.jv = trunc nuw i64 %indvars.iv237 to i32
  br label %bb.au

._crit_edge205:                                   ; preds = %._crit_edge, %.loopexit
  %i.jw = load i32, ptr %i.hu, align 8, !tbaa !63
  %i.jx = uitofp i32 %i.jw to float
  %i.jy = fpext nnan ninf float %i.jx to double
  %i.jz = fmul nnan double %i.jy, 7.812500e-03
  %i.ka = tail call double @llvm.ceil.f64(double %i.jz)
  %i.kb = fptosi double %i.ka to i32
  %i.kc = shl nsw i32 %i.kb, 4
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.kc, ptr %i.kd, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge205
  %i.ke = ptrtoint ptr %.sroa.23.0 to i64
  %i.kf = ptrtoint ptr %.sroa.0.0 to i64
  %i.kg = sub i64 %i.ke, %i.kf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.kg) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge205, %bb.at
  ret void

._crit_edge:                                      ; preds = %bb.be
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count240
  br i1 %exitcond241.not, label %._crit_edge205, label %.lr.ph203, !llvm.loop !162

bb.au:                                            ; preds = %.lr.ph203, %bb.be
  %indvars.iv232 = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next233, %bb.be ] ; 4 uses
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %i.jp, i64 %indvars.iv232
  %i.ki = load <2 x float>, ptr %i.kh, align 4, !tbaa !38
  %i.kj = fsub <2 x float> %i.ki, %i.jt           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.kj, %i.kj
  %i.kk = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.kl = extractelement <2 x float> %i.kj, i64 0 ; 2 uses
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.kl, float %i.kk) ; 3 uses
  %i.kn = fcmp ogt float %i.km, %i.jr
  br i1 %i.kn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ko = load ptr, ptr %i.ht, align 8, !tbaa !62
  %i.kp = load i32, ptr %i.hv, align 4, !tbaa !64 ; 2 uses
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %i.kq ; 3 uses
  %i.ks = insertelement <2 x float> poison, float %i.km, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fdiv <2 x float> %i.kj, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kw = fpext <2 x float> %i.ku to <2 x double>
  %i.kx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> splat (double 2.048000e+03), <2 x double> splat (double 5.000000e-01))
  %i.ky = fptosi <2 x double> %i.kx to <2 x i32>
  store <2 x i32> %i.ky, ptr %i.kv, align 4, !tbaa !39
  store i32 %i.jv, ptr %i.kr, align 4, !tbaa !67
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.la = trunc nuw i64 %indvars.iv232 to i32
  store i32 %i.la, ptr %i.kz, align 4, !tbaa !68
  %i.lb = add i32 %i.kp, 1
  store i32 %i.lb, ptr %i.hv, align 4, !tbaa !64
  br label %bb.be

bb.aw:                                            ; preds = %bb.au
  %i.lc = fcmp olt float %i.km, %i.jq
  br i1 %i.lc, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.ld = load i32, ptr %i.hu, align 8, !tbaa !63 ; 3 uses
  %i.le = icmp ult i32 %i.ld, %.0127
  br i1 %i.le, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv11xfeatures2d10BRISK_Impl14generateKernelERKSt6vectorIfSaIfEERKS2_IiSaIiEEffSA_, ptr noundef nonnull @.str.5, i32 noundef 535) #27
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

bb.bc:                                            ; preds = %bb.az
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lh = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.bc
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !48
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.bb
  %.pn156 = phi { ptr, i32 } [ %i.lf, %bb.bb ], [ %i.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %i.lg, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ax
  %i.lm = load ptr, ptr %i.hl, align 8, !tbaa !61
  %i.ln = zext i32 %i.ld to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !39
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.lq ; 2 uses
end_hunk_1
