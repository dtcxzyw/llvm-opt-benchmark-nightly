Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/register-allocator?download=true
inline.NumInlined: 5702
inline.NumDeleted: 2184
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.std::pair.99" = type <{ ptr, i32, [4 x i8] }>
%"class.std::function.315" = type { %"class.std::_Function_base", ptr }
%"class.v8::internal::SmallZoneMap" = type { %"class.v8::base::SmallMap" }
%"class.v8::base::SmallMap" = type { i64, %"class.v8::internal::ZoneMapInit", %union.anon.98 }
%"class.v8::internal::ZoneMapInit" = type { ptr }
%union.anon.98 = type { %"class.v8::internal::ZoneMap.102", [200 x i8] }
%"class.v8::internal::ZoneMap.102" = type { %"class.std::map.103" }
%"class.std::map.103" = type { %"class.std::_Rb_tree.104" }
%"class.std::_Rb_tree.104" = type { %"struct.std::_Rb_tree<v8::internal::compiler::TopLevelLiveRange *, std::pair<v8::internal::compiler::TopLevelLiveRange *const, int>, std::_Select1st<std::pair<v8::internal::compiler::TopLevelLiveRange *const, int>>, std::less<v8::internal::compiler::TopLevelLiveRange *>, v8::internal::ZoneAllocator<std::pair<v8::internal::compiler::TopLevelLiveRange *const, int>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<v8::internal::compiler::TopLevelLiveRange *, std::pair<v8::internal::compiler::TopLevelLiveRange *const, int>, std::_Select1st<std::pair<v8::internal::compiler::TopLevelLiveRange *const, int>>, std::less<v8::internal::compiler::TopLevelLiveRange *>, v8::internal::ZoneAllocator<std::pair<v8::internal::compiler::TopLevelLiveRange *const, int>>>::_Rb_tree_impl" = type { %"class.v8::internal::ZoneAllocator.105", [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.v8::internal::ZoneAllocator.105" = type { ptr }
%"class.v8::base::EmbeddedVector" = type { %"class.v8::base::Vector.146", [32 x %"class.v8::internal::compiler::LifetimePosition"] }
%"class.v8::base::Vector.146" = type { ptr, i64 }
%"class.v8::internal::compiler::LifetimePosition" = type { i32 }
%"class.v8::internal::ZoneVector.148" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::AllocatedOperand" = type { %"class.v8::internal::compiler::LocationOperand" }
%"class.v8::internal::compiler::LocationOperand" = type { %"class.v8::internal::compiler::InstructionOperand" }
%"class.v8::internal::ZoneVector.19" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::SpillPlacer" = type <{ ptr, ptr, ptr, ptr, i32, %"class.v8::internal::compiler::RpoNumber", %"class.v8::internal::compiler::RpoNumber", [4 x i8] }>
%"class.v8::internal::compiler::RpoNumber" = type { i32 }
%"class.v8::internal::ZoneQueue" = type { %"class.std::queue" }
%"class.std::queue" = type { %"class.v8::internal::ZoneDeque" }
%"class.v8::internal::ZoneDeque" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, v8::internal::RecyclingZoneAllocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, v8::internal::RecyclingZoneAllocator<int>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator", %"struct.std::_Deque_base<int, v8::internal::RecyclingZoneAllocator<int>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator" = type { %"class.v8::internal::ZoneAllocator.166", ptr }
%"class.v8::internal::ZoneAllocator.166" = type { ptr }
%"struct.std::_Deque_base<int, v8::internal::RecyclingZoneAllocator<int>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneSet" = type { %"class.std::set" }
%"class.std::set" = type { %"class.std::_Rb_tree.167" }
%"class.std::_Rb_tree.167" = type { %"struct.std::_Rb_tree<std::pair<v8::internal::compiler::RpoNumber, int>, std::pair<v8::internal::compiler::RpoNumber, int>, std::_Identity<std::pair<v8::internal::compiler::RpoNumber, int>>, std::less<std::pair<v8::internal::compiler::RpoNumber, int>>, v8::internal::ZoneAllocator<std::pair<v8::internal::compiler::RpoNumber, int>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::pair<v8::internal::compiler::RpoNumber, int>, std::pair<v8::internal::compiler::RpoNumber, int>, std::_Identity<std::pair<v8::internal::compiler::RpoNumber, int>>, std::less<std::pair<v8::internal::compiler::RpoNumber, int>>, v8::internal::ZoneAllocator<std::pair<v8::internal::compiler::RpoNumber, int>>>::_Rb_tree_impl" = type { %"class.v8::internal::ZoneAllocator.168", [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.v8::internal::ZoneAllocator.168" = type { ptr }
%"class.v8::internal::SparseBitVector" = type { %"struct.v8::internal::SparseBitVector::Segment", ptr }
%"struct.v8::internal::SparseBitVector::Segment" = type { i32, [6 x i64], ptr }
%"class.v8::internal::ZoneMap.151" = type { %"class.std::map.152" }
%"class.std::map.152" = type { %"class.std::_Rb_tree.153" }
%"class.std::_Rb_tree.153" = type { %"struct.std::_Rb_tree<std::pair<v8::internal::compiler::ParallelMove *, v8::internal::compiler::InstructionOperand>, std::pair<const std::pair<v8::internal::compiler::ParallelMove *, v8::internal::compiler::InstructionOperand>, v8::internal::compiler::InstructionOperand>, std::_Select1st<std::pair<const std::pair<v8::internal::compiler::ParallelMove *, v8::internal::compiler::InstructionOperand>, v8::internal::compiler::InstructionOperand>>, v8::internal::compiler::DelayedInsertionMapCompare, v8::internal::ZoneAllocator<std::pair<const std::pair<v8::internal::compiler::ParallelMove *, v8::internal::compiler::InstructionOperand>, v8::internal::compiler::InstructionOperand>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::pair<v8::internal::compiler::ParallelMove *, v8::internal::compiler::InstructionOperand>, std::pair<const std::pair<v8::internal::compiler::ParallelMove *, v8::internal::compiler::InstructionOperand>, v8::internal::compiler::InstructionOperand>, std::_Select1st<std::pair<const std::pair<v8::internal::compiler::ParallelMove *, v8::internal::compiler::InstructionOperand>, v8::internal::compiler::InstructionOperand>>, v8::internal::compiler::DelayedInsertionMapCompare, v8::internal::ZoneAllocator<std::pair<const std::pair<v8::internal::compiler::ParallelMove *, v8::internal::compiler::InstructionOperand>, v8::internal::compiler::InstructionOperand>>>::_Rb_tree_impl" = type { %"class.v8::internal::ZoneAllocator.154", [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.v8::internal::ZoneAllocator.154" = type { ptr }
%"struct.std::pair.160" = type { %"struct.std::pair.162", %"class.v8::internal::compiler::InstructionOperand" }
%"struct.std::pair.162" = type { ptr, %"class.v8::internal::compiler::InstructionOperand" }
%"class.v8::internal::ZoneVector.44" = type { ptr, ptr, ptr, ptr }
%union.Storage = type { [16 x %"struct.std::pair.99"] }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.323" = type { i8 }
%union.Storage.368 = type { [16 x %"struct.std::pair.110"] }
%union.Storage.383 = type { [16 x %"struct.std::pair.126"] }
%"struct.std::_Rb_tree<v8::internal::compiler::LiveRange *, v8::internal::compiler::LiveRange *, std::_Identity<v8::internal::compiler::LiveRange *>, v8::internal::compiler::LinearScanAllocator::UnhandledLiveRangeOrdering, v8::internal::ZoneAllocator<v8::internal::compiler::LiveRange *>>::_Alloc_node" = type { ptr }

$_ZN2v88internal12StdoutStreamD1Ev = comdat any

$_ZN2v88internal8compilerlsERSoNS1_16LifetimePositionE = comdat any

$_ZNK2v88internal8compiler11UseInterval11PrettyPrintERSo = comdat any

$_ZN2v88internal15SparseBitVector5UnionERKS1_ = comdat any

$_ZN2v88internal9ZoneQueueIiEC2EPNS0_4ZoneE = comdat any

$_ZN2v88internal8OFStreamD1Ev = comdat any

$_ZN2v88internal8OFStreamD0Ev = comdat any

$_ZTv0_n24_N2v88internal8OFStreamD1Ev = comdat any

$_ZTv0_n24_N2v88internal8OFStreamD0Ev = comdat any

$_ZN2v88internal12StdoutStreamD0Ev = comdat any

$_ZTv0_n24_N2v88internal12StdoutStreamD1Ev = comdat any

$_ZTv0_n24_N2v88internal12StdoutStreamD0Ev = comdat any

$_ZN2v88internal8compiler12ParallelMove7AddMoveERKNS1_18InstructionOperandES5_PNS0_4ZoneE = comdat any

$_ZN2v88internal15SparseBitVector18InsertSegmentAfterEPNS1_7SegmentES3_ = comdat any

$_ZN2v88internal15SparseBitVector14InsertBitAfterEPNS1_7SegmentEi = comdat any

$_ZN2v84base8SmallMapINS_8internal7ZoneMapIPNS2_8compiler17TopLevelLiveRangeEiSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE16ConvertToRealMapEv = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRS6_RiEEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE16_M_insert_uniqueIS7_EES5_ISt17_Rb_tree_iteratorIS7_EbEOT_ = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJS7_EEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEEaSERKS5_ = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJS4_iEEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_iESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE8_M_eraseEPSt13_Rb_tree_nodeIS7_E = comdat any

$_ZSt16__introsort_loopIPPN2v88internal8compiler9LiveRangeElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_T0_ = comdat any

$_ZSt11__make_heapIPPN2v88internal8compiler9LiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_19LinearScanAllocator25InactiveLiveRangeOrderingEEEEvT_SC_RT0_ = comdat any

$_ZSt16__introsort_loopIPPN2v88internal8compiler17TopLevelLiveRangeElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_T0_ = comdat any

$_ZSt11__make_heapIPPN2v88internal8compiler17TopLevelLiveRangeEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_17LiveRangeOrderingEEEEvT_SB_RT0_ = comdat any

$_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler12ParallelMoveENS3_18InstructionOperandEES0_IKS7_S6_ESt10_Select1stIS9_ENS3_26DelayedInsertionMapCompareENS2_13ZoneAllocatorIS9_EEE8_M_eraseEPSt13_Rb_tree_nodeIS9_E = comdat any

$_ZNSt8_Rb_treeISt4pairIN2v88internal8compiler9RpoNumberEiES5_St9_IdentityIS5_ESt4lessIS5_ENS2_13ZoneAllocatorIS5_EEE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE4GrowEm = comdat any

$_ZN2v88internal8compiler22DoubleEndedSplitVectorINS1_11UseIntervalEE6GrowAtILNS1_15GrowthDirectionE0EEEvPNS0_4ZoneEm = comdat any

$_ZN2v88internal8compiler22DoubleEndedSplitVectorINS1_11UseIntervalEE6GrowAtILNS1_15GrowthDirectionE1EEEvPNS0_4ZoneEm = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEE19PrepareForInsertionEPKS4_mPm = comdat any

$_ZN2v88internal8compiler22DoubleEndedSplitVectorIPNS1_11UsePositionEE6GrowAtILNS1_15GrowthDirectionE0EEEvPNS0_4ZoneEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler11UseIntervalEE19PrepareForInsertionEPKS3_mPm = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE19PrepareForInsertionEPKS4_mPm = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler18InstructionOperandEE4GrowEm = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal8compiler22RegisterAllocationData11PhiMapValueEESt10_Select1stIS8_ESt4lessIiENS3_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJS0_IiS7_EEEES0_ISt17_Rb_tree_iteratorIS8_EbEDpOT_ = comdat any

$_ZN2v88internal10ZoneVectorISt4pairIPNS0_8compiler17TopLevelLiveRangeEiEE4GrowEm = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler17TopLevelLiveRangeESt4pairIKS4_PNS2_16AllocatedOperandEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS4_RS8_EEES5_ISt17_Rb_tree_iteratorIS9_EbEDpOT_ = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler22RegisterAllocationData16DelayedReferenceEE4GrowEm = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler18InstructionOperandESt4pairIKS4_PNS2_11UsePositionEESt10_Select1stIS9_ESt4lessIS4_ENS1_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJS5_IS4_S8_EEEES5_ISt17_Rb_tree_iteratorIS9_EbEDpOT_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler9LiveRangeEE4GrowEm = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler9LiveRangeES4_St9_IdentityIS4_ENS2_19LinearScanAllocator26UnhandledLiveRangeOrderingENS1_13ZoneAllocatorIS4_EEE11equal_rangeERKS4_ = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler9LiveRangeES4_St9_IdentityIS4_ENS2_19LinearScanAllocator26UnhandledLiveRangeOrderingENS1_13ZoneAllocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler9LiveRangeES4_St9_IdentityIS4_ENS2_19LinearScanAllocator26UnhandledLiveRangeOrderingENS1_13ZoneAllocatorIS4_EEE15_M_insert_equalIRKS4_EESt17_Rb_tree_iteratorIS4_EOT_ = comdat any

$_ZNSt8_Rb_treeIPN2v88internal8compiler9LiveRangeES4_St9_IdentityIS4_ENS2_19LinearScanAllocator26UnhandledLiveRangeOrderingENS1_13ZoneAllocatorIS4_EEE10_M_insert_IRKS4_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSJ_OT_RT0_ = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler10SpillRangeEE4GrowEm = comdat any

$_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler12ParallelMoveENS3_18InstructionOperandEES0_IKS7_S6_ESt10_Select1stIS9_ENS3_26DelayedInsertionMapCompareENS2_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJS0_IS7_S6_EEEES0_ISt17_Rb_tree_iteratorIS9_EbEDpOT_ = comdat any

$_ZNSt11_Deque_baseIiN2v88internal22RecyclingZoneAllocatorIiEEE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeIiN2v88internal22RecyclingZoneAllocatorIiEEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZNSt5dequeIiN2v88internal22RecyclingZoneAllocatorIiEEE17_M_reallocate_mapEmb = comdat any

$_ZTVN2v88internal12StdoutStreamE = comdat any

$_ZTTN2v88internal12StdoutStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = comdat any

$_ZTCN2v88internal12StdoutStreamE0_So = comdat any

$_ZTVN2v88internal8OFStreamE = comdat any

$_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names = comdat any

$_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names = comdat any

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"positions_span_.end() == next_->positions_span_.begin()\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Range: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"phi \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"nlphi \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"s?\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"start.value() >= position\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"Register allocator error: live v%d reached first block.\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"  (first use is at position %d in instruction %d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"  (function: %s)\0A\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"live_ranges_size == data()->live_ranges().size()\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"initial_range_count == data()->live_ranges().size()\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"unassigned\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"start < end\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@_ZTVN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal12StdoutStreamD1Ev, ptr @_ZN2v88internal12StdoutStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev, ptr @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev] }, comdat, align 8
@_ZTTN2v88internal12StdoutStreamE = linkonce_odr hidden unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_So, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVN2v88internal12StdoutStreamE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTCN2v88internal12StdoutStreamE0_So = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr null, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr null, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVN2v88internal8OFStreamE = linkonce_odr hidden unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr null, ptr @_ZN2v88internal8OFStreamD1Ev, ptr @_ZN2v88internal8OFStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr null, ptr @_ZTv0_n24_N2v88internal8OFStreamD1Ev, ptr @_ZTv0_n24_N2v88internal8OFStreamD0Ev] }, comdat, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.92 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"(deferred)\00", align 1
@.str.95 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"[-B%d-%s\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names = linkonce_odr hidden local_unnamed_addr constant [16 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], comdat, align 16
@.str.100 = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"rdx\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"rbx\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"rbp\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"rsi\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"rdi\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"r10\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"r12\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"r13\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"r14\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"r15\00", align 1
@_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names = linkonce_odr hidden local_unnamed_addr constant [16 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], comdat, align 16
@.str.117 = private unnamed_addr constant [5 x i8] c"xmm0\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"xmm1\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"xmm2\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"xmm3\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"xmm4\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"xmm5\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"xmm6\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"xmm7\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"xmm8\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"xmm9\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"xmm10\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"xmm11\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"xmm12\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"xmm13\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"xmm14\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"xmm15\00", align 1
@.str.137 = private unnamed_addr constant [53 x i8] c"std::numeric_limits<size_t>::max() - size() >= count\00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.139 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.140 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"i <= size_\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"base::SmallVector::Grow\00", align 1
@.str.145 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@switch.table._ZN2v88internal8compiler19LinearScanAllocator13PrintRangeRowERSoPKNS1_17TopLevelLiveRangeE = private unnamed_addr constant [4 x ptr] [ptr @.str.18, ptr @.str.17, ptr @.str.15, ptr @.str.16], align 8

@_ZN2v88internal8compiler11UsePositionC1ENS1_16LifetimePositionEPNS1_18InstructionOperandEPvNS1_19UsePositionHintTypeE = hidden unnamed_addr alias void (ptr, i32, ptr, ptr, i8), ptr @_ZN2v88internal8compiler11UsePositionC2ENS1_16LifetimePositionEPNS1_18InstructionOperandEPvNS1_19UsePositionHintTypeE
@_ZN2v88internal8compiler9LiveRangeC1EiNS0_21MachineRepresentationEPNS1_17TopLevelLiveRangeE = hidden unnamed_addr alias void (ptr, i32, i8, ptr), ptr @_ZN2v88internal8compiler9LiveRangeC2EiNS0_21MachineRepresentationEPNS1_17TopLevelLiveRangeE
@_ZN2v88internal8compiler17TopLevelLiveRangeC1EiNS0_21MachineRepresentationEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, i32, i8, ptr), ptr @_ZN2v88internal8compiler17TopLevelLiveRangeC2EiNS0_21MachineRepresentationEPNS0_4ZoneE
@_ZN2v88internal8compiler10SpillRangeC1EPNS1_17TopLevelLiveRangeEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal8compiler10SpillRangeC2EPNS1_17TopLevelLiveRangeEPNS0_4ZoneE
@_ZN2v88internal8compiler22RegisterAllocationData11PhiMapValueC1EPNS1_14PhiInstructionEPKNS1_16InstructionBlockEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN2v88internal8compiler22RegisterAllocationData11PhiMapValueC2EPNS1_14PhiInstructionEPKNS1_16InstructionBlockEPNS0_4ZoneE
@_ZN2v88internal8compiler22RegisterAllocationDataC1EPKNS0_21RegisterConfigurationEPNS0_4ZoneEPNS1_5FrameEPNS1_19InstructionSequenceEPNS0_11TickCounterEPKc = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN2v88internal8compiler22RegisterAllocationDataC2EPKNS0_21RegisterConfigurationEPNS0_4ZoneEPNS1_5FrameEPNS1_19InstructionSequenceEPNS0_11TickCounterEPKc
@_ZN2v88internal8compiler17ConstraintBuilderC1EPNS1_22RegisterAllocationDataE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal8compiler17ConstraintBuilderC2EPNS1_22RegisterAllocationDataE
@_ZN2v88internal8compiler16LiveRangeBuilderC1EPNS1_22RegisterAllocationDataEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal8compiler16LiveRangeBuilderC2EPNS1_22RegisterAllocationDataEPNS0_4ZoneE
@_ZN2v88internal8compiler17RegisterAllocatorC1EPNS1_22RegisterAllocationDataENS1_12RegisterKindE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN2v88internal8compiler17RegisterAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindE
@_ZN2v88internal8compiler19LinearScanAllocatorC1EPNS1_22RegisterAllocationDataENS1_12RegisterKindEPNS0_4ZoneE = hidden unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN2v88internal8compiler19LinearScanAllocatorC2EPNS1_22RegisterAllocationDataENS1_12RegisterKindEPNS0_4ZoneE
@_ZN2v88internal8compiler15OperandAssignerC1EPNS1_22RegisterAllocationDataE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal8compiler15OperandAssignerC2EPNS1_22RegisterAllocationDataE
@_ZN2v88internal8compiler21ReferenceMapPopulatorC1EPNS1_22RegisterAllocationDataE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal8compiler21ReferenceMapPopulatorC2EPNS1_22RegisterAllocationDataE
@_ZN2v88internal8compiler18LiveRangeConnectorC1EPNS1_22RegisterAllocationDataE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal8compiler18LiveRangeConnectorC2EPNS1_22RegisterAllocationDataE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal8compiler11UsePositionC2ENS1_16LifetimePositionEPNS1_18InstructionOperandEPvNS1_19UsePositionHintTypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i32 %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  store ptr %2, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 0, ptr %i.c, align 4
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8                ; 2 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.d, 515396075520               ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 377957122048, label %.thread
    i64 446676598784, label %.thread17
    i64 171798691840, label %.thread17.fold.split
  ]

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.1.ph = phi i32 [ 2, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.h = zext i8 %4 to i32
  %i.i = shl nuw nsw i32 %i.h, 2
  %i.j = or disjoint i32 %.1.ph, %i.i
  br label %bb.e

.thread17.fold.split:                             ; preds = %bb.c
  br label %.thread17

.thread17:                                        ; preds = %bb.c, %.thread17.fold.split
  %.1.ph16 = phi i32 [ 3, %bb.c ], [ 1, %.thread17.fold.split ]
  %i.k = zext i8 %4 to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = or disjoint i32 %.1.ph16, %i.l
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not21 = icmp eq i64 %i.g, 103079215104
  %i.n = zext i8 %4 to i32
  %i.o = shl nuw nsw i32 %i.n, 2
  %spec.select = select i1 %.not21, i32 0, i32 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread, %.thread17
  %i.p = phi i32 [ %i.m, %.thread17 ], [ %i.o, %bb.d ], [ %i.j, %.thread ]
  %i.q = phi i32 [ 0, %.thread17 ], [ %spec.select, %bb.d ], [ 32, %.thread ]
  %i.r = or i32 %i.p, %i.q
  %i.s = or i32 %i.r, 2048
  store i32 %i.s, ptr %i.c, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler11UsePosition7HasHintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK2v88internal8compiler11UsePosition12HintRegisterEPi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = trunc i32 %i.e to i8
  %i.g = lshr i8 %i.f, 2
  %i.h = and i8 %i.g, 7
  switch i8 %i.h, label %bb.e [
    i8 0, label %_ZNK2v88internal8compiler11UsePosition12HintRegisterEPi.exit
    i8 4, label %_ZNK2v88internal8compiler11UsePosition12HintRegisterEPi.exit
    i8 2, label %bb.c
    i8 1, label %.sink.split.i
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 4032
  %.not13.i = icmp eq i32 %i.k, 2048
  br i1 %.not13.i, label %_ZNK2v88internal8compiler11UsePosition12HintRegisterEPi.exit, label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.m, 32
  br i1 %.not.i, label %_ZNK2v88internal8compiler11UsePosition12HintRegisterEPi.exit, label %.sink.split.i

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #35
  unreachable

.sink.split.i:                                    ; preds = %bb.b, %bb.d, %bb.c
  br label %_ZNK2v88internal8compiler11UsePosition12HintRegisterEPi.exit

_ZNK2v88internal8compiler11UsePosition12HintRegisterEPi.exit: ; preds = %bb.a, %bb.b, %bb.b, %bb.c, %bb.d, %.sink.split.i
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.b ], [ true, %.sink.split.i ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler11UsePosition12HintRegisterEPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 align 2 {
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compilerlsERSoNS1_16LifetimePositionE:bb.a
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 105) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit8
  %i.ah = and i32 %1, 1
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 115, ptr %i.b, align 1
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8
  %.not.i12 = icmp eq i64 %i.ao, 0
  br i1 %.not.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

bb.m:                                             ; preds = %bb.k
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 115) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 101, ptr %i.a, align 1
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8
  %.not.i15 = icmp eq i64 %i.aw, 0
  br i1 %.not.i15, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.p:                                             ; preds = %bb.n
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 101) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal8compiler11UseInterval11PrettyPrintERSo(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 91, ptr %i.b, align 1
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) #36
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 91) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_16LifetimePositionE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i32 %.sroa.0.0.copyload.i) ; 2 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.92, i64 noundef 2) #36 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i3 = load i32, ptr %i.m, align 4
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoNS1_16LifetimePositionE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 %.sroa.0.0.copyload.i3) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %.not.i4 = icmp eq i64 %i.t, 0
  br i1 %.not.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.a, i64 noundef 1) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef signext 41) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19LinearScanAllocator13PrintRangeRowERSoPKNS1_17TopLevelLiveRangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 {
switch.lookup:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.k) #36
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.14, i64 noundef 2) #36 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = lshr i32 %i.o, 5
  %i.q = and i32 %i.p, 3
  %i.r = zext nneg i32 %i.q to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8compiler19LinearScanAllocator13PrintRangeRowERSoPKNS1_17TopLevelLiveRangeE, i64 %i.r
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge86:                                    ; preds = %._crit_edge79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1
  %i.t = load ptr, ptr %1, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge86
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.b:                                             ; preds = %._crit_edge86
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %switch.lookup, %._crit_edge79
  %.03783 = phi ptr [ %2, %switch.lookup ], [ %i.ah, %._crit_edge79 ] ; 4 uses
  %.03982 = phi i32 [ 0, %switch.lookup ], [ %.1.lcssa, %._crit_edge79 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03783, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03783, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not4074 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4074, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.03783, i64 4 ; 2 uses
  br label %bb.d

._crit_edge79:                                    ; preds = %._crit_edge72, %bb.c
  %.1.lcssa = phi i32 [ %.03982, %bb.c ], [ %.3.lcssa, %._crit_edge72 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.03783, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %._crit_edge86, label %bb.c, !llvm.loop !71

bb.d:                                             ; preds = %.lr.ph78, %._crit_edge72
  %.076 = phi ptr [ %i.ac, %.lr.ph78 ], [ %i.bv, %._crit_edge72 ] ; 3 uses
  %.175 = phi i32 [ %.03982, %.lr.ph78 ], [ %.3.lcssa, %._crit_edge72 ] ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.076, align 4 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.076, i64 4
  %.sroa.0.0.copyload.i41 = load i32, ptr %i.ai, align 4 ; 4 uses
  %.not64 = icmp slt i32 %.sroa.0.0.copyload.i, %.175
  br i1 %.not64, label %bb.e, label %.preheader, !prof !51

.preheader:                                       ; preds = %bb.d
  %i.aj = icmp sgt i32 %.sroa.0.0.copyload.i, %.175
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #35
  unreachable

.lr.ph:                                           ; preds = %.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44
  %.268 = phi i32 [ %i.as, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44 ], [ %.175, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1
  %i.ak = load ptr, ptr %1, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8
  %.not.i42 = icmp eq i64 %i.ap, 0
  br i1 %.not.i42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44

bb.g:                                             ; preds = %.lr.ph
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = add i32 %.268, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %.sroa.0.0.copyload.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44, %.preheader
  %.2.lcssa = phi i32 [ %.175, %.preheader ], [ %.sroa.0.0.copyload.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44 ]
  %i.at = sub nsw i32 %.sroa.0.0.copyload.i41, %.sroa.0.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.au = call i32 @llvm.smin.i32(i32 %i.at, i32 31) ; 2 uses
  %.sroa.speculated54 = add nsw i32 %i.au, 1
  %i.av = load i32, ptr %i.af, align 4            ; 4 uses
  %i.aw = trunc i32 %i.av to i1
  %i.ax = sext i32 %.sroa.speculated54 to i64
  br i1 %i.aw, label %_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ay = and i32 %i.av, 8064
  %i.az = icmp eq i32 %i.ay, 4096
  br i1 %i.az, label %_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h
  %i.ba = lshr i32 %i.av, 7
  %i.bb = load i32, ptr %i.s, align 8
  %i.bc = and i32 %i.av, 6144
  %i.bd = icmp eq i32 %i.bc, 0
  call void @llvm.assume(i1 %i.bd)
  %.mask12.i = and i32 %i.ba, 15
  %i.be = zext nneg i32 %.mask12.i to i64
  %i.bf = icmp eq i32 %i.bb, 0
  %_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names._ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names.i = select i1 %i.bf, ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, ptr @_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names._ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names.i, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi.exit

_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi.exit: ; preds = %.sink.split.i, %bb.h, %._crit_edge
  %.0.i45.sink = phi ptr [ %switch.load, %._crit_edge ], [ @.str.50, %bb.h ], [ %i.bh, %.sink.split.i ]
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.d, i64 noundef %i.ax, ptr noundef nonnull @.str.20, ptr noundef %.0.i45.sink) #36
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #36
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %i.bj) #36 ; 0 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.bi)
  %i.bl = add nsw i32 %.sroa.speculated, %.2.lcssa ; 3 uses
  %3 = load i32, ptr %i.af, align 4
  %4 = trunc i32 %3 to i1
  %5 = select i1 %4, i8 45, i8 61                 ; 2 uses
  %6 = icmp sgt i32 %.sroa.0.0.copyload.i41, %i.bl
  br i1 %6, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50
  %.369 = phi i32 [ %i.bu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50 ], [ %i.bl, %_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %5, ptr %i.a, align 1
  %i.bm = load ptr, ptr %1, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8
  %.not.i48 = icmp eq i64 %i.br, 0
  br i1 %.not.i48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph71
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

bb.j:                                             ; preds = %.lr.ph71
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %5) #36 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bu = add i32 %.369, 1                        ; 2 uses
  %exitcond88.not = icmp eq i32 %i.bu, %.sroa.0.0.copyload.i41
  br i1 %exitcond88.not, label %._crit_edge72, label %.lr.ph71, !llvm.loop !73

._crit_edge72:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50, %_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi.exit
  %.3.lcssa = phi i32 [ %i.bl, %_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi.exit ], [ %.sroa.0.0.copyload.i41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.bv = getelementptr inbounds nuw i8, ptr %.076, i64 8 ; 2 uses
  %.not40 = icmp eq ptr %i.bv, %i.ae
  br i1 %.not40, label %._crit_edge79, label %bb.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler17RegisterAllocator12RegisterNameEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(34) %0, i32 noundef %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 32
  br i1 %i.a, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %1, 240
  %i.e = icmp eq i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %.mask12 = and i32 %1, 15
  %i.f = zext nneg i32 %.mask12 to i64
  %i.g = icmp eq i32 %i.c, 0
  %_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names._ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names = select i1 %i.g, ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, ptr @_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names._ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ @.str.50, %bb.a ], [ %i.i, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19LinearScanAllocator18PrintRangeOverviewEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 30 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #36
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 337
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.f, ptr %1, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.n, ptr noundef null) #36
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #36
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 16, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.u, align 8
  store i8 0, ptr %i.t, align 8
  %i.v = load ptr, ptr %1, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef nonnull %i.o) #36
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_113PrintBlockRowERSoRKNS0_10ZoneVectorIPNS1_16InstructionBlockEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
  %i.ae = load ptr, ptr %0, align 8               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not21 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.aj = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ae, %bb.a ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not2023 = icmp eq ptr %i.al, %i.an
  br i1 %.not2023, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.01822 = phi ptr [ %i.ar, %bb.c ], [ %i.ag, %bb.a ] ; 2 uses
  %i.ap = load ptr, ptr %.01822, align 8          ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN2v88internal8compiler19LinearScanAllocator13PrintRangeRowERSoPKNS1_17TopLevelLiveRangeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ap)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.01822, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.ai
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge28:                                    ; preds = %_ZNK2v88internal8compiler17RegisterAllocator15CanProcessRangeEPNS1_9LiveRangeE.exit.thread, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.as, ptr %2, align 8, !alias.scope !80
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.at, align 8, !alias.scope !80
  store i8 0, ptr %i.as, align 8, !alias.scope !80
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !noalias !80 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !80 ; 2 uses
  %i.ay = icmp ugt ptr %i.av, %i.ax
  %.08.i.i.i = select i1 %i.ay, ptr %i.av, ptr %i.ax ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge28
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !80 ; 2 uses
  %i.bb = ptrtoint ptr %.08.i.i.i to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.ba, i64 noundef %i.bd) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %._crit_edge28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.bf = load ptr, ptr %2, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.22, ptr noundef %i.bf) #36
  %i.bg = load ptr, ptr %2, align 8               ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.as
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bi = load i64, ptr %i.as, align 8
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.bk = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bk, ptr %1, align 8
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.bp = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.t
  br i1 %i.bq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.t, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #37
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #36
end_hunk_1
