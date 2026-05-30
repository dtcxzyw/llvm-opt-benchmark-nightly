inline.NumInlined: 439
inline.NumDeleted: 297
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::IRBuilder::InstructionDestroyer" = type { %"class.llvh::SmallVector.35" }
%"class.llvh::SmallVector.35" = type { %"class.llvh::SmallVectorImpl.36", %"struct.llvh::SmallVectorStorage.39" }
%"class.llvh::SmallVectorImpl.36" = type { %"class.llvh::SmallVectorTemplateBase.37" }
%"class.llvh::SmallVectorTemplateBase.37" = type { %"class.llvh::SmallVectorTemplateCommon.38" }
%"class.llvh::SmallVectorTemplateCommon.38" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.39" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.40"] }
%"struct.llvh::AlignedCharArrayUnion.40" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.llvh::SmallVector.27" = type { %"class.llvh::SmallVectorImpl.28", %"struct.llvh::SmallVectorStorage.31" }
%"class.llvh::SmallVectorImpl.28" = type { %"class.llvh::SmallVectorTemplateBase.29" }
%"class.llvh::SmallVectorTemplateBase.29" = type { %"class.llvh::SmallVectorTemplateCommon.30" }
%"class.llvh::SmallVectorTemplateCommon.30" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.31" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.32"] }
%"struct.llvh::AlignedCharArrayUnion.32" = type { %"struct.llvh::AlignedCharArray" }
%"class.hermes::DominanceInfo" = type { %"class.llvh::DominatorTreeBase" }
%"class.llvh::DominatorTreeBase" = type { %"class.llvh::SmallVector", %"class.llvh::DenseMap", ptr, ptr, i8, i32 }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage" = type { [1 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::DenseMap" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.(anonymous namespace)::CSEContext" = type { %"class.hermes::DomTreeDFS::Visitor", %"class.llvh::ScopedHashTable" }
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
%"class.llvh::ScopedHashTable" = type { %"class.llvh::DenseMap.11", ptr, %"class.llvh::RecyclingAllocator.14" }
%"class.llvh::DenseMap.11" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.llvh::RecyclingAllocator.14" = type { %"class.llvh::Recycler.15", %"class.llvh::BumpPtrAllocatorImpl" }
%"class.llvh::Recycler.15" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }

$_ZN6hermes3CSED0Ev = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes3CSEE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes3CSED0Ev, ptr @_ZN6hermes3CSE13runOnFunctionEPNS_8FunctionE] }, align 8
@.str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CSE\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3CSE13runOnFunctionEPNS_8FunctionE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %3 = alloca %"class.llvh::SmallVector.27", align 8 ; 12 uses
  %4 = alloca %"class.hermes::DominanceInfo", align 8 ; 9 uses
  %5 = alloca %"class.(anonymous namespace)::CSEContext", align 8 ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN6hermes13DominanceInfoC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %5, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 4, ptr %i.d, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 112
  store ptr %4, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i8 0, i64 144, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 188 ; 2 uses
  store i32 4, ptr %i.m, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 4 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  store i32 0, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 4, ptr %i.v, align 4, !tbaa !11
  %i.w = call fastcc noundef ptr @_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE7newNodeEPKN4llvh15DomTreeNodeBaseINS_10BasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(264) %5, ptr noundef %i.s)
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = load i32, ptr %i.u, align 8, !tbaa !10   ; 2 uses
  %i.z = load i32, ptr %i.v, align 4, !tbaa !11
  %.not.i.i.i.i = icmp ult i32 %i.y, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit.i.i.i, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i.i = load i32, ptr %i.u, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit.i.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.aa = phi i32 [ %.pre.i.i.i.i, %bb.b ], [ %i.y, %bb.a ]
  %i.ab = load ptr, ptr %3, align 8, !tbaa !7
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  store i64 %i.x, ptr %i.ad, align 1
  %i.ae = load i32, ptr %i.u, align 8, !tbaa !10
  %i.af = add i32 %i.ae, 1                        ; 3 uses
  store i32 %i.af, ptr %i.u, align 8, !tbaa !10
  %.not.i15117.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i15117.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 132 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.bp, %.lr.ph.i.i.i
  %.0118.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.bp ] ; 3 uses
  %i.ar = phi i32 [ %i.af, %.lr.ph.i.i.i ], [ %.pr.i.i.i, %bb.bp ] ; 2 uses
  %.val11.i.i.i = load ptr, ptr %3, align 8, !tbaa !7
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val11.i.i.i, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41 ; 9 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 24     ; 2 uses
  %.val13.i.i.i = load i8, ptr %i.aw, align 8, !tbaa !43, !range !48, !noundef !49
  %i.ax = trunc nuw i8 %.val13.i.i.i to i1
  br i1 %i.ax, label %bb.am, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val14.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !50
  %.val14.val.i.i.i = load ptr, ptr %.val14.i.i.i, align 8, !tbaa !51 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.ag, ptr %2, align 8, !tbaa !7
  store i32 0, ptr %i.ah, align 8, !tbaa !10
  store i32 8, ptr %i.ai, align 4, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.val14.val.i.i.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %.val14.val.i.i.i, i64 56 ; 2 uses
  %.sroa.02.016.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !58 ; 2 uses
  %.not1117.i.i.i.i = icmp eq ptr %.sroa.02.016.i.i.i.i, %i.az
  br i1 %.not1117.i.i.i.i, label %_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.al
  %.pre.i16.i.i.i = load ptr, ptr %2, align 8, !tbaa !7 ; 3 uses
  %.pre27.i.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !10 ; 2 uses
  %i.ba = zext i32 %.pre27.i.i.i.i to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ba, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre.i16.i.i.i, i64 %.idx.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %.pre27.i.i.i.i, 0
  br i1 %.not8.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !7
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %._crit_edge.i.i.i.i
  %i.bc = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.pre.i16.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ag
  br i1 %i.bd, label %_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @free(ptr noundef %i.bc) #10
  br label %_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.pre.i16.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.be = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !61
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.be) #10
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.bb
  br i1 %.not.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.al
  %.sroa.02.019.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i, %bb.al ], [ %.sroa.02.016.i.i.i.i, %bb.d ] ; 21 uses
  %.018.i.i.i.i = phi i1 [ %.2.i.i.i.i, %bb.al ], [ false, %bb.d ] ; 2 uses
  %i.bg = call noundef zeroext i1 @_ZN6hermes33isSimpleSideEffectFreeInstructionEPNS_11InstructionE(ptr noundef nonnull %.sroa.02.019.i.i.i.i) #10
  br i1 %i.bg, label %bb.f, label %bb.al

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !63 ; 4 uses
  %.val3.i.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !66 ; 2 uses
  %i.bh = icmp eq i32 %.val3.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = call i64 @_ZNK6hermes11Instruction11getHashCodeEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.02.019.i.i.i.i) #10
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add i32 %.val3.i.i.i.i.i.i, -1          ; 3 uses
  %i.bl = and i32 %i.bk, %i.bj                    ; 3 uses
  %magicptr.i.i.i.i.i.i.i.i = ptrtoint ptr %.sroa.02.019.i.i.i.i to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.02.019.i.i.i.i, i64 16
  switch i64 %magicptr.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i [
    i64 -8, label %.split.us.i.i.i.i.i
    i64 -16, label %.split.us.i.i.i.i.i
  ]

.split.us.i.i.i.i.i:                              ; preds = %bb.g, %bb.g
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.bn ; 2 uses
  %.sroa.05.0.copyload.i.i.us3.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !61 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.02.019.i.i.i.i, %.sroa.05.0.copyload.i.i.us3.i.i.i.i.i
  br i1 %i.bp, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findERKS3_.exit.i.i.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.us.i.i.i.i.i, !prof !67

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.us.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i, %bb.h
  %.sroa.05.0.copyload.i.i.us6.i.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.us.i.i.i.i.i, %bb.h ], [ %.sroa.05.0.copyload.i.i.us3.i.i.i.i.i, %.split.us.i.i.i.i.i ]
  %.036.i.i.us5.i.i.i.i.i = phi i32 [ %i.bt, %bb.h ], [ %i.bl, %.split.us.i.i.i.i.i ]
  %.038.i.i.us4.i.i.i.i.i = phi i32 [ %i.br, %bb.h ], [ 1, %.split.us.i.i.i.i.i ] ; 2 uses
  %i.bq = icmp eq ptr %.sroa.05.0.copyload.i.i.us6.i.i.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.bq, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.loopexit.i.i.i.i.i.i, label %bb.h, !prof !40

bb.h:                                             ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.us.i.i.i.i.i
  %i.br = add i32 %.038.i.i.us4.i.i.i.i.i, 1
  %i.bs = add i32 %.038.i.i.us4.i.i.i.i.i, %.036.i.i.us5.i.i.i.i.i
  %i.bt = and i32 %i.bs, %i.bk                    ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.bu ; 2 uses
  %.sroa.05.0.copyload.i.i.us.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !61 ; 2 uses
  %i.bw = icmp eq ptr %.sroa.02.019.i.i.i.i, %.sroa.05.0.copyload.i.i.us.i.i.i.i.i
  br i1 %i.bw, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findERKS3_.exit.i.i.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.us.i.i.i.i.i, !prof !68, !llvm.loop !69

.split.i.i.i.i.i:                                 ; preds = %bb.g, %bb.k
  %.038.i.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.k ], [ 1, %bb.g ] ; 2 uses
  %.036.i.i.i.i.i.i.i = phi i32 [ %i.ci, %bb.k ], [ %i.bl, %bb.g ] ; 2 uses
  %i.bx = zext i32 %.036.i.i.i.i.i.i.i to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.bx ; 4 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !61 ; 6 uses
  %magicptr10.i.i.i.i.i.i.i.i = ptrtoint ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i to i64
  switch i64 %magicptr10.i.i.i.i.i.i.i.i, label %bb.j [
    i64 -8, label %bb.i
    i64 -16, label %bb.i
  ]

bb.i:                                             ; preds = %.split.i.i.i.i.i, %.split.i.i.i.i.i
  %i.bz = icmp eq ptr %.sroa.02.019.i.i.i.i, %.sroa.05.0.copyload.i.i.i.i.i.i.i
  br i1 %i.bz, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findERKS3_.exit.i.i.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i, !prof !71

bb.j:                                             ; preds = %.split.i.i.i.i.i
  %i.ca = load i8, ptr %i.bm, align 8, !tbaa !72
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !72
  %i.cd = icmp eq i8 %i.ca, %i.cc
  br i1 %i.cd, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i, !prof !82

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ce = call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.02.019.i.i.i.i, ptr noundef nonnull %.sroa.05.0.copyload.i.i.i.i.i.i.i) #10
  br i1 %i.ce, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findERKS3_.exit.i.i.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i.i.i, !prof !71

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i
  %.sroa.04.0.copyload.pre.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !61
  br label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i.i.i, %bb.j, %bb.i
  %.sroa.04.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.0.copyload.pre.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i.i.i ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %bb.j ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %bb.i ]
  %i.cf = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.cf, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.loopexit.i.i.i.i.i.i, label %bb.k, !prof !40

bb.k:                                             ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i
  %i.cg = add i32 %.038.i.i.i.i.i.i.i, 1
  %i.ch = add i32 %.036.i.i.i.i.i.i.i, %.038.i.i.i.i.i.i.i
  %i.ci = and i32 %i.ch, %i.bk
  br label %.split.i.i.i.i.i, !llvm.loop !69

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.us.i.i.i.i.i, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i
  %.val6.pre.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !63
  %.val7.pre.i.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !66
  %i.cj = zext i32 %.val7.pre.i.i.i.i.i.i to i64
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.i.i.i.i.i.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.loopexit.i.i.i.i.i.i, %bb.f
  %.val7.i.i.i.i.i.i = phi i64 [ %i.cj, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.loopexit.i.i.i.i.i.i ], [ 0, %bb.f ]
  %.val6.i.i.i.i.i.i = phi ptr [ %.val6.pre.i.i.i.i.i.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.loopexit.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %bb.f ]
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.val6.i.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findERKS3_.exit.i.i.i.i.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findERKS3_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i, %bb.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.i.i.i.i.i.i, %.split.us.i.i.i.i.i
  %.pn13.i.i.i.i.i.i = phi ptr [ %i.ck, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPKSE_.exit.i.i.i.i.i.i ], [ %i.by, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i ], [ %i.bo, %.split.us.i.i.i.i.i ], [ %i.by, %bb.i ], [ %i.bv, %bb.h ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !63 ; 2 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !66 ; 3 uses
  %i.cl = zext i32 %.val3.i.i.i.i.i to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.cl
  %.not.i18.i.i.i.i = icmp eq ptr %.pn13.i.i.i.i.i.i, %i.cm
  br i1 %.not.i18.i.i.i.i, label %_ZNK4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6lookupERKS2_.exit.thread.i.i.i.i, label %_ZNK4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6lookupERKS2_.exit.i.i.i.i

_ZNK4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6lookupERKS2_.exit.i.i.i.i: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findERKS3_.exit.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn13.i.i.i.i.i.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i17.i.i.i, label %_ZNK4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6lookupERKS2_.exit.thread.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6lookupERKS2_.exit.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.02.019.i.i.i.i, i64 16
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull %i.cq) #10
  %i.cs = load i32, ptr %i.ah, align 8, !tbaa !10 ; 2 uses
  %i.ct = load i32, ptr %i.ai, align 4, !tbaa !11
  %.not.i.i.i.i.i.i = icmp ult i32 %i.cs, %i.ct
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m, !prof !40

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.ag, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cu = phi i32 [ %.pre.i.i.i.i.i.i, %bb.m ], [ %i.cs, %bb.l ]
  %i.cv = load ptr, ptr %2, align 8, !tbaa !7
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = ptrtoint ptr %.sroa.02.019.i.i.i.i to i64
  store i64 %i.cy, ptr %i.cx, align 1
  %i.cz = load i32, ptr %i.ah, align 8, !tbaa !10
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.ah, align 8, !tbaa !10
  br label %bb.al

_ZNK4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6lookupERKS2_.exit.thread.i.i.i.i: ; preds = %_ZNK4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6lookupERKS2_.exit.i.i.i.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findERKS3_.exit.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.02.019.i.i.i.i, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes3CSE13runOnFunctionEPNS_8FunctionE:bb.a
  %i.eh = and i32 %i.eg, %i.ef
  %magicptr.i.i.i.i.i.i = ptrtoint ptr %.sroa.02.019.i.i.i.i to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %bb.x
  %.038.i.i.i.i.i = phi i32 [ 1, %bb.x ], [ %i.eu, %bb.ad ] ; 2 uses
  %.036.i.i.i.i.i = phi i32 [ %i.eh, %bb.x ], [ %i.ew, %bb.ad ] ; 2 uses
  %.033.i.i.i.i.i = phi ptr [ null, %bb.x ], [ %spec.select.i.i.i.i.i, %bb.ad ] ; 4 uses
  %i.ei = zext i32 %.036.i.i.i.i.i to i64
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.val13.i.i.i.i.i.i.i, i64 %i.ei ; 6 uses
  %.sroa.05.0.copyload.i.i.i.i.i = load ptr, ptr %i.ej, align 8, !tbaa !61 ; 6 uses
  switch i64 %magicptr.i.i.i.i.i.i, label %bb.z [
    i64 -8, label %bb.aa
    i64 -16, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %magicptr10.i.i.i.i.i.i = ptrtoint ptr %.sroa.05.0.copyload.i.i.i.i.i to i64
  switch i64 %magicptr10.i.i.i.i.i.i, label %bb.ab [
    i64 -8, label %bb.aa
    i64 -16, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.y, %bb.y
  %i.ek = icmp eq ptr %.sroa.02.019.i.i.i.i, %.sroa.05.0.copyload.i.i.i.i.i
  br i1 %i.ek, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i, !prof !71

bb.ab:                                            ; preds = %bb.z
  %i.el = load i8, ptr %i.db, align 8, !tbaa !72
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i, i64 16
  %i.en = load i8, ptr %i.em, align 8, !tbaa !72
  %i.eo = icmp eq i8 %i.el, %i.en
  br i1 %i.eo, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i, !prof !82

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.ep = call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.02.019.i.i.i.i, ptr noundef nonnull %.sroa.05.0.copyload.i.i.i.i.i) #10
  br i1 %i.ep, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i, !prof !71

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i
  %.sroa.04.0.copyload.pre.i.i.i.i.i = load ptr, ptr %i.ej, align 8, !tbaa !61
  br label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i, %bb.ab, %bb.aa
  %.sroa.04.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.04.0.copyload.pre.i.i.i.i.i, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i ], [ %.sroa.05.0.copyload.i.i.i.i.i, %bb.ab ], [ %.sroa.05.0.copyload.i.i.i.i.i, %bb.aa ] ; 2 uses
  %i.eq = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.eq, label %bb.ac, label %bb.ad, !prof !40

bb.ac:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i
  %.not.i.i77.i.i.i = icmp eq ptr %.033.i.i.i.i.i, null
  %i.er = select i1 %.not.i.i77.i.i.i, ptr %i.ej, ptr %.033.i.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i.i

bb.ad:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i
  %i.es = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i, inttoptr (i64 -16 to ptr)
  %i.et = icmp eq ptr %.033.i.i.i.i.i, null
  %or.cond.not.i.i.i.i.i = select i1 %i.es, i1 %i.et, i1 false
  %spec.select.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i, ptr %i.ej, ptr %.033.i.i.i.i.i
  %i.eu = add i32 %.038.i.i.i.i.i, 1
  %i.ev = add i32 %.036.i.i.i.i.i, %.038.i.i.i.i.i
  %i.ew = and i32 %i.ev, %i.eg
  br label %bb.y, !llvm.loop !69

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i, %bb.aa, %bb.ac, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.sink.split.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.er, %bb.ac ], [ null, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.sink.split.i.i.i.i.i.i.i ], [ %i.ej, %bb.aa ], [ %i.ej, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i ]
  %.val.i.i.pre.i.i.i.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !95
  br label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i.i.i.i

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i.i.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i.i, %bb.w
  %i.ex = phi ptr [ %.sink.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i.i ], [ %.sink.i.i.i.i.i.i.i, %bb.w ] ; 4 uses
  %.val.i.i.i.i.i31.i.i.i = phi i32 [ %.val.i.i.pre.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i.i ], [ %.val17.i.i.i.i.i.i.i, %bb.w ]
  %i.ey = add i32 %.val.i.i.i.i.i31.i.i.i, 1
  store i32 %i.ey, ptr %i.ap, align 8, !tbaa !95
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ex, align 8, !tbaa !61
  %i.ez = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.ez, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i.i.i.i
  %.val.i19.i.i.i.i.i.i.i = load i32, ptr %i.aq, align 4, !tbaa !96
  %i.fa = add i32 %.val.i19.i.i.i.i.i.i.i, -1
  store i32 %i.fa, ptr %i.aq, align 4, !tbaa !96
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.ae, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i.i.i.i
  %i.fb = ptrtoint ptr %.sroa.02.019.i.i.i.i to i64 ; 2 uses
  store i64 %i.fb, ptr %i.ex, align 8, !tbaa !61
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr null, ptr %i.fc, align 8, !tbaa !97
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.loopexit.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i33.i.i.i, %bb.r
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !97
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.i.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.loopexit.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %magicptr.i.i.i.i.i27.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.loopexit.i.i.i ], [ %i.fb, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i.i.i ]
  %i.fd = phi ptr [ %.pre.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.loopexit.i.i.i ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i = phi ptr [ %i.dj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.loopexit.i.i.i ], [ %i.ex, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %i.ff = getelementptr i8, ptr %i.dc, i64 16     ; 2 uses
  %.val.i.i19.i.i.i.i = load ptr, ptr %i.ff, align 8, !tbaa !98
  %i.fg = load ptr, ptr %i.al, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.i.i.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !102
  store ptr %i.fh, ptr %i.al, align 8, !tbaa !101
  br label %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6insertERKS2_RKS5_.exit.i.i.i.i

bb.ag:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit.i.i.i
  %i.fi = load i64, ptr %i.o, align 8, !tbaa !104
  %i.fj = add i64 %i.fi, 32
  store i64 %i.fj, ptr %i.o, align 8, !tbaa !104
  %i.fk = load ptr, ptr %i.am, align 8, !tbaa !105 ; 2 uses
  %i.fl = ptrtoint ptr %i.fk to i64               ; 3 uses
  %i.fm = add i64 %i.fl, 7
  %i.fn = and i64 %i.fm, -8
  %i.fo = sub i64 %i.fn, %i.fl                    ; 2 uses
  %i.fp = add i64 %i.fo, 32
  %i.fq = load ptr, ptr %i.an, align 8, !tbaa !106
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.fl
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.fp, %i.fs
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fo ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store ptr %i.fu, ptr %i.am, align 8, !tbaa !105
  br label %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6insertERKS2_RKS5_.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.fv = load i32, ptr %i.ao, align 8, !tbaa !10 ; 2 uses
  %i.fw = lshr i32 %i.fv, 7
  %i.fx = call i32 @llvm.umin.i32(i32 %i.fw, i32 30)
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i32 %i.fx to i64
  %i.fy = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fz = call noalias ptr @malloc(i64 noundef %i.fy) #11 ; 3 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.aj, label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #10
  %.pre = load i32, ptr %i.ao, align 8, !tbaa !10
  br label %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %i.gb = phi i32 [ %.pre, %bb.aj ], [ %i.fv, %bb.ai ] ; 2 uses
  %i.gc = load i32, ptr %i.m, align 4, !tbaa !11
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.gb, %i.gc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ak, !prof !40

bb.ak:                                            ; preds = %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !10
  br label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gd = phi i32 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %i.gb, %_ZN4llvh15MallocAllocator8AllocateEmm.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ge = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.gf = zext i32 %i.gd to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gf
  %i.gh = ptrtoint ptr %i.fz to i64               ; 2 uses
  store i64 %i.gh, ptr %i.gg, align 1
  %i.gi = load i32, ptr %i.ao, align 8, !tbaa !10
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.ao, align 8, !tbaa !10
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fy
  store ptr %i.gk, ptr %i.an, align 8, !tbaa !106
  %i.gl = add i64 %i.gh, 7
  %i.gm = and i64 %i.gl, -8
  %i.gn = inttoptr i64 %i.gm to ptr               ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store ptr %i.go, ptr %i.am, align 8, !tbaa !105
  br label %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6insertERKS2_RKS5_.exit.i.i.i.i

_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6insertERKS2_RKS5_.exit.i.i.i.i: ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.ah, %bb.af
  %i.gp = phi ptr [ %i.fg, %bb.af ], [ %i.ft, %bb.ah ], [ %i.gn, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE12StartNewSlabEv.exit.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i64 %.pre-phi.i.i.i, ptr %i.gq, align 8, !tbaa !61
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store ptr %i.db, ptr %i.gr, align 8, !tbaa !107
  store ptr %.val.i.i19.i.i.i.i, ptr %i.gp, align 8, !tbaa !109
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.fd, ptr %i.gs, align 8, !tbaa !110
  store ptr %i.gp, ptr %i.fe, align 8, !tbaa !97
  store ptr %i.gp, ptr %i.ff, align 8, !tbaa !98
  br label %bb.al

bb.al:                                            ; preds = %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6insertERKS2_RKS5_.exit.i.i.i.i, %bb.n, %.lr.ph.i.i.i.i
  %.2.i.i.i.i = phi i1 [ %.018.i.i.i.i, %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEE6insertERKS2_RKS5_.exit.i.i.i.i ], [ true, %bb.n ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.02.019.i.i.i.i, i64 8
  %.sroa.02.0.i.i.i.i = load ptr, ptr %i.gt, align 8, !tbaa !58 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i, %i.az
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i.i, %bb.d
  %.0.lcssa3638.i.i.i.i = phi i1 [ %.2.i.i.i.i, %bb.e ], [ %.2.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %6 = trunc nuw i8 %.0118.i.i.i to i1
  %i.gu = or i1 %.0.lcssa3638.i.i.i.i, %6
  %7 = zext i1 %i.gu to i8
  store i8 1, ptr %i.aw, align 8, !tbaa !43
  br label %thread-pre-split.i.i.i

bb.am:                                            ; preds = %bb.c
  %i.gv = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !111 ; 3 uses
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !111
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.thread.i.i.i, label %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.i.i.i

_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.i.i.i: ; preds = %bb.am
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.ha, ptr %i.gv, align 8, !tbaa !112
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i, label %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.thread.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.i.i.i
  %i.hc = call fastcc noundef ptr @_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE7newNodeEPKN4llvh15DomTreeNodeBaseINS_10BasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(264) %5, ptr noundef nonnull %i.hb)
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = load i32, ptr %i.u, align 8, !tbaa !10  ; 2 uses
  %i.hf = load i32, ptr %i.v, align 4, !tbaa !11
  %.not.i18.i.i.i = icmp ult i32 %i.he, %i.hf
  br i1 %.not.i18.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i, label %bb.ao, !prof !40

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 8) #10
  %.pre.i19.i.i.i = load i32, ptr %i.u, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i: ; preds = %bb.ao, %bb.an
  %i.hg = phi i32 [ %.pre.i19.i.i.i, %bb.ao ], [ %i.he, %bb.an ]
  %i.hh = load ptr, ptr %3, align 8, !tbaa !7
  %i.hi = zext i32 %i.hg to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hi
  store i64 %i.hd, ptr %i.hj, align 1
  %i.hk = load i32, ptr %i.u, align 8, !tbaa !10
  %i.hl = add i32 %i.hk, 1                        ; 2 uses
  store i32 %i.hl, ptr %i.u, align 8, !tbaa !10
  br label %bb.bp

_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.thread.i.i.i: ; preds = %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.i.i.i, %bb.am
  %i.hm = add i32 %i.ar, -1
  store i32 %i.hm, ptr %i.u, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !114
  %i.hq = load ptr, ptr %i.hn, align 8, !tbaa !115, !nonnull !49, !align !116 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  store ptr %i.hp, ptr %i.hr, align 8, !tbaa !89
  %i.hs = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !98 ; 2 uses
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not15.i.i.i.i.i.i, label %_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE8freeNodeEPS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.thread.i.i.i, %.loopexit.i.i.i.i.i.i
  %i.hu = phi ptr [ %i.kz, %.loopexit.i.i.i.i.i.i ], [ %i.hq, %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.thread.i.i.i ] ; 8 uses
  %i.hv = phi ptr [ %.val12.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %i.ht, %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.thread.i.i.i ] ; 5 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 8      ; 2 uses
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !tbaa !110
  %.not10.i.i.i.i.i.i = icmp eq ptr %.val11.i.i.i.i.i.i, null
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 7 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.hu, align 8, !tbaa !63 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hu, i64 16     ; 3 uses
  %.val3.i.i.i.i.i.i.i = load i32, ptr %i.hy, align 8, !tbaa !66 ; 3 uses
  %i.hz = icmp eq i32 %.val3.i.i.i.i.i.i.i, 0     ; 2 uses
  br i1 %.not10.i.i.i.i.i.i, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.hz, label %.loopexit.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val43.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hx, align 8, !tbaa !61
  %i.ia = call i64 @_ZNK6hermes11Instruction11getHashCodeEv(ptr noundef nonnull align 8 dereferenceable(132) %.val43.i.i.i.i.i.i.i.i.i) #10
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = add i32 %.val3.i.i.i.i.i.i.i, -1        ; 2 uses
  %i.id = and i32 %i.ic, %i.ib
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %bb.aq
  %.038.i.i.i.i.i.i.i.i.i = phi i32 [ 1, %bb.aq ], [ %i.io, %bb.av ] ; 2 uses
  %.036.i.i.i.i.i.i.i.i.i = phi i32 [ %i.id, %bb.aq ], [ %i.iq, %bb.av ] ; 2 uses
  %i.ie = zext i32 %.036.i.i.i.i.i.i.i.i.i to i64
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.ie ; 3 uses
  %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hx, align 8, !tbaa !61 ; 4 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.if, align 8, !tbaa !61 ; 6 uses
  %magicptr.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i to i64
  switch i64 %magicptr.i.i.i.i.i.i.i.i.i.i, label %bb.as [
    i64 -8, label %bb.at
    i64 -16, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %magicptr10.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i to i64
  switch i64 %magicptr10.i.i.i.i.i.i.i.i.i.i, label %bb.au [
    i64 -8, label %bb.at
    i64 -16, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.ar, %bb.ar
  %i.ig = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.ig, label %bb.aw, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i.i.i, !prof !71

bb.au:                                            ; preds = %bb.as
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !72
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !72
  %i.il = icmp eq i8 %i.ii, %i.ik
  br i1 %i.il, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i.i.i, !prof !82

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.im = call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.06.0.copyload.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i) #10
  br i1 %i.im, label %bb.aw, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i.i.i.i.i, !prof !71

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.04.0.copyload.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.if, align 8, !tbaa !61
  br label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i.i.i

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i.i.i.i.i, %bb.au, %bb.at
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.0.copyload.pre.i.i.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i, %bb.at ]
  %i.in = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.in, label %.loopexit.i.i.i.i.i.i, label %bb.av, !prof !40

bb.av:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i.i.i
  %i.io = add i32 %.038.i.i.i.i.i.i.i.i.i, 1
  %i.ip = add i32 %.036.i.i.i.i.i.i.i.i.i, %.038.i.i.i.i.i.i.i.i.i
  %i.iq = and i32 %i.ip, %i.ic
  br label %bb.ar, !llvm.loop !69

bb.aw:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i.i.i.i.i.i, %bb.at
  store ptr inttoptr (i64 -16 to ptr), ptr %i.if, align 8, !tbaa !61
  %i.ir = getelementptr i8, ptr %i.hu, i64 8      ; 2 uses
  %i.is = load <2 x i32>, ptr %i.ir, align 8, !tbaa !3
  %i.it = add <2 x i32> %i.is, <i32 -1, i32 1>
  store <2 x i32> %i.it, ptr %i.ir, align 8, !tbaa !3
  br label %.loopexit.i.i.i.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.hz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i51.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val43.i.i.i.i38.i.i.i = load ptr, ptr %i.hx, align 8, !tbaa !61
  %i.iu = call i64 @_ZNK6hermes11Instruction11getHashCodeEv(ptr noundef nonnull align 8 dereferenceable(132) %.val43.i.i.i.i38.i.i.i) #10
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = add i32 %.val3.i.i.i.i.i.i.i, -1        ; 2 uses
  %i.ix = and i32 %i.iw, %i.iv
  br label %bb.az

bb.az:                                            ; preds = %bb.be, %bb.ay
  %.038.i.i.i.i39.i.i.i = phi i32 [ 1, %bb.ay ], [ %i.jl, %bb.be ] ; 2 uses
  %.036.i.i.i.i40.i.i.i = phi i32 [ %i.ix, %bb.ay ], [ %i.jn, %bb.be ] ; 2 uses
  %.033.i.i.i.i41.i.i.i = phi ptr [ null, %bb.ay ], [ %spec.select.i.i.i.i48.i.i.i, %bb.be ] ; 4 uses
  %i.iy = zext i32 %.036.i.i.i.i40.i.i.i to i64
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.iy ; 6 uses
  %.sroa.06.0.copyload.i.i.i.i42.i.i.i = load ptr, ptr %i.hx, align 8, !tbaa !61 ; 4 uses
  %.sroa.05.0.copyload.i.i.i.i43.i.i.i = load ptr, ptr %i.iz, align 8, !tbaa !61 ; 6 uses
  %magicptr.i.i.i.i.i44.i.i.i = ptrtoint ptr %.sroa.06.0.copyload.i.i.i.i42.i.i.i to i64
  switch i64 %magicptr.i.i.i.i.i44.i.i.i, label %bb.ba [
    i64 -8, label %bb.bb
    i64 -16, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %magicptr10.i.i.i.i.i72.i.i.i = ptrtoint ptr %.sroa.05.0.copyload.i.i.i.i43.i.i.i to i64
  switch i64 %magicptr10.i.i.i.i.i72.i.i.i, label %bb.bc [
    i64 -8, label %bb.bb
    i64 -16, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.az, %bb.az
  %i.ja = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i42.i.i.i, %.sroa.05.0.copyload.i.i.i.i43.i.i.i
  br i1 %i.ja, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit76.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i45.i.i.i, !prof !71

bb.bc:                                            ; preds = %bb.ba
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload.i.i.i.i42.i.i.i, i64 16
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !72
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i43.i.i.i, i64 16
  %i.je = load i8, ptr %i.jd, align 8, !tbaa !72
  %i.jf = icmp eq i8 %i.jc, %i.je
  br i1 %i.jf, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i73.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i45.i.i.i, !prof !82

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i73.i.i.i: ; preds = %bb.bc
  %i.jg = call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.06.0.copyload.i.i.i.i42.i.i.i, ptr noundef nonnull %.sroa.05.0.copyload.i.i.i.i43.i.i.i) #10
  br i1 %i.jg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit76.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i74.i.i.i, !prof !71

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i74.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i73.i.i.i
  %.sroa.04.0.copyload.pre.i.i.i.i75.i.i.i = load ptr, ptr %i.iz, align 8, !tbaa !61
  br label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i45.i.i.i

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i45.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i74.i.i.i, %bb.bc, %bb.bb
  %.sroa.04.0.copyload.i.i.i.i46.i.i.i = phi ptr [ %.sroa.04.0.copyload.pre.i.i.i.i75.i.i.i, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i.i.i74.i.i.i ], [ %.sroa.05.0.copyload.i.i.i.i43.i.i.i, %bb.bc ], [ %.sroa.05.0.copyload.i.i.i.i43.i.i.i, %bb.bb ] ; 2 uses
  %i.jh = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i46.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.jh, label %bb.bd, label %bb.be, !prof !40

bb.bd:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i45.i.i.i
  %.not.i.i.i.i49.i.i.i = icmp eq ptr %.033.i.i.i.i41.i.i.i, null
  %i.ji = select i1 %.not.i.i.i.i49.i.i.i, ptr %i.iz, ptr %.033.i.i.i.i41.i.i.i
  %.val12.i.i.pre.i.i50.i.i.i = load i32, ptr %i.hy, align 8, !tbaa !66
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i51.i.i.i

bb.be:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i45.i.i.i
  %i.jj = icmp eq ptr %.sroa.04.0.copyload.i.i.i.i46.i.i.i, inttoptr (i64 -16 to ptr)
  %i.jk = icmp eq ptr %.033.i.i.i.i41.i.i.i, null
  %or.cond.not.i.i.i.i47.i.i.i = select i1 %i.jj, i1 %i.jk, i1 false
  %spec.select.i.i.i.i48.i.i.i = select i1 %or.cond.not.i.i.i.i47.i.i.i, ptr %i.iz, ptr %.033.i.i.i.i41.i.i.i
  %i.jl = add i32 %.038.i.i.i.i39.i.i.i, 1
  %i.jm = add i32 %.036.i.i.i.i40.i.i.i, %.038.i.i.i.i39.i.i.i
  %i.jn = and i32 %i.jm, %i.iw
  br label %bb.az, !llvm.loop !69

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i51.i.i.i: ; preds = %bb.bd, %bb.ax
  %.val12.i.i.i.i52.i.i.i = phi i32 [ %.val12.i.i.pre.i.i50.i.i.i, %bb.bd ], [ 0, %bb.ax ] ; 5 uses
  %.sink.i.i.i.i53.i.i.i = phi ptr [ %i.ji, %bb.bd ], [ null, %bb.ax ]
  %i.jo = getelementptr i8, ptr %i.hu, i64 8      ; 3 uses
  %.val17.i.i.i.i54.i.i.i = load i32, ptr %i.jo, align 8, !tbaa !95 ; 3 uses
  %i.jp = shl i32 %.val17.i.i.i.i54.i.i.i, 2
  %i.jq = add i32 %i.jp, 4
  %i.jr = mul i32 %.val12.i.i.i.i52.i.i.i, 3
  %.not.i.i5.i.i55.i.i.i = icmp ult i32 %i.jq, %i.jr
  br i1 %.not.i.i5.i.i55.i.i.i, label %bb.bg, label %bb.bf, !prof !40

bb.bf:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i51.i.i.i
  %i.js = shl i32 %.val12.i.i.i.i52.i.i.i, 1
  br label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.sink.split.i.i.i.i56.i.i.i

bb.bg:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit.i.i51.i.i.i
  %i.jt = getelementptr i8, ptr %i.hu, i64 12
  %.val18.i.i.i.i68.i.i.i = load i32, ptr %i.jt, align 4, !tbaa !96
  %.neg.i.i.i.i69.i.i.i = xor i32 %.val17.i.i.i.i54.i.i.i, -1
  %.neg1.i.i.i.i70.i.i.i = add i32 %.val12.i.i.i.i52.i.i.i, %.neg.i.i.i.i69.i.i.i
  %i.ju = sub i32 %.neg1.i.i.i.i70.i.i.i, %.val18.i.i.i.i68.i.i.i
  %i.jv = lshr i32 %.val12.i.i.i.i52.i.i.i, 3
  %.not11.i.i.i.i71.i.i.i = icmp ugt i32 %i.ju, %i.jv
  br i1 %.not11.i.i.i.i71.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i62.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.sink.split.i.i.i.i56.i.i.i, !prof !40

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.sink.split.i.i.i.i56.i.i.i: ; preds = %bb.bg, %bb.bf
  %.val12.sink.i.i.i.i57.i.i.i = phi i32 [ %i.js, %bb.bf ], [ %.val12.i.i.i.i52.i.i.i, %bb.bg ]
  call fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hu, i32 noundef %.val12.sink.i.i.i.i57.i.i.i)
  %.val13.i.i.i.i58.i.i.i = load ptr, ptr %i.hu, align 8, !tbaa !63
  %.val14.i.i.i.i59.i.i.i = load i32, ptr %i.hy, align 8, !tbaa !66 ; 2 uses
  %i.jw = icmp eq i32 %.val14.i.i.i.i59.i.i.i, 0
  br i1 %i.jw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit96.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.sink.split.i.i.i.i56.i.i.i
  %.val43.i.i78.i.i.i = load ptr, ptr %i.hx, align 8, !tbaa !61
  %i.jx = call i64 @_ZNK6hermes11Instruction11getHashCodeEv(ptr noundef nonnull align 8 dereferenceable(132) %.val43.i.i78.i.i.i) #10
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = add i32 %.val14.i.i.i.i59.i.i.i, -1     ; 2 uses
  %i.ka = and i32 %i.jz, %i.jy
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bn, %bb.bh
  %.038.i.i79.i.i.i = phi i32 [ 1, %bb.bh ], [ %i.ko, %bb.bn ] ; 2 uses
  %.036.i.i80.i.i.i = phi i32 [ %i.ka, %bb.bh ], [ %i.kq, %bb.bn ] ; 2 uses
  %.033.i.i81.i.i.i = phi ptr [ null, %bb.bh ], [ %spec.select.i.i88.i.i.i, %bb.bn ] ; 4 uses
  %i.kb = zext i32 %.036.i.i80.i.i.i to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %.val13.i.i.i.i58.i.i.i, i64 %i.kb ; 6 uses
  %.sroa.06.0.copyload.i.i82.i.i.i = load ptr, ptr %i.hx, align 8, !tbaa !61 ; 4 uses
  %.sroa.05.0.copyload.i.i83.i.i.i = load ptr, ptr %i.kc, align 8, !tbaa !61 ; 6 uses
  %magicptr.i.i.i84.i.i.i = ptrtoint ptr %.sroa.06.0.copyload.i.i82.i.i.i to i64
  switch i64 %magicptr.i.i.i84.i.i.i, label %bb.bj [
    i64 -8, label %bb.bk
    i64 -16, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %magicptr10.i.i.i92.i.i.i = ptrtoint ptr %.sroa.05.0.copyload.i.i83.i.i.i to i64
  switch i64 %magicptr10.i.i.i92.i.i.i, label %bb.bl [
    i64 -8, label %bb.bk
    i64 -16, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bi, %bb.bi
  %i.kd = icmp eq ptr %.sroa.06.0.copyload.i.i82.i.i.i, %.sroa.05.0.copyload.i.i83.i.i.i
  br i1 %i.kd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit96.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i85.i.i.i, !prof !71

bb.bl:                                            ; preds = %bb.bj
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload.i.i82.i.i.i, i64 16
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !72
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i83.i.i.i, i64 16
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !72
  %i.ki = icmp eq i8 %i.kf, %i.kh
  br i1 %i.ki, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i93.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i85.i.i.i, !prof !82

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i93.i.i.i: ; preds = %bb.bl
  %i.kj = call noundef zeroext i1 @_ZNK6hermes11Instruction13isIdenticalToEPKS0_(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.06.0.copyload.i.i82.i.i.i, ptr noundef nonnull %.sroa.05.0.copyload.i.i83.i.i.i) #10
  br i1 %i.kj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit96.i.i.i, label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i94.i.i.i, !prof !71

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i94.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i93.i.i.i
  %.sroa.04.0.copyload.pre.i.i95.i.i.i = load ptr, ptr %i.kc, align 8, !tbaa !61
  br label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i85.i.i.i

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i85.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i94.i.i.i, %bb.bl, %bb.bk
  %.sroa.04.0.copyload.i.i86.i.i.i = phi ptr [ %.sroa.04.0.copyload.pre.i.i95.i.i.i, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit._ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread_crit_edge.i.i94.i.i.i ], [ %.sroa.05.0.copyload.i.i83.i.i.i, %bb.bl ], [ %.sroa.05.0.copyload.i.i83.i.i.i, %bb.bk ] ; 2 uses
  %i.kk = icmp eq ptr %.sroa.04.0.copyload.i.i86.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.kk, label %bb.bm, label %bb.bn, !prof !40

bb.bm:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i85.i.i.i
  %.not.i.i89.i.i.i = icmp eq ptr %.033.i.i81.i.i.i, null
  %i.kl = select i1 %.not.i.i89.i.i.i, ptr %i.kc, ptr %.033.i.i81.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit96.i.i.i

bb.bn:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i85.i.i.i
  %i.km = icmp eq ptr %.sroa.04.0.copyload.i.i86.i.i.i, inttoptr (i64 -16 to ptr)
  %i.kn = icmp eq ptr %.033.i.i81.i.i.i, null
  %or.cond.not.i.i87.i.i.i = select i1 %i.km, i1 %i.kn, i1 false
  %spec.select.i.i88.i.i.i = select i1 %or.cond.not.i.i87.i.i.i, ptr %i.kc, ptr %.033.i.i81.i.i.i
  %i.ko = add i32 %.038.i.i79.i.i.i, 1
  %i.kp = add i32 %.036.i.i80.i.i.i, %.038.i.i79.i.i.i
  %i.kq = and i32 %i.kp, %i.jz
  br label %bb.bi, !llvm.loop !69

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit96.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i93.i.i.i, %bb.bk, %bb.bm, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.sink.split.i.i.i.i56.i.i.i
  %.sink.i.i90.i.i.i = phi ptr [ %i.kl, %bb.bm ], [ null, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.sink.split.i.i.i.i56.i.i.i ], [ %i.kc, %bb.bk ], [ %i.kc, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i93.i.i.i ]
  %.val.i.i.pre.i.i.i60.i.i.i = load i32, ptr %i.jo, align 8, !tbaa !95
  br label %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i62.i.i.i

_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i62.i.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit96.i.i.i, %bb.bg
  %i.kr = phi ptr [ %.sink.i.i90.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit96.i.i.i ], [ %.sink.i.i.i.i53.i.i.i, %bb.bg ] ; 4 uses
  %.val.i.i.i.i.i63.i.i.i = phi i32 [ %.val.i.i.pre.i.i.i60.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E15LookupBucketForIS3_EEbRKT_RPSE_.exit96.i.i.i ], [ %.val17.i.i.i.i54.i.i.i, %bb.bg ]
  %i.ks = add i32 %.val.i.i.i.i.i63.i.i.i, 1
  store i32 %i.ks, ptr %i.jo, align 8, !tbaa !95
  %.sroa.01.0.copyload.i.i.i.i64.i.i.i = load ptr, ptr %i.kr, align 8, !tbaa !61
  %i.kt = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i64.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.kt, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i66.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i62.i.i.i
  %i.ku = getelementptr i8, ptr %i.hu, i64 12     ; 2 uses
  %.val.i19.i.i.i.i65.i.i.i = load i32, ptr %i.ku, align 4, !tbaa !96
  %i.kv = add i32 %.val.i19.i.i.i.i65.i.i.i, -1
  store i32 %i.kv, ptr %i.ku, align 4, !tbaa !96
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i66.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i66.i.i.i: ; preds = %bb.bo, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i6.i.i62.i.i.i
  %i.kw = load i64, ptr %i.hx, align 8, !tbaa !61
  store i64 %i.kw, ptr %i.kr, align 8, !tbaa !61
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr null, ptr %i.kx, align 8, !tbaa !97
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit76.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit76.i.i.i: ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i73.i.i.i, %bb.bb, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i66.i.i.i
  %.0.i.i67.i.i.i = phi ptr [ %i.kr, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E16InsertIntoBucketIRKS3_JEEEPSE_SK_OT_DpOT0_.exit.i.i66.i.i.i ], [ %i.iz, %bb.bb ], [ %i.iz, %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.i.i.i.i73.i.i.i ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i.i67.i.i.i, i64 8
  %.val.i.i.i21.i.i.i = load ptr, ptr %i.hw, align 8, !tbaa !110
  store ptr %.val.i.i.i21.i.i.i, ptr %i.ky, align 8, !tbaa !97
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_ZN4llvh12DenseMapInfoIN12_GLOBAL__N_18CSEValueEE7isEqualES2_S2_.exit.thread.i.i.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_18CSEValueEPNS_18ScopedHashTableValIS3_PN6hermes5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_EixERKS3_.exit76.i.i.i, %bb.aw, %bb.ap
  %.val12.i.i.i.i.i.i = load ptr, ptr %i.hv, align 8, !tbaa !109 ; 3 uses
  store ptr %.val12.i.i.i.i.i.i, ptr %i.hs, align 8, !tbaa !98
  %i.kz = load ptr, ptr %i.hn, align 8, !tbaa !115, !nonnull !49, !align !116 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 32 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !101
  store ptr %i.lb, ptr %i.hv, align 8, !tbaa !102
  store ptr %i.hv, ptr %i.la, align 8, !tbaa !101
  %.not.i.i.i22.i.i.i = icmp eq ptr %.val12.i.i.i.i.i.i, null
  br i1 %.not.i.i.i22.i.i.i, label %_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE8freeNodeEPS4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE8freeNodeEPS4_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i, %_ZN6hermes10DomTreeDFS9StackNodeIN12_GLOBAL__N_110CSEContextEE9nextChildEv.exit.thread.i.i.i
  %i.lc = load ptr, ptr %5, align 8, !tbaa !117
  store ptr %i.lc, ptr %i.av, align 8, !tbaa !120
  store ptr %i.av, ptr %5, align 8, !tbaa !117
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE8freeNodeEPS4_.exit.i.i.i, %_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i
  %.1.ph.i.i.i = phi i8 [ %.0118.i.i.i, %_ZN6hermes10DomTreeDFS7VisitorIN12_GLOBAL__N_110CSEContextENS2_9StackNodeEE8freeNodeEPS4_.exit.i.i.i ], [ %7, %_ZN12_GLOBAL__N_110CSEContext11processNodeEPNS_9StackNodeE.exit.i.i.i ]
  %.pr.pr.i.i.i = load i32, ptr %i.u, align 8, !tbaa !10
  br label %bb.bp

bb.bp:                                            ; preds = %thread-pre-split.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i
  %.pr.i.i.i = phi i32 [ %.pr.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.hl, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i ] ; 2 uses
  %.1.i.i.i = phi i8 [ %.1.ph.i.i.i, %thread-pre-split.i.i.i ], [ %.0118.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit20.i.i.i ] ; 2 uses
  %.not.i15.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not.i15.i.i.i, label %._crit_edge.loopexit.i.i.i, label %bb.c, !llvm.loop !122

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.bp
  %8 = trunc nuw i8 %.1.i.i.i to i1
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit.i.i.i
  %.0.lcssa.i.i.i = phi i1 [ false, %_ZN4llvh23SmallVectorTemplateBaseIPN12_GLOBAL__N_19StackNodeELb1EE9push_backERKS3_.exit.i.i.i ], [ %8, %._crit_edge.loopexit.i.i.i ]
  %i.ld = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.t
  br i1 %i.le, label %_ZN12_GLOBAL__N_110CSEContext3runEv.exit, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.ld) #10
  br label %_ZN12_GLOBAL__N_110CSEContext3runEv.exit

_ZN12_GLOBAL__N_110CSEContext3runEv.exit:         ; preds = %._crit_edge.i.i.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr null, ptr %i.lf, align 8, !tbaa !101
  %i.lg = load ptr, ptr %i.k, align 8, !tbaa !7   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !10 ; 2 uses
  %i.lj = zext i32 %i.li to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.lj, 3
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.idx.i.i.i.i
  %.not6.i.i.i.i.i = icmp eq i32 %i.li, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i1

.lr.ph.i.i.i.i.i1:                                ; preds = %_ZN12_GLOBAL__N_110CSEContext3runEv.exit, %.lr.ph.i.i.i.i.i1
  %.07.i.i.i.i.i = phi ptr [ %i.lm, %.lr.ph.i.i.i.i.i1 ], [ %i.lg, %_ZN12_GLOBAL__N_110CSEContext3runEv.exit ] ; 2 uses
  %i.ll = load ptr, ptr %.07.i.i.i.i.i, align 8, !tbaa !123
  call void @free(ptr noundef %i.ll) #10
  %i.lm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.lm, %i.lk
  br i1 %.not.i.i.i.i.i2, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i1, !llvm.loop !124

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i1, %_ZN12_GLOBAL__N_110CSEContext3runEv.exit
  %i.ln = load ptr, ptr %i.n, align 8, !tbaa !7   ; 3 uses
  %i.lo = load i32, ptr %i.p, align 8, !tbaa !10  ; 2 uses
  %i.lp = zext i32 %i.lo to i64
  %.idx.i.i.i.i.i3 = shl nuw nsw i64 %i.lp, 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.idx.i.i.i.i.i3
  %.not10.i.i.i.i.i = icmp eq i32 %i.lo, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i, label %.lr.ph.i1.i.i.i.i

.lr.ph.i1.i.i.i.i:                                ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i.i, %.lr.ph.i1.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ls, %.lr.ph.i1.i.i.i.i ], [ %i.ln, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i.i ] ; 2 uses
  %i.lr = load ptr, ptr %.011.i.i.i.i.i, align 8, !tbaa !125
  call void @free(ptr noundef %i.lr) #10
  %i.ls = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.ls, %i.lq
  br i1 %.not.i2.i.i.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i.i.i, label %.lr.ph.i1.i.i.i.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i1.i.i.i.i
  %.pre.i.i.i.i4 = load ptr, ptr %i.n, align 8, !tbaa !7
  br label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i: ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i.i.i, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i.i
  %i.lt = phi ptr [ %.pre.i.i.i.i4, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i.i.i ], [ %i.ln, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i.i ] ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.o
  br i1 %i.lu, label %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i
  call void @free(ptr noundef %i.lt) #10
  br label %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i.i

_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i.i: ; preds = %bb.br, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i
  %i.lv = load ptr, ptr %i.k, align 8, !tbaa !7   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.l
  br i1 %i.lw, label %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEED2Ev.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.lv) #10
  br label %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEED2Ev.exit.i

_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEED2Ev.exit.i: ; preds = %bb.bs, %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i.i
  %.val.i.i = load ptr, ptr %i.j, align 8
  call void @_ZdlPv(ptr noundef %.val.i.i) #10
  store ptr null, ptr %5, align 8, !tbaa !117
  %i.lx = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ly = load i32, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.lz = zext i32 %i.ly to i64
  %.idx.i.i.i1.i = shl nuw nsw i64 %i.lz, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.idx.i.i.i1.i
  %.not6.i.i.i.i2.i = icmp eq i32 %i.ly, 0
  br i1 %.not6.i.i.i.i2.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i6.i, label %.lr.ph.i.i.i.i3.i

.lr.ph.i.i.i.i3.i:                                ; preds = %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEED2Ev.exit.i, %.lr.ph.i.i.i.i3.i
  %.07.i.i.i.i4.i = phi ptr [ %i.mc, %.lr.ph.i.i.i.i3.i ], [ %i.lx, %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEED2Ev.exit.i ] ; 2 uses
  %i.mb = load ptr, ptr %.07.i.i.i.i4.i, align 8, !tbaa !123
  call void @free(ptr noundef %i.mb) #10
  %i.mc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i4.i, i64 8 ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.mc, %i.ma
  br i1 %.not.i.i.i.i5.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i6.i, label %.lr.ph.i.i.i.i3.i, !llvm.loop !124

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i6.i: ; preds = %.lr.ph.i.i.i.i3.i, %_ZN4llvh15ScopedHashTableIN12_GLOBAL__N_18CSEValueEPN6hermes5ValueENS_12DenseMapInfoIS2_EENS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EEENS_18ScopedHashTableValIS2_S5_EELm32ELm8EEEED2Ev.exit.i
  %i.md = load ptr, ptr %i.e, align 8, !tbaa !7   ; 3 uses
  %i.me = load i32, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.mf = zext i32 %i.me to i64
  %.idx.i.i.i.i7.i = shl nuw nsw i64 %i.mf, 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 %.idx.i.i.i.i7.i
  %.not10.i.i.i.i8.i = icmp eq i32 %i.me, 0
  br i1 %.not10.i.i.i.i8.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i14.i, label %.lr.ph.i1.i.i.i9.i

.lr.ph.i1.i.i.i9.i:                               ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i6.i, %.lr.ph.i1.i.i.i9.i
  %.011.i.i.i.i10.i = phi ptr [ %i.mi, %.lr.ph.i1.i.i.i9.i ], [ %i.md, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i6.i ] ; 2 uses
  %i.mh = load ptr, ptr %.011.i.i.i.i10.i, align 8, !tbaa !125
  call void @free(ptr noundef %i.mh) #10
  %i.mi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i10.i, i64 16 ; 2 uses
  %.not.i2.i.i.i11.i = icmp eq ptr %i.mi, %i.mg
  br i1 %.not.i2.i.i.i11.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i.i12.i, label %.lr.ph.i1.i.i.i9.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i.i12.i: ; preds = %.lr.ph.i1.i.i.i9.i
  %.pre.i.i.i13.i = load ptr, ptr %i.e, align 8, !tbaa !7
  br label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i14.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i14.i: ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i.i12.i, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i6.i
  %i.mj = phi ptr [ %.pre.i.i.i13.i, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i.i12.i ], [ %i.md, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i.i6.i ] ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.f
  br i1 %i.mk, label %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i15.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i14.i
  call void @free(ptr noundef %i.mj) #10
  br label %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i15.i

_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i15.i: ; preds = %bb.bt, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i.i14.i
  %i.ml = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.b
  br i1 %i.mm, label %_ZN12_GLOBAL__N_110CSEContextD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i15.i
  call void @free(ptr noundef %i.ml) #10
  br label %_ZN12_GLOBAL__N_110CSEContextD2Ev.exit

_ZN12_GLOBAL__N_110CSEContextD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i.i15.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.mn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !127 ; 2 uses
  %i.mq = icmp eq i32 %i.mp, 0
  %.pre1.i.i = load ptr, ptr %i.mn, align 8, !tbaa !128 ; 3 uses
  br i1 %i.mq, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN12_GLOBAL__N_110CSEContextD2Ev.exit
  %i.mr = zext i32 %i.mp to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.mr, 4
  %i.ms = getelementptr inbounds nuw i8, ptr %.pre1.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.011.i.i.i = phi ptr [ %i.nd, %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i ], [ %.pre1.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.mt = load ptr, ptr %.011.i.i.i, align 8, !tbaa !129
  %magicptr.i.i.i = ptrtoint ptr %i.mt to i64
  switch i64 %magicptr.i.i.i, label %bb.bv [
    i64 -8, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
    i64 -16, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
  ]

bb.bv:                                            ; preds = %.lr.ph.i.i.i5
  %i.mu = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !113 ; 4 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i7, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i8 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i8, label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 40
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !131
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #12
  br label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i: ; preds = %bb.bx, %bb.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef 56) #12
  br label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, %bb.bv, %.lr.ph.i.i.i5, %.lr.ph.i.i.i5
  %i.nd = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.nd, %i.ms
  br i1 %.not.i.i.i6, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i, label %.lr.ph.i.i.i5, !llvm.loop !132

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.mn, align 8, !tbaa !128
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i

_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i, %_ZN12_GLOBAL__N_110CSEContextD2Ev.exit
  %i.ne = phi ptr [ %.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i ], [ %.pre1.i.i, %_ZN12_GLOBAL__N_110CSEContextD2Ev.exit ]
  call void @_ZdlPv(ptr noundef %i.ne) #10
  %i.nf = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i
  call void @free(ptr noundef %i.nf) #10
  br label %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit

_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i1 %.0.lcssa.i.i.i
end_hunk_1
