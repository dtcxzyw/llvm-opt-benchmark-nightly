Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerKCF?download=true
inline.NumInlined: 1275
inline.NumDeleted: 443
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0
@.str.18 = private unnamed_addr constant [9 x i8] c"desc_pca\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"compress_feature\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"compressed_size\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"pca_learning_rate\00", align 1
@_ZTIN2cv8tracking4impl14TrackerKCFImplE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv8tracking4impl14TrackerKCFImplE, ptr @_ZTIN2cv8tracking10TrackerKCFE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv8tracking4impl14TrackerKCFImplE = hidden constant [36 x i8] c"N2cv8tracking4impl14TrackerKCFImplE\00", align 1
@_ZTIN2cv8tracking10TrackerKCFE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv8tracking10TrackerKCFE, ptr @_ZTIN2cv7TrackerE }, align 8
@_ZTSN2cv8tracking10TrackerKCFE = constant [27 x i8] c"N2cv8tracking10TrackerKCFE\00", align 1
@_ZTIN2cv7TrackerE = external constant ptr
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"compressed_sz<=src.channels()\00", align 1
@__func__._ZN2cv8tracking4impl14TrackerKCFImpl22updateProjectionMatrixENS_3MatERS3_S4_fiRSt6vectorIS3_SaIS3_EERS5_INS_7Scalar_IdEESaISA_EES3_S3_S3_S3_S3_ = private unnamed_addr constant [23 x i8] c"updateProjectionMatrix\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [100 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv8tracking4impl15TrackerKCFModelESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN2cv8tracking4impl15TrackerKCFModelE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN2cv8tracking4impl15TrackerKCFModelE, ptr @_ZN2cv6detail8tracking12TrackerModelD2Ev, ptr @_ZN2cv8tracking4impl15TrackerKCFModelD0Ev, ptr @_ZN2cv8tracking4impl15TrackerKCFModel19modelEstimationImplERKSt6vectorINS_3MatESaIS4_EE, ptr @_ZN2cv8tracking4impl15TrackerKCFModel15modelUpdateImplEv] }, comdat, align 8
@_ZTIN2cv8tracking4impl15TrackerKCFModelE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv8tracking4impl15TrackerKCFModelE, ptr @_ZTIN2cv6detail8tracking12TrackerModelE }, comdat, align 8
@_ZTSN2cv8tracking4impl15TrackerKCFModelE = linkonce_odr hidden constant [37 x i8] c"N2cv8tracking4impl15TrackerKCFModelE\00", comdat, align 1
@_ZTIN2cv6detail8tracking12TrackerModelE = external constant ptr
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@.str.24 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [99 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"No element name has been given\00", align 1
@__func__._ZN2cvlsIfEERNS_11FileStorageES2_RKT_ = private unnamed_addr constant [11 x i8] c"operator<<\00", align 1
@.str.27 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/persistence.hpp\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [106 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv6legacy8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN2cv6legacy8tracking4impl14TrackerKCFImplE = linkonce_odr hidden constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZTIN2cv6legacy8tracking4impl14TrackerKCFImplE, ptr @_ZN2cv6legacy8tracking4impl14TrackerKCFImplD1Ev, ptr @_ZN2cv6legacy8tracking4impl14TrackerKCFImplD0Ev, ptr @_ZN2cv9Algorithm5clearEv, ptr @_ZNK2cv6legacy8tracking4impl14TrackerKCFImpl5writeERNS_11FileStorageE, ptr @_ZN2cv6legacy8tracking4impl14TrackerKCFImpl4readERKNS_8FileNodeE, ptr @_ZNK2cv9Algorithm5emptyEv, ptr @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev, ptr @_ZN2cv6legacy8tracking4impl14TrackerKCFImpl8initImplERKNS_3MatERKNS_5Rect_IdEE, ptr @_ZN2cv6legacy8tracking4impl14TrackerKCFImpl10updateImplERKNS_3MatERNS_5Rect_IdEE, ptr @_ZN2cv6legacy8tracking4impl14TrackerKCFImpl19setFeatureExtractorEPFvNS_3MatENS_5Rect_IiEERS4_Eb] }, comdat, align 8
@_ZTTN2cv6legacy8tracking4impl14TrackerKCFImplE = linkonce_odr hidden unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-80, 88) ({ [21 x ptr] }, ptr @_ZTVN2cv6legacy8tracking4impl14TrackerKCFImplE, i32 0, i32 0, i32 10), ptr getelementptr inbounds inrange(-80, 88) ({ [21 x ptr] }, ptr @_ZTCN2cv6legacy8tracking4impl14TrackerKCFImplE0_NS1_10TrackerKCFE, i32 0, i32 0, i32 10), ptr getelementptr inbounds inrange(-80, 80) ({ [20 x ptr] }, ptr @_ZTCN2cv6legacy8tracking4impl14TrackerKCFImplE0_NS1_7TrackerE, i32 0, i32 0, i32 10), ptr getelementptr inbounds inrange(-80, 80) ({ [20 x ptr] }, ptr @_ZTCN2cv6legacy8tracking4impl14TrackerKCFImplE0_NS1_7TrackerE, i32 0, i32 0, i32 10), ptr getelementptr inbounds inrange(-80, 88) ({ [21 x ptr] }, ptr @_ZTCN2cv6legacy8tracking4impl14TrackerKCFImplE0_NS1_10TrackerKCFE, i32 0, i32 0, i32 10), ptr getelementptr inbounds inrange(-80, 88) ({ [21 x ptr] }, ptr @_ZTVN2cv6legacy8tracking4impl14TrackerKCFImplE, i32 0, i32 0, i32 10)], comdat, align 8
@_ZTCN2cv6legacy8tracking4impl14TrackerKCFImplE0_NS1_10TrackerKCFE = linkonce_odr hidden constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZTIN2cv6legacy8tracking10TrackerKCFE, ptr @_ZN2cv6legacy8tracking10TrackerKCFD1Ev, ptr @_ZN2cv6legacy8tracking10TrackerKCFD0Ev, ptr @_ZN2cv9Algorithm5clearEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK2cv9Algorithm5emptyEv, ptr @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTIN2cv6legacy8tracking10TrackerKCFE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv6legacy8tracking10TrackerKCFE, ptr @_ZTIN2cv6legacy8tracking7TrackerE }, comdat, align 8
@_ZTSN2cv6legacy8tracking10TrackerKCFE = linkonce_odr constant [34 x i8] c"N2cv6legacy8tracking10TrackerKCFE\00", comdat, align 1
@_ZTIN2cv6legacy8tracking7TrackerE = external constant ptr
@_ZTCN2cv6legacy8tracking4impl14TrackerKCFImplE0_NS1_7TrackerE = linkonce_odr hidden constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZTIN2cv6legacy8tracking7TrackerE, ptr @_ZN2cv6legacy8tracking7TrackerD1Ev, ptr @_ZN2cv6legacy8tracking7TrackerD0Ev, ptr @_ZN2cv9Algorithm5clearEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK2cv9Algorithm5emptyEv, ptr @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTIN2cv6legacy8tracking4impl14TrackerKCFImplE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv6legacy8tracking4impl14TrackerKCFImplE, ptr @_ZTIN2cv6legacy8tracking10TrackerKCFE }, comdat, align 8
@_ZTSN2cv6legacy8tracking4impl14TrackerKCFImplE = linkonce_odr hidden constant [43 x i8] c"N2cv6legacy8tracking4impl14TrackerKCFImplE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [108 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv6detail8tracking21TrackerContribSamplerESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [111 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv6detail8tracking24TrackerContribFeatureSetESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@str = private unnamed_addr constant [52 x i8] c"error in customized function of features extractor!\00", align 1
@str.1 = private unnamed_addr constant [55 x i8] c"Rules: roi.width==feat.cols && roi.height = feat.rows \00", align 1

@_ZN2cv8tracking4impl14TrackerKCFImplC1ERKNS0_10TrackerKCF6ParamsE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2cv8tracking4impl14TrackerKCFImplC2ERKNS0_10TrackerKCF6ParamsE
@_ZN2cv8tracking10TrackerKCF6ParamsC1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv8tracking10TrackerKCF6ParamsC2Ev
@_ZN2cv8tracking10TrackerKCFD1Ev = unnamed_addr alias void (ptr), ptr @_ZN2cv8tracking10TrackerKCFD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8tracking4impl14TrackerKCFImplC2ERKNS0_10TrackerKCF6ParamsE(ptr noundef nonnull align 8 dereferenceable(7488) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(44) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader14.preheader:
  tail call void @_ZN2cv7TrackerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv8tracking4impl14TrackerKCFImplE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef nonnull align 4 dereferenceable(44) %1, i64 44, i1 false), !tbaa.struct !143
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.d) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.e) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 736
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.g) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 944
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.h) #25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1152
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.i) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1360
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.j) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1568
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.k) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1776
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.l) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1984
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.m) #25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2192
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.n) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2400
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.o) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2608
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.p) #25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2816
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.q) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3024
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.r) #25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3232
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.s) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3440
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.t) #25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3648
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.u) #25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, i8 0, i64 96, i1 false)
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.w) #25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4160
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.x) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4368
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.y) #25
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4576
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.z) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ab) #25
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 5040
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr) #25
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 5248
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #25
  %.ptr6 = getelementptr inbounds nuw i8, ptr %0, i64 5456
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr6) #25
  %.ptr6.1 = getelementptr inbounds nuw i8, ptr %0, i64 5664
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr6.1) #25
  %.ptr11 = getelementptr inbounds nuw i8, ptr %0, i64 5872
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr11) #25
  %.ptr11.1 = getelementptr inbounds nuw i8, ptr %0, i64 6080
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr11.1) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 6288
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i8 0, i64 96, i1 false)
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ad) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6592
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ae) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 6800
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.af) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7008
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ag) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 7216
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ah) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7432
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7424
  store i8 0, ptr %i.aj, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7425
  store i8 0, ptr %i.ak, align 1, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ai, i8 0, i64 49, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8tracking10TrackerKCFC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2cv7TrackerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv8tracking10TrackerKCFE, i64 16), ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv8tracking10TrackerKCFD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN2cv7TrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8tracking4impl14TrackerKCFImpl4initERKNS_11_InputArrayERKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(7488) initializes((72, 76), (80, 112), (7484, 7488)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca [10 x %"class.cv::Mat"], align 16   ; 35 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.17", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.17", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7484
  store i32 0, ptr %i.a, align 4, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.f = load <2 x i32>, ptr %2, align 4, !tbaa !18
  %i.g = sitofp <2 x i32> %i.f to <2 x double>    ; 4 uses
  store <2 x double> %i.g, ptr %i.b, align 8, !tbaa !61
  %i.h = load <2 x i32>, ptr %i.d, align 4, !tbaa !18
  %i.i = sitofp <2 x i32> %i.h to <2 x double>    ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store <2 x double> %i.i, ptr %i.e, align 8, !tbaa !61
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nnan <2 x double> %shift, %i.i
  %i.k = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.l = fptrunc double %i.k to float
  %i.m = tail call noundef float @sqrtf(float noundef %i.l) #25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load float, ptr %i.n, align 8, !tbaa !155
  %i.p = fmul float %i.m, %i.o                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = fmul float %i.p, %i.p
  %i.s = fdiv float -5.000000e-01, %i.r
  store float %i.s, ptr %i.q, align 8, !tbaa !156
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !157, !range !62, !noundef !63
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !158
  %i.y = sitofp i32 %i.x to double
  %i.z = fcmp ogt double %i.k, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7480
  store i8 1, ptr %i.aa, align 8, !tbaa !64
  %i.ab = fmul nnan <2 x double> %i.g, splat (double 5.000000e-01) ; 2 uses
  store <2 x double> %i.ab, ptr %i.b, align 8, !tbaa !61
  %i.ac = fmul nnan <2 x double> %i.i, splat (double 5.000000e-01) ; 2 uses
  store <2 x double> %i.ac, ptr %i.e, align 8, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ad = phi <2 x double> [ %i.ab, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.ae = phi <2 x double> [ %i.ac, %bb.c ], [ %i.i, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.af = fmul nnan <2 x double> %i.ae, splat (double 5.000000e-01)
  %i.ag = fsub <2 x double> %i.ad, %i.af
  store <2 x double> %i.ag, ptr %i.b, align 8, !tbaa !61
  %i.ah = fmul nnan <2 x double> %i.ae, splat (double 2.000000e+00) ; 3 uses
  store <2 x double> %i.ah, ptr %i.e, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.ak, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !67
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !68
  %17 = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ah)
  %18 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %18)
  %.sroa.2.0.insert.ext.i = zext i32 %i.al to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %17 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @_ZNK2cv8tracking4impl14TrackerKCFImpl19createHanningWindowERKNS_12_OutputArrayENS_5Size_IiEEi(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.am, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 416 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 624 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ao, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 832 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ap, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 1040 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 1248 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ar, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 1456 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 1664 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.at, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 1872 ; 2 uses
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.au, ptr noundef nonnull align 8 dereferenceable(208) %i.ai)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.ax, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !67
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !68
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %7, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ay = load double, ptr %i.j, align 8, !tbaa !69
  %i.az = fptosi double %i.ay to i32
  %i.ba = load double, ptr %i.e, align 8, !tbaa !70
  %i.bb = fptosi double %i.ba to i32
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, i32 noundef %i.az, i32 noundef %i.bb, i32 noundef 5)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 6 uses
  %i.bd = load ptr, ptr %9, align 8, !tbaa !76    ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.bc, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.t, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bi) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.bk = load double, ptr %i.j, align 8, !tbaa !69 ; 2 uses
  %i.bl = fptosi double %i.bk to i32              ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader.lr.ph, label %._crit_edge150.split

.preheader.lr.ph:                                 ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.bn = load double, ptr %i.e, align 8, !tbaa !70 ; 2 uses
  %i.bo = fptosi double %i.bn to i32              ; 6 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.br = fmul double %i.bk, 5.000000e-01         ; 2 uses
  %i.bs = fmul double %i.bn, 5.000000e-01         ; 5 uses
  br i1 %i.bp, label %.preheader.lr.ph.split, label %._crit_edge150.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !77
  %.fr153 = freeze i32 %i.bv
  %i.bw = icmp slt i32 %.fr153, 2
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !78 ; 5 uses
  br i1 %i.bw, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %wide.trip.count160 = zext nneg i32 %i.bl to i64
  %wide.trip.count = zext nneg i32 %i.bo to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.by = icmp eq i32 %i.bo, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod222 = trunc i32 %i.bo to i1
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count165 = zext nneg i32 %i.bo to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.bo, 4
  %n.vec = and i64 %wide.trip.count165, 2147483644 ; 3 uses
  %broadcast.splatinsert218 = insertelement <4 x double> poison, double %i.bs, i64 0
  %broadcast.splat219 = shufflevector <4 x double> %broadcast.splatinsert218, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count165
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us
  %.020149.us = phi i32 [ %i.cs, %._crit_edge.split.us.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.bz = uitofp nneg i32 %.020149.us to double
  %i.ca = fsub double %i.bz, %i.br
  %i.cb = fadd double %i.ca, 1.000000e+00         ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.cb, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index
  %i.cd = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.ce = fsub <4 x double> %i.cd, %broadcast.splat219
  %i.cf = fadd <4 x double> %i.ce, splat (double 1.000000e+00) ; 2 uses
  %i.cg = fmul <4 x double> %i.cf, %i.cf
  %i.ch = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %broadcast.splat, <4 x double> %i.cg)
  %i.ci = fptrunc <4 x double> %i.ch to <4 x float>
  store <4 x float> %i.ci, ptr %i.cc, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv162.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph ], [ %indvars.iv162.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv162
  %i.cl = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.cm = uitofp nneg i32 %i.cl to double
  %i.cn = fsub double %i.cm, %i.bs
  %i.co = fadd double %i.cn, 1.000000e+00         ; 2 uses
  %i.cp = fmul double %i.co, %i.co
  %i.cq = call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %i.cp)
  %i.cr = fptrunc double %i.cq to float
  store float %i.cr, ptr %i.ck, align 4, !tbaa !15
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge.split.us.us, label %scalar.ph, !llvm.loop !145

._crit_edge.split.us.us:                          ; preds = %scalar.ph, %middle.block
  %i.cs = add nuw nsw i32 %.020149.us, 1          ; 2 uses
  %exitcond167.not = icmp eq i32 %i.cs, %i.bl
  br i1 %exitcond167.not, label %._crit_edge150.split, label %.preheader.us, !llvm.loop !146

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvars.iv157 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next158, %._crit_edge.split ] ; 5 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv157 to i32
  %i.cu = uitofp nneg i32 %i.ct to double
  %i.cv = fsub double %i.cu, %i.br
  %i.cw = fadd double %i.cv, 1.000000e+00         ; 6 uses
  br i1 %i.by, label %.epil.preheader, label %.preheader.new

._crit_edge150.split:                             ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.cx = load float, ptr %i.q, align 8, !tbaa !156
  %i.cy = fpext float %i.cx to double
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.da, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !67
end_hunk_0
