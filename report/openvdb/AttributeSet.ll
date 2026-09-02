Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeSet?download=true
inline.NumInlined: 3012
inline.NumDeleted: 1015
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@_ZTISt9exception = external constant ptr
@.str.2 = private unnamed_addr constant [52 x i8] c"Cannot drop attributes as descriptors do not match.\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Cannot rename attribute as descriptors do not match.\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"Cannot reorder attributes as descriptors do not contain the same attributes.\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Cannot swap descriptor as replacement does not match.\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Attribute name contains invalid characters - \00", align 1
@_ZTIN7openvdb5v13_012RuntimeErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7openvdb5v13_012RuntimeErrorE, ptr @_ZTIN7openvdb5v13_09ExceptionE }, comdat, align 8
@_ZTSN7openvdb5v13_012RuntimeErrorE = linkonce_odr constant [31 x i8] c"N7openvdb5v13_012RuntimeErrorE\00", comdat, align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Group name contains invalid characters - \00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Cannot find attribute name to set default value.\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Mis-matching Default Value Type\00", align 1
@_ZTIN7openvdb5v13_09TypeErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7openvdb5v13_09TypeErrorE, ptr @_ZTIN7openvdb5v13_09ExceptionE }, comdat, align 8
@_ZTSN7openvdb5v13_09TypeErrorE = linkonce_odr constant [27 x i8] c"N7openvdb5v13_09TypeErrorE\00", comdat, align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"Cannot insert into a Descriptor with a duplicate name, but different type.\00", align 1
@_ZTIN7openvdb5v13_08KeyErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7openvdb5v13_08KeyErrorE, ptr @_ZTIN7openvdb5v13_09ExceptionE }, comdat, align 8
@_ZTSN7openvdb5v13_08KeyErrorE = linkonce_odr constant [26 x i8] c"N7openvdb5v13_08KeyErrorE\00", comdat, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Failed to insert '\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"' with unregistered attribute type '\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Group offset is out-of-range - \00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Group offset is already in use - \00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Out of range group index.\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Group index invalid.\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Group not found - \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Out of range group offset - \00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Negate character (^) must prefix a name.\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Name contains invalid characters - \00", align 1
@_ZTIN7openvdb5v13_07IoErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7openvdb5v13_07IoErrorE, ptr @_ZTIN7openvdb5v13_09ExceptionE }, comdat, align 8
@_ZTSN7openvdb5v13_07IoErrorE = linkonce_odr constant [25 x i8] c"N7openvdb5v13_07IoErrorE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"LookupError\00", align 1
@_ZTVN7openvdb5v13_011LookupErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_011LookupErrorE, ptr @_ZN7openvdb5v13_09ExceptionD2Ev, ptr @_ZN7openvdb5v13_011LookupErrorD0Ev, ptr @_ZNK7openvdb5v13_09Exception4whatEv] }, comdat, align 8
@_ZTVN7openvdb5v13_09ExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_09ExceptionE, ptr @_ZN7openvdb5v13_09ExceptionD2Ev, ptr @_ZN7openvdb5v13_09ExceptionD0Ev, ptr @_ZNK7openvdb5v13_09Exception4whatEv] }, comdat, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN7openvdb5v13_07MetaMapE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_07MetaMapE, ptr @_ZN7openvdb5v13_07MetaMapD2Ev, ptr @_ZN7openvdb5v13_07MetaMapD0Ev] }, comdat, align 8
@_ZTIN7openvdb5v13_07MetaMapE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7openvdb5v13_07MetaMapE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7openvdb5v13_07MetaMapE = linkonce_odr constant [25 x i8] c"N7openvdb5v13_07MetaMapE\00", comdat, align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"RuntimeError\00", align 1
@_ZTVN7openvdb5v13_012RuntimeErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_012RuntimeErrorE, ptr @_ZN7openvdb5v13_09ExceptionD2Ev, ptr @_ZN7openvdb5v13_012RuntimeErrorD0Ev, ptr @_ZNK7openvdb5v13_09Exception4whatEv] }, comdat, align 8
@.str.32 = private unnamed_addr constant [10 x i8] c"TypeError\00", align 1
@_ZTVN7openvdb5v13_09TypeErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_09TypeErrorE, ptr @_ZN7openvdb5v13_09ExceptionD2Ev, ptr @_ZN7openvdb5v13_09TypeErrorD0Ev, ptr @_ZNK7openvdb5v13_09Exception4whatEv] }, comdat, align 8
@.str.35 = private unnamed_addr constant [9 x i8] c"KeyError\00", align 1
@_ZTVN7openvdb5v13_08KeyErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_08KeyErrorE, ptr @_ZN7openvdb5v13_09ExceptionD2Ev, ptr @_ZN7openvdb5v13_08KeyErrorD0Ev, ptr @_ZNK7openvdb5v13_09Exception4whatEv] }, comdat, align 8
@.str.36 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"IoError\00", align 1
@_ZTVN7openvdb5v13_07IoErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7openvdb5v13_07IoErrorE, ptr @_ZN7openvdb5v13_09ExceptionD2Ev, ptr @_ZN7openvdb5v13_07IoErrorD0Ev, ptr @_ZNK7openvdb5v13_09Exception4whatEv] }, comdat, align 8
@.str.38 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [101 x i8] c"St15_Sp_counted_ptrIPN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"Cannot erase indices as index is out of range.\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [113 x i8] c"St23_Sp_counted_ptr_inplaceIN7openvdb5v13_06points12AttributeSet10DescriptorESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11 = linkonce_odr global %"struct.std::pair.40" zeroinitializer, comdat, align 8
@_ZGVZN7openvdb5v13_06points19TypedAttributeArrayIhNS1_10GroupCodecEE13attributeTypeB5cxx11EvE9sTypeNameB5cxx11 = linkonce_odr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.44 = private unnamed_addr constant [6 x i8] c"uint8\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"grp\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

@_ZN7openvdb5v13_06points12AttributeSetC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7openvdb5v13_06points12AttributeSetC2Ev
@_ZN7openvdb5v13_06points12AttributeSetC1ERKS2_jPKNS1_14AttributeArray18ScopedRegistryLockE = unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN7openvdb5v13_06points12AttributeSetC2ERKS2_jPKNS1_14AttributeArray18ScopedRegistryLockE
@_ZN7openvdb5v13_06points12AttributeSetC1ERKSt10shared_ptrINS2_10DescriptorEEjPKNS1_14AttributeArray18ScopedRegistryLockE = unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN7openvdb5v13_06points12AttributeSetC2ERKSt10shared_ptrINS2_10DescriptorEEjPKNS1_14AttributeArray18ScopedRegistryLockE
@_ZN7openvdb5v13_06points12AttributeSetC1ERKS2_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN7openvdb5v13_06points12AttributeSetC2ERKS2_
@_ZN7openvdb5v13_06points12AttributeSet10DescriptorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7openvdb5v13_06points12AttributeSet10DescriptorC2Ev
@_ZN7openvdb5v13_06points12AttributeSet10DescriptorC1ERKS3_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN7openvdb5v13_06points12AttributeSet10DescriptorC2ERKS3_

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSetC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #31 ; 4 uses
  invoke void @_ZN7openvdb5v13_06points12AttributeSet10DescriptorC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7openvdb5v13_06points12AttributeSet10DescriptorEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 240) #32
  resume { ptr, i32 } %i.d
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSetC2ERKS2_jPKNS1_14AttributeArray18ScopedRegistryLockE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.18", align 8 ; 5 uses
  %5 = alloca %"class.std::shared_ptr.26", align 16 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.26", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::shared_ptr.18", align 8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.a = load ptr, ptr %1, align 8, !tbaa !41, !noalias !177 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !41, !alias.scope !177
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42, !noalias !177 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !42, !alias.scope !177
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK7openvdb5v13_06points12AttributeSet13descriptorPtrEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !177
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !44, !noalias !177
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !44, !noalias !177
  br label %_ZNK7openvdb5v13_06points12AttributeSet13descriptorPtrEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !177 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  br label %_ZNK7openvdb5v13_06points12AttributeSet13descriptorPtrEv.exit

_ZNK7openvdb5v13_06points12AttributeSet13descriptorPtrEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 6                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.t = icmp ugt i64 %i.s, 576460752303423487
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.e:                                             ; preds = %_ZNK7openvdb5v13_06points12AttributeSet13descriptorPtrEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #34
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %_ZNK7openvdb5v13_06points12AttributeSet13descriptorPtrEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i42 = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i42, label %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.v = ashr exact i64 %i.r, 2
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #31
          to label %.lr.ph.i.i.i.i.i.split.us.i unwind label %bb.h ; 5 uses

.lr.ph.i.i.i.i.i.split.us.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.w, ptr %i.k, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !53
  %xtraiter = and i64 %i.s, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol

_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol
  %.09.i.i.i.i.i.us.i.prol = phi ptr [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ], [ %i.w, %.lr.ph.i.i.i.i.i.split.us.i ] ; 2 uses
  %.068.i.i.i.i.i.us.i.prol = phi i64 [ %i.aa, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ], [ %i.s, %.lr.ph.i.i.i.i.i.split.us.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i ]
  %i.aa = add nsw i64 %.068.i.i.i.i.i.us.i.prol, -1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.prol, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.us.i.prol, i8 0, i64 16, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol, !llvm.loop !172

_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol, %.lr.ph.i.i.i.i.i.split.us.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.split.us.i ], [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ]
  %.09.i.i.i.i.i.us.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.split.us.i ], [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ]
  %.068.i.i.i.i.i.us.i.unr = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.split.us.i ], [ %i.aa, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ]
  %i.ac = icmp ult i64 %i.s, 8
  br i1 %i.ac, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i

_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i
  %.09.i.i.i.i.i.us.i = phi ptr [ %i.al, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %.09.i.i.i.i.i.us.i.unr, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i = phi i64 [ %i.ak, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %.068.i.i.i.i.i.us.i.unr, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.us.i, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ak = add nsw i64 %.068.i.i.i.i.i.us.i, -8    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.7 = icmp eq i64 %i.ak, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i.i.us.i.7, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i, !llvm.loop !0

_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i, %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i
  %i.am = phi ptr [ %i.u, %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.x, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %i.x, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit ], [ %i.al, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.am, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.g unwind label %bb.i       ; 4 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit unwind label %bb.j

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ba

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit71

bb.j:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 8) #32
  br label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit71

_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.g, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.075.0 = phi ptr [ null, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.an, %bb.g ] ; 6 uses
  %.032 = phi ptr [ %3, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.an, %bb.g ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !41    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  %i.au = load i64, ptr %i.at, align 8, !tbaa !61
  %.not34 = icmp eq i64 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.not8495 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not8495, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit
  %.not.i = icmp eq ptr %.sroa.075.0, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bd = load ptr, ptr %.sroa.075.0, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i46, label %_ZNKSt14default_deleteIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockEEclEPS4_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 0, ptr %i.bd release, align 1
  br label %_ZNKSt14default_deleteIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockEEclEPS4_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockEEclEPS4_.exit.i: ; preds = %bb.l, %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0, i64 noundef 8) #32
  br label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt14default_deleteIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockEEclEPS4_.exit.i
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67
  %.sroa.072.096 = phi ptr [ %i.aw, %.lr.ph ], [ %i.fm, %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67 ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.072.096, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %.not34, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.072.096, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !69, !noalias !178
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.072.096, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !70, !noalias !178 ; 3 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !71, !alias.scope !179
  store i64 0, ptr %i.az, align 8, !tbaa !70, !alias.scope !179
  store i8 0, ptr %i.ay, align 8, !tbaa !43, !alias.scope !179
  %i.bj = add i64 %i.bi, 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bj)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bk = load i64, ptr %i.az, align 8, !tbaa !70, !alias.scope !179
  %i.bl = and i64 %i.bk, -8
  %i.bm = icmp eq i64 %i.bl, 4611686018427387896
  br i1 %i.bm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bo = load i64, ptr %i.az, align 8, !tbaa !70, !alias.scope !179
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bi
  br i1 %i.bq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #34
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bg, i64 noundef %i.bi)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bs = load ptr, ptr %7, align 8, !tbaa !69, !alias.scope !179 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ay
  br i1 %i.bt, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZNK7openvdb5v13_07MetaMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.26") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.q

_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bu = load <2 x ptr>, ptr %6, align 16, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.bu, ptr %5, align 16, !tbaa !72
  %.pre99 = load ptr, ptr %7, align 8, !tbaa !69  ; 2 uses
  %i.bv = icmp eq ptr %.pre99, %i.ay
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bw = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.pre99, i64 noundef %i.bx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.invoke

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ay
  br i1 %i.ca, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.p
  %.sink = phi ptr [ %i.bs, %bb.p ], [ %i.bz, %bb.q ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.p ], [ %i.by, %bb.q ]
  %i.cb = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cc) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.p ], [ %i.by, %bb.q ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ax

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  %i.cd = load i64, ptr %i.be, align 8, !tbaa !73
  %i.ce = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !76 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 10 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !84
  %i.cj = and i8 %i.ci, 8
  %i.ck = icmp ne i8 %i.cj, 0                     ; 2 uses
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !86
end_hunk_0
begin_hunk_1_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK7openvdb5v13_06points12AttributeSet8getConstEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %1
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  ret ptr %i.d
}

declare void @_ZN7openvdb5v13_06points14AttributeArray6createERKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EjjbPKNS0_8MetadataEPKNS2_18ScopedRegistryLockE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor4typeB5cxx11Em(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %1
  ret ptr %i.c
}

declare void @_ZN7openvdb5v13_06points14AttributeArray9setHiddenEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN7openvdb5v13_06points14AttributeArray12setTransientEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !92
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #33, !inline_history !184
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #33, !inline_history !184
  br label %_ZSt8_DestroyISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEEvPT_.exit.i.i, !prof !93

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #33
  br label %_ZSt8_DestroyISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #32
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSetC2ERKSt10shared_ptrINS2_10DescriptorEEjPKNS1_14AttributeArray18ScopedRegistryLockE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.18", align 8 ; 5 uses
  %5 = alloca %"class.std::shared_ptr.26", align 16 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !42
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !44
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !44
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEC2ERKS5_.exit

_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEC2ERKS5_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 6                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.t = icmp ugt i64 %i.s, 576460752303423487
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEC2ERKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #34
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEC2ERKS5_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i28 = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i28, label %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i

_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.v = ashr exact i64 %i.r, 2
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #31
          to label %.lr.ph.i.i.i.i.i.split.us.i unwind label %bb.h ; 5 uses

.lr.ph.i.i.i.i.i.split.us.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.w, ptr %i.k, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !53
  %xtraiter = and i64 %i.s, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol

_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol
  %.09.i.i.i.i.i.us.i.prol = phi ptr [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ], [ %i.w, %.lr.ph.i.i.i.i.i.split.us.i ] ; 2 uses
  %.068.i.i.i.i.i.us.i.prol = phi i64 [ %i.aa, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ], [ %i.s, %.lr.ph.i.i.i.i.i.split.us.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i ]
  %i.aa = add nsw i64 %.068.i.i.i.i.i.us.i.prol, -1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.prol, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.us.i.prol, i8 0, i64 16, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol, !llvm.loop !185

_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol, %.lr.ph.i.i.i.i.i.split.us.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.split.us.i ], [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ]
  %.09.i.i.i.i.i.us.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.split.us.i ], [ %i.ab, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ]
  %.068.i.i.i.i.i.us.i.unr = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.split.us.i ], [ %i.aa, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol ]
  %i.ac = icmp ult i64 %i.s, 8
  br i1 %i.ac, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i

_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i
  %.09.i.i.i.i.i.us.i = phi ptr [ %i.al, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %.09.i.i.i.i.i.us.i.unr, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i = phi i64 [ %i.ak, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %.068.i.i.i.i.i.us.i.unr, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.us.i, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ak = add nsw i64 %.068.i.i.i.i.i.us.i, -8    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.7 = icmp eq i64 %i.ak, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i.i.i.us.i.7, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i, !llvm.loop !0

_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i, %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i
  %i.am = phi ptr [ %i.u, %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.x, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ], [ %i.x, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.prol.loopexit ], [ %i.al, %_ZSt10_ConstructISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.am, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.g unwind label %bb.i       ; 4 uses

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit unwind label %bb.j

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ap

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit59

bb.j:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 8) #32
  br label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit59

_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.g, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.063.0 = phi ptr [ null, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.an, %bb.g ] ; 6 uses
  %.020 = phi ptr [ %3, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.an, %bb.g ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !41    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  %i.au = load i64, ptr %i.at, align 8, !tbaa !61
  %.not22 = icmp eq i64 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.not7282 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not7282, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EE5resetEPS4_.exit
  %.not.i = icmp eq ptr %.sroa.063.0, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %.sroa.063.0, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i32, label %_ZNKSt14default_deleteIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockEEclEPS4_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 0, ptr %i.bc release, align 1
  br label %_ZNKSt14default_deleteIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockEEclEPS4_.exit.i

_ZNKSt14default_deleteIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockEEclEPS4_.exit.i: ; preds = %bb.l, %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0, i64 noundef 8) #32
  br label %_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockESt14default_deleteIS4_EED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt14default_deleteIN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockEEclEPS4_.exit.i
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55
  %.sroa.060.083 = phi ptr [ %i.aw, %.lr.ph ], [ %i.ek, %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.060.083, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %.not22, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.060.083, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !69, !noalias !190
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.060.083, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !70, !noalias !190 ; 3 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !71, !alias.scope !191
  store i64 0, ptr %i.az, align 8, !tbaa !70, !alias.scope !191
  store i8 0, ptr %i.ay, align 8, !tbaa !43, !alias.scope !191
  %i.bi = add i64 %i.bh, 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bi)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !70, !alias.scope !191
  %i.bk = and i64 %i.bj, -8
  %i.bl = icmp eq i64 %i.bk, 4611686018427387896
  br i1 %i.bl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bn = load i64, ptr %i.az, align 8, !tbaa !70, !alias.scope !191
  %i.bo = sub i64 4611686018427387903, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bh
  br i1 %i.bp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #34
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bf, i64 noundef %i.bh)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.br = load ptr, ptr %7, align 8, !tbaa !69, !alias.scope !191 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ay
  br i1 %i.bs, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZNK7openvdb5v13_07MetaMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.26") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.q

_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bt = load <2 x ptr>, ptr %6, align 16, !tbaa !72
  %i.bu = load ptr, ptr %6, align 16, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.bt, ptr %5, align 16, !tbaa !72
  %.pre86 = load ptr, ptr %7, align 8, !tbaa !69  ; 2 uses
  %i.bv = icmp eq ptr %.pre86, %i.ay
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bw = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.pre86, i64 noundef %i.bx) #32
  %.pre87.pre = load ptr, ptr %5, align 16, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pre87 = phi ptr [ %.pre87.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bu, %_ZNSt12__shared_ptrIKN7openvdb5v13_08MetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.r

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ay
  br i1 %i.ca, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.p
  %.sink = phi ptr [ %i.br, %bb.p ], [ %i.bz, %bb.q ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.p ], [ %i.by, %bb.q ]
  %i.cb = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cc) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.p ], [ %i.by, %bb.q ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.am

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  %i.cd = phi ptr [ %.pre87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ce = load ptr, ptr %0, align 8, !tbaa !41
  %i.cf = load i64, ptr %i.bd, align 8, !tbaa !73
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.ch, i64 %i.cf
end_hunk_1
