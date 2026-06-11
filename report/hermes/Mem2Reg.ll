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
define hidden noundef zeroext i1 @_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
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
  %i.cd = lshr i32 %i.cb, 9
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = add i32 %i.bx, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.ce, %i.cf            ; 2 uses
  %i.cg = zext nneg i32 %.02944.i.i.i to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.cg ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24 ; 2 uses
  %i.cj = icmp eq ptr %i.bz, %i.ci
  br i1 %i.cj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i, label %.lr.ph.i.i.i, !prof !35

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.k
  %i.ck = phi ptr [ %i.cu, %bb.k ], [ %i.ci, %bb.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.amf = shl nuw nsw i64 %i.ame, 4
  %i.amg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amf) #11 ; 4 uses
  store ptr %i.amg, ptr %15, align 8, !tbaa !139
  store i32 0, ptr %i.eq, align 8, !tbaa !148
  store i32 0, ptr %i.er, align 4, !tbaa !149
  %i.amh = load i32, ptr %i.eo, align 8, !tbaa !142 ; 2 uses
  %i.ami = zext i32 %i.amh to i64
  %.idx.i.i.i.i65 = shl nuw nsw i64 %i.ami, 4     ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amg, i64 %.idx.i.i.i.i65
  %.not6.i.i.i.i66 = icmp eq i32 %i.amh, 0
  br i1 %.not6.i.i.i.i66, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph.i.i.i110.i.preheader

.lr.ph.i.i.i110.i.preheader:                      ; preds = %bb.eq
  %i.amk = add nsw i64 %.idx.i.i.i.i65, -16       ; 2 uses
  %i.aml = lshr exact i64 %i.amk, 4
  %i.amm = add nuw nsw i64 %i.aml, 1
  %xtraiter1445 = and i64 %i.amm, 7               ; 2 uses
  %lcmp.mod1446.not = icmp eq i64 %xtraiter1445, 0
  br i1 %lcmp.mod1446.not, label %.lr.ph.i.i.i110.i.prol.loopexit, label %.lr.ph.i.i.i110.i.prol

.lr.ph.i.i.i110.i.prol:                           ; preds = %.lr.ph.i.i.i110.i.preheader, %.lr.ph.i.i.i110.i.prol
  %.07.i.i.i.i67.prol = phi ptr [ %i.amn, %.lr.ph.i.i.i110.i.prol ], [ %i.amg, %.lr.ph.i.i.i110.i.preheader ] ; 2 uses
  %prol.iter1447 = phi i64 [ %prol.iter1447.next, %.lr.ph.i.i.i110.i.prol ], [ 0, %.lr.ph.i.i.i110.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i67.prol, align 8, !tbaa !80
  %i.amn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67.prol, i64 16 ; 2 uses
  %prol.iter1447.next = add i64 %prol.iter1447, 1 ; 2 uses
  %prol.iter1447.cmp.not = icmp eq i64 %prol.iter1447.next, %xtraiter1445
  br i1 %prol.iter1447.cmp.not, label %.lr.ph.i.i.i110.i.prol.loopexit, label %.lr.ph.i.i.i110.i.prol, !llvm.loop !167

.lr.ph.i.i.i110.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.i110.i.prol, %.lr.ph.i.i.i110.i.preheader
  %.07.i.i.i.i67.unr = phi ptr [ %i.amg, %.lr.ph.i.i.i110.i.preheader ], [ %i.amn, %.lr.ph.i.i.i110.i.prol ]
  %i.amo = icmp ult i64 %i.amk, 112
  br i1 %i.amo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph.i.i.i110.i

.lr.ph.i.i.i110.i:                                ; preds = %.lr.ph.i.i.i110.i.prol.loopexit, %.lr.ph.i.i.i110.i
  %.07.i.i.i.i67 = phi ptr [ %i.amw, %.lr.ph.i.i.i110.i ], [ %.07.i.i.i.i67.unr, %.lr.ph.i.i.i110.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i67, align 8, !tbaa !80
  %i.amp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.amp, align 8, !tbaa !80
  %i.amq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.amq, align 8, !tbaa !80
  %i.amr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.amr, align 8, !tbaa !80
  %i.ams = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ams, align 8, !tbaa !80
  %i.amt = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.amt, align 8, !tbaa !80
  %i.amu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.amu, align 8, !tbaa !80
  %i.amv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.amv, align 8, !tbaa !80
  %i.amw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i67, i64 128 ; 2 uses
  %.not.i.i.i.i68.7 = icmp eq ptr %i.amw, %i.amj
  br i1 %.not.i.i.i.i68.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, label %.lr.ph.i.i.i110.i, !llvm.loop !166

bb.er:                                            ; preds = %bb.en
  %i.amx = load ptr, ptr %15, align 8, !tbaa !139
  call void @_ZdlPv(ptr noundef %i.amx) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i

bb.es:                                            ; preds = %.thread142.i, %bb.en
  %i.amy = phi i32 [ %i.akp, %.thread142.i ], [ %i.akm, %bb.en ] ; 2 uses
  %i.amz = load ptr, ptr %15, align 8, !tbaa !139 ; 3 uses
  %i.ana = zext i32 %i.amy to i64
  %.idx.i104.i = shl nuw nsw i64 %i.ana, 4        ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amz, i64 %.idx.i104.i
  %.not6.i.i62 = icmp eq i32 %i.amy, 0
  br i1 %.not6.i.i62, label %._crit_edge.i107.i, label %.lr.ph.i105.i.preheader

.lr.ph.i105.i.preheader:                          ; preds = %bb.es
  %i.anc = add nsw i64 %.idx.i104.i, -16          ; 2 uses
  %i.and = lshr exact i64 %i.anc, 4
  %i.ane = add nuw nsw i64 %i.and, 1
  %xtraiter1442 = and i64 %i.ane, 7               ; 2 uses
  %lcmp.mod1443.not = icmp eq i64 %xtraiter1442, 0
  br i1 %lcmp.mod1443.not, label %.lr.ph.i105.i.prol.loopexit, label %.lr.ph.i105.i.prol

.lr.ph.i105.i.prol:                               ; preds = %.lr.ph.i105.i.preheader, %.lr.ph.i105.i.prol
  %.07.i.i63.prol = phi ptr [ %i.anf, %.lr.ph.i105.i.prol ], [ %i.amz, %.lr.ph.i105.i.preheader ] ; 2 uses
  %prol.iter1444 = phi i64 [ %prol.iter1444.next, %.lr.ph.i105.i.prol ], [ 0, %.lr.ph.i105.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i63.prol, align 8, !tbaa !80
  %i.anf = getelementptr inbounds nuw i8, ptr %.07.i.i63.prol, i64 16 ; 2 uses
  %prol.iter1444.next = add i64 %prol.iter1444, 1 ; 2 uses
  %prol.iter1444.cmp.not = icmp eq i64 %prol.iter1444.next, %xtraiter1442
  br i1 %prol.iter1444.cmp.not, label %.lr.ph.i105.i.prol.loopexit, label %.lr.ph.i105.i.prol, !llvm.loop !168

.lr.ph.i105.i.prol.loopexit:                      ; preds = %.lr.ph.i105.i.prol, %.lr.ph.i105.i.preheader
  %.07.i.i63.unr = phi ptr [ %i.amz, %.lr.ph.i105.i.preheader ], [ %i.anf, %.lr.ph.i105.i.prol ]
  %i.ang = icmp ult i64 %i.anc, 112
  br i1 %i.ang, label %._crit_edge.i107.i, label %.lr.ph.i105.i

._crit_edge.i107.i:                               ; preds = %.lr.ph.i105.i.prol.loopexit, %.lr.ph.i105.i, %bb.es
  store i32 0, ptr %i.eq, align 8, !tbaa !148
  store i32 0, ptr %i.er, align 4, !tbaa !149
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

.lr.ph.i105.i:                                    ; preds = %.lr.ph.i105.i.prol.loopexit, %.lr.ph.i105.i
  %.07.i.i63 = phi ptr [ %i.ano, %.lr.ph.i105.i ], [ %.07.i.i63.unr, %.lr.ph.i105.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i63, align 8, !tbaa !80
  %i.anh = getelementptr inbounds nuw i8, ptr %.07.i.i63, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.anh, align 8, !tbaa !80
  %i.ani = getelementptr inbounds nuw i8, ptr %.07.i.i63, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ani, align 8, !tbaa !80
  %i.anj = getelementptr inbounds nuw i8, ptr %.07.i.i63, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.anj, align 8, !tbaa !80
  %i.ank = getelementptr inbounds nuw i8, ptr %.07.i.i63, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ank, align 8, !tbaa !80
  %i.anl = getelementptr inbounds nuw i8, ptr %.07.i.i63, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.anl, align 8, !tbaa !80
  %i.anm = getelementptr inbounds nuw i8, ptr %.07.i.i63, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.anm, align 8, !tbaa !80
  %i.ann = getelementptr inbounds nuw i8, ptr %.07.i.i63, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ann, align 8, !tbaa !80
  %i.ano = getelementptr inbounds nuw i8, ptr %.07.i.i63, i64 128 ; 2 uses
  %.not.i106.i.7 = icmp eq ptr %i.ano, %i.anb
  br i1 %.not.i106.i.7, label %._crit_edge.i107.i, label %.lr.ph.i105.i, !llvm.loop !169

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i: ; preds = %.lr.ph.i.i.i110.i.prol.loopexit, %.lr.ph.i.i.i110.i, %.lr.ph.i.i.i70.prol.loopexit, %.lr.ph.i.i.i70, %_ZN4llvh16DenseMapIteratorIPN6hermes8VariableEPNS1_14StoreFrameInstENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EELb0EEppEv.exit.i, %._crit_edge.i107.i, %bb.eq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, %.loopexit.i59
  %i.anp = load i8, ptr %i.xp, align 8, !tbaa !64
  %i.anq = add i8 %i.anp, -69
  %i.anr = icmp ult i8 %i.anq, 6
  %or.cond.i60 = and i1 %i.xc, %i.anr
  br i1 %or.cond.i60, label %bb.et, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i

bb.et:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i
  %i.ans = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0129.0164.i, i32 noundef 0) #10 ; 2 uses
  %i.ant = icmp eq ptr %i.ans, null
  %i.anu = getelementptr inbounds i8, ptr %i.ans, i64 -16
  %i.anv = select i1 %i.ant, ptr null, ptr %i.anu
  call fastcc void @_ZL24collectCapturedVariablesRN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEES7_PNS1_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef %i.anv)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.thread.i: ; preds = %bb.cm, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit270, %bb.et, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i, %bb.er, %bb.em, %bb.dr, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, %bb.df
  %.7.i = phi i1 [ %.0163.i, %bb.er ], [ %.0163.i, %bb.dr ], [ %.0163.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ], [ %.5.i, %bb.df ], [ %.0163.i, %bb.et ], [ %.0163.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i ], [ %.0163.i, %bb.em ], [ %.1.i, %bb.cm ], [ %.0163.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_14StoreFrameInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit270 ] ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.sroa.0129.0164.i, i64 8
  %.sroa.0129.0.i = load ptr, ptr %i.anw, align 8, !tbaa !40 ; 2 uses
  %.not145.i = icmp eq ptr %.sroa.0129.0.i, %i.fe
  br i1 %.not145.i, label %._crit_edge.loopexit.i, label %bb.cf

_ZL15eliminateStoresPN6hermes10BasicBlockEN4llvh8ArrayRefIPNS_14AllocStackInstEEE.exit: ; preds = %._crit_edge.i.i56, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  %i.anx = load ptr, ptr %16, align 8, !tbaa !151
  call void @_ZdlPv(ptr noundef %i.anx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  %i.any = load ptr, ptr %15, align 8, !tbaa !139
  call void @_ZdlPv(ptr noundef %i.any) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  %i.anz = or i1 %.0633, %.0.lcssa.i              ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.0462.0634, i64 8
  %.sroa.0462.0 = load ptr, ptr %i.aoa, align 8, !tbaa !40 ; 2 uses
  %.not502 = icmp eq ptr %.sroa.0462.0, %i.dz
  br i1 %.not502, label %.preheader.loopexit, label %bb.p

._crit_edge:                                      ; preds = %_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit, %.preheader
  %.1.lcssa = phi i1 [ %.0.lcssa, %.preheader ], [ %i.arq, %_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit ]
  store i32 0, ptr %i.dt, align 8, !tbaa !22
  store i32 0, ptr %i.dw, align 8, !tbaa !22
  call fastcc void @_ZL23collectStackAllocationsPN6hermes8FunctionEPNS_13DominanceInfoERN4llvh15SmallVectorImplIPNS_14AllocStackInstEEES9_(ptr noundef nonnull %1, ptr noundef %26, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29)
  %i.aob = load ptr, ptr %28, align 8, !tbaa !21  ; 2 uses
  %i.aoc = load i32, ptr %i.dt, align 8, !tbaa !22 ; 2 uses
  %i.aod = zext i32 %i.aoc to i64
  %.idx = shl nuw nsw i64 %i.aod, 3
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aob, i64 %.idx
  %.not641 = icmp eq i32 %i.aoc, 0
  br i1 %.not641, label %._crit_edge645, label %.lr.ph644

.lr.ph644:                                        ; preds = %._crit_edge
  %i.aof = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 4 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 4 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 6 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aoz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 6 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.apl = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.fg

bb.eu:                                            ; preds = %.lr.ph639, %_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit
  %.sroa.0457.0638 = phi ptr [ %.sroa.0457.0635, %.lr.ph639 ], [ %.sroa.0457.0, %_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit ] ; 3 uses
  %.1637 = phi i1 [ %.0.lcssa, %.lr.ph639 ], [ %i.arq, %_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  store ptr %i.ev, ptr %14, align 8, !tbaa !21
  store i32 0, ptr %i.ew, align 8, !tbaa !22
  store i32 8, ptr %i.ex, align 4, !tbaa !23
  %i.apu = getelementptr inbounds nuw i8, ptr %.sroa.0457.0638, i64 64
  %i.apv = getelementptr inbounds nuw i8, ptr %.sroa.0457.0638, i64 56 ; 2 uses
  %.sroa.027.035.i = load ptr, ptr %i.apu, align 8, !tbaa !40 ; 2 uses
  %.not3136.i = icmp eq ptr %.sroa.027.035.i, %i.apv
  br i1 %.not3136.i, label %_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit, label %.lr.ph40.i

._crit_edge41.i:                                  ; preds = %_ZL15hasNonStoreUsesPN6hermes14AllocStackInstE.exit.i
  %.pre.i89 = load ptr, ptr %14, align 8, !tbaa !21 ; 3 uses
  %.pre43.i = load i32, ptr %i.ew, align 8, !tbaa !22 ; 2 uses
  %i.apw = zext i32 %.pre43.i to i64
  %.idx.i.i90 = shl nuw nsw i64 %i.apw, 3
  %i.apx = getelementptr inbounds nuw i8, ptr %.pre.i89, i64 %.idx.i.i90
  %.not8.i.i91 = icmp eq i32 %.pre43.i, 0
  br i1 %.not8.i.i91, label %._crit_edge.i.i97, label %.lr.ph.i.i92

._crit_edge.loopexit.i.i95:                       ; preds = %.lr.ph.i.i92
  %.pre.i.i96 = load ptr, ptr %14, align 8, !tbaa !21
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %._crit_edge.loopexit.i.i95, %._crit_edge41.i
  %i.apy = phi ptr [ %.pre.i.i96, %._crit_edge.loopexit.i.i95 ], [ %.pre.i89, %._crit_edge41.i ] ; 2 uses
  %i.apz = icmp eq ptr %i.apy, %i.ev
  br i1 %i.apz, label %_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.i.i97
  call void @free(ptr noundef %i.apy) #10
  br label %_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit

.lr.ph.i.i92:                                     ; preds = %._crit_edge41.i, %.lr.ph.i.i92
  %.09.i.i93 = phi ptr [ %i.aqb, %.lr.ph.i.i92 ], [ %.pre.i89, %._crit_edge41.i ] ; 2 uses
  %i.aqa = load ptr, ptr %.09.i.i93, align 8, !tbaa !62
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.aqa) #10
  %i.aqb = getelementptr inbounds nuw i8, ptr %.09.i.i93, i64 8 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.aqb, %i.apx
  br i1 %.not.i.i94, label %._crit_edge.loopexit.i.i95, label %.lr.ph.i.i92

.lr.ph40.i:                                       ; preds = %bb.eu, %_ZL15hasNonStoreUsesPN6hermes14AllocStackInstE.exit.i
  %.sroa.027.038.i = phi ptr [ %.sroa.027.0.i, %_ZL15hasNonStoreUsesPN6hermes14AllocStackInstE.exit.i ], [ %.sroa.027.035.i, %bb.eu ] ; 4 uses
  %.037.i = phi i1 [ %.1.i88, %_ZL15hasNonStoreUsesPN6hermes14AllocStackInstE.exit.i ], [ false, %bb.eu ] ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %.sroa.027.038.i, i64 16 ; 3 uses
  %i.aqd = load i8, ptr %i.aqc, align 8, !tbaa !64
  %i.aqe = icmp ne i8 %i.aqd, 52
  %.not32.i = icmp eq ptr %.sroa.027.038.i, null
  %.not.i87 = or i1 %.not32.i, %i.aqe
  br i1 %.not.i87, label %_ZL15hasNonStoreUsesPN6hermes14AllocStackInstE.exit.i, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph40.i
  %i.aqf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aqc) #10 ; 2 uses
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !21 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !22 ; 2 uses
  %i.aqj = zext i32 %i.aqi to i64
  %.idx.i20.i = shl nuw nsw i64 %i.aqj, 3
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqg, i64 %.idx.i20.i
  %.not13.not.i.i = icmp eq i32 %i.aqi, 0
  br i1 %.not13.not.i.i, label %.loopexit.i98, label %.lr.ph.i21.i

bb.ex:                                            ; preds = %.lr.ph.i21.i
  %i.aql = getelementptr inbounds nuw i8, ptr %.01114.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.aql, %i.aqk
  br i1 %.not.not.i.i, label %.loopexit.i98, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.ew, %bb.ex
  %.01114.i.i = phi ptr [ %i.aql, %bb.ex ], [ %i.aqg, %bb.ew ] ; 2 uses
  %i.aqm = load ptr, ptr %.01114.i.i, align 8, !tbaa !62
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  %i.aqo = load i8, ptr %i.aqn, align 8, !tbaa !64
  %.not.i22.i = icmp eq i8 %i.aqo, 50
  br i1 %.not.i22.i, label %bb.ex, label %_ZL15hasNonStoreUsesPN6hermes14AllocStackInstE.exit.i

.loopexit.i98:                                    ; preds = %bb.ex, %bb.ew
  %i.aqp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aqc) #10 ; 2 uses
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !21 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8
  %i.aqs = load i32, ptr %i.aqr, align 8, !tbaa !22 ; 2 uses
  %i.aqt = zext i32 %i.aqs to i64
  %.idx.i99 = shl nuw nsw i64 %i.aqt, 3
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.idx.i99
  %.not1933.i = icmp eq i32 %i.aqs, 0
  %.pre42.i = load i32, ptr %i.ew, align 8, !tbaa !22 ; 2 uses
  br i1 %.not1933.i, label %._crit_edge.i101, label %.lr.ph.i100

._crit_edge.i101:                                 ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit26.i, %.loopexit.i98
  %i.aqv = phi i32 [ %.pre42.i, %.loopexit.i98 ], [ %i.arn, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit26.i ] ; 2 uses
  %i.aqw = load i32, ptr %i.ex, align 4, !tbaa !23
  %.not.i.i.i102 = icmp ult i32 %i.aqv, %i.aqw
  br i1 %.not.i.i.i102, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i104, label %bb.ey, !prof !25

bb.ey:                                            ; preds = %._crit_edge.i101
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull %i.ev, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i103 = load i32, ptr %i.ew, align 8, !tbaa !22
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i104

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i104: ; preds = %bb.ey, %._crit_edge.i101
  %i.aqx = phi i32 [ %.pre.i.i.i103, %bb.ey ], [ %i.aqv, %._crit_edge.i101 ]
  %i.aqy = load ptr, ptr %14, align 8, !tbaa !21
  %i.aqz = zext i32 %i.aqx to i64
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.aqy, i64 %i.aqz
  %i.arb = ptrtoint ptr %.sroa.027.038.i to i64
  store i64 %i.arb, ptr %i.ara, align 1
  %i.arc = load i32, ptr %i.ew, align 8, !tbaa !22
  %i.ard = add i32 %i.arc, 1
  store i32 %i.ard, ptr %i.ew, align 8, !tbaa !22
  br label %_ZL15hasNonStoreUsesPN6hermes14AllocStackInstE.exit.i

.lr.ph.i100:                                      ; preds = %.loopexit.i98, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit26.i
  %i.are = phi i32 [ %i.arn, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit26.i ], [ %.pre42.i, %.loopexit.i98 ] ; 2 uses
  %.01734.i = phi ptr [ %i.aro, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit26.i ], [ %i.aqq, %.loopexit.i98 ] ; 2 uses
  %i.arf = load ptr, ptr %.01734.i, align 8, !tbaa !62
  %i.arg = load i32, ptr %i.ex, align 4, !tbaa !23
  %.not.i.i24.i = icmp ult i32 %i.are, %i.arg
  br i1 %.not.i.i24.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit26.i, label %bb.ez, !prof !25

bb.ez:                                            ; preds = %.lr.ph.i100
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull %i.ev, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i25.i = load i32, ptr %i.ew, align 8, !tbaa !22
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit26.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit26.i: ; preds = %bb.ez, %.lr.ph.i100
  %i.arh = phi i32 [ %.pre.i.i25.i, %bb.ez ], [ %i.are, %.lr.ph.i100 ]
  %i.ari = load ptr, ptr %14, align 8, !tbaa !21
  %i.arj = zext i32 %i.arh to i64
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.ari, i64 %i.arj
  %i.arl = ptrtoint ptr %i.arf to i64
  store i64 %i.arl, ptr %i.ark, align 1
  %i.arm = load i32, ptr %i.ew, align 8, !tbaa !22
  %i.arn = add i32 %i.arm, 1                      ; 3 uses
  store i32 %i.arn, ptr %i.ew, align 8, !tbaa !22
  %i.aro = getelementptr inbounds nuw i8, ptr %.01734.i, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.aro, %i.aqu
  br i1 %.not19.i, label %._crit_edge.i101, label %.lr.ph.i100

_ZL15hasNonStoreUsesPN6hermes14AllocStackInstE.exit.i: ; preds = %.lr.ph.i21.i, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i104, %.lr.ph40.i
  %.1.i88 = phi i1 [ %.037.i, %.lr.ph40.i ], [ true, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i104 ], [ %.037.i, %.lr.ph.i21.i ] ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %.sroa.027.038.i, i64 8
  %.sroa.027.0.i = load ptr, ptr %i.arp, align 8, !tbaa !40 ; 2 uses
  %.not31.i = icmp eq ptr %.sroa.027.0.i, %i.apv
  br i1 %.not31.i, label %._crit_edge41.i, label %.lr.ph40.i

_ZL27eliminateStoreOnlyLocationsPN6hermes10BasicBlockE.exit: ; preds = %bb.eu, %._crit_edge.i.i97, %bb.ev
  %.0.lcssa5254.i = phi i1 [ %.1.i88, %bb.ev ], [ %.1.i88, %._crit_edge.i.i97 ], [ false, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  %i.arq = or i1 %.1637, %.0.lcssa5254.i          ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %.sroa.0457.0638, i64 8
  %.sroa.0457.0 = load ptr, ptr %i.arr, align 8, !tbaa !40 ; 2 uses
  %.not503 = icmp eq ptr %.sroa.0457.0, %i.dz
  br i1 %.not503, label %._crit_edge, label %bb.eu

._crit_edge645:                                   ; preds = %_ZL22promoteAllocStackToSSAPN6hermes14AllocStackInstERNS_13DominanceInfoERN4llvh8DenseMapIPNS4_15DomTreeNodeBaseINS_10BasicBlockEEEjNS4_12DenseMapInfoIS9_EENS4_6detail12DenseMapPairIS9_jEEEE.exit, %._crit_edge
  %i.ars = load ptr, ptr %29, align 8, !tbaa !21  ; 2 uses
  %i.art = icmp eq ptr %i.ars, %i.dv
  br i1 %i.art, label %_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge645
  call void @free(ptr noundef %i.ars) #10
  br label %_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit: ; preds = %._crit_edge645, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #10
  %i.aru = load ptr, ptr %28, align 8, !tbaa !21  ; 2 uses
  %i.arv = icmp eq ptr %i.aru, %i.ds
  br i1 %i.arv, label %_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit105, label %bb.fb

bb.fb:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit
  call void @free(ptr noundef %i.aru) #10
  br label %_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit105

_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit105: ; preds = %_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #10
  %i.arw = load ptr, ptr %27, align 8, !tbaa !31
  call void @_ZdlPv(ptr noundef %i.arw) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #10
  %i.arx = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.arz = load i32, ptr %i.ary, align 8, !tbaa !170 ; 2 uses
  %i.asa = icmp eq i32 %i.arz, 0
  %.pre1.i.i = load ptr, ptr %i.arx, align 8, !tbaa !171 ; 3 uses
  br i1 %i.asa, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvh11SmallVectorIPN6hermes14AllocStackInstELj16EED2Ev.exit105
  %i.asb = zext i32 %i.arz to i64
  %.idx.i.i.i106 = shl nuw nsw i64 %i.asb, 4
  %i.asc = getelementptr inbounds nuw i8, ptr %.pre1.i.i, i64 %.idx.i.i.i106
end_hunk_1
begin_hunk_2_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a

.lr.ph.i.i.i99.i:                                 ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i.i, %bb.fw
  %.01317.i.i.i.i = phi i64 [ %.018.i56.i.i.i, %bb.fw ], [ %i.axl, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i.i ] ; 3 uses
  %.018.in.i.i.i.i = add nsw i64 %.01317.i.i.i.i, -1
  %.018.i56.i.i.i = lshr i64 %.018.in.i.i.i.i, 1  ; 3 uses
  %i.axn = getelementptr inbounds nuw [16 x i8], ptr %i.axh, i64 %.018.i56.i.i.i ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 8
  %i.axp = load i32, ptr %i.axo, align 8, !tbaa !184 ; 2 uses
  %i.axq = icmp ult i32 %i.axp, %.sroa.4.0.copyload.i.i.i
  br i1 %i.axq, label %bb.fw, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit.i

bb.fw:                                            ; preds = %.lr.ph.i.i.i99.i
  %i.axr = getelementptr inbounds [16 x i8], ptr %i.axh, i64 %.01317.i.i.i.i ; 2 uses
  %i.axs = load ptr, ptr %i.axn, align 8, !tbaa !24
  store ptr %i.axs, ptr %i.axr, align 8, !tbaa !186
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axr, i64 8
  store i32 %i.axp, ptr %i.axt, align 8, !tbaa !184
  %.not.i2.i.i = icmp eq i64 %.018.i56.i.i.i, 0
  br i1 %.not.i2.i.i, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit.i, label %.lr.ph.i.i.i99.i, !llvm.loop !187

_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit.i: ; preds = %bb.fw, %.lr.ph.i.i.i99.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i.i
  %.013.lcssa.i.i.i.i = phi i64 [ %i.axl, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i.i ], [ 0, %bb.fw ], [ %.01317.i.i.i.i, %.lr.ph.i.i.i99.i ]
  %i.axu = getelementptr inbounds [16 x i8], ptr %i.axh, i64 %.013.lcssa.i.i.i.i ; 2 uses
  store ptr %.sroa.01.0.copyload.i.i.i, ptr %i.axu, align 8, !tbaa !186
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i, ptr %i.axv, align 8, !tbaa !184
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i, %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit.i, %.lr.ph.i112
  %i.axw = getelementptr inbounds nuw i8, ptr %.0365.i, i64 8 ; 2 uses
  %.not.i113 = icmp eq ptr %i.axw, %i.asz
  br i1 %.not.i113, label %._crit_edge.i114, label %.lr.ph.i112

.loopexit.i123:                                   ; preds = %._crit_edge374.i, %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit.i115
  %i.axx = load i32, ptr %i.aog, align 8, !tbaa !22 ; 2 uses
  %.not.i.i100.i = icmp eq i32 %i.axx, 0
  br i1 %.not.i.i100.i, label %._crit_edge380.i, label %bb.fx, !llvm.loop !188

bb.fx:                                            ; preds = %.loopexit.i123, %.lr.ph379.i
  %i.axy = phi i32 [ %i.axx, %.loopexit.i123 ], [ %i.ata, %.lr.ph379.i ] ; 4 uses
  %i.axz = load ptr, ptr %4, align 8, !tbaa !21   ; 12 uses
  %.sroa.062.0.copyload.i = load ptr, ptr %i.axz, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.axz, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.aya = icmp ugt i32 %i.axy, 1
  br i1 %i.aya, label %bb.fy, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE3popEv.exit

bb.fy:                                            ; preds = %bb.fx
  %i.ayb = zext i32 %i.axy to i64                 ; 2 uses
  %i.ayc = getelementptr inbounds nuw [16 x i8], ptr %i.axz, i64 %i.ayb ; 2 uses
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
  %.sroa.4304.0367.i = phi i32 [ %i.biu, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i ], [ 0, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
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
  %.not.i117.i = icmp ne ptr %.sink.i.ph.pn.i.i116.i, %i.bbt
  call void @llvm.assume(i1 %.not.i117.i)
  %i.bbu = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i116.i, i64 8
  %i.bbv = load ptr, ptr %i.bbu, align 8, !tbaa !24 ; 14 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 8
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !199
  %i.bby = icmp eq ptr %i.bbx, %i.bak
  br i1 %i.bby, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %bb.gf

bb.gf:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i
  %i.bbz = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.bca = load i32, ptr %i.aok, align 8, !tbaa !34 ; 7 uses
  %i.bcb = icmp eq i32 %i.bca, 0
  br i1 %i.bcb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.bcc = ptrtoint ptr %i.bbv to i64
  %i.bcd = trunc i64 %i.bcc to i32                ; 2 uses
  %i.bce = lshr i32 %i.bcd, 4
  %i.bcf = lshr i32 %i.bcd, 9
  %i.bcg = xor i32 %i.bce, %i.bcf
  %i.bch = add i32 %i.bca, -1                     ; 2 uses
  %.02944.i.i.i214.i = and i32 %i.bch, %i.bcg     ; 2 uses
  %i.bci = zext nneg i32 %.02944.i.i.i214.i to i64
  %i.bcj = getelementptr inbounds nuw [16 x i8], ptr %i.bbz, i64 %i.bci ; 3 uses
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !24 ; 2 uses
  %i.bcl = icmp eq ptr %i.bbv, %i.bck
  br i1 %i.bcl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, label %.lr.ph.i.i.i215.i, !prof !35

.lr.ph.i.i.i215.i:                                ; preds = %bb.gg, %bb.gi
  %i.bcm = phi ptr [ %i.bcw, %bb.gi ], [ %i.bck, %bb.gg ] ; 2 uses
  %i.bcn = phi ptr [ %i.bcv, %bb.gi ], [ %i.bcj, %bb.gg ] ; 2 uses
  %.02947.i.i.i216.i = phi i32 [ %.029.i.i.i218.i, %bb.gi ], [ %.02944.i.i.i214.i, %bb.gg ]
  %.02746.i.i.i217.i = phi i32 [ %i.bcs, %bb.gi ], [ 1, %bb.gg ] ; 2 uses
  %.03245.i.i.i.i117 = phi ptr [ %spec.select.i.i.i.i119, %bb.gi ], [ null, %bb.gg ] ; 4 uses
  %i.bco = icmp eq ptr %i.bcm, inttoptr (i64 -8 to ptr)
  br i1 %i.bco, label %bb.gh, label %bb.gi, !prof !25

bb.gh:                                            ; preds = %.lr.ph.i.i.i215.i
  %.not.i.i.i220.i = icmp eq ptr %.03245.i.i.i.i117, null
  %i.bcp = select i1 %.not.i.i.i220.i, ptr %i.bcn, ptr %.03245.i.i.i.i117
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151

bb.gi:                                            ; preds = %.lr.ph.i.i.i215.i
  %i.bcq = icmp eq ptr %i.bcm, inttoptr (i64 -16 to ptr)
  %i.bcr = icmp eq ptr %.03245.i.i.i.i117, null
  %or.cond.not.i.i.i.i118 = select i1 %i.bcq, i1 %i.bcr, i1 false
  %spec.select.i.i.i.i119 = select i1 %or.cond.not.i.i.i.i118, ptr %i.bcn, ptr %.03245.i.i.i.i117
  %i.bcs = add i32 %.02746.i.i.i217.i, 1
  %i.bct = add i32 %.02746.i.i.i217.i, %.02947.i.i.i216.i
  %.029.i.i.i218.i = and i32 %i.bct, %i.bch       ; 2 uses
  %i.bcu = zext i32 %.029.i.i.i218.i to i64
  %i.bcv = getelementptr inbounds nuw [16 x i8], ptr %i.bbz, i64 %i.bcu ; 3 uses
  %i.bcw = load ptr, ptr %i.bcv, align 8, !tbaa !24 ; 2 uses
  %i.bcx = icmp eq ptr %i.bbv, %i.bcw
  br i1 %i.bcx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, label %.lr.ph.i.i.i215.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151: ; preds = %bb.gh, %bb.gf
  %.sink.i.i.i221.i = phi ptr [ %i.bcp, %bb.gh ], [ null, %bb.gf ]
  %i.bcy = load i32, ptr %i.aol, align 8, !tbaa !38 ; 3 uses
  %i.bcz = shl i32 %i.bcy, 2
  %i.bda = add i32 %i.bcz, 4
  %i.bdb = mul i32 %i.bca, 3
  %.not.i.i4.i.i152 = icmp ult i32 %i.bda, %i.bdb
  br i1 %.not.i.i4.i.i152, label %bb.gk, label %bb.gj, !prof !25

bb.gj:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151
  %i.bdc = shl i32 %i.bca, 1
  br label %.sink.split.i.i.i.i153

bb.gk:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i.i151
  %i.bdd = load i32, ptr %i.aom, align 4, !tbaa !39
  %.neg.i.i.i.i164 = xor i32 %i.bcy, -1
  %.neg12.i.i.i.i165 = add i32 %i.bca, %.neg.i.i.i.i164
  %i.bde = sub i32 %.neg12.i.i.i.i165, %i.bdd
  %i.bdf = lshr i32 %i.bca, 3
  %.not10.i.i.i.i166 = icmp ugt i32 %i.bde, %i.bdf
  br i1 %.not10.i.i.i.i166, label %bb.go, label %.sink.split.i.i.i.i153, !prof !25

.sink.split.i.i.i.i153:                           ; preds = %bb.gk, %bb.gj
  %.sink.i.i5.i.i154 = phi i32 [ %i.bdc, %bb.gj ], [ %i.bca, %bb.gk ]
  call void @_ZN4llvh8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %27, i32 noundef %.sink.i.i5.i.i154)
  %i.bdg = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.bdh = load i32, ptr %i.aok, align 8, !tbaa !34 ; 2 uses
  %i.bdi = icmp eq i32 %i.bdh, 0
  br i1 %i.bdi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %bb.gl

bb.gl:                                            ; preds = %.sink.split.i.i.i.i153
  %i.bdj = ptrtoint ptr %i.bbv to i64
  %i.bdk = trunc i64 %i.bdj to i32                ; 2 uses
  %i.bdl = lshr i32 %i.bdk, 4
  %i.bdm = lshr i32 %i.bdk, 9
  %i.bdn = xor i32 %i.bdl, %i.bdm
  %i.bdo = add i32 %i.bdh, -1                     ; 2 uses
  %.02944.i.i.i155 = and i32 %i.bdo, %i.bdn       ; 2 uses
  %i.bdp = zext nneg i32 %.02944.i.i.i155 to i64
  %i.bdq = getelementptr inbounds nuw [16 x i8], ptr %i.bdg, i64 %i.bdp ; 3 uses
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !24 ; 2 uses
  %i.bds = icmp eq ptr %i.bbv, %i.bdr
  br i1 %i.bds, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %.lr.ph.i.i242.i, !prof !35

.lr.ph.i.i242.i:                                  ; preds = %bb.gl, %bb.gn
  %i.bdt = phi ptr [ %i.bed, %bb.gn ], [ %i.bdr, %bb.gl ] ; 2 uses
  %i.bdu = phi ptr [ %i.bec, %bb.gn ], [ %i.bdq, %bb.gl ] ; 2 uses
  %.02947.i.i.i156 = phi i32 [ %.029.i.i.i160, %bb.gn ], [ %.02944.i.i.i155, %bb.gl ]
  %.02746.i.i.i157 = phi i32 [ %i.bdz, %bb.gn ], [ 1, %bb.gl ] ; 2 uses
  %.03245.i.i.i158 = phi ptr [ %spec.select.i.i243.i, %bb.gn ], [ null, %bb.gl ] ; 4 uses
  %i.bdv = icmp eq ptr %i.bdt, inttoptr (i64 -8 to ptr)
  br i1 %i.bdv, label %bb.gm, label %bb.gn, !prof !25

bb.gm:                                            ; preds = %.lr.ph.i.i242.i
  %.not.i.i244.i = icmp eq ptr %.03245.i.i.i158, null
  %i.bdw = select i1 %.not.i.i244.i, ptr %i.bdu, ptr %.03245.i.i.i158
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161

bb.gn:                                            ; preds = %.lr.ph.i.i242.i
  %i.bdx = icmp eq ptr %i.bdt, inttoptr (i64 -16 to ptr)
  %i.bdy = icmp eq ptr %.03245.i.i.i158, null
  %or.cond.not.i.i.i159 = select i1 %i.bdx, i1 %i.bdy, i1 false
  %spec.select.i.i243.i = select i1 %or.cond.not.i.i.i159, ptr %i.bdu, ptr %.03245.i.i.i158
  %i.bdz = add i32 %.02746.i.i.i157, 1
  %i.bea = add i32 %.02746.i.i.i157, %.02947.i.i.i156
  %.029.i.i.i160 = and i32 %i.bea, %i.bdo         ; 2 uses
  %i.beb = zext i32 %.029.i.i.i160 to i64
  %i.bec = getelementptr inbounds nuw [16 x i8], ptr %i.bdg, i64 %i.beb ; 3 uses
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !24 ; 2 uses
  %i.bee = icmp eq ptr %i.bbv, %i.bed
  br i1 %i.bee, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, label %.lr.ph.i.i242.i, !prof !36, !llvm.loop !37

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161: ; preds = %bb.gn, %bb.gm, %bb.gl, %.sink.split.i.i.i.i153
  %.sink.i.i.i162 = phi ptr [ %i.bdw, %bb.gm ], [ null, %.sink.split.i.i.i.i153 ], [ %i.bdq, %bb.gl ], [ %i.bec, %bb.gn ]
  %.pre.i.i222.i = load i32, ptr %i.aol, align 8, !tbaa !38
  br label %bb.go

bb.go:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161, %bb.gk
  %i.bef = phi ptr [ %.sink.i.i.i162, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161 ], [ %.sink.i.i.i221.i, %bb.gk ] ; 4 uses
  %i.beg = phi i32 [ %.pre.i.i222.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit.i161 ], [ %i.bcy, %bb.gk ]
  %i.beh = add i32 %i.beg, 1
  store i32 %i.beh, ptr %i.aol, align 8, !tbaa !38
  %i.bei = load ptr, ptr %i.bef, align 8, !tbaa !24
  %i.bej = icmp eq ptr %i.bei, inttoptr (i64 -8 to ptr)
  br i1 %i.bej, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.bek = load i32, ptr %i.aom, align 4, !tbaa !39
  %i.bel = add i32 %i.bek, -1
  store i32 %i.bel, ptr %i.aom, align 4, !tbaa !39
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163

_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16InsertIntoBucketIRKS6_JEEEPSB_SH_OT_DpOT0_.exit.i.i163: ; preds = %bb.gp, %bb.go
  store ptr %i.bbv, ptr %i.bef, align 8, !tbaa !24
end_hunk_2
begin_hunk_3_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.bfr = xor i32 %i.bfp, %i.bfq
  %i.bfs = add i32 %i.bfl, -1                     ; 2 uses
  %.02944.i.i.i223.i = and i32 %i.bfs, %i.bfr     ; 2 uses
  %i.bft = zext nneg i32 %.02944.i.i.i223.i to i64
  %i.bfu = getelementptr inbounds nuw [8 x i8], ptr %i.bfk, i64 %i.bft ; 2 uses
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bfw = icmp eq ptr %i.bau, %i.bfv
  br i1 %i.bfw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %.lr.ph.i.i.i224.i, !prof !35

.lr.ph.i.i.i224.i:                                ; preds = %bb.gw, %bb.gy
  %i.bfx = phi ptr [ %i.bgh, %bb.gy ], [ %i.bfv, %bb.gw ] ; 2 uses
  %i.bfy = phi ptr [ %i.bgg, %bb.gy ], [ %i.bfu, %bb.gw ] ; 2 uses
  %.02947.i.i.i225.i = phi i32 [ %.029.i.i.i230.i, %bb.gy ], [ %.02944.i.i.i223.i, %bb.gw ]
  %.02746.i.i.i226.i = phi i32 [ %i.bgd, %bb.gy ], [ 1, %bb.gw ] ; 2 uses
  %.03245.i.i.i227.i = phi ptr [ %spec.select.i.i.i229.i, %bb.gy ], [ null, %bb.gw ] ; 4 uses
  %i.bfz = icmp eq ptr %i.bfx, inttoptr (i64 -8 to ptr)
  br i1 %i.bfz, label %bb.gx, label %bb.gy, !prof !25

bb.gx:                                            ; preds = %.lr.ph.i.i.i224.i
  %.not.i.i.i232.i = icmp eq ptr %.03245.i.i.i227.i, null
  %i.bga = select i1 %.not.i.i.i232.i, ptr %i.bfy, ptr %.03245.i.i.i227.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i

bb.gy:                                            ; preds = %.lr.ph.i.i.i224.i
  %i.bgb = icmp eq ptr %i.bfx, inttoptr (i64 -16 to ptr)
  %i.bgc = icmp eq ptr %.03245.i.i.i227.i, null
  %or.cond.not.i.i.i228.i = select i1 %i.bgb, i1 %i.bgc, i1 false
  %spec.select.i.i.i229.i = select i1 %or.cond.not.i.i.i228.i, ptr %i.bfy, ptr %.03245.i.i.i227.i
  %i.bgd = add i32 %.02746.i.i.i226.i, 1
  %i.bge = add i32 %.02746.i.i.i226.i, %.02947.i.i.i225.i
  %.029.i.i.i230.i = and i32 %i.bge, %i.bfs       ; 2 uses
  %i.bgf = zext i32 %.029.i.i.i230.i to i64
  %i.bgg = getelementptr inbounds nuw [8 x i8], ptr %i.bfk, i64 %i.bgf ; 2 uses
  %i.bgh = load ptr, ptr %i.bgg, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bgi = icmp eq ptr %i.bau, %i.bgh
  br i1 %i.bgi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i, label %.lr.ph.i.i.i224.i, !prof !36, !llvm.loop !214

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i: ; preds = %bb.gx, %bb.gv
  %.sink.i.i.i233.i = phi ptr [ %i.bga, %bb.gx ], [ null, %bb.gv ]
  %i.bgj = load i32, ptr %i.aow, align 8, !tbaa !215, !noalias !208 ; 3 uses
  %i.bgk = shl i32 %i.bgj, 2
  %i.bgl = add i32 %i.bgk, 4
  %i.bgm = mul i32 %i.bfl, 3
  %.not.i.i4.i234.i = icmp ult i32 %i.bgl, %i.bgm
  br i1 %.not.i.i4.i234.i, label %bb.ha, label %bb.gz, !prof !25

bb.gz:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i
  %i.bgn = shl i32 %i.bfl, 1
  br label %.sink.split.i.i.i235.i

bb.ha:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i
  %i.bgo = load i32, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  %.neg.i.i.i239.i = xor i32 %i.bgj, -1
  %.neg12.i.i.i240.i = add i32 %i.bfl, %.neg.i.i.i239.i
  %i.bgp = sub i32 %.neg12.i.i.i240.i, %i.bgo
  %i.bgq = lshr i32 %i.bfl, 3
  %.not10.i.i.i241.i = icmp ugt i32 %i.bgp, %i.bgq
  br i1 %.not10.i.i.i241.i, label %bb.he, label %.sink.split.i.i.i235.i, !prof !25

.sink.split.i.i.i235.i:                           ; preds = %bb.ha, %bb.gz
  %.sink.i.i5.i236.i = phi i32 [ %i.bgn, %bb.gz ], [ %i.bfl, %bb.ha ]
  call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %.sink.i.i5.i236.i), !noalias !208
  %i.bgr = load ptr, ptr %3, align 8, !tbaa !205, !noalias !208 ; 2 uses
  %i.bgs = load i32, ptr %i.aov, align 8, !tbaa !213, !noalias !208 ; 2 uses
  %i.bgt = icmp eq i32 %i.bgs, 0
  br i1 %i.bgt, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %bb.hb

bb.hb:                                            ; preds = %.sink.split.i.i.i235.i
  %i.bgu = ptrtoint ptr %i.bau to i64
  %i.bgv = trunc i64 %i.bgu to i32                ; 2 uses
  %i.bgw = lshr i32 %i.bgv, 4
  %i.bgx = lshr i32 %i.bgv, 9
  %i.bgy = xor i32 %i.bgw, %i.bgx
  %i.bgz = add i32 %i.bgs, -1                     ; 2 uses
  %.02944.i.i245.i = and i32 %i.bgz, %i.bgy       ; 2 uses
  %i.bha = zext nneg i32 %.02944.i.i245.i to i64
  %i.bhb = getelementptr inbounds nuw [8 x i8], ptr %i.bgr, i64 %i.bha ; 3 uses
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bhd = icmp eq ptr %i.bau, %i.bhc
  br i1 %i.bhd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i246.i, !prof !35

.lr.ph.i.i246.i:                                  ; preds = %bb.hb, %bb.hd
  %i.bhe = phi ptr [ %i.bho, %bb.hd ], [ %i.bhc, %bb.hb ] ; 2 uses
  %i.bhf = phi ptr [ %i.bhn, %bb.hd ], [ %i.bhb, %bb.hb ] ; 2 uses
  %.02947.i.i247.i = phi i32 [ %.029.i.i252.i, %bb.hd ], [ %.02944.i.i245.i, %bb.hb ]
  %.02746.i.i248.i = phi i32 [ %i.bhk, %bb.hd ], [ 1, %bb.hb ] ; 2 uses
  %.03245.i.i249.i = phi ptr [ %spec.select.i.i251.i, %bb.hd ], [ null, %bb.hb ] ; 4 uses
  %i.bhg = icmp eq ptr %i.bhe, inttoptr (i64 -8 to ptr)
  br i1 %i.bhg, label %bb.hc, label %bb.hd, !prof !25

bb.hc:                                            ; preds = %.lr.ph.i.i246.i
  %.not.i.i255.i = icmp eq ptr %.03245.i.i249.i, null
  %i.bhh = select i1 %.not.i.i255.i, ptr %i.bhf, ptr %.03245.i.i249.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.hd:                                            ; preds = %.lr.ph.i.i246.i
  %i.bhi = icmp eq ptr %i.bhe, inttoptr (i64 -16 to ptr)
  %i.bhj = icmp eq ptr %.03245.i.i249.i, null
  %or.cond.not.i.i250.i = select i1 %i.bhi, i1 %i.bhj, i1 false
  %spec.select.i.i251.i = select i1 %or.cond.not.i.i250.i, ptr %i.bhf, ptr %.03245.i.i249.i
  %i.bhk = add i32 %.02746.i.i248.i, 1
  %i.bhl = add i32 %.02746.i.i248.i, %.02947.i.i247.i
  %.029.i.i252.i = and i32 %i.bhl, %i.bgz         ; 2 uses
  %i.bhm = zext i32 %.029.i.i252.i to i64
  %i.bhn = getelementptr inbounds nuw [8 x i8], ptr %i.bgr, i64 %i.bhm ; 3 uses
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !172, !noalias !208 ; 2 uses
  %i.bhp = icmp eq ptr %i.bau, %i.bho
  br i1 %i.bhp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i246.i, !prof !36, !llvm.loop !214

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.hd, %bb.hc, %bb.hb, %.sink.split.i.i.i235.i
  %.sink.i.i253.i = phi ptr [ %i.bhh, %bb.hc ], [ null, %.sink.split.i.i.i235.i ], [ %i.bhb, %bb.hb ], [ %i.bhn, %bb.hd ]
  %.pre.i.i237.i = load i32, ptr %i.aow, align 8, !tbaa !215, !noalias !208
  br label %bb.he

bb.he:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, %bb.ha
  %i.bhq = phi ptr [ %.sink.i.i253.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %.sink.i.i.i233.i, %bb.ha ] ; 2 uses
  %i.bhr = phi i32 [ %.pre.i.i237.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %i.bgj, %bb.ha ]
  %i.bhs = add i32 %i.bhr, 1
  store i32 %i.bhs, ptr %i.aow, align 8, !tbaa !215, !noalias !208
  %i.bht = load ptr, ptr %i.bhq, align 8, !tbaa !172, !noalias !208
  %i.bhu = icmp eq ptr %i.bht, inttoptr (i64 -8 to ptr)
  br i1 %i.bhu, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bhv = load i32, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  %i.bhw = add i32 %i.bhv, -1
  store i32 %i.bhw, ptr %i.aox, align 4, !tbaa !216, !noalias !208
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  store ptr %i.bau, ptr %i.bhq, align 8, !tbaa !172, !noalias !208
  %i.bhx = load i32, ptr %i.aog, align 8, !tbaa !22 ; 2 uses
  %i.bhy = load i32, ptr %i.aoh, align 4, !tbaa !23
  %.not.i.i124.i = icmp ult i32 %i.bhx, %i.bhy
  br i1 %.not.i.i124.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i, label %bb.hh, !prof !25

bb.hh:                                            ; preds = %bb.hg
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(529) %4, ptr noundef nonnull %i.aof, i64 noundef 0, i64 noundef 16) #10
  %.pre.i.i125.i = load i32, ptr %i.aog, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i: ; preds = %bb.hh, %bb.hg
  %i.bhz = phi i32 [ %.pre.i.i125.i, %bb.hh ], [ %i.bhx, %bb.hg ]
  %i.bia = load ptr, ptr %4, align 8, !tbaa !21
  %i.bib = zext i32 %i.bhz to i64
  %i.bic = getelementptr inbounds nuw [16 x i8], ptr %i.bia, i64 %i.bib ; 2 uses
  store ptr %i.bbv, ptr %i.bic, align 1
  %.sroa.4283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bic, i64 8
  store i32 %i.beo, ptr %.sroa.4283.0..sroa_idx.i, align 1
  %i.bid = load i32, ptr %i.aog, align 8, !tbaa !22
  %i.bie = add i32 %i.bid, 1                      ; 3 uses
  store i32 %i.bie, ptr %i.aog, align 8, !tbaa !22
  %i.bif = load ptr, ptr %4, align 8, !tbaa !21   ; 4 uses
  %i.big = zext i32 %i.bie to i64                 ; 2 uses
  %i.bih = getelementptr inbounds nuw [16 x i8], ptr %i.bif, i64 %i.big ; 2 uses
  %i.bii = getelementptr inbounds i8, ptr %i.bih, i64 -16
  %.sroa.01.0.copyload.i.i127.i = load ptr, ptr %i.bii, align 8
  %.sroa.4.0..sroa_idx.i.i128.i = getelementptr inbounds i8, ptr %i.bih, i64 -8
  %.sroa.4.0.copyload.i.i129.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i128.i, align 8 ; 2 uses
  %i.bij = add nsw i64 %i.big, -1                 ; 2 uses
  %i.bik = icmp ugt i32 %i.bie, 1
  br i1 %i.bik, label %.lr.ph.i.i.i131.i, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i

.lr.ph.i.i.i131.i:                                ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i, %bb.hi
  %.01317.i.i.i132.i = phi i64 [ %.018.i56.i.i134.i, %bb.hi ], [ %i.bij, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i ] ; 3 uses
  %.018.in.i.i.i133.i = add nsw i64 %.01317.i.i.i132.i, -1
  %.018.i56.i.i134.i = lshr i64 %.018.in.i.i.i133.i, 1 ; 3 uses
  %i.bil = getelementptr inbounds nuw [16 x i8], ptr %i.bif, i64 %.018.i56.i.i134.i ; 2 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 8
  %i.bin = load i32, ptr %i.bim, align 8, !tbaa !184 ; 2 uses
  %i.bio = icmp ult i32 %i.bin, %.sroa.4.0.copyload.i.i129.i
  br i1 %i.bio, label %bb.hi, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i

bb.hi:                                            ; preds = %.lr.ph.i.i.i131.i
  %i.bip = getelementptr inbounds [16 x i8], ptr %i.bif, i64 %.01317.i.i.i132.i ; 2 uses
  %i.biq = load ptr, ptr %i.bil, align 8, !tbaa !24
  store ptr %i.biq, ptr %i.bip, align 8, !tbaa !186
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bip, i64 8
  store i32 %i.bin, ptr %i.bir, align 8, !tbaa !184
  %.not.i2.i135.i = icmp eq i64 %.018.i56.i.i134.i, 0
  br i1 %.not.i2.i135.i, label %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i, label %.lr.ph.i.i.i131.i, !llvm.loop !187

_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i: ; preds = %bb.hi, %.lr.ph.i.i.i131.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i
  %.013.lcssa.i.i.i130.i = phi i64 [ %i.bij, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjELb1EE9push_backERKS7_.exit.i126.i ], [ 0, %bb.hi ], [ %.01317.i.i.i132.i, %.lr.ph.i.i.i131.i ]
  %i.bis = getelementptr inbounds [16 x i8], ptr %i.bif, i64 %.013.lcssa.i.i.i130.i ; 2 uses
  store ptr %.sroa.01.0.copyload.i.i127.i, ptr %i.bis, align 8, !tbaa !186
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 8
  store i32 %.sroa.4.0.copyload.i.i129.i, ptr %i.bit, align 8, !tbaa !184
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.thread.i: ; preds = %.lr.ph.i.i.i149, %bb.gy, %_ZNSt14priority_queueISt4pairIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEjENS1_11SmallVectorIS7_Lj32EEENS1_11less_secondEE4pushEOS7_.exit136.i, %bb.gw, %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i.thread, %_ZN4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE6insertES5_.exit.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjNS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E16FindAndConstructERKS6_.exit.i120, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i115.i
  %i.biu = add nuw nsw i32 %.sroa.4304.0367.i, 1  ; 2 uses
  %.not333.i = icmp eq i32 %i.biu, %i.bap
  br i1 %.not333.i, label %._crit_edge369.i, label %.lr.ph368.i

._crit_edge374.i:                                 ; preds = %bb.ho, %._crit_edge369.i
  %.pr.i122 = load i32, ptr %i.aot, align 8, !tbaa !22 ; 2 uses
  %.not.i102.i = icmp eq i32 %.pr.i122, 0
  br i1 %.not.i102.i, label %.loopexit.i123, label %.lr.ph376.i, !llvm.loop !217

.lr.ph373.i:                                      ; preds = %._crit_edge369.i, %bb.ho
  %.sroa.0279.0371.i.a = phi ptr [ %i.bkd, %bb.ho ], [ %i.bar, %._crit_edge369.i ] ; 3 uses
  %30 = load ptr, ptr %.sroa.0279.0371.i.a, align 8, !tbaa !24 ; 3 uses
  %i.biv = load ptr, ptr %i.aoo, align 8, !tbaa !179 ; 6 uses
  %i.biw = load ptr, ptr %5, align 8, !tbaa !177  ; 3 uses
  %i.bix = icmp eq ptr %i.biv, %i.biw
  br i1 %i.bix, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %.lr.ph373.i
  %i.biy = load i32, ptr %i.aoq, align 4, !tbaa !181 ; 4 uses
  %i.biz = zext i32 %i.biy to i64                 ; 2 uses
  %.idx.i.i.i.i147 = shl nuw nsw i64 %i.biz, 3
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biw, i64 %.idx.i.i.i.i147
  %.not18.i.i.i.i = icmp eq i32 %i.biy, 0
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i138.i

.lr.ph.i.i.i138.i:                                ; preds = %bb.hj, %bb.hk
  %.01319.i.i.i.i = phi ptr [ %i.bjd, %bb.hk ], [ %i.biw, %bb.hj ] ; 3 uses
  %i.bjb = load ptr, ptr %.01319.i.i.i.i, align 8, !tbaa !203
  %i.bjc = icmp eq ptr %i.bjb, %30
  br i1 %i.bjc, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph.i.i.i138.i
  %i.bjd = getelementptr inbounds nuw i8, ptr %.01319.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i139.i = icmp eq ptr %i.bjd, %i.bja
  br i1 %.not.i.i.i139.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i138.i, !llvm.loop !218

._crit_edge.i.i.i.i:                              ; preds = %bb.hk, %bb.hj
  %i.bje = getelementptr inbounds nuw [8 x i8], ptr %i.biv, i64 %i.biz
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.hl:                                            ; preds = %.lr.ph373.i
  %i.bjf = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %30) #10 ; 2 uses
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !203
  %i.bjh = icmp eq ptr %i.bjg, %30
  %.pre.i.i137.i121 = load ptr, ptr %i.aoo, align 8, !tbaa !179 ; 4 uses
  %.pre4.i.i.i = load ptr, ptr %5, align 8, !tbaa !177 ; 3 uses
  br i1 %i.bjh, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, label %bb.hm

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i: ; preds = %bb.hl
  %.pre5.i.i.i = load i32, ptr %i.aoq, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.hm:                                            ; preds = %bb.hl
  %i.bji = icmp eq ptr %.pre.i.i137.i121, %.pre4.i.i.i
  %i.bjj = load i32, ptr %i.aoq, align 4          ; 2 uses
  %i.bjk = load i32, ptr %i.aop, align 8
  %.v.v.i14.i.i.i.i = select i1 %i.bji, i32 %i.bjj, i32 %i.bjk
  %.v.i15.i.i.i.i = zext i32 %.v.v.i14.i.i.i.i to i64
  %i.bjl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i137.i121, i64 %.v.i15.i.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i: ; preds = %.lr.ph.i.i.i138.i, %bb.hm, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, %._crit_edge.i.i.i.i
  %i.bjm = phi ptr [ %i.biv, %._crit_edge.i.i.i.i ], [ %.pre4.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %.pre4.i.i.i, %bb.hm ], [ %i.biv, %.lr.ph.i.i.i138.i ]
  %i.bjn = phi i32 [ %i.biy, %._crit_edge.i.i.i.i ], [ %.pre5.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %i.bjj, %bb.hm ], [ %i.biy, %.lr.ph.i.i.i138.i ]
  %i.bjo = phi ptr [ %i.biv, %._crit_edge.i.i.i.i ], [ %.pre.i.i137.i121, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %.pre.i.i137.i121, %bb.hm ], [ %i.biv, %.lr.ph.i.i.i138.i ] ; 2 uses
  %.2.i.i.i.i = phi ptr [ %i.bje, %._crit_edge.i.i.i.i ], [ %i.bjf, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %i.bjl, %bb.hm ], [ %.01319.i.i.i.i, %.lr.ph.i.i.i138.i ] ; 2 uses
  %i.bjp = icmp eq ptr %i.bjo, %i.bjm
  %i.bjq = load i32, ptr %i.aop, align 8
  %.v.v.i4.i.i.i.i = select i1 %i.bjp, i32 %i.bjn, i32 %i.bjq
  %.v.i5.i.i.i.i = zext i32 %.v.v.i4.i.i.i.i to i64
  %i.bjr = getelementptr inbounds nuw [8 x i8], ptr %i.bjo, i64 %.v.i5.i.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i.i = icmp eq ptr %.2.i.i.i.i, %i.bjr
  br i1 %.not3.i4.i.i6.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %.lr.ph.i5.i.i7.i.i.i.i

.lr.ph.i5.i.i7.i.i.i.i:                           ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, %.critedge2.i7.i.i9.i.i.i.i
  %.sroa.0.3.i.i.i.i = phi ptr [ %i.bjt, %.critedge2.i7.i.i9.i.i.i.i ], [ %.2.i.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i ] ; 3 uses
  %i.bjs = load ptr, ptr %.sroa.0.3.i.i.i.i, align 8, !tbaa !203
  %switch.i6.i.i8.i.i.i.i = icmp ugt ptr %i.bjs, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.i, label %.critedge2.i7.i.i9.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i

.critedge2.i7.i.i9.i.i.i.i:                       ; preds = %.lr.ph.i5.i.i7.i.i.i.i
  %i.bjt = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.i = icmp eq ptr %i.bjt, %i.bjr
  br i1 %.not.i8.i.i10.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %.lr.ph.i5.i.i7.i.i.i.i, !llvm.loop !219

_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i: ; preds = %.lr.ph.i5.i.i7.i.i.i.i
  %.not335.i = icmp eq ptr %.sroa.0.3.i.i.i.i, %i.bjr
  br i1 %.not335.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i, label %bb.ho

_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i: ; preds = %.critedge2.i7.i.i9.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i
  %i.bju = load i32, ptr %i.aot, align 8, !tbaa !22 ; 2 uses
  %i.bjv = load i32, ptr %i.aou, align 4, !tbaa !23
  %.not.i140.i = icmp ult i32 %i.bju, %i.bjv
  br i1 %.not.i140.i, label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i, label %bb.hn, !prof !25

bb.hn:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.aos, i64 noundef 0, i64 noundef 8) #10
  %.pre.i141.i = load i32, ptr %i.aot, align 8, !tbaa !22
  br label %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i

_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i: ; preds = %bb.hn, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i
  %i.bjw = phi i32 [ %.pre.i141.i, %bb.hn ], [ %i.bju, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.thread.i ]
  %i.bjx = load ptr, ptr %6, align 8, !tbaa !21
  %i.bjy = zext i32 %i.bjw to i64
  %i.bjz = getelementptr inbounds nuw [8 x i8], ptr %i.bjx, i64 %i.bjy
  %i.bka = load i64, ptr %.sroa.0279.0371.i.a, align 8
  store i64 %i.bka, ptr %i.bjz, align 1
  %i.bkb = load i32, ptr %i.aot, align 8, !tbaa !22
  %i.bkc = add i32 %i.bkb, 1
  store i32 %i.bkc, ptr %i.aot, align 8, !tbaa !22
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELb1EE9push_backERKS5_.exit142.i, %_ZNK4llvh15SmallPtrSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEE5countEPKS4_.exit.i
  %i.bkd = getelementptr inbounds nuw i8, ptr %.sroa.0279.0371.i.a, i64 8 ; 2 uses
  %.not334.i = icmp eq ptr %i.bkd, %i.bat
  br i1 %.not334.i, label %._crit_edge374.i, label %.lr.ph373.i

._crit_edge380.i:                                 ; preds = %.loopexit.i123, %._crit_edge.i114
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.bke = getelementptr inbounds nuw i8, ptr %i.ass, i64 56
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !113
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 72
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !43
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 56
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !220
  store ptr %i.bkj, ptr %8, align 8, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoy, i8 0, i64 32, i1 false)
  %i.bkk = load i32, ptr %i.aow, align 8, !tbaa !215
  %i.bkl = icmp eq i32 %i.bkk, 0
  %i.bkm = load ptr, ptr %3, align 8, !tbaa !205  ; 5 uses
  %i.bkn = load i32, ptr %i.aov, align 8, !tbaa !213 ; 2 uses
  %i.bko = zext i32 %i.bkn to i64                 ; 3 uses
  br i1 %i.bkl, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %._crit_edge380.i
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr %i.bkm, i64 %i.bko ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i

bb.hq:                                            ; preds = %._crit_edge380.i
  %.idx.i.i143.i = shl nuw nsw i64 %i.bko, 3
  %i.bkq = getelementptr i8, ptr %i.bkm, i64 %.idx.i.i143.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i = icmp eq i32 %i.bkn, 0
  br i1 %.not5.i5.i10.i2.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i

.lr.ph.i6.i12.i3.i.i.i:                           ; preds = %bb.hq, %.critedge2.i8.i14.i6.i.i.i
  %.sroa.0.3.i4.i.i.i = phi ptr [ %i.bks, %.critedge2.i8.i14.i6.i.i.i ], [ %i.bkm, %bb.hq ] ; 3 uses
  %i.bkr = load ptr, ptr %.sroa.0.3.i4.i.i.i, align 8, !tbaa !172
  %magicptr.i7.i13.i5.i.i.i = ptrtoint ptr %i.bkr to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i:                       ; preds = %.lr.ph.i6.i12.i3.i.i.i, %.lr.ph.i6.i12.i3.i.i.i
  %i.bks = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i = icmp eq ptr %i.bks, %i.bkq
  br i1 %.not.i9.i15.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i, !llvm.loop !246

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i.i, %.lr.ph.i6.i12.i3.i.i.i, %bb.hq, %bb.hp
  %.pn14.i.i.i = phi ptr [ %i.bkp, %bb.hp ], [ %i.bkm, %bb.hq ], [ %.sroa.0.3.i4.i.i.i, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.bkq, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %.pn12.i.i.i = phi ptr [ %i.bkp, %bb.hp ], [ %i.bkq, %bb.hq ], [ %i.bkq, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.bkq, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %i.bkt = getelementptr inbounds nuw [8 x i8], ptr %i.bkm, i64 %i.bko ; 2 uses
  %.not336381.i = icmp eq ptr %.pn14.i.i.i, %i.bkt
  br i1 %.not336381.i, label %._crit_edge384.i, label %.lr.ph383.i

._crit_edge384.i:                                 ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  store ptr %i.apc, ptr %10, align 8, !tbaa !21
  store i32 0, ptr %i.apd, align 8, !tbaa !22
  store i32 16, ptr %i.ape, align 4, !tbaa !23
  %i.bku = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ast) #10 ; 2 uses
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !21 ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  %i.bkx = load i32, ptr %i.bkw, align 8, !tbaa !22 ; 2 uses
  %i.bky = zext i32 %i.bkx to i64
  %.idx407.i = shl nuw nsw i64 %i.bky, 3
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkv, i64 %.idx407.i
  %.not89385.i = icmp eq i32 %i.bkx, 0
  br i1 %.not89385.i, label %._crit_edge389.i, label %.lr.ph388.i

.lr.ph383.i:                                      ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.sroa.0274.0382.i = phi ptr [ %.sroa.0274.2.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.pn14.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 2 uses
  %i.bla = load ptr, ptr %.sroa.0274.0382.i, align 8, !tbaa !172 ; 8 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bla, i64 64
  %i.blc = load ptr, ptr %i.blb, align 8, !tbaa !40
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %i.blc) #10
  %i.bld = call noundef ptr @_ZN6hermes9IRBuilder13createPhiInstEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #10
  %i.ble = load ptr, ptr %7, align 8, !tbaa !247  ; 2 uses
  %i.blf = load i32, ptr %i.aoz, align 8, !tbaa !250 ; 7 uses
  %i.blg = icmp eq i32 %i.blf, 0
  br i1 %i.blg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i323, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph383.i
  %i.blh = ptrtoint ptr %i.bla to i64
  %i.bli = trunc i64 %i.blh to i32                ; 2 uses
  %i.blj = lshr i32 %i.bli, 4
  %i.blk = lshr i32 %i.bli, 9
  %i.bll = xor i32 %i.blj, %i.blk
  %i.blm = add i32 %i.blf, -1                     ; 2 uses
  %.02944.i.i.i312 = and i32 %i.blm, %i.bll       ; 2 uses
  %i.bln = zext nneg i32 %.02944.i.i.i312 to i64
  %i.blo = getelementptr inbounds nuw [16 x i8], ptr %i.ble, i64 %i.bln ; 3 uses
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !172 ; 2 uses
  %i.blq = icmp eq ptr %i.bla, %i.blp
  br i1 %i.blq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit334, label %.lr.ph.i.i.i313, !prof !35

.lr.ph.i.i.i313:                                  ; preds = %bb.hr, %bb.ht
  %i.blr = phi ptr [ %i.bmb, %bb.ht ], [ %i.blp, %bb.hr ] ; 2 uses
  %i.bls = phi ptr [ %i.bma, %bb.ht ], [ %i.blo, %bb.hr ] ; 2 uses
  %.02947.i.i.i314 = phi i32 [ %.029.i.i.i319, %bb.ht ], [ %.02944.i.i.i312, %bb.hr ]
  %.02746.i.i.i315 = phi i32 [ %i.blx, %bb.ht ], [ 1, %bb.hr ] ; 2 uses
  %.03245.i.i.i316 = phi ptr [ %spec.select.i.i.i318, %bb.ht ], [ null, %bb.hr ] ; 4 uses
  %i.blt = icmp eq ptr %i.blr, inttoptr (i64 -8 to ptr)
  br i1 %i.blt, label %bb.hs, label %bb.ht, !prof !25

bb.hs:                                            ; preds = %.lr.ph.i.i.i313
  %.not.i.i.i322 = icmp eq ptr %.03245.i.i.i316, null
  %i.blu = select i1 %.not.i.i.i322, ptr %i.bls, ptr %.03245.i.i.i316
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i323

bb.ht:                                            ; preds = %.lr.ph.i.i.i313
  %i.blv = icmp eq ptr %i.blr, inttoptr (i64 -16 to ptr)
  %i.blw = icmp eq ptr %.03245.i.i.i316, null
  %or.cond.not.i.i.i317 = select i1 %i.blv, i1 %i.blw, i1 false
  %spec.select.i.i.i318 = select i1 %or.cond.not.i.i.i317, ptr %i.bls, ptr %.03245.i.i.i316
  %i.blx = add i32 %.02746.i.i.i315, 1
  %i.bly = add i32 %.02746.i.i.i315, %.02947.i.i.i314
  %.029.i.i.i319 = and i32 %i.bly, %i.blm         ; 2 uses
  %i.blz = zext i32 %.029.i.i.i319 to i64
  %i.bma = getelementptr inbounds nuw [16 x i8], ptr %i.ble, i64 %i.blz ; 3 uses
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !172 ; 2 uses
  %i.bmc = icmp eq ptr %i.bla, %i.bmb
  br i1 %i.bmc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit334, label %.lr.ph.i.i.i313, !prof !36, !llvm.loop !251

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i323: ; preds = %bb.hs, %.lr.ph383.i
  %.sink.i.i.i324 = phi ptr [ %i.blu, %bb.hs ], [ null, %.lr.ph383.i ]
  %i.bmd = load i32, ptr %i.apa, align 8, !tbaa !252 ; 3 uses
  %i.bme = shl i32 %i.bmd, 2
  %i.bmf = add i32 %i.bme, 4
  %i.bmg = mul i32 %i.blf, 3
  %.not.i.i4.i325 = icmp ult i32 %i.bmf, %i.bmg
  br i1 %.not.i.i4.i325, label %bb.hv, label %bb.hu, !prof !25

bb.hu:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i323
  %i.bmh = shl i32 %i.blf, 1
  br label %.sink.split.i.i.i326

bb.hv:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i323
  %i.bmi = load i32, ptr %i.apb, align 4, !tbaa !253
  %.neg.i.i.i331 = xor i32 %i.bmd, -1
  %.neg12.i.i.i332 = add i32 %i.blf, %.neg.i.i.i331
  %i.bmj = sub i32 %.neg12.i.i.i332, %i.bmi
  %i.bmk = lshr i32 %i.blf, 3
  %.not10.i.i.i333 = icmp ugt i32 %i.bmj, %i.bmk
  br i1 %.not10.i.i.i333, label %bb.hz, label %.sink.split.i.i.i326, !prof !25

.sink.split.i.i.i326:                             ; preds = %bb.hv, %bb.hu
  %.sink.i.i5.i327 = phi i32 [ %i.bmh, %bb.hu ], [ %i.blf, %bb.hv ]
  call void @_ZN4llvh8DenseMapIPN6hermes10BasicBlockEPNS1_11InstructionENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %7, i32 noundef %.sink.i.i5.i327)
  %i.bml = load ptr, ptr %7, align 8, !tbaa !247  ; 2 uses
  %i.bmm = load i32, ptr %i.aoz, align 8, !tbaa !250 ; 2 uses
  %i.bmn = icmp eq i32 %i.bmm, 0
  br i1 %i.bmn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit445, label %bb.hw

bb.hw:                                            ; preds = %.sink.split.i.i.i326
  %i.bmo = ptrtoint ptr %i.bla to i64
  %i.bmp = trunc i64 %i.bmo to i32                ; 2 uses
  %i.bmq = lshr i32 %i.bmp, 4
  %i.bmr = lshr i32 %i.bmp, 9
  %i.bms = xor i32 %i.bmq, %i.bmr
  %i.bmt = add i32 %i.bmm, -1                     ; 2 uses
  %.02944.i.i434 = and i32 %i.bmt, %i.bms         ; 2 uses
  %i.bmu = zext nneg i32 %.02944.i.i434 to i64
  %i.bmv = getelementptr inbounds nuw [16 x i8], ptr %i.bml, i64 %i.bmu ; 3 uses
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !172 ; 2 uses
  %i.bmx = icmp eq ptr %i.bla, %i.bmw
  br i1 %i.bmx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit445, label %.lr.ph.i.i435, !prof !35

.lr.ph.i.i435:                                    ; preds = %bb.hw, %bb.hy
  %i.bmy = phi ptr [ %i.bni, %bb.hy ], [ %i.bmw, %bb.hw ] ; 2 uses
  %i.bmz = phi ptr [ %i.bnh, %bb.hy ], [ %i.bmv, %bb.hw ] ; 2 uses
  %.02947.i.i436 = phi i32 [ %.029.i.i441, %bb.hy ], [ %.02944.i.i434, %bb.hw ]
  %.02746.i.i437 = phi i32 [ %i.bne, %bb.hy ], [ 1, %bb.hw ] ; 2 uses
  %.03245.i.i438 = phi ptr [ %spec.select.i.i440, %bb.hy ], [ null, %bb.hw ] ; 4 uses
  %i.bna = icmp eq ptr %i.bmy, inttoptr (i64 -8 to ptr)
  br i1 %i.bna, label %bb.hx, label %bb.hy, !prof !25

bb.hx:                                            ; preds = %.lr.ph.i.i435
  %.not.i.i444 = icmp eq ptr %.03245.i.i438, null
  %i.bnb = select i1 %.not.i.i444, ptr %i.bmz, ptr %.03245.i.i438
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit445

bb.hy:                                            ; preds = %.lr.ph.i.i435
  %i.bnc = icmp eq ptr %i.bmy, inttoptr (i64 -16 to ptr)
  %i.bnd = icmp eq ptr %.03245.i.i438, null
  %or.cond.not.i.i439 = select i1 %i.bnc, i1 %i.bnd, i1 false
  %spec.select.i.i440 = select i1 %or.cond.not.i.i439, ptr %i.bmz, ptr %.03245.i.i438
  %i.bne = add i32 %.02746.i.i437, 1
  %i.bnf = add i32 %.02746.i.i437, %.02947.i.i436
  %.029.i.i441 = and i32 %i.bnf, %i.bmt           ; 2 uses
  %i.bng = zext i32 %.029.i.i441 to i64
  %i.bnh = getelementptr inbounds nuw [16 x i8], ptr %i.bml, i64 %i.bng ; 3 uses
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !172 ; 2 uses
  %i.bnj = icmp eq ptr %i.bla, %i.bni
  br i1 %i.bnj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit445, label %.lr.ph.i.i435, !prof !36, !llvm.loop !251

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit445: ; preds = %bb.hy, %.sink.split.i.i.i326, %bb.hw, %bb.hx
  %.sink.i.i442 = phi ptr [ %i.bnb, %bb.hx ], [ null, %.sink.split.i.i.i326 ], [ %i.bmv, %bb.hw ], [ %i.bnh, %bb.hy ]
  %.pre.i.i328 = load i32, ptr %i.apa, align 8, !tbaa !252
  br label %bb.hz
end_hunk_3
begin_hunk_4_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
  %i.btj = load ptr, ptr %i.bti, align 8, !tbaa !172 ; 2 uses
  %i.btk = icmp eq ptr %i.brq, %i.btj
  br i1 %i.btk, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i412, !prof !35

.lr.ph.i.i412:                                    ; preds = %bb.ix, %bb.iz
  %i.btl = phi ptr [ %i.btv, %bb.iz ], [ %i.btj, %bb.ix ] ; 2 uses
  %i.btm = phi ptr [ %i.btu, %bb.iz ], [ %i.bti, %bb.ix ] ; 2 uses
  %.02947.i.i413 = phi i32 [ %.029.i.i418, %bb.iz ], [ %.02944.i.i411, %bb.ix ]
  %.02746.i.i414 = phi i32 [ %i.btr, %bb.iz ], [ 1, %bb.ix ] ; 2 uses
  %.03245.i.i415 = phi ptr [ %spec.select.i.i417, %bb.iz ], [ null, %bb.ix ] ; 4 uses
  %i.btn = icmp eq ptr %i.btl, inttoptr (i64 -8 to ptr)
  br i1 %i.btn, label %bb.iy, label %bb.iz, !prof !25

bb.iy:                                            ; preds = %.lr.ph.i.i412
  %.not.i.i421 = icmp eq ptr %.03245.i.i415, null
  %i.bto = select i1 %.not.i.i421, ptr %i.btm, ptr %.03245.i.i415
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

bb.iz:                                            ; preds = %.lr.ph.i.i412
  %i.btp = icmp eq ptr %i.btl, inttoptr (i64 -16 to ptr)
  %i.btq = icmp eq ptr %.03245.i.i415, null
  %or.cond.not.i.i416 = select i1 %i.btp, i1 %i.btq, i1 false
  %spec.select.i.i417 = select i1 %or.cond.not.i.i416, ptr %i.btm, ptr %.03245.i.i415
  %i.btr = add i32 %.02746.i.i414, 1
  %i.bts = add i32 %.02746.i.i414, %.02947.i.i413
  %.029.i.i418 = and i32 %i.bts, %i.btg           ; 2 uses
  %i.btt = zext i32 %.029.i.i418 to i64
  %i.btu = getelementptr inbounds nuw [16 x i8], ptr %i.bsy, i64 %i.btt ; 3 uses
  %i.btv = load ptr, ptr %i.btu, align 8, !tbaa !172 ; 2 uses
  %i.btw = icmp eq ptr %i.brq, %i.btv
  br i1 %i.btw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i412, !prof !36, !llvm.loop !251

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %bb.iz, %.sink.split.i.i.i284, %bb.ix, %bb.iy
  %.sink.i.i419 = phi ptr [ %i.bto, %bb.iy ], [ null, %.sink.split.i.i.i284 ], [ %i.bti, %bb.ix ], [ %i.btu, %bb.iz ]
  %.pre.i.i286 = load i32, ptr %i.apa, align 8, !tbaa !252
  br label %bb.ja

bb.ja:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, %bb.iw
  %i.btx = phi ptr [ %.sink.i.i419, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %.sink.i.i.i282, %bb.iw ] ; 4 uses
  %i.bty = phi i32 [ %.pre.i.i286, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %i.bsq, %bb.iw ]
  %i.btz = add i32 %i.bty, 1
  store i32 %i.btz, ptr %i.apa, align 8, !tbaa !252
  %i.bua = load ptr, ptr %i.btx, align 8, !tbaa !172
  %i.bub = icmp eq ptr %i.bua, inttoptr (i64 -8 to ptr)
  br i1 %i.bub, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.buc = load i32, ptr %i.apb, align 4, !tbaa !253
  %i.bud = add i32 %i.buc, -1
  store i32 %i.bud, ptr %i.apb, align 4, !tbaa !253
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i: ; preds = %bb.jb, %bb.ja
  store ptr %i.brq, ptr %i.btx, align 8, !tbaa !172
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btx, i64 8
  store ptr null, ptr %i.bue, align 8, !tbaa !62
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit: ; preds = %bb.iu, %bb.is, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i
  %.0.i280 = phi ptr [ %i.btx, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i ], [ %i.bsb, %bb.is ], [ %i.bsn, %bb.iu ]
  %i.buf = getelementptr inbounds nuw i8, ptr %.0.i280, i64 8
  %i.bug = load ptr, ptr %i.buf, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.buh = getelementptr inbounds nuw i8, ptr %i.brq, i64 24
  %i.bui = load ptr, ptr %i.buh, align 8, !tbaa !21, !noalias !254 ; 4 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %i.brq, i64 32
  %i.buk = load i32, ptr %i.buj, align 8, !tbaa !22, !noalias !254 ; 2 uses
  %i.bul = zext i32 %i.buk to i64                 ; 2 uses
  %.idx.i.i.i161.i = shl nuw nsw i64 %i.bul, 3
  %i.bum = getelementptr i8, ptr %i.bui, i64 %.idx.i.i.i161.i ; 6 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.buk, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, %bb.jc
  %.sroa.0.0.i.i.i = phi ptr [ %i.bus, %bb.jc ], [ %i.bui, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ] ; 3 uses
  %i.bun = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !62, !noalias !254 ; 2 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 16
  %i.bup = load i8, ptr %i.buo, align 8, !tbaa !64, !noalias !254
  %i.buq = add i8 %i.bup, -90
  %i.bur = icmp ult i8 %i.buq, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.bun, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.bur
  br i1 %.not1.i.i.i.i.i, label %bb.jc, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i

bb.jc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bus = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bus, %i.bum
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !257

_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i: ; preds = %bb.jc, %.lr.ph.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit
  %.sroa.0.1.i.i.i = phi ptr [ %i.bui, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit ], [ %i.bum, %bb.jc ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.but = getelementptr inbounds nuw [8 x i8], ptr %i.bui, i64 %i.bul ; 3 uses
  store ptr %i.api, ptr %11, align 8, !tbaa !21
  store i32 0, ptr %i.apj, align 8, !tbaa !22
  store i32 4, ptr %i.apk, align 4, !tbaa !23
  %.not4.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.but
  br i1 %.not4.i.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i, label %.lr.ph.i.i.i165.i

.lr.ph.i.i.i165.i:                                ; preds = %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.bvb, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i ], [ 0, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %.sroa.02.05.i.i.i.i = phi ptr [ %.sroa.02.2.i.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ]
  %i.buu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.buu, %i.bum
  br i1 %.not3.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i165.i, %bb.jd
  %.sroa.02.1.i.i.i.i = phi ptr [ %i.bva, %bb.jd ], [ %i.buu, %.lr.ph.i.i.i165.i ] ; 3 uses
  %i.buv = load ptr, ptr %.sroa.02.1.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 16
  %i.bux = load i8, ptr %i.buw, align 8, !tbaa !64
  %i.buy = add i8 %i.bux, -90
  %i.buz = icmp ult i8 %i.buy, -15
  %.not12.i.i.i.i.i.i = icmp eq ptr %i.buv, null
  %.not1.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i, %i.buz
  br i1 %.not1.i.i.i.i.i.i, label %bb.jd, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i

bb.jd:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bva = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bva, %i.bum
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !257

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i: ; preds = %bb.jd, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i165.i
  %.sroa.02.2.i.i.i.i = phi ptr [ %i.buu, %.lr.ph.i.i.i165.i ], [ %.sroa.02.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bva, %bb.jd ] ; 2 uses
  %i.bvb = add nuw nsw i64 %.06.i.i.i.i, 1        ; 3 uses
  %.not.i.i.i166.i = icmp eq ptr %.sroa.02.2.i.i.i.i, %i.but
  br i1 %.not.i.i.i166.i, label %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i, label %.lr.ph.i.i.i165.i, !llvm.loop !258

_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i
  %.not.i.i167.i = icmp samesign ult i64 %.06.i.i.i.i, 4
  br i1 %.not.i.i167.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.api, i64 noundef %i.bvb, i64 noundef 8) #10
  %.pre.i.i168.i = load i32, ptr %i.apj, align 8, !tbaa !22
  %.pre16.i.i.i = zext i32 %.pre.i.i168.i to i64
  %.pre.i169.i = load ptr, ptr %11, align 8, !tbaa !21
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i
  %i.bvc = phi ptr [ %.pre.i169.i, %bb.je ], [ %i.api, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %.pre16.i.i.i, %bb.je ], [ 0, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.bvd = getelementptr inbounds nuw [8 x i8], ptr %i.bvc, i64 %.pre-phi.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, %bb.jf
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bvo, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i ], [ %i.bvd, %bb.jf ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.2.i.i.i.i.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.jf ] ; 2 uses
  %i.bve = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bve, i64 56
  %i.bvg = load ptr, ptr %i.bvf, align 8, !tbaa !113
  store ptr %i.bvg, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !172
  %i.bvh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvh, %i.bum
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.jg
  %.sroa.04.1.i.i.i.i.i.i.i = phi ptr [ %i.bvn, %bb.jg ], [ %i.bvh, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bvi = load ptr, ptr %.sroa.04.1.i.i.i.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 16
  %i.bvk = load i8, ptr %i.bvj, align 8, !tbaa !64
  %i.bvl = add i8 %i.bvk, -90
  %i.bvm = icmp ult i8 %i.bvl, -15
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvi, null
  %.not1.i.i.i.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i.i.i.i, %i.bvm
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %bb.jg, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i

bb.jg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bvn = getelementptr inbounds nuw i8, ptr %.sroa.04.1.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i145 = icmp eq ptr %i.bvn, %i.bum
  br i1 %.not.i.i.i.i.i.i.i.i.i145, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !257

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i: ; preds = %bb.jg, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.04.2.i.i.i.i.i.i.i = phi ptr [ %i.bvh, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bvn, %bb.jg ], [ %.sroa.04.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bvo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.04.2.i.i.i.i.i.i.i, %i.but
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !259

_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i.i
  %i.bvp = add nuw i64 %.pre-phi.i.i.i, %i.bvb
  %i.bvq = trunc i64 %i.bvp to i32
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i: ; preds = %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i
  %i.bvr = phi ptr [ %i.api, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ], [ %i.bvc, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i ] ; 2 uses
  %i.bvs = phi i32 [ 0, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i ], [ %i.bvq, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i.i ] ; 3 uses
  store i32 %i.bvs, ptr %i.apj, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  store ptr %i.apl, ptr %12, align 8, !tbaa !177
  store ptr %i.apl, ptr %i.apm, align 8, !tbaa !179
  store i32 4, ptr %i.apn, align 8, !tbaa !180
  store i32 0, ptr %i.apo, align 4, !tbaa !181
  store i32 0, ptr %i.app, align 8, !tbaa !182
  %i.bvt = zext i32 %i.bvs to i64
  %.idx408.i = shl nuw nsw i64 %i.bvt, 3
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvr, i64 %.idx408.i
  %.not91390.i = icmp eq i32 %i.bvs, 0
  br i1 %.not91390.i, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i, label %.lr.ph392.i

._crit_edge393.i:                                 ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread500
  %.pre.i124 = load ptr, ptr %i.apm, align 8, !tbaa !179 ; 2 uses
  %.pre433.i = load ptr, ptr %12, align 8, !tbaa !177
  %i.bvv = icmp eq ptr %.pre.i124, %.pre433.i
  br i1 %i.bvv, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.jh

bb.jh:                                            ; preds = %._crit_edge393.i
  call void @free(ptr noundef %.pre.i124) #10
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.jh, %._crit_edge393.i, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  %i.bvw = load ptr, ptr %11, align 8, !tbaa !21  ; 2 uses
  %i.bvx = icmp eq ptr %i.bvw, %i.api
  br i1 %i.bvx, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i, label %bb.ji

bb.ji:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i
  call void @free(ptr noundef %i.bvw) #10
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i: ; preds = %bb.ji, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  %i.bvy = getelementptr inbounds nuw i8, ptr %.sroa.0267.0395.i, i64 8 ; 3 uses
  %.not5.i3.i.i170.i = icmp eq ptr %i.bvy, %.pn12.i.i152.i
  br i1 %.not5.i3.i.i170.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i, label %.lr.ph.i4.i.i171.i

.lr.ph.i4.i.i171.i:                               ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i, %.critedge2.i6.i.i173.i
  %.sroa.0267.1.i = phi ptr [ %i.bwa, %.critedge2.i6.i.i173.i ], [ %i.bvy, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i ] ; 3 uses
  %i.bvz = load ptr, ptr %.sroa.0267.1.i, align 8, !tbaa !172
  %magicptr.i5.i.i172.i = ptrtoint ptr %i.bvz to i64
  switch i64 %magicptr.i5.i.i172.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i [
    i64 -8, label %.critedge2.i6.i.i173.i
    i64 -16, label %.critedge2.i6.i.i173.i
  ]

.critedge2.i6.i.i173.i:                           ; preds = %.lr.ph.i4.i.i171.i, %.lr.ph.i4.i.i171.i
  %i.bwa = getelementptr inbounds nuw i8, ptr %.sroa.0267.1.i, i64 8 ; 3 uses
  %.not.i7.i.i174.i = icmp eq ptr %i.bwa, %.pn12.i.i152.i
  br i1 %.not.i7.i.i174.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i, label %.lr.ph.i4.i.i171.i, !llvm.loop !246

_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit175.i: ; preds = %.critedge2.i6.i.i173.i, %.lr.ph.i4.i.i171.i, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i
  %.sroa.0267.2.i = phi ptr [ %i.bvy, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EED2Ev.exit.i ], [ %.sroa.0267.1.i, %.lr.ph.i4.i.i171.i ], [ %i.bwa, %.critedge2.i6.i.i173.i ] ; 2 uses
  %.not338.i = icmp eq ptr %.sroa.0267.2.i, %i.bof
  br i1 %.not338.i, label %._crit_edge397.i, label %.lr.ph396.i

.lr.ph392.i:                                      ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread500
  %.086391.i.a = phi ptr [ %i.bwt, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread500 ], [ %i.bvr, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj4EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEEERKNS_14iterator_rangeIT_EE.exit.i ] ; 2 uses
  %31 = load ptr, ptr %.086391.i.a, align 8, !tbaa !172 ; 6 uses
  %i.bwb = load ptr, ptr %i.apm, align 8, !tbaa !179, !noalias !260
  %i.bwc = load ptr, ptr %12, align 8, !tbaa !177, !noalias !260 ; 3 uses
  %i.bwd = icmp eq ptr %i.bwb, %i.bwc
  br i1 %i.bwd, label %bb.jj, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.jj:                                            ; preds = %.lr.ph392.i
  %i.bwe = load i32, ptr %i.apo, align 4, !tbaa !181, !noalias !260 ; 4 uses
  %i.bwf = zext i32 %i.bwe to i64
  %.idx.i.i190.i = shl nuw nsw i64 %i.bwf, 3
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwc, i64 %.idx.i.i190.i ; 2 uses
  %.not63.i.i191.i = icmp eq i32 %i.bwe, 0
  br i1 %.not63.i.i191.i, label %.critedge.thread.i.i200.i, label %.lr.ph.i.i192.i

.lr.ph.i.i192.i:                                  ; preds = %bb.jj, %bb.jk
  %.065.i.i193.i = phi ptr [ %spec.select.i.i196.i, %bb.jk ], [ null, %bb.jj ]
  %.04964.i.i194.i = phi ptr [ %i.bwj, %bb.jk ], [ %i.bwc, %bb.jj ] ; 3 uses
  %i.bwh = load ptr, ptr %.04964.i.i194.i, align 8, !tbaa !203, !noalias !260 ; 2 uses
  %.not27.i.i195.i = icmp eq ptr %i.bwh, %31
  br i1 %.not27.i.i195.i, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread500, label %bb.jk

bb.jk:                                            ; preds = %.lr.ph.i.i192.i
  %i.bwi = icmp eq ptr %i.bwh, inttoptr (i64 -2 to ptr)
  %spec.select.i.i196.i = select i1 %i.bwi, ptr %.04964.i.i194.i, ptr %.065.i.i193.i ; 3 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %.04964.i.i194.i, i64 8 ; 2 uses
  %.not.i.i197.i = icmp eq ptr %i.bwj, %i.bwg
  br i1 %.not.i.i197.i, label %.critedge.i.i198.i, label %.lr.ph.i.i192.i, !llvm.loop !204

.critedge.i.i198.i:                               ; preds = %bb.jk
  %.not28.i.i199.i = icmp eq ptr %spec.select.i.i196.i, null
  br i1 %.not28.i.i199.i, label %.critedge.thread.i.i200.i, label %bb.jl

bb.jl:                                            ; preds = %.critedge.i.i198.i
  store ptr %31, ptr %spec.select.i.i196.i, align 8, !tbaa !203, !noalias !260
  %i.bwk = load i32, ptr %i.app, align 8, !tbaa !182, !noalias !260
  %i.bwl = add i32 %i.bwk, -1
  store i32 %i.bwl, ptr %i.app, align 8, !tbaa !182, !noalias !260
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

.critedge.thread.i.i200.i:                        ; preds = %.critedge.i.i198.i, %bb.jj
  %i.bwm = load i32, ptr %i.apn, align 8, !tbaa !180, !noalias !260
  %i.bwn = icmp ult i32 %i.bwe, %i.bwm
  br i1 %i.bwn, label %bb.jm, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.jm:                                            ; preds = %.critedge.thread.i.i200.i
  %i.bwo = add nuw i32 %i.bwe, 1
  store i32 %i.bwo, ptr %i.apo, align 4, !tbaa !181, !noalias !260
  store ptr %31, ptr %i.bwg, align 8, !tbaa !203, !noalias !260
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i: ; preds = %.lr.ph392.i, %.critedge.thread.i.i200.i
  %i.bwp = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %12, ptr noundef %31) #10, !noalias !260
  %i.bwq = extractvalue { ptr, i8 } %i.bwp, 1
  %i.bwr = trunc nuw i8 %i.bwq to i1
  br i1 %i.bwr, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread500

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread: ; preds = %bb.jl, %bb.jm, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i
  %.val.i = load ptr, ptr %i.aoi, align 8, !tbaa !171
  %.val96.i = load i32, ptr %i.aoj, align 8, !tbaa !170
  %i.bws = call fastcc noundef ptr @_ZL15getLiveOutValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_(ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr %.val.i, i32 %.val96.i, ptr noundef nonnull align 8 dereferenceable(20) %9)
  call void @_ZN6hermes7PhiInst8addEntryEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %i.bug, ptr noundef %i.bws, ptr noundef %31) #10
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread500

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread500: ; preds = %.lr.ph.i.i192.i, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i
  %i.bwt = getelementptr inbounds nuw i8, ptr %.086391.i.a, i64 8 ; 2 uses
  %.not91.i = icmp eq ptr %i.bwt, %i.bvu
  br i1 %.not91.i, label %._crit_edge393.i, label %.lr.ph392.i

._crit_edge402.i:                                 ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125, %._crit_edge397.i
  %i.bwu = phi i32 [ 0, %._crit_edge397.i ], [ %i.cae, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125 ] ; 2 uses
  %i.bwv = load i32, ptr %i.apg, align 8, !tbaa !252
  %i.bww = icmp eq i32 %i.bwv, 0
  %i.bwx = load ptr, ptr %9, align 8, !tbaa !247  ; 5 uses
  %i.bwy = load i32, ptr %i.apf, align 8, !tbaa !250 ; 2 uses
  %i.bwz = zext i32 %i.bwy to i64                 ; 3 uses
  br i1 %i.bww, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %._crit_edge402.i
  %i.bxa = getelementptr inbounds nuw [16 x i8], ptr %i.bwx, i64 %i.bwz ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i

bb.jo:                                            ; preds = %._crit_edge402.i
  %.idx.i.i126 = shl nuw nsw i64 %i.bwz, 4
  %i.bxb = getelementptr i8, ptr %i.bwx, i64 %.idx.i.i126 ; 5 uses
  %.not5.i5.i10.i2.i.i127 = icmp eq i32 %i.bwy, 0
  br i1 %.not5.i5.i10.i2.i.i127, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i128

.lr.ph.i6.i12.i3.i.i128:                          ; preds = %bb.jo, %.critedge2.i8.i14.i6.i.i131
  %.sroa.0.3.i4.i.i129 = phi ptr [ %i.bxd, %.critedge2.i8.i14.i6.i.i131 ], [ %i.bwx, %bb.jo ] ; 3 uses
  %i.bxc = load ptr, ptr %.sroa.0.3.i4.i.i129, align 8, !tbaa !172
  %magicptr.i7.i13.i5.i.i130 = ptrtoint ptr %i.bxc to i64
  switch i64 %magicptr.i7.i13.i5.i.i130, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i131
    i64 -16, label %.critedge2.i8.i14.i6.i.i131
  ]

.critedge2.i8.i14.i6.i.i131:                      ; preds = %.lr.ph.i6.i12.i3.i.i128, %.lr.ph.i6.i12.i3.i.i128
  %i.bxd = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i129, i64 16 ; 2 uses
  %.not.i9.i15.i7.i.i132 = icmp eq ptr %i.bxd, %i.bxb
  br i1 %.not.i9.i15.i7.i.i132, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i128, !llvm.loop !263

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i131, %.lr.ph.i6.i12.i3.i.i128, %bb.jo, %bb.jn
  %.pn14.i.i133 = phi ptr [ %i.bxa, %bb.jn ], [ %i.bwx, %bb.jo ], [ %i.bxb, %.critedge2.i8.i14.i6.i.i131 ], [ %.sroa.0.3.i4.i.i129, %.lr.ph.i6.i12.i3.i.i128 ] ; 2 uses
  %.pn12.i.i134 = phi ptr [ %i.bxa, %bb.jn ], [ %i.bxb, %bb.jo ], [ %i.bxb, %.lr.ph.i6.i12.i3.i.i128 ], [ %i.bxb, %.critedge2.i8.i14.i6.i.i131 ] ; 2 uses
  %i.bxe = getelementptr inbounds nuw [16 x i8], ptr %i.bwx, i64 %i.bwz ; 2 uses
  %.not339403.i = icmp eq ptr %.pn14.i.i133, %i.bxe
  br i1 %.not339403.i, label %._crit_edge406.i, label %.lr.ph405.i

.lr.ph401.i:                                      ; preds = %._crit_edge397.i, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125
  %.087399.i = phi ptr [ %i.caf, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125 ], [ %i.brm, %._crit_edge397.i ] ; 4 uses
  %i.bxf = load ptr, ptr %.087399.i, align 8, !tbaa !264
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 56
  %i.bxh = load ptr, ptr %i.bxg, align 8, !tbaa !113 ; 7 uses
  %.val97.i = load ptr, ptr %i.aoi, align 8       ; 5 uses
  %.val98.i = load i32, ptr %i.aoj, align 8       ; 5 uses
  %i.bxi = load ptr, ptr %7, align 8, !tbaa !247  ; 4 uses
  %i.bxj = load i32, ptr %i.aoz, align 8, !tbaa !250 ; 4 uses
  %i.bxk = icmp eq i32 %i.bxj, 0
  br i1 %i.bxk, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i, label %bb.jp

bb.jp:                                            ; preds = %.lr.ph401.i
  %i.bxl = ptrtoint ptr %i.bxh to i64
  %i.bxm = trunc i64 %i.bxl to i32                ; 2 uses
  %i.bxn = lshr i32 %i.bxm, 4
  %i.bxo = lshr i32 %i.bxm, 9
  %i.bxp = xor i32 %i.bxn, %i.bxo
  %i.bxq = add i32 %i.bxj, -1                     ; 2 uses
  %.02944.i.i.i.i.i = and i32 %i.bxq, %i.bxp      ; 2 uses
  %i.bxr = zext nneg i32 %.02944.i.i.i.i.i to i64
  %i.bxs = getelementptr inbounds nuw [16 x i8], ptr %i.bxi, i64 %i.bxr ; 2 uses
  %i.bxt = load ptr, ptr %i.bxs, align 8, !tbaa !172 ; 2 uses
  %i.bxu = icmp eq ptr %i.bxh, %i.bxt
  br i1 %i.bxu, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.i, label %.lr.ph.i.i.i.i201.i, !prof !35

.lr.ph.i.i.i.i201.i:                              ; preds = %bb.jp, %bb.jq
  %i.bxv = phi ptr [ %i.byb, %bb.jq ], [ %i.bxt, %bb.jp ]
  %.02947.i.i.i.i.i = phi i32 [ %.029.i.i.i.i.i, %bb.jq ], [ %.02944.i.i.i.i.i, %bb.jp ]
  %.02746.i.i.i.i.i = phi i32 [ %i.bxx, %bb.jq ], [ 1, %bb.jp ] ; 2 uses
  %i.bxw = icmp eq ptr %i.bxv, inttoptr (i64 -8 to ptr)
  br i1 %i.bxw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i, label %bb.jq, !prof !25

bb.jq:                                            ; preds = %.lr.ph.i.i.i.i201.i
  %i.bxx = add i32 %.02746.i.i.i.i.i, 1
  %i.bxy = add i32 %.02746.i.i.i.i.i, %.02947.i.i.i.i.i
  %.029.i.i.i.i.i = and i32 %i.bxy, %i.bxq        ; 2 uses
  %i.bxz = zext i32 %.029.i.i.i.i.i to i64
  %i.bya = getelementptr inbounds nuw [16 x i8], ptr %i.bxi, i64 %i.bxz ; 2 uses
  %i.byb = load ptr, ptr %i.bya, align 8, !tbaa !172 ; 2 uses
  %i.byc = icmp eq ptr %i.bxh, %i.byb
  br i1 %i.byc, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.i, label %.lr.ph.i.i.i.i201.i, !prof !36, !llvm.loop !266

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i201.i, %.lr.ph401.i
  %i.byd = zext i32 %i.bxj to i64
  %i.bye = getelementptr inbounds nuw [16 x i8], ptr %i.bxi, i64 %i.byd
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.i: ; preds = %bb.jq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i, %bb.jp
  %.sink.i.i.ph.pn.i.i.i = phi ptr [ %i.bye, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i.i ], [ %i.bxs, %bb.jp ], [ %i.bya, %bb.jq ] ; 2 uses
  %i.byf = zext i32 %i.bxj to i64
  %i.byg = getelementptr inbounds nuw [16 x i8], ptr %i.bxi, i64 %i.byf
  %.not5.i.i = icmp eq ptr %.sink.i.i.ph.pn.i.i.i, %i.byg
  br i1 %.not5.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.i
  %i.byh = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i.i, i64 8
  %i.byi = load ptr, ptr %i.byh, align 8, !tbaa !267 ; 2 uses
  %i.byj = icmp eq ptr %i.byi, null
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byi, i64 16
  %spec.select.i202.i = select i1 %i.byj, ptr null, ptr %i.byk
  br label %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i

bb.js:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockEPNS2_11InstructionENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i.i
  %i.byl = icmp eq i32 %.val98.i, 0
  br i1 %i.byl, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bym = ptrtoint ptr %i.bxh to i64
  %i.byn = trunc i64 %i.bym to i32                ; 2 uses
  %i.byo = lshr i32 %i.byn, 4
  %i.byp = lshr i32 %i.byn, 9
  %i.byq = xor i32 %i.byo, %i.byp
  %i.byr = add i32 %.val98.i, -1                  ; 2 uses
  %.02944.i.i.i15.i.i = and i32 %i.byq, %i.byr    ; 2 uses
  %i.bys = zext nneg i32 %.02944.i.i.i15.i.i to i64
  %i.byt = getelementptr inbounds nuw [16 x i8], ptr %.val97.i, i64 %i.bys ; 2 uses
  %i.byu = load ptr, ptr %i.byt, align 8, !tbaa !172 ; 2 uses
  %i.byv = icmp eq ptr %i.bxh, %i.byu
  br i1 %i.byv, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i.i, label %.lr.ph.i.i.i16.i.i, !prof !35

.lr.ph.i.i.i16.i.i:                               ; preds = %bb.jt, %bb.ju
  %i.byw = phi ptr [ %i.bzc, %bb.ju ], [ %i.byu, %bb.jt ]
  %.02947.i.i.i17.i.i = phi i32 [ %.029.i.i.i19.i.i, %bb.ju ], [ %.02944.i.i.i15.i.i, %bb.jt ]
  %.02746.i.i.i18.i.i = phi i32 [ %i.byy, %bb.ju ], [ 1, %bb.jt ] ; 2 uses
  %i.byx = icmp eq ptr %i.byw, inttoptr (i64 -8 to ptr)
  br i1 %i.byx, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i.i.i, label %bb.ju, !prof !25

bb.ju:                                            ; preds = %.lr.ph.i.i.i16.i.i
  %i.byy = add i32 %.02746.i.i.i18.i.i, 1
  %i.byz = add i32 %.02746.i.i.i18.i.i, %.02947.i.i.i17.i.i
  %.029.i.i.i19.i.i = and i32 %i.byz, %i.byr      ; 2 uses
  %i.bza = zext i32 %.029.i.i.i19.i.i to i64
  %i.bzb = getelementptr inbounds nuw [16 x i8], ptr %.val97.i, i64 %i.bza ; 2 uses
  %i.bzc = load ptr, ptr %i.bzb, align 8, !tbaa !172 ; 2 uses
  %i.bzd = icmp eq ptr %i.bxh, %i.bzc
  br i1 %i.bzd, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i.i, label %.lr.ph.i.i.i16.i.i, !prof !36, !llvm.loop !183

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i16.i.i, %bb.js
  %i.bze = zext i32 %.val98.i to i64
  %i.bzf = getelementptr inbounds nuw [16 x i8], ptr %.val97.i, i64 %i.bze
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i.i: ; preds = %bb.ju, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i.i.i, %bb.jt
  %.sink.i.ph.pn.i.i.i.i = phi ptr [ %i.bzf, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i.i.i ], [ %i.byt, %bb.jt ], [ %i.bzb, %bb.ju ] ; 2 uses
  %i.bzg = zext i32 %.val98.i to i64
  %i.bzh = getelementptr inbounds nuw [16 x i8], ptr %.val97.i, i64 %i.bzg
  %.not.i.i203.i = icmp eq ptr %.sink.i.ph.pn.i.i.i.i, %i.bzh
  br i1 %.not.i.i203.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i.i

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i.i: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i.i
  %i.bzi = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i.i.i, i64 8
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !24 ; 2 uses
  %.not.i204.i = icmp eq ptr %i.bzj, null
  br i1 %.not.i204.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i, label %bb.jv

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i: ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bxh, i64 72
  %i.bzl = load ptr, ptr %i.bzk, align 8, !tbaa !43
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzl, i64 56
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !220
  store ptr %i.bzn, ptr %2, align 8, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.apt, i8 0, i64 32, i1 false)
  %i.bzo = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i

bb.jv:                                            ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.i.i
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzj, i64 8
  %i.bzq = load ptr, ptr %i.bzp, align 8, !tbaa !199
  %i.bzr = load ptr, ptr %i.bzq, align 8, !tbaa !191
  %i.bzs = call fastcc noundef ptr @_ZL15getLiveOutValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_(ptr noundef %i.bzr, ptr noundef nonnull readonly align 8 dereferenceable(20) %7, ptr readonly %.val97.i, i32 %.val98.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %9)
  br label %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i

_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i: ; preds = %bb.jv, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i, %bb.jr
  %.1.i.i = phi ptr [ %spec.select.i202.i, %bb.jr ], [ %i.bzs, %bb.jv ], [ %i.bzo, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit.thread.i.i ]
  %i.bzt = load ptr, ptr %.087399.i, align 8, !tbaa !264
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 16
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bzu, ptr noundef %.1.i.i) #10
  %i.bzv = load ptr, ptr %.087399.i, align 8, !tbaa !264
  %i.bzw = load i32, ptr %i.apr, align 8, !tbaa !22 ; 2 uses
  %i.bzx = load i32, ptr %i.aps, align 4, !tbaa !23
  %.not.i.i205.i = icmp ult i32 %i.bzw, %i.bzx
  br i1 %.not.i.i205.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125, label %bb.jw, !prof !25

bb.jw:                                            ; preds = %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull %i.apq, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i206.i = load i32, ptr %i.apr, align 8, !tbaa !22
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i125: ; preds = %bb.jw, %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i
  %i.bzy = phi i32 [ %.pre.i.i206.i, %bb.jw ], [ %i.bzw, %_ZL14getLiveInValuePN6hermes10BasicBlockERN4llvh8DenseMapIS1_PNS_11InstructionENS2_12DenseMapInfoIS1_EENS2_6detail12DenseMapPairIS1_S5_EEEERNS_13DominanceInfoESC_.exit.i ]
  %i.bzz = load ptr, ptr %13, align 8, !tbaa !21
  %i.caa = zext i32 %i.bzy to i64
  %i.cab = getelementptr inbounds nuw [8 x i8], ptr %i.bzz, i64 %i.caa
  %i.cac = ptrtoint ptr %i.bzv to i64
end_hunk_4
