Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveIntervalCalc?download=true
inline.NumInlined: 560
inline.NumDeleted: 371
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.llvm::LiveIntervalCalc" = type { %"class.llvm::LiveRangeCalc" }
%"class.llvm::LiveRangeCalc" = type { ptr, ptr, ptr, ptr, ptr, %"class.llvm::BitVector", %"class.llvm::DenseMap", %"class.llvm::IndexedMap", %"class.llvm::SmallVector.5" }
%"class.llvm::BitVector" = type <{ %"class.llvm::SmallVector", i32, [4 x i8] }>
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::IndexedMap" = type <{ %"class.llvm::SmallVector.0", %"struct.std::pair", [8 x i8] }>
%"class.llvm::SmallVector.0" = type { %"class.llvm::SmallVectorImpl.1" }
%"class.llvm::SmallVectorImpl.1" = type { %"class.llvm::SmallVectorTemplateBase.2" }
%"class.llvm::SmallVectorTemplateBase.2" = type { %"class.llvm::SmallVectorTemplateCommon.3" }
%"class.llvm::SmallVectorTemplateCommon.3" = type { %"class.llvm::SmallVectorBase" }
%"struct.std::pair" = type { ptr, ptr }
%"class.llvm::SmallVector.5" = type { %"class.llvm::SmallVectorImpl.6", %"struct.llvm::SmallVectorStorage.9" }
%"class.llvm::SmallVectorImpl.6" = type { %"class.llvm::SmallVectorTemplateBase.7" }
%"class.llvm::SmallVectorTemplateBase.7" = type { %"class.llvm::SmallVectorTemplateCommon.8" }
%"class.llvm::SmallVectorTemplateCommon.8" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.9" = type { [512 x i8] }
%"class.llvm::SmallVector.122" = type { %"class.llvm::SmallVectorImpl.123", %"struct.llvm::SmallVectorStorage.126" }
%"class.llvm::SmallVectorImpl.123" = type { %"class.llvm::SmallVectorTemplateBase.124" }
%"class.llvm::SmallVectorTemplateBase.124" = type { %"class.llvm::SmallVectorTemplateCommon.125" }
%"class.llvm::SmallVectorTemplateCommon.125" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.126" = type { [32 x i8] }
%"struct.llvm::LiveRange::Segment" = type { %"class.llvm::SlotIndex", %"class.llvm::SlotIndex", ptr }
%"class.llvm::SlotIndex" = type { %"class.llvm::PointerIntPair" }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm9LiveRange6assignERKS0_RNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_6VNInfoELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9LiveRange7SegmentELb1EE15growAndPushBackERKS2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16LiveIntervalCalc9calculateERNS_12LiveIntervalEb(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 6 uses
  %4 = alloca %"class.llvm::LiveIntervalCalc", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 9 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115, !nonnull !228, !align !229 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(344) %i.i) #10, !inline_history !232 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 8, !tbaa !233 ; 7 uses
  %i.o = icmp slt i32 %.sroa.0.0.copyload.i, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = and i32 %.sroa.0.0.copyload.i, 2147483647
  %i.r = zext nneg i32 %i.q to i64
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.w = zext nneg i32 %.sroa.0.0.copyload.i to i64
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %.0.in.i.i.i = select i1 %i.o, ptr %i.u, ptr %i.y
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !234 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %.0.i.i.i, align 8
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.preheader.i.i.i, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.c ], [ %.0.i.i.i, %bb.b ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !235 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.ab = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.preheader.i.i.i, label %.lr.ph, !llvm.loop !236

.lr.ph:                                           ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.b ], [ %storemerge.i.i.i.i, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = insertelement <2 x ptr> poison, ptr %i.d, i64 0
  %i.aj = insertelement <2 x ptr> %i.ai, ptr %i.f, i64 1
  br label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit

._crit_edge:                                      ; preds = %.preheader.i.i.i, %_ZNK4llvm14MachineOperand8readsRegEv.exit, %bb.a
  call void @_ZN4llvm12LiveInterval20removeEmptySubRangesEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #10
  %i.ak = load ptr, ptr %0, align 8, !tbaa !238
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !239
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !240 ; 2 uses
  %.not92 = icmp eq ptr %i.ao, null
  br i1 %.not92, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 120
  br label %bb.t

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.loopexit: ; preds = %bb.p
  br label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit, !llvm.loop !236

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit: ; preds = %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.loopexit, %.lr.ph
  %.sroa.085.098 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.loopexit ] ; 5 uses
  %i.be = load i32, ptr %.sroa.085.098, align 8   ; 3 uses
  %i.bf = and i32 %i.be, 16777216
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = and i32 %i.be, 805306368
  %or.cond.not.i = icmp eq i32 %i.bh, 0
  %or.cond90 = or i1 %i.bg, %or.cond.not.i
  br i1 %or.cond90, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.preheader

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread: ; preds = %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit
  %i.bi = lshr i32 %i.be, 8
  %i.bj = and i32 %i.bi, 4095                     ; 3 uses
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !240 ; 2 uses
  %i.bl = icmp ne ptr %i.bk, null
  %i.bm = icmp ne i32 %i.bj, 0
  %or.cond = and i1 %2, %i.bm
  %or.cond65 = or i1 %or.cond, %i.bl
  br i1 %or.cond65, label %bb.d, label %_ZNSt14_Function_baseD2Ev.exit

bb.d:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !263
  %i.bo = zext nneg i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bo
  %.sroa.0.0.copyload.i69 = load i64, ptr %i.bp, align 8, !tbaa !284
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bq = call i64 @_ZNK4llvm19MachineRegisterInfo21getMaxLaneMaskForVRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i32 %.sroa.0.0.copyload.i) #10
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !240
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.br = phi ptr [ %i.bk, %bb.e ], [ %.pre, %bb.f ]
  %.sroa.015.0 = phi i64 [ %.sroa.0.0.copyload.i69, %bb.e ], [ %i.bq, %bb.f ]
  %.not94 = icmp eq ptr %i.br, null
  br i1 %.not94, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.bs = load i32, ptr %i.af, align 8, !tbaa !285
  %.not.i.i70 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i70, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = call i64 @_ZNK4llvm19MachineRegisterInfo21getMaxLaneMaskForVRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i32 %.sroa.0.0.copyload.i) #10
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = add i64 %i.bv, 15
  %i.bx = and i64 %i.bw, -16                      ; 2 uses
  %i.by = add i64 %i.bx, 120                      ; 2 uses
  %i.bz = load i64, ptr %i.ag, align 8, !tbaa !287
  %i.ca = icmp ult i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.j, label %bb.k, !prof !288

bb.j:                                             ; preds = %bb.i
  %i.cb = inttoptr i64 %i.by to ptr
  store ptr %i.cb, ptr %i.f, align 8, !tbaa !286
  %i.cc = inttoptr i64 %i.bx to ptr
  br label %_ZN4llvm12LiveInterval18createSubRangeFromERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_11LaneBitmaskERKNS_9LiveRangeE.exit

bb.k:                                             ; preds = %bb.i
  %i.cd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 120, i64 noundef 120, i8 4)
  br label %_ZN4llvm12LiveInterval18createSubRangeFromERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_11LaneBitmaskERKNS_9LiveRangeE.exit

_ZN4llvm12LiveInterval18createSubRangeFromERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_11LaneBitmaskERKNS_9LiveRangeE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i = phi ptr [ %i.cc, %bb.j ], [ %i.cd, %bb.k ] ; 13 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %i.ce, ptr %.0.i.i.i.i, align 8, !tbaa !289
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i32 0, ptr %i.cf, align 8, !tbaa !285
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 12
  store i32 2, ptr %i.cg, align 4, !tbaa !290
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 80
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !289
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 72
  store i32 0, ptr %i.cj, align 8, !tbaa !285
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 76
  store i32 2, ptr %i.ck, align 4, !tbaa !290
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 96
  store ptr null, ptr %i.cl, align 8, !tbaa !291
  call void @_ZN4llvm9LiveRange6assignERKS0_RNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.f)
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 104
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 112
  store i64 %i.bt, ptr %i.cn, align 8, !tbaa !284
  %i.co = load ptr, ptr %i.ad, align 8, !tbaa !240
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !292
  store ptr %.0.i.i.i.i, ptr %i.ad, align 8, !tbaa !240
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm12LiveInterval18createSubRangeFromERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_11LaneBitmaskERKNS_9LiveRangeE.exit, %bb.h, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.cp = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11 ; 3 uses
  store ptr %.sroa.085.098, ptr %i.cp, align 16, !tbaa !234
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store <2 x ptr> %i.aj, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !294
  store ptr %i.cp, ptr %3, align 8, !tbaa !294
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN4llvm12LiveInterval8SubRangeEEZNS0_16LiveIntervalCalc9calculateERS1_bE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN4llvm12LiveInterval8SubRangeEEZNS0_16LiveIntervalCalc9calculateERS1_bE3$_0E9_M_invokeERKSt9_Any_dataS3_">, ptr %i.ah, align 8, !tbaa !294
  call void @_ZN4llvm12LiveInterval15refineSubRangesERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEENS_11LaneBitmaskESt8functionIFvRNS0_8SubRangeEEERKNS_11SlotIndexesERKNS_18TargetRegisterInfoEj(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 %.sroa.015.0, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(416) %i.d, ptr noundef nonnull align 8 dereferenceable(316) %i.m, i32 noundef 0) #10
  %i.cq = load ptr, ptr %i.ah, align 8, !tbaa !295 ; 2 uses
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #10, !inline_history !297 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %bb.l, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread
  %i.cs = load i32, ptr %.sroa.085.098, align 8   ; 2 uses
  %i.ct = and i32 %i.cs, 16777216
  %.not95 = icmp eq i32 %i.ct, 0
  br i1 %.not95, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.preheader, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !240
  %.not96 = icmp eq ptr %i.cu, null
  br i1 %.not96, label %bb.o, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.preheader

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr i8, ptr %.sroa.085.098, i64 8
  %.val66 = load ptr, ptr %i.cv, align 8, !tbaa !298
  call fastcc void @_ZL13createDeadDefRN4llvm11SlotIndexesERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERNS_9LiveRangeERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(416) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 %i.cs, ptr %.val66)
  br label %_ZNK4llvm14MachineOperand8readsRegEv.exit.preheader

_ZNK4llvm14MachineOperand8readsRegEv.exit.preheader: ; preds = %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit, %_ZNSt14_Function_baseD2Ev.exit, %bb.n, %bb.o
  br label %_ZNK4llvm14MachineOperand8readsRegEv.exit

_ZNK4llvm14MachineOperand8readsRegEv.exit:        ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.preheader, %bb.p
  %.pn.i.i = phi ptr [ %storemerge.i.i, %bb.p ], [ %.sroa.085.098, %_ZNK4llvm14MachineOperand8readsRegEv.exit.preheader ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !235 ; 4 uses
  %.not.i.i71 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i71, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit
  %i.cw = load i32, ptr %storemerge.i.i, align 8
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %_ZNK4llvm14MachineOperand8readsRegEv.exit, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.loopexit, !llvm.loop !236

bb.q:                                             ; preds = %_ZN4llvm13LiveRangeCalcD2Ev.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.cy, align 8, !tbaa !285
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.cz, align 8, !tbaa !285
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !41
  %.sroa.024.033.i = load ptr, ptr %i.an, align 8, !tbaa !301 ; 2 uses
  %.not2934.i = icmp eq ptr %.sroa.024.033.i, null
  br i1 %.not2934.i, label %_ZN4llvm16LiveIntervalCalc31constructMainRangeFromSubrangesERNS_12LiveIntervalE.exit, label %.lr.ph36.i

.loopexit.i:                                      ; preds = %bb.s, %.lr.ph36.i
  %.sroa.024.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.024.035.i, i64 104
  %.sroa.024.0.i = load ptr, ptr %.sroa.024.0.in.i, align 8, !tbaa !301 ; 2 uses
  %.not29.i = icmp eq ptr %.sroa.024.0.i, null
  br i1 %.not29.i, label %_ZN4llvm16LiveIntervalCalc31constructMainRangeFromSubrangesERNS_12LiveIntervalE.exit, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %bb.q, %.loopexit.i
  %.sroa.024.035.i = phi ptr [ %.sroa.024.0.i, %.loopexit.i ], [ %.sroa.024.033.i, %bb.q ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.024.035.i, i64 64
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !289 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.024.035.i, i64 72
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !285 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %.idx.i = shl nuw nsw i64 %i.df, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx.i
  %.not30.i = icmp eq i32 %i.de, 0
  br i1 %.not30.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph36.i, %bb.s
  %.031.i = phi ptr [ %i.dn, %bb.s ], [ %i.dc, %.lr.ph36.i ] ; 2 uses
  %i.dh = load ptr, ptr %.031.i, align 8, !tbaa !302
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.di, align 8 ; 3 uses
  %i.dj = icmp ult i64 %.0.copyload.i.i.i.i.i.i, 8
  %i.dk = and i64 %.0.copyload.i.i.i.i.i.i, 6
  %i.dl = icmp eq i64 %i.dk, 0
  %or.cond.i = or i1 %i.dj, %i.dl
  br i1 %or.cond.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.dm = call noundef ptr @_ZN4llvm9LiveRange13createDeadDefENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.da) #10 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.031.i, i64 8 ; 2 uses
  %.not.i76 = icmp eq ptr %i.dn, %i.dg
  br i1 %.not.i76, label %.loopexit.i, label %.lr.ph.i

_ZN4llvm16LiveIntervalCalc31constructMainRangeFromSubrangesERNS_12LiveIntervalE.exit: ; preds = %.loopexit.i, %bb.q
  call void @_ZN4llvm13LiveRangeCalc15resetLiveOutMapEv(ptr noundef nonnull align 8 dereferenceable(704) %0) #10
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.n, align 8, !tbaa !233
  call void @_ZN4llvm16LiveIntervalCalc12extendToUsesERNS_9LiveRangeENS_8RegisterENS_11LaneBitmaskEPNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 %.sroa.0.0.copyload.i23.i, i64 -1, ptr noundef nonnull align 8 dereferenceable(120) %1)
  br label %bb.ac

bb.t:                                             ; preds = %.preheader, %_ZN4llvm13LiveRangeCalcD2Ev.exit
  %.sroa.078.099 = phi ptr [ %i.ao, %.preheader ], [ %i.fc, %_ZN4llvm13LiveRangeCalcD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %4, i8 0, i64 40, i1 false)
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !289
  store i32 0, ptr %i.ar, align 8, !tbaa !285
  store i32 6, ptr %i.as, align 4, !tbaa !290
  store i32 0, ptr %i.at, align 8, !tbaa !303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !289
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !289
  store i32 0, ptr %i.ba, align 8, !tbaa !285
  store i32 16, ptr %i.bb, align 4, !tbaa !290
  call void @_ZN4llvm13LiveRangeCalc5resetEPKNS_15MachineFunctionEPNS_11SlotIndexesEPNS_20MachineDominatorTreeEPNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(704) %4, ptr noundef %i.ak, ptr noundef %i.d, ptr noundef %i.am, ptr noundef %i.f) #10
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.078.099, i64 112
  %.sroa.03.0.copyload = load i64, ptr %i.do, align 8, !tbaa !284
  call void @_ZN4llvm16LiveIntervalCalc12extendToUsesERNS_9LiveRangeENS_8RegisterENS_11LaneBitmaskEPNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(704) %4, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.078.099, i32 %.sroa.0.0.copyload.i, i64 %.sroa.03.0.copyload, ptr noundef nonnull %1)
  %i.dp = load ptr, ptr %i.ay, align 8, !tbaa !289 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.az
  br i1 %i.dq, label %_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.dp) #10
  br label %_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i: ; preds = %bb.u, %bb.t
  %i.dr = load ptr, ptr %i.av, align 8, !tbaa !289 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.aw
  br i1 %i.ds, label %_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i
  call void @free(ptr noundef %i.dr) #10
  br label %_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i

_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i: ; preds = %bb.v, %_ZN4llvm11SmallVectorINS_13LiveRangeCalc11LiveInBlockELj16EED2Ev.exit.i
  %i.dt = load i32, ptr %i.bc, align 4, !tbaa !304 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZN4llvm8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES4_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm10IndexedMapISt4pairIPNS_6VNInfoEPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEENS_17MBB2NumberFunctorEED2Ev.exit.i
  %i.dv = load ptr, ptr %i.au, align 8, !tbaa !305
  %i.dw = load ptr, ptr %i.bd, align 8, !tbaa !306
  %i.dx = zext i32 %i.dt to i64
  %i.dy = add nuw nsw i64 %i.dx, 31
  %i.dz = lshr i64 %i.dy, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !233 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ec = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.w

bb.w:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.eb, %.lr.ph.i.i ], [ %i.eq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ed = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ee = or disjoint i32 %i.ed, %i.ec
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [152 x i8], ptr %i.dv, i64 %i.ef ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !289 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef %i.ej) #10
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i:              ; preds = %bb.x, %bb.w
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !289 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.em) #10
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.y, %_ZN4llvm9BitVectorD2Ev.exit.i.i.i.i
  %i.ep = add i32 %.0.i3.i.i, -1
  %i.eq = and i32 %i.ep, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.w, !llvm.loop !307

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i77 = icmp eq i64 %indvars.iv.next.i.i, %i.dz
  br i1 %.not.i.i.i77, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !308

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.bc, align 4, !tbaa !304 ; 2 uses
  %i.er = icmp eq i32 %.pr.i, 0
  br i1 %i.er, label %_ZN4llvm8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES4_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9LiveRangeESt4pairINS_9BitVectorES5_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i
  %i.es = load ptr, ptr %i.au, align 8, !tbaa !305
  %i.et = zext i32 %.pr.i to i64                  ; 2 uses
  %i.eu = mul nuw nsw i64 %i.et, 152
end_hunk_0
