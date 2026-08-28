Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveInterval?download=true
inline.NumInlined: 1942
inline.NumDeleted: 899
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::_Rb_tree<llvm::LiveRange::Segment, llvm::LiveRange::Segment, std::_Identity<llvm::LiveRange::Segment>, std::less<llvm::LiveRange::Segment>>::_Alloc_node" = type { ptr }
%"struct.llvm::LiveRange::Segment" = type { %"class.llvm::SlotIndex", %"class.llvm::SlotIndex", ptr }
%"class.llvm::SlotIndex" = type { %"class.llvm::PointerIntPair" }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [8 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.(anonymous namespace)::CalcLiveRangeUtilSet" = type { %"class.(anonymous namespace)::CalcLiveRangeUtilBase" }
%"class.(anonymous namespace)::CalcLiveRangeUtilBase" = type { ptr }
%"class.(anonymous namespace)::CalcLiveRangeUtilVector" = type { %"class.(anonymous namespace)::CalcLiveRangeUtilBase.18" }
%"class.(anonymous namespace)::CalcLiveRangeUtilBase.18" = type { ptr }
%"class.llvm::LiveRangeUpdater" = type { ptr, %"class.llvm::SlotIndex", ptr, ptr, %"class.llvm::SmallVector.34" }
%"class.llvm::SmallVector.34" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.35" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.35" = type { [384 x i8] }
%"class.llvm::SmallVector.219" = type { %"class.llvm::SmallVectorImpl.1", %"struct.llvm::SmallVectorStorage.220" }
%"class.llvm::SmallVectorImpl.1" = type { %"class.llvm::SmallVectorTemplateBase.2" }
%"class.llvm::SmallVectorTemplateBase.2" = type { %"class.llvm::SmallVectorTemplateCommon.3" }
%"class.llvm::SmallVectorTemplateCommon.3" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.220" = type { [64 x i8] }
%class.anon.314 = type { ptr }
%"class.llvm::format_object" = type { ptr, %"class.std::tuple.311" }
%"class.std::tuple.311" = type { %"struct.std::_Tuple_impl.312" }
%"struct.std::_Tuple_impl.312" = type { %"struct.std::_Head_base.313" }
%"struct.std::_Head_base.313" = type { i64 }
%"class.llvm::Printable" = type { %"class.std::function.130" }
%"class.std::function.130" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.llvm::SmallVector.135" = type { %"class.llvm::SmallVectorImpl.136", %"struct.llvm::SmallVectorStorage.139" }
%"class.llvm::SmallVectorImpl.136" = type { %"class.llvm::SmallVectorTemplateBase.137" }
%"class.llvm::SmallVectorTemplateBase.137" = type { %"class.llvm::SmallVectorTemplateCommon.138" }
%"class.llvm::SmallVectorTemplateCommon.138" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.139" = type { [32 x i8] }
%"class.llvm::SmallVector.211" = type { %"class.llvm::SmallVectorImpl.212", %"struct.llvm::SmallVectorStorage.215" }
%"class.llvm::SmallVectorImpl.212" = type { %"class.llvm::SmallVectorTemplateBase.213" }
%"class.llvm::SmallVectorTemplateBase.213" = type { %"class.llvm::SmallVectorTemplateCommon.214" }
%"class.llvm::SmallVectorTemplateCommon.214" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.215" = type { [64 x i8] }
%"class.llvm::IntEqClasses" = type <{ %"class.llvm::SmallVector.135", i32, [4 x i8] }>

$_ZN4llvm15SmallVectorImplINS_9LiveRange7SegmentEE6insertEPS2_mRKS2_ = comdat any

$_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm9LiveRange6assignERKS0_RNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE = comdat any

$_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_13PrintLaneMaskENS0_11LaneBitmaskEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_ = comdat any

$_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_13PrintLaneMaskENS0_11LaneBitmaskEEUlS2_E_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9LiveRange7SegmentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_6VNInfoELb1EE15growAndPushBackES2_ = comdat any

$_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_ = comdat any

$_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERKS2_ = comdat any

$_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_ = comdat any

$_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_ = comdat any

$_ZN4llvm15SmallVectorImplINS_9LiveRange7SegmentEE15insert_one_implIRKS2_EEPS2_S7_OT_ = comdat any

$_ZSt9__find_ifIPKN4llvm9SlotIndexEN9__gnu_cxx5__ops10_Iter_predIZNKS0_9LiveRange9isUndefInENS0_8ArrayRefIS1_EES1_S1_EUlS1_E_EEET_SC_SC_T0_St26random_access_iterator_tag = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9SlotIndexELb1EE15growAndPushBackES1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [5 x i8] c"-phi\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"  L\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"  weight:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%016llX\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i32, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i32 %.val1, 0
  br i1 %.not.i, label %"_ZN4llvm15partition_pointIRNS_9LiveRangeEZNS1_4findENS_9SlotIndexEE3$_0RNS1_7SegmentEEEDaOT_T0_.exit", label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i

_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.a
  %i.b = zext i32 %.val1 to i64
  %i.c = and i64 %1, -8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12
  %i.g = trunc i64 %1 to i32
  %i.h = lshr i32 %i.g, 1
  %i.i = and i32 %i.h, 3
  %i.j = or i32 %i.f, %i.i
  br label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.b, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.01016.i.i = phi ptr [ %.val, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.111.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.01016.i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val12.i.i = load i64, ptr %i.m, align 8       ; 2 uses
  %i.n = and i64 %.val12.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !12
  %i.r = trunc i64 %.val12.i.i to i32
  %i.s = lshr i32 %i.r, 1
  %i.t = and i32 %i.s, 3
  %i.u = or i32 %i.t, %i.q
  %.not.i.i = icmp ugt i32 %i.u, %i.j             ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = xor i64 %i.k, -1
  %i.x = add nsw i64 %.017.i.i, %i.w
  %.111.i.i = select i1 %.not.i.i, ptr %.01016.i.i, ptr %i.v ; 2 uses
  %.1.i.i = select i1 %.not.i.i, i64 %i.k, i64 %i.x ; 2 uses
  %i.y = icmp sgt i64 %.1.i.i, 0
  br i1 %i.y, label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZN4llvm15partition_pointIRNS_9LiveRangeEZNS1_4findENS_9SlotIndexEE3$_0RNS1_7SegmentEEEDaOT_T0_.exit", !llvm.loop !20

"_ZN4llvm15partition_pointIRNS_9LiveRangeEZNS1_4findENS_9SlotIndexEE3$_0RNS1_7SegmentEEEDaOT_T0_.exit": ; preds = %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.010.lcssa.i.i = phi ptr [ %.val, %bb.a ], [ %.111.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  ret ptr %.010.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm9LiveRange13createDeadDefENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_121CalcLiveRangeUtilBaseINS_20CalcLiveRangeUtilSetESt23_Rb_tree_const_iteratorIN4llvm9LiveRange7SegmentEESt3setIS5_St4lessIS5_ESaIS5_EEE13createDeadDefENS3_9SlotIndexEPNS3_20BumpPtrAllocatorImplINS3_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS3_6VNInfoE(ptr nonnull %0, i64 %1, ptr noundef nonnull %2, ptr noundef null)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_121CalcLiveRangeUtilBaseINS_23CalcLiveRangeUtilVectorEPN4llvm9LiveRange7SegmentENS2_11SmallVectorIS4_Lj2EEEE13createDeadDefENS2_9SlotIndexEPNS2_20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS2_6VNInfoE(ptr nonnull %0, i64 %1, ptr noundef nonnull %2, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_121CalcLiveRangeUtilBaseINS_20CalcLiveRangeUtilSetESt23_Rb_tree_const_iteratorIN4llvm9LiveRange7SegmentEESt3setIS5_St4lessIS5_ESaIS5_EEE13createDeadDefENS3_9SlotIndexEPNS3_20BumpPtrAllocatorImplINS3_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS3_6VNInfoE(ptr %.0.val, i64 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<llvm::LiveRange::Segment, llvm::LiveRange::Segment, std::_Identity<llvm::LiveRange::Segment>, std::less<llvm::LiveRange::Segment>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"struct.std::_Rb_tree<llvm::LiveRange::Segment, llvm::LiveRange::Segment, std::_Identity<llvm::LiveRange::Segment>, std::less<llvm::LiveRange::Segment>>::_Alloc_node", align 8 ; 4 uses
  %5 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 6 uses
  %6 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 96    ; 3 uses
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !22 ; 3 uses
  %i.b = trunc i64 %0 to i32
  %i.c = lshr i32 %i.b, 1
  %i.d = and i32 %i.c, 3                          ; 5 uses
  %i.e = icmp eq i32 %i.d, 3
  %i.f = and i64 %0, -8                           ; 7 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, -7
  br label %_ZNK4llvm9SlotIndex11getNextSlotEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = shl nuw nsw i32 %i.d, 1
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = or i64 %i.f, %i.n
  br label %_ZNK4llvm9SlotIndex11getNextSlotEv.exit.i

_ZNK4llvm9SlotIndex11getNextSlotEv.exit.i:        ; preds = %bb.c, %bb.b
  %.sroa.05.0.i.i = phi i64 [ %i.k, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.val, i64 8 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not11.i.i.i.i, label %_ZNSt3setIN4llvm9LiveRange7SegmentESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvm9SlotIndex11getNextSlotEv.exit.i
  %i.s = inttoptr i64 %i.f to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !12
  %i.v = or i32 %i.u, %i.d                        ; 2 uses
  %i.w = and i64 %.sroa.05.0.i.i, -8
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = trunc i64 %.sroa.05.0.i.i to i32
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.aa, 3
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ae = and i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !12
  %i.ai = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i to i32
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.aj, 3
  %i.al = or i32 %i.ak, %i.ah                     ; 2 uses
  %i.am = icmp ult i32 %i.v, %i.al
  br i1 %i.am, label %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = icmp ult i32 %i.al, %i.v
  br i1 %i.an, label %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread10.i.i.i.i, label %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.i.i.i.i

_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.e
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !12
  %i.ap = or i32 %i.ao, %i.ab
  %i.aq = and i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !12
  %i.au = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i to i32
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 3
  %i.ax = or i32 %i.aw, %i.at
  %i.ay = icmp ult i32 %i.ap, %i.ax
  br i1 %i.ay, label %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread10.i.i.i.i

_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.i.i.i.i, %bb.e
  br label %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread10.i.i.i.i, %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.i.i.i.i, %bb.d
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread10.i.i.i.i ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread10.i.i.i.i ], [ %.013.i.i.i.i, %bb.d ], [ %.013.i.i.i.i, %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.i.i.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3setIN4llvm9LiveRange7SegmentESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit.i, label %bb.d, !llvm.loop !33

_ZNSt3setIN4llvm9LiveRange7SegmentESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit.i: ; preds = %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNK4llvm9SlotIndex11getNextSlotEv.exit.i
  %.08.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNK4llvm9SlotIndex11getNextSlotEv.exit.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm9LiveRange7SegmentEEclERKS2_S5_.exit.thread.i.i.i.i ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.bc = icmp eq ptr %.08.lcssa.i.i.i.i, %i.bb
  br i1 %i.bc, label %_ZN12_GLOBAL__N_120CalcLiveRangeUtilSet4findEN4llvm9SlotIndexE.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt3setIN4llvm9LiveRange7SegmentESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit.i
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i) #18 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %i.bf = inttoptr i64 %i.f to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !12
  %i.bi = or i32 %i.bh, %i.d
  %i.bj = and i64 %.sroa.0.0.copyload.i, -8
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !12
  %i.bn = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = and i32 %i.bo, 3
  %i.bq = or i32 %i.bp, %i.bm
  %i.br = icmp ult i32 %i.bi, %i.bq
  %.sroa.04.0.sroa.speculated.i = select i1 %i.br, ptr %i.bd, ptr %.08.lcssa.i.i.i.i
  br label %_ZN12_GLOBAL__N_120CalcLiveRangeUtilSet4findEN4llvm9SlotIndexE.exit

_ZN12_GLOBAL__N_120CalcLiveRangeUtilSet4findEN4llvm9SlotIndexE.exit: ; preds = %_ZNSt3setIN4llvm9LiveRange7SegmentESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit.i, %.lr.ph.i.preheader.i
  %.sroa.04.1.i = phi ptr [ %.sroa.04.0.sroa.speculated.i, %.lr.ph.i.preheader.i ], [ %.08.lcssa.i.i.i.i, %_ZNSt3setIN4llvm9LiveRange7SegmentESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit.i ] ; 5 uses
  %i.bs = icmp eq ptr %.sroa.04.1.i, %i.r
  br i1 %i.bs, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_120CalcLiveRangeUtilSet4findEN4llvm9SlotIndexE.exit
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %bb.g, label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

bb.g:                                             ; preds = %bb.f
  %i.bt = load ptr, ptr %1, align 8, !tbaa !35
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16                      ; 2 uses
  %i.bx = add i64 %i.bw, 16                       ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !47
  %i.ca = icmp ult i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.h, label %bb.i, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.cb = inttoptr i64 %i.bx to ptr
  store ptr %i.cb, ptr %1, align 8, !tbaa !35
  %i.cc = inttoptr i64 %i.bw to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cd = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.cc, %bb.h ], [ %i.cd, %bb.i ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !11
  store i32 %i.cg, ptr %.0.i.i.i.i, align 8, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i64 %0, ptr %i.ch, align 8, !tbaa !31
  %i.ci = load i32, ptr %i.cf, align 8, !tbaa !11 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.val, i64 76
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !54
  %.not.i.i = icmp ult i32 %i.ci, %i.ck
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !48

bb.j:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VNInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull %.0.i.i.i.i)
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

bb.k:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.cl = zext i32 %i.ci to i64
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  store ptr %.0.i.i.i.i, ptr %i.cn, align 1
  %i.co = load i32, ptr %i.cf, align 8, !tbaa !11
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.cf, align 8, !tbaa !11
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit: ; preds = %bb.k, %bb.j, %bb.f
  %i.cq = phi ptr [ %2, %bb.f ], [ %.0.i.i.i.i, %bb.j ], [ %.0.i.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.cr = or disjoint i64 %i.f, 6
  store i64 %0, ptr %5, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !55
  %.val35.val = load ptr, ptr %i.a, align 8, !tbaa !22 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val35.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %.val35.val, ptr %4, align 8, !tbaa !58
  %i.cv = call ptr @_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %.val35.val, ptr nonnull %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.v

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_120CalcLiveRangeUtilSet4findEN4llvm9SlotIndexE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.1.i, i64 32 ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.cw, align 8, !tbaa !31 ; 4 uses
  %i.cx = xor i64 %.sroa.07.0.copyload, %0
  %i.cy = icmp ult i64 %i.cx, 8
  br i1 %i.cy, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cz = and i64 %.sroa.07.0.copyload, -8
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !12
  %i.dd = trunc i64 %.sroa.07.0.copyload to i32
  %i.de = lshr i32 %i.dd, 1
  %i.df = and i32 %i.de, 3
  %i.dg = or i32 %i.dc, %i.df
  %i.dh = inttoptr i64 %i.f to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !12
  %i.dk = or i32 %i.dj, %i.d
  %i.dl = icmp ult i32 %i.dg, %i.dk
  %.not1415 = icmp eq i64 %0, %.sroa.07.0.copyload
  %.not14 = or i1 %.not1415, %i.dl
  br i1 %.not14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.04.1.i, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !55
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %0, ptr %i.do, align 8, !tbaa !31
  store i64 %0, ptr %i.cw, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.1.i, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !55
  br label %bb.v

bb.p:                                             ; preds = %bb.l
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.q, label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit40

bb.q:                                             ; preds = %bb.p
  %i.dr = load ptr, ptr %1, align 8, !tbaa !35
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = add i64 %i.ds, 15
  %i.du = and i64 %i.dt, -16                      ; 2 uses
  %i.dv = add i64 %i.du, 16                       ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !47
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.r, label %bb.s, !prof !48

bb.r:                                             ; preds = %bb.q
  %i.dz = inttoptr i64 %i.dv to ptr
  store ptr %i.dz, ptr %1, align 8, !tbaa !35
  %i.ea = inttoptr i64 %i.du to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i37

bb.s:                                             ; preds = %bb.q
  %i.eb = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i37

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i37: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i38 = phi ptr [ %i.ea, %bb.r ], [ %i.eb, %bb.s ] ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 4 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !11
  store i32 %i.ee, ptr %.0.i.i.i.i38, align 8, !tbaa !49
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i38, i64 8
  store i64 %0, ptr %i.ef, align 8, !tbaa !31
  %i.eg = load i32, ptr %i.ed, align 8, !tbaa !11 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.val, i64 76
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !54
  %.not.i.i39 = icmp ult i32 %i.eg, %i.ei
  br i1 %.not.i.i39, label %bb.u, label %bb.t, !prof !48

bb.t:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i37
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VNInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull %.0.i.i.i.i38)
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit40

bb.u:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i37
  %i.ej = zext i32 %i.eg to i64
  %i.ek = load ptr, ptr %i.ec, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr %.0.i.i.i.i38, ptr %i.el, align 1
  %i.em = load i32, ptr %i.ed, align 8, !tbaa !11
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ed, align 8, !tbaa !11
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit40

_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit40: ; preds = %bb.u, %bb.t, %bb.p
  %i.eo = phi ptr [ %2, %bb.p ], [ %.0.i.i.i.i38, %bb.t ], [ %.0.i.i.i.i38, %bb.u ] ; 2 uses
  %.val33.val = load ptr, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ep = or disjoint i64 %i.f, 6
  store i64 %0, ptr %6, align 8, !tbaa !31
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.eo, ptr %i.er, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %.val33.val, ptr %3, align 8, !tbaa !58
  %i.es = call ptr @_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_insert_unique_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %.val33.val, ptr nonnull %.sroa.04.1.i, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit40, %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit
  %.1 = phi ptr [ %i.cq, %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit ], [ %i.dq, %bb.o ], [ %i.eo, %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit40 ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_121CalcLiveRangeUtilBaseINS_23CalcLiveRangeUtilVectorEPN4llvm9LiveRange7SegmentENS2_11SmallVectorIS4_Lj2EEEE13createDeadDefENS2_9SlotIndexEPNS2_20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS2_6VNInfoE(ptr %.0.val, i64 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 7 uses
  %4 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 6 uses
  %.val.val = load ptr, ptr %.0.val, align 8, !tbaa !8 ; 3 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8     ; 4 uses
  %.val.val34 = load i32, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val.val34, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector4findEN4llvm9SlotIndexE.exit, label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i

_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i: ; preds = %bb.a
  %i.b = zext i32 %.val.val34 to i64              ; 2 uses
  %i.c = and i64 %0, -8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12
  %i.g = trunc i64 %0 to i32
  %i.h = lshr i32 %i.g, 1
  %i.i = and i32 %i.h, 3
  %i.j = or i32 %i.f, %i.i
  br label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.b, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01016.i.i.i.i = phi ptr [ %.val.val, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.111.i.i.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i, 1                ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.01016.i.i.i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val12.i.i.i.i = load i64, ptr %i.m, align 8   ; 2 uses
  %i.n = and i64 %.val12.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !12
  %i.r = trunc i64 %.val12.i.i.i.i to i32
  %i.s = lshr i32 %i.r, 1
  %i.t = and i32 %i.s, 3
  %i.u = or i32 %i.t, %i.q
  %.not.i.i.i.i = icmp ugt i32 %i.u, %i.j         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = xor i64 %i.k, -1
  %i.x = add nsw i64 %.017.i.i.i.i, %i.w
  %.111.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.01016.i.i.i.i, ptr %i.v ; 2 uses
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.k, i64 %i.x ; 2 uses
  %i.y = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.y, label %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector4findEN4llvm9SlotIndexE.exit, !llvm.loop !20

_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector4findEN4llvm9SlotIndexE.exit: ; preds = %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.a
  %.pre-phi = phi i64 [ 0, %bb.a ], [ %i.b, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ]
  %.010.lcssa.i.i.i.i = phi ptr [ %.val.val, %bb.a ], [ %.111.i.i.i.i, %_ZSt9__advanceIPN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 6 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %.pre-phi
  %i.aa = icmp eq ptr %.010.lcssa.i.i.i.i, %i.z
  br i1 %i.aa, label %bb.b, label %bb.j

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector4findEN4llvm9SlotIndexE.exit
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.c, label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %1, align 8, !tbaa !35
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 15
  %i.ae = and i64 %i.ad, -16                      ; 2 uses
  %i.af = add i64 %i.ae, 16                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.aj = inttoptr i64 %i.af to ptr
  store ptr %i.aj, ptr %1, align 8, !tbaa !35
  %i.ak = inttoptr i64 %i.ae to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.al = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.ak, %bb.d ], [ %i.al, %bb.e ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !11
  store i32 %i.ao, ptr %.0.i.i.i.i, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i64 %0, ptr %i.ap, align 8, !tbaa !31
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val, i64 76
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !54
  %.not.i.i = icmp ult i32 %i.aq, %i.as
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !48

bb.f:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VNInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull %.0.i.i.i.i)
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

bb.g:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.at = zext i32 %i.aq to i64
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  store ptr %.0.i.i.i.i, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.an, align 8, !tbaa !11
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.an, align 8, !tbaa !11
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit: ; preds = %bb.g, %bb.f, %bb.b
  %i.ay = phi ptr [ %2, %bb.b ], [ %.0.i.i.i.i, %bb.f ], [ %.0.i.i.i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.az = and i64 %0, -8
  %i.ba = or disjoint i64 %i.az, 6
  store i64 %0, ptr %3, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !55
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !54
  %.not.i.i38 = icmp ult i32 %i.bd, %i.bf
  br i1 %.not.i.i38, label %bb.i, label %bb.h, !prof !48

bb.h:                                             ; preds = %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9LiveRange7SegmentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %.0.val, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector11insertAtEndERKN4llvm9LiveRange7SegmentE.exit

bb.i:                                             ; preds = %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit
  %i.bg = zext i32 %i.bd to i64
  %i.bh = load ptr, ptr %.0.val, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !11
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !11
  br label %_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector11insertAtEndERKN4llvm9LiveRange7SegmentE.exit

_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector11insertAtEndERKN4llvm9LiveRange7SegmentE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.t

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector4findEN4llvm9SlotIndexE.exit
  %.sroa.05.0.copyload = load i64, ptr %.010.lcssa.i.i.i.i, align 8, !tbaa !31 ; 4 uses
  %i.bl = xor i64 %.sroa.05.0.copyload, %0
  %i.bm = icmp ult i64 %i.bl, 8
  br i1 %i.bm, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bn = and i64 %.sroa.05.0.copyload, -8
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !12
  %i.br = trunc i64 %.sroa.05.0.copyload to i32
  %i.bs = lshr i32 %i.br, 1
  %i.bt = and i32 %i.bs, 3
  %i.bu = or i32 %i.bq, %i.bt
  %i.bv = and i64 %0, -8
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !12
  %i.bz = trunc i64 %0 to i32
  %i.ca = lshr i32 %i.bz, 1
  %i.cb = and i32 %i.ca, 3
  %i.cc = or i32 %i.by, %i.cb
  %i.cd = icmp ult i32 %i.bu, %i.cc
  %.not1213 = icmp eq i64 %0, %.sroa.05.0.copyload
  %.not12 = select i1 %i.cd, i1 true, i1 %.not1213
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.lcssa.i.i.i.i, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %0, ptr %i.cg, align 8, !tbaa !31
  store i64 %0, ptr %.010.lcssa.i.i.i.i, align 8, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.lcssa.i.i.i.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !55
  br label %bb.t

bb.n:                                             ; preds = %bb.j
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.o, label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit42

bb.o:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %1, align 8, !tbaa !35
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = add i64 %i.ck, 15
  %i.cm = and i64 %i.cl, -16                      ; 2 uses
  %i.cn = add i64 %i.cm, 16                       ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !47
  %i.cq = icmp ult i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.q, !prof !48

bb.p:                                             ; preds = %bb.o
  %i.cr = inttoptr i64 %i.cn to ptr
  store ptr %i.cr, ptr %1, align 8, !tbaa !35
  %i.cs = inttoptr i64 %i.cm to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i39

bb.q:                                             ; preds = %bb.o
  %i.ct = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i39

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i39: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i40 = phi ptr [ %i.cs, %bb.p ], [ %i.ct, %bb.q ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 4 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !11
  store i32 %i.cw, ptr %.0.i.i.i.i40, align 8, !tbaa !49
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i40, i64 8
  store i64 %0, ptr %i.cx, align 8, !tbaa !31
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !11 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.val, i64 76
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !54
  %.not.i.i41 = icmp ult i32 %i.cy, %i.da
  br i1 %.not.i.i41, label %bb.s, label %bb.r, !prof !48

bb.r:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i39
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VNInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull %.0.i.i.i.i40)
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit42

bb.s:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i39
  %i.db = zext i32 %i.cy to i64
  %i.dc = load ptr, ptr %i.cu, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.db
  store ptr %.0.i.i.i.i40, ptr %i.dd, align 1
  %i.de = load i32, ptr %i.cv, align 8, !tbaa !11
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.cv, align 8, !tbaa !11
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit42

_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit42: ; preds = %bb.s, %bb.r, %bb.n
  %i.dg = phi ptr [ %2, %bb.n ], [ %.0.i.i.i.i40, %bb.r ], [ %.0.i.i.i.i40, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.dh = and i64 %0, -8
  %i.di = or disjoint i64 %i.dh, 6
  store i64 %0, ptr %4, align 8, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !31
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !55
  %i.dl = call noundef ptr @_ZN4llvm15SmallVectorImplINS_9LiveRange7SegmentEE15insert_one_implIRKS2_EEPS2_S7_OT_(ptr noundef nonnull align 8 dereferenceable(16) %.0.val, ptr noundef nonnull %.010.lcssa.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit42, %_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector11insertAtEndERKN4llvm9LiveRange7SegmentE.exit
  %.1 = phi ptr [ %i.ay, %_ZN12_GLOBAL__N_123CalcLiveRangeUtilVector11insertAtEndERKN4llvm9LiveRange7SegmentE.exit ], [ %i.ci, %bb.m ], [ %i.dg, %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit42 ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm9LiveRange13createDeadDefEPNS_6VNInfoE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !tbaa !31 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_121CalcLiveRangeUtilBaseINS_20CalcLiveRangeUtilSetESt23_Rb_tree_const_iteratorIN4llvm9LiveRange7SegmentEESt3setIS5_St4lessIS5_ESaIS5_EEE13createDeadDefENS3_9SlotIndexEPNS3_20BumpPtrAllocatorImplINS3_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS3_6VNInfoE(ptr nonnull %0, i64 %.sroa.0.0.copyload, ptr noundef null, ptr noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_121CalcLiveRangeUtilBaseINS_23CalcLiveRangeUtilVectorEPN4llvm9LiveRange7SegmentENS2_11SmallVectorIS4_Lj2EEEE13createDeadDefENS2_9SlotIndexEPNS2_20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS2_6VNInfoE(ptr nonnull %0, i64 %.sroa.0.0.copyload, ptr noundef null, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm9LiveRange12overlapsFromERKS0_PKNS0_7SegmentE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !11
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.i ; 4 uses
  %.sroa.04.0.copyload = load i64, ptr %2, align 8, !tbaa !31 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !12
  %i.o = trunc i64 %.0.copyload.i.i.i.i.i.i to i32
  %i.p = lshr i32 %i.o, 1
  %i.q = and i32 %i.p, 3
  %i.r = or i32 %i.q, %i.n                        ; 4 uses
  %i.s = and i64 %.sroa.04.0.copyload, -8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !12
  %i.w = trunc i64 %.sroa.04.0.copyload to i32
  %i.x = lshr i32 %i.w, 1
  %i.y = and i32 %i.x, 3
  %i.z = or i32 %i.v, %i.y                        ; 3 uses
  %i.aa = icmp ult i32 %i.r, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not70 = icmp eq i32 %i.c, 0
  br i1 %.not70, label %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread, label %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.ab = lshr i64 %.017.i.i, 1                   ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.01116.i.i, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ad = and i64 %.sroa.0.0.copyload.i.i.i.i, -8
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !12
  %i.ah = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = and i32 %i.ai, 3
  %i.ak = or i32 %i.aj, %i.ag
  %i.al = icmp ult i32 %i.z, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.an = xor i64 %i.ab, -1
  %i.ao = add nsw i64 %.017.i.i, %i.an
  %.112.i.i = select i1 %i.al, ptr %.01116.i.i, ptr %i.am ; 3 uses
  %.1.i.i = select i1 %i.al, i64 %i.ab, i64 %i.ao ; 2 uses
  %i.ap = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ap, label %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit, !llvm.loop !60

_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit: ; preds = %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.not16 = icmp eq ptr %.112.i.i, %i.a
  %spec.select.idx = select i1 %.not16, i64 0, i64 -24
  %spec.select = getelementptr inbounds i8, ptr %.112.i.i, i64 %spec.select.idx
  br label %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.aq = icmp ult i32 %i.z, %i.r
  br i1 %i.aq, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.j
  br i1 %.not, label %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i.i.i.i19 = load i64, ptr %i.ar, align 8 ; 2 uses
  %i.as = and i64 %.0.copyload.i.i.i.i.i.i19, -8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !12
  %i.aw = trunc i64 %.0.copyload.i.i.i.i.i.i19 to i32
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = and i32 %i.ax, 3
  %i.az = or i32 %i.ay, %i.av
  %.not69 = icmp ugt i32 %i.az, %i.r
  br i1 %.not69, label %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = ptrtoint ptr %i.j to i64
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i21, label %_ZSt11upper_boundIPKN4llvm9LiveRange7SegmentENS0_9SlotIndexEET_S6_S6_RKT0_.exit31

_ZSt9__advanceIPKN4llvm9LiveRange7SegmentElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i21: ; preds = %bb.f
  %i.be = udiv exact i64 %i.bc, 24
end_hunk_0
