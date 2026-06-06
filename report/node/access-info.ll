inline.NumInlined: 2157
inline.NumDeleted: 1011
begin_hunk_0
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.420 = type { i64, [8 x i8] }
%"struct.v8::internal::Brief" = type { i64 }
%"class.v8::internal::detail::TaggedOperatorArrowRef.767" = type { %"class.v8::internal::JSReceiver" }
%"class.v8::internal::JSReceiver" = type { %"class.v8::internal::TorqueGeneratedJSReceiver" }
%"class.v8::internal::TorqueGeneratedJSReceiver" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::CallOptimization" = type <{ %"class.v8::internal::Handle.638", %"class.v8::internal::Handle.639", %"class.v8::internal::Handle.639", i8, i8, [6 x i8] }>
%"class.v8::internal::Handle.638" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::Handle.639" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::compiler::NativeContextRef" = type { %"class.v8::internal::compiler::ContextRef" }
%"class.v8::internal::compiler::ContextRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::Handle.65" = type { %"class.v8::internal::HandleBase" }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon.791 = type { ptr, %class.anon.790 }
%class.anon.790 = type { ptr }
%"struct.std::pair" = type { i32, ptr }
%"class.v8::internal::compiler::JSHeapBroker::MapUpdaterGuardIfNeeded" = type { %"class.v8::internal::compiler::JSHeapBroker::RecursiveMutexGuardIfNeeded" }
%"class.v8::internal::compiler::JSHeapBroker::RecursiveMutexGuardIfNeeded" = type { ptr, i32, %"class.v8::internal::ParkedMutexGuardIf" }
%"class.v8::internal::ParkedMutexGuardIf" = type { ptr }
%"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::JSFunctionRef>::ArrowOperatorHelper" = type { %"class.v8::internal::compiler::JSFunctionRef" }
%"class.v8::internal::PropertyDetails" = type { i32 }
%"class.v8::internal::compiler::StringRef" = type { %"class.v8::internal::compiler::NameRef" }
%"class.v8::internal::SharedStringAccessGuardIfNeeded" = type { %"class.std::optional.82" }
%"class.std::optional.82" = type { %"struct.std::_Optional_base.83" }
%"struct.std::_Optional_base.83" = type { %"struct.std::_Optional_payload.85" }
%"struct.std::_Optional_payload.85" = type { %"struct.std::_Optional_payload.base.89", [7 x i8] }
%"struct.std::_Optional_payload.base.89" = type { %"struct.std::_Optional_payload_base.base.88" }
%"struct.std::_Optional_payload_base.base.88" = type <{ %"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage" = type { %"class.v8::base::LockGuard" }
%"class.v8::base::LockGuard" = type { ptr }
%"class.v8::internal::TransitionsAccessor" = type <{ ptr, %"class.v8::internal::Tagged.68", %"class.v8::internal::Tagged.581", i32, i8, [3 x i8] }>
%"class.v8::internal::Tagged.68" = type { %"class.v8::internal::Tagged.37" }
%"class.v8::internal::Tagged.37" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::Tagged.581" = type { %"class.v8::internal::TaggedImpl.39" }
%"class.v8::internal::TaggedImpl.39" = type { i64 }
%"class.v8::internal::ZoneVector.94" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::CellRef" = type { %"class.v8::internal::compiler::HeapObjectRef" }
%"class.v8::internal::detail::TaggedOperatorArrowRef.58" = type { %"class.v8::internal::SharedFunctionInfo" }
%"class.v8::internal::SharedFunctionInfo" = type { %"class.v8::internal::TorqueGeneratedSharedFunctionInfo" }
%"class.v8::internal::TorqueGeneratedSharedFunctionInfo" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::detail::TaggedOperatorArrowRef.774" = type { %"class.v8::internal::ScopeInfo" }
%"class.v8::internal::ScopeInfo" = type { %"class.v8::internal::TorqueGeneratedScopeInfo" }
%"class.v8::internal::TorqueGeneratedScopeInfo" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::detail::TaggedOperatorArrowRef.778" = type { %"class.v8::internal::TemplateInfo" }
%"class.v8::internal::TemplateInfo" = type { %"class.v8::internal::TorqueGeneratedTemplateInfo" }
%"class.v8::internal::TorqueGeneratedTemplateInfo" = type { %"class.v8::internal::HeapObject" }

$_ZN2v88internal8compiler12JSHeapBroker10get_stringEv = comdat any

$_ZN2v88internal8compiler12JSHeapBroker10set_stringEv = comdat any

$_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_9FieldTypeEEENS0_6HandleIT_EENS0_6TaggedIS6_EE = comdat any

$_ZN2v88internal8compiler10TryMakeRefINS0_6ObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_S3_E = comdat any

$_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_ = comdat any

$_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE = comdat any

$_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backERKS5_ = comdat any

$_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_15DescriptorArrayEEENS0_6HandleIT_EENS0_6TaggedIS6_EE = comdat any

$_ZNK2v88internal14Representation8MnemonicEv = comdat any

$_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_13PrototypeInfoEEENS0_6HandleIT_EENS0_6TaggedIS6_EE = comdat any

$_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4CellEEENS0_6HandleIT_EENS0_6TaggedIS6_EE = comdat any

$_ZN2v88internal8compiler10TryMakeRefINS0_4CellEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE = comdat any

$_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_6ObjectEEENS0_6HandleIT_EENS0_6TaggedIS6_EE = comdat any

$_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_8JSObjectEEENS0_6HandleIT_EES7_ = comdat any

$_ZN2v88internal8compiler10TryMakeRefINS0_8JSObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE = comdat any

$_ZN2v88internal8compiler10TryMakeRefINS0_4NameEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE = comdat any

$_ZN2v88internal6Object13GetSimpleHashENS0_6TaggedIS1_EE = comdat any

$_ZNK2v88internal12TemplateInfo7GetHashEv = comdat any

$_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN2v88internal12StdoutStreamD1Ev = comdat any

$_ZN2v88internal8OFStreamD1Ev = comdat any

$_ZN2v88internal8OFStreamD0Ev = comdat any

$_ZTv0_n24_N2v88internal8OFStreamD1Ev = comdat any

$_ZTv0_n24_N2v88internal8OFStreamD0Ev = comdat any

$_ZN2v88internal12StdoutStreamD0Ev = comdat any

$_ZTv0_n24_N2v88internal12StdoutStreamD1Ev = comdat any

$_ZTv0_n24_N2v88internal12StdoutStreamD0Ev = comdat any

$_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_4NameEEENS0_6HandleIT_EENS0_6TaggedIS6_EE = comdat any

$_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_18ParkedMutexGuardIfC1EPS5_PNS3_4base5MutexEbEUlvE_EEvT_EUlvE_EEvPS1_PvPKv = comdat any

$_ZN4heap4base5Stack43SetMarkerForBackgroundThreadAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_18ParkedMutexGuardIfC1EPS5_PNS3_4base5MutexEbEUlvE_EEvT_EUlvE_EEvPS1_PvPKv = comdat any

$_ZNSt3mapIiN4heap4base5Stack7SegmentESt4lessIiESaISt4pairIKiS3_EEEixERS7_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE5eraseERS1_ = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_ = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_ = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEE19PrepareForInsertionEPKS3_mPm = comdat any

$_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE19PrepareForInsertionEPKS5_mPm = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler17ElementAccessInfoEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE4GrowEm = comdat any

$_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_3MapEEENS0_6HandleIT_EENS0_6TaggedIS6_EE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEEaSERKS4_ = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEE4GrowEm = comdat any

$_ZTVN2v88internal12StdoutStreamE = comdat any

$_ZTTN2v88internal12StdoutStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_So = comdat any

$_ZTVN2v88internal8OFStreamE = comdat any

@.str = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Store\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"StoreInLiteral\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Has\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Define\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"!lookup_start_object_maps.empty()\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"V8_DICT_PROPERTY_CONST_TRACKING_BOOL\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"name.IsUniqueName()\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"prototype.IsJSObject()\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"!result->empty()\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.16 = private unnamed_addr constant [19 x i8] c"(data_) != nullptr\00", align 1
@_ZN2v88internal12IsolateGroup22default_isolate_group_E = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"IsName()\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"lookup_start_object_maps_.size() == 1\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"!api_holder_ref.has_value()\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"IsJSReceiver(obj)\00", align 1
@_ZN2v88internal18g_current_isolate_E = external thread_local(localexec) local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"Missing \00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"ObjectData for \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"../../deps/v8/src/compiler/js-heap-broker.h\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c")\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@_ZTVN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal12StdoutStreamD1Ev, ptr @_ZN2v88internal12StdoutStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev] }, comdat, align 8
@_ZTTN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_So = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVN2v88internal8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"IsCell()\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"IsJSObject()\00", align 1
@.str.42 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Builtins::IsBuiltinId(id)\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"IsMap()\00", align 1
@.str.45 = private unnamed_addr constant [53 x i8] c"std::numeric_limits<size_t>::max() - size() >= count\00", align 1
@switch.table._ZNK2v88internal8compiler17AccessInfoFactory26ComputeDataFieldAccessInfoENS1_6MapRefES3_NS1_7NameRefENS1_11OptionalRefINS1_11JSObjectRefEEENS0_13InternalIndexENS1_10AccessModeE = private unnamed_addr constant [4 x i64] [i64 0, i64 32768, i64 0, i64 0], align 8
@switch.table._ZNK2v88internal14Representation8MnemonicEv = private unnamed_addr constant [6 x ptr] [ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.24, ptr @.str.28], align 8

@_ZN2v88internal8compiler17ElementAccessInfoC1EONS0_10ZoneVectorINS1_6MapRefEEENS0_12ElementsKindEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr, i8, ptr), ptr @_ZN2v88internal8compiler17ElementAccessInfoC2EONS0_10ZoneVectorINS1_6MapRefEEENS0_12ElementsKindEPNS0_4ZoneE
@_ZN2v88internal8compiler17ElementAccessInfoC1ENS1_6MapRefENS1_9ObjectRefES4_bPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, i1, ptr), ptr @_ZN2v88internal8compiler17ElementAccessInfoC2ENS1_6MapRefENS1_9ObjectRefES4_bPNS0_4ZoneE
@_ZN2v88internal8compiler18PropertyAccessInfoC1EPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal8compiler18PropertyAccessInfoC2EPNS0_4ZoneE
@_ZN2v88internal8compiler18PropertyAccessInfoC1EPNS0_4ZoneENS2_4KindENS1_11OptionalRefINS1_11JSObjectRefEEEONS0_10ZoneVectorINS1_6MapRefEEE = hidden unnamed_addr alias void (ptr, ptr, i32, ptr, ptr), ptr @_ZN2v88internal8compiler18PropertyAccessInfoC2EPNS0_4ZoneENS2_4KindENS1_11OptionalRefINS1_11JSObjectRefEEEONS0_10ZoneVectorINS1_6MapRefEEE
@_ZN2v88internal8compiler18PropertyAccessInfoC1EPNS0_4ZoneENS2_4KindENS1_11OptionalRefINS1_11JSObjectRefEEENS6_INS1_9ObjectRefEEES8_NS6_INS1_7NameRefEEEONS0_10ZoneVectorINS1_6MapRefEEE = hidden unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, ptr, i64, ptr), ptr @_ZN2v88internal8compiler18PropertyAccessInfoC2EPNS0_4ZoneENS2_4KindENS1_11OptionalRefINS1_11JSObjectRefEEENS6_INS1_9ObjectRefEEES8_NS6_INS1_7NameRefEEEONS0_10ZoneVectorINS1_6MapRefEEE
@_ZN2v88internal8compiler18PropertyAccessInfoC1ENS2_4KindENS1_11OptionalRefINS1_11JSObjectRefEEENS4_INS1_6MapRefEEENS0_10FieldIndexENS0_14RepresentationENS1_4TypeES7_S8_ONS0_10ZoneVectorIS7_EEONSC_IPKNS1_21CompilationDependencyEEE = hidden unnamed_addr alias void (ptr, i32, ptr, ptr, i64, i8, i64, i64, i64, ptr, ptr), ptr @_ZN2v88internal8compiler18PropertyAccessInfoC2ENS2_4KindENS1_11OptionalRefINS1_11JSObjectRefEEENS4_INS1_6MapRefEEENS0_10FieldIndexENS0_14RepresentationENS1_4TypeES7_S8_ONS0_10ZoneVectorIS7_EEONSC_IPKNS1_21CompilationDependencyEEE
@_ZN2v88internal8compiler18PropertyAccessInfoC1EPNS0_4ZoneENS2_4KindENS1_11OptionalRefINS1_11JSObjectRefEEEONS0_10ZoneVectorINS1_6MapRefEEENS0_13InternalIndexENS1_7NameRefE = hidden unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i64, i64), ptr @_ZN2v88internal8compiler18PropertyAccessInfoC2EPNS0_4ZoneENS2_4KindENS1_11OptionalRefINS1_11JSObjectRefEEEONS0_10ZoneVectorINS1_6MapRefEEENS0_13InternalIndexENS1_7NameRefE
@_ZN2v88internal8compiler17AccessInfoFactoryC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal8compiler17AccessInfoFactoryC2EPNS1_12JSHeapBrokerEPNS0_4ZoneE

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_10AccessModeE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i8 %1, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 4) #22 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 5) #22 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 14) #22 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 3) #22 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 6) #22 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #23
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17ElementAccessInfoC2EONS0_10ZoneVectorINS1_6MapRefEEENS0_12ElementsKindEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 2), (8, 40)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store i8 %2, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1) #22 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler17ElementAccessInfoC2ENS1_6MapRefENS1_9ObjectRefES4_bPNS0_4ZoneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((0, 2), (8, 88)) %0, ptr %1, ptr %2, ptr %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 3 uses
  store ptr %1, ptr %6, align 8
  %i.a = zext i1 %4 to i8
  %i.b = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #22
  store i8 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.a, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %6, align 8
  store ptr %5, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ult i64 %i.k, 8
  br i1 %i.l, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEC2ESt16initializer_listIS3_EPNS0_4ZoneE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef 8) #22
  %.pre.i.i.i = load i64, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEC2ESt16initializer_listIS3_EPNS0_4ZoneE.exit

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEC2ESt16initializer_listIS3_EPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = add i64 %i.m, 8
  store i64 %i.o, ptr %i.i, align 8
  store ptr %i.n, ptr %i.f, align 8
  store i64 %i.e, ptr %i.n, align 8
  %.pre.i = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8
  store ptr %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %3, ptr %i.v, align 8
  ret void
}

declare noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8compiler18PropertyAccessInfo7InvalidEPNS0_4ZoneE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::compiler::PropertyAccessInfo") align 8 captures(none) initializes((0, 4), (8, 113), (120, 160)) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.d, i8 0, i64 41, i1 false)
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler18PropertyAccessInfo8NotFoundEPNS0_4ZoneENS1_6MapRefENS1_11OptionalRefINS1_11JSObjectRefEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::compiler::PropertyAccessInfo") align 8 captures(none) initializes((0, 4), (8, 40)) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEC2ESt16initializer_listIS3_EPNS0_4ZoneE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 8) #22
  %.pre.i.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEC2ESt16initializer_listIS3_EPNS0_4ZoneE.exit

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEC2ESt16initializer_listIS3_EPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = add i64 %i.g, 8
  store i64 %i.i, ptr %i.c, align 8
  store ptr %2, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = ptrtoint ptr %i.j to i64                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler17AccessInfoFactory22ConsolidateElementLoadERKNS1_21ElementAccessFeedbackE:bb.a
  br i1 %.not23.i, label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit.thread80, label %bb.u

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit.thread80: ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr null, i64 %i.bv
  %i.bx = ptrtoint ptr %i.bq to i64
  %i.by = sub i64 %i.bx, %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr null, i64 %i.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal8compiler17ElementAccessInfoC2EONS0_10ZoneVectorINS1_6MapRefEEENS0_12ElementsKindEPNS0_4ZoneE.exit

bb.u:                                             ; preds = %bb.t
  %i.ca = icmp sgt i64 %i.bv, -1
  br i1 %i.ca, label %bb.w, label %bb.v, !prof !6

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.42) #23
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = sub i64 %i.cc, %i.ce
  %i.cg = icmp ugt i64 %i.bv, %i.cf
  br i1 %i.cg, label %bb.x, label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit, !prof !5

bb.x:                                             ; preds = %bb.w
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 noundef %i.bv) #22
  %.pre.i.i.i = load i64, ptr %i.cd, align 8
  %.pre = load ptr, ptr %i.r, align 8             ; 2 uses
  %.pre64 = ptrtoint ptr %.pre to i64
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit: ; preds = %bb.w, %bb.x
  %.pre-phi65 = phi i64 [ %.pre64, %bb.x ], [ %i.br, %bb.w ]
  %i.ch = phi ptr [ %.pre, %bb.x ], [ %i.bo, %bb.w ]
  %i.ci = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.ce, %bb.w ] ; 2 uses
  %i.cj = inttoptr i64 %i.ci to ptr               ; 4 uses
  %i.ck = add i64 %i.ci, %i.bv
  store i64 %i.ck, ptr %i.cd, align 8
  %i.cl = load ptr, ptr %i.bp, align 8
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %.pre-phi65
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cj, ptr nonnull align 8 %i.ch, i64 %i.cn, i1 false)
  %.pre61 = load ptr, ptr %i.bp, align 8          ; 2 uses
  %.pre62 = load ptr, ptr %i.r, align 8           ; 2 uses
  %.pre63 = ptrtoint ptr %.pre62 to i64
  %i.co = icmp eq ptr %.pre61, %.pre62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bv
  %i.cq = ptrtoint ptr %.pre61 to i64
  %i.cr = sub i64 %i.cq, %.pre63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29, i8 0, i64 16, i1 false)
  br i1 %i.co, label %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit.thread, label %_ZN2v88internal8compiler17ElementAccessInfoC2EONS0_10ZoneVectorINS1_6MapRefEEENS0_12ElementsKindEPNS0_4ZoneE.exit, !prof !13

_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit.thread: ; preds = %.critedge31, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #23
  unreachable

_ZN2v88internal8compiler17ElementAccessInfoC2EONS0_10ZoneVectorINS1_6MapRefEEENS0_12ElementsKindEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit.thread80, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit
  %i.ct = phi ptr [ %i.bz, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit.thread80 ], [ %i.cs, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit ]
  %i.cu = phi ptr [ %i.bw, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit.thread80 ], [ %i.cp, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit ]
  %.sroa.9.083 = phi ptr [ null, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit.thread80 ], [ %i.cj, %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit ]
  store i16 %.sroa.0.0.insert.ext, ptr %0, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bn, ptr %i.cv, align 8
  store ptr %.sroa.9.083, ptr %i.cw, align 8
  store ptr %i.ct, ptr %i.cx, align 8
  store ptr %i.cu, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bm, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.dc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_122GeneralizeElementsKindENS0_12ElementsKindES3_.exit.thread, %_ZN2v88internal8compiler17ElementAccessInfoC2EONS0_10ZoneVectorINS1_6MapRefEEENS0_12ElementsKindEPNS0_4ZoneE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK2v88internal8compiler21ElementAccessFeedback17transition_groupsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8compiler17AccessInfoFactory26ComputeDataFieldAccessInfoENS1_6MapRefES3_NS1_7NameRefENS1_11OptionalRefINS1_11JSObjectRefEEENS0_13InternalIndexENS1_10AccessModeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::compiler::PropertyAccessInfo") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr %2, ptr %3, ptr %4, ptr %5, i64 %6, i8 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.v8::internal::Representation", align 1 ; 4 uses
  %9 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 10 uses
  %10 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 2 uses
  %11 = alloca %"class.v8::internal::compiler::DescriptorArrayRef", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::ZoneVector.1", align 8 ; 17 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.b = load ptr, ptr %1, align 8
  %i.c = call ptr @_ZNK2v88internal8compiler6MapRef20instance_descriptorsEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.b) #22
  store ptr %i.c, ptr %11, align 8
  %i.d = call ptr @_ZNK2v88internal8compiler18DescriptorArrayRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.e = load i64, ptr %i.d, align 8
  %i.f = mul i64 %6, 103079215104
  %sext.i = add i64 %i.f, 137438953472
  %i.g = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.h = or disjoint i64 %i.g, 7
  %i.i = add i64 %i.h, %i.e
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = load atomic volatile i64, ptr %i.j monotonic, align 8
  %sum.shift.i = lshr i64 %i.l, 51
  %i.m = trunc nuw nsw i64 %sum.shift.i to i32
  %i.n = and i32 %i.m, 1023                       ; 3 uses
  %sum.shift = lshr i64 %i.k, 38                  ; 2 uses
  %i.o = trunc i64 %sum.shift to i8
  %i.p = and i8 %i.o, 7                           ; 6 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !14 ; 2 uses
  store i32 0, ptr %0, align 8, !alias.scope !17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false), !alias.scope !17
  store ptr %i.s, ptr %i.v, align 8, !alias.scope !17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.w, i8 0, i64 41, i1 false), !alias.scope !17
  store i64 1, ptr %i.x, align 8, !alias.scope !17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !17
  store i64 -1, ptr %i.z, align 8, !alias.scope !17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aa, align 8, !alias.scope !17
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.ab = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #22
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = add i64 %i.ac, 7
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i8, ptr %i.ae monotonic, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = add i64 %i.ac, 8
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = load atomic volatile i8, ptr %i.ai monotonic, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = sub nsw i32 %i.ag, %i.ak                ; 3 uses
  %i.am = icmp slt i32 %i.n, %i.al                ; 2 uses
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = load atomic volatile i8, ptr %i.ai monotonic, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 30
  %i.aq = load atomic volatile i8, ptr %i.ai monotonic, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.n, %i.ar
  %i.at = shl nuw nsw i32 %i.as, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.au = sub nsw i32 %i.n, %i.al
  %i.av = shl nsw i32 %i.au, 3
  %i.aw = add nuw nsw i32 %i.av, 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.013.i = phi i32 [ %i.at, %bb.d ], [ %i.aw, %bb.e ]
  %.0.i = phi i64 [ %i.ap, %bb.d ], [ 2147483648, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i8 %i.p, ptr %8, align 1
  %i.ax = icmp samesign ult i8 %i.p, 5
  br i1 %i.ax, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = call noundef ptr @_ZNK2v88internal14Representation8MnemonicEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.22, ptr noundef %i.ay) #22
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #23
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.az = and i64 %sum.shift, 7
  %13 = getelementptr [8 x i8], ptr @switch.table._ZNK2v88internal8compiler17AccessInfoFactory26ComputeDataFieldAccessInfoENS1_6MapRefES3_NS1_7NameRefENS1_11OptionalRefINS1_11JSObjectRefEEENS0_13InternalIndexENS1_10AccessModeE, i64 %i.az
  %switch.gep = getelementptr i8, ptr %13, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ba = select i1 %i.am, i64 16384, i64 0
  %i.bb = sext i32 %.013.i to i64
  %i.bc = sext i32 %i.al to i64
  %i.bd = shl nsw i64 %i.bc, 17
  %i.be = or disjoint i64 %i.bd, %i.ba
  %i.bf = or i64 %i.be, %i.bb
  %i.bg = or i64 %i.bf, %.0.i
  %i.bh = or i64 %i.bg, %switch.load              ; 2 uses
  %i.bi = call ptr @_ZNK2v88internal8compiler7NameRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #22
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = add i64 %i.bj, -1
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = add i64 %i.bm, 11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i16, ptr %i.bo monotonic, align 2
  %i.bq = icmp eq i16 %i.bp, 128
  br i1 %i.bq, label %_ZN2v88internal4Name14IsPrivateBrandEv.exit, label %_ZN2v88internal4Name14IsPrivateBrandEv.exit.thread

_ZN2v88internal4Name14IsPrivateBrandEv.exit:      ; preds = %switch.lookup
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, 32
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %_ZN2v88internal4Name14IsPrivateBrandEv.exit.thread, label %bb.h

_ZN2v88internal4Name14IsPrivateBrandEv.exit.thread: ; preds = %switch.lookup, %_ZN2v88internal4Name14IsPrivateBrandEv.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4Name14IsPrivateBrandEv.exit, %_ZN2v88internal4Name14IsPrivateBrandEv.exit.thread
  %.sroa.044.0 = phi i64 [ 53661925375, %_ZN2v88internal4Name14IsPrivateBrandEv.exit.thread ], [ 8388609, %_ZN2v88internal4Name14IsPrivateBrandEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  store ptr %i.bv, ptr %12, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %i.bx = load ptr, ptr %1, align 8
  %i.by = load i64, ptr %i.d, align 8
  %i.bz = add nsw i64 %i.g, 15
  %i.ca = add i64 %i.bz, %i.by
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8
  %i.cd = call i64 @_ZN2v88internal3Map15UnwrapFieldTypeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.cc) #22
  %i.ce = call ptr @_ZN2v88internal8compiler12JSHeapBroker25CanonicalPersistentHandleINS0_9FieldTypeEEENS0_6HandleIT_EENS0_6TaggedIS6_EE(ptr noundef nonnull align 8 dereferenceable(8560) %i.bx, i64 %i.cd) ; 4 uses
  %i.cf = load ptr, ptr %1, align 8
  %i.cg = call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_6ObjectEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6HandleIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_S3_E(ptr noundef %i.cf, ptr %i.ce, i32 0) ; 2 uses
  %.not129 = icmp eq ptr %i.cg, null
  br i1 %.not129, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.ch = load ptr, ptr %i.bu, align 8, !noalias !20 ; 2 uses
  store i32 0, ptr %0, align 8, !alias.scope !23
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !alias.scope !23
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, i8 0, i64 48, i1 false), !alias.scope !23
  store ptr %i.ch, ptr %i.ck, align 8, !alias.scope !23
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.cl, i8 0, i64 41, i1 false), !alias.scope !23
  store i64 1, ptr %i.cm, align 8, !alias.scope !23
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !alias.scope !23
  store i64 -1, ptr %i.co, align 8, !alias.scope !23
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.cp, align 8, !alias.scope !23
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %i.cq = load ptr, ptr %1, align 8
  %i.cr = call ptr @_ZNK2v88internal8compiler6MapRef14FindFieldOwnerEPNS1_12JSHeapBrokerENS0_13InternalIndexE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.cq, i64 %6) #22 ; 7 uses
  switch i8 %i.p, label %_ZNK2v88internal8compiler11OptionalRefINS1_9ObjectRefEE5valueEv.exit [
    i8 1, label %bb.k
    i8 2, label %bb.m
    i8 3, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.cs = call noundef i64 @_ZN2v88internal8compiler10BitsetType11SignedSmallEv() #22
  %i.ct = or i64 %i.cs, 1
  %i.cu = load ptr, ptr %1, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8544
  %i.cw = load ptr, ptr %i.cv, align 8
  %.sroa.037.0.copyload = load ptr, ptr %9, align 8
  %i.cx = call noundef ptr @_ZNK2v88internal8compiler23CompilationDependencies41FieldRepresentationDependencyOffTheRecordENS1_6MapRefES3_NS0_13InternalIndexENS0_14RepresentationE(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr %.sroa.037.0.copyload, ptr %i.cr, i64 %6, i8 1) #22
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = icmp ult ptr %i.cz, %i.db
  br i1 %i.dc, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.dd = load ptr, ptr %i.bw, align 8
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = add nsw i64 %i.dh, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.di)
  %.pre.i.i = load ptr, ptr %i.cy, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_.exit: ; preds = %bb.k, %bb.l
  %i.dj = phi ptr [ %i.cz, %bb.k ], [ %.pre.i.i, %bb.l ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.cy, align 8
  store ptr %i.cx, ptr %i.dj, align 8
  br label %_ZNK2v88internal8compiler11OptionalRefINS1_9ObjectRefEE5valueEv.exit

bb.m:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 208
  %.sroa.044.0.copyload = load i64, ptr %i.dn, align 8
  %i.do = load ptr, ptr %1, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8544
  %i.dq = load ptr, ptr %i.dp, align 8
  %.sroa.033.0.copyload = load ptr, ptr %9, align 8
  %i.dr = call noundef ptr @_ZNK2v88internal8compiler23CompilationDependencies41FieldRepresentationDependencyOffTheRecordENS1_6MapRefES3_NS0_13InternalIndexENS0_14RepresentationE(ptr noundef nonnull align 8 dereferenceable(80) %i.dq, ptr %.sroa.033.0.copyload, ptr %i.cr, i64 %6, i8 2) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp ult ptr %i.dt, %i.dv
  br i1 %i.dw, label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_.exit71, label %bb.n, !prof !6

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %i.bw, align 8
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = add nsw i64 %i.eb, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ec)
  %.pre.i.i70 = load ptr, ptr %i.ds, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_.exit71

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_.exit71: ; preds = %bb.m, %bb.n
  %i.ed = phi ptr [ %i.dt, %bb.m ], [ %.pre.i.i70, %bb.n ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.ee, ptr %i.ds, align 8
  store ptr %i.dr, ptr %i.ed, align 8
  br label %_ZNK2v88internal8compiler11OptionalRefINS1_9ObjectRefEE5valueEv.exit

bb.o:                                             ; preds = %bb.j
  %i.ef = load i64, ptr %i.ce, align 8
  %i.eg = call i64 @_ZN2v88internal9FieldType4NoneEv() #22
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  switch i8 %7, label %bb.r [
    i8 1, label %bb.q
    i8 2, label %bb.q
    i8 4, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.ei = load ptr, ptr %i.bu, align 8, !noalias !26 ; 2 uses
  store i32 0, ptr %0, align 8, !alias.scope !29
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %i.ej, align 8, !alias.scope !29
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ek, i8 0, i64 48, i1 false), !alias.scope !29
  store ptr %i.ei, ptr %i.el, align 8, !alias.scope !29
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.em, i8 0, i64 41, i1 false), !alias.scope !29
  store i64 1, ptr %i.en, align 8, !alias.scope !29
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !alias.scope !29
  store i64 -1, ptr %i.ep, align 8, !alias.scope !29
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.eq, align 8, !alias.scope !29
  br label %bb.y

bb.r:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.er = load ptr, ptr %1, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8544
  %i.et = load ptr, ptr %i.es, align 8
  %.sroa.028.0.copyload = load ptr, ptr %9, align 8
  %i.eu = call noundef ptr @_ZNK2v88internal8compiler23CompilationDependencies41FieldRepresentationDependencyOffTheRecordENS1_6MapRefES3_NS0_13InternalIndexENS0_14RepresentationE(ptr noundef nonnull align 8 dereferenceable(80) %i.et, ptr %.sroa.028.0.copyload, ptr %i.cr, i64 %6, i8 3) #22
  store ptr %i.eu, ptr %i.a, align 8
  call void @_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ev = load i64, ptr %i.ce, align 8
  %i.ew = call noundef zeroext i1 @_ZN2v88internal7IsClassENS0_6TaggedINS0_9FieldTypeEEE(i64 %i.ev) #22
  br i1 %i.ew, label %bb.s, label %_ZNK2v88internal8compiler11OptionalRefINS1_9ObjectRefEE5valueEv.exit

bb.s:                                             ; preds = %bb.r
  %i.ex = load ptr, ptr %1, align 8
  %i.ey = load i64, ptr %i.ce, align 8
  %i.ez = call i64 @_ZN2v88internal9FieldType7AsClassENS0_6TaggedIS1_EE(i64 %i.ey) #22
  %i.fa = call ptr @_ZN2v88internal8compiler10TryMakeRefINS0_3MapEEENS1_11OptionalRefINS1_10ref_traitsIT_E8ref_typeEEEPNS1_12JSHeapBrokerENS0_6TaggedIS6_EENS_4base5FlagsINS1_19GetOrCreateDataFlagEiiEEQ12is_subtype_vIS6_NS0_6ObjectEE(ptr noundef %i.ex, i64 %i.ez, i32 0) ; 2 uses
  %.not130 = icmp eq ptr %i.fa, null
  br i1 %.not130, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.s
  %i.fb = ptrtoint ptr %i.fa to i64
end_hunk_1
