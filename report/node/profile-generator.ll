inline.NumInlined: 2623
inline.NumDeleted: 1470
begin_hunk_0
%"struct.std::_Tuple_impl.194" = type { %"struct.std::_Head_base.197" }
%"struct.std::_Head_base.197" = type { ptr }
%"struct.v8::internal::CpuProfile::SampleInfo" = type { ptr, %"class.v8::base::TimeTicks", %"struct.v8::internal::LineAndColumn", i16, i8, [5 x i8], %"class.std::optional" }
%"class.v8::base::TimeTicks" = type { %"class.v8::base::time_internal::TimeBase" }
%"class.v8::base::time_internal::TimeBase" = type { i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.212" = type { %"struct.std::_Vector_base.213" }
%"struct.std::_Vector_base.213" = type { %"struct.std::_Vector_base<const v8::CpuProfileNode *, std::allocator<const v8::CpuProfileNode *>>::_Vector_impl" }
%"struct.std::_Vector_base<const v8::CpuProfileNode *, std::allocator<const v8::CpuProfileNode *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const v8::CpuProfileNode *, std::allocator<const v8::CpuProfileNode *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const v8::CpuProfileNode *, std::allocator<const v8::CpuProfileNode *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::CpuProfilingOptions" = type { i32, i32, i32, %"class.v8::Global" }
%"class.v8::Global" = type { %"class.v8::PersistentBase" }
%"class.v8::PersistentBase" = type { %"class.v8::api_internal::IndirectHandleBase" }
%"class.v8::api_internal::IndirectHandleBase" = type { ptr }
%"class.std::unique_ptr.120" = type { %"struct.std::__uniq_ptr_data.121" }
%"struct.std::__uniq_ptr_data.121" = type { %"class.std::__uniq_ptr_impl.122" }
%"class.std::__uniq_ptr_impl.122" = type { %"class.std::tuple.123" }
%"class.std::tuple.123" = type { %"struct.std::_Tuple_impl.124" }
%"struct.std::_Tuple_impl.124" = type { %"struct.std::_Head_base.127" }
%"struct.std::_Head_base.127" = type { ptr }
%"class.std::vector.35" = type { %"struct.std::_Vector_base.36" }
%"struct.std::_Vector_base.36" = type { %"struct.std::_Vector_base<v8::internal::CodeEntryAndPosition, std::allocator<v8::internal::CodeEntryAndPosition>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::CodeEntryAndPosition, std::allocator<v8::internal::CodeEntryAndPosition>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::CodeEntryAndPosition, std::allocator<v8::internal::CodeEntryAndPosition>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::CodeEntryAndPosition, std::allocator<v8::internal::CodeEntryAndPosition>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIN2v820CpuProfileDeoptFrameESaIS1_EEaSERKS3_ = comdat any

$_ZN2v88internal11ProfileNodeC2EPNS0_11ProfileTreeEPNS0_9CodeEntryEPS1_NS0_13LineAndColumnE = comdat any

$_ZN2v88internal11ProfileTree18TraverseDepthFirstINS0_19DeleteNodesCallbackEEEvPT_ = comdat any

$_ZN2v88internal18OutputStreamWriter9AddStringEPKc = comdat any

$_ZN2v88internal18OutputStreamWriter9AddNumberIiEEvT_ = comdat any

$_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_ = comdat any

$_ZNSt10_HashtableIiSt4pairIKiSt6vectorIN2v88internal20CodeEntryAndPositionESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE = comdat any

$_ZNSt6vectorIN2v819CpuProfileDeoptInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZSt27__throw_bad_optional_accessv = comdat any

$_ZN2v88internal9CodeEntry8RareDataD2Ev = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmN2v88internal20InstructionStreamMap16CodeEntryMapInfoEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNKSt14default_deleteIN2v88internal10CpuProfileEEclEPS2_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_ = comdat any

$_ZNSt10_HashtableIN2v88internal20CodeEntryAndPositionESt4pairIKS2_PNS1_11ProfileNodeEESaIS7_ENSt8__detail10_Select1stENS5_6EqualsENS5_6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_ = comdat any

$_ZNSt8__detail9_Map_baseIN2v88internal20CodeEntryAndPositionESt4pairIKS3_PNS2_11ProfileNodeEESaIS8_ENS_10_Select1stENS6_6EqualsENS6_6HasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS3_ = comdat any

$_ZNSt10_HashtableIN2v88internal20CodeEntryAndPositionESt4pairIKS2_PNS1_11ProfileNodeEESaIS7_ENSt8__detail10_Select1stENS5_6EqualsENS5_6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt8__detail9_Map_baseISt4pairIiiES1_IKS2_iESaIS4_ENS_10_Select1stESt8equal_toIS2_EN2v84base4hashIS2_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS2_ = comdat any

$_ZNSt10_HashtableISt4pairIiiES0_IKS1_iESaIS3_ENSt8__detail10_Select1stESt8equal_toIS1_EN2v84base4hashIS1_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EE17_M_reallocate_mapEmb = comdat any

$_ZN2v88internal32CpuProfileMaxSamplesCallbackTaskD2Ev = comdat any

$_ZN2v88internal32CpuProfileMaxSamplesCallbackTaskD0Ev = comdat any

$_ZN2v88internal32CpuProfileMaxSamplesCallbackTask3RunEv = comdat any

$_ZZN2v88internal13ProfilerStats8InstanceEvE5stats = comdat any

$_ZTVN2v88internal32CpuProfileMaxSamplesCallbackTaskE = comdat any

@_ZZNK2v88internal19SourcePositionTable8GetTupleEiE11kEmptyTuple = internal constant %"struct.v8::internal::SourcePositionTable::SourcePositionTuple" { i32 -1, i32 0, i32 0, i32 -1 }, align 4
@.str = private unnamed_addr constant [32 x i8] c" - source position table at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"    %d --> line_number: %d inlining_id: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN2v88internal9CodeEntry18kEmptyResourceNameE = hidden local_unnamed_addr constant ptr @.str.2, align 8
@_ZN2v88internal9CodeEntry19kEmptyBailoutReasonE = hidden local_unnamed_addr constant ptr @.str.2, align 8
@_ZN2v88internal9CodeEntry14kNoDeoptReasonE = hidden local_unnamed_addr constant ptr @.str.2, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"(program)\00", align 1
@_ZN2v88internal9CodeEntry17kProgramEntryNameE = hidden local_unnamed_addr constant ptr @.str.3, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"(idle)\00", align 1
@_ZN2v88internal9CodeEntry14kIdleEntryNameE = hidden local_unnamed_addr constant ptr @.str.4, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"(garbage collector)\00", align 1
@_ZN2v88internal9CodeEntry26kGarbageCollectorEntryNameE = hidden local_unnamed_addr constant ptr @.str.5, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"(unresolved function)\00", align 1
@_ZN2v88internal9CodeEntry23kUnresolvedFunctionNameE = hidden local_unnamed_addr constant ptr @.str.6, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"(root)\00", align 1
@_ZN2v88internal9CodeEntry14kRootEntryNameE = hidden local_unnamed_addr constant ptr @.str.7, align 8
@_ZZN2v88internal9CodeEntry13program_entryEvE13kProgramEntry = internal global %"class.v8::base::LeakyObject" zeroinitializer, align 8
@_ZGVZN2v88internal9CodeEntry13program_entryEvE13kProgramEntry = internal global i64 0, align 8
@_ZZN2v88internal9CodeEntry10idle_entryEvE10kIdleEntry = internal global %"class.v8::base::LeakyObject" zeroinitializer, align 8
@_ZGVZN2v88internal9CodeEntry10idle_entryEvE10kIdleEntry = internal global i64 0, align 8
@_ZZN2v88internal9CodeEntry8gc_entryEvE8kGcEntry = internal global %"class.v8::base::LeakyObject" zeroinitializer, align 8
@_ZGVZN2v88internal9CodeEntry8gc_entryEvE8kGcEntry = internal global i64 0, align 8
@_ZZN2v88internal9CodeEntry16unresolved_entryEvE16kUnresolvedEntry = internal global %"class.v8::base::LeakyObject" zeroinitializer, align 8
@_ZGVZN2v88internal9CodeEntry16unresolved_entryEvE16kUnresolvedEntry = internal global i64 0, align 8
@_ZZN2v88internal9CodeEntry10root_entryEvE10kRootEntry = internal global %"class.v8::base::LeakyObject" zeroinitializer, align 8
@_ZGVZN2v88internal9CodeEntry10root_entryEvE10kRootEntry = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"CodeEntry: at %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" - name: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c" - resource_name: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c" - line_number: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c" - column_number: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c" - script_id: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c" - position: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c" - deopt_reason: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c" - bailout_reason: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c" - deopt_id: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c" - inline stacks:\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"    inlining_id: [%d]\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"     %s --> %d:%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c" - inline stacks: (empty)\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c" - deopt inlined frames:\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"script_id: %d position: %zu\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c" - deopt inlined frames: (empty)\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"%5u %*s %s:%d:%d %d %d #%d\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" %s:%d:%d\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"%*s;;; deopted at script_id: %d position: %zu with reason '%s'.\0A\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"%*s;;;     Inline point: script_id %d position: %zu.\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"%*s bailed out due to '%s'\0A\00", align 1
@_ZN2v88internal21CpuProfilesCollection8last_id_E = hidden global { i32 } zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [10 x i8] c"startTime\00", align 1
@_ZZN2v88internal10CpuProfileC1EPNS0_11CpuProfilerEjPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS8_EEE28trace_event_unique_atomic594 = internal global i64 0, align 8
@.str.32 = private unnamed_addr constant [36 x i8] c"disabled-by-default-v8.cpu_profiler\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Profile\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"../../deps/v8/src/profiler/profile-generator.cc\00", align 1
@.str.36 = private unnamed_addr constant [180 x i8] c"void v8::internal::CpuProfile::AddPath(base::TimeTicks, const ProfileStackTrace &, LineAndColumn, bool, base::TimeDelta, StateTag, EmbedderStateTag, const std::optional<uint64_t>)\00", align 1
@.constant = private unnamed_addr constant %"struct.std::source_location::__impl" { ptr @.str.35, ptr @.str.36, i32 647, i32 18 }, align 8
@.str.37 = private unnamed_addr constant [11 x i8] c"cpuProfile\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"trace_ids\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"timeDeltas\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@_ZZN2v88internal10CpuProfile24StreamPendingTraceEventsEvE28trace_event_unique_atomic768 = internal global i64 0, align 8
@.str.44 = private unnamed_addr constant [13 x i8] c"ProfileChunk\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"endTime\00", align 1
@_ZZN2v88internal10CpuProfile13FinishProfileEvE28trace_event_unique_atomic785 = internal global i64 0, align 8
@.str.46 = private unnamed_addr constant [8 x i8] c"\22line\22:\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c",\22ticks\22:\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"\22functionName\22:\22\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"\22,\22lineNumber\22:\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c",\22columnNumber\22:\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c",\22scriptId\22:\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c",\22url\22:\22\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"\22id\22:\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c",\22hitCount\22:\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c",\22callFrame\22:{\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c",\22children\22:[\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"no reason\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c",\22deoptReason\22:\22\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c",\22positionTicks\22:[\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"\22nodes\22:[\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c",\22startTime\22:\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c",\22endTime\22:\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c",\22samples\22:[\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c",\22timeDeltas\22:[\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"[Top down]:\0A\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"%p %5d %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"callFrame\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"functionName\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"scriptId\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"lineNumber\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"columnNumber\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"codeType\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"deoptReason\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"JS\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"wasm\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.85 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.86 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZZN2v88internal13ProfilerStats8InstanceEvE5stats = linkonce_odr hidden global %"class.v8::internal::ProfilerStats" zeroinitializer, comdat, align 4
@.str.87 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZTVN2v88internal32CpuProfileMaxSamplesCallbackTaskE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal32CpuProfileMaxSamplesCallbackTaskD2Ev, ptr @_ZN2v88internal32CpuProfileMaxSamplesCallbackTaskD0Ev, ptr @_ZN2v88internal32CpuProfileMaxSamplesCallbackTask3RunEv] }, comdat, align 8
@.str.88 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"Chunk size insufficient to serialize number\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@switch.table._ZNK2v88internal11ProfileNode11source_typeEv = private unnamed_addr constant [11 x i32] [i32 1, i32 2, i32 0, i32 0, i32 1, i32 1, i32 3, i32 0, i32 3, i32 1, i32 1], align 4

@_ZN2v88internal11ProfileNodeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal11ProfileNodeD2Ev
@_ZN2v88internal11ProfileTreeC1EPNS0_7IsolateEPNS0_16CodeEntryStorageE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal11ProfileTreeC2EPNS0_7IsolateEPNS0_16CodeEntryStorageE
@_ZN2v88internal11ProfileTreeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal11ProfileTreeD2Ev
@_ZN2v88internal10CpuProfileC1EPNS0_11CpuProfilerEjPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS8_EE = hidden unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, ptr), ptr @_ZN2v88internal10CpuProfileC2EPNS0_11CpuProfilerEjPKcNS_19CpuProfilingOptionsESt10unique_ptrINS_24DiscardedSamplesDelegateESt14default_deleteIS8_EE
@_ZN2v88internal20InstructionStreamMapC1ERNS0_16CodeEntryStorageE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal20InstructionStreamMapC2ERNS0_16CodeEntryStorageE
@_ZN2v88internal20InstructionStreamMapD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal20InstructionStreamMapD2Ev
@_ZN2v88internal21CpuProfilesCollectionC1EPNS0_7IsolateE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal21CpuProfilesCollectionC2EPNS0_7IsolateE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19SourcePositionTable11SetPositionEiNS0_13LineAndColumnEi(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.3.0.extract.shift = lshr i64 %2, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 10 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, %1
  br i1 %i.g, label %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE9push_backEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -12
  %i.i = load i32, ptr %i.h, align 4
  %.not = icmp eq i32 %i.i, %.sroa.0.0.extract.trunc
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.k = load i32, ptr %i.j, align 4
  %.not6 = icmp eq i32 %i.k, %.sroa.3.0.extract.trunc
  br i1 %.not6, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.m = load i32, ptr %i.l, align 4
  %.not7 = icmp eq i32 %i.m, %3
  br i1 %.not7, label %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE9push_backEOS3_.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i.i = icmp eq ptr %i.c, %i.o
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  store i32 %1, ptr %i.c, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %3, ptr %.sroa.7.0..sroa_idx, align 4
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.b, align 8
  br label %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE9push_backEOS3_.exit

bb.g:                                             ; preds = %.thread
  %i.r = ptrtoint ptr %i.c to i64
  %i.s = ptrtoint ptr %i.a to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775792
  br i1 %i.u, label %bb.h, label %_ZNKSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #28
  unreachable

_ZNKSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.v = ashr exact i64 %i.t, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 576460752303423487)
  %i.z = select i1 %i.x, i64 576460752303423487, i64 %i.y ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #29 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 4 uses
  store i32 %1, ptr %i.ac, align 4
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i64 %2, ptr %.sroa.5.0..sroa_idx9, align 4
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %3, ptr %.sroa.7.0..sroa_idx13, align 4
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.i, label %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.a, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.t) #30
  br label %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ab, ptr %0, align 8
  store ptr %i.ae, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.af, ptr %i.n, align 8
  br label %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN2v88internal19SourcePositionTable19SourcePositionTupleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f, %bb.b, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2v88internal19SourcePositionTable19GetSourceLineNumberEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNK2v88internal19SourcePositionTable8GetTupleEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK2v88internal19SourcePositionTable8GetTupleEi.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.b, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp slt i32 %i.l, %1                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i.i.i, %i.o
  %.sroa.011.1.i.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.j  ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, !llvm.loop !5

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.r = icmp eq ptr %.sroa.011.1.i.i.i, %i.a
  %spec.select.idx.i = select i1 %i.r, i64 0, i64 -16
  %spec.select.i = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i, i64 %spec.select.idx.i
  br label %_ZNK2v88internal19SourcePositionTable8GetTupleEi.exit

_ZNK2v88internal19SourcePositionTable8GetTupleEi.exit: ; preds = %bb.a, %bb.b, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i
  %.0.i = phi ptr [ @_ZZNK2v88internal19SourcePositionTable8GetTupleEiE11kEmptyTuple, %bb.a ], [ %spec.select.i, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ], [ %i.a, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.t = load i32, ptr %i.s, align 4
  ret i32 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull align 4 dereferenceable(16) ptr @_ZNK2v88internal19SourcePositionTable8GetTupleEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp slt i32 %i.l, %1                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 3 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.j    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19SourcePositionTable19SourcePositionTupleESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit, !llvm.loop !5

end_hunk_0
begin_hunk_1_@_ZN2v88internal10CpuProfile7AddPathENS_4base9TimeTicksERKSt6vectorINS0_20CodeEntryAndPositionESaIS5_EENS0_13LineAndColumnEbNS2_9TimeDeltaENS_8StateTagENS_16EmbedderStateTagESt8optionalImE:bb.a
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #31, !inline_history !54
  br label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.cs = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.ck, %bb.p ], [ %i.cu, %bb.q ]
  %i.cv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cv, label %bb.r, label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !8

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #31
  br label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88internal32CpuProfileMaxSamplesCallbackTaskESt14default_deleteIS2_EED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.k, %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EE9push_backEOS3_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 3
  %i.dg = icmp ne ptr %i.cz, null
  %.neg.i.i19 = sext i1 %i.dg to i64
  %i.dh = add nsw i64 %i.df, %.neg.i.i19
  %i.di = mul nsw i64 %i.dh, 10
  %i.dj = load ptr, ptr %i.cw, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 48
  %i.dq = add nsw i64 %i.di, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.cx, align 8
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 48
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = sub i64 %i.dq, %i.dz
  %i.eb = add i64 %i.ea, %i.dx
  %i.ec = icmp ugt i64 %i.eb, 99
  br i1 %i.ec, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = load ptr, ptr %i.h, align 8
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = icmp ugt i64 %i.ei, 72
  br i1 %i.ej, label %bb.u, label %_ZN2v88internal10CpuProfile14CheckSubsampleENS_4base9TimeDeltaE.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @_ZN2v88internal10CpuProfile24StreamPendingTraceEventsEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
  br label %_ZN2v88internal10CpuProfile14CheckSubsampleENS_4base9TimeDeltaE.exit

_ZN2v88internal10CpuProfile14CheckSubsampleENS_4base9TimeDeltaE.exit: ; preds = %bb.b, %bb.t, %bb.u
  ret void
}

declare noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10CpuProfile24StreamPendingTraceEventsEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca [2 x %"class.std::unique_ptr.320"], align 16 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_ptr.179", align 8 ; 28 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !55 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !noalias !55 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !noalias !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 24, i1 false), !noalias !55
  %i.j = icmp eq ptr %i.e, %i.g
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.dg, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN2v87tracing11TracedValue6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.179") align 8 %2) #31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp ne ptr %i.s, null
  %.neg.i.i = sext i1 %i.z to i64
  %i.aa = add nsw i64 %i.y, %.neg.i.i
  %i.ab = mul nsw i64 %i.aa, 10
  %i.ac = load ptr, ptr %i.k, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 48                ; 2 uses
  %i.aj = add nsw i64 %i.ab, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.l, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = sdiv exact i64 %i.ap, 48                ; 2 uses
  %i.ar = add nsw i64 %i.aj, %i.aq
  %.not = icmp eq i64 %i.q, %i.ar
  br i1 %.not, label %bb.aw, label %.thread103

.thread103:                                       ; preds = %bb.c
  %i.as = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue15BeginDictionaryEPKc(ptr noundef nonnull align 8 dereferenceable(41) %i.as, ptr noundef nonnull @.str.37) #31
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN2v87tracing11TracedValue6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.179") align 8 %2) #31
  %i.at = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue15BeginDictionaryEPKc(ptr noundef nonnull align 8 dereferenceable(41) %i.at, ptr noundef nonnull @.str.37) #31
  %i.au = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue10BeginArrayEPKc(ptr noundef nonnull align 8 dereferenceable(41) %i.au, ptr noundef nonnull @.str.38) #31
  br label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114BuildNodeValueEPKNS0_11ProfileNodeEPNS_7tracing11TracedValueE.exit
  %i.av = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue8EndArrayEv(ptr noundef nonnull align 8 dereferenceable(41) %i.av) #31
  br label %bb.o

bb.f:                                             ; preds = %bb.d, %_ZN2v88internal12_GLOBAL__N_114BuildNodeValueEPKNS0_11ProfileNodeEPNS_7tracing11TracedValueE.exit
  %.sroa.089.0119 = phi ptr [ %i.e, %bb.d ], [ %i.cb, %_ZN2v88internal12_GLOBAL__N_114BuildNodeValueEPKNS0_11ProfileNodeEPNS_7tracing11TracedValueE.exit ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.089.0119, align 8  ; 3 uses
  %i.ax = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue15BeginDictionaryEv(ptr noundef nonnull align 8 dereferenceable(41) %i.ax) #31
  %i.ay = load ptr, ptr %2, align 8               ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 6 uses
  call void @_ZN2v87tracing11TracedValue15BeginDictionaryEPKc(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.71) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.72, ptr noundef %i.bc) #31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %.not.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.73, ptr noundef nonnull %i.be) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bh = load i32, ptr %i.bg, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.74, i32 noundef %i.bh) #31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bi, align 8 ; 2 uses
  %i.bj = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %.not34.i = icmp eq i64 %i.bj, 0
  br i1 %.not34.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.05.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.bk = add nsw i32 %.sroa.05.0.extract.trunc.i, -1
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.75, i32 noundef %i.bk) #31
  %.sroa.0.0.copyload.i41.pre.i = load i64, ptr %i.bi, align 8 ; 2 uses
  %.pre.i = and i64 %.sroa.0.0.copyload.i41.pre.i, 4294967295
  %i.bl = icmp eq i64 %.pre.i, 0
  br i1 %i.bl, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i41.pre.i, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.bm = add nsw i32 %.sroa.3.0.extract.trunc.i, -1
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.76, i32 noundef %i.bm) #31
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %5 = load i32, ptr %i.ba, align 8
  %6 = and i32 %5, 1610612736
  switch i32 %6, label %9 [
    i32 0, label %.thread.i.a
    i32 536870912, label %7
    i32 1073741824, label %8
  ]

7:                                                ; preds = %.thread.i
  br label %.thread.i.a

8:                                                ; preds = %.thread.i
  br label %.thread.i.a

9:                                                ; preds = %.thread.i
  unreachable

.thread.i.a:                                      ; preds = %8, %7, %.thread.i
  %.0.i.i = phi ptr [ @.str.83, %8 ], [ @.str.82, %7 ], [ @.str.81, %.thread.i ]
  call void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.77, ptr noundef nonnull %.0.i.i) #31
  call void @_ZN2v87tracing11TracedValue13EndDictionaryEv(ptr noundef nonnull align 8 dereferenceable(41) %i.ay) #31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.bo = load i32, ptr %i.bn, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.78, i32 noundef %i.bo) #31
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not36.i = icmp eq ptr %i.bq, null
  br i1 %.not36.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread.i.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.bs = load i32, ptr %i.br, align 8
  call void @_ZN2v87tracing11TracedValue10SetIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.79, i32 noundef %i.bs) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.i.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.thread.i, label %_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.i

_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.i: ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not37.i = icmp eq ptr %i.bw, null
  br i1 %.not37.i, label %_ZN2v88internal12_GLOBAL__N_114BuildNodeValueEPKNS0_11ProfileNodeEPNS_7tracing11TracedValueE.exit, label %_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.thread.i

_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.thread.i: ; preds = %_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.i, %bb.l
  %i.bx = phi ptr [ %i.bw, %_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.i ], [ @.str.2, %bb.l ] ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1
  %.not38.i = icmp eq i8 %i.by, 0
  br i1 %.not38.i, label %_ZN2v88internal12_GLOBAL__N_114BuildNodeValueEPKNS0_11ProfileNodeEPNS_7tracing11TracedValueE.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.thread.i
  %i.bz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(10) @.str.57) #32
  %.not39.i = icmp eq i32 %i.bz, 0
  br i1 %.not39.i, label %_ZN2v88internal12_GLOBAL__N_114BuildNodeValueEPKNS0_11ProfileNodeEPNS_7tracing11TracedValueE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v87tracing11TracedValue9SetStringEPKcS3_(ptr noundef nonnull align 8 dereferenceable(41) %i.ay, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.bx) #31
  br label %_ZN2v88internal12_GLOBAL__N_114BuildNodeValueEPKNS0_11ProfileNodeEPNS_7tracing11TracedValueE.exit

_ZN2v88internal12_GLOBAL__N_114BuildNodeValueEPKNS0_11ProfileNodeEPNS_7tracing11TracedValueE.exit: ; preds = %_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.i, %_ZNK2v88internal9CodeEntry14bailout_reasonEv.exit.thread.i, %bb.m, %bb.n
  %i.ca = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue13EndDictionaryEv(ptr noundef nonnull align 8 dereferenceable(41) %i.ca) #31
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.089.0119, i64 8 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.g
  br i1 %i.cc, label %bb.e, label %bb.f

bb.o:                                             ; preds = %.thread103, %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %i.cp = icmp ne ptr %i.ci, null
  %.neg.i.i40 = sext i1 %i.cp to i64
  %i.cq = add nsw i64 %i.co, %.neg.i.i40
  %i.cr = mul nsw i64 %i.cq, 10
  %i.cs = load ptr, ptr %i.cf, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 48
  %i.cz = add nsw i64 %i.cr, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load ptr, ptr %i.cg, align 8
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = sdiv exact i64 %i.df, 48
  %i.dh = add nsw i64 %i.cz, %i.dg
  %.not35 = icmp eq i64 %i.ce, %i.dh
  br i1 %.not35, label %bb.av, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue10BeginArrayEPKc(ptr noundef nonnull align 8 dereferenceable(41) %i.di, ptr noundef nonnull @.str.39) #31
  %i.dj = load i64, ptr %i.cd, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EEixEm.exit, %bb.p
  %.030 = phi i64 [ %i.dj, %bb.p ], [ %i.fi, %_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EEixEm.exit ] ; 4 uses
  %i.dl = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.dm = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = icmp ne ptr %i.dl, null
  %.neg.i.i41 = sext i1 %i.dr to i64
  %i.ds = add nsw i64 %i.dq, %.neg.i.i41
  %i.dt = mul nsw i64 %i.ds, 10
  %i.du = load ptr, ptr %i.cf, align 8
  %i.dv = load ptr, ptr %i.ct, align 8
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 48
  %i.ea = add nsw i64 %i.dt, %i.dz
  %i.eb = load ptr, ptr %i.da, align 8
  %i.ec = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 48
  %i.eh = add nsw i64 %i.ea, %i.eg
  %i.ei = icmp ult i64 %.030, %i.eh
  %i.ej = load ptr, ptr %2, align 8               ; 2 uses
  br i1 %i.ei, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v87tracing11TracedValue8EndArrayEv(ptr noundef nonnull align 8 dereferenceable(41) %i.ej) #31
  %i.ek = load ptr, ptr %2, align 8
  call void @_ZN2v87tracing11TracedValue15BeginDictionaryEPKc(ptr noundef nonnull align 8 dereferenceable(41) %i.ek, ptr noundef nonnull @.str.40) #31
  %i.el = load i64, ptr %i.cd, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.eo = load ptr, ptr %i.dk, align 8, !noalias !58
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ee, %i.ep
  %i.er = sdiv exact i64 %i.eq, 48
  %i.es = add nsw i64 %i.er, %.030                ; 5 uses
  %i.et = icmp sgt i64 %i.es, -1
  br i1 %i.et, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.eu = icmp samesign ult i64 %i.es, 10
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ev = getelementptr inbounds [48 x i8], ptr %i.ec, i64 %.030
  br label %_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EEixEm.exit

bb.v:                                             ; preds = %bb.t
  %i.ew = udiv i64 %i.es, 10
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.ex = xor i64 %i.es, -1
  %i.ey = udiv i64 %i.ex, 10
  %i.ez = xor i64 %i.ey, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fa = phi i64 [ %i.ew, %bb.v ], [ %i.ez, %bb.w ] ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !58
  %.idx.i.i.i.i = mul i64 %i.fa, -480
  %i.fd = getelementptr i8, ptr %i.fc, i64 %.idx.i.i.i.i
  %i.fe = getelementptr [48 x i8], ptr %i.fd, i64 %i.es
  br label %_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EEixEm.exit

_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EEixEm.exit: ; preds = %bb.u, %bb.x
  %storemerge.i.i.i.i = phi ptr [ %i.fe, %bb.x ], [ %i.ev, %bb.u ]
  %i.ff = load ptr, ptr %storemerge.i.i.i.i, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 120
  %i.fh = load i32, ptr %i.fg, align 8
  call void @_ZN2v87tracing11TracedValue13AppendIntegerEi(ptr noundef nonnull align 8 dereferenceable(41) %i.ej, i32 noundef %i.fh) #31
  %i.fi = add nuw i64 %.030, 1
  br label %bb.q, !llvm.loop !61

bb.y:                                             ; preds = %bb.au, %bb.r
  %.032 = phi i64 [ %i.el, %bb.r ], [ %i.kr, %bb.au ] ; 6 uses
  %i.fj = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.fk = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = icmp ne ptr %i.fj, null
  %.neg.i.i42 = sext i1 %i.fp to i64
  %i.fq = add nsw i64 %i.fo, %.neg.i.i42
  %i.fr = mul nsw i64 %i.fq, 10
  %i.fs = load ptr, ptr %i.cf, align 8
  %i.ft = load ptr, ptr %i.ct, align 8
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 48
  %i.fy = add nsw i64 %i.fr, %i.fx
  %i.fz = load ptr, ptr %i.da, align 8
  %i.ga = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc
end_hunk_1
