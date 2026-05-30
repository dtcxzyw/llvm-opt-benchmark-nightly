inline.NumInlined: 398
inline.NumDeleted: 258
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [2 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.llvh::SmallPtrSet.55" = type { %"class.llvh::SmallPtrSetImpl.base", [16 x ptr] }
%"class.llvh::SmallPtrSetImpl.base" = type { %"class.llvh::SmallPtrSetImplBase.base" }
%"class.llvh::SmallPtrSetImplBase.base" = type <{ ptr, ptr, i32, i32, i32 }>
%"class.llvh::SmallVector.56" = type { %"class.llvh::SmallVectorImpl.42", %"struct.llvh::SmallVectorStorage.57" }
%"class.llvh::SmallVectorImpl.42" = type { %"class.llvh::SmallVectorTemplateBase.43" }
%"class.llvh::SmallVectorTemplateBase.43" = type { %"class.llvh::SmallVectorTemplateCommon.44" }
%"class.llvh::SmallVectorTemplateCommon.44" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.57" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.46"] }
%"struct.llvh::AlignedCharArrayUnion.46" = type { %"struct.llvh::AlignedCharArray" }
%"class.llvh::SmallPtrSet" = type { %"class.llvh::SmallPtrSetImpl.base", [8 x ptr] }
%"class.llvh::SmallVector.41" = type { %"class.llvh::SmallVectorImpl.42", %"struct.llvh::SmallVectorStorage.45" }
%"struct.llvh::SmallVectorStorage.45" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.46"] }
%"class.hermes::IRBuilder" = type { ptr, %"class.llvh::ilist_iterator", ptr, %"class.llvh::SMLoc", ptr }
%"class.llvh::ilist_iterator" = type { ptr }
%"class.llvh::SMLoc" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZN6hermes11SimplifyCFGD0Ev = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes11SimplifyCFGE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes11SimplifyCFGD0Ev, ptr @_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE] }, align 8
@.str = private unnamed_addr constant [12 x i8] c"SimplifyCFG\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  %3 = alloca %"class.llvh::SmallPtrSet.55", align 8 ; 14 uses
  %4 = alloca %"class.llvh::SmallVector.56", align 8 ; 10 uses
  %5 = alloca %"class.llvh::SmallPtrSet", align 8 ; 20 uses
  %6 = alloca %"class.llvh::SmallVector.41", align 8 ; 10 uses
  %7 = alloca %"class.hermes::IRBuilder", align 8 ; 6 uses
  %8 = alloca %"class.hermes::IRBuilder", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.backedge.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !7
  store ptr %i.y, ptr %8, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %.sroa.0116.0154.i = load ptr, ptr %i.c, align 8, !tbaa !60 ; 3 uses
  %.not131155.i = icmp eq ptr %.sroa.0116.0154.i, %i.d
  br i1 %.not131155.i, label %.preheader138.i, label %.lr.ph.i

.preheader138.loopexit.i:                         ; preds = %.thread121.i
  %.sroa.0112.0159.pre.i = load ptr, ptr %i.c, align 8, !tbaa !60
  br label %.preheader138.i

.preheader138.i:                                  ; preds = %.preheader138.loopexit.i, %.backedge
  %.sroa.0112.0159.i = phi ptr [ %.sroa.0116.0154.i, %.backedge ], [ %.sroa.0112.0159.pre.i, %.preheader138.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i8 [ 0, %.backedge ], [ %.5.i, %.preheader138.loopexit.i ] ; 2 uses
  %.not132160.i = icmp eq ptr %.sroa.0112.0159.i, %i.d
  br i1 %.not132160.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

.lr.ph.i:                                         ; preds = %.backedge, %.thread121.i
  %.sroa.0116.0157.i = phi ptr [ %.sroa.0116.0.i, %.thread121.i ], [ %.sroa.0116.0154.i, %.backedge ] ; 3 uses
  %.0156.i = phi i8 [ %.5.i, %.thread121.i ], [ 0, %.backedge ] ; 4 uses
  %i.z = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0116.0157.i) #8 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !61
  %i.ac = icmp ne i8 %i.ab, 80
  %.not82135.i = icmp eq ptr %i.z, null
  %.not82.i = or i1 %.not82135.i, %i.ac
  br i1 %.not82.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !7
  store ptr %i.ai, ptr %7, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.ae) #8
  %i.aj = call noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132) %i.z) #8 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !61
  %i.al = add i8 %i.ak, -109
  %i.am = icmp ult i8 %i.al, 11                   ; 3 uses
  %spec.select.i.i.i = select i1 %i.am, ptr %i.aj, ptr null
  br i1 %i.am, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.an = call noundef ptr @_ZNK6hermes10SwitchInst21getDefaultDestinationEv(ptr noundef nonnull align 8 dereferenceable(132) %i.z) #8 ; 2 uses
  %i.ao = call noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132) %i.z) #8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %.split.loop.exit37.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.03242.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bb, %bb.g ] ; 2 uses
  %i.aq = call { ptr, ptr } @_ZNK6hermes10SwitchInst11getCasePairEj(ptr noundef nonnull align 8 dereferenceable(132) %i.z, i32 noundef %.03242.i.i) #8 ; 3 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !61
  %i.at = icmp eq i8 %i.as, 114
  br i1 %i.at, label %bb.e, label %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.au = load i8, ptr %i.aj, align 8, !tbaa !61
  %i.av = icmp eq i8 %i.au, 114
  br i1 %i.av, label %bb.f, label %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !81
  %i.ay = load double, ptr %i.ap, align 8, !tbaa !81
  %i.az = fcmp oeq double %i.ax, %i.ay
  br i1 %i.az, label %.split.loop.exit.i.i, label %bb.g

_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ba = icmp eq ptr %i.ar, %spec.select.i.i.i
  br i1 %i.ba, label %.split.loop.exit39.i.i, label %bb.g

bb.g:                                             ; preds = %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i, %bb.f
  %i.bb = add nuw i32 %.03242.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bb, %i.ao
  br i1 %exitcond.not.i.i, label %.split.loop.exit37.i.i, label %bb.d, !llvm.loop !86

.split.loop.exit.i.i:                             ; preds = %bb.f
  %i.bc = extractvalue { ptr, ptr } %i.aq, 1
  br label %.split.loop.exit37.i.i

.split.loop.exit39.i.i:                           ; preds = %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i
  %i.bd = extractvalue { ptr, ptr } %i.aq, 1
  br label %.split.loop.exit37.i.i

.split.loop.exit37.i.i:                           ; preds = %bb.g, %.split.loop.exit39.i.i, %.split.loop.exit.i.i, %bb.c
  %.2.i.i = phi ptr [ %i.bd, %.split.loop.exit39.i.i ], [ %i.bc, %.split.loop.exit.i.i ], [ %i.an, %bb.c ], [ %i.an, %bb.g ] ; 2 uses
  %i.be = call noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132) %i.z) #8 ; 2 uses
  %.not45.i.i = icmp eq i32 %i.be, -1
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph44.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %.split.loop.exit37.i.i
  %i.bf = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %.2.i.i) #8 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = select i1 %i.bg, ptr null, ptr %i.bh
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef %i.bi) #8
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.z) #8
  br label %bb.j

.lr.ph44.i.i:                                     ; preds = %.split.loop.exit37.i.i, %bb.i
  %.03143.i.i = phi i32 [ %i.bm, %bb.i ], [ 0, %.split.loop.exit37.i.i ] ; 3 uses
  %i.bj = call noundef ptr @_ZNK6hermes10SwitchInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.z, i32 noundef %.03143.i.i) #8 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %.2.i.i
  br i1 %i.bk, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph44.i.i
  %i.bl = call noundef zeroext i1 @_ZN6hermes27deleteIncomingBlockFromPhisEPNS_10BasicBlockES1_(ptr noundef %i.bj, ptr noundef nonnull %i.ae) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph44.i.i
  %i.bm = add nuw i32 %.03143.i.i, 1
  %exitcond48.not.i.i = icmp eq i32 %.03143.i.i, %i.be
  br i1 %exitcond48.not.i.i, label %._crit_edge.i.i, label %.lr.ph44.i.i, !llvm.loop !88

bb.j:                                             ; preds = %._crit_edge.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %9 = trunc nuw i8 %.0156.i to i1
  %i.bn = or i1 %i.am, %9
  %10 = zext i1 %i.bn to i8
  br label %.thread121.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bo = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0116.0157.i) #8 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !61
  %i.br = icmp ne i8 %i.bq, 81
  %.not83136.i = icmp eq ptr %i.bo, null
  %.not83.i = or i1 %.not83136.i, %i.br
  br i1 %.not83.i, label %.thread121.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bo, i32 noundef 1) #8 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -16
  %i.bv = select i1 %i.bt, ptr null, ptr %i.bu    ; 3 uses
  %i.bw = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bo, i32 noundef 2) #8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null                 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %i.bz = select i1 %i.bx, ptr null, ptr %i.by    ; 2 uses
  %i.ca = icmp eq ptr %i.bv, %i.bz
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZL33replaceCondBranchWithDirectBranchPN6hermes14CondBranchInstEPNS_10BasicBlockE(ptr noundef %i.bo, ptr noundef %i.bv)
  br label %.thread121.i

bb.n:                                             ; preds = %bb.l
  %i.cb = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bo, i32 noundef 0) #8
  %i.cc = call noundef ptr @_ZN6hermes13evalToBooleanERNS_9IRBuilderEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %i.cb) #8 ; 2 uses
  %.not84.i = icmp eq ptr %i.cc, null
  br i1 %.not84.i, label %.thread121.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !89, !range !91, !noundef !92
  %i.cf = trunc nuw i8 %i.ce to i1                ; 2 uses
  %.not85.i = select i1 %i.cf, i1 %i.bt, i1 %i.bx
  br i1 %.not85.i, label %.thread121.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..i = select i1 %i.cf, ptr %i.bv, ptr %i.bz
  call fastcc void @_ZL33replaceCondBranchWithDirectBranchPN6hermes14CondBranchInstEPNS_10BasicBlockE(ptr noundef %i.bo, ptr noundef nonnull %..i)
  br label %.thread121.i

.thread121.i:                                     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %.5.i = phi i8 [ %10, %bb.j ], [ %.0156.i, %bb.k ], [ 1, %bb.m ], [ 1, %bb.p ], [ %.0156.i, %bb.o ], [ %.0156.i, %bb.n ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0116.0157.i, i64 8
  %.sroa.0116.0.i = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %.not131.i = icmp eq ptr %.sroa.0116.0.i, %i.d
  br i1 %.not131.i, label %.preheader138.loopexit.i, label %.lr.ph.i

.lr.ph164.i:                                      ; preds = %.preheader138.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
  %.sroa.0112.0162.i = phi ptr [ %.sroa.0112.0.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.sroa.0112.0159.i, %.preheader138.i ] ; 14 uses
  %.6161.i = phi i8 [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.0.lcssa.i, %.preheader138.i ] ; 10 uses
  %i.ch = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !61
  %i.ck = icmp ne i8 %i.cj, 77
  %.not133.i = icmp eq ptr %i.ch, null
  %.not.i = or i1 %.not133.i, %i.ck
  br i1 %.not.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph164.i
  %i.cl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ch, i32 noundef 0) #8 ; 6 uses
  %i.cm = icmp eq ptr %i.cl, null                 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -16 ; 2 uses
  %i.co = select i1 %i.cm, ptr null, ptr %i.cn    ; 4 uses
  %i.cp = icmp eq ptr %i.co, %.sroa.0112.0162.i
  br i1 %i.cp, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr i8, ptr %i.cl, i64 48
  %.val.i = load ptr, ptr %i.cq, align 8, !tbaa !60
  %i.cr = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i8, ptr %i.cr, align 8, !tbaa !61
  switch i8 %.val.val.i, label %bb.s [
    i8 85, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
    i8 60, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
    i8 56, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 16 ; 7 uses
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cs) #8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !93 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !94 ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %.idx.i.i = shl nuw nsw i64 %i.cx, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i
  %.not13.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not13.not.i.i, label %.loopexit.i, label %.lr.ph.i88.i

bb.t:                                             ; preds = %.lr.ph.i88.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.01114.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.cz, %i.cy
  br i1 %.not.not.i.i, label %.loopexit.i, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %bb.s, %bb.t
  %.01114.i.i = phi ptr [ %i.cz, %bb.t ], [ %i.cu, %bb.s ] ; 2 uses
  %i.da = load ptr, ptr %.01114.i.i, align 8, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !61
  %i.dd = icmp eq i8 %i.dc, 33
  br i1 %i.dd, label %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i, label %bb.t

_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i: ; preds = %.lr.ph.i88.i
  %i.de = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !60
  %.not.i90.i = icmp eq ptr %i.de, %i.dg
  br i1 %.not.i90.i, label %bb.u, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.u:                                             ; preds = %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i
  %i.dh = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !61
  %.not125.i.i = icmp eq i8 %i.dj, 77
  br i1 %.not125.i.i, label %bb.v, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %i.f, ptr %5, align 8, !tbaa !97
  store ptr %i.f, ptr %i.g, align 8, !tbaa !100
  store i32 8, ptr %i.h, align 8, !tbaa !101
  store i32 0, ptr %i.i, align 4, !tbaa !102
  store i32 0, ptr %i.j, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %i.k, ptr %6, align 8, !tbaa !93
  store i32 0, ptr %i.l, align 8, !tbaa !94
  store i32 8, ptr %i.m, align 4, !tbaa !104
  %i.dk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cs) #8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !93 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !94 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %.idx.i91.i = shl nuw nsw i64 %i.do, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i91.i
  %.not126246.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not126246.i.i, label %.critedge141.i.i, label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %bb.v, %.critedge139.i.i
  %.0100247.i.i = phi ptr [ %i.fv, %.critedge139.i.i ], [ %i.dl, %bb.v ] ; 2 uses
  %i.dq = load ptr, ptr %.0100247.i.i, align 8, !tbaa !95 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !61
  switch i8 %i.ds, label %.thread217.i.i [
    i8 77, label %bb.w
    i8 81, label %bb.w
    i8 80, label %bb.w
    i8 82, label %bb.w
    i8 83, label %bb.w
    i8 33, label %.critedge139.i.i
  ]

bb.w:                                             ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 56 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !62 ; 3 uses
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !100 ; 6 uses
  %i.dw = load ptr, ptr %5, align 8, !tbaa !97    ; 5 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dy = load i32, ptr %i.i, align 4, !tbaa !102 ; 4 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.dz, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i.i.i.i.i
  %.not18.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not18.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x, %bb.y
  %.01319.i.i.i.i.i = phi ptr [ %i.ed, %bb.y ], [ %i.dw, %bb.x ] ; 3 uses
  %i.eb = load ptr, ptr %.01319.i.i.i.i.i, align 8, !tbaa !105
  %i.ec = icmp eq ptr %i.eb, %i.du
  br i1 %i.ec, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.01319.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ed, %i.ea
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !106

._crit_edge.i.i.i.i.i:                            ; preds = %bb.y, %bb.x
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dz
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

bb.z:                                             ; preds = %bb.w
  %i.ef = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.du) #8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !105
  %i.eh = icmp eq ptr %i.eg, %i.du
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !100 ; 4 uses
  %.pre4.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !97 ; 5 uses
  br i1 %i.eh, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i, label %bb.aa

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i: ; preds = %bb.z
  %.pre5.i.i.i.i = load i32, ptr %i.i, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ei = icmp eq ptr %.pre.i.i.i.i, %.pre4.i.i.i.i
  %i.ej = load i32, ptr %i.i, align 4             ; 2 uses
  %i.ek = load i32, ptr %i.h, align 8
  %.v.v.i14.i.i.i.i.i = select i1 %i.ei, i32 %i.ej, i32 %i.ek
  %.v.i15.i.i.i.i.i = zext i32 %.v.v.i14.i.i.i.i.i to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.v.i15.i.i.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.aa, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.em = phi ptr [ %i.dw, %._crit_edge.i.i.i.i.i ], [ %.pre4.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre4.i.i.i.i, %bb.aa ], [ %i.dw, %.lr.ph.i.i.i.i.i ]
  %i.en = phi ptr [ %i.dv, %._crit_edge.i.i.i.i.i ], [ %.pre4.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre4.i.i.i.i, %bb.aa ], [ %i.dv, %.lr.ph.i.i.i.i.i ]
  %i.eo = phi i32 [ %i.dy, %._crit_edge.i.i.i.i.i ], [ %.pre5.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %i.ej, %bb.aa ], [ %i.dy, %.lr.ph.i.i.i.i.i ]
  %i.ep = phi ptr [ %i.dv, %._crit_edge.i.i.i.i.i ], [ %.pre.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre.i.i.i.i, %bb.aa ], [ %i.dv, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.2.i.i.i.i.i = phi ptr [ %i.ee, %._crit_edge.i.i.i.i.i ], [ %i.ef, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %i.el, %bb.aa ], [ %.01319.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.en
  %i.er = load i32, ptr %i.h, align 8
  %.v.v.i4.i.i.i.i.i = select i1 %i.eq, i32 %i.eo, i32 %i.er
  %.v.i5.i.i.i.i.i = zext i32 %.v.v.i4.i.i.i.i.i to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.v.i5.i.i.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i.i.i = icmp eq ptr %.2.i.i.i.i.i, %i.es
  br i1 %.not3.i4.i.i6.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i.i.i

.lr.ph.i5.i.i7.i.i.i.i.i:                         ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i, %.critedge2.i7.i.i9.i.i.i.i.i
  %.sroa.0.3.i.i.i.i.i = phi ptr [ %i.eu, %.critedge2.i7.i.i9.i.i.i.i.i ], [ %.2.i.i.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i ] ; 3 uses
  %i.et = load ptr, ptr %.sroa.0.3.i.i.i.i.i, align 8, !tbaa !105
  %switch.i6.i.i8.i.i.i.i.i = icmp ugt ptr %i.et, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.i.i, label %.critedge2.i7.i.i9.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i

.critedge2.i7.i.i9.i.i.i.i.i:                     ; preds = %.lr.ph.i5.i.i7.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.i.i = icmp eq ptr %i.eu, %i.es
  br i1 %.not.i8.i.i10.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i.i.i, !llvm.loop !107

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i.i.i
  %.not232.i.i = icmp eq ptr %.sroa.0.3.i.i.i.i.i, %i.es
  br i1 %.not232.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %bb.ac

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i: ; preds = %.critedge2.i7.i.i9.i.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.ew = load i32, ptr %i.l, align 8, !tbaa !94  ; 2 uses
  %i.ex = load i32, ptr %i.m, align 4, !tbaa !104
  %.not.i.i.i = icmp ult i32 %i.ew, %i.ex
  br i1 %.not.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i, label %bb.ab, !prof !108

bb.ab:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 8) #8
  %.pre.i.i.i = load i32, ptr %i.l, align 8, !tbaa !94
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i: ; preds = %bb.ab, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i
  %i.ey = phi i32 [ %.pre.i.i.i, %bb.ab ], [ %i.ew, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i ]
  %i.ez = load ptr, ptr %6, align 8, !tbaa !93
  %i.fa = zext i32 %i.ey to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = ptrtoint ptr %i.ev to i64
end_hunk_0
begin_hunk_1_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a
  %.v.v.i4.i.i.i181.i.i = select i1 %i.js, i32 %i.jq, i32 %i.jt
  %.v.i5.i.i.i182.i.i = zext i32 %.v.v.i4.i.i.i181.i.i to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.v.i5.i.i.i182.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i183.i.i = icmp eq ptr %.2.i.i.i180.i.i, %i.ju
  br i1 %.not3.i4.i.i6.i.i.i183.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i184.i.i

.lr.ph.i5.i.i7.i.i.i184.i.i:                      ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i, %.critedge2.i7.i.i9.i.i.i190.i.i
  %.sroa.0.3.i.i.i185.i.i = phi ptr [ %i.jw, %.critedge2.i7.i.i9.i.i.i190.i.i ], [ %.2.i.i.i180.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i ] ; 3 uses
  %i.jv = load ptr, ptr %.sroa.0.3.i.i.i185.i.i, align 8, !tbaa !105
  %switch.i6.i.i8.i.i.i186.i.i = icmp ugt ptr %i.jv, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i186.i.i, label %.critedge2.i7.i.i9.i.i.i190.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i

.critedge2.i7.i.i9.i.i.i190.i.i:                  ; preds = %.lr.ph.i5.i.i7.i.i.i184.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i185.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i191.i.i = icmp eq ptr %i.jw, %i.ju
  br i1 %.not.i8.i.i10.i.i.i191.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i184.i.i, !llvm.loop !107

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i184.i.i
  %.not236.i.i = icmp eq ptr %.sroa.0.3.i.i.i185.i.i, %i.ju
  br i1 %.not236.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i, %.lr.ph270.i.i
  call void @_ZN6hermes7PhiInst11removeEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.if, i32 noundef %.0113268.i.i) #8
  br label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i: ; preds = %.critedge2.i7.i.i9.i.i.i190.i.i, %bb.av, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i
  %.0113.i.i = add nsw i32 %.0113268.i.i, -1
  %i.jx = icmp sgt i32 %.0113268.i.i, 0
  br i1 %i.jx, label %.lr.ph270.i.i, label %._crit_edge271.i.i, !llvm.loop !116

.lr.ph275.i.i:                                    ; preds = %._crit_edge271.i.i, %.lr.ph275.i.i
  %.0101273.i.i = phi ptr [ %i.jz, %.lr.ph275.i.i ], [ %i.ir, %._crit_edge271.i.i ] ; 2 uses
  %i.jy = load ptr, ptr %.0101273.i.i, align 8, !tbaa !117
  call void @_ZN6hermes7PhiInst8addEntryEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %i.if, ptr noundef %.0119.lcssa.i.i, ptr noundef %i.jy) #8
  %i.jz = getelementptr inbounds nuw i8, ptr %.0101273.i.i, i64 8 ; 2 uses
  %.not135.i.i = icmp eq ptr %i.jz, %i.iu
  br i1 %.not135.i.i, label %.loopexit.i.i, label %.lr.ph275.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph275.i.i, %._crit_edge271.i.i, %.lr.ph278.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %.0121277.i.i, i64 8 ; 2 uses
  %.not133.i.i = icmp eq ptr %i.ka, %i.id
  br i1 %.not133.i.i, label %._crit_edge279.i.i, label %.lr.ph278.i.i

.thread217.i.i:                                   ; preds = %.lr.ph.i92.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i, %._crit_edge279.i.i, %.critedge141.i.i
  %.11.i.i = phi i1 [ true, %._crit_edge279.i.i ], [ false, %.critedge141.i.i ], [ false, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i ], [ false, %.lr.ph.i92.i ]
  %i.kb = load ptr, ptr %6, align 8, !tbaa !93    ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.k
  br i1 %i.kc, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %.thread217.i.i
  call void @free(ptr noundef %i.kb) #8
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i: ; preds = %bb.aw, %.thread217.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.kd = load ptr, ptr %i.g, align 8, !tbaa !100 ; 2 uses
  %i.ke = load ptr, ptr %5, align 8, !tbaa !97
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i
  call void @free(ptr noundef %i.kd) #8
  br label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i

_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i: ; preds = %bb.ax, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %.11.i.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

.loopexit.i:                                      ; preds = %bb.t, %bb.s
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 64
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !60
  %i.ki = icmp eq ptr %i.kh, %i.ch
  br i1 %i.ki, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %.loopexit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !93 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 32
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !94 ; 2 uses
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %.idx.i.i.i96.i = shl nuw nsw i64 %i.kn, 3
  %i.ko = getelementptr i8, ptr %i.kk, i64 %.idx.i.i.i96.i ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.km, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i97.i

.lr.ph.i.i.i.i97.i:                               ; preds = %bb.ay, %bb.az
  %.sroa.0.0.i.i.i = phi ptr [ %i.ku, %bb.az ], [ %i.kk, %bb.ay ] ; 3 uses
  %i.kp = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !95 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !61
  %i.ks = add i8 %i.kr, -90
  %i.kt = icmp ult i8 %i.ks, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.kp, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.kt
  br i1 %.not1.i.i.i.i.i, label %bb.az, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i

bb.az:                                            ; preds = %.lr.ph.i.i.i.i97.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i98.i = icmp eq ptr %i.ku, %i.ko
  br i1 %.not.i.i.i.i98.i, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i97.i, !llvm.loop !118

_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i: ; preds = %bb.az, %.lr.ph.i.i.i.i97.i, %bb.ay
  %.sroa.0.1.i.i.i = phi ptr [ %i.kk, %bb.ay ], [ %i.ko, %bb.az ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i97.i ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kn
  %i.kw = icmp eq ptr %.sroa.0.1.i.i.i, %i.kv
  br i1 %i.kw, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %spec.select.i = select i1 %i.cm, ptr null, ptr %i.kx
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef %spec.select.i) #8
  br label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.bb:                                            ; preds = %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, %.loopexit.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !93 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !94 ; 2 uses
  %i.lc = zext i32 %i.lb to i64                   ; 2 uses
  %.idx.i.i.i99.i = shl nuw nsw i64 %i.lc, 3
  %i.ld = getelementptr i8, ptr %i.kz, i64 %.idx.i.i.i99.i ; 4 uses
  %.not3.i.i.i.i100.i = icmp eq i32 %i.lb, 0
  br i1 %.not3.i.i.i.i100.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i101.i

.lr.ph.i.i.i.i101.i:                              ; preds = %bb.bb, %bb.bc
  %.sroa.0.0.i.i102.i = phi ptr [ %i.lj, %bb.bc ], [ %i.kz, %bb.bb ] ; 3 uses
  %i.le = load ptr, ptr %.sroa.0.0.i.i102.i, align 8, !tbaa !95 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load i8, ptr %i.lf, align 8, !tbaa !61
  %i.lh = add i8 %i.lg, -90
  %i.li = icmp ult i8 %i.lh, -15
  %.not12.i.i.i.i103.i = icmp eq ptr %i.le, null
  %.not1.i.i.i.i104.i = or i1 %.not12.i.i.i.i103.i, %i.li
  br i1 %.not1.i.i.i.i104.i, label %bb.bc, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i101.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i102.i, i64 8 ; 2 uses
  %.not.i.i.i.i107.i = icmp eq ptr %i.lj, %i.ld
  br i1 %.not.i.i.i.i107.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i101.i, !llvm.loop !118

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i.i101.i, %bb.bb
  %.sroa.0.1.i.i105.i = phi ptr [ %i.kz, %bb.bb ], [ %i.ld, %bb.bc ], [ %.sroa.0.0.i.i102.i, %.lr.ph.i.i.i.i101.i ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.lc ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0.1.i.i105.i, %i.lk
  br i1 %.not4.i.i.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %.06.i.i.i = phi i32 [ %i.ls, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ 0, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %.sroa.02.2.i.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ %.sroa.0.1.i.i105.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i6.i.i = icmp eq ptr %i.ll, %i.ld
  br i1 %.not3.i.i.i6.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.bd
  %.sroa.02.1.i.i.i = phi ptr [ %i.lr, %bb.bd ], [ %i.ll, %.lr.ph.i.i.i ] ; 3 uses
  %i.lm = load ptr, ptr %.sroa.02.1.i.i.i, align 8, !tbaa !95 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load i8, ptr %i.ln, align 8, !tbaa !61
  %i.lp = add i8 %i.lo, -90
  %i.lq = icmp ult i8 %i.lp, -15
  %.not12.i.i.i8.i.i = icmp eq ptr %i.lm, null
  %.not1.i.i.i9.i.i = or i1 %.not12.i.i.i8.i.i, %i.lq
  br i1 %.not1.i.i.i9.i.i, label %bb.bd, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i7.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i10.i.i = icmp eq ptr %i.lr, %i.ld
  br i1 %.not.i.i.i10.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i, !llvm.loop !118

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %bb.bd, %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.ll, %.lr.ph.i.i.i ], [ %i.lr, %bb.bd ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i7.i.i ] ; 2 uses
  %i.ls = add i32 %.06.i.i.i, 1
  %.not.i.i106.i = icmp eq ptr %.sroa.02.2.i.i.i, %i.lk
  br i1 %.not.i.i106.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !119

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %i.lt = icmp eq i32 %.06.i.i.i, 0
  br i1 %i.lt, label %.preheader.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

.preheader.i:                                     ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i
  %i.lu = getelementptr i8, ptr %i.co, i64 64     ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 2 uses
  %i.lw = load ptr, ptr %i.lu, align 8, !tbaa !60 ; 2 uses
  %.not134167.i = icmp eq ptr %i.lw, %i.lv
  br i1 %.not134167.i, label %._crit_edge.i, label %.lr.ph168.i

.lr.ph168.i:                                      ; preds = %.preheader.i, %.lr.ph168.i
  %i.lx = phi ptr [ %i.ly, %.lr.ph168.i ], [ %i.lw, %.preheader.i ]
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.lx, ptr noundef nonnull %i.ch) #8
  %i.ly = load ptr, ptr %i.lu, align 8, !tbaa !60 ; 2 uses
  %.not134.i = icmp eq ptr %i.ly, %i.lv
  br i1 %.not134.i, label %._crit_edge.i, label %.lr.ph168.i, !llvm.loop !120

._crit_edge.i:                                    ; preds = %.lr.ph168.i, %.preheader.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull %i.cs) #8
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ch) #8
  call void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cn) #8
  br label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread

_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i: ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %bb.ba, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %bb.u, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i, %bb.r, %bb.r, %bb.r, %bb.q, %.lr.ph164.i
  %.9.ph.i = phi i8 [ %.6161.i, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i ], [ %.6161.i, %.lr.ph164.i ], [ %.6161.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i ], [ 1, %bb.ba ], [ %.6161.i, %bb.r ], [ %.6161.i, %bb.q ], [ %.6161.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i ], [ %.6161.i, %bb.u ], [ %.6161.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ], [ %.6161.i, %bb.r ], [ %.6161.i, %bb.r ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 8
  %.sroa.0112.0.i = load ptr, ptr %i.lz, align 8, !tbaa !60 ; 2 uses
  %.not132.i = icmp eq ptr %.sroa.0112.0.i, %i.d
  br i1 %.not132.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.backedge.backedge

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, %.preheader138.i
  %.10.i = phi i8 [ %.0.lcssa.i, %.preheader138.i ], [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ]
  %11 = trunc nuw i8 %.10.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br i1 %11, label %.backedge.backedge, label %bb.be

.backedge.backedge:                               ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread, %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit
  br label %.backedge, !llvm.loop !121

bb.be:                                            ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.n, ptr %3, align 8, !tbaa !97
  store ptr %i.n, ptr %i.o, align 8, !tbaa !100
  store i32 16, ptr %i.p, align 8, !tbaa !101
  store i32 0, ptr %i.q, align 4, !tbaa !102
  store i32 0, ptr %i.r, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.s, ptr %4, align 8, !tbaa !93
  store i32 32, ptr %i.u, align 4, !tbaa !104
  %i.ma = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.mb = ptrtoint ptr %i.ma to i64
  store i64 %i.mb, ptr %i.s, align 8
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.loopexit.i5, %bb.be
  %i.mc = phi i32 [ %.pr.i, %.loopexit.i5 ], [ 1, %bb.be ] ; 2 uses
  %i.md = load ptr, ptr %4, align 8, !tbaa !93
  %i.me = zext i32 %i.mc to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.me
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !117 ; 6 uses
  %i.mi = add i32 %i.mc, -1
  store i32 %i.mi, ptr %i.t, align 8, !tbaa !94
  %i.mj = load ptr, ptr %i.o, align 8, !tbaa !100, !noalias !122
  %i.mk = load ptr, ptr %3, align 8, !tbaa !97, !noalias !122 ; 3 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %bb.bf, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.bf:                                            ; preds = %.lr.ph55.i
  %i.mm = load i32, ptr %i.q, align 4, !tbaa !102, !noalias !122 ; 4 uses
  %i.mn = zext i32 %i.mm to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.mn, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.idx.i.i.i ; 2 uses
  %.not63.i.i.i = icmp eq i32 %i.mm, 0
  br i1 %.not63.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.bf, %bb.bg
  %.065.i.i.i = phi ptr [ %spec.select.i.i.i19, %bb.bg ], [ null, %bb.bf ]
  %.04964.i.i.i = phi ptr [ %i.mr, %bb.bg ], [ %i.mk, %bb.bf ] ; 3 uses
  %i.mp = load ptr, ptr %.04964.i.i.i, align 8, !tbaa !105, !noalias !122 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.mp, %i.mh
  br i1 %.not27.i.i.i, label %.loopexitthread-pre-split.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i18
  %i.mq = icmp eq ptr %i.mp, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i19 = select i1 %i.mq, ptr %.04964.i.i.i, ptr %.065.i.i.i ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.04964.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.mr, %i.mo
  br i1 %.not.i.i.i20, label %.critedge.i.i.i, label %.lr.ph.i.i.i18, !llvm.loop !112

.critedge.i.i.i:                                  ; preds = %bb.bg
  %.not28.i.i.i = icmp eq ptr %spec.select.i.i.i19, null
  br i1 %.not28.i.i.i, label %.critedge.thread.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.critedge.i.i.i
  store ptr %i.mh, ptr %spec.select.i.i.i19, align 8, !tbaa !105, !noalias !122
  %i.ms = load i32, ptr %i.r, align 8, !tbaa !103, !noalias !122
  %i.mt = add i32 %i.ms, -1
  store i32 %i.mt, ptr %i.r, align 8, !tbaa !103, !noalias !122
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.bf
  %i.mu = load i32, ptr %i.p, align 8, !tbaa !101, !noalias !122
  %i.mv = icmp ult i32 %i.mm, %i.mu
  br i1 %i.mv, label %bb.bi, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.bi:                                            ; preds = %.critedge.thread.i.i.i
  %i.mw = add nuw i32 %i.mm, 1
  store i32 %i.mw, ptr %i.q, align 4, !tbaa !102, !noalias !122
  store ptr %i.mh, ptr %i.mo, align 8, !tbaa !105, !noalias !122
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i: ; preds = %.lr.ph55.i, %.critedge.thread.i.i.i
  %i.mx = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.mh) #8, !noalias !122
  %i.my = extractvalue { ptr, i8 } %i.mx, 1
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread, label %.loopexitthread-pre-split.i, !llvm.loop !125

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread: ; preds = %bb.bh, %bb.bi, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i
  %i.na = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mh) #8, !noalias !126
  %i.nb = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mh) #8, !noalias !126 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i16, label %.loopexitthread-pre-split.i, label %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i

_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i:  ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread
  %i.nc = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.nb) #8, !noalias !126 ; 2 uses
  %.not4652.i = icmp eq i32 %i.nc, 0
  br i1 %.not4652.i, label %.loopexitthread-pre-split.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i
  %.sroa.4.053.i = phi i32 [ %i.nn, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i ], [ 0, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %i.nd = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.na, i32 noundef %.sroa.4.053.i) #8
  %i.ne = load i32, ptr %i.t, align 8, !tbaa !94  ; 2 uses
  %i.nf = load i32, ptr %i.u, align 4, !tbaa !104
  %.not.i19.i = icmp ult i32 %i.ne, %i.nf
  br i1 %.not.i19.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i, label %bb.bj, !prof !108

bb.bj:                                            ; preds = %.lr.ph.i17
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef 0, i64 noundef 8) #8
  %.pre.i20.i = load i32, ptr %i.t, align 8, !tbaa !94
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i: ; preds = %bb.bj, %.lr.ph.i17
  %i.ng = phi i32 [ %.pre.i20.i, %bb.bj ], [ %i.ne, %.lr.ph.i17 ]
  %i.nh = load ptr, ptr %4, align 8, !tbaa !93
  %i.ni = zext i32 %i.ng to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.ni
  %i.nk = ptrtoint ptr %i.nd to i64
  store i64 %i.nk, ptr %i.nj, align 1
  %i.nl = load i32, ptr %i.t, align 8, !tbaa !94
  %i.nm = add i32 %i.nl, 1                        ; 2 uses
  store i32 %i.nm, ptr %i.t, align 8, !tbaa !94
  %i.nn = add nuw nsw i32 %.sroa.4.053.i, 1       ; 2 uses
  %.not46.i = icmp eq i32 %i.nn, %i.nc
  br i1 %.not46.i, label %.loopexit.i5, label %.lr.ph.i17

.loopexitthread-pre-split.i:                      ; preds = %.lr.ph.i.i.i18, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i
  %.pr.pr.i = load i32, ptr %i.t, align 8, !tbaa !94
  br label %.loopexit.i5

.loopexit.i5:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i, %.loopexitthread-pre-split.i
  %.pr.i = phi i32 [ %.pr.pr.i, %.loopexitthread-pre-split.i ], [ %i.nm, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i ] ; 2 uses
  %.not.i13.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i13.i, label %._crit_edge.i6, label %.lr.ph55.i

._crit_edge.i6:                                   ; preds = %.loopexit.i5
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !60 ; 2 uses
  %.not4756.i = icmp eq ptr %.pre.i, %i.d
  br i1 %.not4756.i, label %._crit_edge62.i, label %.lr.ph61.i

._crit_edge62.i:                                  ; preds = %bb.bw, %._crit_edge.i6
  %.0.lcssa.i8 = phi i1 [ false, %._crit_edge.i6 ], [ %.1.i, %bb.bw ]
  %i.no = load ptr, ptr %4, align 8, !tbaa !93    ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.s
  br i1 %i.np, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge62.i
  call void @free(ptr noundef %i.no) #8
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i: ; preds = %bb.bk, %._crit_edge62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.nq = load ptr, ptr %i.o, align 8, !tbaa !100 ; 2 uses
  %i.nr = load ptr, ptr %3, align 8, !tbaa !97
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.nq) #8
  br label %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit

.lr.ph61.i:                                       ; preds = %._crit_edge.i6, %bb.bw
  %.059.i = phi i1 [ %.1.i, %bb.bw ], [ false, %._crit_edge.i6 ]
  %.sroa.027.057.i = phi ptr [ %i.nu, %bb.bw ], [ %.pre.i, %._crit_edge.i6 ] ; 7 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.027.057.i, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !60 ; 2 uses
  %i.nv = load ptr, ptr %i.o, align 8, !tbaa !100 ; 6 uses
  %i.nw = load ptr, ptr %3, align 8, !tbaa !97    ; 3 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %.lr.ph61.i
  %i.ny = load i32, ptr %i.q, align 4, !tbaa !102 ; 4 uses
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %.idx.i.i.i.i14 = shl nuw nsw i64 %i.nz, 3
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.idx.i.i.i.i14
  %.not18.i.i.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %bb.bm, %bb.bn
  %.01319.i.i.i.i = phi ptr [ %i.od, %bb.bn ], [ %i.nw, %bb.bm ] ; 3 uses
  %i.ob = load ptr, ptr %.01319.i.i.i.i, align 8, !tbaa !105
  %i.oc = icmp eq ptr %i.ob, %.sroa.027.057.i
  br i1 %i.oc, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i15
  %i.od = getelementptr inbounds nuw i8, ptr %.01319.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i23.i = icmp eq ptr %i.od, %i.oa
  br i1 %.not.i.i.i23.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i15, !llvm.loop !106

._crit_edge.i.i.i.i:                              ; preds = %bb.bn, %bb.bm
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nz
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.bo:                                            ; preds = %.lr.ph61.i
  %i.of = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull %.sroa.027.057.i) #8 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !105
  %i.oh = icmp eq ptr %i.og, %.sroa.027.057.i
  %.pre.i.i.i7 = load ptr, ptr %i.o, align 8, !tbaa !100 ; 4 uses
  %.pre4.i.i.i = load ptr, ptr %3, align 8, !tbaa !97 ; 3 uses
  br i1 %i.oh, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, label %bb.bp

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i: ; preds = %bb.bo
  %.pre5.i.i.i = load i32, ptr %i.q, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i
end_hunk_1
