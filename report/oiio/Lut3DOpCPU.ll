inline.NumInlined: 813
inline.NumDeleted: 378
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd" = type { [3 x i64], i64 }
%"class.OpenColorIO_v2_5::Lut3DOpData::Lut3DArray" = type { %"class.OpenColorIO_v2_5::ArrayT" }
%"class.OpenColorIO_v2_5::ArrayT" = type { %"class.OpenColorIO_v2_5::ArrayBase", i64, i64, %"class.std::vector.11" }
%"class.OpenColorIO_v2_5::ArrayBase" = type { ptr }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [25 x i8] c"Illegal LUT3D direction.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [124 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererE = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererE = internal constant [61 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererE\00", align 1
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, ptr @_ZTIN16OpenColorIO_v2_55OpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE = internal constant [54 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE\00", align 1
@_ZTIN16OpenColorIO_v2_55OpCPUE = external constant ptr
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD0Ev, ptr @__cxa_pure_virtual, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [113 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererE = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererE = internal constant [50 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = internal constant [116 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE = internal unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE, ptr @_ZTIN16OpenColorIO_v2_55OpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE = internal constant [53 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD0Ev] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE = internal constant [63 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE\00", align 1
@__const._ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl.path_list = private unnamed_addr constant [24 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 1, i64 2, i64 1, i64 0, i64 2, i64 1, i64 2, i64 0, i64 2, i64 1, i64 0, i64 2, i64 0, i64 1, i64 0, i64 2, i64 1], align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@__const._ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.pows2 = private unnamed_addr constant [4 x i64] [i64 1, i64 2, i64 4, i64 8], align 16
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unsupported channel number.\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_516GetLut3DRendererERSt10shared_ptrIKNS_11Lut3DOpDataEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  switch i32 %i.c, label %bb.x [
    i32 0, label %bb.b
    i32 1, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK16OpenColorIO_v2_511Lut3DOpData24getConcreteInterpolationEv(ptr noundef nonnull align 8 dereferenceable(232) %i.a), !noalias !45
  %i.e = icmp eq i32 %i.d, 3
  %i.f = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !45 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !48, !noalias !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !50, !noalias !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 8 uses
  br i1 %i.e, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !51, !noalias !53
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererC2ERSt10shared_ptrIKNS_11Lut3DOpDataEE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %.noexc.i.i.i.i.i unwind label %bb.s, !noalias !53

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererE, i64 16), ptr %i.i, align 8, !tbaa !51, !noalias !53
  %i.j = invoke noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
          to label %bb.d unwind label %.body.i.i.i.i.i.i, !noalias !53

bb.d:                                             ; preds = %.noexc.i.i.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56, !noalias !53
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr @_ZN16OpenColorIO_v2_520applyTetrahedralSSE2EPKfiS1_Pfi, ptr %i.m, align 8, !tbaa !58, !noalias !53
  br label %bb.f

.body.i.i.i.i.i.i:                                ; preds = %bb.p, %bb.m, %bb.k, %bb.h, %bb.f, %.noexc.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #25, !noalias !53
  br label %common.resume.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = invoke noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
          to label %bb.g unwind label %.body.i.i.i.i.i.i, !noalias !53

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56, !noalias !53
  %i.q = and i32 %i.p, 256
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = invoke noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
          to label %bb.i unwind label %.body.i.i.i.i.i.i, !noalias !53

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56, !noalias !53
  %i.t = and i32 %i.s, 512
  %.not3.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not3.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr @_ZN16OpenColorIO_v2_519applyTetrahedralAVXEPKfiS1_Pfi, ptr %i.u, align 8, !tbaa !58, !noalias !53
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.v = invoke noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
          to label %bb.l unwind label %.body.i.i.i.i.i.i, !noalias !53

bb.l:                                             ; preds = %bb.k
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56, !noalias !53
  %i.x = and i32 %i.w, 1024
  %.not4.i.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not4.i.i.i.i.i.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = invoke noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
          to label %bb.n unwind label %.body.i.i.i.i.i.i, !noalias !53

bb.n:                                             ; preds = %bb.m
  %i.z = load i32, ptr %i.y, align 4, !tbaa !56, !noalias !53
  %i.aa = and i32 %i.z, 2048
  %.not5.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr @_ZN16OpenColorIO_v2_520applyTetrahedralAVX2EPKfiS1_Pfi, ptr %i.ab, align 8, !tbaa !58, !noalias !53
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.ac = invoke noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
          to label %bb.q unwind label %.body.i.i.i.i.i.i, !noalias !53

bb.q:                                             ; preds = %bb.p
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56, !noalias !53
  %i.ae = and i32 %i.ad, 4096
  %.not6.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123GetForwardLut3DRendererERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr @_ZN16OpenColorIO_v2_522applyTetrahedralAVX512EPKfiS1_Pfi, ptr %i.af, align 8, !tbaa !58, !noalias !53
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123GetForwardLut3DRendererERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit

bb.s:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

common.resume:                                    ; preds = %bb.z, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.aq, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i ], [ %i.az, %bb.z ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.s, %.body.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ah, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ], [ %i.ag, %bb.s ], [ %i.n, %.body.i.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 56) #26, !noalias !45
  br label %common.resume

bb.t:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !51, !noalias !62
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererC2ERSt10shared_ptrIKNS_11Lut3DOpDataEE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !62

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %bb.t
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererE, i64 16), ptr %i.i, align 8, !tbaa !51, !noalias !62
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123GetForwardLut3DRendererERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit

bb.u:                                             ; preds = %bb.a
  %i.ai = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #24, !noalias !65 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 1, ptr %i.aj, align 8, !tbaa !48, !noalias !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 1, ptr %i.ak, align 4, !tbaa !50, !noalias !65
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ai, align 8, !tbaa !51, !noalias !65
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE, i64 16), ptr %i.al, align 8, !tbaa !51, !noalias !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %i.pg = load i64, ptr %i.b, align 16, !tbaa !117 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pg
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !125 ; 2 uses
  %i.pj = tail call double @llvm.fabs.f64(double %i.pi)
  %i.pk = fcmp olt double %i.pj, 1.000000e-09
  br i1 %i.pk, label %bb.z, label %._crit_edge433.2.i

._crit_edge433.2.i:                               ; preds = %.preheader360.2.i
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.is
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !125
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.ol
  %i.po = load double, ptr %i.pn, align 8, !tbaa !125
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.po, double %.sroa.5467.0.i, double 0.000000e+00)
  %i.pq = tail call double @llvm.fmuladd.f64(double %i.pm, double %.sroa.9.0.i, double %i.pp)
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.pe
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !125
  %i.pt = fsub double %i.ps, %i.pq
  %i.pu = fdiv double %i.pt, %i.pi                ; 3 uses
  %i.pv = fcmp olt double %i.pu, -1.000000e-09
  %i.pw = fadd double %.3.ph.1.i, %i.pu
  %i.px = fcmp ogt double %i.pw, f0x3FF000000044B830
  %or.cond493.i = or i1 %i.pv, %i.px
  br i1 %or.cond493.i, label %.thread336.i, label %.thread347.thread.i

bb.z:                                             ; preds = %.preheader360.2.i
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.pe
  %i.pz = load double, ptr %i.py, align 8, !tbaa !125
  %i.qa = tail call double @llvm.fabs.f64(double %i.pz)
  %i.qb = fcmp ogt double %i.qa, 1.000000e-09
  br i1 %i.qb, label %.thread336.i, label %.thread347.thread.i

.thread347.thread.i:                              ; preds = %bb.z, %._crit_edge433.2.i
  %.sroa.0466.0.i = phi double [ %i.pu, %._crit_edge433.2.i ], [ 0.000000e+00, %bb.z ]
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.pg
  store double %.sroa.0466.0.i, ptr %i.qc, align 8, !tbaa !125
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ol
  store double %.sroa.5467.0.i, ptr %i.qd, align 8, !tbaa !125
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.is
  store double %.sroa.9.0.i, ptr %i.qe, align 8, !tbaa !125
  %i.qf = load double, ptr %i.cd, align 8, !tbaa !125
  %i.qg = fptrunc double %i.qf to float           ; 2 uses
  %.idx = mul i64 %.0290437.i, 24
  %i.qh = getelementptr i8, ptr @__const._ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl.path_list, i64 %.idx ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !117
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qj
  store float %i.qg, ptr %i.qk, align 4, !tbaa !102
  %i.ql = load double, ptr %i.h, align 16, !tbaa !125
  %i.qm = getelementptr i8, ptr %i.qh, i64 8
  %i.qn = fpext float %i.qg to double
  %i.qo = fadd double %i.ql, %i.qn
  %i.qp = fptrunc double %i.qo to float           ; 2 uses
  %i.qq = load i64, ptr %i.qm, align 8, !tbaa !117
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qq
  store float %i.qp, ptr %i.qr, align 4, !tbaa !102
  %i.qs = load double, ptr %i.ce, align 16, !tbaa !125
  %i.qt = fpext float %i.qp to double
  %i.qu = fadd double %i.qs, %i.qt
  %i.qv = fptrunc double %i.qu to float
  %i.qw = load i64, ptr %i.qh, align 8, !tbaa !117
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qw
  store float %i.qv, ptr %i.qx, align 4, !tbaa !102
  %i.qy = load <2 x float>, ptr %i.r, align 8, !tbaa !102
  %.pre209 = load float, ptr %i.bq, align 8, !tbaa !102
  br label %.thread

.thread336.i:                                     ; preds = %bb.z, %._crit_edge433.2.i, %bb.y, %._crit_edge433.1.i, %._crit_edge433.i, %bb.w, %._crit_edge428.i
  %.7.ph.i = phi i64 [ %.0255440.i, %._crit_edge428.i ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %._crit_edge433.2.i ], [ 1, %bb.y ], [ 1, %._crit_edge433.i ], [ 1, %._crit_edge433.1.i ] ; 2 uses
  %i.qz = add nuw nsw i64 %.0290437.i, 1          ; 2 uses
  %exitcond462.not.i = icmp eq i64 %i.qz, 8
  br i1 %exitcond462.not.i, label %.thread347.i, label %bb.i, !llvm.loop !132

.thread347.i:                                     ; preds = %.thread336.i
  %i.ra = icmp eq i64 %.7.ph.i, 0
  br i1 %i.ra, label %.thread, label %select.unfold

.thread:                                          ; preds = %.thread347.i, %.thread347.thread.i
  %i.rb = phi float [ %.pre209, %.thread347.thread.i ], [ %i.di, %.thread347.i ]
  %i.rc = phi <2 x float> [ %i.qy, %.thread347.thread.i ], [ %i.dj, %.thread347.i ]
  %i.rd = uitofp <2 x i64> %i.fd to <2 x float>
  %i.re = fadd <2 x float> %i.rc, %i.rd           ; 2 uses
  store <2 x float> %i.re, ptr %i.r, align 8, !tbaa !102
  %i.rf = uitofp i64 %.16. to float
  %i.rg = fadd float %i.rb, %i.rf                 ; 2 uses
  store float %i.rg, ptr %i.bq, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.aa:                                            ; preds = %bb.h
  %i.rh = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !110
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.dy
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !117
  %i.rl = shl i64 %.1169, 32
  %sext = add i64 %i.rl, 4294967296
  %i.rm = ashr exact i64 %sext, 32                ; 4 uses
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.rm
  store i64 %i.rk, ptr %i.rn, align 8, !tbaa !117
  %i.ro = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !110
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.dy
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !117
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rm
  store i64 %i.rr, ptr %i.rs, align 8, !tbaa !117
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.rm
  store i64 0, ptr %i.rt, align 8, !tbaa !117
  br label %bb.ab

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.ru = add nuw i64 %i.du, 1
  store i64 %i.ru, ptr %i.dv, align 8, !tbaa !117
  %i.rv = add i64 %i.dy, 1
  store i64 %i.rv, ptr %i.dx, align 8, !tbaa !117
  br label %bb.ab

select.unfold:                                    ; preds = %.thread347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ab

bb.ab:                                            ; preds = %select.unfold, %bb.g, %bb.aa, %.critedge
  %.16.203 = phi i64 [ %.16., %select.unfold ], [ %.16.204, %bb.aa ], [ %.16.204, %bb.g ], [ %.16.204, %.critedge ] ; 2 uses
  %.4 = phi i64 [ %i.bo, %select.unfold ], [ %i.rm, %bb.aa ], [ %.1169, %bb.g ], [ %.1169, %.critedge ] ; 4 uses
  %i.rw = phi <2 x i64> [ %i.fd, %select.unfold ], [ %i.dw, %bb.aa ], [ %i.dw, %bb.g ], [ %i.dw, %.critedge ] ; 2 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.4 ; 2 uses
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !117 ; 2 uses
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.4
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !117
  %i.sb = icmp ult i64 %i.ry, %i.sa
  br i1 %i.sb, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %.preheader149, %.thread
  %i.sc = phi float [ %i.rg, %.thread ], [ %i.di, %.preheader149 ], [ %i.di, %bb.ab ] ; 2 uses
  %.16.206 = phi i64 [ %.16., %.thread ], [ %.16.205, %.preheader149 ], [ %.16.203, %bb.ab ]
  %.5 = phi i64 [ 0, %.thread ], [ %.0110171, %.preheader149 ], [ %.4, %bb.ab ] ; 2 uses
  %i.sd = phi <2 x float> [ %i.re, %.thread ], [ %i.dj, %.preheader149 ], [ %i.dj, %bb.ab ] ; 2 uses
  %i.se = phi <2 x i64> [ %i.fd, %.thread ], [ %i.dk, %.preheader149 ], [ %i.rw, %bb.ab ]
  %i.sf = add nsw i64 %.5, -1
  %i.sg = fadd <2 x float> %i.sd, splat (float -1.000000e+00) ; 2 uses
  %i.sh = load float, ptr %i.bp, align 8, !tbaa !68
  %i.si = fcmp ogt <2 x float> %i.sg, zeroinitializer
  %i.sj = select <2 x i1> %i.si, <2 x float> %i.sg, <2 x float> zeroinitializer ; 3 uses
  %i.sk = fcmp ogt <2 x float> %i.sj, %i.cj       ; 2 uses
  %i.sl = extractelement <2 x i1> %i.sk, i64 0
  %i.sm = extractelement <2 x float> %i.sj, i64 0
  %.sroa.speculated.i136 = select i1 %i.sl, float %i.av, float %i.sm
  %i.sn = fmul float %i.sh, %.sroa.speculated.i136
  store float %i.sn, ptr %.0111173, align 4, !tbaa !102
  %i.so = extractelement <2 x i1> %i.sk, i64 1
  %i.sp = extractelement <2 x float> %i.sj, i64 1
  %.sroa.speculated.i138 = select i1 %i.so, float %i.av, float %i.sp
  %i.sq = load float, ptr %i.bp, align 8, !tbaa !68
  %i.sr = fmul float %i.sq, %.sroa.speculated.i138
  store float %i.sr, ptr %i.da, align 4, !tbaa !102
  %i.ss = fadd float %i.sc, -1.000000e+00         ; 2 uses
  %i.st = fcmp ogt float %i.ss, 0.000000e+00
  %.sroa.speculated2.i139 = select i1 %i.st, float %i.ss, float 0.000000e+00 ; 2 uses
  %i.su = fcmp ogt float %.sroa.speculated2.i139, %i.av
  %.sroa.speculated.i140 = select i1 %i.su, float %i.av, float %.sroa.speculated2.i139
  %i.sv = load float, ptr %i.bp, align 8, !tbaa !68
  %i.sw = fmul float %i.sv, %.sroa.speculated.i140
  store float %i.sw, ptr %i.db, align 4, !tbaa !102
  %i.sx = load float, ptr %i.dc, align 4, !tbaa !102
  store float %i.sx, ptr %i.dd, align 4, !tbaa !102
  %i.sy = icmp sgt i64 %.5, 0
  br i1 %i.sy, label %.preheader149, label %bb.ac, !llvm.loop !133

bb.ac:                                            ; preds = %.loopexit
  %i.sz = getelementptr inbounds nuw i8, ptr %.0109174, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %.0111173, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.tb = add nuw nsw i64 %.0112172, 1            ; 2 uses
  %exitcond189.not = icmp eq i64 %i.tb, %3
  br i1 %exitcond189.not, label %._crit_edge176, label %bb.a, !llvm.loop !134
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i64], align 16               ; 12 uses
  %i.b = alloca [4 x float], align 16             ; 10 uses
  %i.c = alloca [4 x float], align 16             ; 10 uses
  %i.d = alloca [16 x i64], align 16              ; 24 uses
  %.sroa.06.i.i20.i.i.i.i = alloca [3 x i64], align 8 ; 4 uses
  %2 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %.sroa.06.i.i9.i.i.i.i = alloca [3 x i64], align 8 ; 4 uses
  %.sroa.06.i.i.i.i.i.i = alloca [3 x i64], align 8 ; 4 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %4 = alloca %"class.OpenColorIO_v2_5::Lut3DOpData::Lut3DArray", align 8 ; 15 uses
  %i.e = alloca [3 x float], align 4              ; 5 uses
  %i.f = alloca [3 x float], align 8              ; 8 uses
  %i.g = alloca [3 x float], align 8              ; 8 uses
  %i.h = alloca [3 x float], align 8              ; 8 uses
  %i.i = alloca [3 x float], align 8              ; 8 uses
  %i.j = alloca [3 x float], align 8              ; 8 uses
  %i.k = alloca [3 x float], align 8              ; 8 uses
  %i.l = alloca [3 x float], align 8              ; 8 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.n), !inline_history !135 ; 28 uses
  %i.s = add i64 %i.r, 2
  %i.t = load ptr, ptr %1, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC1Em(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.s)
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader221.i

.preheader221.i:                                  ; preds = %bb.a, %bb.b
  %.0224.i = phi i64 [ %i.v, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.v = add nuw i64 %.0224.i, 1                  ; 3 uses
  br label %.preheader220.i

.preheader218.lr.ph.i:                            ; preds = %bb.b
  %i.w = add i64 %i.r, 1                          ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.y = add i64 %i.r, -1                         ; 12 uses
  br label %.preheader218.i

.preheader220.i:                                  ; preds = %bb.c, %.preheader221.i
  %.0170223.i = phi i64 [ 0, %.preheader221.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.z = add nuw i64 %.0170223.i, 1               ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %exitcond254.not.i = icmp eq i64 %i.v, %i.r
  br i1 %exitcond254.not.i, label %.preheader218.lr.ph.i, label %.preheader221.i, !llvm.loop !136

bb.c:                                             ; preds = %bb.f
  %exitcond253.not.i = icmp eq i64 %i.z, %i.r
  br i1 %exitcond253.not.i, label %bb.b, label %.preheader220.i, !llvm.loop !137

bb.d:                                             ; preds = %bb.f, %.preheader220.i
  %.0174222.i = phi i64 [ 0, %.preheader220.i ], [ %i.aa, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0224.i, i64 noundef %.0170223.i, i64 noundef %.0174222.i, ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw i64 %.0174222.i, 1              ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.v, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull %i.e)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %exitcond.not.i = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !138

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.ay

.preheader218.i:                                  ; preds = %bb.h, %.preheader218.lr.ph.i
  %.0181227.i = phi i64 [ 0, %.preheader218.lr.ph.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ac = add nuw i64 %.0181227.i, 1              ; 3 uses
  br label %.preheader217.i

.preheader215.lr.ph.i:                            ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %.preheader215.i

.preheader217.i:                                  ; preds = %bb.i, %.preheader218.i
  %.0185226.i = phi i64 [ 0, %.preheader218.i ], [ %i.ae, %bb.i ] ; 2 uses
  %i.ae = add nuw i64 %.0185226.i, 1              ; 3 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.i
  %exitcond256.not.i = icmp eq i64 %i.ac, %i.r
  br i1 %exitcond256.not.i, label %.preheader215.lr.ph.i, label %.preheader218.i, !llvm.loop !139

bb.i:                                             ; preds = %bb.l
  %exitcond255.not.i = icmp eq i64 %i.ae, %i.r
  br i1 %exitcond255.not.i, label %bb.h, label %.preheader217.i, !llvm.loop !140

bb.j:                                             ; preds = %bb.l, %.preheader217.i
  %.0186225.i = phi i64 [ 0, %.preheader217.i ], [ %i.an, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0181227.i, i64 noundef %.0185226.i, i64 noundef %.0186225.i, ptr noundef nonnull %i.f)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = icmp eq i64 %.0186225.i, 0
  %i.ag = select i1 %i.af, i64 0, i64 %i.w
  %i.ah = load <2 x float>, ptr %i.f, align 8, !tbaa !102
  %i.ai = fadd <2 x float> %i.ah, splat (float -5.000000e-01)
  %i.aj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.aj, ptr %i.f, align 8, !tbaa !102
  %i.ak = load float, ptr %i.x, align 8, !tbaa !102
  %i.al = fadd float %i.ak, -5.000000e-01
  %i.am = call float @llvm.fmuladd.f32(float %i.al, float 4.000000e+00, float 5.000000e-01)
  store float %i.am, ptr %i.x, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.ac, i64 noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.f)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.an = add i64 %.0186225.i, %i.y               ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.r
  br i1 %i.ao, label %bb.j, label %bb.i, !llvm.loop !141

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ay

.preheader215.i:                                  ; preds = %bb.n, %.preheader215.lr.ph.i
  %.0190230.i = phi i64 [ 0, %.preheader215.lr.ph.i ], [ %i.aq, %bb.n ] ; 2 uses
  %i.aq = add nuw i64 %.0190230.i, 1              ; 3 uses
  br label %.preheader214.i

.preheader212.lr.ph.i:                            ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br label %.preheader212.i

.preheader214.i:                                  ; preds = %bb.o, %.preheader215.i
  %.0194229.i = phi i64 [ 0, %.preheader215.i ], [ %i.au, %bb.o ] ; 3 uses
  %i.as = icmp eq i64 %.0194229.i, 0
  %i.at = select i1 %i.as, i64 0, i64 %i.w
  br label %bb.p

bb.n:                                             ; preds = %bb.o
  %exitcond258.not.i = icmp eq i64 %i.aq, %i.r
  br i1 %exitcond258.not.i, label %.preheader212.lr.ph.i, label %.preheader215.i, !llvm.loop !142

bb.o:                                             ; preds = %bb.r
  %i.au = add i64 %.0194229.i, %i.y               ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.r
  br i1 %i.av, label %.preheader214.i, label %bb.n, !llvm.loop !143

bb.p:                                             ; preds = %bb.r, %.preheader214.i
  %.0195228.i = phi i64 [ 0, %.preheader214.i ], [ %i.aw, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0190230.i, i64 noundef %.0194229.i, i64 noundef %.0195228.i, ptr noundef nonnull %i.g)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.aw = add nuw i64 %.0195228.i, 1              ; 3 uses
  %i.ax = load <2 x float>, ptr %i.g, align 8, !tbaa !102
  %i.ay = fadd <2 x float> %i.ax, splat (float -5.000000e-01)
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.az, ptr %i.g, align 8, !tbaa !102
  %i.ba = load float, ptr %i.ad, align 8, !tbaa !102
  %i.bb = fadd float %i.ba, -5.000000e-01
  %i.bc = call float @llvm.fmuladd.f32(float %i.bb, float 4.000000e+00, float 5.000000e-01)
  store float %i.bc, ptr %i.ad, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.aq, i64 noundef %i.at, i64 noundef %i.aw, ptr noundef nonnull %i.g)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %exitcond257.not.i = icmp eq i64 %i.aw, %i.r
  br i1 %exitcond257.not.i, label %bb.o, label %bb.p, !llvm.loop !144

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.ay

.preheader212.i:                                  ; preds = %bb.t, %.preheader212.lr.ph.i
  %.0193233.i = phi i64 [ 0, %.preheader212.lr.ph.i ], [ %i.bi, %bb.t ] ; 3 uses
  %i.be = icmp eq i64 %.0193233.i, 0
  %i.bf = select i1 %i.be, i64 0, i64 %i.w
  br label %.preheader211.i

.preheader209.lr.ph.i:                            ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %.preheader209.i

.preheader211.i:                                  ; preds = %bb.u, %.preheader212.i
  %.0192232.i = phi i64 [ 0, %.preheader212.i ], [ %i.bh, %bb.u ] ; 2 uses
  %i.bh = add nuw i64 %.0192232.i, 1              ; 3 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.u
  %i.bi = add i64 %.0193233.i, %i.y               ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.r
  br i1 %i.bj, label %.preheader212.i, label %.preheader209.lr.ph.i, !llvm.loop !145

bb.u:                                             ; preds = %bb.x
  %exitcond260.not.i = icmp eq i64 %i.bh, %i.r
  br i1 %exitcond260.not.i, label %bb.t, label %.preheader211.i, !llvm.loop !146

bb.v:                                             ; preds = %bb.x, %.preheader211.i
  %.0191231.i = phi i64 [ 0, %.preheader211.i ], [ %i.bk, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0193233.i, i64 noundef %.0192232.i, i64 noundef %.0191231.i, ptr noundef nonnull %i.h)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bk = add nuw i64 %.0191231.i, 1              ; 3 uses
  %i.bl = load <2 x float>, ptr %i.h, align 8, !tbaa !102
  %i.bm = fadd <2 x float> %i.bl, splat (float -5.000000e-01)
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.bn, ptr %i.h, align 8, !tbaa !102
  %i.bo = load float, ptr %i.ar, align 8, !tbaa !102
  %i.bp = fadd float %i.bo, -5.000000e-01
  %i.bq = call float @llvm.fmuladd.f32(float %i.bp, float 4.000000e+00, float 5.000000e-01)
  store float %i.bq, ptr %i.ar, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.bf, i64 noundef %i.bh, i64 noundef %i.bk, ptr noundef nonnull %i.h)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %exitcond259.not.i = icmp eq i64 %i.bk, %i.r
  br i1 %exitcond259.not.i, label %bb.u, label %bb.v, !llvm.loop !147

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %bb.ay

.preheader209.i:                                  ; preds = %bb.z, %.preheader209.lr.ph.i
  %.0189236.i = phi i64 [ 0, %.preheader209.lr.ph.i ], [ %i.bx, %bb.z ] ; 3 uses
  %i.bs = icmp eq i64 %.0189236.i, 0
  %i.bt = select i1 %i.bs, i64 0, i64 %i.w
  br label %.preheader208.i

.preheader206.lr.ph.i:                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %.preheader206.i

.preheader208.i:                                  ; preds = %bb.aa, %.preheader209.i
  %.0188235.i = phi i64 [ 0, %.preheader209.i ], [ %i.bz, %bb.aa ] ; 3 uses
  %i.bv = icmp eq i64 %.0188235.i, 0
  %i.bw = select i1 %i.bv, i64 0, i64 %i.w
  br label %bb.ab

bb.z:                                             ; preds = %bb.aa
  %i.bx = add i64 %.0189236.i, %i.y               ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.r
  br i1 %i.by, label %.preheader209.i, label %.preheader206.lr.ph.i, !llvm.loop !148

bb.aa:                                            ; preds = %bb.ad
  %i.bz = add i64 %.0188235.i, %i.y               ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.r
  br i1 %i.ca, label %.preheader208.i, label %bb.z, !llvm.loop !149

bb.ab:                                            ; preds = %bb.ad, %.preheader208.i
  %.0187234.i = phi i64 [ 0, %.preheader208.i ], [ %i.cb, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0189236.i, i64 noundef %.0188235.i, i64 noundef %.0187234.i, ptr noundef nonnull %i.i)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cb = add nuw i64 %.0187234.i, 1              ; 3 uses
  %i.cc = load <2 x float>, ptr %i.i, align 8, !tbaa !102
  %i.cd = fadd <2 x float> %i.cc, splat (float -5.000000e-01)
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.ce, ptr %i.i, align 8, !tbaa !102
  %i.cf = load float, ptr %i.bg, align 8, !tbaa !102
  %i.cg = fadd float %i.cf, -5.000000e-01
  %i.ch = call float @llvm.fmuladd.f32(float %i.cg, float 4.000000e+00, float 5.000000e-01)
  store float %i.ch, ptr %i.bg, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.bt, i64 noundef %i.bw, i64 noundef %i.cb, ptr noundef nonnull %i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  %exitcond261.not.i = icmp eq i64 %i.cb, %i.r
  br i1 %exitcond261.not.i, label %bb.aa, label %bb.ab, !llvm.loop !150

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %bb.ay

.preheader206.i:                                  ; preds = %bb.af, %.preheader206.lr.ph.i
  %.0184239.i = phi i64 [ 0, %.preheader206.lr.ph.i ], [ %i.cj, %bb.af ] ; 2 uses
  %i.cj = add nuw i64 %.0184239.i, 1              ; 3 uses
  br label %.preheader205.i

.preheader203.lr.ph.i:                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br label %.preheader203.i

.preheader205.i:                                  ; preds = %bb.ag, %.preheader206.i
  %.0183238.i = phi i64 [ 0, %.preheader206.i ], [ %i.cn, %bb.ag ] ; 3 uses
  %i.cl = icmp eq i64 %.0183238.i, 0
  %i.cm = select i1 %i.cl, i64 0, i64 %i.w
  br label %bb.ah

bb.af:                                            ; preds = %bb.ag
  %exitcond262.not.i = icmp eq i64 %i.cj, %i.r
  br i1 %exitcond262.not.i, label %.preheader203.lr.ph.i, label %.preheader206.i, !llvm.loop !151

bb.ag:                                            ; preds = %bb.aj
  %i.cn = add i64 %.0183238.i, %i.y               ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.r
  br i1 %i.co, label %.preheader205.i, label %bb.af, !llvm.loop !152

bb.ah:                                            ; preds = %bb.aj, %.preheader205.i
  %.0182237.i = phi i64 [ 0, %.preheader205.i ], [ %i.cx, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0184239.i, i64 noundef %.0183238.i, i64 noundef %.0182237.i, ptr noundef nonnull %i.j)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cp = icmp eq i64 %.0182237.i, 0
  %i.cq = select i1 %i.cp, i64 0, i64 %i.w
  %i.cr = load <2 x float>, ptr %i.j, align 8, !tbaa !102
  %i.cs = fadd <2 x float> %i.cr, splat (float -5.000000e-01)
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.ct, ptr %i.j, align 8, !tbaa !102
  %i.cu = load float, ptr %i.bu, align 8, !tbaa !102
  %i.cv = fadd float %i.cu, -5.000000e-01
  %i.cw = call float @llvm.fmuladd.f32(float %i.cv, float 4.000000e+00, float 5.000000e-01)
  store float %i.cw, ptr %i.bu, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.cj, i64 noundef %i.cm, i64 noundef %i.cq, ptr noundef nonnull %i.j)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  %i.cx = add i64 %.0182237.i, %i.y               ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.r
  br i1 %i.cy, label %bb.ah, label %bb.ag, !llvm.loop !153

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  br label %bb.ay

.preheader203.i:                                  ; preds = %bb.al, %.preheader203.lr.ph.i
  %.0178242.i = phi i64 [ 0, %.preheader203.lr.ph.i ], [ %i.de, %bb.al ] ; 3 uses
  %i.da = icmp eq i64 %.0178242.i, 0
  %i.db = select i1 %i.da, i64 0, i64 %i.w
  br label %.preheader202.i

.preheader200.lr.ph.i:                            ; preds = %bb.al
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %.preheader200.i

.preheader202.i:                                  ; preds = %bb.am, %.preheader203.i
  %.0177241.i = phi i64 [ 0, %.preheader203.i ], [ %i.dd, %bb.am ] ; 2 uses
  %i.dd = add nuw i64 %.0177241.i, 1              ; 3 uses
  br label %bb.an

bb.al:                                            ; preds = %bb.am
  %i.de = add i64 %.0178242.i, %i.y               ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.r
  br i1 %i.df, label %.preheader203.i, label %.preheader200.lr.ph.i, !llvm.loop !154

bb.am:                                            ; preds = %bb.ap
  %exitcond263.not.i = icmp eq i64 %i.dd, %i.r
  br i1 %exitcond263.not.i, label %bb.al, label %.preheader202.i, !llvm.loop !155

bb.an:                                            ; preds = %bb.ap, %.preheader202.i
  %.0176240.i = phi i64 [ 0, %.preheader202.i ], [ %i.do, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0178242.i, i64 noundef %.0177241.i, i64 noundef %.0176240.i, ptr noundef nonnull %i.k)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dg = icmp eq i64 %.0176240.i, 0
  %i.dh = select i1 %i.dg, i64 0, i64 %i.w
  %i.di = load <2 x float>, ptr %i.k, align 8, !tbaa !102
  %i.dj = fadd <2 x float> %i.di, splat (float -5.000000e-01)
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.dk, ptr %i.k, align 8, !tbaa !102
  %i.dl = load float, ptr %i.ck, align 8, !tbaa !102
  %i.dm = fadd float %i.dl, -5.000000e-01
  %i.dn = call float @llvm.fmuladd.f32(float %i.dm, float 4.000000e+00, float 5.000000e-01)
  store float %i.dn, ptr %i.ck, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.db, i64 noundef %i.dd, i64 noundef %i.dh, ptr noundef nonnull %i.k)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  %i.do = add i64 %.0176240.i, %i.y               ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.r
  br i1 %i.dp, label %bb.an, label %bb.am, !llvm.loop !156

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  br label %bb.ay

.preheader200.i:                                  ; preds = %bb.ar, %.preheader200.lr.ph.i
  %.0173245.i = phi i64 [ 0, %.preheader200.lr.ph.i ], [ %i.dy, %bb.ar ] ; 3 uses
  %i.dr = icmp eq i64 %.0173245.i, 0
  %i.ds = select i1 %i.dr, i64 0, i64 %i.w
  br label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.ar, %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer18extrapolate3DArrayERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit unwind label %bb.ax ; 0 uses

.preheader.i:                                     ; preds = %bb.as, %.preheader200.i
  %.0172244.i = phi i64 [ 0, %.preheader200.i ], [ %i.ea, %bb.as ] ; 3 uses
  %i.dw = icmp eq i64 %.0172244.i, 0
  %i.dx = select i1 %i.dw, i64 0, i64 %i.w
  br label %bb.at

bb.ar:                                            ; preds = %bb.as
  %i.dy = add i64 %.0173245.i, %i.y               ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.r
  br i1 %i.dz, label %.preheader200.i, label %._crit_edge.i, !llvm.loop !157

bb.as:                                            ; preds = %bb.av
  %i.ea = add i64 %.0172244.i, %i.y               ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.r
  br i1 %i.eb, label %.preheader.i, label %bb.ar, !llvm.loop !158

bb.at:                                            ; preds = %bb.av, %.preheader.i
  %.0171243.i = phi i64 [ 0, %.preheader.i ], [ %i.ek, %bb.av ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0173245.i, i64 noundef %.0172244.i, i64 noundef %.0171243.i, ptr noundef nonnull %i.l)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ec = icmp eq i64 %.0171243.i, 0
  %i.ed = select i1 %i.ec, i64 0, i64 %i.w
  %i.ee = load <2 x float>, ptr %i.l, align 8, !tbaa !102
  %i.ef = fadd <2 x float> %i.ee, splat (float -5.000000e-01)
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.eg, ptr %i.l, align 8, !tbaa !102
  %i.eh = load float, ptr %i.dc, align 8, !tbaa !102
  %i.ei = fadd float %i.eh, -5.000000e-01
  %i.ej = call float @llvm.fmuladd.f32(float %i.ei, float 4.000000e+00, float 5.000000e-01)
  store float %i.ej, ptr %i.dc, align 8, !tbaa !102
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.ds, i64 noundef %i.dx, i64 noundef %i.ed, ptr noundef nonnull %i.l)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  %i.ek = add i64 %.0171243.i, %i.y               ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.r
  br i1 %i.el, label %bb.at, label %bb.as, !llvm.loop !159

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

common.resume:                                    ; preds = %.body.i, %bb.ea, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %.pn198.i, %bb.ay ], [ %.pn.pn.i, %bb.ea ], [ %.pn.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.aq, %bb.ak, %bb.ae, %bb.y, %bb.s, %bb.m, %bb.g
  %.pn198.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.ap, %bb.m ], [ %i.bd, %bb.s ], [ %i.br, %bb.y ], [ %i.ci, %bb.ae ], [ %i.cz, %bb.ak ], [ %i.dq, %bb.aq ], [ %i.em, %bb.aw ], [ %i.en, %bb.ax ]
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer18extrapolate3DArrayERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit: ; preds = %._crit_edge.i
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.eo = load ptr, ptr %1, align 8, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 176 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !51
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = call noundef i64 %i.es(ptr noundef nonnull align 8 dereferenceable(48) %i.ep)
  %i.eu = add i64 %i.et, 2                        ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !86
  %i.ew = load ptr, ptr %i.du, align 8, !tbaa !87 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  store i64 3, ptr %i.ex, align 8, !tbaa !118
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 %i.eu, ptr %i.ez, align 8, !tbaa !117
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 %i.eu, ptr %i.fa, align 8, !tbaa !117
  store i64 %i.eu, ptr %i.ey, align 8, !tbaa !117
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.fb, align 8, !tbaa !117
  %i.fc = uitofp i64 %i.eu to float
  %.sink120.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sink120.i.sroa.gep129.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sink117.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sink117.i.sroa.gep130.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fd = fadd float %i.fc, -2.000000e+00
  %i.fe = call { float, i32 } @llvm.frexp.f32.i32(float %i.fd)
  %i.ff = extractvalue { float, i32 } %i.fe, 1    ; 2 uses
  %i.fg = sext i32 %i.ff to i64                   ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !119
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  %.val7.i.i = load ptr, ptr %i.fi, align 8, !tbaa !112 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.val8.i.i = load ptr, ptr %i.fj, align 8, !tbaa !113 ; 7 uses
  %i.fk = ptrtoint ptr %.val8.i.i to i64          ; 2 uses
  %i.fl = ptrtoint ptr %.val7.i.i to i64          ; 2 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 2 uses
  %i.fn = sdiv exact i64 %i.fm, 112               ; 7 uses
  %i.fo = icmp ult i64 %i.fn, %i.fg
  br i1 %i.fo, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer18extrapolate3DArrayERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit
  %i.fp = sub nuw nsw i64 %i.fg, %i.fn            ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !115
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %i.fs, %i.fk
  %i.fu = sdiv exact i64 %i.ft, 112               ; 2 uses
  %i.fv = icmp ult i64 %i.fn, 82351536043346213
  call void @llvm.assume(i1 %i.fv)
  %i.fw = sub nuw nsw i64 82351536043346212, %i.fn
  %i.fx = icmp ule i64 %i.fu, %i.fw
  call void @llvm.assume(i1 %i.fx)
  %.not28.i.i.i = icmp ult i64 %i.fu, %i.fp
  br i1 %.not28.i.i.i, label %bb.ba, label %_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEmS3_ET_S5_T0_RSaIT1_E.exit.i.i.i

_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEmS3_ET_S5_T0_RSaIT1_E.exit.i.i.i: ; preds = %bb.az
  %i.fy = mul nuw nsw i64 %i.fp, 112              ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.val8.i.i, i8 0, i64 %i.fy, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val8.i.i, i64 %i.fy
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.fj, align 8, !tbaa !113
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.fz = icmp slt i32 %i.ff, 0
  br i1 %i.fz, label %bb.bb, label %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ba
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fn, i64 range(i64 -82351538190829860, 82351538190829860) %i.fp)
  %i.ga = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.fn
  %i.gb = call i64 @llvm.umin.i64(i64 %i.ga, i64 82351536043346212) ; 2 uses
  %i.gc = mul nuw nsw i64 %i.gb, 112
  %i.gd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #24 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fm ; 2 uses
  %i.gf = mul nuw nsw i64 %i.fp, 112
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ge, i8 0, i64 %i.gf, i1 false)
  %.not1.i.i.i.i.i.i = icmp eq ptr %.val7.i.i, %.val8.i.i
  br i1 %.not1.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i ], [ %i.gd, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 10 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i ], [ %.val7.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.092.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !165
  %i.gg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gi = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !166, !alias.scope !163, !noalias !160
  store <2 x ptr> %i.gi, ptr %i.gg, align 8, !tbaa !166, !alias.scope !160, !noalias !163
  %i.gj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !88, !alias.scope !163, !noalias !160
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !88, !alias.scope !160, !noalias !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false), !alias.scope !163, !noalias !160
  %i.gm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 40
  %i.gn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.go = load <2 x ptr>, ptr %i.gn, align 8, !tbaa !166, !alias.scope !163, !noalias !160
  store <2 x ptr> %i.go, ptr %i.gm, align 8, !tbaa !166, !alias.scope !160, !noalias !163
  %i.gp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 56
  %i.gq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !88, !alias.scope !163, !noalias !160
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !88, !alias.scope !160, !noalias !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, i8 0, i64 24, i1 false), !alias.scope !163, !noalias !160
  %i.gs = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.gu = load <2 x ptr>, ptr %i.gt, align 8, !tbaa !167, !alias.scope !163, !noalias !160
  store <2 x ptr> %i.gu, ptr %i.gs, align 8, !tbaa !167, !alias.scope !160, !noalias !163
  %i.gv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 80
  %i.gw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 80
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !111, !alias.scope !163, !noalias !160
  store ptr %i.gx, ptr %i.gv, align 8, !tbaa !111, !alias.scope !160, !noalias !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, i8 0, i64 24, i1 false), !alias.scope !163, !noalias !160
  %i.gy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 88
  %i.gz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 88 ; 2 uses
  %i.ha = load <2 x ptr>, ptr %i.gz, align 8, !tbaa !167, !alias.scope !163, !noalias !160
  store <2 x ptr> %i.ha, ptr %i.gy, align 8, !tbaa !167, !alias.scope !160, !noalias !163
  %i.hb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 104
  %i.hc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 104
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !111, !alias.scope !163, !noalias !160
  store ptr %i.hd, ptr %i.hb, align 8, !tbaa !111, !alias.scope !160, !noalias !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, i8 0, i64 24, i1 false), !alias.scope !163, !noalias !160
  %i.he = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 112 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 112
  %.not.i.i.i.i.i.i = icmp eq ptr %i.he, %.val8.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !168

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i39.i.i.i = icmp eq ptr %.val7.i.i, null
  br i1 %.not.i39.i.i.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE13_M_deallocateEPS3_m.exit40.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i
  %i.hg = load ptr, ptr %i.fq, align 8, !tbaa !115
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.val7.i.i, i64 noundef %i.hi) #26
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE13_M_deallocateEPS3_m.exit40.i.i.i

_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE13_M_deallocateEPS3_m.exit40.i.i.i: ; preds = %bb.bc, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i.i
  store ptr %i.gd, ptr %i.fi, align 8, !tbaa !112
  %i.hj = getelementptr inbounds nuw [112 x i8], ptr %i.ge, i64 %i.fp
  store ptr %i.hj, ptr %i.fj, align 8, !tbaa !113
  %i.hk = getelementptr inbounds nuw [112 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.hk, ptr %i.fq, align 8, !tbaa !115
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i

bb.bd:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer18extrapolate3DArrayERSt10shared_ptrIKNS_11Lut3DOpDataEE.exit
  %i.hl = icmp ugt i64 %i.fn, %i.fg
  br i1 %i.hl, label %bb.be, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.hm = getelementptr inbounds nuw [112 x i8], ptr %.val7.i.i, i64 %i.fg ; 3 uses
  %.not.i9.i.i = icmp eq ptr %.val8.i.i, %i.hm
  br i1 %.not.i9.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.be, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ip, %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelEEvPT_.exit.i.i.i.i.i ], [ %i.hm, %bb.be ] ; 9 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 88
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 104
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !111
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ht) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.bf, %.lr.ph.i.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 80
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !111
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i:     ; preds = %bb.bg, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !88
  %i.if = ptrtoint ptr %i.ie to i64
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE:bb.a
  store i64 %i.lq, ptr %i.lt, align 8, !tbaa !117
  %i.lu = or disjoint i64 %.048.us.i.i, 2
  %i.lv = getelementptr [32 x i8], ptr %.val40.i.i, i64 %.147.us.i.i ; 2 uses
  %i.lw = getelementptr i8, ptr %i.lv, i64 64
  store i64 %.03250.us.i.i, ptr %i.lw, align 8, !tbaa !117
  %i.lx = getelementptr i8, ptr %i.lv, i64 72
  store i64 %i.lu, ptr %i.lx, align 8, !tbaa !117
  %i.ly = or disjoint i64 %.048.us.i.i, 3
  %i.lz = getelementptr [32 x i8], ptr %.val40.i.i, i64 %.147.us.i.i ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 96
  store i64 %.03250.us.i.i, ptr %i.ma, align 8, !tbaa !117
  %i.mb = getelementptr i8, ptr %i.lz, i64 104
  store i64 %i.ly, ptr %i.mb, align 8, !tbaa !117
  %i.mc = add i64 %.147.us.i.i, 4                 ; 3 uses
  %i.md = add nuw i64 %.048.us.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader45.us.i.i.new, !llvm.loop !178

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader45.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader45.us.i.i
  %.048.us.i.i.epil.init = phi i64 [ 0, %.preheader45.us.i.i ], [ %i.md, %._crit_edge.us.i.i.unr-lcssa ]
  %.147.us.i.i.epil.init = phi i64 [ %.03349.us.i.i, %.preheader45.us.i.i ], [ %i.mc, %._crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod332)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.epil.preheader
  %.048.us.i.i.epil = phi i64 [ %.048.us.i.i.epil.init, %.epil.preheader ], [ %i.mh, %bb.bo ] ; 2 uses
  %.147.us.i.i.epil = phi i64 [ %.147.us.i.i.epil.init, %.epil.preheader ], [ %i.mg, %bb.bo ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bo ]
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %.val40.i.i, i64 %.147.us.i.i.epil ; 2 uses
  store i64 %.03250.us.i.i, ptr %i.me, align 8, !tbaa !117
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i64 %.048.us.i.i.epil, ptr %i.mf, align 8, !tbaa !117
  %i.mg = add i64 %.147.us.i.i.epil, 1            ; 2 uses
  %i.mh = add nuw i64 %.048.us.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %bb.bo, !llvm.loop !179

._crit_edge.us.i.i:                               ; preds = %bb.bo, %._crit_edge.us.i.i.unr-lcssa
  %.lcssa327 = phi i64 [ %i.mc, %._crit_edge.us.i.i.unr-lcssa ], [ %i.mg, %bb.bo ]
  %i.mi = add nuw i64 %.03250.us.i.i, 1           ; 2 uses
  %exitcond75.not.i.i = icmp eq i64 %i.mi, %i.lh
  br i1 %exitcond75.not.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i, label %.preheader45.us.i.i, !llvm.loop !181

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i: ; preds = %._crit_edge.us.i.i, %._crit_edge55.split.us.us.us.i.i, %.preheader45.lr.ph.i.i, %bb.bn, %bb.bm, %._crit_edge159.i
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.val72.i = load ptr, ptr %i.mj, align 8, !tbaa !182 ; 27 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val73.i = load ptr, ptr %i.mk, align 8, !tbaa !183 ; 7 uses
  %i.ml = ptrtoint ptr %.val73.i to i64
  %i.mm = ptrtoint ptr %.val72.i to i64           ; 2 uses
  %i.mn = sub i64 %i.ml, %i.mm                    ; 3 uses
  %i.mo = ashr exact i64 %i.mn, 5                 ; 11 uses
  %.not181.i = icmp eq ptr %.val73.i, %.val72.i
  %.pre35 = load i64, ptr %i.fh, align 8, !tbaa !119 ; 9 uses
  %.pre37 = load i64, ptr %i.ex, align 8, !tbaa !118 ; 6 uses
  br i1 %.not181.i, label %._crit_edge165.i, label %.lr.ph161.i

.lr.ph161.i:                                      ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i
  %.not.i83.i = icmp eq i64 %.pre35, 0
  %.not29.i.i = icmp eq i64 %.pre37, 0
  %i.mp = shl nuw i64 %.pre35, 3
  %i.mq = load ptr, ptr %i.jh, align 8            ; 2 uses
  br i1 %.not.i83.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader, label %.lr.ph26.i.i.preheader

.lr.ph26.i.i.preheader:                           ; preds = %.lr.ph161.i
  %min.iters.check195 = icmp ult i64 %.pre37, 4
  %n.vec198 = and i64 %.pre37, -4                 ; 3 uses
  %cmp.n212 = icmp eq i64 %.pre37, %n.vec198
  %min.iters.check176 = icmp ult i64 %.pre35, 4
  %n.vec179 = and i64 %.pre35, -4                 ; 3 uses
  %cmp.n191 = icmp eq i64 %.pre35, %n.vec179
  br label %.lr.ph26.i.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader: ; preds = %.lr.ph161.i
  %xtraiter341 = and i64 %i.mo, 7                 ; 3 uses
  %i.mr = icmp ult i64 %i.mo, 8
  br i1 %i.mr, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader
  %unroll_iter345 = and i64 %i.mo, -8
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new
  %.059160.us.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new ], [ %i.ni, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i ] ; 9 uses
  %niter346 = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new ], [ %niter346.next.7, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  store i64 0, ptr %i.mt, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  store i64 0, ptr %i.mv, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 88
  store i64 0, ptr %i.mx, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.my = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 120
  store i64 0, ptr %i.mz, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.na = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 152
  store i64 0, ptr %i.nb, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.nc = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 184
  store i64 0, ptr %i.nd, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ne = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 216
  store i64 0, ptr %i.nf, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ng = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 248
  store i64 0, ptr %i.nh, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ni = add nuw i64 %.059160.us.i, 8            ; 2 uses
  %niter346.next.7 = add i64 %niter346, 8         ; 2 uses
  %niter346.ncmp.7 = icmp eq i64 %niter346.next.7, %unroll_iter345
  br i1 %niter346.ncmp.7, label %._crit_edge162.thread291.i.loopexit.unr-lcssa, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i, !llvm.loop !186

bb.bp:                                            ; preds = %bb.bp, %.lr.ph158.i
  %i.nj = phi i64 [ %i.jt, %.lr.ph158.i ], [ %i.nu, %bb.bp ]
  %.061157.i = phi i64 [ 0, %.lr.ph158.i ], [ %i.nt, %bb.bp ] ; 3 uses
  %i.nk = load i64, ptr %i.ex, align 8, !tbaa !118
  %i.nl = add i64 %i.nk, 1
  %i.nm = xor i64 %.061157.i, -1
  %i.nn = add i64 %i.nj, %i.nm
  %i.no = mul i64 %i.nl, %i.nn
  %i.np = trunc i64 %i.no to i32
  %i.nq = shl nuw i32 1, %i.np
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.061157.i
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !117
  %i.nt = add nuw i64 %.061157.i, 1               ; 2 uses
  %i.nu = load i64, ptr %i.fh, align 8, !tbaa !119 ; 2 uses
  %i.nv = icmp ult i64 %i.nt, %i.nu
  br i1 %i.nv, label %bb.bp, label %._crit_edge159.i, !llvm.loop !187

._crit_edge162.thread291.i.loopexit.unr-lcssa:    ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i
  %lcmp.mod343.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod343.not, label %._crit_edge162.thread291.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader: ; preds = %._crit_edge162.thread291.i.loopexit.unr-lcssa, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader
  %.059160.us.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader ], [ %i.ni, %._crit_edge162.thread291.i.loopexit.unr-lcssa ]
  %lcmp.mod344 = icmp ne i64 %xtraiter341, 0
  call void @llvm.assume(i1 %lcmp.mod344)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader
  %.059160.us.i.epil = phi i64 [ %i.ny, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil ], [ %.059160.us.i.epil.init, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader ] ; 2 uses
  %epil.iter342 = phi i64 [ %epil.iter342.next, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.nw = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.us.i.epil
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  store i64 0, ptr %i.nx, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ny = add nuw i64 %.059160.us.i.epil, 1
  %epil.iter342.next = add i64 %epil.iter342, 1   ; 2 uses
  %epil.iter342.cmp.not = icmp eq i64 %epil.iter342.next, %xtraiter341
  br i1 %epil.iter342.cmp.not, label %._crit_edge162.thread291.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil, !llvm.loop !188

._crit_edge162.thread291.i:                       ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i, %._crit_edge162.thread291.i.loopexit.unr-lcssa, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil
  %i.nz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mo, i1 true)
  %i.oa = shl nuw nsw i64 %i.nz, 1
  %i.ob = xor i64 %i.oa, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.val72.i, ptr %.val73.i, i64 noundef %i.ob)
  %i.oc = icmp sgt i64 %i.mn, 512
  br i1 %i.oc, label %.lr.ph.i.i.i.i78.i, label %.preheader.i21.i.i.i.i

.lr.ph.i.i.i.i78.i:                               ; preds = %._crit_edge162.thread291.i
  %i.od = getelementptr i8, ptr %.val72.i, i64 24
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val72.i, i64 32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bv, %.lr.ph.i.i.i.i78.i
  %.sroa.0.019.i.idx.i.i.i.i = phi i64 [ 32, %.lr.ph.i.i.i.i78.i ], [ %.sroa.0.019.i.add.i.i.i.i, %bb.bv ] ; 4 uses
  %.pn18.i.i.i.i.i = phi ptr [ %.val72.i, %.lr.ph.i.i.i.i78.i ], [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.bv ] ; 3 uses
  %.sroa.0.019.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val72.i, i64 %.sroa.0.019.i.idx.i.i.i.i ; 5 uses
  %i.oe = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 56
  %.val2.i.i.i.i.i.i = load i64, ptr %i.oe, align 8, !tbaa !184 ; 4 uses
  %.val3.i.i.i.i.i.i = load i64, ptr %i.od, align 8, !tbaa !184
  %i.of = icmp ult i64 %.val2.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.of, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i.ptr.i.i.i.i, i64 32, i1 false), !tbaa.struct !189
  %i.og = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i, 32
  br i1 %i.og, label %bb.bs, label %bb.bt, !prof !190

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val72.i, i64 %.sroa.0.019.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.oh = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oh, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val72.i, i64 32, i1 false), !tbaa.struct !189
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.val72.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr.i.i.i.i, i64 24, i1 false), !tbaa.struct !189
  %i.oi = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 24
  %.val2.i9.i.i.i.i.i.i = load i64, ptr %i.oi, align 8, !tbaa !184
  %i.oj = icmp ult i64 %.val2.i.i.i.i.i.i, %.val2.i9.i.i.i.i.i.i
  br i1 %i.oj, label %.lr.ph.i.i.i.i.i80.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i80.i:                             ; preds = %bb.bu, %.lr.ph.i.i.i.i.i80.i
  %.sroa.08.010.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i80.i ], [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.bu ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !189
  %i.ok = getelementptr i8, ptr %.sroa.08.010.i.i.i.i.i.i, i64 -40
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ok, align 8, !tbaa !184
  %i.ol = icmp ult i64 %.val2.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.ol, label %.lr.ph.i.i.i.i.i80.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i, !llvm.loop !191

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i80.i, %bb.bu
  %.sroa.08.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.bu ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i80.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !189
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i, i64 24
  store i64 %.val2.i.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i.i, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i.i.i.i)
  br label %bb.bv

bb.bv:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i
  %.sroa.0.019.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i79.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i, 512
  br i1 %.not.i.i.i.i79.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i, label %bb.bq, !llvm.loop !192

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i: ; preds = %bb.bv
  %i.om = getelementptr inbounds nuw i8, ptr %.val72.i, i64 512 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.om, %.val73.i
  br i1 %.not4.i.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %.lr.ph.i10.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.or, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i ], [ %i.om, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i9.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i9.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !189
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i.i, align 8, !tbaa !117 ; 3 uses
  %i.on = getelementptr i8, ptr %.sroa.0.05.i.i.i.i.i, i64 -8
  %.val2.i9.i.i11.i.i.i.i = load i64, ptr %i.on, align 8, !tbaa !184
  %i.oo = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i9.i.i11.i.i.i.i
  br i1 %i.oo, label %.lr.ph.i.i16.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i

.lr.ph.i.i16.i.i.i.i:                             ; preds = %.lr.ph.i10.i.i.i.i, %.lr.ph.i.i16.i.i.i.i
  %.sroa.08.010.i.i17.i.i.i.i = phi ptr [ %.sroa.0.0.i.i18.i.i.i.i, %.lr.ph.i.i16.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i, %.lr.ph.i10.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i18.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i17.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i17.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i18.i.i.i.i, i64 32, i1 false), !tbaa.struct !189
  %i.op = getelementptr i8, ptr %.sroa.08.010.i.i17.i.i.i.i, i64 -40
  %.val2.i.i.i19.i.i.i.i = load i64, ptr %i.op, align 8, !tbaa !184
  %i.oq = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i19.i.i.i.i
  br i1 %i.oq, label %.lr.ph.i.i16.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i, !llvm.loop !191

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i: ; preds = %.lr.ph.i.i16.i.i.i.i, %.lr.ph.i10.i.i.i.i
  %.sroa.08.0.lcssa.i.i13.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i.i, %.lr.ph.i10.i.i.i.i ], [ %.sroa.0.0.i.i18.i.i.i.i, %.lr.ph.i.i16.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.lcssa.i.i13.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i9.i.i.i.i, i64 24, i1 false), !tbaa.struct !189
  %.sroa.4.0..val.sroa_idx.i.i14.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i13.i.i.i.i, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i14.i.i.i.i, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i9.i.i.i.i)
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i15.i.i.i.i = icmp eq ptr %i.or, %.val73.i
  br i1 %.not.i15.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %.lr.ph.i10.i.i.i.i, !llvm.loop !193

.preheader.i21.i.i.i.i:                           ; preds = %._crit_edge162.thread291.i
  %.sroa.0.016.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val72.i, i64 32 ; 2 uses
  %.not17.i23.i.i.i.i = icmp eq ptr %.sroa.0.016.i22.i.i.i.i, %.val73.i
  br i1 %.not17.i23.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %.lr.ph.i24.i.i.i.i

.lr.ph.i24.i.i.i.i:                               ; preds = %.preheader.i21.i.i.i.i
  %i.os = getelementptr i8, ptr %.val72.i, i64 24
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cc, %.lr.ph.i24.i.i.i.i
  %.sroa.0.019.i25.i.i.i.i = phi ptr [ %.sroa.0.016.i22.i.i.i.i, %.lr.ph.i24.i.i.i.i ], [ %.sroa.0.0.i33.i.i.i.i, %bb.cc ] ; 7 uses
  %.pn18.i26.i.i.i.i = phi ptr [ %.val72.i, %.lr.ph.i24.i.i.i.i ], [ %.sroa.0.019.i25.i.i.i.i, %bb.cc ] ; 4 uses
  %i.ot = getelementptr i8, ptr %.pn18.i26.i.i.i.i, i64 56
  %.val2.i.i27.i.i.i.i = load i64, ptr %i.ot, align 8, !tbaa !184 ; 4 uses
  %.val3.i.i28.i.i.i.i = load i64, ptr %i.os, align 8, !tbaa !184
  %i.ou = icmp ult i64 %.val2.i.i27.i.i.i.i, %.val3.i.i28.i.i.i.i
  br i1 %i.ou, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i25.i.i.i.i, i64 32, i1 false), !tbaa.struct !189
  %i.ov = ptrtoint ptr %.sroa.0.019.i25.i.i.i.i to i64
  %i.ow = sub i64 %i.ov, %i.mm                    ; 3 uses
  %i.ox = ashr exact i64 %i.ow, 5                 ; 2 uses
  %i.oy = icmp sgt i64 %i.ox, 1
  br i1 %i.oy, label %bb.by, label %bb.bz, !prof !190

bb.by:                                            ; preds = %bb.bx
  %i.oz = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i, i64 64
  %i.pa = sub nsw i64 0, %i.ox
  %i.pb = getelementptr inbounds [32 x i8], ptr %i.oz, i64 %i.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pb, ptr noundef nonnull align 8 dereferenceable(1) %.val72.i, i64 %i.ow, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.pc = icmp eq i64 %i.ow, 32
  br i1 %i.pc, label %bb.ca, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.pd = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pd, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val72.i, i64 32, i1 false), !tbaa.struct !189
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i: ; preds = %bb.ca, %bb.bz, %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.val72.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i20.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i25.i.i.i.i, i64 24, i1 false), !tbaa.struct !189
  %i.pe = getelementptr i8, ptr %.pn18.i26.i.i.i.i, i64 24
  %.val2.i9.i.i29.i.i.i.i = load i64, ptr %i.pe, align 8, !tbaa !184
  %i.pf = icmp ult i64 %.val2.i.i27.i.i.i.i, %.val2.i9.i.i29.i.i.i.i
  br i1 %i.pf, label %.lr.ph.i.i35.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i.i

.lr.ph.i.i35.i.i.i.i:                             ; preds = %bb.cb, %.lr.ph.i.i35.i.i.i.i
  %.sroa.08.010.i.i36.i.i.i.i = phi ptr [ %.sroa.0.0.i.i37.i.i.i.i, %.lr.ph.i.i35.i.i.i.i ], [ %.sroa.0.019.i25.i.i.i.i, %bb.cb ] ; 3 uses
  %.sroa.0.0.i.i37.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i36.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i36.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i37.i.i.i.i, i64 32, i1 false), !tbaa.struct !189
  %i.pg = getelementptr i8, ptr %.sroa.08.010.i.i36.i.i.i.i, i64 -40
  %.val2.i.i.i38.i.i.i.i = load i64, ptr %i.pg, align 8, !tbaa !184
  %i.ph = icmp ult i64 %.val2.i.i27.i.i.i.i, %.val2.i.i.i38.i.i.i.i
  br i1 %i.ph, label %.lr.ph.i.i35.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i.i, !llvm.loop !191

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i.i: ; preds = %.lr.ph.i.i35.i.i.i.i, %bb.cb
  %.sroa.08.0.lcssa.i.i31.i.i.i.i = phi ptr [ %.sroa.0.019.i25.i.i.i.i, %bb.cb ], [ %.sroa.0.0.i.i37.i.i.i.i, %.lr.ph.i.i35.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.lcssa.i.i31.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i20.i.i.i.i, i64 24, i1 false), !tbaa.struct !189
  %.sroa.4.0..val.sroa_idx.i.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i31.i.i.i.i, i64 24
  store i64 %.val2.i.i27.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i32.i.i.i.i, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i20.i.i.i.i)
  br label %bb.cc

bb.cc:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i
  %.sroa.0.0.i33.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i25.i.i.i.i, i64 32 ; 2 uses
  %.not.i34.i.i.i.i = icmp eq ptr %.sroa.0.0.i33.i.i.i.i, %.val73.i
  br i1 %.not.i34.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %bb.bw, !llvm.loop !192

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i: ; preds = %bb.cc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i, %.preheader.i21.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i
  %i.pi = icmp ugt i64 %i.mo, 1152921504606846975
  br i1 %i.pi, label %.noexc.i, label %.noexc82.i

.noexc.i:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #27
  unreachable

.noexc82.i:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i
  %i.pj = ashr exact i64 %i.mn, 2
  %i.pk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #24 ; 9 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.mo
  store i64 0, ptr %i.pk, align 8, !tbaa !117
  %i.pm = getelementptr i8, ptr %i.pk, i64 8      ; 3 uses
  %i.pn = add nsw i64 %i.mo, -1                   ; 2 uses
  %i.po = icmp eq i64 %i.pn, 0
  br i1 %i.po, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc82.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.pn, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.pm, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !117
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i

.lr.ph26.i.i:                                     ; preds = %.lr.ph26.i.i.preheader, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i
  %.059160.i = phi i64 [ %i.rm, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i ], [ 0, %.lr.ph26.i.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %.val22.i.i = load ptr, ptr %i.mj, align 8
  %i.pq = getelementptr inbounds nuw [32 x i8], ptr %.val22.i.i, i64 %.059160.i ; 2 uses
  br i1 %.not29.i.i, label %.lr.ph26.split.preheader.i.i, label %.lr.ph.us.i.i

.lr.ph26.split.preheader.i.i:                     ; preds = %.lr.ph26.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 0, i64 %i.mp, i1 false), !tbaa !117
  br label %.lr.ph.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph26.i.i, %._crit_edge.us.i85.i
  %.02024.us.i.i = phi i64 [ %i.qs, %._crit_edge.us.i85.i ], [ 0, %.lr.ph26.i.i ] ; 3 uses
  %i.pr = xor i64 %.02024.us.i.i, -1
  %i.ps = add i64 %.pre35, %i.pr                  ; 2 uses
  br i1 %min.iters.check195, label %scalar.ph194.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.us.i.i
  %broadcast.splatinsert199 = insertelement <2 x i64> poison, i64 %i.ps, i64 0
  %broadcast.splat200 = shufflevector <2 x i64> %broadcast.splatinsert199, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph196
  %index202 = phi i64 [ 0, %vector.ph196 ], [ %index.next209, %vector.body201 ] ; 3 uses
  %vec.phi203 = phi <2 x i64> [ zeroinitializer, %vector.ph196 ], [ %i.qd, %vector.body201 ]
  %vec.phi204 = phi <2 x i64> [ zeroinitializer, %vector.ph196 ], [ %i.qe, %vector.body201 ]
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %index202 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %wide.load205 = load <2 x i64>, ptr %i.pt, align 8, !tbaa !117
  %wide.load206 = load <2 x i64>, ptr %i.pu, align 8, !tbaa !117
  %i.pv = lshr <2 x i64> %wide.load205, %broadcast.splat200
  %i.pw = lshr <2 x i64> %wide.load206, %broadcast.splat200
  %i.px = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.pows2, i64 %index202 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %wide.load207 = load <2 x i64>, ptr %i.px, align 16, !tbaa !117
  %wide.load208 = load <2 x i64>, ptr %i.py, align 16, !tbaa !117
  %i.pz = trunc <2 x i64> %i.pv to <2 x i1>
  %i.qa = trunc <2 x i64> %i.pw to <2 x i1>
  %i.qb = select <2 x i1> %i.pz, <2 x i64> %wide.load207, <2 x i64> zeroinitializer
  %i.qc = select <2 x i1> %i.qa, <2 x i64> %wide.load208, <2 x i64> zeroinitializer
  %i.qd = add <2 x i64> %i.qb, %vec.phi203        ; 2 uses
  %i.qe = add <2 x i64> %i.qc, %vec.phi204        ; 2 uses
  %index.next209 = add nuw i64 %index202, 4       ; 2 uses
  %i.qf = icmp eq i64 %index.next209, %n.vec198
  br i1 %i.qf, label %middle.block210, label %vector.body201, !llvm.loop !194

middle.block210:                                  ; preds = %vector.body201
  %bin.rdx211 = add <2 x i64> %i.qe, %i.qd
  %i.qg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx211) ; 2 uses
  br i1 %cmp.n212, label %._crit_edge.us.i85.i, label %scalar.ph194.preheader

scalar.ph194.preheader:                           ; preds = %.lr.ph.us.i.i, %middle.block210
  %.ph = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.qg, %middle.block210 ]
  %.02123.us.i.i.ph = phi i64 [ 0, %.lr.ph.us.i.i ], [ %n.vec198, %middle.block210 ]
  br label %scalar.ph194

scalar.ph194:                                     ; preds = %scalar.ph194.preheader, %scalar.ph194
  %i.qh = phi i64 [ %i.qp, %scalar.ph194 ], [ %.ph, %scalar.ph194.preheader ]
  %.02123.us.i.i = phi i64 [ %i.qq, %scalar.ph194 ], [ %.02123.us.i.i.ph, %scalar.ph194.preheader ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %.02123.us.i.i
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !117
  %i.qk = lshr i64 %i.qj, %i.ps
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.pows2, i64 %.02123.us.i.i
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !117
  %i.qn = trunc i64 %i.qk to i1
  %i.qo = select i1 %i.qn, i64 %i.qm, i64 0
  %i.qp = add i64 %i.qo, %i.qh                    ; 2 uses
  %i.qq = add nuw i64 %.02123.us.i.i, 1           ; 2 uses
  %exitcond.not.i84.i = icmp eq i64 %i.qq, %.pre37
  br i1 %exitcond.not.i84.i, label %._crit_edge.us.i85.i, label %scalar.ph194, !llvm.loop !195

._crit_edge.us.i85.i:                             ; preds = %scalar.ph194, %middle.block210
  %.lcssa = phi i64 [ %i.qg, %middle.block210 ], [ %i.qp, %scalar.ph194 ]
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02024.us.i.i
  store i64 %.lcssa, ptr %i.qr, align 8, !tbaa !117
  %i.qs = add nuw i64 %.02024.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.qs, %.pre35
  br i1 %exitcond33.not.i.i, label %.lr.ph.i.i, label %.lr.ph.us.i.i, !llvm.loop !196

.lr.ph.i.i:                                       ; preds = %._crit_edge.us.i85.i, %.lr.ph26.split.preheader.i.i
  br i1 %min.iters.check176, label %scalar.ph175.preheader, label %vector.body180

vector.body180:                                   ; preds = %.lr.ph.i.i, %vector.body180
  %index181 = phi i64 [ %index.next188, %vector.body180 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %vec.phi182 = phi <2 x i64> [ %i.qz, %vector.body180 ], [ zeroinitializer, %.lr.ph.i.i ]
  %vec.phi183 = phi <2 x i64> [ %i.ra, %vector.body180 ], [ zeroinitializer, %.lr.ph.i.i ]
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index181 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %wide.load184 = load <2 x i64>, ptr %i.qt, align 16, !tbaa !117
  %wide.load185 = load <2 x i64>, ptr %i.qu, align 16, !tbaa !117
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %index181 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load186 = load <2 x i64>, ptr %i.qv, align 8, !tbaa !117
  %wide.load187 = load <2 x i64>, ptr %i.qw, align 8, !tbaa !117
  %i.qx = mul <2 x i64> %wide.load186, %wide.load184
  %i.qy = mul <2 x i64> %wide.load187, %wide.load185
  %i.qz = add <2 x i64> %i.qx, %vec.phi182        ; 2 uses
  %i.ra = add <2 x i64> %i.qy, %vec.phi183        ; 2 uses
  %index.next188 = add nuw i64 %index181, 4       ; 2 uses
  %i.rb = icmp eq i64 %index.next188, %n.vec179
  br i1 %i.rb, label %middle.block189, label %vector.body180, !llvm.loop !197

middle.block189:                                  ; preds = %vector.body180
  %bin.rdx190 = add <2 x i64> %i.ra, %i.qz
  %i.rc = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx190) ; 2 uses
  br i1 %cmp.n191, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %.lr.ph.i.i, %middle.block189
  %.028.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec179, %middle.block189 ]
  %.01927.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.rc, %middle.block189 ]
  br label %scalar.ph175

scalar.ph175:                                     ; preds = %scalar.ph175.preheader, %scalar.ph175
  %.028.i.i = phi i64 [ %i.rj, %scalar.ph175 ], [ %.028.i.i.ph, %scalar.ph175.preheader ] ; 3 uses
  %.01927.i.i = phi i64 [ %i.ri, %scalar.ph175 ], [ %.01927.i.i.ph, %scalar.ph175.preheader ]
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.028.i.i
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !117
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %.028.i.i
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !117
  %i.rh = mul i64 %i.rg, %i.re
  %i.ri = add i64 %i.rh, %.01927.i.i              ; 2 uses
  %i.rj = add nuw i64 %.028.i.i, 1                ; 2 uses
  %exitcond34.not.i.i = icmp eq i64 %i.rj, %.pre35
  br i1 %exitcond34.not.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i, label %scalar.ph175, !llvm.loop !198

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i: ; preds = %scalar.ph175, %middle.block189
  %.lcssa169 = phi i64 [ %i.rc, %middle.block189 ], [ %i.ri, %scalar.ph175 ]
  %i.rk = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059160.i
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  store i64 %.lcssa169, ptr %i.rl, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.rm = add nuw i64 %.059160.i, 1               ; 2 uses
  %exitcond199.not.i = icmp eq i64 %i.rm, %i.mo
  br i1 %exitcond199.not.i, label %._crit_edge162.thread291.i, label %.lr.ph26.i.i, !llvm.loop !186

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc82.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.pp, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.pm, %.noexc82.i ]
  %.val74.i = load ptr, ptr %i.mj, align 8, !tbaa !182 ; 5 uses
  %xtraiter348 = and i64 %i.mo, 3                 ; 3 uses
  %i.rn = icmp ult i64 %i.mo, 4
  br i1 %i.rn, label %.epil.preheader347, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new:         ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i
  %unroll_iter352 = and i64 %i.mo, 1152921504606846972
  br label %bb.cq

._crit_edge165.i.loopexit.unr-lcssa:              ; preds = %bb.cq
  %lcmp.mod350.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod350.not, label %._crit_edge165.i.loopexit, label %.epil.preheader347

.epil.preheader347:                               ; preds = %._crit_edge165.i.loopexit.unr-lcssa, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i
  %.053163.i.epil.init = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i ], [ %i.xq, %._crit_edge165.i.loopexit.unr-lcssa ]
  %lcmp.mod351 = icmp ne i64 %xtraiter348, 0
  call void @llvm.assume(i1 %lcmp.mod351)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.epil.preheader347
  %.053163.i.epil = phi i64 [ %.053163.i.epil.init, %.epil.preheader347 ], [ %i.rs, %bb.cd ] ; 3 uses
  %epil.iter349 = phi i64 [ 0, %.epil.preheader347 ], [ %epil.iter349.next, %bb.cd ]
  %i.ro = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %.053163.i.epil
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !184
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %.053163.i.epil
  store i64 %i.rq, ptr %i.rr, align 8, !tbaa !117
  %i.rs = add nuw i64 %.053163.i.epil, 1
  %epil.iter349.next = add i64 %epil.iter349, 1   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE:bb.a
  %conflict.rdx275 = or i1 %conflict.rdx273, %diff.check274
  br i1 %conflict.rdx275, label %scalar.ph276.preheader, label %vector.body281

vector.body281:                                   ; preds = %vector.memcheck266, %vector.body281
  %index282 = phi i64 [ %index.next287, %vector.body281 ], [ 0, %vector.memcheck266 ] ; 3 uses
  %i.alr = add i64 %index282, %i.alb              ; 2 uses
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.alr ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 16
  %wide.load283 = load <4 x float>, ptr %i.als, align 4, !tbaa !102
  %wide.load284 = load <4 x float>, ptr %i.alt, align 4, !tbaa !102
  %i.alu = add i64 %index282, %i.alc              ; 2 uses
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.alu ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  store <4 x float> %wide.load283, ptr %i.alv, align 4, !tbaa !102
  store <4 x float> %wide.load284, ptr %i.alw, align 4, !tbaa !102
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.alr ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  %wide.load285 = load <4 x float>, ptr %i.alx, align 4, !tbaa !102
  %wide.load286 = load <4 x float>, ptr %i.aly, align 4, !tbaa !102
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.alu ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 16
  store <4 x float> %wide.load285, ptr %i.alz, align 4, !tbaa !102
  store <4 x float> %wide.load286, ptr %i.ama, align 4, !tbaa !102
  %index.next287 = add nuw i64 %index282, 8       ; 2 uses
  %i.amb = icmp eq i64 %index.next287, %n.vec280
  br i1 %i.amb, label %middle.block288, label %vector.body281, !llvm.loop !223

middle.block288:                                  ; preds = %vector.body281
  br i1 %cmp.n289, label %.preheader.us92.i.i, label %scalar.ph276.preheader

scalar.ph276.preheader:                           ; preds = %vector.memcheck266, %.lr.ph.us93.i.i, %middle.block288
  %.05881.us91.i.i.ph = phi i64 [ 0, %vector.memcheck266 ], [ 0, %.lr.ph.us93.i.i ], [ %n.vec280, %middle.block288 ] ; 5 uses
  %.neg377 = or disjoint i64 %.05881.us91.i.i.ph, 1
  br i1 %lcmp.mod372.not, label %scalar.ph276.prol.loopexit, label %scalar.ph276.prol

scalar.ph276.prol:                                ; preds = %scalar.ph276.preheader
  %i.amc = add i64 %.05881.us91.i.i.ph, %i.alb    ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.amc
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !102
  %i.amf = add i64 %.05881.us91.i.i.ph, %i.alc    ; 2 uses
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.amf
  store float %i.ame, ptr %i.amg, align 4, !tbaa !102
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.amc
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !102
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.amf
  store float %i.ami, ptr %i.amj, align 4, !tbaa !102
  %i.amk = or disjoint i64 %.05881.us91.i.i.ph, 1
  br label %scalar.ph276.prol.loopexit

scalar.ph276.prol.loopexit:                       ; preds = %scalar.ph276.prol, %scalar.ph276.preheader
  %.05881.us91.i.i.unr = phi i64 [ %.05881.us91.i.i.ph, %scalar.ph276.preheader ], [ %i.amk, %scalar.ph276.prol ]
  %i.aml = icmp eq i64 %.fr102.i.i, %.neg377
  br i1 %i.aml, label %.preheader.us92.i.i, label %scalar.ph276

bb.du:                                            ; preds = %..loopexit_crit_edge.us.us.i.i, %.preheader.us92.i.i
  %.05985.us.us.i.i = phi i64 [ 2, %.preheader.us92.i.i ], [ %i.anb, %..loopexit_crit_edge.us.us.i.i ] ; 3 uses
  %.not63.us.us.i.i = icmp ult i64 %i.akx, %.05985.us.us.i.i
  br i1 %.not63.us.us.i.i, label %..loopexit_crit_edge.us.us.i.i, label %.lr.ph83.us.us.i.i

.lr.ph83.us.us.i.i:                               ; preds = %bb.du
  %i.amm = add i64 %i.aky, %.05985.us.us.i.i
  %i.amn = mul i64 %i.amm, %.fr102.i.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dz, %.lr.ph83.us.us.i.i
  %.06082.us.us.i.i = phi i64 [ 0, %.lr.ph83.us.us.i.i ], [ %i.ana, %bb.dz ] ; 3 uses
  %i.amo = add i64 %.06082.us.us.i.i, %i.alc      ; 2 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.amo ; 2 uses
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !102
  %i.amr = add i64 %.06082.us.us.i.i, %i.amn      ; 2 uses
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.amr
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !102 ; 2 uses
  %i.amu = fcmp olt float %i.amt, %i.amq
  br i1 %i.amu, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store float %i.amt, ptr %i.amp, align 4, !tbaa !102
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.amo ; 2 uses
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !102
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.amr
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !102 ; 2 uses
  %i.amz = fcmp ogt float %i.amy, %i.amw
  br i1 %i.amz, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store float %i.amy, ptr %i.amv, align 4, !tbaa !102
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.ana = add nuw i64 %.06082.us.us.i.i, 1       ; 2 uses
  %exitcond108.not.i.i = icmp eq i64 %i.ana, %.fr102.i.i
  br i1 %exitcond108.not.i.i, label %..loopexit_crit_edge.us.us.i.i, label %bb.dv, !llvm.loop !224

..loopexit_crit_edge.us.us.i.i:                   ; preds = %bb.dz, %bb.du
  %i.anb = add nuw i64 %.05985.us.us.i.i, 1       ; 2 uses
  %exitcond109.i.i = icmp eq i64 %i.anb, %umax.i.i
  br i1 %exitcond109.i.i, label %._crit_edge.split.us.us.i.i, label %bb.du, !llvm.loop !225

._crit_edge.split.us.us.i.i:                      ; preds = %..loopexit_crit_edge.us.us.i.i
  %i.anc = add nuw i64 %.087.us90.i.i, 1          ; 2 uses
  %exitcond110.not.i.i = icmp eq i64 %i.anc, %i.afm
  br i1 %exitcond110.not.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i, label %.lr.ph.us93.i.i, !llvm.loop !221

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i: ; preds = %._crit_edge.split.us.us.i.i, %..preheader_crit_edge.us.us.i.i, %.lr.ph88.split.i.i, %.lr.ph88.split.us.i.i, %_ZNSt6vectorIfSaIfEE6resizeEm.exit80.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.and = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.and, label %.lr.ph175.i, label %._crit_edge176.i, !llvm.loop !226

.loopexit134.i:                                   ; preds = %bb.dr, %bb.do, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0116.1.ph.i = phi ptr [ %.sroa.0116.0170.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0116.4.i, %bb.do ], [ %.sroa.0116.4.i, %bb.dr ]
  %.sroa.22.1.ph.i = phi ptr [ %.sroa.22.0172.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.22.4.i, %bb.do ], [ %.sroa.22.4.i, %bb.dr ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.dh
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit134.i, %bb.dm, %bb.cs, %bb.co
  %.sroa.0116.2.i = phi ptr [ %.sroa.0116.0170.i, %bb.dm ], [ %.sroa.0116.3295.i, %bb.cs ], [ %.sroa.0116.3295.i, %bb.co ], [ %.sroa.0116.1.ph.i, %.loopexit134.i ], [ %.sroa.0116.0170.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.22.2.i = phi ptr [ %.sroa.22.0172.i, %bb.dm ], [ %.sroa.22.3296.i, %bb.cs ], [ %.sroa.22.3296.i, %bb.co ], [ %.sroa.22.1.ph.i, %.loopexit134.i ], [ %.sroa.22.0172.i, %.loopexit.split-lp.i ]
  %.pn.pn.i = phi { ptr, i32 } [ %i.aei, %bb.dm ], [ %i.xz, %bb.cs ], [ %i.tm, %bb.co ], [ %lpad.loopexit.i, %.loopexit134.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i111.i = icmp eq ptr %.sroa.0116.2.i, null
  br i1 %.not.i.i.i111.i, label %common.resume, label %bb.ea

bb.ea:                                            ; preds = %.body.i
  %i.ane = ptrtoint ptr %.sroa.22.2.i to i64
  %i.anf = ptrtoint ptr %.sroa.0116.2.i to i64
  %i.ang = sub i64 %i.ane, %i.anf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0116.2.i, i64 noundef %i.ang) #26
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10initializeEPfm.exit: ; preds = %._crit_edge176.i, %bb.cr
  %i.anh = load i64, ptr %i.ev, align 8, !tbaa !86
  %i.ani = add nsw i64 %i.anh, -3
  %i.anj = sitofp i64 %i.ani to float
  %i.ank = fdiv float 1.000000e+00, %i.anj
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ank, ptr %i.anl, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD0Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC1Em(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) unnamed_addr #2

declare void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.c = load ptr, ptr %1, align 8, !tbaa !87     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = load ptr, ptr %0, align 8, !tbaa !87     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, !prof !227

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !190

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load float, ptr %i.c, align 4, !tbaa !102
  store float %i.r, ptr %i.o, align 4, !tbaa !102
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #26
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !88
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !200  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !190

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load float, ptr %i.c, align 4, !tbaa !102
  store float %i.z, ptr %i.i, align 4, !tbaa !102
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !190

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !87
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !200 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !87
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !200
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load float, ptr %i.c, align 4, !tbaa !102
  store float %i.ac, ptr %i.i, align 4, !tbaa !102
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

_ZSt4copyIPfS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !190

bb.r:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load float, ptr %i.af, align 4, !tbaa !102
  store float %i.ak, ptr %i.ad, align 4, !tbaa !102
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !200
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !110    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !117
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !124
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !117
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !117
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !111
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE6resizeEm(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val7 = load ptr, ptr %0, align 8, !tbaa !182  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !183 ; 6 uses
  %i.b = ptrtoint ptr %.val8 to i64               ; 2 uses
  %i.c = ptrtoint ptr %.val7 to i64               ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 5                   ; 7 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %1, %i.e                     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !228
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.b
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.e, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.e, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.g
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.g, 5                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.val8, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val8, i64 %i.p
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !183
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %i.g
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 range(i64 1, 0) %i.g)
  %i.r = add nuw nsw i64 %.sroa.speculated.i.i, %i.e
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 5
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d ; 2 uses
  %i.w = shl nuw nsw i64 %i.g, 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, i8 0, i64 %i.w, i1 false)
  %.not1.i.i.i.i = icmp eq ptr %.val7, %.val8
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.092.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.val7, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i, i64 32, i1 false), !tbaa.struct !189, !alias.scope !229
  %i.x = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.x, %.val8
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !233

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.not.i34.i = icmp eq ptr %.val7, null
  br i1 %.not.i34.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.z = sub i64 %i.j, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7, i64 noundef %i.z) #26
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i

_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i: ; preds = %bb.f, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.u, ptr %0, align 8, !tbaa !182
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.g
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !183
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !228
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %1, %i.e
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.val7, i64 %1 ; 2 uses
  %.not.i9 = icmp eq ptr %.val8, %i.ad
  br i1 %.not.i9, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !183
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %9 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %.sroa.03.i.i8.i = alloca [3 x i64], align 8    ; 4 uses
  %.sroa.03.i.i.i = alloca [3 x i64], align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i17 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i17, 5               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph35

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.j = icmp eq i64 %i.bz, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph35, !llvm.loop !234

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i20.lcssa = phi i64 [ %.fr.i17, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i20.lcssa, 5               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i20.lcssa, 32
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i, %._crit_edge
  %.07.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %0, i64 %.07.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.46.0.copyload.i.i.i = load i64, ptr %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i, align 8, !tbaa !117 ; 2 uses
  %i.v = icmp slt i64 %.07.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.042.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.07.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.042.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [32 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 24
  %.val2.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !184
  %i.ac = getelementptr i8, ptr %i.aa, i64 24
  %.val3.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !184
  %i.ad = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %.042.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !tbaa.struct !189
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !235

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.07.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !tbaa.struct !189
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.07.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.06.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.097.i.i.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !184
  %i.al = icmp ult i64 %.val1.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.06.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !tbaa.struct !189
  %i.an = icmp sgt i64 %.097.i.i.i.i.i, %.07.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i, !llvm.loop !236

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.f ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %.sroa.46.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i)
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, 0
  %i.ap = add nsw i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i, label %bb.c, !llvm.loop !237

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i
  %i.aq = icmp sgt i64 %.fr.i20.lcssa, 32
  br i1 %i.aq, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i
  %.sroa.0.02.i.i = phi ptr [ %i.ar, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i ], [ %storemerge18.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i8.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %.sroa.46.0..sroa.0.0..val4.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.46.0.copyload.i.i10.i = load i64, ptr %.sroa.46.0..sroa.0.0..val4.sroa_idx.i.i.i, align 8, !tbaa !117 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !189
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = ashr exact i64 %i.at, 5                 ; 3 uses
  %i.av = add nsw i64 %i.au, -1
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = icmp sgt i64 %i.au, 2
  br i1 %i.ax, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i26.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i26.i
  %.042.i.i.i27.i = phi i64 [ %spec.select.i.i.i30.i, %.lr.ph.i.i.i26.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ay = shl i64 %.042.i.i.i27.i, 1              ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 24
  %.val2.i.i.i.i28.i = load i64, ptr %i.bd, align 8, !tbaa !184
  %i.be = getelementptr i8, ptr %i.bc, i64 24
  %.val3.i.i.i.i29.i = load i64, ptr %i.be, align 8, !tbaa !184
  %i.bf = icmp ult i64 %.val2.i.i.i.i28.i, %.val3.i.i.i.i29.i
  %spec.select.i.i.i30.i = select i1 %i.bf, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bg = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i30.i
  %i.bh = getelementptr inbounds [32 x i8], ptr %0, i64 %.042.i.i.i27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false), !tbaa.struct !189
  %i.bi = icmp slt i64 %spec.select.i.i.i30.i, %i.aw
  br i1 %i.bi, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i11.i, !llvm.loop !235

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i26.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i30.i, %.lr.ph.i.i.i26.i ] ; 5 uses
  %i.bj = and i64 %i.at, 32
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bl = add nsw i64 %i.au, -2
  %i.bm = ashr exact i64 %i.bl, 1
  %i.bn = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bm
  br i1 %i.bn, label %.thread.i.i25.i, label %bb.h

.thread.i.i25.i:                                  ; preds = %bb.g
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.bp = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false), !tbaa.struct !189
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i25.i
  %.06.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.bp, %.thread.i.i25.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.06.i.i.i.i17.i = phi i64 [ %.097.i.i78.i.i19.i, %bb.i ], [ %.06.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.097.in.i.i.i.i18.i = add nsw i64 %.06.i.i.i.i17.i, -1
  %.097.i.i78.i.i19.i = lshr i64 %.097.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.097.i.i78.i.i19.i ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %.val1.i.i.i.i.i20.i = load i64, ptr %i.bt, align 8, !tbaa !184
  %i.bu = icmp ult i64 %.val1.i.i.i.i.i20.i, %.sroa.46.0.copyload.i.i10.i
  br i1 %i.bu, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bv = getelementptr inbounds [32 x i8], ptr %0, i64 %.06.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !tbaa.struct !189
  %.not9.i.i24.i = icmp eq i64 %.097.i.i78.i.i19.i, 0
  br i1 %.not9.i.i24.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, label %.lr.ph.i.i.i.i16.i, !llvm.loop !236

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i: ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.06.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bw = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i22.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.i.i8.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %.sroa.46.0.copyload.i.i10.i, ptr %.sroa.4.0..sroa_idx.i.i.i23.i, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i8.i)
  %i.bx = icmp sgt i64 %i.at, 32
  br i1 %i.bx, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !238

.lr.ph35:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1834 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.01933 = phi i64 [ %i.bz, %bb.b ], [ %2, %.lr.ph ]
  %i.by = phi i64 [ %i.cs, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bz = add nsw i64 %.01933, -1                 ; 3 uses
  %i.ca = lshr i64 %i.by, 1
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ca ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %storemerge1834, i64 -32 ; 4 uses
  %.val2.i.i.i = load i64, ptr %i.g, align 8, !tbaa !184 ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 24
  %.val3.i.i.i = load i64, ptr %i.cd, align 8, !tbaa !184 ; 3 uses
  %i.ce = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %i.cf = getelementptr i8, ptr %storemerge1834, i64 -8
  %.val3.i27.i.i = load i64, ptr %i.cf, align 8, !tbaa !184 ; 4 uses
  br i1 %i.ce, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph35
  %i.cg = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.ch = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph35
  %i.ci = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cj = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cm, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1834, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.val3.i.i14.i = load i64, ptr %i.h, align 8, !tbaa !184 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i ], [ %i.cm, %bb.t ] ; 9 uses
  %i.ck = getelementptr i8, ptr %.sroa.012.1.i.i, i64 24
  %.val2.i.i15.i = load i64, ptr %i.ck, align 8, !tbaa !184
  %i.cl = icmp ult i64 %.val2.i.i15.i, %.val3.i.i14.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.cl, label %bb.t, label %.preheader.i.i, !llvm.loop !239

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.cn = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i10.i.i = load i64, ptr %i.cn, align 8, !tbaa !184
  %i.co = icmp ult i64 %.val3.i.i14.i, %.val3.i10.i.i
  br i1 %i.co, label %.preheader.i.i, label %bb.u, !llvm.loop !240

bb.u:                                             ; preds = %.preheader.i.i
  %i.cp = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cp, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, i64 32, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !241

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1834, i64 noundef %i.bz)
  %i.cq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cr = sub i64 %i.cq, %i.a
  %.fr.i = freeze i64 %i.cr                       ; 2 uses
  %i.cs = ashr exact i64 %.fr.i, 5                ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 16
  br i1 %i.ct, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !234

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !102
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !200
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !102
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !102
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !200
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !88
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.mul.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 _ZTSN16OpenColorIO_v2_511Lut3DOpDataE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!12 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!13 = !{!14, !43, i64 224}
!14 = !{!"_ZTSN16OpenColorIO_v2_511Lut3DOpDataE", !15, i64 0, !34, i64 168, !35, i64 176, !43, i64 224, !44, i64 228}
!15 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !16, i64 8, !18, i64 48}
!16 = !{!"_ZTSSt5mutex", !17, i64 0}
!17 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!18 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !19, i64 0, !20, i64 8, !20, i64 40, !24, i64 72, !29, i64 96}
!19 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !23, i64 8, !5, i64 16}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!22 = !{!"p1 omnipotent char", !10, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !10, i64 0}
!29 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !10, i64 0}
!34 = !{!"_ZTSN16OpenColorIO_v2_513InterpolationE", !5, i64 0}
!35 = !{!"_ZTSN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayE", !36, i64 0}
!36 = !{!"_ZTSN16OpenColorIO_v2_56ArrayTIfEE", !37, i64 0, !23, i64 8, !23, i64 16, !38, i64 24}
!37 = !{!"_ZTSN16OpenColorIO_v2_59ArrayBaseE"}
!38 = !{!"_ZTSSt6vectorIfSaIfEE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 float", !10, i64 0}
!43 = !{!"_ZTSN16OpenColorIO_v2_518TransformDirectionE", !5, i64 0}
!44 = !{!"_ZTSN16OpenColorIO_v2_58BitDepthE", !5, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_123GetForwardLut3DRendererERSt10shared_ptrIKNS_11Lut3DOpDataEE: argument 0"}
!47 = distinct !{!47, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_123GetForwardLut3DRendererERSt10shared_ptrIKNS_11Lut3DOpDataEE"}
!48 = !{!49, !4, i64 8}
!49 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!50 = !{!49, !4, i64 12}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !6, i64 0}
!53 = !{!54, !46}
!54 = distinct !{!54, !55, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererEJRSt10shared_ptrIKNS0_11Lut3DOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!55 = distinct !{!55, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_124Lut3DTetrahedralRendererEJRSt10shared_ptrIKNS0_11Lut3DOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!56 = !{!57, !4, i64 0}
!57 = !{!"_ZTSN16OpenColorIO_v2_57CPUInfoE", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12, !5, i64 77}
!58 = !{!59, !10, i64 32}
!59 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererE", !60, i64 0, !42, i64 8, !23, i64 16, !61, i64 24, !4, i64 28, !10, i64 32}
!60 = !{!"_ZTSN16OpenColorIO_v2_55OpCPUE"}
!61 = !{!"float", !5, i64 0}
!62 = !{!63, !46}
!63 = distinct !{!63, !64, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererEJRSt10shared_ptrIKNS0_11Lut3DOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!64 = distinct !{!64, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRendererEJRSt10shared_ptrIKNS0_11Lut3DOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererEJRSt10shared_ptrIKNS0_11Lut3DOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!67 = distinct !{!67, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererEJRSt10shared_ptrIKNS0_11Lut3DOpDataEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!68 = !{!69, !61, i64 8}
!69 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererE", !60, i64 0, !61, i64 8, !23, i64 16, !70, i64 24, !38, i64 152}
!70 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTreeE", !23, i64 8, !5, i64 16, !23, i64 48, !71, i64 56, !76, i64 80, !81, i64 104}
!71 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE", !72, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE12_Vector_implE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelESaIS3_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelE", !10, i64 0}
!76 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_Vector_implE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!80 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndE", !10, i64 0}
!81 = !{!"_ZTSSt6vectorImSaImEE", !82, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseImSaImEE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!85 = !{!"p1 long", !10, i64 0}
!86 = !{!69, !23, i64 16}
!87 = !{!41, !42, i64 0}
!88 = !{!41, !42, i64 16}
!89 = !{!90, !91, i64 0}
!90 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !11, i64 8}
!91 = !{!"p1 _ZTSN16OpenColorIO_v2_55OpCPUE", !10, i64 0}
!92 = !{!11, !12, i64 0}
!93 = distinct !{null}
!94 = !{!95, !22, i64 8}
!95 = !{!"_ZTSSt9type_info", !22, i64 8}
!96 = !{!5, !5, i64 0}
!97 = distinct !{null}
!98 = !{!59, !23, i64 16}
!99 = !{!59, !61, i64 24}
!100 = !{!59, !42, i64 8}
!101 = !{!59, !4, i64 28}
!102 = !{!61, !61, i64 0}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117BaseLut3DRendererD2Ev}
!106 = distinct !{!106, !104}
!107 = distinct !{null}
!108 = distinct !{!108, !104}
!109 = distinct !{null}
!110 = !{!84, !85, i64 0}
!111 = !{!84, !85, i64 16}
!112 = !{!74, !75, i64 0}
!113 = !{!74, !75, i64 8}
!114 = distinct !{!114, !104}
!115 = !{!74, !75, i64 16}
!116 = !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRendererD2Ev}
!117 = !{!23, !23, i64 0}
!118 = !{!70, !23, i64 8}
!119 = !{!70, !23, i64 48}
!120 = distinct !{!120, !104, !121, !122}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = distinct !{!123, !104, !122, !121}
!124 = !{!84, !85, i64 8}
!125 = !{!126, !126, i64 0}
!126 = !{!"double", !5, i64 0}
!127 = distinct !{!127, !104}
!128 = distinct !{!128, !104}
!129 = distinct !{!129, !104}
!130 = distinct !{!130, !104}
!131 = distinct !{!131, !104}
!132 = distinct !{!132, !104}
!133 = distinct !{!133, !104}
!134 = distinct !{!134, !104}
!135 = distinct !{null}
!136 = distinct !{!136, !104}
!137 = distinct !{!137, !104}
!138 = distinct !{!138, !104}
!139 = distinct !{!139, !104}
!140 = distinct !{!140, !104}
!141 = distinct !{!141, !104}
!142 = distinct !{!142, !104}
!143 = distinct !{!143, !104}
!144 = distinct !{!144, !104}
!145 = distinct !{!145, !104}
!146 = distinct !{!146, !104}
!147 = distinct !{!147, !104}
!148 = distinct !{!148, !104}
!149 = distinct !{!149, !104}
!150 = distinct !{!150, !104}
!151 = distinct !{!151, !104}
!152 = distinct !{!152, !104}
!153 = distinct !{!153, !104}
!154 = distinct !{!154, !104}
!155 = distinct !{!155, !104}
!156 = distinct !{!156, !104}
!157 = distinct !{!157, !104}
!158 = distinct !{!158, !104}
!159 = distinct !{!159, !104}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!162 = distinct !{!162, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_SaIS3_EEvPT_PT0_RT1_"}
!163 = !{!164}
!164 = distinct !{!164, !162, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!165 = !{!161, !164}
!166 = !{!42, !42, i64 0}
!167 = !{!85, !85, i64 0}
!168 = distinct !{!168, !104}
!169 = distinct !{!169, !104, !121, !122}
!170 = !{!171, !23, i64 0}
!171 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9treeLevelE", !23, i64 0, !23, i64 8, !38, i64 16, !38, i64 40, !81, i64 64, !81, i64 88}
!172 = !{!171, !23, i64 8}
!173 = distinct !{!173, !104}
!174 = distinct !{!174, !104, !122, !121}
!175 = distinct !{!175, !104}
!176 = distinct !{!176, !104}
!177 = distinct !{!177, !104}
!178 = distinct !{!178, !104}
!179 = distinct !{!179, !180}
!180 = !{!"llvm.loop.unroll.disable"}
!181 = distinct !{!181, !104}
!182 = !{!79, !80, i64 0}
!183 = !{!79, !80, i64 8}
!184 = !{!185, !23, i64 24}
!185 = !{!"_ZTSN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndE", !5, i64 0, !23, i64 24}
!186 = distinct !{!186, !104}
!187 = distinct !{!187, !104}
!188 = distinct !{!188, !180}
!189 = !{i64 0, i64 24, !96, i64 24, i64 8, !117}
!190 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!191 = distinct !{!191, !104}
!192 = distinct !{!192, !104}
!193 = distinct !{!193, !104}
!194 = distinct !{!194, !104, !121, !122}
!195 = distinct !{!195, !104, !122, !121}
!196 = distinct !{!196, !104}
!197 = distinct !{!197, !104, !121, !122}
!198 = distinct !{!198, !104, !122, !121}
!199 = distinct !{!199, !180}
!200 = !{!41, !42, i64 8}
!201 = distinct !{!201, !104}
!202 = distinct !{!202, !104, !121}
!203 = distinct !{!203, !104, !121, !122}
!204 = distinct !{!204, !104, !122, !121}
!205 = distinct !{!205, !104}
!206 = distinct !{!206, !104, !121, !122}
!207 = distinct !{!207, !104}
!208 = !{!209}
!209 = distinct !{!209, !210}
!210 = distinct !{!210, !"LVerDomain"}
!211 = !{!212}
!212 = distinct !{!212, !210}
!213 = distinct !{!213, !104, !121, !122}
!214 = distinct !{!214, !180}
!215 = distinct !{!215, !104}
!216 = distinct !{!216, !104, !121}
!217 = distinct !{!217, !180}
!218 = distinct !{!218, !104}
!219 = distinct !{!219, !104, !121, !122}
!220 = distinct !{!220, !104, !121}
!221 = distinct !{!221, !104}
!222 = distinct !{!222, !104, !121}
!223 = distinct !{!223, !104, !121, !122}
!224 = distinct !{!224, !104}
!225 = distinct !{!225, !104}
!226 = distinct !{!226, !104}
!227 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!228 = !{!79, !80, i64 16}
!229 = !{!230, !232}
!230 = distinct !{!230, !231, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!231 = distinct !{!231, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_SaIS3_EEvPT_PT0_RT1_"}
!232 = distinct !{!232, !231, !"_ZSt19__relocate_object_aIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!233 = distinct !{!233, !104}
!234 = distinct !{!234, !104}
!235 = distinct !{!235, !104}
!236 = distinct !{!236, !104}
!237 = distinct !{!237, !104}
!238 = distinct !{!238, !104}
!239 = distinct !{!239, !104}
!240 = distinct !{!240, !104}
!241 = distinct !{!241, !104}
end_hunk_3
