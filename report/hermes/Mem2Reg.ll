inline.NumInlined: 2091
inline.NumDeleted: 876
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::IRBuilder" = type { ptr, %"class.llvh::ilist_iterator.53", ptr, %"class.llvh::SMLoc", ptr }
%"class.llvh::ilist_iterator.53" = type { ptr }
%"class.llvh::SMLoc" = type { ptr }
%"class.llvh::DenseSet" = type { %"class.llvh::detail::DenseSetImpl" }
%"class.llvh::detail::DenseSetImpl" = type { %"class.llvh::DenseMap.50" }
%"class.llvh::DenseMap.50" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::priority_queue" = type <{ %"class.llvh::SmallVector.124", [8 x i8] }>
%"class.llvh::SmallVector.124" = type { %"class.llvh::SmallVectorImpl.125", %"struct.llvh::SmallVectorStorage.128" }
%"class.llvh::SmallVectorImpl.125" = type { %"class.llvh::SmallVectorTemplateBase.126" }
%"class.llvh::SmallVectorTemplateBase.126" = type { %"class.llvh::SmallVectorTemplateCommon.127" }
%"class.llvh::SmallVectorTemplateCommon.127" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.128" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.129"] }
%"struct.llvh::AlignedCharArrayUnion.129" = type { %"struct.llvh::AlignedCharArray.62" }
%"struct.llvh::AlignedCharArray.62" = type { [16 x i8] }
%"class.llvh::SmallPtrSet" = type { %"class.llvh::SmallPtrSetImpl.base", [32 x ptr] }
%"class.llvh::SmallPtrSetImpl.base" = type { %"class.llvh::SmallPtrSetImplBase.base" }
%"class.llvh::SmallPtrSetImplBase.base" = type <{ ptr, ptr, i32, i32, i32 }>
%"class.llvh::SmallVector.44" = type { %"class.llvh::SmallVectorImpl.45", %"struct.llvh::SmallVectorStorage.48" }
%"class.llvh::SmallVectorImpl.45" = type { %"class.llvh::SmallVectorTemplateBase.46" }
%"class.llvh::SmallVectorTemplateBase.46" = type { %"class.llvh::SmallVectorTemplateCommon.47" }
%"class.llvh::SmallVectorTemplateCommon.47" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.48" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.49"] }
%"struct.llvh::AlignedCharArrayUnion.49" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.llvh::DenseMap.133" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::SmallVector.136" = type { %"class.llvh::SmallVectorImpl.137", %"struct.llvh::SmallVectorStorage.140" }
%"class.llvh::SmallVectorImpl.137" = type { %"class.llvh::SmallVectorTemplateBase.138" }
%"class.llvh::SmallVectorTemplateBase.138" = type { %"class.llvh::SmallVectorTemplateCommon.139" }
%"class.llvh::SmallVectorTemplateCommon.139" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.140" = type { [16 x %"struct.llvh::AlignedCharArrayUnion.141"] }
%"struct.llvh::AlignedCharArrayUnion.141" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallVector.142" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage.143" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.143" = type { [4 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallPtrSet.145" = type { %"class.llvh::SmallPtrSetImpl.base.147", [4 x ptr] }
%"class.llvh::SmallPtrSetImpl.base.147" = type { %"class.llvh::SmallPtrSetImplBase.base" }
%"class.hermes::IRBuilder::InstructionDestroyer" = type { %"class.llvh::SmallVector.80" }
%"class.llvh::SmallVector.80" = type { %"class.llvh::SmallVectorImpl.10", %"struct.llvh::SmallVectorStorage.81" }
%"class.llvh::SmallVectorImpl.10" = type { %"class.llvh::SmallVectorTemplateBase.11" }
%"class.llvh::SmallVectorTemplateBase.11" = type { %"class.llvh::SmallVectorTemplateCommon.12" }
%"class.llvh::SmallVectorTemplateCommon.12" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.81" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.14"] }
%"struct.llvh::AlignedCharArrayUnion.14" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::DenseMap.110" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.113" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseSet.75" = type { %"class.llvh::detail::DenseSetImpl.76" }
%"class.llvh::detail::DenseSetImpl.76" = type { %"class.llvh::DenseMap.77" }
%"class.llvh::DenseMap.77" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.69" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.72" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.hermes::DominanceInfo" = type { %"class.llvh::DominatorTreeBase" }
%"class.llvh::DominatorTreeBase" = type { %"class.llvh::SmallVector", %"class.llvh::DenseMap", ptr, ptr, i8, i32 }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"struct.llvh::SmallVectorStorage" = type { [1 x %"struct.llvh::AlignedCharArrayUnion"] }
%"class.llvh::DenseMap" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::DenseMap.0" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::SmallVector.3" = type { %"class.llvh::SmallVectorImpl.4", %"struct.llvh::SmallVectorStorage.7" }
%"class.llvh::SmallVectorImpl.4" = type { %"class.llvh::SmallVectorTemplateBase.5" }
%"class.llvh::SmallVectorTemplateBase.5" = type { %"class.llvh::SmallVectorTemplateCommon.6" }
%"class.llvh::SmallVectorTemplateCommon.6" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.7" = type { [16 x %"struct.llvh::AlignedCharArrayUnion.8"] }
%"struct.llvh::AlignedCharArrayUnion.8" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::detail::DenseSetEmpty" = type { i8 }
%"struct.std::pair.66" = type <{ %"class.llvh::DenseMapIterator", i8, [7 x i8] }>
%"class.llvh::DenseMapIterator" = type { ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.35" }
%"struct.std::_Head_base.35" = type { ptr }

$_ZN6hermes7Mem2RegD0Ev = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_ = comdat any

$_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes14AllocStackInstEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj = comdat any

$_ZN4llvh8DenseMapIPN6hermes8VariableEPNS1_14StoreFrameInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes14AllocStackInstEPNS1_14StoreStackInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj = comdat any

$_ZN4llvh8DenseMapIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes7Mem2RegE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes7Mem2RegD0Ev, ptr @_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE] }, align 8
@.str = private unnamed_addr constant [8 x i8] c"Mem2Reg\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 5 uses
  %3 = alloca %"class.llvh::DenseSet", align 8    ; 12 uses
  %4 = alloca %"class.std::priority_queue", align 8 ; 14 uses
  %5 = alloca %"class.llvh::SmallPtrSet", align 8 ; 14 uses
  %6 = alloca %"class.llvh::SmallVector.44", align 8 ; 12 uses
  %7 = alloca %"class.llvh::DenseMap.133", align 8 ; 16 uses
  %8 = alloca %"class.hermes::IRBuilder", align 8 ; 6 uses
  %9 = alloca %"class.llvh::DenseMap.133", align 8 ; 13 uses
  %10 = alloca %"class.llvh::SmallVector.136", align 8 ; 10 uses
  %11 = alloca %"class.llvh::SmallVector.142", align 8 ; 9 uses
  %12 = alloca %"class.llvh::SmallPtrSet.145", align 8 ; 11 uses
  %13 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 12 uses
  %14 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 12 uses
  %15 = alloca %"class.llvh::DenseMap.110", align 8 ; 20 uses
  %16 = alloca %"class.llvh::DenseMap.113", align 8 ; 13 uses
  %17 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 12 uses
  %18 = alloca %"class.llvh::DenseSet.75", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %19 = alloca %"class.llvh::DenseMap.69", align 8 ; 19 uses
  %20 = alloca %"class.llvh::DenseMap.69", align 8 ; 7 uses
  %21 = alloca %"class.llvh::DenseMap.72", align 8 ; 13 uses
  %22 = alloca %"class.llvh::DenseSet.75", align 8 ; 5 uses
  %23 = alloca %"class.llvh::DenseSet.75", align 8 ; 7 uses
  %24 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %25 = alloca %"class.llvh::SmallVector.44", align 8 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %26 = alloca %"class.hermes::DominanceInfo", align 8 ; 13 uses
  %27 = alloca %"class.llvh::DenseMap.0", align 8 ; 21 uses
  %28 = alloca %"class.llvh::SmallVector.3", align 8 ; 10 uses
  %29 = alloca %"class.llvh::SmallVector.3", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #10
  call void @_ZN6hermes13DominanceInfoC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %27, i8 0, i64 20, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %26, i64 48
  %.val = load ptr, ptr %i.g, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #10
  %i.h = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %i.h, ptr %25, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 11 uses
  store i32 0, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 3 uses
  store i32 32, ptr %i.j, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store ptr %.val, ptr %i.e, align 8, !tbaa !24
  %i.k = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_(ptr noundef nonnull align 8 dereferenceable(20) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !3
  %i.m = load i32, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.n = load i32, ptr %i.j, align 4, !tbaa !23
  %.not.i.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i: ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ %.pre.i.i, %bb.b ], [ %i.m, %bb.a ]
  %i.p = load ptr, ptr %25, align 8, !tbaa !21
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load i64, ptr %i.e, align 8
  store i64 %i.s, ptr %i.r, align 1
  %i.t = load i32, ptr %i.i, align 8, !tbaa !22
  %i.u = add i32 %i.t, 1                          ; 3 uses
  store i32 %i.u, ptr %i.i, align 8, !tbaa !22
  %.not.i813.i = icmp eq i32 %i.u, 0
  br i1 %.not.i813.i, label %._crit_edge15.i, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph14.i
  %i.y = phi i32 [ %i.u, %.lr.ph14.i ], [ %.pr.i, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.z = load ptr, ptr %25, align 8, !tbaa !21
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.ae = add i32 %i.y, -1
  store i32 %i.ae, ptr %i.i, align 8, !tbaa !22
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !24
  %i.af = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_(ptr noundef nonnull align 8 dereferenceable(20) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !3
  %i.ai = add i32 %i.ah, 1
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %.not11.i = icmp eq ptr %i.al, %i.an
  br i1 %.not11.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.c
  %.pr.pre.i = load i32, ptr %i.i, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit11.i, %.._crit_edge_crit_edge.i
  %.pr.i = phi i32 [ %.pr.pre.i, %.._crit_edge_crit_edge.i ], [ %i.do, %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit11.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  %.not.i8.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i8.i, label %._crit_edge15.i, label %bb.c, !llvm.loop !29

.lr.ph.i:                                         ; preds = %bb.c, %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit11.i
  %.sroa.01.012.i = phi ptr [ %i.dp, %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit11.i ], [ %i.al, %bb.c ] ; 5 uses
  %i.ao = load ptr, ptr %27, align 8, !tbaa !31   ; 2 uses
  %i.ap = load i32, ptr %i.v, align 8, !tbaa !34  ; 7 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ar = load ptr, ptr %.sroa.01.012.i, align 8, !tbaa !24 ; 3 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = lshr i32 %i.at, 4
  %i.av = lshr i32 %i.at, 9
  %i.aw = xor i32 %i.au, %i.av
  %i.ax = add i32 %i.ap, -1                       ; 2 uses
  %.02944.i.i.i.i = and i32 %i.aw, %i.ax          ; 2 uses
  %i.ay = zext nneg i32 %.02944.i.i.i.i to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ay ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.bb = icmp eq ptr %i.ar, %i.ba
  br i1 %i.bb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i, label %.lr.ph.i.i.i.i, !prof !35

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.f
  %i.bc = phi ptr [ %i.bm, %bb.f ], [ %i.ba, %bb.d ] ; 2 uses
  %i.bd = phi ptr [ %i.bl, %bb.f ], [ %i.az, %bb.d ] ; 2 uses
  %.02947.i.i.i.i = phi i32 [ %.029.i.i.i.i, %bb.f ], [ %.02944.i.i.i.i, %bb.d ]
  %.02746.i.i.i.i = phi i32 [ %i.bi, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.03245.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.be = icmp eq ptr %i.bc, inttoptr (i64 -8 to ptr)
  br i1 %i.be, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.03245.i.i.i.i, null
  %i.bf = select i1 %.not.i.i.i.i, ptr %i.bd, ptr %.03245.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bg = icmp eq ptr %i.bc, inttoptr (i64 -16 to ptr)
  %i.bh = icmp eq ptr %.03245.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.bg, i1 %i.bh, i1 false
  %spec.select.i.i.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.bd, ptr %.03245.i.i.i.i
  %i.bi = add i32 %.02746.i.i.i.i, 1
  %i.bj = add i32 %.02746.i.i.i.i, %.02947.i.i.i.i
  %.029.i.i.i.i = and i32 %i.bj, %i.ax            ; 2 uses
  %i.bk = zext i32 %.029.i.i.i.i to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.bk ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = icmp eq ptr %i.ar, %i.bm
  br i1 %i.bn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i, label %.lr.ph.i.i.i.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i: ; preds = %bb.e, %.lr.ph.i
  %.sink.i.i.i.i = phi ptr [ %i.bf, %bb.e ], [ null, %.lr.ph.i ]
  %i.bo = load i32, ptr %i.w, align 8, !tbaa !38  ; 3 uses
  %i.bp = shl i32 %i.bo, 2
  %i.bq = add i32 %i.bp, 4
  %i.br = mul i32 %i.ap, 3
  %.not.i.i4.i.i = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i.i4.i.i, label %bb.h, label %bb.g, !prof !25

bb.g:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i
  %i.bs = shl i32 %i.ap, 1
  br label %.sink.split.i.i.i.i

bb.h:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i
  %i.bt = load i32, ptr %i.x, align 4, !tbaa !39
  %.neg.i.i.i.i = xor i32 %i.bo, -1
  %.neg12.i.i.i.i = add i32 %i.ap, %.neg.i.i.i.i
  %i.bu = sub i32 %.neg12.i.i.i.i, %i.bt
  %i.bv = lshr i32 %i.ap, 3
  %.not10.i.i.i.i = icmp ugt i32 %i.bu, %i.bv
  br i1 %.not10.i.i.i.i, label %bb.l, label %.sink.split.i.i.i.i, !prof !25

.sink.split.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %.sink.i.i5.i.i = phi i32 [ %i.bs, %bb.g ], [ %i.ap, %bb.h ]
  call void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %27, i32 noundef %.sink.i.i5.i.i)
  %i.bw = load ptr, ptr %27, align 8, !tbaa !31   ; 2 uses
  %i.bx = load i32, ptr %i.v, align 8, !tbaa !34  ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i.i.i
  %i.bz = load ptr, ptr %.sroa.01.012.i, align 8, !tbaa !24 ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = lshr i32 %i.cb, 4
end_hunk_0
begin_hunk_1_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.ayd = getelementptr inbounds i8, ptr %i.ayc, i64 -16 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.ayd, align 8
  %.sroa.4.0..sroa_idx.i.i.i335 = getelementptr inbounds i8, ptr %i.ayc, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i336 = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i335, align 8 ; 2 uses
  store ptr %.sroa.062.0.copyload.i, ptr %i.ayd, align 8, !tbaa !186
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i.i335, align 8, !tbaa !184
  %.idx.i337 = shl nuw nsw i64 %i.ayb, 4
  %i.aye = add nsw i64 %.idx.i337, -16            ; 2 uses
  %i.ayf = lshr exact i64 %i.aye, 4               ; 2 uses
  %i.ayg = add nsw i64 %i.ayf, -1
  %i.ayh = lshr i64 %i.ayg, 1
  %i.ayi = icmp ugt i32 %i.axy, 3
  br i1 %i.ayi, label %.lr.ph.i.i.i.i341, label %._crit_edge.i.i.i.i338

.lr.ph.i.i.i.i341:                                ; preds = %bb.fy, %.lr.ph.i.i.i.i341
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i342, %.lr.ph.i.i.i.i341 ], [ 0, %bb.fy ] ; 2 uses
  %i.ayj = shl i64 %.030.i.i.i.i, 1               ; 3 uses
  %i.ayk = add i64 %i.ayj, 2                      ; 2 uses
  %i.ayl = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %i.ayk
  %i.aym = getelementptr [16 x i8], ptr %i.axz, i64 %i.ayj
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8
  %i.ayo = load i32, ptr %i.ayn, align 8, !tbaa !184
  %i.ayp = getelementptr i8, ptr %i.aym, i64 24
  %i.ayq = load i32, ptr %i.ayp, align 8, !tbaa !184
  %i.ayr = icmp ult i32 %i.ayo, %i.ayq
  %i.ays = or disjoint i64 %i.ayj, 1
  %spec.select.i.i.i.i342 = select i1 %i.ayr, i64 %i.ays, i64 %i.ayk ; 4 uses
  %i.ayt = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %spec.select.i.i.i.i342 ; 2 uses
  %i.ayu = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %.030.i.i.i.i ; 2 uses
  %i.ayv = load ptr, ptr %i.ayt, align 8, !tbaa !24
  store ptr %i.ayv, ptr %i.ayu, align 8, !tbaa !186
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 8
  %i.ayx = load i32, ptr %i.ayw, align 8, !tbaa !3
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  store i32 %i.ayx, ptr %i.ayy, align 8, !tbaa !184
  %i.ayz = icmp slt i64 %spec.select.i.i.i.i342, %i.ayh
  br i1 %i.ayz, label %.lr.ph.i.i.i.i341, label %._crit_edge.i.i.i.i338, !llvm.loop !189

._crit_edge.i.i.i.i338:                           ; preds = %.lr.ph.i.i.i.i341, %bb.fy
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.fy ], [ %spec.select.i.i.i.i342, %.lr.ph.i.i.i.i341 ] ; 5 uses
  %i.aza = and i64 %i.aye, 16
  %i.azb = icmp eq i64 %i.aza, 0
  br i1 %i.azb, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %._crit_edge.i.i.i.i338
  %i.azc = add nsw i64 %i.ayf, -2
  %i.azd = ashr exact i64 %i.azc, 1
  %i.aze = icmp eq i64 %.0.lcssa.i.i.i.i, %i.azd
  br i1 %i.aze, label %.thread.i.i.i, label %bb.ga

.thread.i.i.i:                                    ; preds = %bb.fz
  %i.azf = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.azg = or disjoint i64 %i.azf, 1              ; 2 uses
  %i.azh = getelementptr inbounds nuw [16 x i8], ptr %i.axz, i64 %i.azg ; 2 uses
  %i.azi = getelementptr inbounds nuw [16 x i8], ptr %i.axz, i64 %.0.lcssa.i.i.i.i ; 2 uses
  %i.azj = load ptr, ptr %i.azh, align 8, !tbaa !24
  store ptr %i.azj, ptr %i.azi, align 8, !tbaa !186
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %i.azl = load i32, ptr %i.azk, align 8, !tbaa !3
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  store i32 %i.azl, ptr %i.azm, align 8, !tbaa !184
  br label %.lr.ph.i.i.i.i.i340.preheader

bb.ga:                                            ; preds = %bb.fz, %._crit_edge.i.i.i.i338
  %.not.i.i.i339 = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i339, label %_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i340.preheader

.lr.ph.i.i.i.i.i340.preheader:                    ; preds = %bb.ga, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.ga ], [ %i.azg, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i340

.lr.ph.i.i.i.i.i340:                              ; preds = %.lr.ph.i.i.i.i.i340.preheader, %bb.gb
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i910.i.i.i, %bb.gb ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i340.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i910.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.azn = getelementptr inbounds nuw [16 x i8], ptr %i.axz, i64 %.018.i.i910.i.i.i ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 8
  %i.azp = load i32, ptr %i.azo, align 8, !tbaa !184 ; 2 uses
  %i.azq = icmp ult i32 %i.azp, %.sroa.4.0.copyload.i.i.i336
  br i1 %i.azq, label %bb.gb, label %_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i

bb.gb:                                            ; preds = %.lr.ph.i.i.i.i.i340
  %i.azr = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %.01317.i.i.i.i.i ; 2 uses
  %i.azs = load ptr, ptr %i.azn, align 8, !tbaa !24
  store ptr %i.azs, ptr %i.azr, align 8, !tbaa !186
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  store i32 %i.azp, ptr %i.azt, align 8, !tbaa !184
  %.not11.i.i.i = icmp eq i64 %.018.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i340, !llvm.loop !187

_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i: ; preds = %bb.gb, %.lr.ph.i.i.i.i.i340, %bb.ga
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ga ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i340 ], [ 0, %bb.gb ]
  %i.azu = getelementptr inbounds [16 x i8], ptr %i.axz, i64 %.013.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.02.0.copyload.i.i.i, ptr %i.azu, align 8, !tbaa !186
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i336, ptr %i.azv, align 8, !tbaa !184
  br label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit

_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit: ; preds = %bb.fx, %_ZSt10__pop_heapIPSt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SE_SE_RT0_.exit.i.i
  %i.azw = add i32 %i.axy, -1
  store i32 %i.azw, ptr %i.aog, align 8, !tbaa !22
  store i32 0, ptr %i.aot, align 8, !tbaa !22
  %i.azx = load i32, ptr %i.aou, align 4, !tbaa !23
  %.not.i101.not.i = icmp eq i32 %i.azx, 0
  br i1 %.not.i101.not.i, label %bb.gc, label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115, !prof !190

bb.gc:                                            ; preds = %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.aos, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i167 = load i32, ptr %i.aot, align 8, !tbaa !22
  %i.azy = zext i32 %.pre.i.i167 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115

_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115: ; preds = %bb.gc, %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit
  %i.azz = phi i64 [ %i.azy, %bb.gc ], [ 0, %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit ]
  %i.baa = load ptr, ptr %6, align 8, !tbaa !21
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %i.baa, i64 %i.azz
  %i.bac = ptrtoint ptr %.sroa.062.0.copyload.i to i64
  store i64 %i.bac, ptr %i.bab, align 1
  %i.bad = load i32, ptr %i.aot, align 8, !tbaa !22
  %i.bae = add i32 %i.bad, 1                      ; 3 uses
  store i32 %i.bae, ptr %i.aot, align 8, !tbaa !22
  %.not.i102375.i = icmp eq i32 %i.bae, 0
  br i1 %.not.i102375.i, label %.loopexit.i123, label %.lr.ph376.i

.lr.ph376.i:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115, %._crit_edge374.i
  %i.baf = phi i32 [ %.pr.i122, %._crit_edge374.i ], [ %i.bae, %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115 ] ; 2 uses
  %i.bag = load ptr, ptr %6, align 8, !tbaa !21
  %i.bah = zext i32 %i.baf to i64
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %i.bag, i64 %i.bah
  %i.baj = getelementptr inbounds i8, ptr %i.bai, i64 -8
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !24 ; 4 uses
  %i.bal = add i32 %i.baf, -1
  store i32 %i.bal, ptr %i.aot, align 8, !tbaa !22
  %i.bam = load ptr, ptr %i.bak, align 8, !tbaa !191 ; 2 uses
  %i.ban = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bam) #10, !noalias !196
  %i.bao = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bam) #10, !noalias !196 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.bao, null
  br i1 %.not.i.i.i.i116, label %._crit_edge369.i, label %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i

_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i:  ; preds = %.lr.ph376.i
  %i.bap = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bao) #10, !noalias !196 ; 2 uses
  %.not333366.i = icmp eq i32 %i.bap, 0
  br i1 %.not333366.i, label %._crit_edge369.i, label %.lr.ph368.i

._crit_edge369.i:                                 ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %.lr.ph376.i
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bak, i64 24
  %i.bar = load ptr, ptr %i.baq, align 8, !tbaa !26 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bak, i64 32
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !26 ; 2 uses
  %.not334370.i = icmp eq ptr %i.bar, %i.bat
  br i1 %.not334370.i, label %._crit_edge374.i, label %.lr.ph373.i

.lr.ph368.i:                                      ; preds = %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i
  %.sroa.4304.0367.i = phi i32 [ %i.bip, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i ], [ 0, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %i.bau = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ban, i32 noundef %.sroa.4304.0367.i) #10 ; 10 uses
  %i.bav = load ptr, ptr %i.aoi, align 8, !tbaa !171 ; 4 uses
  %i.baw = load i32, ptr %i.aoj, align 8, !tbaa !170 ; 4 uses
  %i.bax = icmp eq i32 %i.baw, 0
  br i1 %i.bax, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph368.i
  %i.bay = ptrtoint ptr %i.bau to i64
  %i.baz = trunc i64 %i.bay to i32                ; 2 uses
  %i.bba = lshr i32 %i.baz, 4
  %i.bbb = lshr i32 %i.baz, 9
  %i.bbc = xor i32 %i.bba, %i.bbb
  %i.bbd = add i32 %i.baw, -1                     ; 2 uses
  %.02944.i.i.i110.i = and i32 %i.bbc, %i.bbd     ; 2 uses
  %i.bbe = zext nneg i32 %.02944.i.i.i110.i to i64
  %i.bbf = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %i.bbe ; 2 uses
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !172 ; 2 uses
  %i.bbh = icmp eq ptr %i.bau, %i.bbg
  br i1 %i.bbh, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i, label %.lr.ph.i.i.i111.i, !prof !35

.lr.ph.i.i.i111.i:                                ; preds = %bb.gd, %bb.ge
  %i.bbi = phi ptr [ %i.bbo, %bb.ge ], [ %i.bbg, %bb.gd ]
  %.02947.i.i.i112.i = phi i32 [ %.029.i.i.i114.i, %bb.ge ], [ %.02944.i.i.i110.i, %bb.gd ]
  %.02746.i.i.i113.i = phi i32 [ %i.bbk, %bb.ge ], [ 1, %bb.gd ] ; 2 uses
  %i.bbj = icmp eq ptr %i.bbi, inttoptr (i64 -8 to ptr)
  br i1 %i.bbj, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i, label %bb.ge, !prof !25

bb.ge:                                            ; preds = %.lr.ph.i.i.i111.i
  %i.bbk = add i32 %.02746.i.i.i113.i, 1
  %i.bbl = add i32 %.02746.i.i.i113.i, %.02947.i.i.i112.i
  %.029.i.i.i114.i = and i32 %i.bbl, %i.bbd       ; 2 uses
  %i.bbm = zext i32 %.029.i.i.i114.i to i64
  %i.bbn = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %i.bbm ; 2 uses
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !172 ; 2 uses
  %i.bbp = icmp eq ptr %i.bau, %i.bbo
  br i1 %i.bbp, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i, label %.lr.ph.i.i.i111.i, !prof !36, !llvm.loop !183

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i: ; preds = %.lr.ph.i.i.i111.i, %.lr.ph368.i
  %i.bbq = zext i32 %i.baw to i64
  %i.bbr = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %i.bbq
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i: ; preds = %bb.ge, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i, %bb.gd
  %.sink.i.ph.pn.i.i116.i = phi ptr [ %i.bbr, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i119.i ], [ %i.bbf, %bb.gd ], [ %i.bbn, %bb.ge ] ; 2 uses
  %i.bbs = zext i32 %i.baw to i64
  %i.bbt = getelementptr inbounds nuw [16 x i8], ptr %i.bav, i64 %i.bbs
  %.not.i117.i.a = icmp eq ptr %.sink.i.ph.pn.i.i116.i, %i.bbt
  br i1 %.not.i117.i.a, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i, label %30

30:                                               ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i
  %31 = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i116.i, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i: ; preds = %30, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i
  %.0.i118.i = phi ptr [ %32, %30 ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i ] ; 14 uses
  %33 = getelementptr inbounds nuw i8, ptr %.0.i118.i, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  %35 = icmp eq ptr %34, %i.bak
  br i1 %35, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %bb.gf

bb.gf:                                            ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i
  %i.bbu = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.bbv = load i32, ptr %i.aok, align 8, !tbaa !34 ; 7 uses
  %i.bbw = icmp eq i32 %i.bbv, 0
  br i1 %i.bbw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.bbx = ptrtoint ptr %.0.i118.i to i64
  %i.bby = trunc i64 %i.bbx to i32                ; 2 uses
  %i.bbz = lshr i32 %i.bby, 4
  %i.bca = lshr i32 %i.bby, 9
  %i.bcb = xor i32 %i.bbz, %i.bca
  %i.bcc = add i32 %i.bbv, -1                     ; 2 uses
  %.02944.i.i.i214.i = and i32 %i.bcc, %i.bcb     ; 2 uses
  %i.bcd = zext nneg i32 %.02944.i.i.i214.i to i64
  %i.bce = getelementptr inbounds nuw [16 x i8], ptr %i.bbu, i64 %i.bcd ; 3 uses
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !24 ; 2 uses
  %i.bcg = icmp eq ptr %.0.i118.i, %i.bcf
  br i1 %i.bcg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, label %.lr.ph.i.i.i215.i, !prof !35

.lr.ph.i.i.i215.i:                                ; preds = %bb.gg, %bb.gi
  %i.bch = phi ptr [ %i.bcr, %bb.gi ], [ %i.bcf, %bb.gg ] ; 2 uses
  %i.bci = phi ptr [ %i.bcq, %bb.gi ], [ %i.bce, %bb.gg ] ; 2 uses
  %.02947.i.i.i216.i = phi i32 [ %.029.i.i.i218.i, %bb.gi ], [ %.02944.i.i.i214.i, %bb.gg ]
  %.02746.i.i.i217.i = phi i32 [ %i.bcn, %bb.gi ], [ 1, %bb.gg ] ; 2 uses
  %.03245.i.i.i.i117 = phi ptr [ %spec.select.i.i.i.i119, %bb.gi ], [ null, %bb.gg ] ; 4 uses
  %i.bcj = icmp eq ptr %i.bch, inttoptr (i64 -8 to ptr)
  br i1 %i.bcj, label %bb.gh, label %bb.gi, !prof !25

bb.gh:                                            ; preds = %.lr.ph.i.i.i215.i
  %.not.i.i.i220.i = icmp eq ptr %.03245.i.i.i.i117, null
  %i.bck = select i1 %.not.i.i.i220.i, ptr %i.bci, ptr %.03245.i.i.i.i117
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151

bb.gi:                                            ; preds = %.lr.ph.i.i.i215.i
  %i.bcl = icmp eq ptr %i.bch, inttoptr (i64 -16 to ptr)
  %i.bcm = icmp eq ptr %.03245.i.i.i.i117, null
  %or.cond.not.i.i.i.i118 = select i1 %i.bcl, i1 %i.bcm, i1 false
  %spec.select.i.i.i.i119 = select i1 %or.cond.not.i.i.i.i118, ptr %i.bci, ptr %.03245.i.i.i.i117
  %i.bcn = add i32 %.02746.i.i.i217.i, 1
  %i.bco = add i32 %.02746.i.i.i217.i, %.02947.i.i.i216.i
  %.029.i.i.i218.i = and i32 %i.bco, %i.bcc       ; 2 uses
  %i.bcp = zext i32 %.029.i.i.i218.i to i64
  %i.bcq = getelementptr inbounds nuw [16 x i8], ptr %i.bbu, i64 %i.bcp ; 3 uses
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !24 ; 2 uses
  %i.bcs = icmp eq ptr %.0.i118.i, %i.bcr
  br i1 %i.bcs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, label %.lr.ph.i.i.i215.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151: ; preds = %bb.gh, %bb.gf
  %.sink.i.i.i221.i = phi ptr [ %i.bck, %bb.gh ], [ null, %bb.gf ]
  %i.bct = load i32, ptr %i.aol, align 8, !tbaa !38 ; 3 uses
  %i.bcu = shl i32 %i.bct, 2
  %i.bcv = add i32 %i.bcu, 4
  %i.bcw = mul i32 %i.bbv, 3
  %.not.i.i4.i.i152 = icmp ult i32 %i.bcv, %i.bcw
  br i1 %.not.i.i4.i.i152, label %bb.gk, label %bb.gj, !prof !25

bb.gj:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151
  %i.bcx = shl i32 %i.bbv, 1
  br label %.sink.split.i.i.i.i153

bb.gk:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151
  %i.bcy = load i32, ptr %i.aom, align 4, !tbaa !39
  %.neg.i.i.i.i164 = xor i32 %i.bct, -1
  %.neg12.i.i.i.i165 = add i32 %i.bbv, %.neg.i.i.i.i164
  %i.bcz = sub i32 %.neg12.i.i.i.i165, %i.bcy
  %i.bda = lshr i32 %i.bbv, 3
  %.not10.i.i.i.i166 = icmp ugt i32 %i.bcz, %i.bda
  br i1 %.not10.i.i.i.i166, label %bb.go, label %.sink.split.i.i.i.i153, !prof !25

.sink.split.i.i.i.i153:                           ; preds = %bb.gk, %bb.gj
  %.sink.i.i5.i.i154 = phi i32 [ %i.bcx, %bb.gj ], [ %i.bbv, %bb.gk ]
  call void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %27, i32 noundef %.sink.i.i5.i.i154)
  %i.bdb = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.bdc = load i32, ptr %i.aok, align 8, !tbaa !34 ; 2 uses
  %i.bdd = icmp eq i32 %i.bdc, 0
  br i1 %i.bdd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %bb.gl

bb.gl:                                            ; preds = %.sink.split.i.i.i.i153
  %i.bde = ptrtoint ptr %.0.i118.i to i64
  %i.bdf = trunc i64 %i.bde to i32                ; 2 uses
  %i.bdg = lshr i32 %i.bdf, 4
  %i.bdh = lshr i32 %i.bdf, 9
  %i.bdi = xor i32 %i.bdg, %i.bdh
  %i.bdj = add i32 %i.bdc, -1                     ; 2 uses
  %.02944.i.i.i155 = and i32 %i.bdj, %i.bdi       ; 2 uses
  %i.bdk = zext nneg i32 %.02944.i.i.i155 to i64
  %i.bdl = getelementptr inbounds nuw [16 x i8], ptr %i.bdb, i64 %i.bdk ; 3 uses
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !24 ; 2 uses
  %i.bdn = icmp eq ptr %.0.i118.i, %i.bdm
  br i1 %i.bdn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %.lr.ph.i.i242.i, !prof !35

.lr.ph.i.i242.i:                                  ; preds = %bb.gl, %bb.gn
  %i.bdo = phi ptr [ %i.bdy, %bb.gn ], [ %i.bdm, %bb.gl ] ; 2 uses
  %i.bdp = phi ptr [ %i.bdx, %bb.gn ], [ %i.bdl, %bb.gl ] ; 2 uses
  %.02947.i.i.i156 = phi i32 [ %.029.i.i.i160, %bb.gn ], [ %.02944.i.i.i155, %bb.gl ]
  %.02746.i.i.i157 = phi i32 [ %i.bdu, %bb.gn ], [ 1, %bb.gl ] ; 2 uses
  %.03245.i.i.i158 = phi ptr [ %spec.select.i.i243.i, %bb.gn ], [ null, %bb.gl ] ; 4 uses
  %i.bdq = icmp eq ptr %i.bdo, inttoptr (i64 -8 to ptr)
  br i1 %i.bdq, label %bb.gm, label %bb.gn, !prof !25

bb.gm:                                            ; preds = %.lr.ph.i.i242.i
  %.not.i.i244.i = icmp eq ptr %.03245.i.i.i158, null
  %i.bdr = select i1 %.not.i.i244.i, ptr %i.bdp, ptr %.03245.i.i.i158
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161

bb.gn:                                            ; preds = %.lr.ph.i.i242.i
  %i.bds = icmp eq ptr %i.bdo, inttoptr (i64 -16 to ptr)
  %i.bdt = icmp eq ptr %.03245.i.i.i158, null
  %or.cond.not.i.i.i159 = select i1 %i.bds, i1 %i.bdt, i1 false
  %spec.select.i.i243.i = select i1 %or.cond.not.i.i.i159, ptr %i.bdp, ptr %.03245.i.i.i158
  %i.bdu = add i32 %.02746.i.i.i157, 1
  %i.bdv = add i32 %.02746.i.i.i157, %.02947.i.i.i156
  %.029.i.i.i160 = and i32 %i.bdv, %i.bdj         ; 2 uses
  %i.bdw = zext i32 %.029.i.i.i160 to i64
  %i.bdx = getelementptr inbounds nuw [16 x i8], ptr %i.bdb, i64 %i.bdw ; 3 uses
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !24 ; 2 uses
  %i.bdz = icmp eq ptr %.0.i118.i, %i.bdy
  br i1 %i.bdz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %.lr.ph.i.i242.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161: ; preds = %bb.gn, %bb.gm, %bb.gl, %.sink.split.i.i.i.i153
  %.sink.i.i.i162 = phi ptr [ %i.bdr, %bb.gm ], [ null, %.sink.split.i.i.i.i153 ], [ %i.bdl, %bb.gl ], [ %i.bdx, %bb.gn ]
  %.pre.i.i222.i = load i32, ptr %i.aol, align 8, !tbaa !38
  br label %bb.go

bb.go:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, %bb.gk
  %i.bea = phi ptr [ %.sink.i.i.i162, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161 ], [ %.sink.i.i.i221.i, %bb.gk ] ; 4 uses
  %i.beb = phi i32 [ %.pre.i.i222.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161 ], [ %i.bct, %bb.gk ]
  %i.bec = add i32 %i.beb, 1
  store i32 %i.bec, ptr %i.aol, align 8, !tbaa !38
  %i.bed = load ptr, ptr %i.bea, align 8, !tbaa !24
  %i.bee = icmp eq ptr %i.bed, inttoptr (i64 -8 to ptr)
  br i1 %i.bee, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bef = load i32, ptr %i.aom, align 4, !tbaa !39
  %i.beg = add i32 %i.bef, -1
  store i32 %i.beg, ptr %i.aom, align 4, !tbaa !39
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163: ; preds = %bb.gp, %bb.go
  store ptr %.0.i118.i, ptr %i.bea, align 8, !tbaa !24
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bea, i64 8
  store i32 0, ptr %i.beh, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120: ; preds = %bb.gi, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163, %bb.gg
  %.0.i219.i = phi ptr [ %i.bea, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163 ], [ %i.bce, %bb.gg ], [ %i.bcq, %bb.gi ]
  %i.bei = getelementptr inbounds nuw i8, ptr %.0.i219.i, i64 8
  %i.bej = load i32, ptr %i.bei, align 4, !tbaa !3 ; 2 uses
  %i.bek = icmp ugt i32 %i.bej, %.sroa.4.0.copyload.i
  br i1 %i.bek, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %bb.gq

bb.gq:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120
  %i.bel = load ptr, ptr %i.aoo, align 8, !tbaa !179, !noalias !200
  %i.bem = load ptr, ptr %5, align 8, !tbaa !177, !noalias !200 ; 3 uses
  %i.ben = icmp eq ptr %i.bel, %i.bem
  br i1 %i.ben, label %bb.gr, label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i

bb.gr:                                            ; preds = %bb.gq
  %i.beo = load i32, ptr %i.aoq, align 4, !tbaa !181, !noalias !200 ; 4 uses
  %i.bep = zext i32 %i.beo to i64
  %.idx.i.i.i148 = shl nuw nsw i64 %i.bep, 3
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bem, i64 %.idx.i.i.i148 ; 2 uses
  %.not63.i.i.i = icmp eq i32 %i.beo, 0
  br i1 %.not63.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i149

.lr.ph.i.i.i149:                                  ; preds = %bb.gr, %bb.gs
  %.065.i.i.i = phi ptr [ %spec.select.i.i.i150, %bb.gs ], [ null, %bb.gr ]
  %.04964.i.i.i = phi ptr [ %i.bet, %bb.gs ], [ %i.bem, %bb.gr ] ; 3 uses
  %i.ber = load ptr, ptr %.04964.i.i.i, align 8, !tbaa !203, !noalias !200 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.ber, %.0.i118.i
  br i1 %.not27.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph.i.i.i149
  %i.bes = icmp eq ptr %i.ber, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i150 = select i1 %i.bes, ptr %.04964.i.i.i, ptr %.065.i.i.i ; 3 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %.04964.i.i.i, i64 8 ; 2 uses
  %.not.i.i121.i = icmp eq ptr %i.bet, %i.beq
  br i1 %.not.i.i121.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i149, !llvm.loop !204

.critedge.i.i.i:                                  ; preds = %bb.gs
  %.not28.i.i.i = icmp eq ptr %spec.select.i.i.i150, null
  br i1 %.not28.i.i.i, label %.critedge.thread.i.i.i, label %bb.gt

bb.gt:                                            ; preds = %.critedge.i.i.i
  store ptr %.0.i118.i, ptr %spec.select.i.i.i150, align 8, !tbaa !203, !noalias !200
  %i.beu = load i32, ptr %i.aor, align 8, !tbaa !182, !noalias !200
  %i.bev = add i32 %i.beu, -1
  store i32 %i.bev, ptr %i.aor, align 8, !tbaa !182, !noalias !200
  br label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.gr
  %i.bew = load i32, ptr %i.aop, align 8, !tbaa !180, !noalias !200
  %i.bex = icmp ult i32 %i.beo, %i.bew
  br i1 %i.bex, label %bb.gu, label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i

bb.gu:                                            ; preds = %.critedge.thread.i.i.i
  %i.bey = add nuw i32 %i.beo, 1
  store i32 %i.bey, ptr %i.aoq, align 4, !tbaa !181, !noalias !200
  store ptr %.0.i118.i, ptr %i.beq, align 8, !tbaa !203, !noalias !200
  br label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread

_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i: ; preds = %bb.gq, %.critedge.thread.i.i.i
  %i.bez = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %.0.i118.i) #10, !noalias !200
  %i.bfa = extractvalue { ptr, i8 } %i.bez, 1
  %i.bfb = trunc nuw i8 %i.bfa to i1
  br i1 %i.bfb, label %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i

_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread: ; preds = %bb.gt, %bb.gu, %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i
  %i.bfc = load ptr, ptr %i.atb, align 8, !tbaa !113
  %i.bfd = load ptr, ptr %.0.i118.i, align 8, !tbaa !191
  %i.bfe = call noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef %i.bfc, ptr noundef %i.bfd) #10
  br i1 %i.bfe, label %bb.gv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i

bb.gv:                                            ; preds = %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread
  %i.bff = load ptr, ptr %3, align 8, !tbaa !205, !noalias !208 ; 2 uses
  %i.bfg = load i32, ptr %i.aov, align 8, !tbaa !213, !noalias !208 ; 7 uses
  %i.bfh = icmp eq i32 %i.bfg, 0
  br i1 %i.bfh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bfi = ptrtoint ptr %i.bau to i64
  %i.bfj = trunc i64 %i.bfi to i32                ; 2 uses
  %i.bfk = lshr i32 %i.bfj, 4
  %i.bfl = lshr i32 %i.bfj, 9
  %i.bfm = xor i32 %i.bfk, %i.bfl
  %i.bfn = add i32 %i.bfg, -1                     ; 2 uses
  %.02944.i.i.i223.i = and i32 %i.bfn, %i.bfm     ; 2 uses
  %i.bfo = zext nneg i32 %.02944.i.i.i223.i to i64
  %i.bfp = getelementptr inbounds nuw [8 x i8], ptr %i.bff, i64 %i.bfo ; 2 uses
  %i.bfq = load ptr, ptr %i.bfp, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bfr = icmp eq ptr %i.bau, %i.bfq
  br i1 %i.bfr, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %.lr.ph.i.i.i224.i, !prof !35

.lr.ph.i.i.i224.i:                                ; preds = %bb.gw, %bb.gy
  %i.bfs = phi ptr [ %i.bgc, %bb.gy ], [ %i.bfq, %bb.gw ] ; 2 uses
  %i.bft = phi ptr [ %i.bgb, %bb.gy ], [ %i.bfp, %bb.gw ] ; 2 uses
  %.02947.i.i.i225.i = phi i32 [ %.029.i.i.i230.i, %bb.gy ], [ %.02944.i.i.i223.i, %bb.gw ]
  %.02746.i.i.i226.i = phi i32 [ %i.bfy, %bb.gy ], [ 1, %bb.gw ] ; 2 uses
  %.03245.i.i.i227.i = phi ptr [ %spec.select.i.i.i229.i, %bb.gy ], [ null, %bb.gw ] ; 4 uses
  %i.bfu = icmp eq ptr %i.bfs, inttoptr (i64 -8 to ptr)
  br i1 %i.bfu, label %bb.gx, label %bb.gy, !prof !25

bb.gx:                                            ; preds = %.lr.ph.i.i.i224.i
  %.not.i.i.i232.i = icmp eq ptr %.03245.i.i.i227.i, null
  %i.bfv = select i1 %.not.i.i.i232.i, ptr %i.bft, ptr %.03245.i.i.i227.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i

bb.gy:                                            ; preds = %.lr.ph.i.i.i224.i
  %i.bfw = icmp eq ptr %i.bfs, inttoptr (i64 -16 to ptr)
  %i.bfx = icmp eq ptr %.03245.i.i.i227.i, null
  %or.cond.not.i.i.i228.i = select i1 %i.bfw, i1 %i.bfx, i1 false
  %spec.select.i.i.i229.i = select i1 %or.cond.not.i.i.i228.i, ptr %i.bft, ptr %.03245.i.i.i227.i
  %i.bfy = add i32 %.02746.i.i.i226.i, 1
  %i.bfz = add i32 %.02746.i.i.i226.i, %.02947.i.i.i225.i
  %.029.i.i.i230.i = and i32 %i.bfz, %i.bfn       ; 2 uses
  %i.bga = zext i32 %.029.i.i.i230.i to i64
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.bff, i64 %i.bga ; 2 uses
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bgd = icmp eq ptr %i.bau, %i.bgc
  br i1 %i.bgd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %.lr.ph.i.i.i224.i, !prof !36, !llvm.loop !214

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i: ; preds = %bb.gx, %bb.gv
  %.sink.i.i.i233.i = phi ptr [ %i.bfv, %bb.gx ], [ null, %bb.gv ]
  %i.bge = load i32, ptr %i.aow, align 8, !tbaa !215, !noalias !208 ; 3 uses
  %i.bgf = shl i32 %i.bge, 2
  %i.bgg = add i32 %i.bgf, 4
  %i.bgh = mul i32 %i.bfg, 3
  %.not.i.i4.i234.i = icmp ult i32 %i.bgg, %i.bgh
  br i1 %.not.i.i4.i234.i, label %bb.ha, label %bb.gz, !prof !25

bb.gz:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i
  %i.bgi = shl i32 %i.bfg, 1
  br label %.sink.split.i.i.i235.i

bb.ha:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i
  %i.bgj = load i32, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  %.neg.i.i.i239.i = xor i32 %i.bge, -1
  %.neg12.i.i.i240.i = add i32 %i.bfg, %.neg.i.i.i239.i
  %i.bgk = sub i32 %.neg12.i.i.i240.i, %i.bgj
  %i.bgl = lshr i32 %i.bfg, 3
  %.not10.i.i.i241.i = icmp ugt i32 %i.bgk, %i.bgl
  br i1 %.not10.i.i.i241.i, label %bb.he, label %.sink.split.i.i.i235.i, !prof !25

.sink.split.i.i.i235.i:                           ; preds = %bb.ha, %bb.gz
  %.sink.i.i5.i236.i = phi i32 [ %i.bgi, %bb.gz ], [ %i.bfg, %bb.ha ]
  call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %.sink.i.i5.i236.i), !noalias !208
  %i.bgm = load ptr, ptr %3, align 8, !tbaa !205, !noalias !208 ; 2 uses
  %i.bgn = load i32, ptr %i.aov, align 8, !tbaa !213, !noalias !208 ; 2 uses
  %i.bgo = icmp eq i32 %i.bgn, 0
  br i1 %i.bgo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %bb.hb

bb.hb:                                            ; preds = %.sink.split.i.i.i235.i
  %i.bgp = ptrtoint ptr %i.bau to i64
  %i.bgq = trunc i64 %i.bgp to i32                ; 2 uses
  %i.bgr = lshr i32 %i.bgq, 4
  %i.bgs = lshr i32 %i.bgq, 9
  %i.bgt = xor i32 %i.bgr, %i.bgs
  %i.bgu = add i32 %i.bgn, -1                     ; 2 uses
  %.02944.i.i245.i = and i32 %i.bgu, %i.bgt       ; 2 uses
  %i.bgv = zext nneg i32 %.02944.i.i245.i to i64
  %i.bgw = getelementptr inbounds nuw [8 x i8], ptr %i.bgm, i64 %i.bgv ; 3 uses
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bgy = icmp eq ptr %i.bau, %i.bgx
  br i1 %i.bgy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i246.i, !prof !35

.lr.ph.i.i246.i:                                  ; preds = %bb.hb, %bb.hd
  %i.bgz = phi ptr [ %i.bhj, %bb.hd ], [ %i.bgx, %bb.hb ] ; 2 uses
  %i.bha = phi ptr [ %i.bhi, %bb.hd ], [ %i.bgw, %bb.hb ] ; 2 uses
  %.02947.i.i247.i = phi i32 [ %.029.i.i252.i, %bb.hd ], [ %.02944.i.i245.i, %bb.hb ]
  %.02746.i.i248.i = phi i32 [ %i.bhf, %bb.hd ], [ 1, %bb.hb ] ; 2 uses
  %.03245.i.i249.i = phi ptr [ %spec.select.i.i251.i, %bb.hd ], [ null, %bb.hb ] ; 4 uses
  %i.bhb = icmp eq ptr %i.bgz, inttoptr (i64 -8 to ptr)
  br i1 %i.bhb, label %bb.hc, label %bb.hd, !prof !25

bb.hc:                                            ; preds = %.lr.ph.i.i246.i
  %.not.i.i255.i = icmp eq ptr %.03245.i.i249.i, null
  %i.bhc = select i1 %.not.i.i255.i, ptr %i.bha, ptr %.03245.i.i249.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.hd:                                            ; preds = %.lr.ph.i.i246.i
  %i.bhd = icmp eq ptr %i.bgz, inttoptr (i64 -16 to ptr)
  %i.bhe = icmp eq ptr %.03245.i.i249.i, null
  %or.cond.not.i.i250.i = select i1 %i.bhd, i1 %i.bhe, i1 false
  %spec.select.i.i251.i = select i1 %or.cond.not.i.i250.i, ptr %i.bha, ptr %.03245.i.i249.i
  %i.bhf = add i32 %.02746.i.i248.i, 1
  %i.bhg = add i32 %.02746.i.i248.i, %.02947.i.i247.i
  %.029.i.i252.i = and i32 %i.bhg, %i.bgu         ; 2 uses
  %i.bhh = zext i32 %.029.i.i252.i to i64
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %i.bgm, i64 %i.bhh ; 3 uses
  %i.bhj = load ptr, ptr %i.bhi, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bhk = icmp eq ptr %i.bau, %i.bhj
  br i1 %i.bhk, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i246.i, !prof !36, !llvm.loop !214

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.hd, %bb.hc, %bb.hb, %.sink.split.i.i.i235.i
  %.sink.i.i253.i = phi ptr [ %i.bhc, %bb.hc ], [ null, %.sink.split.i.i.i235.i ], [ %i.bgw, %bb.hb ], [ %i.bhi, %bb.hd ]
  %.pre.i.i237.i = load i32, ptr %i.aow, align 8, !tbaa !215, !noalias !208
  br label %bb.he

bb.he:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, %bb.ha
  %i.bhl = phi ptr [ %.sink.i.i253.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %.sink.i.i.i233.i, %bb.ha ] ; 2 uses
  %i.bhm = phi i32 [ %.pre.i.i237.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %i.bge, %bb.ha ]
  %i.bhn = add i32 %i.bhm, 1
  store i32 %i.bhn, ptr %i.aow, align 8, !tbaa !215, !noalias !208
  %i.bho = load ptr, ptr %i.bhl, align 8, !tbaa !172, !noalias !208
  %i.bhp = icmp eq ptr %i.bho, inttoptr (i64 -8 to ptr)
  br i1 %i.bhp, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bhq = load i32, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  %i.bhr = add i32 %i.bhq, -1
  store i32 %i.bhr, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  store ptr %i.bau, ptr %i.bhl, align 8, !tbaa !172, !noalias !208
  %i.bhs = load i32, ptr %i.aog, align 8, !tbaa !22 ; 2 uses
  %i.bht = load i32, ptr %i.aoh, align 4, !tbaa !23
  %.not.i.i124.i = icmp ult i32 %i.bhs, %i.bht
  br i1 %.not.i.i124.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i, label %bb.hh, !prof !25

bb.hh:                                            ; preds = %bb.hg
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(529) %4, ptr noundef nonnull %i.aof, i64 noundef 0, i64 noundef 16) #10
  %.pre.i.i125.i = load i32, ptr %i.aog, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i: ; preds = %bb.hh, %bb.hg
  %i.bhu = phi i32 [ %.pre.i.i125.i, %bb.hh ], [ %i.bhs, %bb.hg ]
  %i.bhv = load ptr, ptr %4, align 8, !tbaa !21
  %i.bhw = zext i32 %i.bhu to i64
  %i.bhx = getelementptr inbounds nuw [16 x i8], ptr %i.bhv, i64 %i.bhw ; 2 uses
  store ptr %.0.i118.i, ptr %i.bhx, align 1
  %.sroa.4283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhx, i64 8
  store i32 %i.bej, ptr %.sroa.4283.0..sroa_idx.i, align 1
  %i.bhy = load i32, ptr %i.aog, align 8, !tbaa !22
  %i.bhz = add i32 %i.bhy, 1                      ; 3 uses
  store i32 %i.bhz, ptr %i.aog, align 8, !tbaa !22
  %i.bia = load ptr, ptr %4, align 8, !tbaa !21   ; 4 uses
  %i.bib = zext i32 %i.bhz to i64                 ; 2 uses
  %i.bic = getelementptr inbounds nuw [16 x i8], ptr %i.bia, i64 %i.bib ; 2 uses
  %i.bid = getelementptr inbounds i8, ptr %i.bic, i64 -16
  %.sroa.01.0.copyload.i.i127.i = load ptr, ptr %i.bid, align 8
  %.sroa.4.0..sroa_idx.i.i128.i = getelementptr inbounds i8, ptr %i.bic, i64 -8
  %.sroa.4.0.copyload.i.i129.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i128.i, align 8 ; 2 uses
  %i.bie = add nsw i64 %i.bib, -1                 ; 2 uses
  %i.bif = icmp ugt i32 %i.bhz, 1
  br i1 %i.bif, label %.lr.ph.i.i.i131.i, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i

.lr.ph.i.i.i131.i:                                ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i, %bb.hi
  %.01317.i.i.i132.i = phi i64 [ %.018.i56.i.i134.i, %bb.hi ], [ %i.bie, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i ] ; 3 uses
  %.018.in.i.i.i133.i = add nsw i64 %.01317.i.i.i132.i, -1
  %.018.i56.i.i134.i = lshr i64 %.018.in.i.i.i133.i, 1 ; 3 uses
  %i.big = getelementptr inbounds nuw [16 x i8], ptr %i.bia, i64 %.018.i56.i.i134.i ; 2 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  %i.bii = load i32, ptr %i.bih, align 8, !tbaa !184 ; 2 uses
  %i.bij = icmp ult i32 %i.bii, %.sroa.4.0.copyload.i.i129.i
  br i1 %i.bij, label %bb.hi, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i

bb.hi:                                            ; preds = %.lr.ph.i.i.i131.i
  %i.bik = getelementptr inbounds [16 x i8], ptr %i.bia, i64 %.01317.i.i.i132.i ; 2 uses
  %i.bil = load ptr, ptr %i.big, align 8, !tbaa !24
  store ptr %i.bil, ptr %i.bik, align 8, !tbaa !186
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bik, i64 8
  store i32 %i.bii, ptr %i.bim, align 8, !tbaa !184
  %.not.i2.i135.i = icmp eq i64 %.018.i56.i.i134.i, 0
  br i1 %.not.i2.i135.i, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i, label %.lr.ph.i.i.i131.i, !llvm.loop !187

_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i: ; preds = %bb.hi, %.lr.ph.i.i.i131.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i
  %.013.lcssa.i.i.i130.i = phi i64 [ %i.bie, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i ], [ 0, %bb.hi ], [ %.01317.i.i.i132.i, %.lr.ph.i.i.i131.i ]
  %i.bin = getelementptr inbounds [16 x i8], ptr %i.bia, i64 %.013.lcssa.i.i.i130.i ; 2 uses
  store ptr %.sroa.01.0.copyload.i.i127.i, ptr %i.bin, align 8, !tbaa !186
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 8
  store i32 %.sroa.4.0.copyload.i.i129.i, ptr %i.bio, align 8, !tbaa !184
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i: ; preds = %.lr.ph.i.i.i149, %bb.gy, %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i, %bb.gw, %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread, %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit120.i
  %i.bip = add nuw nsw i32 %.sroa.4304.0367.i, 1  ; 2 uses
  %.not333.i = icmp eq i32 %i.bip, %i.bap
  br i1 %.not333.i, label %._crit_edge369.i, label %.lr.ph368.i

._crit_edge374.i:                                 ; preds = %bb.ho, %._crit_edge369.i
  %.pr.i122 = load i32, ptr %i.aot, align 8, !tbaa !22 ; 2 uses
  %.not.i102.i = icmp eq i32 %.pr.i122, 0
  br i1 %.not.i102.i, label %.loopexit.i123, label %.lr.ph376.i, !llvm.loop !217

.lr.ph373.i:                                      ; preds = %._crit_edge369.i, %bb.ho
  %.sroa.0279.0371.i = phi ptr [ %i.bjz, %bb.ho ], [ %i.bar, %._crit_edge369.i ] ; 3 uses
  %i.biq = load ptr, ptr %.sroa.0279.0371.i, align 8, !tbaa !24 ; 3 uses
  %i.bir = load ptr, ptr %i.aoo, align 8, !tbaa !179 ; 6 uses
  %i.bis = load ptr, ptr %5, align 8, !tbaa !177  ; 3 uses
  %i.bit = icmp eq ptr %i.bir, %i.bis
  br i1 %i.bit, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %.lr.ph373.i
  %i.biu = load i32, ptr %i.aoq, align 4, !tbaa !181 ; 4 uses
  %i.biv = zext i32 %i.biu to i64                 ; 2 uses
  %.idx.i.i.i.i147 = shl nuw nsw i64 %i.biv, 3
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bis, i64 %.idx.i.i.i.i147
  %.not18.i.i.i.i = icmp eq i32 %i.biu, 0
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i138.i

.lr.ph.i.i.i138.i:                                ; preds = %bb.hj, %bb.hk
  %.01319.i.i.i.i = phi ptr [ %i.biz, %bb.hk ], [ %i.bis, %bb.hj ] ; 3 uses
  %i.bix = load ptr, ptr %.01319.i.i.i.i, align 8, !tbaa !203
  %i.biy = icmp eq ptr %i.bix, %i.biq
  br i1 %i.biy, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph.i.i.i138.i
  %i.biz = getelementptr inbounds nuw i8, ptr %.01319.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i139.i = icmp eq ptr %i.biz, %i.biw
  br i1 %.not.i.i.i139.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i138.i, !llvm.loop !218

._crit_edge.i.i.i.i:                              ; preds = %bb.hk, %bb.hj
  %i.bja = getelementptr inbounds nuw [8 x i8], ptr %i.bir, i64 %i.biv
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.hl:                                            ; preds = %.lr.ph373.i
  %i.bjb = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.biq) #10 ; 2 uses
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !203
  %i.bjd = icmp eq ptr %i.bjc, %i.biq
  %.pre.i.i137.i121 = load ptr, ptr %i.aoo, align 8, !tbaa !179 ; 4 uses
  %.pre4.i.i.i = load ptr, ptr %5, align 8, !tbaa !177 ; 3 uses
  br i1 %i.bjd, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, label %bb.hm

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i: ; preds = %bb.hl
  %.pre5.i.i.i = load i32, ptr %i.aoq, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.hm:                                            ; preds = %bb.hl
  %i.bje = icmp eq ptr %.pre.i.i137.i121, %.pre4.i.i.i
  %i.bjf = load i32, ptr %i.aoq, align 4          ; 2 uses
  %i.bjg = load i32, ptr %i.aop, align 8
  %.v.v.i14.i.i.i.i = select i1 %i.bje, i32 %i.bjf, i32 %i.bjg
  %.v.i15.i.i.i.i = zext i32 %.v.v.i14.i.i.i.i to i64
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i137.i121, i64 %.v.i15.i.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i: ; preds = %.lr.ph.i.i.i138.i, %bb.hm, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, %._crit_edge.i.i.i.i
  %i.bji = phi ptr [ %i.bir, %._crit_edge.i.i.i.i ], [ %.pre4.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %.pre4.i.i.i, %bb.hm ], [ %i.bir, %.lr.ph.i.i.i138.i ]
  %i.bjj = phi i32 [ %i.biu, %._crit_edge.i.i.i.i ], [ %.pre5.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %i.bjf, %bb.hm ], [ %i.biu, %.lr.ph.i.i.i138.i ]
  %i.bjk = phi ptr [ %i.bir, %._crit_edge.i.i.i.i ], [ %.pre.i.i137.i121, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %.pre.i.i137.i121, %bb.hm ], [ %i.bir, %.lr.ph.i.i.i138.i ] ; 2 uses
  %.2.i.i.i.i = phi ptr [ %i.bja, %._crit_edge.i.i.i.i ], [ %i.bjb, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %i.bjh, %bb.hm ], [ %.01319.i.i.i.i, %.lr.ph.i.i.i138.i ] ; 2 uses
  %i.bjl = icmp eq ptr %i.bjk, %i.bji
  %i.bjm = load i32, ptr %i.aop, align 8
  %.v.v.i4.i.i.i.i = select i1 %i.bjl, i32 %i.bjj, i32 %i.bjm
  %.v.i5.i.i.i.i = zext i32 %.v.v.i4.i.i.i.i to i64
  %i.bjn = getelementptr inbounds nuw [8 x i8], ptr %i.bjk, i64 %.v.i5.i.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i.i = icmp eq ptr %.2.i.i.i.i, %i.bjn
  br i1 %.not3.i4.i.i6.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %.lr.ph.i5.i.i7.i.i.i.i

.lr.ph.i5.i.i7.i.i.i.i:                           ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, %.critedge2.i7.i.i9.i.i.i.i
  %.sroa.0.3.i.i.i.i = phi ptr [ %i.bjp, %.critedge2.i7.i.i9.i.i.i.i ], [ %.2.i.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i ] ; 3 uses
  %i.bjo = load ptr, ptr %.sroa.0.3.i.i.i.i, align 8, !tbaa !203
  %switch.i6.i.i8.i.i.i.i = icmp ugt ptr %i.bjo, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.i, label %.critedge2.i7.i.i9.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i

.critedge2.i7.i.i9.i.i.i.i:                       ; preds = %.lr.ph.i5.i.i7.i.i.i.i
  %i.bjp = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.i = icmp eq ptr %i.bjp, %i.bjn
  br i1 %.not.i8.i.i10.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %.lr.ph.i5.i.i7.i.i.i.i, !llvm.loop !219

_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i: ; preds = %.lr.ph.i5.i.i7.i.i.i.i
  %.not335.i = icmp eq ptr %.sroa.0.3.i.i.i.i, %i.bjn
  br i1 %.not335.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %bb.ho

_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i: ; preds = %.critedge2.i7.i.i9.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i
  %i.bjq = load i32, ptr %i.aot, align 8, !tbaa !22 ; 2 uses
  %i.bjr = load i32, ptr %i.aou, align 4, !tbaa !23
  %.not.i140.i = icmp ult i32 %i.bjq, %i.bjr
  br i1 %.not.i140.i, label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i, label %bb.hn, !prof !25

bb.hn:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.aos, i64 noundef 0, i64 noundef 8) #10
  %.pre.i141.i = load i32, ptr %i.aot, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i

_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i: ; preds = %bb.hn, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i
  %i.bjs = phi i32 [ %.pre.i141.i, %bb.hn ], [ %i.bjq, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i ]
  %i.bjt = load ptr, ptr %6, align 8, !tbaa !21
  %i.bju = zext i32 %i.bjs to i64
  %i.bjv = getelementptr inbounds nuw [8 x i8], ptr %i.bjt, i64 %i.bju
  %i.bjw = load i64, ptr %.sroa.0279.0371.i, align 8
  store i64 %i.bjw, ptr %i.bjv, align 1
  %i.bjx = load i32, ptr %i.aot, align 8, !tbaa !22
  %i.bjy = add i32 %i.bjx, 1
  store i32 %i.bjy, ptr %i.aot, align 8, !tbaa !22
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i
  %i.bjz = getelementptr inbounds nuw i8, ptr %.sroa.0279.0371.i, i64 8 ; 2 uses
  %.not334.i = icmp eq ptr %i.bjz, %i.bat
  br i1 %.not334.i, label %._crit_edge374.i, label %.lr.ph373.i

._crit_edge380.i:                                 ; preds = %.loopexit.i123, %._crit_edge.i114
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.bka = getelementptr inbounds nuw i8, ptr %i.ass, i64 56
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !113
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 72
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !43
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 56
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !220
  store ptr %i.bkf, ptr %8, align 8, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoy, i8 0, i64 32, i1 false)
  %i.bkg = load i32, ptr %i.aow, align 8, !tbaa !215
  %i.bkh = icmp eq i32 %i.bkg, 0
  %i.bki = load ptr, ptr %3, align 8, !tbaa !205  ; 5 uses
  %i.bkj = load i32, ptr %i.aov, align 8, !tbaa !213 ; 2 uses
  %i.bkk = zext i32 %i.bkj to i64                 ; 3 uses
  br i1 %i.bkh, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %._crit_edge380.i
  %i.bkl = getelementptr inbounds nuw [8 x i8], ptr %i.bki, i64 %i.bkk ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i

bb.hq:                                            ; preds = %._crit_edge380.i
  %.idx.i.i143.i = shl nuw nsw i64 %i.bkk, 3
  %i.bkm = getelementptr i8, ptr %i.bki, i64 %.idx.i.i143.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i = icmp eq i32 %i.bkj, 0
  br i1 %.not5.i5.i10.i2.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i

.lr.ph.i6.i12.i3.i.i.i:                           ; preds = %bb.hq, %.critedge2.i8.i14.i6.i.i.i
  %.sroa.0.3.i4.i.i.i = phi ptr [ %i.bko, %.critedge2.i8.i14.i6.i.i.i ], [ %i.bki, %bb.hq ] ; 3 uses
  %i.bkn = load ptr, ptr %.sroa.0.3.i4.i.i.i, align 8, !tbaa !172
  %magicptr.i7.i13.i5.i.i.i = ptrtoint ptr %i.bkn to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i:                       ; preds = %.lr.ph.i6.i12.i3.i.i.i, %.lr.ph.i6.i12.i3.i.i.i
  %i.bko = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i = icmp eq ptr %i.bko, %i.bkm
  br i1 %.not.i9.i15.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i, !llvm.loop !246

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i.i, %.lr.ph.i6.i12.i3.i.i.i, %bb.hq, %bb.hp
  %.pn14.i.i.i = phi ptr [ %i.bkl, %bb.hp ], [ %i.bki, %bb.hq ], [ %.sroa.0.3.i4.i.i.i, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.bkm, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %.pn12.i.i.i = phi ptr [ %i.bkl, %bb.hp ], [ %i.bkm, %bb.hq ], [ %i.bkm, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.bkm, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr %i.bki, i64 %i.bkk ; 2 uses
  %.not336381.i = icmp eq ptr %.pn14.i.i.i, %i.bkp
  br i1 %.not336381.i, label %._crit_edge384.i, label %.lr.ph383.i

._crit_edge384.i:                                 ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  store ptr %i.apc, ptr %10, align 8, !tbaa !21
  store i32 0, ptr %i.apd, align 8, !tbaa !22
  store i32 16, ptr %i.ape, align 4, !tbaa !23
  %i.bkq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ast) #10 ; 2 uses
  %i.bkr = load ptr, ptr %i.bkq, align 8, !tbaa !21 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkq, i64 8
  %i.bkt = load i32, ptr %i.bks, align 8, !tbaa !22 ; 2 uses
  %i.bku = zext i32 %i.bkt to i64
  %.idx407.i = shl nuw nsw i64 %i.bku, 3
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %.idx407.i
  %.not89385.i = icmp eq i32 %i.bkt, 0
  br i1 %.not89385.i, label %._crit_edge389.i, label %.lr.ph388.i

.lr.ph383.i:                                      ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.sroa.0274.0382.i = phi ptr [ %.sroa.0274.2.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.pn14.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 2 uses
  %i.bkw = load ptr, ptr %.sroa.0274.0382.i, align 8, !tbaa !172 ; 8 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 64
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !40
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %i.bky) #10
  %i.bkz = call noundef ptr @_ZN6hermes9IRBuilder13createPhiInstEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #10
  %i.bla = load ptr, ptr %7, align 8, !tbaa !247  ; 2 uses
  %i.blb = load i32, ptr %i.aoz, align 8, !tbaa !250 ; 7 uses
  %i.blc = icmp eq i32 %i.blb, 0
  br i1 %i.blc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i323, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph383.i
  %i.bld = ptrtoint ptr %i.bkw to i64
  %i.ble = trunc i64 %i.bld to i32                ; 2 uses
  %i.blf = lshr i32 %i.ble, 4
end_hunk_1
begin_hunk_2_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.bze = getelementptr inbounds nuw [16 x i8], ptr %.val97.i, i64 %i.bzd
  %.not.i.i203.i = icmp eq ptr %.sink.i.ph.pn.i.i.i.i, %i.bze
  br i1 %.not.i.i203.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i.i

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i.i: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i.i
  %i.bzf = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i.i.i, i64 8
  %i.bzg = load ptr, ptr %i.bzf, align 8, !tbaa !24 ; 2 uses
  %.not.i204.i = icmp eq ptr %i.bzg, null
  br i1 %.not.i204.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i, label %bb.jv

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i: ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bxe, i64 72
  %i.bzi = load ptr, ptr %i.bzh, align 8, !tbaa !43
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzi, i64 56
  %i.bzk = load ptr, ptr %i.bzj, align 8, !tbaa !220
  store ptr %i.bzk, ptr %2, align 8, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.apt, i8 0, i64 32, i1 false)
  %i.bzl = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i

bb.jv:                                            ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i.i
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzg, i64 8
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !199
  %i.bzo = load ptr, ptr %i.bzn, align 8, !tbaa !191
  %i.bzp = call fastcc noundef ptr @_ZL15getLiveOutValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_(ptr noundef %i.bzo, ptr noundef nonnull readonly align 8 dereferenceable(20) %7, ptr readonly %.val97.i, i32 %.val98.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %9)
  br label %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i

_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i: ; preds = %bb.jv, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i, %bb.jr
  %.1.i.i = phi ptr [ %spec.select.i202.i, %bb.jr ], [ %i.bzp, %bb.jv ], [ %i.bzl, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i ]
  %i.bzq = load ptr, ptr %.087399.i, align 8, !tbaa !264
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.bzq, i64 16
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bzr, ptr noundef %.1.i.i) #10
  %i.bzs = load ptr, ptr %.087399.i, align 8, !tbaa !264
  %i.bzt = load i32, ptr %i.apr, align 8, !tbaa !22 ; 2 uses
  %i.bzu = load i32, ptr %i.aps, align 4, !tbaa !23
  %.not.i.i205.i = icmp ult i32 %i.bzt, %i.bzu
  br i1 %.not.i.i205.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125, label %bb.jw, !prof !25

bb.jw:                                            ; preds = %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull %i.apq, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i206.i = load i32, ptr %i.apr, align 8, !tbaa !22
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125: ; preds = %bb.jw, %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i
  %i.bzv = phi i32 [ %.pre.i.i206.i, %bb.jw ], [ %i.bzt, %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i ]
  %i.bzw = load ptr, ptr %13, align 8, !tbaa !21
  %i.bzx = zext i32 %i.bzv to i64
  %i.bzy = getelementptr inbounds nuw [8 x i8], ptr %i.bzw, i64 %i.bzx
  %i.bzz = ptrtoint ptr %i.bzs to i64
  store i64 %i.bzz, ptr %i.bzy, align 1
  %i.caa = load i32, ptr %i.apr, align 8, !tbaa !22
  %i.cab = add i32 %i.caa, 1                      ; 2 uses
  store i32 %i.cab, ptr %i.apr, align 8, !tbaa !22
  %i.cac = getelementptr inbounds nuw i8, ptr %.087399.i, i64 8 ; 2 uses
  %.not90.i = icmp eq ptr %i.cac, %i.brl
  br i1 %.not90.i, label %._crit_edge402.i, label %.lr.ph401.i

._crit_edge406.i:                                 ; preds = %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i
  %i.cad = phi i32 [ %i.bwr, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i ], [ %i.cbg, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i ] ; 2 uses
  %i.cae = load ptr, ptr %13, align 8, !tbaa !21  ; 3 uses
  %i.caf = zext i32 %i.cad to i64
  %.idx.i207.i = shl nuw nsw i64 %i.caf, 3
  %i.cag = getelementptr inbounds nuw i8, ptr %i.cae, i64 %.idx.i207.i
  %.not8.i.i140 = icmp eq i32 %i.cad, 0
  br i1 %.not8.i.i140, label %._crit_edge.i.i144, label %.lr.ph.i.i141

._crit_edge.loopexit.i.i143:                      ; preds = %.lr.ph.i.i141
  %.pre.i209.i = load ptr, ptr %13, align 8, !tbaa !21
  br label %._crit_edge.i.i144

._crit_edge.i.i144:                               ; preds = %._crit_edge.loopexit.i.i143, %._crit_edge406.i
  %i.cah = phi ptr [ %.pre.i209.i, %._crit_edge.loopexit.i.i143 ], [ %i.cae, %._crit_edge406.i ] ; 2 uses
  %i.cai = icmp eq ptr %i.cah, %i.apq
  br i1 %i.cai, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i, label %bb.jx

bb.jx:                                            ; preds = %._crit_edge.i.i144
  call void @free(ptr noundef %i.cah) #10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i

.lr.ph.i.i141:                                    ; preds = %._crit_edge406.i, %.lr.ph.i.i141
  %.09.i.i142 = phi ptr [ %i.cak, %.lr.ph.i.i141 ], [ %i.cae, %._crit_edge406.i ] ; 2 uses
  %i.caj = load ptr, ptr %.09.i.i142, align 8, !tbaa !62
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.caj) #10
  %i.cak = getelementptr inbounds nuw i8, ptr %.09.i.i142, i64 8 ; 2 uses
  %.not.i208.i = icmp eq ptr %i.cak, %i.cag
  br i1 %.not.i208.i, label %._crit_edge.loopexit.i.i143, label %.lr.ph.i.i141

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i: ; preds = %bb.jx, %._crit_edge.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.cal = load ptr, ptr %10, align 8, !tbaa !21  ; 2 uses
  %i.cam = icmp eq ptr %i.cal, %i.apc
  br i1 %i.cam, label %_ZN4llvh11SmallVectorIPN6hermes13LoadStackInstELj16EED2Ev.exit.i, label %bb.jy

bb.jy:                                            ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i
  call void @free(ptr noundef %i.cal) #10
  br label %_ZN4llvh11SmallVectorIPN6hermes13LoadStackInstELj16EED2Ev.exit.i

_ZN4llvh11SmallVectorIPN6hermes13LoadStackInstELj16EED2Ev.exit.i: ; preds = %bb.jy, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.can = load ptr, ptr %9, align 8, !tbaa !247
  call void @_ZdlPv(ptr noundef %i.can) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.cao = load ptr, ptr %7, align 8, !tbaa !247
  call void @_ZdlPv(ptr noundef %i.cao) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.cap = load ptr, ptr %6, align 8, !tbaa !21   ; 2 uses
  %i.caq = icmp eq ptr %i.cap, %i.aos
  br i1 %i.caq, label %_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj32EED2Ev.exit.i, label %bb.jz

bb.jz:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes13LoadStackInstELj16EED2Ev.exit.i
  call void @free(ptr noundef %i.cap) #10
  br label %_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj32EED2Ev.exit.i

_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj32EED2Ev.exit.i: ; preds = %bb.jz, %_ZN4llvh11SmallVectorIPN6hermes13LoadStackInstELj16EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.car = load ptr, ptr %i.aoo, align 8, !tbaa !179 ; 2 uses
  %i.cas = load ptr, ptr %5, align 8, !tbaa !177
  %i.cat = icmp eq ptr %i.car, %i.cas
  br i1 %i.cat, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit210.i, label %bb.ka

bb.ka:                                            ; preds = %_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.car) #10
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit210.i

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit210.i:      ; preds = %bb.ka, %_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj32EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.cau = load ptr, ptr %4, align 8, !tbaa !21   ; 2 uses
  %i.cav = icmp eq ptr %i.cau, %i.aof
  br i1 %i.cav, label %_ZL22promoteAllocStackToSSAPN6hermes14AllocStackInstERNS_13DominanceInfoERN4llvh8DenseMapIPNS4_15DomTreeNodeBaseINS_10BasicBlockEEEjNS4_12DenseMapInfoIS9_EENS4_6detail12DenseMapPairIS9_jEEEE.exit, label %bb.kb

bb.kb:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit210.i
  call void @free(ptr noundef %i.cau) #10
  br label %_ZL22promoteAllocStackToSSAPN6hermes14AllocStackInstERNS_13DominanceInfoERN4llvh8DenseMapIPNS4_15DomTreeNodeBaseINS_10BasicBlockEEEjNS4_12DenseMapInfoIS9_EENS4_6detail12DenseMapPairIS9_jEEEE.exit

.lr.ph405.i:                                      ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i
  %i.caw = phi i32 [ %i.cbg, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i ], [ %i.bwr, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i ] ; 2 uses
  %.sroa.0256.0404.i = phi ptr [ %.sroa.0256.2.i, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i ], [ %.pn14.i.i133, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i ] ; 2 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %.sroa.0256.0404.i, i64 8
  %i.cay = load ptr, ptr %i.cax, align 8, !tbaa !267
  %i.caz = load i32, ptr %i.aps, align 4, !tbaa !23
  %.not.i.i211.i = icmp ult i32 %i.caw, %i.caz
  br i1 %.not.i.i211.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit213.i, label %bb.kc, !prof !25

bb.kc:                                            ; preds = %.lr.ph405.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull %i.apq, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i212.i = load i32, ptr %i.apr, align 8, !tbaa !22
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit213.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit213.i: ; preds = %bb.kc, %.lr.ph405.i
  %i.cba = phi i32 [ %.pre.i.i212.i, %bb.kc ], [ %i.caw, %.lr.ph405.i ]
  %i.cbb = load ptr, ptr %13, align 8, !tbaa !21
  %i.cbc = zext i32 %i.cba to i64
  %i.cbd = getelementptr inbounds nuw [8 x i8], ptr %i.cbb, i64 %i.cbc
  %i.cbe = ptrtoint ptr %i.cay to i64
  store i64 %i.cbe, ptr %i.cbd, align 1
  %i.cbf = load i32, ptr %i.apr, align 8, !tbaa !22
  %i.cbg = add i32 %i.cbf, 1                      ; 3 uses
  store i32 %i.cbg, ptr %i.apr, align 8, !tbaa !22
  %i.cbh = getelementptr inbounds nuw i8, ptr %.sroa.0256.0404.i, i64 16 ; 3 uses
  %.not5.i3.i.i135 = icmp eq ptr %i.cbh, %.pn12.i.i134
  br i1 %.not5.i3.i.i135, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, label %.lr.ph.i4.i.i136

.lr.ph.i4.i.i136:                                 ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit213.i, %.critedge2.i6.i.i138
  %.sroa.0256.1.i = phi ptr [ %i.cbj, %.critedge2.i6.i.i138 ], [ %i.cbh, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit213.i ] ; 3 uses
  %i.cbi = load ptr, ptr %.sroa.0256.1.i, align 8, !tbaa !172
  %magicptr.i5.i.i137 = ptrtoint ptr %i.cbi to i64
  switch i64 %magicptr.i5.i.i137, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i [
    i64 -8, label %.critedge2.i6.i.i138
    i64 -16, label %.critedge2.i6.i.i138
  ]

.critedge2.i6.i.i138:                             ; preds = %.lr.ph.i4.i.i136, %.lr.ph.i4.i.i136
  %i.cbj = getelementptr inbounds nuw i8, ptr %.sroa.0256.1.i, i64 16 ; 3 uses
  %.not.i7.i.i139 = icmp eq ptr %i.cbj, %.pn12.i.i134
  br i1 %.not.i7.i.i139, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, label %.lr.ph.i4.i.i136, !llvm.loop !263

_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i: ; preds = %.critedge2.i6.i.i138, %.lr.ph.i4.i.i136, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit213.i
  %.sroa.0256.2.i = phi ptr [ %i.cbh, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit213.i ], [ %.sroa.0256.1.i, %.lr.ph.i4.i.i136 ], [ %i.cbj, %.critedge2.i6.i.i138 ] ; 2 uses
  %.not339.i = icmp eq ptr %.sroa.0256.2.i, %i.bxb
  br i1 %.not339.i, label %._crit_edge406.i, label %.lr.ph405.i

_ZL22promoteAllocStackToSSAPN6hermes14AllocStackInstERNS_13DominanceInfoERN4llvh8DenseMapIPNS4_15DomTreeNodeBaseINS_10BasicBlockEEEjNS4_12DenseMapInfoIS9_EENS4_6detail12DenseMapPairIS9_jEEEE.exit: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit210.i, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.cbk = load ptr, ptr %3, align 8, !tbaa !205
  call void @_ZdlPv(ptr noundef %i.cbk) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.cbl = getelementptr inbounds nuw i8, ptr %.024642, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cbl, %i.aoe
  br i1 %.not, label %._crit_edge645, label %bb.fg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes13DominanceInfoC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL23collectStackAllocationsPN6hermes8FunctionEPNS_13DominanceInfoERN4llvh15SmallVectorImplIPNS_14AllocStackInstEEES9_(ptr noundef readonly captures(address) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %5 = alloca %"struct.std::pair.66", align 8     ; 3 uses
  %6 = alloca %"class.llvh::DenseSet", align 8    ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 20, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.sroa.032.041 = load ptr, ptr %i.b, align 8, !tbaa !40 ; 3 uses
  %.not3642 = icmp eq ptr %.sroa.032.041, %i.c
  br i1 %.not3642, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %bb.c
  %.sroa.025.048.pre = load ptr, ptr %i.b, align 8, !tbaa !40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.sroa.025.048 = phi ptr [ %.sroa.025.048.pre, %.preheader.loopexit ], [ %.sroa.032.041, %bb.a ] ; 2 uses
  %.not3749 = icmp eq ptr %.sroa.025.048, %i.c
  br i1 %.not3749, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.032.043 = phi ptr [ %.sroa.032.0, %bb.c ], [ %.sroa.032.041, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.043, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.032.043) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !64
  %i.q = icmp eq i8 %i.p, 85
  br i1 %i.q, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !64
  %i.t = icmp eq i8 %i.s, 56
  br i1 %i.t, label %.critedge, label %bb.c

.critedge:                                        ; preds = %.lr.ph, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %.sroa.032.043, ptr %i.a, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10, !noalias !269
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !269
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.66") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10, !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10, !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.043, i64 8
  %.sroa.032.0 = load ptr, ptr %i.u, align 8, !tbaa !40 ; 2 uses
  %.not36 = icmp eq ptr %.sroa.032.0, %i.c
  br i1 %.not36, label %.preheader.loopexit, label %.lr.ph

._crit_edge52:                                    ; preds = %._crit_edge, %.preheader
  %i.v = load ptr, ptr %6, align 8, !tbaa !205
  call void @_ZdlPv(ptr noundef %i.v) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret void

bb.d:                                             ; preds = %.lr.ph51, %._crit_edge
  %.sroa.025.050 = phi ptr [ %.sroa.025.048, %.lr.ph51 ], [ %.sroa.025.0, %._crit_edge ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.025.050, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.025.050, i64 56 ; 2 uses
  %.sroa.021.044 = load ptr, ptr %i.w, align 8, !tbaa !40 ; 2 uses
  %.not3845 = icmp eq ptr %.sroa.021.044, %i.x
  br i1 %.not3845, label %._crit_edge, label %.lr.ph47

._crit_edge:                                      ; preds = %bb.m, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.050, i64 8
  %.sroa.025.0 = load ptr, ptr %i.y, align 8, !tbaa !40 ; 2 uses
  %.not37 = icmp eq ptr %.sroa.025.0, %i.c
  br i1 %.not37, label %._crit_edge52, label %bb.d

.lr.ph47:                                         ; preds = %bb.d, %bb.m
  %.sroa.021.046 = phi ptr [ %.sroa.021.0, %bb.m ], [ %.sroa.021.044, %bb.d ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.046, i64 16 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !64
  %i.ab = icmp ne i8 %i.aa, 52
  %.not39 = icmp eq ptr %.sroa.021.046, null
  %.not = or i1 %.not39, %i.ab
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.lr.ph47
  %i.ac = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #10 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx.i = shl nuw nsw i64 %i.ag, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i
  %.not38.not.i = icmp eq i32 %i.af, 0
  br i1 %.not38.not.i, label %_ZL21isUnsafeStackLocationPN6hermes14AllocStackInstEPNS_13DominanceInfoERN4llvh8DenseSetIPNS_10BasicBlockENS4_12DenseMapInfoIS7_EEEE.exit, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %bb.e, %._crit_edge.i
  %.01839.i = phi ptr [ %i.bc, %._crit_edge.i ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ai = load ptr, ptr %.01839.i, align 8, !tbaa !62 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !64
  switch i8 %i.ak, label %.loopexit [
    i8 22, label %bb.f
    i8 50, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph42.i, %.lr.ph42.i
  %i.al = load i32, ptr %i.d, align 8, !tbaa !215
  %i.am = icmp eq i32 %i.al, 0
  %i.an = load ptr, ptr %6, align 8, !tbaa !205   ; 5 uses
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !213 ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i

bb.h:                                             ; preds = %bb.f
  %.idx.i.i.i = shl nuw nsw i64 %i.ap, 3
  %i.ar = getelementptr i8, ptr %i.an, i64 %.idx.i.i.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not5.i5.i10.i2.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i

.lr.ph.i6.i12.i3.i.i.i:                           ; preds = %bb.h, %.critedge2.i8.i14.i6.i.i.i
  %.sroa.0.3.i4.i.i.i = phi ptr [ %i.at, %.critedge2.i8.i14.i6.i.i.i ], [ %i.an, %bb.h ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.3.i4.i.i.i, align 8, !tbaa !172
  %magicptr.i7.i13.i5.i.i.i = ptrtoint ptr %i.as to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i:                       ; preds = %.lr.ph.i6.i12.i3.i.i.i, %.lr.ph.i6.i12.i3.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i = icmp eq ptr %i.at, %i.ar
  br i1 %.not.i9.i15.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i, !llvm.loop !246

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i.i, %.lr.ph.i6.i12.i3.i.i.i, %bb.h, %bb.g
  %.pn14.i.i.i = phi ptr [ %i.aq, %bb.g ], [ %i.an, %bb.h ], [ %.sroa.0.3.i4.i.i.i, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.ar, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %.pn12.i.i.i = phi ptr [ %i.aq, %bb.g ], [ %i.ar, %bb.h ], [ %i.ar, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.ar, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %.not3236.i = icmp eq ptr %.pn14.i.i.i, %i.au
  br i1 %.not3236.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, %.lr.ph.i
  %.sroa.023.037.i = phi ptr [ %.pn14.i.i.i, %.lr.ph.i ], [ %.sroa.023.2.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.023.037.i, align 8, !tbaa !172
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !113
  %i.ay = call noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.aw, ptr noundef %i.ax) #10
  br i1 %i.ay, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.023.037.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i = icmp eq ptr %i.az, %.pn12.i.i.i
  br i1 %.not5.i3.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.j, %.critedge2.i6.i.i.i
  %.sroa.023.1.i = phi ptr [ %i.bb, %.critedge2.i6.i.i.i ], [ %i.az, %bb.j ] ; 3 uses
  %i.ba = load ptr, ptr %.sroa.023.1.i, align 8, !tbaa !172
  %magicptr.i5.i.i.i = ptrtoint ptr %i.ba to i64
  switch i64 %magicptr.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i [
    i64 -8, label %.critedge2.i6.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i
  ]

.critedge2.i6.i.i.i:                              ; preds = %.lr.ph.i4.i.i.i, %.lr.ph.i4.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.023.1.i, i64 8 ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %i.bb, %.pn12.i.i.i
  br i1 %.not.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i, !llvm.loop !246

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i: ; preds = %.critedge2.i6.i.i.i, %.lr.ph.i4.i.i.i, %bb.j
  %.sroa.023.2.i = phi ptr [ %i.az, %bb.j ], [ %.sroa.023.1.i, %.lr.ph.i4.i.i.i ], [ %i.bb, %.critedge2.i6.i.i.i ] ; 2 uses
  %.not32.i = icmp eq ptr %.sroa.023.2.i, %i.au
  br i1 %.not32.i, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.01839.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bc, %i.ah
  br i1 %.not.not.i, label %_ZL21isUnsafeStackLocationPN6hermes14AllocStackInstEPNS_13DominanceInfoERN4llvh8DenseSetIPNS_10BasicBlockENS4_12DenseMapInfoIS7_EEEE.exit, label %.lr.ph42.i

.loopexit:                                        ; preds = %.lr.ph42.i, %bb.i
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.be = load i32, ptr %i.g, align 4, !tbaa !23
  %.not.i = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes14AllocStackInstELb1EE9push_backERKS3_.exit, label %bb.k, !prof !25

bb.k:                                             ; preds = %.loopexit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 8) #10
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes14AllocStackInstELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes14AllocStackInstELb1EE9push_backERKS3_.exit: ; preds = %.loopexit, %bb.k
  %i.bf = phi i32 [ %.pre.i, %bb.k ], [ %i.bd, %.loopexit ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !21
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = ptrtoint ptr %.sroa.021.046 to i64
  store i64 %i.bj, ptr %i.bi, align 1
  %i.bk = load i32, ptr %i.f, align 8, !tbaa !22
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.f, align 8, !tbaa !22
  br label %bb.m

_ZL21isUnsafeStackLocationPN6hermes14AllocStackInstEPNS_13DominanceInfoERN4llvh8DenseSetIPNS_10BasicBlockENS4_12DenseMapInfoIS7_EEEE.exit: ; preds = %._crit_edge.i, %bb.e
  %i.bm = load i32, ptr %i.i, align 8, !tbaa !22  ; 2 uses
  %i.bn = load i32, ptr %i.j, align 4, !tbaa !23
  %.not.i17 = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i17, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes14AllocStackInstELb1EE9push_backERKS3_.exit19, label %bb.l, !prof !25

bb.l:                                             ; preds = %_ZL21isUnsafeStackLocationPN6hermes14AllocStackInstEPNS_13DominanceInfoERN4llvh8DenseSetIPNS_10BasicBlockENS4_12DenseMapInfoIS7_EEEE.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 8) #10
  %.pre.i18 = load i32, ptr %i.i, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes14AllocStackInstELb1EE9push_backERKS3_.exit19

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes14AllocStackInstELb1EE9push_backERKS3_.exit19: ; preds = %_ZL21isUnsafeStackLocationPN6hermes14AllocStackInstEPNS_13DominanceInfoERN4llvh8DenseSetIPNS_10BasicBlockENS4_12DenseMapInfoIS7_EEEE.exit, %bb.l
  %i.bo = phi i32 [ %.pre.i18, %bb.l ], [ %i.bm, %_ZL21isUnsafeStackLocationPN6hermes14AllocStackInstEPNS_13DominanceInfoERN4llvh8DenseSetIPNS_10BasicBlockENS4_12DenseMapInfoIS7_EEEE.exit ]
  %i.bp = load ptr, ptr %2, align 8, !tbaa !21
  %i.bq = zext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = ptrtoint ptr %.sroa.021.046 to i64
  store i64 %i.bs, ptr %i.br, align 1
  %i.bt = load i32, ptr %i.i, align 8, !tbaa !22
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.i, align 8, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph47, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes14AllocStackInstELb1EE9push_backERKS3_.exit19, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes14AllocStackInstELb1EE9push_backERKS3_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.021.046, i64 8
  %.sroa.021.0 = load ptr, ptr %i.bv, align 8, !tbaa !40 ; 2 uses
  %.not38 = icmp eq ptr %.sroa.021.0, %i.x
  br i1 %.not38, label %._crit_edge, label %.lr.ph47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13createMem2RegEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes7Mem2RegESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13, !noalias !272 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !275, !noalias !272
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !280, !noalias !272
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !281, !noalias !272
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes7Mem2RegE, i64 16), ptr %i.a, align 8, !tbaa !282, !noalias !272
  store ptr %i.a, ptr %0, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes7Mem2RegD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !35

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !287
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !25

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !39
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !25

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !38
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !287
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !38
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !39
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.av, ptr %i.an, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !35

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !25

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03245.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.03245.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.03245.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.03245.i
  %i.v = add i32 %.02746.i, 1
  %i.w = add i32 %.02746.i, %.02947.i
  %.029.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.029.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %.lr.ph.i, !prof !36, !llvm.loop !37

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !287
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit
  store ptr %i.t, ptr %0, align 8, !tbaa !205
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !215
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !216
  %i.w = load i32, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 3               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check29 = icmp ult i64 %i.z, 24
  br i1 %min.iters.check29, label %.lr.ph.i.preheader40, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph.i.preheader
  %n.vec32 = and i64 %i.ab, 4611686018427387900   ; 3 uses
  %i.ac = shl i64 %n.vec32, 3
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next36, %vector.body33 ] ; 2 uses
  %i.ae = shl i64 %index34, 3
  %next.gep35 = getelementptr i8, ptr %i.t, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %next.gep35, align 8, !tbaa !172
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.af, align 8, !tbaa !172
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next36, %n.vec32
  br i1 %i.ag, label %middle.block37, label %vector.body33, !llvm.loop !296

middle.block37:                                   ; preds = %vector.body33
  %cmp.n38 = icmp eq i64 %i.ab, %n.vec32
  br i1 %cmp.n38, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader40

.lr.ph.i.preheader40:                             ; preds = %.lr.ph.i.preheader, %middle.block37
  %.07.i.ph = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ad, %middle.block37 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader40, %.lr.ph.i
  %.07.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader40 ] ; 2 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !172
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !299

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE15allocateBucketsEj.exit
  %i.ai = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !215
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !216
  %i.am = load i32, ptr %i.a, align 8, !tbaa !213 ; 3 uses
  %i.an = zext i32 %i.am to i64
  %.idx.i.i = shl nuw nsw i64 %i.an, 3            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp ne i32 %i.am, 0               ; 2 uses
  br i1 %.not6.i.i, label %.lr.ph.i.i.preheader, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.ap = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.t, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %next.gep, align 8, !tbaa !172
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.av, align 8, !tbaa !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !300

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader44

.lr.ph.i.i.preheader44:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.07.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader44, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader44 ] ; 2 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !172
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ao
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !301

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i
  %i.ay = add i32 %i.am, -1                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i6
  %i.az = phi i32 [ 0, %.lr.ph.i6 ], [ %i.bw, %bb.g ] ; 3 uses
  %.020.i = phi ptr [ %i.c, %.lr.ph.i6 ], [ %i.bx, %bb.g ] ; 2 uses
  %i.ba = load ptr, ptr %.020.i, align 8, !tbaa !172 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.ba to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.d [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %.not6.i.i)
  %i.bb = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bc = lshr i32 %i.bb, 4
  %i.bd = lshr i32 %i.bb, 9
  %i.be = xor i32 %i.bc, %i.bd
  %.02944.i.i.i = and i32 %i.be, %i.ay            ; 2 uses
  %i.bf = zext nneg i32 %.02944.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bf ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !172 ; 2 uses
  %i.bi = icmp eq ptr %i.ba, %i.bh
  br i1 %i.bi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !35

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.f
  %i.bj = phi ptr [ %i.bt, %bb.f ], [ %i.bh, %bb.d ] ; 2 uses
  %i.bk = phi ptr [ %i.bs, %bb.f ], [ %i.bg, %bb.d ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.f ], [ %.02944.i.i.i, %bb.d ]
  %.02746.i.i.i = phi i32 [ %i.bp, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.bl = icmp eq ptr %i.bj, inttoptr (i64 -8 to ptr)
  br i1 %i.bl, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bm = select i1 %.not.i.i.i, ptr %i.bk, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bn = icmp eq ptr %i.bj, inttoptr (i64 -16 to ptr)
  %i.bo = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bn, i1 %i.bo, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bk, ptr %.03245.i.i.i
  %i.bp = add i32 %.02746.i.i.i, 1
  %i.bq = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bq, %i.ay              ; 2 uses
  %i.br = zext i32 %.029.i.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.br ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !172 ; 2 uses
  %i.bu = icmp eq ptr %i.ba, %i.bt
  br i1 %i.bu, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !36, !llvm.loop !214

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %i.bm, %bb.e ], [ %i.bg, %bb.d ], [ %i.bs, %bb.f ]
  store ptr %i.ba, ptr %.sink.i.i.i, align 8, !tbaa !172
  %i.bv = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.bv, ptr %i.ak, align 8, !tbaa !215
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, %bb.c, %bb.c
  %i.bw = phi i32 [ %i.az, %bb.c ], [ %i.az, %bb.c ], [ %i.bv, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.bx, %i.aj
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %bb.c, !llvm.loop !302

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit: ; preds = %bb.g, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i, %middle.block37, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E18moveFromOldBucketsEPSA_SD_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL24collectCapturedVariablesRN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEES7_PNS1_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef readonly captures(address) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %.sroa.083.0115 = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.not93116 = icmp eq ptr %.sroa.083.0115, %i.b
  br i1 %.not93116, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  br label %bb.b

._crit_edge120:                                   ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph119, %._crit_edge
  %.sroa.083.0117 = phi ptr [ %.sroa.083.0115, %.lr.ph119 ], [ %.sroa.083.0, %._crit_edge ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.083.0117, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.083.0117, i64 56 ; 2 uses
  %.sroa.079.0112 = load ptr, ptr %i.i, align 8, !tbaa !40 ; 2 uses
  %.not94113 = icmp eq ptr %.sroa.079.0112, %i.j
  br i1 %.not94113, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit57, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.083.0117, i64 8
  %.sroa.083.0 = load ptr, ptr %i.k, align 8, !tbaa !40 ; 2 uses
  %.not93 = icmp eq ptr %.sroa.083.0, %i.b
  br i1 %.not93, label %._crit_edge120, label %bb.b, !llvm.loop !303

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit57
  %.sroa.079.0114 = phi ptr [ %.sroa.079.0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit57 ], [ %.sroa.079.0112, %bb.b ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.079.0114, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !64    ; 2 uses
  %i.n = add i8 %i.m, -75
  %i.o = icmp ult i8 %i.n, -6
  %.not95 = icmp eq ptr %.sroa.079.0114, null     ; 3 uses
  %.not = or i1 %.not95, %i.o
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.p = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.079.0114, i32 noundef 0) #10 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -16
  %i.s = select i1 %i.q, ptr null, ptr %i.r
  tail call fastcc void @_ZL24collectCapturedVariablesRN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEES7_PNS1_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.s)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit57

.critedge:                                        ; preds = %.lr.ph
  %i.t = icmp ne i8 %i.m, 49
  %.not26 = or i1 %.not95, %i.t
  br i1 %.not26, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.u = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.079.0114, i32 noundef 0) #10 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  %.not27 = icmp eq ptr %i.y, %2
  br i1 %.not27, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %0, align 8, !tbaa !136, !noalias !304 ; 2 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !309, !noalias !304 ; 7 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = lshr i32 %i.ad, 9
  %i.ag = xor i32 %i.ae, %i.af
  %i.ah = add i32 %i.aa, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.ah, %i.ag            ; 2 uses
  %i.ai = zext nneg i32 %.02944.i.i.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80, !noalias !304 ; 2 uses
  %i.al = icmp eq ptr %i.u, %i.ak
  br i1 %i.al, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit, label %.lr.ph.i.i.i, !prof !35

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.h
  %i.am = phi ptr [ %i.aw, %bb.h ], [ %i.ak, %bb.f ] ; 2 uses
  %i.an = phi ptr [ %i.av, %bb.h ], [ %i.aj, %bb.f ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.h ], [ %.02944.i.i.i, %bb.f ]
  %.02746.i.i.i = phi i32 [ %i.as, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.h ], [ null, %bb.f ] ; 4 uses
  %i.ao = icmp eq ptr %i.am, inttoptr (i64 -8 to ptr)
  br i1 %i.ao, label %bb.g, label %bb.h, !prof !25

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.ap = select i1 %.not.i.i.i, ptr %i.an, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = icmp eq ptr %i.am, inttoptr (i64 -16 to ptr)
  %i.ar = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.aq, i1 %i.ar, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.an, ptr %.03245.i.i.i
  %i.as = add i32 %.02746.i.i.i, 1
  %i.at = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.at, %i.ah              ; 2 uses
  %i.au = zext i32 %.029.i.i.i to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !80, !noalias !304 ; 2 uses
  %i.ax = icmp eq ptr %i.u, %i.aw
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit, label %.lr.ph.i.i.i, !prof !36, !llvm.loop !310

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.g, %bb.e
  %.sink.i.i.i = phi ptr [ %i.ap, %bb.g ], [ null, %bb.e ]
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !311, !noalias !304 ; 3 uses
  %i.az = shl i32 %i.ay, 2
  %i.ba = add i32 %i.az, 4
  %i.bb = mul i32 %i.aa, 3
  %.not.i.i4.i = icmp ult i32 %i.ba, %i.bb
  br i1 %.not.i.i4.i, label %bb.j, label %bb.i, !prof !25

bb.i:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i
  %i.bc = shl i32 %i.aa, 1
  br label %.sink.split.i.i.i

bb.j:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !312, !noalias !304
  %.neg.i.i.i = xor i32 %i.ay, -1
  %.neg12.i.i.i = add i32 %i.aa, %.neg.i.i.i
  %i.be = sub i32 %.neg12.i.i.i, %i.bd
  %i.bf = lshr i32 %i.aa, 3
  %.not10.i.i.i = icmp ugt i32 %i.be, %i.bf
  br i1 %.not10.i.i.i, label %bb.n, label %.sink.split.i.i.i, !prof !25

.sink.split.i.i.i:                                ; preds = %bb.j, %bb.i
  %.sink.i.i5.i = phi i32 [ %i.bc, %bb.i ], [ %i.aa, %bb.j ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.sink.i.i5.i), !noalias !304
  %i.bg = load ptr, ptr %0, align 8, !tbaa !136, !noalias !304 ; 2 uses
  %i.bh = load i32, ptr %i.c, align 8, !tbaa !309, !noalias !304 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.k

bb.k:                                             ; preds = %.sink.split.i.i.i
  %i.bj = ptrtoint ptr %i.u to i64
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = lshr i32 %i.bk, 9
  %i.bn = xor i32 %i.bl, %i.bm
  %i.bo = add i32 %i.bh, -1                       ; 2 uses
  %.02944.i.i = and i32 %i.bo, %i.bn              ; 2 uses
  %i.bp = zext nneg i32 %.02944.i.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !80, !noalias !304 ; 2 uses
  %i.bs = icmp eq ptr %i.u, %i.br
  br i1 %i.bs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !35

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.m
  %i.bt = phi ptr [ %i.cd, %bb.m ], [ %i.br, %bb.k ] ; 2 uses
  %i.bu = phi ptr [ %i.cc, %bb.m ], [ %i.bq, %bb.k ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.m ], [ %.02944.i.i, %bb.k ]
  %.02746.i.i = phi i32 [ %i.bz, %bb.m ], [ 1, %bb.k ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.m ], [ null, %bb.k ] ; 4 uses
  %i.bv = icmp eq ptr %i.bt, inttoptr (i64 -8 to ptr)
  br i1 %i.bv, label %bb.l, label %bb.m, !prof !25

bb.l:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.bw = select i1 %.not.i.i, ptr %i.bu, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bx = icmp eq ptr %i.bt, inttoptr (i64 -16 to ptr)
  %i.by = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.bx, i1 %i.by, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.bu, ptr %.03245.i.i
  %i.bz = add i32 %.02746.i.i, 1
  %i.ca = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.ca, %i.bo                ; 2 uses
  %i.cb = zext i32 %.029.i.i to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cb ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !80, !noalias !304 ; 2 uses
  %i.ce = icmp eq ptr %i.u, %i.cd
  br i1 %i.ce, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %.lr.ph.i.i, !prof !36, !llvm.loop !310

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.m, %.sink.split.i.i.i, %bb.k, %bb.l
  %.sink.i.i = phi ptr [ %i.bw, %bb.l ], [ null, %.sink.split.i.i.i ], [ %i.bq, %bb.k ], [ %i.cc, %bb.m ]
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !311, !noalias !304
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, %bb.j
  %i.cf = phi ptr [ %.sink.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit ], [ %.sink.i.i.i, %bb.j ] ; 2 uses
  %i.cg = phi i32 [ %.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit ], [ %i.ay, %bb.j ]
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.d, align 8, !tbaa !311, !noalias !304
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !80, !noalias !304
  %i.cj = icmp eq ptr %i.ci, inttoptr (i64 -8 to ptr)
  br i1 %i.cj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_3
begin_hunk_4_@_ZN4llvh8DenseMapIPN6hermes14AllocStackInstEPNS1_14StoreStackInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj:_ZN4llvh8DenseMapIPN6hermes14AllocStackInstEPNS1_14StoreStackInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE15allocateBucketsEj.exit
  store i32 0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !162
  %i.w = load i32, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !336

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !337

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes14AllocStackInstEPNS1_14StoreStackInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !161
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !162
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !154 ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp ne i32 %i.aq, 0               ; 2 uses
  br i1 %.not6.i.i, label %.lr.ph.i.i.preheader, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !338

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !337

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i
  %i.bg = add i32 %i.aq, -1                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i6
  %i.bh = phi i32 [ 0, %.lr.ph.i6 ], [ %i.ch, %bb.g ] ; 3 uses
  %.020.i = phi ptr [ %i.c, %.lr.ph.i6 ], [ %i.ci, %bb.g ] ; 3 uses
  %i.bi = load ptr, ptr %.020.i, align 8, !tbaa !69 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bi to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.d [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %.not6.i.i)
  %i.bj = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bk = lshr i32 %i.bj, 4
  %i.bl = lshr i32 %i.bj, 9
  %i.bm = xor i32 %i.bk, %i.bl
  %.02944.i.i.i = and i32 %i.bm, %i.bg            ; 2 uses
  %i.bn = zext nneg i32 %.02944.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bn ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !69 ; 2 uses
  %i.bq = icmp eq ptr %i.bi, %i.bp
  br i1 %i.bq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !35

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.f
  %i.br = phi ptr [ %i.cb, %bb.f ], [ %i.bp, %bb.d ] ; 2 uses
  %i.bs = phi ptr [ %i.ca, %bb.f ], [ %i.bo, %bb.d ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.f ], [ %.02944.i.i.i, %bb.d ]
  %.02746.i.i.i = phi i32 [ %i.bx, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.bt = icmp eq ptr %i.br, inttoptr (i64 -8 to ptr)
  br i1 %i.bt, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bu = select i1 %.not.i.i.i, ptr %i.bs, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = icmp eq ptr %i.br, inttoptr (i64 -16 to ptr)
  %i.bw = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bv, i1 %i.bw, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bs, ptr %.03245.i.i.i
  %i.bx = add i32 %.02746.i.i.i, 1
  %i.by = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.by, %i.bg              ; 2 uses
  %i.bz = zext i32 %.029.i.i.i to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bz ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %i.cc = icmp eq ptr %i.bi, %i.cb
  br i1 %i.cc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !36, !llvm.loop !160

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %i.bu, %bb.e ], [ %i.bo, %bb.d ], [ %i.ca, %bb.f ] ; 2 uses
  store ptr %i.bi, ptr %.sink.i.i.i, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !159
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !159
  %i.cg = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.cg, ptr %i.ao, align 8, !tbaa !161
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, %bb.c, %bb.c
  %i.ch = phi i32 [ %i.bh, %bb.c ], [ %i.bh, %bb.c ], [ %i.cg, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ci, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_.exit, label %bb.c, !llvm.loop !339

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_.exit: ; preds = %bb.g, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_14StoreStackInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E18moveFromOldBucketsEPSB_SE_.exit
  ret void
}

declare void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder13createPhiInstEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL15getLiveOutValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1, ptr readonly captures(address) %.24.val, i32 %.40.val, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::IRBuilder", align 8 ; 5 uses
  %i.a = icmp eq i32 %.40.val, 0
  br i1 %i.a, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = lshr i32 %i.c, 4
  %i.e = lshr i32 %i.c, 9
  %i.f = xor i32 %i.d, %i.e
  %i.g = add i32 %.40.val, -1                     ; 2 uses
  %.02944.i.i.i = and i32 %i.g, %i.f              ; 2 uses
  %i.h = zext nneg i32 %.02944.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.24.val, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !172  ; 2 uses
  %i.k = icmp eq ptr %0, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !35

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.c ], [ %.02944.i.i.i, %bb.b ]
  %.02746.i.i.i = phi i32 [ %i.n, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.m = icmp eq ptr %i.l, inttoptr (i64 -8 to ptr)
  br i1 %i.m, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.c, !prof !25

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = add i32 %.02746.i.i.i, 1
  %i.o = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.o, %i.g                ; 2 uses
  %i.p = zext i32 %.029.i.i.i to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.24.val, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !172  ; 2 uses
  %i.s = icmp eq ptr %0, %i.r
  br i1 %i.s, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !36, !llvm.loop !183

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.t = zext i32 %.40.val to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.24.val, i64 %i.t
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i: ; preds = %bb.c, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, %bb.b
  %.sink.i.ph.pn.i.i = phi ptr [ %i.u, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i ], [ %i.i, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.v = zext i32 %.40.val to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.24.val, i64 %i.v
  %.not.i = icmp eq ptr %.sink.i.ph.pn.i.i, %i.w
  br i1 %.not.i, label %._crit_edge, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 4 uses
  %.not21 = icmp eq ptr %i.y, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit
  %i.z = load ptr, ptr %2, align 8, !tbaa !247    ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !250 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = add i32 %i.ab, -1                       ; 4 uses
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %1, align 8               ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %.fr39 = freeze i32 %i.ai                       ; 3 uses
  %i.aj = icmp eq i32 %.fr39, 0                   ; 2 uses
  %i.ak = add i32 %.fr39, -1                      ; 4 uses
  %i.al = zext i32 %.fr39 to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.al ; 2 uses
  br i1 %i.ac, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  br i1 %i.aj, label %._crit_edge, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us: ; preds = %.lr.ph.split.us.split, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us.thread
  %.01722.us = phi ptr [ %i.bg, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us.thread ], [ %i.y, %.lr.ph.split.us.split ] ; 2 uses
  %i.an = load ptr, ptr %.01722.us, align 8, !tbaa !191 ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = lshr i32 %i.ap, 4
  %i.ar = lshr i32 %i.ap, 9
  %i.as = xor i32 %i.aq, %i.ar
  %.02944.i.i.i23.us = and i32 %i.ak, %i.as       ; 2 uses
  %i.at = zext nneg i32 %.02944.i.i.i23.us to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !172 ; 2 uses
  %i.aw = icmp eq ptr %i.an, %i.av
  br i1 %i.aw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us, label %.lr.ph.i.i.i24.us, !prof !35

.lr.ph.i.i.i24.us:                                ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us, %bb.d
  %i.ax = phi ptr [ %i.bd, %bb.d ], [ %i.av, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us ]
  %.02947.i.i.i25.us = phi i32 [ %.029.i.i.i27.us, %bb.d ], [ %.02944.i.i.i23.us, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us ]
  %.02746.i.i.i26.us = phi i32 [ %i.az, %bb.d ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us ] ; 2 uses
  %i.ay = icmp eq ptr %i.ax, inttoptr (i64 -8 to ptr)
  br i1 %i.ay, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us.thread, label %bb.d, !prof !25

bb.d:                                             ; preds = %.lr.ph.i.i.i24.us
  %i.az = add i32 %.02746.i.i.i26.us, 1
  %i.ba = add i32 %.02746.i.i.i26.us, %.02947.i.i.i25.us
  %.029.i.i.i27.us = and i32 %i.ba, %i.ak         ; 2 uses
  %i.bb = zext i32 %.029.i.i.i27.us to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.bb ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !172 ; 2 uses
  %i.be = icmp eq ptr %i.an, %i.bd
  br i1 %i.be, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us, label %.lr.ph.i.i.i24.us, !prof !36, !llvm.loop !266

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us: ; preds = %bb.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us
  %.sink.i.i.ph.pn.i30.us = phi ptr [ %i.au, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us ], [ %i.bc, %bb.d ] ; 2 uses
  %.not17.us = icmp eq ptr %.sink.i.i.ph.pn.i30.us, %i.am
  br i1 %.not17.us, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us.thread, label %.split.us

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us.thread: ; preds = %.lr.ph.i.i.i24.us, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.us
  %i.bf = getelementptr inbounds nuw i8, ptr %.01722.us, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !199 ; 2 uses
  %.not.us = icmp eq ptr %i.bg, null
  br i1 %.not.us, label %._crit_edge, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.us, !llvm.loop !340

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.aj, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i34.us28.us
  %.01722.us24.us = phi ptr [ %i.ca, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i34.us28.us ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %i.bh = load ptr, ptr %.01722.us24.us, align 8, !tbaa !191 ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = lshr i32 %i.bj, 4
  %i.bl = lshr i32 %i.bj, 9
  %i.bm = xor i32 %i.bk, %i.bl
  %.02944.i.i.i18.us.us = and i32 %i.bm, %i.ad    ; 2 uses
  %i.bn = zext nneg i32 %.02944.i.i.i18.us.us to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.bn ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !172 ; 2 uses
  %i.bq = icmp eq ptr %i.bh, %i.bp
  br i1 %i.bq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.us25.us, label %.lr.ph.i.i.i19.us.us, !prof !35

.lr.ph.i.i.i19.us.us:                             ; preds = %.lr.ph.split.split.us.split.us, %bb.e
  %i.br = phi ptr [ %i.bx, %bb.e ], [ %i.bp, %.lr.ph.split.split.us.split.us ]
  %.02947.i.i.i20.us.us = phi i32 [ %.029.i.i.i22.us.us, %bb.e ], [ %.02944.i.i.i18.us.us, %.lr.ph.split.split.us.split.us ]
  %.02746.i.i.i21.us.us = phi i32 [ %i.bt, %bb.e ], [ 1, %.lr.ph.split.split.us.split.us ] ; 2 uses
  %i.bs = icmp eq ptr %i.br, inttoptr (i64 -8 to ptr)
  br i1 %i.bs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i34.us28.us, label %bb.e, !prof !25

bb.e:                                             ; preds = %.lr.ph.i.i.i19.us.us
  %i.bt = add i32 %.02746.i.i.i21.us.us, 1
  %i.bu = add i32 %.02746.i.i.i21.us.us, %.02947.i.i.i20.us.us
  %.029.i.i.i22.us.us = and i32 %i.bu, %i.ad      ; 2 uses
  %i.bv = zext i32 %.029.i.i.i22.us.us to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !172 ; 2 uses
  %i.by = icmp eq ptr %i.bh, %i.bx
  br i1 %i.by, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.us25.us, label %.lr.ph.i.i.i19.us.us, !prof !36, !llvm.loop !266

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.us25.us: ; preds = %bb.e, %.lr.ph.split.split.us.split.us
  %.sink.i.i.ph.pn.i.us26.us = phi ptr [ %i.bo, %.lr.ph.split.split.us.split.us ], [ %i.bw, %bb.e ] ; 2 uses
  %.not16.us27.us = icmp eq ptr %.sink.i.i.ph.pn.i.us26.us, %i.af
  br i1 %.not16.us27.us, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i34.us28.us, label %.thread

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i34.us28.us: ; preds = %.lr.ph.i.i.i19.us.us, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.us25.us
  %i.bz = getelementptr inbounds nuw i8, ptr %.01722.us24.us, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !199 ; 2 uses
  %.not.us32.us = icmp eq ptr %i.ca, null
  br i1 %.not.us32.us, label %._crit_edge, label %.lr.ph.split.split.us.split.us, !llvm.loop !340

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.thread
  %.01722 = phi ptr [ %i.dn, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit35.thread ], [ %i.y, %.lr.ph.split ] ; 2 uses
  %i.cb = load ptr, ptr %.01722, align 8, !tbaa !191 ; 5 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %i.ce = lshr i32 %i.cd, 4
  %i.cf = lshr i32 %i.cd, 9
  %i.cg = xor i32 %i.ce, %i.cf                    ; 2 uses
  %.02944.i.i.i18 = and i32 %i.cg, %i.ad          ; 2 uses
  %i.ch = zext nneg i32 %.02944.i.i.i18 to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ch ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !172 ; 2 uses
  %i.ck = icmp eq ptr %i.cb, %i.cj
  br i1 %i.ck, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit, label %.lr.ph.i.i.i19, !prof !35

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.split.split, %bb.f
  %i.cl = phi ptr [ %i.cr, %bb.f ], [ %i.cj, %.lr.ph.split.split ]
  %.02947.i.i.i20 = phi i32 [ %.029.i.i.i22, %bb.f ], [ %.02944.i.i.i18, %.lr.ph.split.split ]
  %.02746.i.i.i21 = phi i32 [ %i.cn, %bb.f ], [ 1, %.lr.ph.split.split ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, inttoptr (i64 -8 to ptr)
  br i1 %i.cm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.thread, label %bb.f, !prof !25

bb.f:                                             ; preds = %.lr.ph.i.i.i19
  %i.cn = add i32 %.02746.i.i.i21, 1
  %i.co = add i32 %.02746.i.i.i21, %.02947.i.i.i20
  %.029.i.i.i22 = and i32 %i.co, %i.ad            ; 2 uses
  %i.cp = zext i32 %.029.i.i.i22 to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.cp ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !172 ; 2 uses
  %i.cs = icmp eq ptr %i.cb, %i.cr
  br i1 %i.cs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit, label %.lr.ph.i.i.i19, !prof !36, !llvm.loop !266

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit: ; preds = %bb.f, %.lr.ph.split.split
  %.sink.i.i.ph.pn.i = phi ptr [ %i.ci, %.lr.ph.split.split ], [ %i.cq, %bb.f ] ; 2 uses
  %.not16 = icmp eq ptr %.sink.i.i.ph.pn.i, %i.af
  br i1 %.not16, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.thread, label %.thread
end_hunk_4
