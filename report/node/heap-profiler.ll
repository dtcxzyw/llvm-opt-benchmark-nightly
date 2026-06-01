inline.NumInlined: 1357
inline.NumDeleted: 893
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::vector.58" = type { %"struct.std::_Vector_base.59" }
%"struct.std::_Vector_base.59" = type { %"struct.std::_Vector_base<v8::Local<v8::Value>, std::allocator<v8::Local<v8::Value>>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::Local<v8::Value>, std::allocator<v8::Local<v8::Value>>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::Local<v8::Value>, std::allocator<v8::Local<v8::Value>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::Local<v8::Value>, std::allocator<v8::Local<v8::Value>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::Local" = type { %"class.v8::LocalBase" }
%"class.v8::LocalBase" = type { %"class.v8::api_internal::IndirectHandleBase" }
%"class.v8::api_internal::IndirectHandleBase" = type { ptr }
%"class.v8::internal::HeapObjectIterator" = type { ptr, %"class.std::unique_ptr.314", %"class.std::unique_ptr.322", %"class.v8::internal::SpaceIterator", %"class.std::unique_ptr.330" }
%"class.std::unique_ptr.314" = type { %"struct.std::__uniq_ptr_data.315" }
%"struct.std::__uniq_ptr_data.315" = type { %"class.std::__uniq_ptr_impl.316" }
%"class.std::__uniq_ptr_impl.316" = type { %"class.std::tuple.317" }
%"class.std::tuple.317" = type { %"struct.std::_Tuple_impl.318" }
%"struct.std::_Tuple_impl.318" = type { %"struct.std::_Head_base.321" }
%"struct.std::_Head_base.321" = type { ptr }
%"class.std::unique_ptr.322" = type { %"struct.std::__uniq_ptr_data.323" }
%"struct.std::__uniq_ptr_data.323" = type { %"class.std::__uniq_ptr_impl.324" }
%"class.std::__uniq_ptr_impl.324" = type { %"class.std::tuple.325" }
%"class.std::tuple.325" = type { %"struct.std::_Tuple_impl.326" }
%"struct.std::_Tuple_impl.326" = type { %"struct.std::_Head_base.329" }
%"struct.std::_Head_base.329" = type { ptr }
%"class.v8::internal::SpaceIterator" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr.330" = type { %"struct.std::__uniq_ptr_data.331" }
%"struct.std::__uniq_ptr_data.331" = type { %"class.std::__uniq_ptr_impl.332" }
%"class.std::__uniq_ptr_impl.332" = type { %"class.std::tuple.333" }
%"class.std::tuple.333" = type { %"struct.std::_Tuple_impl.334" }
%"struct.std::_Tuple_impl.334" = type { %"struct.std::_Head_base.337" }
%"struct.std::_Head_base.337" = type { ptr }
%"struct.std::pair.343" = type { ptr, ptr }
%"struct.v8::HeapProfiler::HeapSnapshotOptions" = type <{ ptr, ptr, i32, i32, i32, [4 x i8] }>
%class.anon.425 = type { ptr, ptr, ptr }
%class.anon.646 = type <{ ptr, i32, [4 x i8] }>
%"class.v8::internal::FileOutputStream" = type { %"class.v8::OutputStream", %"class.std::basic_ofstream" }
%"class.v8::OutputStream" = type { ptr }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.647 }
%union.anon.647 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.v8::internal::HeapSnapshotJSONSerializer" = type <{ ptr, %"class.v8::base::CustomMatcherTemplateHashMapImpl", i32, i32, ptr, i32, [4 x i8] }>
%"class.v8::base::CustomMatcherTemplateHashMapImpl" = type { %"class.v8::base::TemplateHashMapImpl.56" }
%"class.v8::base::TemplateHashMapImpl.56" = type { %"struct.v8::base::TemplateHashMapImpl<void *, void *, v8::base::HashEqualityThenKeyMatcher<void *, bool (*)(void *, void *)>, v8::base::DefaultAllocationPolicy>::Impl" }
%"struct.v8::base::TemplateHashMapImpl<void *, void *, v8::base::HashEqualityThenKeyMatcher<void *, bool (*)(void *, void *)>, v8::base::DefaultAllocationPolicy>::Impl" = type { %"struct.v8::base::HashEqualityThenKeyMatcher", ptr, i32, i32 }
%"struct.v8::base::HashEqualityThenKeyMatcher" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.v8::internal::StringOutputStream" = type { %"class.v8::OutputStream", %"class.std::__cxx11::basic_stringstream" }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.v8::internal::CombinedHeapObjectIterator" = type { %"class.v8::internal::HeapObjectIterator", %"class.v8::internal::ReadOnlyHeapObjectIterator" }
%"class.v8::internal::ReadOnlyHeapObjectIterator" = type { ptr, %"class.__gnu_cxx::__normal_iterator.720", %"class.v8::internal::ReadOnlyPageObjectIterator" }
%"class.__gnu_cxx::__normal_iterator.720" = type { ptr }
%"class.v8::internal::ReadOnlyPageObjectIterator" = type <{ ptr, i64, i32, [4 x i8] }>
%class.anon.723 = type { ptr, ptr, ptr }
%"struct.heap::base::Stack::Segment" = type { ptr, ptr }
%"class.std::optional.766" = type { %"struct.std::_Optional_base.767" }
%"struct.std::_Optional_base.767" = type { %"struct.std::_Optional_payload.769" }
%"struct.std::_Optional_payload.769" = type { %"struct.std::_Optional_payload.base.781", [7 x i8] }
%"struct.std::_Optional_payload.base.781" = type { %"struct.std::_Optional_payload_base.base.780" }
%"struct.std::_Optional_payload_base.base.780" = type <{ %"union.std::_Optional_payload_base<v8::internal::CppClassNamesAsHeapObjectNameScope>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::CppClassNamesAsHeapObjectNameScope>::_Storage" = type { %"class.v8::internal::CppClassNamesAsHeapObjectNameScope" }
%"class.v8::internal::CppClassNamesAsHeapObjectNameScope" = type { %"class.std::unique_ptr.772" }
%"class.std::unique_ptr.772" = type { %"struct.std::__uniq_ptr_data.773" }
%"struct.std::__uniq_ptr_data.773" = type { %"class.std::__uniq_ptr_impl.774" }
%"class.std::__uniq_ptr_impl.774" = type { %"class.std::tuple.775" }
%"class.std::tuple.775" = type { %"struct.std::_Tuple_impl.776" }
%"struct.std::_Tuple_impl.776" = type { %"struct.std::_Head_base.779" }
%"struct.std::_Head_base.779" = type { ptr }
%"class.v8::internal::HeapSnapshotGenerator" = type { %"class.v8::internal::SnapshottingProgressReportingInterface", ptr, ptr, %"class.v8::internal::V8HeapExplorer", %"class.v8::internal::NativeObjectsExplorer", %"class.v8::base::PointerTemplateHashMapImpl", %"class.std::unordered_map.841", i32, i32, ptr, i32, %"class.std::unordered_set" }
%"class.v8::internal::SnapshottingProgressReportingInterface" = type { ptr }
%"class.v8::internal::V8HeapExplorer" = type { %"class.v8::internal::HeapEntriesAllocator", ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::unordered_map.784", %"class.std::unordered_map.801", %"class.std::unordered_set.815", ptr, %"class.std::vector.829", i64 }
%"class.v8::internal::HeapEntriesAllocator" = type { ptr }
%"class.std::unordered_map.784" = type { %"class.std::_Hashtable.785" }
%"class.std::_Hashtable.785" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::unordered_map.801" = type { %"class.std::_Hashtable.802" }
%"class.std::_Hashtable.802" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::unordered_set.815" = type { %"class.std::_Hashtable.816" }
%"class.std::_Hashtable.816" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::vector.829" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"class.v8::internal::NativeObjectsExplorer" = type { ptr, ptr, ptr, ptr, %"class.std::unique_ptr.833", ptr }
%"class.std::unique_ptr.833" = type { %"struct.std::__uniq_ptr_data.834" }
%"struct.std::__uniq_ptr_data.834" = type { %"class.std::__uniq_ptr_impl.835" }
%"class.std::__uniq_ptr_impl.835" = type { %"class.std::tuple.836" }
%"class.std::tuple.836" = type { %"struct.std::_Tuple_impl.837" }
%"struct.std::_Tuple_impl.837" = type { %"struct.std::_Head_base.840" }
%"struct.std::_Head_base.840" = type { ptr }
%"class.v8::base::PointerTemplateHashMapImpl" = type { %"class.v8::base::TemplateHashMapImpl" }
%"class.v8::base::TemplateHashMapImpl" = type { %"struct.v8::base::TemplateHashMapImpl<void *, void *, v8::base::KeyEqualityMatcher<void *>, v8::base::DefaultAllocationPolicy>::Impl" }
%"struct.v8::base::TemplateHashMapImpl<void *, void *, v8::base::KeyEqualityMatcher<void *>, v8::base::DefaultAllocationPolicy>::Impl" = type { ptr, i32, i32 }
%"class.std::unordered_map.841" = type { %"class.std::_Hashtable.842" }
%"class.std::_Hashtable.842" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::unordered_set" = type { %"class.std::_Hashtable.347" }
%"class.std::_Hashtable.347" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.v8::internal::detail::TaggedOperatorArrowRef.894" = type { %"class.v8::internal::FeedbackVector" }
%"class.v8::internal::FeedbackVector" = type { %"class.v8::internal::TorqueGeneratedFeedbackVector" }
%"class.v8::internal::TorqueGeneratedFeedbackVector" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.896" = type { %"class.v8::internal::JSTypedArray" }
%"class.v8::internal::JSTypedArray" = type { %"class.v8::internal::TorqueGeneratedJSTypedArray" }
%"class.v8::internal::TorqueGeneratedJSTypedArray" = type { %"class.v8::internal::JSArrayBufferView" }
%"class.v8::internal::JSArrayBufferView" = type { %"class.v8::internal::TorqueGeneratedJSArrayBufferView" }
%"class.v8::internal::TorqueGeneratedJSArrayBufferView" = type { %"class.v8::internal::JSAPIObjectWithEmbedderSlots" }
%"class.v8::internal::JSAPIObjectWithEmbedderSlots" = type { %"class.v8::internal::TorqueGeneratedJSAPIObjectWithEmbedderSlots" }
%"class.v8::internal::TorqueGeneratedJSAPIObjectWithEmbedderSlots" = type { %"class.v8::internal::JSObject" }
%"class.v8::internal::JSObject" = type { %"class.v8::internal::TorqueGeneratedJSObject" }
%"class.v8::internal::TorqueGeneratedJSObject" = type { %"class.v8::internal::JSReceiver" }
%"class.v8::internal::JSReceiver" = type { %"class.v8::internal::TorqueGeneratedJSReceiver" }
%"class.v8::internal::TorqueGeneratedJSReceiver" = type { %"class.v8::internal::HeapObject" }
%"class.v8::Local.341" = type { %"class.v8::LocalBase.342" }
%"class.v8::LocalBase.342" = type { %"class.v8::api_internal::IndirectHandleBase" }

$_ZN2v88internal16FileOutputStreamD2Ev = comdat any

$_ZN2v88internal27HeapObjectAllocationTracker9MoveEventEmmi = comdat any

$_ZN2v88internal12HeapSnapshotD2Ev = comdat any

$_ZN2v84base11SmallVectorIiLm32ESaIiEE11FreeStorageEv = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPNS3_13EmbedderGraphEPvES8_ESt6vectorISB_SaISB_EEEENS0_5__ops16_Iter_equals_valIKSB_EEET_SL_SL_T0_St26random_access_iterator_tag = comdat any

$_ZN2v88internal26HeapSnapshotJSONSerializer12StringsMatchEPvS2_ = comdat any

$_ZNKSt14default_deleteIN2v88internal14HeapObjectsMapEEclEPS2_ = comdat any

$_ZN2v88internal21HeapSnapshotGeneratorD2Ev = comdat any

$_ZN2v88internal14V8HeapExplorerD2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt6vectorIN2v86GlobalINS0_6ObjectEEESaIS3_EE17_M_realloc_insertIJPNS0_7IsolateERNS0_5LocalIS2_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

@_ZTVN2v88internal12HeapProfilerE = hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal12HeapProfiler15AllocationEventEmi, ptr @_ZN2v88internal27HeapObjectAllocationTracker9MoveEventEmmi, ptr @_ZN2v88internal12HeapProfiler21UpdateObjectSizeEventEmi, ptr @_ZN2v88internal12HeapProfilerD2Ev, ptr @_ZN2v88internal12HeapProfilerD0Ev] }, align 8
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"is_taking_snapshot_\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN2v88internal16FileOutputStreamE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Out of memory: HashMap::Initialize\00", align 1
@_ZTVSt13basic_filebufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN2v88internal18StringOutputStreamE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTVN2v88internal21HeapSnapshotGeneratorE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN2v88internal14V8HeapExplorerE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"v8-heap-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c".heapsnapshot\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Wrote heap snapshot to %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16

@_ZN2v88internal12HeapProfilerC1EPNS0_4HeapE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal12HeapProfilerC2EPNS0_4HeapE
@_ZN2v88internal12HeapProfilerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal12HeapProfilerD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12HeapProfilerC2EPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 58)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal12HeapProfilerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #22 ; 2 uses
  tail call void @_ZN2v88internal14HeapObjectsMapC1EPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef %1) #23
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 2 uses
  tail call void @_ZN2v88internal14StringsStorageC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #23
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal14HeapObjectsMapC1EPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal14StringsStorageC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12HeapProfilerD2Ev(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal12HeapProfilerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal30HeapProfilerNativeMoveListenerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal30HeapProfilerNativeMoveListenerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal30HeapProfilerNativeMoveListenerEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #23, !inline_history !5
  br label %_ZNSt10unique_ptrIN2v88internal30HeapProfilerNativeMoveListenerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal30HeapProfilerNativeMoveListenerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal30HeapProfilerNativeMoveListenerEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPNS1_13EmbedderGraphEPvES6_ESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal30HeapProfilerNativeMoveListenerESt14default_deleteIS2_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPNS1_13EmbedderGraphEPvES6_ESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPNS1_13EmbedderGraphEPvES6_ESaIS9_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal30HeapProfilerNativeMoveListenerESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN2v88internal20SamplingHeapProfilerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal20SamplingHeapProfilerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal20SamplingHeapProfilerEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPNS1_13EmbedderGraphEPvES6_ESaIS9_EED2Ev.exit
  tail call void @_ZN2v88internal20SamplingHeapProfilerD1Ev(ptr noundef nonnull align 8 dead_on_return(292) dereferenceable(292) %i.n) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 296) #24
  br label %_ZNSt10unique_ptrIN2v88internal20SamplingHeapProfilerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal20SamplingHeapProfilerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPFvPN2v87IsolateEPNS1_13EmbedderGraphEPvES6_ESaIS9_EED2Ev.exit, %_ZNKSt14default_deleteIN2v88internal20SamplingHeapProfilerEEclEPS2_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #23
end_hunk_0
begin_hunk_1_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIPFvPN2v87IsolateEPNS3_13EmbedderGraphEPvES8_ESt6vectorISB_SaISB_EEEENS0_5__ops16_Iter_equals_valIKSB_EEET_SL_SL_T0_St26random_access_iterator_tag:bb.a
  %i.aw = select i1 %i.aq, i1 %i.av, i1 false
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa, i64 16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.ay = phi ptr [ %i.au, %bb.h ], [ %.pre57, %._crit_edge._crit_edge ] ; 2 uses
  %i.az = phi ptr [ %i.ap, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.ax, %bb.h ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.ba = load ptr, ptr %.sroa.032.1, align 8
  %i.bb = icmp eq ptr %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bd, %i.ay
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 16
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge58, %bb.j
  %i.bh = phi ptr [ %i.ay, %bb.j ], [ %.pre61, %._crit_edge._crit_edge58 ]
  %i.bi = phi ptr [ %i.az, %bb.j ], [ %.pre59, %._crit_edge._crit_edge58 ]
  %.sroa.032.2 = phi ptr [ %i.bg, %bb.j ], [ %.sroa.032.0.lcssa, %._crit_edge._crit_edge58 ] ; 3 uses
  %i.bj = load ptr, ptr %.sroa.032.2, align 8
  %i.bk = icmp eq ptr %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bm, %i.bh
  %i.bo = select i1 %i.bk, i1 %i.bn, i1 false
  %spec.select = select i1 %i.bo, ptr %.sroa.032.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit65:             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit67:             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 48
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit65, %.loopexit.loopexit.split.loop.exit67, %bb.k, %._crit_edge, %bb.i, %bb.g
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.032.1, %bb.i ], [ %spec.select, %bb.k ], [ %1, %._crit_edge ], [ %.sroa.032.0.lcssa, %bb.g ], [ %i.br, %.loopexit.loopexit.split.loop.exit67 ], [ %i.bp, %.loopexit.loopexit.split.loop.exit ], [ %i.bq, %.loopexit.loopexit.split.loop.exit65 ], [ %.sroa.032.051, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal26HeapSnapshotJSONSerializer12StringsMatchEPvS2_(ptr noundef %0, ptr noundef %1) #13 comdat align 2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #26
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN2v88internal14HeapObjectsMapEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPvSt4pairIKS0_mESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.06.i.i.i.i.i, align 8    ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #24
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIPvSt4pairIKS0_mESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt10_HashtableIPvSt4pairIKS0_mESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt13unordered_mapIPvmSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_mEEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIPvSt4pairIKS0_mESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.m = load i64, ptr %i.g, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt13unordered_mapIPvmSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_mEEED2Ev.exit.i

_ZNSt13unordered_mapIPvmSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_mEEED2Ev.exit.i: ; preds = %bb.c, %_ZNSt10_HashtableIPvSt4pairIKS0_mESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2v88internal14HeapObjectsMap12TimeIntervalESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapIPvmSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_mEEED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorIN2v88internal14HeapObjectsMap12TimeIntervalESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN2v88internal14HeapObjectsMap12TimeIntervalESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt13unordered_mapIPvmSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_mEEED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN2v88internal14HeapObjectsMap9EntryInfoESaIS3_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal14HeapObjectsMap12TimeIntervalESaIS3_EED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorIN2v88internal14HeapObjectsMap9EntryInfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN2v88internal14HeapObjectsMap9EntryInfoESaIS3_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal14HeapObjectsMap12TimeIntervalESaIS3_EED2Ev.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN2v88internal14HeapObjectsMapD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v88internal14HeapObjectsMap9EntryInfoESaIS3_EED2Ev.exit.i
  tail call void @free(ptr noundef nonnull %i.ad) #23
  br label %_ZN2v88internal14HeapObjectsMapD2Ev.exit

_ZN2v88internal14HeapObjectsMapD2Ev.exit:         ; preds = %_ZNSt6vectorIN2v88internal14HeapObjectsMap9EntryInfoESaIS3_EED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 136) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal14HeapObjectsMapD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal14StringsStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v88internal17AllocationTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v88internal20SamplingHeapProfilerD1Ev(ptr noundef nonnull align 8 dead_on_return(292) dereferenceable(292)) unnamed_addr #3

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal12HeapProfiler12TakeSnapshotENS3_12HeapProfiler19HeapSnapshotOptionsEE3$_0EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call fastcc void @"_ZZN2v88internal12HeapProfiler12TakeSnapshotENS_12HeapProfiler19HeapSnapshotOptionsEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN2v88internal12HeapProfiler12TakeSnapshotENS_12HeapProfiler19HeapSnapshotOptionsEENK3$_0clEv"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 align 2 {
bb.a:
  %1 = alloca %"class.std::optional.766", align 8 ; 5 uses
  %2 = alloca %"class.v8::internal::HeapSnapshotGenerator", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !31, !align !40
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 508
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2040
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %_ZNSt8optionalIN2v88internal34CppClassNamesAsHeapObjectNameScopeEE7emplaceIJPNS0_7CppHeapEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit

_ZNSt8optionalIN2v88internal34CppClassNamesAsHeapObjectNameScopeEE7emplaceIJPNS0_7CppHeapEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit: ; preds = %bb.b
  call void @_ZN2v88internal34CppClassNamesAsHeapObjectNameScopeC1EPNS_7CppHeapE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.n) #23
  store i8 1, ptr %i.b, align 8
  %.pre = load ptr, ptr %i.c, align 8
  %.pre1 = load ptr, ptr %.pre, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8optionalIN2v88internal34CppClassNamesAsHeapObjectNameScopeEE7emplaceIJPNS0_7CppHeapEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit, %bb.b, %bb.a
  %i.o = phi ptr [ %.pre1, %_ZNSt8optionalIN2v88internal34CppClassNamesAsHeapObjectNameScopeEE7emplaceIJPNS0_7CppHeapEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !31, !align !40 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.z = load i32, ptr %i.y, align 8
  call void @_ZN2v88internal21HeapSnapshotGeneratorC1EPNS0_12HeapSnapshotEPNS_15ActivityControlEPNS_12HeapProfiler18ObjectNameResolverEPNS0_4HeapEN5cppgc18EmbedderStackStateE(ptr noundef nonnull align 8 dereferenceable(504) %2, ptr noundef %i.o, ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.x, i32 noundef %i.z) #23
  %i.aa = call noundef zeroext i1 @_ZN2v88internal21HeapSnapshotGenerator16GenerateSnapshotEv(ptr noundef nonnull align 8 dereferenceable(504) %2) #23
  br i1 %i.aa, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !31, !align !40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v88internal12HeapSnapshotD2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %i.ac) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 584) #24
  %.pre2 = load ptr, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi ptr [ %.pre2, %bb.e ], [ %i.ab, %bb.d ]
  store ptr null, ptr %i.ae, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

bb.g:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !nonnull !31, !align !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.ag, align 8
  store ptr %i.al, ptr %i.ai, align 8
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ah, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.af, align 8            ; 10 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 4 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #22 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %i.bb = load ptr, ptr %i.ag, align 8
  store ptr %i.bb, ptr %i.ba, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.ao, %i.ai
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = add i64 %i.ap, -8
  %i.bd = sub i64 %i.bc, %i.aq                    ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bg = add i64 %i.ap, -8
  %i.bh = sub i64 %i.bg, %i.aq
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bj
  %scevgep7 = getelementptr i8, ptr %i.ao, i64 %i.bj
  %bound0 = icmp ult ptr %i.az, %scevgep7
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.az, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ao, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bn ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.ao, i64 %i.bn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.bo = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !alias.scope !46, !noalias !41
  %wide.load9 = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !46, !noalias !41
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !49, !noalias !46
  store <2 x i64> %wide.load9, ptr %i.bp, align 8, !alias.scope !49, !noalias !46
  %i.bq = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !alias.scope !46, !noalias !41
  store <2 x ptr> splat (ptr null), ptr %i.bq, align 8, !alias.scope !46, !noalias !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.bs = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !44, !noalias !41
  store i64 %i.bs, ptr %.012.i.i.i.i.i, align 8, !alias.scope !41, !noalias !44
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !44, !noalias !41
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !52

_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bl, %middle.block ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.bw = load ptr, ptr %i.aj, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal12HeapSnapshotESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal21HeapSnapshotGeneratorD2Ev:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit

_ZNSt13unordered_setIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEES4_SaIS4_ENSt8__detail9_IdentityENS1_6Object12KeyEqualSafeENS8_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIiSt4pairIKiPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_setIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.q, %.lr.ph.i.i.i.i2 ], [ %i.p, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i.i.i3, align 8     ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 24) #24
  %.not.i.i.i.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIiSt4pairIKiPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !54

_ZNSt10_HashtableIiSt4pairIKiPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_21CppHeapExternalObjectEEENS1_6Object6HasherENS5_12KeyEqualSafeESaIS4_EED2Ev.exit
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt13unordered_mapIiPN2v88internal9HeapEntryESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.y = load i64, ptr %i.s, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #24
  br label %_ZNSt13unordered_mapIiPN2v88internal9HeapEntryESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev.exit

_ZNSt13unordered_mapIiPN2v88internal9HeapEntryESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiPN2v88internal9HeapEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapIiPN2v88internal9HeapEntryESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.ab) #23
  br label %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit

_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit: ; preds = %_ZNSt13unordered_mapIiPN2v88internal9HeapEntryESt4hashIiESt8equal_toIiESaISt4pairIKiS3_EEED2Ev.exit, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN2v88internal21NativeObjectsExplorerD2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal20HeapEntriesAllocatorEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal20HeapEntriesAllocatorEEclEPS2_.exit.i.i: ; preds = %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #23, !inline_history !55
  br label %_ZN2v88internal21NativeObjectsExplorerD2Ev.exit

_ZN2v88internal21NativeObjectsExplorerD2Ev.exit:  ; preds = %_ZN2v84base19TemplateHashMapImplIPvS2_NS0_18KeyEqualityMatcherIS2_EENS0_23DefaultAllocationPolicyEED2Ev.exit, %_ZNKSt14default_deleteIN2v88internal20HeapEntriesAllocatorEEclEPS2_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2v88internal14V8HeapExplorerD2Ev(ptr noundef nonnull align 8 dereferenceable(280) %i.ah) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal34CppClassNamesAsHeapObjectNameScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare void @_ZN2v88internal34CppClassNamesAsHeapObjectNameScopeC1EPNS_7CppHeapE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14V8HeapExplorerD2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal14V8HeapExplorerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS1_6Object6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.m, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %.06.i.i.i.i, align 8      ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #24
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS1_6Object6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS1_6Object6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_14JSGlobalObjectEEENS1_6Object6HasherESt8equal_toIS4_ESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS1_6Object6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.v = load i64, ptr %i.p, align 8
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt13unordered_setIN2v88internal6TaggedINS1_14JSGlobalObjectEEENS1_6Object6HasherESt8equal_toIS4_ESaIS4_EED2Ev.exit

_ZNSt13unordered_setIN2v88internal6TaggedINS1_14JSGlobalObjectEEENS1_6Object6HasherESt8equal_toIS4_ESaIS4_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS1_6Object6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stENS1_6Object12KeyEqualSafeENSD_6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_setIN2v88internal6TaggedINS1_14JSGlobalObjectEEENS1_6Object6HasherESt8equal_toIS4_ESaIS4_EED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.aa, %.lr.ph.i.i.i.i2 ], [ %i.z, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_14JSGlobalObjectEEENS1_6Object6HasherESt8equal_toIS4_ESaIS4_EED2Ev.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.06.i.i.i.i3, align 8    ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 32) #24
  %.not.i.i.i.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stENS1_6Object12KeyEqualSafeENSD_6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !57

_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stENS1_6Object12KeyEqualSafeENSD_6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_setIN2v88internal6TaggedINS1_14JSGlobalObjectEEENS1_6Object6HasherESt8equal_toIS4_ESaIS4_EED2Ev.exit
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = shl i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ae, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.af = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEEPKcNS1_6Object6HasherENS7_12KeyEqualSafeESaISt4pairIKS4_S6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stENS1_6Object12KeyEqualSafeENSD_6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ai = load i64, ptr %i.ac, align 8
  %i.aj = shl i64 %i.ai, 3
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEEPKcNS1_6Object6HasherENS7_12KeyEqualSafeESaISt4pairIKS4_S6_EEED2Ev.exit

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEEPKcNS1_6Object6HasherENS7_12KeyEqualSafeESaISt4pairIKS4_S6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stENS1_6Object12KeyEqualSafeENSD_6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not5.i.i.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not5.i.i.i.i5, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i6

.lr.ph.i.i.i.i6:                                  ; preds = %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEEPKcNS1_6Object6HasherENS7_12KeyEqualSafeESaISt4pairIKS4_S6_EEED2Ev.exit, %.lr.ph.i.i.i.i6
  %.06.i.i.i.i7 = phi ptr [ %i.an, %.lr.ph.i.i.i.i6 ], [ %i.am, %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEEPKcNS1_6Object6HasherENS7_12KeyEqualSafeESaISt4pairIKS4_S6_EEED2Ev.exit ] ; 2 uses
  %i.an = load ptr, ptr %.06.i.i.i.i7, align 8    ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i7, i64 noundef 32) #24
  %.not.i.i.i.i8 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i8, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i6, !llvm.loop !58

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i6, %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_10HeapObjectEEEPKcNS1_6Object6HasherENS7_12KeyEqualSafeESaISt4pairIKS4_S6_EEED2Ev.exit
  %i.ao = load ptr, ptr %i.ak, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = shl i64 %i.aq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.ar, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14JSGlobalObjectEEEPKcNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = shl i64 %i.av, 3
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14JSGlobalObjectEEEPKcNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEED2Ev.exit

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14JSGlobalObjectEEEPKcNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_S6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14JSGlobalObjectEEESt4pairIKS4_PKcESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal12HeapProfiler26WriteSnapshotToDiskAfterGCENS3_12HeapProfiler16HeapSnapshotModeEE3$_0EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call fastcc void @"_ZZN2v88internal12HeapProfiler26WriteSnapshotToDiskAfterGCENS_12HeapProfiler16HeapSnapshotModeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(12) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN2v88internal12HeapProfiler26WriteSnapshotToDiskAfterGCENS_12HeapProfiler16HeapSnapshotModeEENK3$_0clEv"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) unnamed_addr #11 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.v8::internal::HeapSnapshotGenerator", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::FileOutputStream", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::HeapSnapshotJSONSerializer", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = tail call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #23 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #23 ; 2 uses
  %i.g = tail call noundef i32 @_ZN2v84base2OS19GetCurrentProcessIdEv() #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.h = tail call i64 @llvm.abs.i64(i64 %i.f, i1 false) ; 5 uses
  %i.i = icmp ult i64 %i.h, 10
  br i1 %i.i, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.02229.i.i = phi i64 [ %i.p, %bb.g ], [ %i.h, %bb.a ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.q, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.j = icmp ult i64 %.02229.i.i, 100
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.p = udiv i64 %.02229.i.i, 10000
  %i.q = add i32 %.02328.i.i, 4                   ; 2 uses
  %i.r = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.r, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !62

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.o, %bb.f ], [ %i.k, %bb.b ], [ %i.m, %bb.d ], [ 1, %bb.a ], [ %i.q, %bb.g ] ; 2 uses
  %.lobit.i = lshr i64 %i.f, 63                   ; 2 uses
  %i.s = trunc nuw nsw i64 %.lobit.i to i32
  %i.t = add i32 %.0.i.i, %i.s                    ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.v, ptr %5, align 8, !alias.scope !59
  %i.w = icmp ugt i32 %i.t, 15
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.x = add nuw nsw i64 %i.u, 1
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #22 ; 2 uses
  store ptr %i.y, ptr %5, align 8, !alias.scope !59
  store i64 %i.u, ptr %i.v, align 8, !alias.scope !59
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %i.t, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.v, align 8, !alias.scope !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.z, i8 45, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.aa = phi ptr [ %i.v, %bb.i ], [ %i.v, %bb.j ], [ %i.z, %bb.k ]
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.ab, align 8, !alias.scope !59
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ac, align 1
  %i.ad = load ptr, ptr %5, align 8, !alias.scope !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.lobit.i ; 4 uses
  %i.af = icmp ugt i64 %i.h, 99
  br i1 %i.af, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.ag = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.aj, %.lr.ph.i11.i ], [ %i.h, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.at, %.lr.ph.i11.i ], [ %i.ag, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = urem i64 %.020.i.i, 100
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !noalias !59
  %i.an = zext i32 %.01819.i.i to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.an
  store i8 %i.am, ptr %i.ao, align 1
  %i.ap = load i8, ptr %i.ak, align 2, !noalias !59
  %i.aq = add i32 %.01819.i.i, -1
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1
  %i.at = add i32 %.01819.i.i, -2
  %i.au = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.au, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !63

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.aj, %.lr.ph.i11.i ] ; 3 uses
  %i.av = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.aw = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ax = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !noalias !59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = load i8, ptr %i.ax, align 2, !noalias !59
  br label %_ZNSt7__cxx119to_stringEl.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bc = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bd = or disjoint i8 %i.bc, 48
  br label %_ZNSt7__cxx119to_stringEl.exit

_ZNSt7__cxx119to_stringEl.exit:                   ; preds = %bb.l, %bb.m
  %storemerge.i.i = phi i8 [ %i.bd, %bb.m ], [ %i.bb, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.ae, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 8), !noalias !64 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.bf, ptr %4, align 8, !alias.scope !64
  %i.bg = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %_ZNSt7__cxx119to_stringEl.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEl.exit
  store ptr %i.bg, ptr %4, align 8, !alias.scope !64
  %i.bn = load i64, ptr %i.bh, align 8
  store i64 %i.bn, ptr %i.bf, align 8, !alias.scope !64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bo = phi i64 [ %i.bk, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.bo, ptr %i.bq, align 8, !alias.scope !64
  store ptr %i.bh, ptr %i.be, align 8
  store i64 0, ptr %i.bp, align 8
  store i8 0, ptr %i.bh, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.br = load i64, ptr %i.bq, align 8, !noalias !67 ; 5 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775807
  br i1 %i.bs, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.o:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #25, !noalias !67
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
end_hunk_2
begin_hunk_3_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !32

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal12HeapProfiler12QueryObjectsENS4_12DirectHandleINS4_7ContextEEEPNS3_20QueryObjectPredicateEPSt6vectorINS3_6GlobalINS3_6ObjectEEESaISE_EEE3$_0EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call fastcc void @"_ZZN2v88internal12HeapProfiler12QueryObjectsENS0_12DirectHandleINS0_7ContextEEEPNS_20QueryObjectPredicateEPSt6vectorINS_6GlobalINS_6ObjectEEESaISA_EEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN2v88internal12HeapProfiler12QueryObjectsENS0_12DirectHandleINS0_7ContextEEEPNS_20QueryObjectPredicateEPSt6vectorINS_6GlobalINS_6ObjectEEESaISA_EEENK3$_0clEv"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::CombinedHeapObjectIterator", align 8 ; 8 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.894", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.896", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::CombinedHeapObjectIterator", align 8 ; 6 uses
  %5 = alloca %"class.v8::Local.341", align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.g, -55464                     ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 560 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 568 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 576 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN2v88internal26CombinedHeapObjectIteratorC1EPNS0_4HeapENS0_18HeapObjectIterator20HeapObjectsFilteringE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.s, i32 noundef 1) #23
  %i.t = call i64 @_ZN2v88internal26CombinedHeapObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #23 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @_ZN2v88internal18HeapObjectIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(96) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EED2Ev.exit

.preheader:                                       ; preds = %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit
  %i.v = ptrtoint ptr %.sroa.12.1 to i64
  %i.w = icmp eq ptr %.sroa.049.1, %.sroa.7.1
  br i1 %i.w, label %._crit_edge, label %.lr.ph110

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit
  %storemerge106 = phi i64 [ %i.cn, %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit ], [ %i.t, %bb.a ] ; 4 uses
  %.sroa.049.0105 = phi ptr [ %.sroa.049.1, %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit ], [ null, %bb.a ] ; 11 uses
  %.sroa.7.0104 = phi ptr [ %.sroa.7.1, %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit ], [ null, %bb.a ] ; 9 uses
  %.sroa.12.0103 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit ], [ null, %bb.a ] ; 5 uses
  %i.x = add i64 %storemerge106, -1
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 269
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 %storemerge106, ptr %2, align 8
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %i.ah, -55464
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = call noundef zeroext i1 @_ZN2v88internal14FeedbackVector10ClearSlotsEPNS0_7IsolateENS0_13ClearBehaviorE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.aj, i32 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.al = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.am = add i64 %i.al, 11
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i16, ptr %i.an monotonic, align 2
  %i.ap = icmp eq i16 %i.ao, 2061
  br i1 %i.ap, label %bb.d, label %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.c
  %i.aq = add i64 %storemerge106, 79
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %i.c, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = add i64 %i.aw, -55464
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 560 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZN2v88internal6HandleINS0_12JSTypedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.be = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ay) #23
  br label %_ZN2v88internal6HandleINS0_12JSTypedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_12JSTypedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.be, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bf = ptrtoint ptr %.0.i.i to i64             ; 3 uses
  %i.bg = add i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  store ptr %i.bh, ptr %i.az, align 8
  store i64 %storemerge106, ptr %.0.i.i, align 8
  %.not.i.i = icmp eq ptr %.sroa.7.0104, %.sroa.12.0103
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_12JSTypedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  store i64 %i.bf, ptr %.sroa.7.0104, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.7.0104, i64 8
  br label %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE9push_backEOS4_.exit

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_12JSTypedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bj = ptrtoint ptr %.sroa.7.0104 to i64       ; 2 uses
  %i.bk = ptrtoint ptr %.sroa.049.0105 to i64     ; 3 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.i, label %_ZNKSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #22 ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  store i64 %i.bf, ptr %i.bu, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.049.0105, %.sroa.7.0104
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bv = ptrtoaddr ptr %i.bt to i64
  %i.bw = add i64 %i.bj, -8
  %i.bx = sub i64 %i.bw, %i.bk                    ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 24
  %i.ca = sub i64 %i.bv, %i.bk
  %diff.check = icmp ult i64 %i.ca, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bt, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %.sroa.049.0105, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ce ; 2 uses
  %next.gep130 = getelementptr i8, ptr %.sroa.049.0105, i64 %i.ce ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.cf = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep130, align 8, !alias.scope !81, !noalias !78
  %wide.load131 = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !81, !noalias !78
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !78, !noalias !81
  store <2 x i64> %wide.load131, ptr %i.cg, align 8, !alias.scope !78, !noalias !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal6HandleINS1_12JSTypedArrayEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader133

.lr.ph.i.i.i.i.i.i.preheader133:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.049.0105, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader133, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader133 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader133 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.ci = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !81, !noalias !78
end_hunk_3
