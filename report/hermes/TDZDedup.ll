inline.NumInlined: 693
inline.NumDeleted: 401
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::IRBuilder::InstructionDestroyer" = type { %"class.llvh::SmallVector.76" }
%"class.llvh::SmallVector.76" = type { %"class.llvh::SmallVectorImpl.29", %"struct.llvh::SmallVectorStorage.77" }
%"class.llvh::SmallVectorImpl.29" = type { %"class.llvh::SmallVectorTemplateBase.30" }
%"class.llvh::SmallVectorTemplateBase.30" = type { %"class.llvh::SmallVectorTemplateCommon.31" }
%"class.llvh::SmallVectorTemplateCommon.31" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.77" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.33"] }
%"struct.llvh::AlignedCharArrayUnion.33" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.llvh::SmallVector.68" = type { %"class.llvh::SmallVectorImpl.69", %"struct.llvh::SmallVectorStorage.72" }
%"class.llvh::SmallVectorImpl.69" = type { %"class.llvh::SmallVectorTemplateBase.70" }
%"class.llvh::SmallVectorTemplateBase.70" = type { %"class.llvh::SmallVectorTemplateCommon.71" }
%"class.llvh::SmallVectorTemplateCommon.71" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.72" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.73"] }
%"struct.llvh::AlignedCharArrayUnion.73" = type { %"struct.llvh::AlignedCharArray" }
%"class.hermes::DominanceInfo" = type { %"class.llvh::DominatorTreeBase" }
%"class.llvh::DominatorTreeBase" = type { %"class.llvh::SmallVector", %"class.llvh::DenseMap", ptr, ptr, i8, i32 }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage" = type { [1 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::DenseMap" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.hermes::(anonymous namespace)::TDZDedupContext" = type { %"class.hermes::DomTreeDFS::Visitor", ptr, %"class.llvh::DenseSet", %"class.hermes::ScopedHashTable" }
%"class.hermes::DomTreeDFS::Visitor" = type { %"class.llvh::RecyclingAllocator", ptr }
%"class.llvh::RecyclingAllocator" = type { %"class.llvh::Recycler", %"class.llvh::BumpPtrAllocatorImpl" }
%"class.llvh::Recycler" = type { ptr }
%"class.llvh::BumpPtrAllocatorImpl" = type <{ ptr, ptr, %"class.llvh::SmallVector.0", %"class.llvh::SmallVector.6", i64, i64, [8 x i8] }>
%"class.llvh::SmallVector.0" = type { %"class.llvh::SmallVectorImpl.1", %"struct.llvh::SmallVectorStorage.4" }
%"class.llvh::SmallVectorImpl.1" = type { %"class.llvh::SmallVectorTemplateBase.2" }
%"class.llvh::SmallVectorTemplateBase.2" = type { %"class.llvh::SmallVectorTemplateCommon.3" }
%"class.llvh::SmallVectorTemplateCommon.3" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.4" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.5"] }
%"struct.llvh::AlignedCharArrayUnion.5" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallVector.6" = type { %"class.llvh::SmallVectorImpl.7" }
%"class.llvh::SmallVectorImpl.7" = type { %"class.llvh::SmallVectorTemplateBase.8" }
%"class.llvh::SmallVectorTemplateBase.8" = type { %"class.llvh::SmallVectorTemplateCommon.9" }
%"class.llvh::SmallVectorTemplateCommon.9" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::DenseSet" = type { %"class.llvh::detail::DenseSetImpl" }
%"class.llvh::detail::DenseSetImpl" = type { %"class.llvh::DenseMap.11" }
%"class.llvh::DenseMap.11" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.hermes::ScopedHashTable" = type { %"class.llvh::DenseMap.14", ptr }
%"class.llvh::DenseMap.14" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.18" }
%"struct.std::_Head_base.18" = type { ptr }

$_ZN6hermes8TDZDedupD0Ev = comdat any

$_ZN4llvh8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes5ValueEPNS1_19ScopedHashTableNodeIS3_bEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EEE4growEj = comdat any

$_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17clearCurrentScopeEv = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes8TDZDedupE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes8TDZDedupD0Ev, ptr @_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE] }, align 8
@.str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TDZDedup\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 13 uses
  %3 = alloca %"class.llvh::SmallVector.68", align 8 ; 12 uses
  %4 = alloca %"class.hermes::DominanceInfo", align 8 ; 9 uses
  %5 = alloca %"class.hermes::(anonymous namespace)::TDZDedupContext", align 8 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6hermes13DominanceInfoC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %5, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 4, ptr %i.e, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  store ptr %4, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr %1, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 7 uses
  store ptr null, ptr %i.m, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.l, i8 0, i64 44, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.039.079.i = load ptr, ptr %i.n, align 8, !tbaa !44 ; 2 uses
  %.not5480.i = icmp eq ptr %.sroa.039.079.i, %i.o
  br i1 %.not5480.i, label %._crit_edge84.i, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 3 uses
  br label %bb.ba

._crit_edge84.i.loopexit:                         ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !47
  br label %._crit_edge84.i

._crit_edge84.i:                                  ; preds = %._crit_edge84.i.loopexit, %bb.a
  %i.s = phi ptr [ %.pre, %._crit_edge84.i.loopexit ], [ %4, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  store i32 0, ptr %i.w, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 4, ptr %i.x, align 4, !tbaa !11
  %i.y = call fastcc noundef ptr @_ZN6hermes10DomTreeDFS7VisitorINS_12_GLOBAL__N_115TDZDedupContextENS2_9StackNodeEE7newNodeEPKN4llvh15DomTreeNodeBaseINS_10BasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef %i.u)
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !10  ; 2 uses
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !11
  %.not.i.i.i.i = icmp ult i32 %i.aa, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i, label %bb.b, !prof !59

bb.b:                                             ; preds = %._crit_edge84.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i: ; preds = %bb.b, %._crit_edge84.i
  %i.ac = phi i32 [ %.pre.i.i.i.i, %bb.b ], [ %i.aa, %._crit_edge84.i ]
  %i.ad = load ptr, ptr %3, align 8, !tbaa !7
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  store i64 %i.z, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !10
  %i.ah = add i32 %i.ag, 1                        ; 3 uses
  store i32 %i.ah, ptr %i.w, align 8, !tbaa !10
  %.not.i1537.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i1537.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 164 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.ay, %.lr.ph.i.i.i
  %.038.i.i.i = phi i1 [ false, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.ay ] ; 3 uses
  %i.aq = phi i32 [ %i.ah, %.lr.ph.i.i.i ], [ %.pr.i.i.i, %bb.ay ] ; 2 uses
  %.val11.i.i.i = load ptr, ptr %3, align 8, !tbaa !7
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val11.i.i.i, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60 ; 8 uses
  %i.av = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  %.val13.i.i.i = load i8, ptr %i.av, align 8, !tbaa !62, !range !67, !noundef !68
  %i.aw = trunc nuw i8 %.val13.i.i.i to i1
  br i1 %i.aw, label %bb.av, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val14.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !69
  %.val14.val.i.i.i = load ptr, ptr %.val14.i.i.i, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.ai, ptr %2, align 8, !tbaa !7
  store i32 0, ptr %i.aj, align 8, !tbaa !10
  store i32 8, ptr %i.ak, align 4, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %.val14.val.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.val14.val.i.i.i, i64 56 ; 2 uses
  %.sroa.08.028.i.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !44 ; 2 uses
  %.not2029.i.i.i.i = icmp eq ptr %.sroa.08.028.i.i.i.i, %i.ay
  br i1 %.not2029.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i
  %.pre.i17.i.i.i = load ptr, ptr %2, align 8, !tbaa !7 ; 3 uses
  %.pre34.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !10 ; 2 uses
  %i.az = zext i32 %.pre34.i.i.i.i to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i17.i.i.i, i64 %.idx.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %.pre34.i.i.i.i, 0
  br i1 %.not8.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !7
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %._crit_edge.i.i.i.i
  %i.bb = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.pre.i17.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ai
  br i1 %i.bc, label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @free(ptr noundef %i.bb) #10
  br label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.pre.i17.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !77
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bd) #10
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i
  %.sroa.08.031.i.i.i.i = phi ptr [ %.sroa.08.0.i.i.i.i, %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i ], [ %.sroa.08.028.i.i.i.i, %bb.d ] ; 11 uses
  %.030.i.i.i.i = phi i1 [ %.1.i.i.i.i, %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i ], [ false, %bb.d ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.031.i.i.i.i, i64 16 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !81  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 62
  %spec.select.i.i.i.i.i = select i1 %i.bh, ptr %.sroa.08.031.i.i.i.i, ptr null ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i, null ; 2 uses
  br i1 %.not.i16.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 0) #10 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !81
  switch i8 %i.bj, label %bb.g [
    i8 49, label %.sink.split.i.i.i.i
    i8 22, label %.sink.split.i.i.i.i
  ]

.sink.split.i.i.i.i:                              ; preds = %bb.f, %bb.f
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %i.bl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bk, i32 noundef 0) #10
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i.i.i, %bb.f
  %storemerge55.i.i.i.i = phi ptr [ %i.bi, %bb.f ], [ %i.bl, %.sink.split.i.i.i.i ]
  store ptr %storemerge55.i.i.i.i, ptr %i.a, align 8, !tbaa !79
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  switch i8 %i.bg, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i [
    i8 51, label %bb.i
    i8 50, label %bb.p
  ]

bb.i:                                             ; preds = %bb.h
  %i.bm = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 1) #10 ; 4 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !79
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !91  ; 2 uses
  %i.bo = load i32, ptr %i.al, align 8, !tbaa !92 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i32 %i.br, 4
  %i.bt = lshr i32 %i.br, 9
  %i.bu = xor i32 %i.bs, %i.bt
  %i.bv = add i32 %i.bo, -1                       ; 2 uses
  %.02944.i.i.i.i.i.i.i = and i32 %i.bv, %i.bu    ; 2 uses
  %i.bw = zext nneg i32 %.02944.i.i.i.i.i.i.i to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !79 ; 2 uses
  %i.bz = icmp eq ptr %i.bm, %i.by
  br i1 %i.bz, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !prof !93

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %bb.k
  %i.ca = phi ptr [ %i.cg, %bb.k ], [ %i.by, %bb.j ]
  %.02947.i.i.i.i.i.i.i = phi i32 [ %.029.i.i.i.i.i.i.i, %bb.k ], [ %.02944.i.i.i.i.i.i.i, %bb.j ]
  %.02746.i.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.cb = icmp eq ptr %i.ca, inttoptr (i64 -8 to ptr)
  br i1 %i.cb, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i, label %bb.k, !prof !59

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cc = add i32 %.02746.i.i.i.i.i.i.i, 1
  %i.cd = add i32 %.02746.i.i.i.i.i.i.i, %.02947.i.i.i.i.i.i.i
  %.029.i.i.i.i.i.i.i = and i32 %i.cd, %i.bv      ; 2 uses
  %i.ce = zext i32 %.029.i.i.i.i.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !79 ; 2 uses
  %i.ch = icmp eq ptr %i.bm, %i.cg
  br i1 %i.ch, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !prof !94, !llvm.loop !95

_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ci = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 0) #10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.cj, align 2
  %.not.i.i.i.i.i.i.i = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i to i1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !97 ; 4 uses
  %.not.i61.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i61.i.i.i.i, label %._crit_edge.i62.i.i.i.i, label %bb.m

._crit_edge.i62.i.i.i.i:                          ; preds = %bb.l
  %.pre.i63.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !43
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !99
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !43  ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !101
  %i.cr = icmp eq i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 0, ptr %i.cs, align 8, !tbaa !104
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.o:                                             ; preds = %bb.m, %._crit_edge.i62.i.i.i.i
  %i.ct = phi ptr [ %.pre.i63.i.i.i.i, %._crit_edge.i62.i.i.i.i ], [ %i.cp, %bb.m ] ; 2 uses
  %i.cu = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 7 uses
  %i.cv = load i32, ptr %i.ct, align 8, !tbaa !101
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !79
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !105
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 0, ptr %i.cx, align 8, !tbaa !104
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i32 %i.cv, ptr %i.cz, align 8, !tbaa !99
  store ptr %i.cm, ptr %i.cy, align 8, !tbaa !106
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !107
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !108
  store ptr %i.cu, ptr %i.da, align 8, !tbaa !107
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !97
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.p:                                             ; preds = %bb.h
  %i.dd = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 1) #10 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null                 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -16
  %i.dg = select i1 %i.de, ptr null, ptr %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %spec.select.i.i.i.i = select i1 %i.de, ptr null, ptr %i.dh ; 4 uses
  store ptr %spec.select.i.i.i.i, ptr %i.a, align 8, !tbaa !79
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !91  ; 2 uses
  %i.dj = load i32, ptr %i.al, align 8, !tbaa !92 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = ptrtoint ptr %spec.select.i.i.i.i to i64
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = lshr i32 %i.dm, 4
  %i.do = lshr i32 %i.dm, 9
  %i.dp = xor i32 %i.dn, %i.do
  %i.dq = add i32 %i.dj, -1                       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  %.02947.i.i.i.i.i = phi i32 [ %.029.i.i.i.i.i, %bb.af ], [ %.02944.i.i.i.i.i, %bb.ad ]
  %.02746.i.i.i.i.i = phi i32 [ %i.ic, %bb.af ], [ 1, %bb.ad ] ; 2 uses
  %.03245.i.i.i.i.i = phi ptr [ %spec.select.i.i24.i.i.i, %bb.af ], [ null, %bb.ad ] ; 4 uses
  %i.hy = icmp eq ptr %i.hw, inttoptr (i64 -8 to ptr)
  br i1 %i.hy, label %bb.ae, label %bb.af, !prof !59

bb.ae:                                            ; preds = %.lr.ph.i.i23.i.i.i
  %.not.i.i25.i.i.i = icmp eq ptr %.03245.i.i.i.i.i, null
  %i.hz = select i1 %.not.i.i25.i.i.i, ptr %i.hx, ptr %.03245.i.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i23.i.i.i
  %i.ia = icmp eq ptr %i.hw, inttoptr (i64 -16 to ptr)
  %i.ib = icmp eq ptr %.03245.i.i.i.i.i, null
  %or.cond.not.i.i.i.i.i = select i1 %i.ia, i1 %i.ib, i1 false
  %spec.select.i.i24.i.i.i = select i1 %or.cond.not.i.i.i.i.i, ptr %i.hx, ptr %.03245.i.i.i.i.i
  %i.ic = add i32 %.02746.i.i.i.i.i, 1
  %i.id = add i32 %.02746.i.i.i.i.i, %.02947.i.i.i.i.i
  %.029.i.i.i.i.i = and i32 %i.id, %i.hr          ; 2 uses
  %i.ie = zext i32 %.029.i.i.i.i.i to i64
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.ie ; 3 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !79 ; 2 uses
  %i.ih = icmp eq ptr %i.hl, %i.ig
  br i1 %i.ih, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i, label %.lr.ph.i.i23.i.i.i, !prof !94, !llvm.loop !114

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %.sink.split.i.i.i.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.hz, %bb.ae ], [ null, %.sink.split.i.i.i.i.i.i ], [ %i.ht, %bb.ad ], [ %i.if, %bb.af ]
  %.pre.i.i22.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !115
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i, %bb.ac
  %i.ii = phi ptr [ %.sink.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i ], [ %.sink.i.i.i.i.i.i, %bb.ac ] ; 4 uses
  %i.ij = phi i32 [ %.pre.i.i22.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit.i.i.i ], [ %i.ha, %bb.ac ]
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ao, align 8, !tbaa !115
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !79
  %i.im = icmp eq ptr %i.il, inttoptr (i64 -8 to ptr)
  br i1 %i.im, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.in = load i32, ptr %i.ap, align 4, !tbaa !116
  %i.io = add i32 %i.in, -1
  store i32 %i.io, ptr %i.ap, align 4, !tbaa !116
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %i.ip = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  store ptr %i.ip, ptr %i.ii, align 8, !tbaa !79
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr null, ptr %i.iq, align 8, !tbaa !97
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_.exit.i.i.i: ; preds = %bb.aa, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i, %bb.y
  %i.ir = phi ptr [ %i.ip, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i ], [ %i.ey, %bb.y ], [ %i.ey, %bb.aa ]
  %.0.i.i.i.i = phi ptr [ %i.ii, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i ], [ %i.gl, %bb.y ], [ %i.gx, %bb.aa ]
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !97 ; 4 uses
  %.not.i85.i.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i85.i.i.i.i, label %._crit_edge.i86.i.i.i.i, label %bb.ai

._crit_edge.i86.i.i.i.i:                          ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_.exit.i.i.i
  %.pre.i88.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !43
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_.exit.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !99
  %i.iw = load ptr, ptr %i.m, align 8, !tbaa !43  ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !101
  %i.iy = icmp eq i32 %i.iv, %i.ix
  br i1 %i.iy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i8 1, ptr %i.iz, align 8, !tbaa !104
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.ak:                                            ; preds = %bb.ai, %._crit_edge.i86.i.i.i.i
  %i.ja = phi ptr [ %.pre.i88.i.i.i.i, %._crit_edge.i86.i.i.i.i ], [ %i.iw, %bb.ai ] ; 2 uses
  %i.jb = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 7 uses
  %i.jc = load i32, ptr %i.ja, align 8, !tbaa !101
  store ptr %i.ir, ptr %i.jb, align 8, !tbaa !105
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i8 1, ptr %i.jd, align 8, !tbaa !104
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  store i32 %i.jc, ptr %i.jf, align 8, !tbaa !99
  store ptr %i.it, ptr %i.je, align 8, !tbaa !106
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !107
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !108
  store ptr %i.jb, ptr %i.jg, align 8, !tbaa !107
  store ptr %i.jb, ptr %i.is, align 8, !tbaa !97
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.al:                                            ; preds = %_ZNK6hermes15ScopedHashTableIPNS_5ValueEbE6lookupERKS2_.exit.i.i.i.i
  br i1 %.not.i16.i.i.i, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jj = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 0) #10
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef %i.jj) #10
  %i.jk = load i32, ptr %i.aj, align 8, !tbaa !10 ; 2 uses
  %i.jl = load i32, ptr %i.ak, align 4, !tbaa !11
  %.not.i.i.i.i.i.i = icmp ult i32 %i.jk, %i.jl
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i.i, label %bb.an, !prof !59

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.ai, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %i.jm = phi i32 [ %.pre.i.i.i.i.i.i, %bb.an ], [ %i.jk, %bb.am ]
  %i.jn = load ptr, ptr %2, align 8, !tbaa !7
  %i.jo = zext i32 %i.jm to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = ptrtoint ptr %spec.select.i.i.i.i.i to i64
  store i64 %i.jq, ptr %i.jp, align 1
  %i.jr = load i32, ptr %i.aj, align 8, !tbaa !10
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.aj, align 8, !tbaa !10
  %i.jt = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 0) #10 ; 3 uses
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !81
  %.not25.i.i.i.i = icmp eq i8 %i.ju, 49
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 -16
  br i1 %.not25.i.i.i.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i.i
  %i.jw = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.jt) #10
  br i1 %i.jw, label %bb.ap, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.jx = load i32, ptr %i.aj, align 8, !tbaa !10 ; 2 uses
  %i.jy = load i32, ptr %i.ak, align 4, !tbaa !11
  %.not.i.i91.i.i.i.i = icmp ult i32 %i.jx, %i.jy
  br i1 %.not.i.i91.i.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit93.i.i.i.i, label %bb.aq, !prof !59

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.ai, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i92.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit93.i.i.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit93.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.jz = phi i32 [ %.pre.i.i92.i.i.i.i, %bb.aq ], [ %i.jx, %bb.ap ]
  %i.ka = load ptr, ptr %2, align 8, !tbaa !7
  %i.kb = zext i32 %i.jz to i64
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = ptrtoint ptr %i.jv to i64
  store i64 %i.kd, ptr %i.kc, align 1
  %i.ke = load i32, ptr %i.aj, align 8, !tbaa !10
  %i.kf = add i32 %i.ke, 1
  store i32 %i.kf, ptr %i.aj, align 8, !tbaa !10
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.ar:                                            ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i.i
  %i.kg = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.08.031.i.i.i.i, i32 noundef 0) #10 ; 3 uses
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !81
  %.not26.i.i.i.i = icmp eq i8 %i.kh, 22
  %i.ki = getelementptr inbounds i8, ptr %i.kg, i64 -16
  br i1 %.not26.i.i.i.i, label %bb.as, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.kj = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.kg) #10
  br i1 %i.kj, label %bb.at, label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.kk = load i32, ptr %i.aj, align 8, !tbaa !10 ; 2 uses
  %i.kl = load i32, ptr %i.ak, align 4, !tbaa !11
  %.not.i.i95.i.i.i.i = icmp ult i32 %i.kk, %i.kl
  br i1 %.not.i.i95.i.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit97.i.i.i.i, label %bb.au, !prof !59

bb.au:                                            ; preds = %bb.at
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.ai, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i96.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit97.i.i.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit97.i.i.i.i: ; preds = %bb.au, %bb.at
  %i.km = phi i32 [ %.pre.i.i96.i.i.i.i, %bb.au ], [ %i.kk, %bb.at ]
  %i.kn = load ptr, ptr %2, align 8, !tbaa !7
  %i.ko = zext i32 %i.km to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = ptrtoint ptr %i.ki to i64
  store i64 %i.kq, ptr %i.kp, align 1
  %i.kr = load i32, ptr %i.aj, align 8, !tbaa !10
  %i.ks = add i32 %i.kr, 1
  store i32 %i.ks, ptr %i.aj, align 8, !tbaa !10
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i: ; preds = %.lr.ph.i.i.i66.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit97.i.i.i.i, %bb.as, %bb.ar, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit93.i.i.i.i, %bb.ao, %bb.al, %bb.ak, %bb.aj, %bb.v, %bb.u, %bb.p, %bb.o, %bb.n, %bb.i, %bb.h
  %.1.i.i.i.i = phi i1 [ %.030.i.i.i.i, %bb.al ], [ true, %bb.ar ], [ true, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit93.i.i.i.i ], [ %.030.i.i.i.i, %bb.ak ], [ true, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit97.i.i.i.i ], [ true, %bb.as ], [ true, %bb.ao ], [ %.030.i.i.i.i, %bb.aj ], [ %.030.i.i.i.i, %bb.o ], [ %.030.i.i.i.i, %bb.n ], [ %.030.i.i.i.i, %bb.i ], [ %.030.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.030.i.i.i.i, %bb.h ], [ %.030.i.i.i.i, %bb.u ], [ %.030.i.i.i.i, %bb.v ], [ %.030.i.i.i.i, %bb.p ], [ %.030.i.i.i.i, %.lr.ph.i.i.i66.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.08.031.i.i.i.i, i64 8
  %.sroa.08.0.i.i.i.i = load ptr, ptr %i.kt, align 8, !tbaa !44 ; 2 uses
  %.not20.i.i.i.i = icmp eq ptr %.sroa.08.0.i.i.i.i, %i.ay
  br i1 %.not20.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i.i, %bb.d
  %.0.lcssa5658.i.i.i.i = phi i1 [ %.1.i.i.i.i, %bb.e ], [ %.1.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ku = or i1 %.038.i.i.i, %.0.lcssa5658.i.i.i.i
  store i8 1, ptr %i.av, align 8, !tbaa !62
  br label %thread-pre-split.i.i.i

bb.av:                                            ; preds = %bb.c
  %i.kv = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !117 ; 3 uses
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !117
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.thread.i.i.i, label %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.i.i.i

_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.i.i.i: ; preds = %bb.av
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr %i.la, ptr %i.kv, align 8, !tbaa !118
  %i.lb = load ptr, ptr %i.kx, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i, label %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.thread.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.i.i.i
  %i.lc = call fastcc noundef ptr @_ZN6hermes10DomTreeDFS7VisitorINS_12_GLOBAL__N_115TDZDedupContextENS2_9StackNodeEE7newNodeEPKN4llvh15DomTreeNodeBaseINS_10BasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull %i.lb)
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = load i32, ptr %i.w, align 8, !tbaa !10  ; 2 uses
  %i.lf = load i32, ptr %i.x, align 4, !tbaa !11
  %.not.i18.i.i.i = icmp ult i32 %i.le, %i.lf
  br i1 %.not.i18.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i, label %bb.ax, !prof !59

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 8) #10
  %.pre.i19.i.i.i = load i32, ptr %i.w, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.lg = phi i32 [ %.pre.i19.i.i.i, %bb.ax ], [ %i.le, %bb.aw ]
  %i.lh = load ptr, ptr %3, align 8, !tbaa !7
  %i.li = zext i32 %i.lg to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.li
  store i64 %i.ld, ptr %i.lj, align 1
  %i.lk = load i32, ptr %i.w, align 8, !tbaa !10
  %i.ll = add i32 %i.lk, 1                        ; 2 uses
  store i32 %i.ll, ptr %i.w, align 8, !tbaa !10
  br label %bb.ay

_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.thread.i.i.i: ; preds = %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.i.i.i, %bb.av
  %i.lm = add i32 %i.aq, -1
  store i32 %i.lm, ptr %i.w, align 8, !tbaa !10
  %i.ln = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !120, !nonnull !68, !align !121
  call void @_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17clearCurrentScopeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.lo)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !122
  %i.lr = load ptr, ptr %i.ln, align 8, !tbaa !120, !nonnull !68, !align !121
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store ptr %i.lq, ptr %i.ls, align 8, !tbaa !43
  %i.lt = load ptr, ptr %5, align 8, !tbaa !123
  store ptr %i.lt, ptr %i.au, align 8, !tbaa !124
  store ptr %i.au, ptr %5, align 8, !tbaa !123
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.thread.i.i.i, %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i
  %.1.ph.i.i.i = phi i1 [ %.038.i.i.i, %_ZN6hermes10DomTreeDFS9StackNodeINS_12_GLOBAL__N_115TDZDedupContextEE9nextChildEv.exit.thread.i.i.i ], [ %i.ku, %_ZN6hermes12_GLOBAL__N_115TDZDedupContext11processNodeEPNS0_9StackNodeE.exit.i.i.i ]
  %.pr.pr.i.i.i = load i32, ptr %i.w, align 8, !tbaa !10
  br label %bb.ay

bb.ay:                                            ; preds = %thread-pre-split.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i
  %.pr.i.i.i = phi i32 [ %.pr.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ll, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i1 [ %.1.ph.i.i.i, %thread-pre-split.i.i.i ], [ %.038.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit20.i.i.i ] ; 2 uses
  %.not.i15.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not.i15.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !126

._crit_edge.i.i.i:                                ; preds = %bb.ay, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i
  %.0.lcssa.i.i.i = phi i1 [ false, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12_GLOBAL__N_19StackNodeELb1EE9push_backERKS4_.exit.i.i.i ], [ %.1.i.i.i, %bb.ay ]
  %i.lu = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.v
  br i1 %i.lv, label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext3runEv.exit, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.lu) #10
  br label %_ZN6hermes12_GLOBAL__N_115TDZDedupContext3runEv.exit

bb.ba:                                            ; preds = %._crit_edge.i, %.lr.ph83.i
  %.sroa.039.081.i = phi ptr [ %.sroa.039.079.i, %.lr.ph83.i ], [ %.sroa.039.0.i, %._crit_edge.i ] ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.039.081.i, i64 64
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.039.081.i, i64 56 ; 2 uses
  %.sroa.035.076.i = load ptr, ptr %i.lw, align 8, !tbaa !44 ; 2 uses
  %.not5577.i = icmp eq ptr %.sroa.035.076.i, %i.lx
  br i1 %.not5577.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i, %bb.ba
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.039.081.i, i64 8
  %.sroa.039.0.i = load ptr, ptr %i.ly, align 8, !tbaa !44 ; 2 uses
  %.not54.i = icmp eq ptr %.sroa.039.0.i, %i.o
  br i1 %.not54.i, label %._crit_edge84.i.loopexit, label %bb.ba

.lr.ph.i:                                         ; preds = %bb.ba, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i
  %.sroa.035.078.i = phi ptr [ %.sroa.035.0.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i ], [ %.sroa.035.076.i, %bb.ba ] ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.035.078.i, i64 16
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !81
  %i.mb = icmp ne i8 %i.ma, 62
  %.not56.i = icmp eq ptr %.sroa.035.078.i, null
  %.not.i = or i1 %.not56.i, %i.mb
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i
  %i.mc = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.035.078.i, i32 noundef 0) #10 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 8, !tbaa !81
  switch i8 %i.md, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i [
    i8 49, label %bb.bc
    i8 22, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 -16
  %i.mf = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.me, i32 noundef 0) #10 ; 7 uses
  %i.mg = load ptr, ptr %i.l, align 8, !tbaa !91, !noalias !127 ; 2 uses
  %i.mh = load i32, ptr %i.p, align 8, !tbaa !92, !noalias !127 ; 7 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mj = ptrtoint ptr %i.mf to i64
  %i.mk = trunc i64 %i.mj to i32                  ; 2 uses
  %i.ml = lshr i32 %i.mk, 4
  %i.mm = lshr i32 %i.mk, 9
  %i.mn = xor i32 %i.ml, %i.mm
  %i.mo = add i32 %i.mh, -1                       ; 2 uses
  %.02944.i.i.i.i = and i32 %i.mn, %i.mo          ; 2 uses
  %i.mp = zext nneg i32 %.02944.i.i.i.i to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mp ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !79, !noalias !127 ; 2 uses
  %i.ms = icmp eq ptr %i.mf, %i.mr
  br i1 %i.ms, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i, label %.lr.ph.i.i.i26.i, !prof !93

.lr.ph.i.i.i26.i:                                 ; preds = %bb.bd, %bb.bf
  %i.mt = phi ptr [ %i.nd, %bb.bf ], [ %i.mr, %bb.bd ] ; 2 uses
  %i.mu = phi ptr [ %i.nc, %bb.bf ], [ %i.mq, %bb.bd ] ; 2 uses
  %.02947.i.i.i.i = phi i32 [ %.029.i.i.i.i, %bb.bf ], [ %.02944.i.i.i.i, %bb.bd ]
  %.02746.i.i.i.i = phi i32 [ %i.mz, %bb.bf ], [ 1, %bb.bd ] ; 2 uses
  %.03245.i.i.i.i = phi ptr [ %spec.select.i.i.i27.i, %bb.bf ], [ null, %bb.bd ] ; 4 uses
  %i.mv = icmp eq ptr %i.mt, inttoptr (i64 -8 to ptr)
  br i1 %i.mv, label %bb.be, label %bb.bf, !prof !59

bb.be:                                            ; preds = %.lr.ph.i.i.i26.i
  %.not.i.i.i28.i = icmp eq ptr %.03245.i.i.i.i, null
  %i.mw = select i1 %.not.i.i.i28.i, ptr %i.mu, ptr %.03245.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i.i26.i
  %i.mx = icmp eq ptr %i.mt, inttoptr (i64 -16 to ptr)
  %i.my = icmp eq ptr %.03245.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.mx, i1 %i.my, i1 false
  %spec.select.i.i.i27.i = select i1 %or.cond.not.i.i.i.i, ptr %i.mu, ptr %.03245.i.i.i.i
  %i.mz = add i32 %.02746.i.i.i.i, 1
  %i.na = add i32 %.02746.i.i.i.i, %.02947.i.i.i.i
  %.029.i.i.i.i = and i32 %i.na, %i.mo            ; 2 uses
  %i.nb = zext i32 %.029.i.i.i.i to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.nb ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !79, !noalias !127 ; 2 uses
  %i.ne = icmp eq ptr %i.mf, %i.nd
  br i1 %i.ne, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i, label %.lr.ph.i.i.i26.i, !prof !94, !llvm.loop !132

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i: ; preds = %bb.be, %bb.bc
  %.sink.i.i.i.i = phi ptr [ %i.mw, %bb.be ], [ null, %bb.bc ]
  %i.nf = load i32, ptr %i.q, align 8, !tbaa !133, !noalias !127 ; 3 uses
  %i.ng = shl i32 %i.nf, 2
  %i.nh = add i32 %i.ng, 4
  %i.ni = mul i32 %i.mh, 3
  %.not.i.i4.i.i = icmp ult i32 %i.nh, %i.ni
  br i1 %.not.i.i4.i.i, label %bb.bh, label %bb.bg, !prof !59

bb.bg:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i
  %i.nj = shl i32 %i.mh, 1
  br label %.sink.split.i.i.i29.i

bb.bh:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i.i
  %i.nk = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !127
  %.neg.i.i.i.i = xor i32 %i.nf, -1
  %.neg12.i.i.i.i = add i32 %i.mh, %.neg.i.i.i.i
  %i.nl = sub i32 %.neg12.i.i.i.i, %i.nk
  %i.nm = lshr i32 %i.mh, 3
  %.not10.i.i.i.i = icmp ugt i32 %i.nl, %i.nm
  br i1 %.not10.i.i.i.i, label %bb.bl, label %.sink.split.i.i.i29.i, !prof !59

.sink.split.i.i.i29.i:                            ; preds = %bb.bh, %bb.bg
  %.sink.i.i5.i.i = phi i32 [ %i.nj, %bb.bg ], [ %i.mh, %bb.bh ]
  call void @_ZN4llvh8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i32 noundef %.sink.i.i5.i.i), !noalias !127
  %i.nn = load ptr, ptr %i.l, align 8, !tbaa !91, !noalias !127 ; 2 uses
  %i.no = load i32, ptr %i.p, align 8, !tbaa !92, !noalias !127 ; 2 uses
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %.sink.split.i.i.i29.i
  %i.nq = ptrtoint ptr %i.mf to i64
  %i.nr = trunc i64 %i.nq to i32                  ; 2 uses
  %i.ns = lshr i32 %i.nr, 4
  %i.nt = lshr i32 %i.nr, 9
  %i.nu = xor i32 %i.ns, %i.nt
  %i.nv = add i32 %i.no, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.nv, %i.nu            ; 2 uses
  %i.nw = zext nneg i32 %.02944.i.i.i to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.nw ; 3 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !79, !noalias !127 ; 2 uses
  %i.nz = icmp eq ptr %i.mf, %i.ny
  br i1 %i.nz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i30.i, !prof !93

.lr.ph.i.i30.i:                                   ; preds = %bb.bi, %bb.bk
  %i.oa = phi ptr [ %i.ok, %bb.bk ], [ %i.ny, %bb.bi ] ; 2 uses
  %i.ob = phi ptr [ %i.oj, %bb.bk ], [ %i.nx, %bb.bi ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.bk ], [ %.02944.i.i.i, %bb.bi ]
  %.02746.i.i.i = phi i32 [ %i.og, %bb.bk ], [ 1, %bb.bi ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.bk ], [ null, %bb.bi ] ; 4 uses
  %i.oc = icmp eq ptr %i.oa, inttoptr (i64 -8 to ptr)
  br i1 %i.oc, label %bb.bj, label %bb.bk, !prof !59

bb.bj:                                            ; preds = %.lr.ph.i.i30.i
  %.not.i.i31.i = icmp eq ptr %.03245.i.i.i, null
  %i.od = select i1 %.not.i.i31.i, ptr %i.ob, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i

bb.bk:                                            ; preds = %.lr.ph.i.i30.i
  %i.oe = icmp eq ptr %i.oa, inttoptr (i64 -16 to ptr)
  %i.of = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.oe, i1 %i.of, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.ob, ptr %.03245.i.i.i
  %i.og = add i32 %.02746.i.i.i, 1
  %i.oh = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.oh, %i.nv              ; 2 uses
  %i.oi = zext i32 %.029.i.i.i to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.oi ; 3 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !79, !noalias !127 ; 2 uses
  %i.ol = icmp eq ptr %i.mf, %i.ok
  br i1 %i.ol, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, label %.lr.ph.i.i30.i, !prof !94, !llvm.loop !132

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i: ; preds = %bb.bk, %bb.bj, %bb.bi, %.sink.split.i.i.i29.i
  %.sink.i.i.i = phi ptr [ %i.od, %bb.bj ], [ null, %.sink.split.i.i.i29.i ], [ %i.nx, %bb.bi ], [ %i.oj, %bb.bk ]
  %.pre.i.i.i = load i32, ptr %i.q, align 8, !tbaa !133, !noalias !127
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i, %bb.bh
  %i.om = phi ptr [ %.sink.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %.sink.i.i.i.i, %bb.bh ] ; 2 uses
  %i.on = phi i32 [ %.pre.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit.i ], [ %i.nf, %bb.bh ]
  %i.oo = add i32 %i.on, 1
  store i32 %i.oo, ptr %i.q, align 8, !tbaa !133, !noalias !127
  %i.op = load ptr, ptr %i.om, align 8, !tbaa !79, !noalias !127
  %i.oq = icmp eq ptr %i.op, inttoptr (i64 -8 to ptr)
  br i1 %i.oq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.or = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !127
  %i.os = add i32 %i.or, -1
  store i32 %i.os, ptr %i.r, align 4, !tbaa !134, !noalias !127
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i.i: ; preds = %bb.bm, %bb.bl
  store ptr %i.mf, ptr %i.om, align 8, !tbaa !79, !noalias !127
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_.exit.i: ; preds = %bb.bf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16InsertIntoBucketIRKS4_JRS6_EEEPSA_SH_OT_DpOT0_.exit.i.i, %bb.bd, %bb.bb, %.lr.ph.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.035.078.i, i64 8
  %.sroa.035.0.i = load ptr, ptr %i.ot, align 8, !tbaa !44 ; 2 uses
  %.not55.i = icmp eq ptr %.sroa.035.0.i, %i.lx
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i

_ZN6hermes12_GLOBAL__N_115TDZDedupContext3runEv.exit: ; preds = %._crit_edge.i.i.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !109
  call void @_ZdlPv(ptr noundef %i.ov) #10
  %i.ow = load ptr, ptr %i.l, align 8, !tbaa !91
  call void @_ZdlPv(ptr noundef %i.ow) #10
  store ptr null, ptr %5, align 8, !tbaa !123
  %i.ox = load ptr, ptr %i.b, align 8, !tbaa !7   ; 2 uses
end_hunk_1
