Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/RangeOpCPU?download=true
inline.NumInlined: 231
inline.NumDeleted: 127
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::shared_ptr.8" = type { %"class.std::__shared_ptr.9" }
%"class.std::__shared_ptr.9" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN16OpenColorIO_v2_524RangeScaleMinMaxRendererD0Ev = comdat any

$_ZN16OpenColorIO_v2_519RangeMinMaxRendererD0Ev = comdat any

$_ZN16OpenColorIO_v2_516RangeMinRendererD0Ev = comdat any

$_ZN16OpenColorIO_v2_516RangeMaxRendererD0Ev = comdat any

$_ZN16OpenColorIO_v2_55OpCPUD2Ev = comdat any

$_ZN16OpenColorIO_v2_510RangeOpCPUD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVN16OpenColorIO_v2_510RangeOpCPUE = comdat any

$_ZTIN16OpenColorIO_v2_510RangeOpCPUE = comdat any

$_ZTSN16OpenColorIO_v2_510RangeOpCPUE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZTVN16OpenColorIO_v2_510RangeOpCPUE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_510RangeOpCPUE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_510RangeOpCPUD0Ev, ptr @__cxa_pure_virtual, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, comdat, align 8
@_ZTVN16OpenColorIO_v2_524RangeScaleMinMaxRendererE = hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_524RangeScaleMinMaxRendererE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_524RangeScaleMinMaxRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_524RangeScaleMinMaxRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTVN16OpenColorIO_v2_519RangeMinMaxRendererE = hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_519RangeMinMaxRendererE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_519RangeMinMaxRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTVN16OpenColorIO_v2_516RangeMinRendererE = hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_516RangeMinRendererE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_516RangeMinRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_516RangeMinRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@_ZTVN16OpenColorIO_v2_516RangeMaxRendererE = hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_516RangeMaxRendererE, ptr @_ZN16OpenColorIO_v2_55OpCPUD2Ev, ptr @_ZN16OpenColorIO_v2_516RangeMaxRendererD0Ev, ptr @_ZNK16OpenColorIO_v2_516RangeMaxRenderer5applyEPKvPvl, ptr @_ZNK16OpenColorIO_v2_55OpCPU9isDynamicEv, ptr @_ZNK16OpenColorIO_v2_55OpCPU18hasDynamicPropertyENS_19DynamicPropertyTypeE, ptr @_ZNK16OpenColorIO_v2_55OpCPU18getDynamicPropertyENS_19DynamicPropertyTypeE] }, align 8
@.str = private unnamed_addr constant [31 x i8] c"Op::finalize has to be called.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@_ZTIN16OpenColorIO_v2_524RangeScaleMinMaxRendererE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_524RangeScaleMinMaxRendererE, ptr @_ZTIN16OpenColorIO_v2_510RangeOpCPUE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_524RangeScaleMinMaxRendererE = hidden constant [47 x i8] c"N16OpenColorIO_v2_524RangeScaleMinMaxRendererE\00", align 1
@_ZTIN16OpenColorIO_v2_510RangeOpCPUE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_510RangeOpCPUE, ptr @_ZTIN16OpenColorIO_v2_55OpCPUE }, comdat, align 8
@_ZTSN16OpenColorIO_v2_510RangeOpCPUE = linkonce_odr hidden constant [33 x i8] c"N16OpenColorIO_v2_510RangeOpCPUE\00", comdat, align 1
@_ZTIN16OpenColorIO_v2_55OpCPUE = external constant ptr
@_ZTIN16OpenColorIO_v2_519RangeMinMaxRendererE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_519RangeMinMaxRendererE, ptr @_ZTIN16OpenColorIO_v2_510RangeOpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_519RangeMinMaxRendererE = hidden constant [42 x i8] c"N16OpenColorIO_v2_519RangeMinMaxRendererE\00", align 1
@_ZTIN16OpenColorIO_v2_516RangeMinRendererE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_516RangeMinRendererE, ptr @_ZTIN16OpenColorIO_v2_510RangeOpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_516RangeMinRendererE = hidden constant [39 x i8] c"N16OpenColorIO_v2_516RangeMinRendererE\00", align 1
@_ZTIN16OpenColorIO_v2_516RangeMaxRendererE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_516RangeMaxRendererE, ptr @_ZTIN16OpenColorIO_v2_510RangeOpCPUE }, align 8
@_ZTSN16OpenColorIO_v2_516RangeMaxRendererE = hidden constant [39 x i8] c"N16OpenColorIO_v2_516RangeMaxRendererE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [102 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [102 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [105 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [110 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1

@_ZN16OpenColorIO_v2_524RangeScaleMinMaxRendererC1ERSt10shared_ptrIKNS_11RangeOpDataEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN16OpenColorIO_v2_524RangeScaleMinMaxRendererC2ERSt10shared_ptrIKNS_11RangeOpDataEE
@_ZN16OpenColorIO_v2_519RangeMinMaxRendererC1ERSt10shared_ptrIKNS_11RangeOpDataEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN16OpenColorIO_v2_519RangeMinMaxRendererC2ERSt10shared_ptrIKNS_11RangeOpDataEE
@_ZN16OpenColorIO_v2_516RangeMinRendererC1ERSt10shared_ptrIKNS_11RangeOpDataEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN16OpenColorIO_v2_516RangeMinRendererC2ERSt10shared_ptrIKNS_11RangeOpDataEE
@_ZN16OpenColorIO_v2_516RangeMaxRendererC1ERSt10shared_ptrIKNS_11RangeOpDataEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN16OpenColorIO_v2_516RangeMaxRendererC2ERSt10shared_ptrIKNS_11RangeOpDataEE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_510RangeOpCPUC2ERSt10shared_ptrIKNS_11RangeOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_510RangeOpCPUE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load <4 x double>, ptr %i.c, align 8, !tbaa !17
  %i.e = shufflevector <4 x double> %i.d, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.f = fptrunc <4 x double> %i.e to <4 x float>
  store <4 x float> %i.f, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_524RangeScaleMinMaxRendererC2ERSt10shared_ptrIKNS_11RangeOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load <4 x double>, ptr %i.c, align 8, !tbaa !17
  %i.e = shufflevector <4 x double> %i.d, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.f = fptrunc <4 x double> %i.e to <4 x float>
  store <4 x float> %i.f, ptr %i.a, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_524RangeScaleMinMaxRendererE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_524RangeScaleMinMaxRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.f = shl i64 %3, 4                            ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 %i.f       ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %bound0 = icmp ult ptr %2, %i.h
  %bound1 = icmp ult ptr %1, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %2, %i.i
  %bound130 = icmp ult ptr %i.b, %i.g
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.j = shl i64 %n.vec, 4                        ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %i.m = load <1 x float>, ptr %i.b, align 8
  %broadcast.splat = shufflevector <1 x float> %i.m, <1 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.n = load <4 x float>, ptr %0, align 8
  %broadcast.splat37 = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 3 uses
  %i.o = load float, ptr %i.d, align 8, !tbaa !22, !alias.scope !43
  %broadcast.splatinsert38 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat39 = shufflevector <4 x float> %broadcast.splatinsert38, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.p = load float, ptr %i.e, align 4, !tbaa !23, !alias.scope !43
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.p, i64 0 ; 3 uses
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <8 x i32> zeroinitializer
  %5 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.q  ; 4 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.r, i64 16
  %i.s = getelementptr i8, ptr %1, i64 %i.q       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.s, i64 32
  %i.t = getelementptr i8, ptr %1, i64 %i.q       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.t, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.q
  %i.u = load float, ptr %next.gep, align 4, !tbaa !19, !alias.scope !44
  %i.v = load float, ptr %next.gep32, align 4, !tbaa !19, !alias.scope !44
  %i.w = load float, ptr %next.gep33, align 4, !tbaa !19, !alias.scope !44
  %i.x = load float, ptr %next.gep34, align 4, !tbaa !19, !alias.scope !44
  %i.y = insertelement <4 x float> poison, float %i.u, i64 0
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 3
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat37) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ae = getelementptr i8, ptr %i.r, i64 20
  %i.af = getelementptr i8, ptr %i.s, i64 36
  %i.ag = getelementptr i8, ptr %i.t, i64 52
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !19, !alias.scope !44
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !19, !alias.scope !44
  %i.aj = load float, ptr %i.af, align 4, !tbaa !19, !alias.scope !44
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !19, !alias.scope !44
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat37) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ar = getelementptr i8, ptr %i.r, i64 24
  %i.as = getelementptr i8, ptr %i.s, i64 40
  %i.at = getelementptr i8, ptr %i.t, i64 56
  %i.au = load float, ptr %i.aq, align 4, !tbaa !19, !alias.scope !44
  %i.av = load float, ptr %i.ar, align 4, !tbaa !19, !alias.scope !44
  %i.aw = load float, ptr %i.as, align 4, !tbaa !19, !alias.scope !44
  %i.ax = load float, ptr %i.at, align 4, !tbaa !19, !alias.scope !44
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat37) ; 2 uses
  %i.bd = fcmp olt <4 x float> %broadcast.splat39, %i.ac
  %i.be = select <4 x i1> %i.bd, <4 x float> %i.ac, <4 x float> %broadcast.splat39 ; 2 uses
  %i.bf = fcmp olt <4 x float> %broadcast.splat39, %i.ap
  %i.bg = select <4 x i1> %i.bf, <4 x float> %i.ap, <4 x float> %broadcast.splat39 ; 2 uses
  %i.bh = fcmp olt <4 x float> %broadcast.splat39, %i.bc
  %i.bi = select <4 x i1> %i.bh, <4 x float> %i.bc, <4 x float> %broadcast.splat39 ; 2 uses
  %i.bj = fcmp olt <4 x float> %broadcast.splat47, %i.bi
  %i.bk = select <4 x i1> %i.bj, <4 x float> %broadcast.splat47, <4 x float> %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.bm = getelementptr i8, ptr %i.r, i64 28
  %i.bn = getelementptr i8, ptr %i.s, i64 44
  %i.bo = getelementptr i8, ptr %i.t, i64 60
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !19, !alias.scope !44
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !19, !alias.scope !44
  %i.br = load float, ptr %i.bn, align 4, !tbaa !19, !alias.scope !44
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !19, !alias.scope !44
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3
  %6 = shufflevector <4 x float> %i.be, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fcmp olt <8 x float> %4, %6
  %i.bx = shufflevector <4 x float> %i.be, <4 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = select <8 x i1> %7, <8 x float> %5, <8 x float> %i.bx
  %i.by = shufflevector <4 x float> %i.bk, <4 x float> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %8, <8 x float> %i.by, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !19, !alias.scope !45, !noalias !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.023.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.k, %middle.block ]
  %.01522.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.l, %middle.block ]
  %.01621.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.023 = phi ptr [ %i.de, %scalar.ph ], [ %.023.ph, %scalar.ph.preheader ] ; 4 uses
  %.01522 = phi ptr [ %i.df, %scalar.ph ], [ %.01522.ph, %scalar.ph.preheader ] ; 5 uses
  %.01621 = phi i64 [ %i.dg, %scalar.ph ], [ %.01621.ph, %scalar.ph.preheader ]
  %i.ca = load float, ptr %.023, align 4, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %.023, i64 4
  %i.cc = load float, ptr %i.b, align 8, !tbaa !47 ; 2 uses
  %i.cd = load float, ptr %i.c, align 4, !tbaa !48 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cc, float %i.cd) ; 2 uses
  %i.cf = load <2 x float>, ptr %i.cb, align 4, !tbaa !19
  %i.cg = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.cj) ; 2 uses
  %i.cl = load float, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %i.cm = load float, ptr %i.e, align 4, !tbaa !23 ; 2 uses
  %i.cn = fcmp olt float %i.cl, %i.ce
  %.sroa.speculated2.i = select i1 %i.cn, float %i.ce, float %i.cl ; 2 uses
  %i.co = fcmp olt float %i.cm, %.sroa.speculated2.i
  %.sroa.speculated.i = select i1 %i.co, float %i.cm, float %.sroa.speculated2.i
  store float %.sroa.speculated.i, ptr %.01522, align 4, !tbaa !19
  %i.cp = load float, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %i.cq = load float, ptr %i.e, align 4, !tbaa !23 ; 2 uses
  %i.cr = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.cs = fcmp olt float %i.cp, %i.cr
  %.sroa.speculated2.i17 = select i1 %i.cs, float %i.cr, float %i.cp ; 2 uses
  %i.ct = fcmp olt float %i.cq, %.sroa.speculated2.i17
  %.sroa.speculated.i18 = select i1 %i.ct, float %i.cq, float %.sroa.speculated2.i17
  %i.cu = getelementptr inbounds nuw i8, ptr %.01522, i64 4
  store float %.sroa.speculated.i18, ptr %i.cu, align 4, !tbaa !19
  %i.cv = load float, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %i.cw = load float, ptr %i.e, align 4, !tbaa !23 ; 2 uses
  %i.cx = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.cy = fcmp olt float %i.cv, %i.cx
  %.sroa.speculated2.i19 = select i1 %i.cy, float %i.cx, float %i.cv ; 2 uses
  %i.cz = fcmp olt float %i.cw, %.sroa.speculated2.i19
  %.sroa.speculated.i20 = select i1 %i.cz, float %i.cw, float %.sroa.speculated2.i19
  %i.da = getelementptr inbounds nuw i8, ptr %.01522, i64 8
  store float %.sroa.speculated.i20, ptr %i.da, align 4, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %.023, i64 12
  %i.dc = load float, ptr %i.db, align 4, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %.01522, i64 12
  store float %i.dc, ptr %i.dd, align 4, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %.01522, i64 16
  %i.dg = add nuw nsw i64 %.01621, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_519RangeMinMaxRendererC2ERSt10shared_ptrIKNS_11RangeOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load <4 x double>, ptr %i.c, align 8, !tbaa !17
  %i.e = shufflevector <4 x double> %i.d, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.f = fptrunc <4 x double> %i.e to <4 x float>
  store <4 x float> %i.f, ptr %i.a, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519RangeMinMaxRendererE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519RangeMinMaxRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.d = shl i64 %3, 4                            ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 %i.d       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %bound0 = icmp ult ptr %2, %i.f
  %bound1 = icmp ult ptr %1, %i.e
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %2, %i.g
  %bound130 = icmp ult ptr %i.b, %i.e
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.h = shl i64 %n.vec, 4                        ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = getelementptr i8, ptr %1, i64 %i.h
  %i.k = load float, ptr %i.b, align 8, !tbaa !22, !alias.scope !55
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.l = load float, ptr %i.c, align 4, !tbaa !23, !alias.scope !55
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.l, i64 0 ; 3 uses
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <8 x i32> zeroinitializer
  %5 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.m
  %next.gep32 = getelementptr i8, ptr %1, i64 %i.m ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.n, i64 16
  %i.o = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.o, i64 32
  %i.p = getelementptr i8, ptr %1, i64 %i.m       ; 4 uses
  %next.gep35 = getelementptr i8, ptr %i.p, i64 48
  %i.q = load float, ptr %next.gep32, align 4, !tbaa !19, !alias.scope !56
  %i.r = load float, ptr %next.gep33, align 4, !tbaa !19, !alias.scope !56
  %i.s = load float, ptr %next.gep34, align 4, !tbaa !19, !alias.scope !56
  %i.t = load float, ptr %next.gep35, align 4, !tbaa !19, !alias.scope !56
  %i.u = insertelement <4 x float> poison, float %i.q, i64 0
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 1
  %i.w = insertelement <4 x float> %i.v, float %i.s, i64 2
  %i.x = insertelement <4 x float> %i.w, float %i.t, i64 3 ; 2 uses
  %i.y = fcmp olt <4 x float> %broadcast.splat, %i.x
  %i.z = select <4 x i1> %i.y, <4 x float> %i.x, <4 x float> %broadcast.splat ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep32, i64 4
  %i.ab = getelementptr i8, ptr %i.n, i64 20
  %i.ac = getelementptr i8, ptr %i.o, i64 36
  %i.ad = getelementptr i8, ptr %i.p, i64 52
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !19, !alias.scope !56
  %i.af = load float, ptr %i.ab, align 4, !tbaa !19, !alias.scope !56
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !19, !alias.scope !56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !19, !alias.scope !56
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3 ; 2 uses
  %i.am = fcmp olt <4 x float> %broadcast.splat, %i.al
  %i.an = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> %broadcast.splat ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep32, i64 8
  %i.ap = getelementptr i8, ptr %i.n, i64 24
  %i.aq = getelementptr i8, ptr %i.o, i64 40
  %i.ar = getelementptr i8, ptr %i.p, i64 56
  %i.as = load float, ptr %i.ao, align 4, !tbaa !19, !alias.scope !56
  %i.at = load float, ptr %i.ap, align 4, !tbaa !19, !alias.scope !56
  %i.au = load float, ptr %i.aq, align 4, !tbaa !19, !alias.scope !56
  %i.av = load float, ptr %i.ar, align 4, !tbaa !19, !alias.scope !56
  %i.aw = insertelement <4 x float> poison, float %i.as, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 2
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 3 ; 2 uses
  %i.ba = fcmp olt <4 x float> %broadcast.splat, %i.az
  %i.bb = select <4 x i1> %i.ba, <4 x float> %i.az, <4 x float> %broadcast.splat ; 2 uses
  %i.bc = fcmp olt <4 x float> %broadcast.splat43, %i.bb
  %i.bd = select <4 x i1> %i.bc, <4 x float> %broadcast.splat43, <4 x float> %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %next.gep32, i64 12
  %i.bf = getelementptr i8, ptr %i.n, i64 28
  %i.bg = getelementptr i8, ptr %i.o, i64 44
  %i.bh = getelementptr i8, ptr %i.p, i64 60
  %i.bi = load float, ptr %i.be, align 4, !tbaa !19, !alias.scope !56
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !19, !alias.scope !56
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !19, !alias.scope !56
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !19, !alias.scope !56
  %i.bm = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 1
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 3
  %6 = shufflevector <4 x float> %i.z, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fcmp olt <8 x float> %4, %6
  %i.bq = shufflevector <4 x float> %i.z, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = select <8 x i1> %7, <8 x float> %5, <8 x float> %i.bq
  %i.br = shufflevector <4 x float> %i.bd, <4 x float> %i.bp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %8, <8 x float> %i.br, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !19, !alias.scope !57, !noalias !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.023.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01522.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.i, %middle.block ]
  %.01621.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.023 = phi i64 [ %i.cr, %scalar.ph ], [ %.023.ph, %scalar.ph.preheader ]
  %.01522 = phi ptr [ %i.cq, %scalar.ph ], [ %.01522.ph, %scalar.ph.preheader ] ; 5 uses
  %.01621 = phi ptr [ %i.cp, %scalar.ph ], [ %.01621.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bt = load float, ptr %.01621, align 4, !tbaa !19 ; 2 uses
  %i.bu = load float, ptr %i.b, align 8, !tbaa !22 ; 2 uses
  %i.bv = load float, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.bw = fcmp olt float %i.bu, %i.bt
  %.sroa.speculated2.i = select i1 %i.bw, float %i.bt, float %i.bu ; 2 uses
  %i.bx = fcmp olt float %i.bv, %.sroa.speculated2.i
  %.sroa.speculated.i = select i1 %i.bx, float %i.bv, float %.sroa.speculated2.i
  store float %.sroa.speculated.i, ptr %.01522, align 4, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %.01621, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !19 ; 2 uses
  %i.ca = load float, ptr %i.b, align 8, !tbaa !22 ; 2 uses
  %i.cb = load float, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.cc = fcmp olt float %i.ca, %i.bz
  %.sroa.speculated2.i17 = select i1 %i.cc, float %i.bz, float %i.ca ; 2 uses
  %i.cd = fcmp olt float %i.cb, %.sroa.speculated2.i17
  %.sroa.speculated.i18 = select i1 %i.cd, float %i.cb, float %.sroa.speculated2.i17
  %i.ce = getelementptr inbounds nuw i8, ptr %.01522, i64 4
  store float %.sroa.speculated.i18, ptr %i.ce, align 4, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %.01621, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !19 ; 2 uses
  %i.ch = load float, ptr %i.b, align 8, !tbaa !22 ; 2 uses
  %i.ci = load float, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.cj = fcmp olt float %i.ch, %i.cg
  %.sroa.speculated2.i19 = select i1 %i.cj, float %i.cg, float %i.ch ; 2 uses
  %i.ck = fcmp olt float %i.ci, %.sroa.speculated2.i19
  %.sroa.speculated.i20 = select i1 %i.ck, float %i.ci, float %.sroa.speculated2.i19
  %i.cl = getelementptr inbounds nuw i8, ptr %.01522, i64 8
  store float %.sroa.speculated.i20, ptr %i.cl, align 4, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %.01621, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %.01522, i64 12
  store float %i.cn, ptr %i.co, align 4, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %.01621, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.01522, i64 16
  %i.cr = add nuw nsw i64 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_516RangeMinRendererC2ERSt10shared_ptrIKNS_11RangeOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load <4 x double>, ptr %i.c, align 8, !tbaa !17
  %i.e = shufflevector <4 x double> %i.d, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.f = fptrunc <4 x double> %i.e to <4 x float>
  store <4 x float> %i.f, ptr %i.a, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_516RangeMinRendererE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_516RangeMinRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 4                            ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %2, %i.e
  %bound1 = icmp ult ptr %i.b, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %2, %i.f
  %bound130 = icmp ult ptr %1, %i.d
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.g = shl i64 %n.vec, 4                        ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %i.j = load float, ptr %i.b, align 8, !tbaa !19, !alias.scope !65
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %i.j, i64 0 ; 3 uses
  %broadcast.splat37 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <8 x i32> zeroinitializer
  %5 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.k
  %next.gep32 = getelementptr i8, ptr %1, i64 %i.k ; 4 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.l, i64 16
  %i.m = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.m, i64 32
  %i.n = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep35 = getelementptr i8, ptr %i.n, i64 48
  %i.o = load float, ptr %next.gep32, align 4, !tbaa !19, !alias.scope !66
  %i.p = load float, ptr %next.gep33, align 4, !tbaa !19, !alias.scope !66
  %i.q = load float, ptr %next.gep34, align 4, !tbaa !19, !alias.scope !66
  %i.r = load float, ptr %next.gep35, align 4, !tbaa !19, !alias.scope !66
  %i.s = insertelement <4 x float> poison, float %i.o, i64 0
  %i.t = insertelement <4 x float> %i.s, float %i.p, i64 1
  %i.u = insertelement <4 x float> %i.t, float %i.q, i64 2
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep32, i64 4
  %i.x = getelementptr i8, ptr %i.l, i64 20
  %i.y = getelementptr i8, ptr %i.m, i64 36
  %i.z = getelementptr i8, ptr %i.n, i64 52
  %i.aa = load float, ptr %i.w, align 4, !tbaa !19, !alias.scope !66
  %i.ab = load float, ptr %i.x, align 4, !tbaa !19, !alias.scope !66
  %i.ac = load float, ptr %i.y, align 4, !tbaa !19, !alias.scope !66
  %i.ad = load float, ptr %i.z, align 4, !tbaa !19, !alias.scope !66
  %i.ae = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep32, i64 8
  %i.aj = getelementptr i8, ptr %i.l, i64 24
  %i.ak = getelementptr i8, ptr %i.m, i64 40
  %i.al = getelementptr i8, ptr %i.n, i64 56
  %i.am = load float, ptr %i.ai, align 4, !tbaa !19, !alias.scope !66
  %i.an = load float, ptr %i.aj, align 4, !tbaa !19, !alias.scope !66
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !19, !alias.scope !66
  %i.ap = load float, ptr %i.al, align 4, !tbaa !19, !alias.scope !66
  %i.aq = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3 ; 2 uses
  %i.au = fcmp olt <4 x float> %broadcast.splat37, %i.at
  %i.av = select <4 x i1> %i.au, <4 x float> %i.at, <4 x float> %broadcast.splat37
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep32, i64 12
  %i.ax = getelementptr i8, ptr %i.l, i64 28
  %i.ay = getelementptr i8, ptr %i.m, i64 44
  %i.az = getelementptr i8, ptr %i.n, i64 60
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !19, !alias.scope !66
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !19, !alias.scope !66
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !19, !alias.scope !66
  %i.bd = load float, ptr %i.az, align 4, !tbaa !19, !alias.scope !66
  %i.be = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 3
  %6 = shufflevector <4 x float> %i.v, <4 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fcmp olt <8 x float> %4, %6
  %i.bi = shufflevector <4 x float> %i.v, <4 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = select <8 x i1> %7, <8 x float> %i.bi, <8 x float> %5
  %i.bj = shufflevector <4 x float> %i.av, <4 x float> %i.bh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %8, <8 x float> %i.bj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !19, !alias.scope !67, !noalias !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.023.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01522.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01621.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.023 = phi i64 [ %i.cg, %scalar.ph ], [ %.023.ph, %scalar.ph.preheader ]
  %.01522 = phi ptr [ %i.cf, %scalar.ph ], [ %.01522.ph, %scalar.ph.preheader ] ; 5 uses
  %.01621 = phi ptr [ %i.ce, %scalar.ph ], [ %.01621.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bl = load float, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.bm = load float, ptr %.01621, align 4, !tbaa !19 ; 2 uses
  %i.bn = fcmp olt float %i.bl, %i.bm
  %i.bo = select i1 %i.bn, float %i.bm, float %i.bl
  store float %i.bo, ptr %.01522, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %.01621, i64 4
  %i.bq = load float, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.br = load float, ptr %i.bp, align 4, !tbaa !19 ; 2 uses
  %i.bs = fcmp olt float %i.bq, %i.br
  %i.bt = select i1 %i.bs, float %i.br, float %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %.01522, i64 4
  store float %i.bt, ptr %i.bu, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %.01621, i64 8
  %i.bw = load float, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !19 ; 2 uses
  %i.by = fcmp olt float %i.bw, %i.bx
  %i.bz = select i1 %i.by, float %i.bx, float %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %.01522, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %.01621, i64 12
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %.01522, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %.01621, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.01522, i64 16
  %i.cg = add nuw nsw i64 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_516RangeMaxRendererC2ERSt10shared_ptrIKNS_11RangeOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load <4 x double>, ptr %i.c, align 8, !tbaa !17
  %i.e = shufflevector <4 x double> %i.d, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.f = fptrunc <4 x double> %i.e to <4 x float>
  store <4 x float> %i.f, ptr %i.a, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_516RangeMaxRendererE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_516RangeMaxRenderer5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 4                            ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %bound0 = icmp ult ptr %2, %i.e
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %2, %i.f
  %bound130 = icmp ult ptr %i.b, %i.d
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.g = shl i64 %n.vec, 4                        ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 %i.g
  %i.j = load float, ptr %i.b, align 4, !tbaa !19, !alias.scope !75
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %i.j, i64 0 ; 3 uses
  %broadcast.splat37 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <8 x i32> zeroinitializer
  %5 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.k
  %next.gep32 = getelementptr i8, ptr %1, i64 %i.k ; 4 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.l, i64 16
  %i.m = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.m, i64 32
  %i.n = getelementptr i8, ptr %1, i64 %i.k       ; 4 uses
  %next.gep35 = getelementptr i8, ptr %i.n, i64 48
  %i.o = load float, ptr %next.gep32, align 4, !tbaa !19, !alias.scope !76
  %i.p = load float, ptr %next.gep33, align 4, !tbaa !19, !alias.scope !76
  %i.q = load float, ptr %next.gep34, align 4, !tbaa !19, !alias.scope !76
  %i.r = load float, ptr %next.gep35, align 4, !tbaa !19, !alias.scope !76
  %i.s = insertelement <4 x float> poison, float %i.o, i64 0
  %i.t = insertelement <4 x float> %i.s, float %i.p, i64 1
  %i.u = insertelement <4 x float> %i.t, float %i.q, i64 2
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep32, i64 4
  %i.x = getelementptr i8, ptr %i.l, i64 20
  %i.y = getelementptr i8, ptr %i.m, i64 36
  %i.z = getelementptr i8, ptr %i.n, i64 52
  %i.aa = load float, ptr %i.w, align 4, !tbaa !19, !alias.scope !76
  %i.ab = load float, ptr %i.x, align 4, !tbaa !19, !alias.scope !76
  %i.ac = load float, ptr %i.y, align 4, !tbaa !19, !alias.scope !76
  %i.ad = load float, ptr %i.z, align 4, !tbaa !19, !alias.scope !76
  %i.ae = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep32, i64 8
  %i.aj = getelementptr i8, ptr %i.l, i64 24
  %i.ak = getelementptr i8, ptr %i.m, i64 40
  %i.al = getelementptr i8, ptr %i.n, i64 56
  %i.am = load float, ptr %i.ai, align 4, !tbaa !19, !alias.scope !76
  %i.an = load float, ptr %i.aj, align 4, !tbaa !19, !alias.scope !76
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !19, !alias.scope !76
  %i.ap = load float, ptr %i.al, align 4, !tbaa !19, !alias.scope !76
  %i.aq = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3 ; 2 uses
  %i.au = fcmp olt <4 x float> %i.at, %broadcast.splat37
  %i.av = select <4 x i1> %i.au, <4 x float> %i.at, <4 x float> %broadcast.splat37
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep32, i64 12
  %i.ax = getelementptr i8, ptr %i.l, i64 28
  %i.ay = getelementptr i8, ptr %i.m, i64 44
  %i.az = getelementptr i8, ptr %i.n, i64 60
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !19, !alias.scope !76
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !19, !alias.scope !76
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !19, !alias.scope !76
  %i.bd = load float, ptr %i.az, align 4, !tbaa !19, !alias.scope !76
  %i.be = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 3
  %6 = shufflevector <4 x float> %i.v, <4 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fcmp olt <8 x float> %6, %4
  %i.bi = shufflevector <4 x float> %i.v, <4 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = select <8 x i1> %7, <8 x float> %i.bi, <8 x float> %5
  %i.bj = shufflevector <4 x float> %i.av, <4 x float> %i.bh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %8, <8 x float> %i.bj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !19, !alias.scope !77, !noalias !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.023.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.01522.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph ], [ %i.h, %middle.block ]
  %.01621.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.i, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.023 = phi i64 [ %i.cg, %scalar.ph ], [ %.023.ph, %scalar.ph.preheader ]
  %.01522 = phi ptr [ %i.cf, %scalar.ph ], [ %.01522.ph, %scalar.ph.preheader ] ; 5 uses
  %.01621 = phi ptr [ %i.ce, %scalar.ph ], [ %.01621.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bl = load float, ptr %.01621, align 4, !tbaa !19 ; 2 uses
  %i.bm = load float, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  %i.bn = fcmp olt float %i.bl, %i.bm
  %i.bo = select i1 %i.bn, float %i.bl, float %i.bm
  store float %i.bo, ptr %.01522, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %.01621, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !19 ; 2 uses
  %i.br = load float, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  %i.bs = fcmp olt float %i.bq, %i.br
  %i.bt = select i1 %i.bs, float %i.bq, float %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %.01522, i64 4
  store float %i.bt, ptr %i.bu, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %.01621, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !19 ; 2 uses
  %i.bx = load float, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  %i.by = fcmp olt float %i.bw, %i.bx
  %i.bz = select i1 %i.by, float %i.bw, float %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %.01522, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %.01621, i64 12
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %.01522, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %.01621, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.01522, i64 16
  %i.cg = add nuw nsw i64 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %3
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !74
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_516GetRangeRendererERSt10shared_ptrIKNS_11RangeOpDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.8") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !27
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !29
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !29
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !15
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %.pre, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.l = load i32, ptr %i.k, align 8, !tbaa !109
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #17
          to label %bb.aa unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #16
  br label %bb.z

bb.h:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511RangeOpDataEEC2ERKS3_.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !15     ; 4 uses
  %i.q = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData10minIsEmptyEv(ptr noundef nonnull align 8 dereferenceable(228) %i.p)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.r ; 4 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !32, !noalias !110
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !33, !noalias !110
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !9, !noalias !110
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.u = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData10maxIsEmptyEv(ptr noundef nonnull align 8 dereferenceable(228) %i.p)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMinRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.r ; 4 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMinRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !32, !noalias !111
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 1, ptr %i.x, align 4, !tbaa !33, !noalias !111
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_516RangeMinRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.v, align 8, !tbaa !9, !noalias !111
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.y = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511RangeOpData6scalesEv(ptr noundef nonnull align 8 dereferenceable(228) %i.p)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.y, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519RangeMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.r ; 4 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519RangeMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !32, !noalias !112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 1, ptr %i.ab, align 4, !tbaa !33, !noalias !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519RangeMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.z, align 8, !tbaa !9, !noalias !112
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ac = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_524RangeScaleMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.r ; 4 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_524RangeScaleMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !32, !noalias !113
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 1, ptr %i.ae, align 4, !tbaa !33, !noalias !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_524RangeScaleMinMaxRendererESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ac, align 8, !tbaa !9, !noalias !113
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.j, %bb.f, %bb.h, %bb.k, %bb.n, %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_524RangeScaleMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519RangeMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMinRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sink57 = phi ptr [ %i.ac, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_524RangeScaleMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.z, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519RangeMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.v, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMinRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.r, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.sink35 = phi ptr [ getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_524RangeScaleMinMaxRendererE, i64 16), %_ZNSt12__shared_ptrIN16OpenColorIO_v2_524RangeScaleMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519RangeMinMaxRendererE, i64 16), %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519RangeMinMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_516RangeMinRendererE, i64 16), %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMinRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_516RangeMaxRendererE, i64 16), %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516RangeMaxRendererELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink57, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink57, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.aj = load <4 x double>, ptr %i.ai, align 8, !tbaa !17, !noalias !114
  %i.ak = shufflevector <4 x double> %i.aj, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.al = fptrunc <4 x double> %i.ak to <4 x float>
  store <4 x float> %i.al, ptr %i.ah, align 8, !tbaa !19, !noalias !114
  store ptr %.sink35, ptr %i.ag, align 8, !tbaa !9, !noalias !114
  store ptr %i.ag, ptr %0, align 8, !tbaa !117
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink57, ptr %i.am, align 8, !tbaa !27
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !27  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.an, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
end_hunk_0
