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
define hidden noundef zeroext i1 @_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  %3 = alloca %"class.llvh::SmallPtrSet.55", align 8 ; 14 uses
  %4 = alloca %"class.llvh::SmallVector.56", align 8 ; 10 uses
  %5 = alloca %"class.llvh::SmallPtrSet", align 16 ; 20 uses
  %6 = alloca %"class.llvh::SmallVector.41", align 8 ; 10 uses
  %7 = alloca %"class.hermes::IRBuilder", align 8 ; 6 uses
  %8 = alloca %"class.hermes::IRBuilder", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
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
  %9 = insertelement <2 x ptr> poison, ptr %i.f, i64 0
  %10 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <2 x i32> zeroinitializer
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
  %.0.lcssa.i = phi i1 [ false, %.backedge ], [ %.5.i, %.preheader138.loopexit.i ] ; 2 uses
  %.not132160.i = icmp eq ptr %.sroa.0112.0159.i, %i.d
  br i1 %.not132160.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

.lr.ph.i:                                         ; preds = %.backedge, %.thread121.i
  %.sroa.0116.0157.i = phi ptr [ %.sroa.0116.0.i, %.thread121.i ], [ %.sroa.0116.0154.i, %.backedge ] ; 3 uses
  %.0156.i = phi i1 [ %.5.i, %.thread121.i ], [ false, %.backedge ] ; 4 uses
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
  %i.bn = or i1 %.0156.i, %i.am
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
  %.5.i = phi i1 [ %i.bn, %bb.j ], [ %.0156.i, %bb.k ], [ true, %bb.m ], [ true, %bb.p ], [ %.0156.i, %bb.o ], [ %.0156.i, %bb.n ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0116.0157.i, i64 8
  %.sroa.0116.0.i = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %.not131.i = icmp eq ptr %.sroa.0116.0.i, %i.d
  br i1 %.not131.i, label %.preheader138.loopexit.i, label %.lr.ph.i

.lr.ph164.i:                                      ; preds = %.preheader138.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
  %.sroa.0112.0162.i = phi ptr [ %.sroa.0112.0.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.sroa.0112.0159.i, %.preheader138.i ] ; 14 uses
  %.6161.i = phi i1 [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.0.lcssa.i, %.preheader138.i ] ; 10 uses
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
  store <2 x ptr> %10, ptr %5, align 16, !tbaa !97
  store i32 8, ptr %i.h, align 16, !tbaa !99
  store i32 0, ptr %i.i, align 4, !tbaa !101
  store i32 0, ptr %i.j, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %i.k, ptr %6, align 8, !tbaa !93
  store i32 0, ptr %i.l, align 8, !tbaa !94
  store i32 8, ptr %i.m, align 4, !tbaa !103
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
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !104 ; 6 uses
  %i.dw = load ptr, ptr %5, align 16, !tbaa !105  ; 5 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dy = load i32, ptr %i.i, align 4, !tbaa !101 ; 4 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.dz, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i.i.i.i.i
  %.not18.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not18.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x, %bb.y
  %.01319.i.i.i.i.i = phi ptr [ %i.ed, %bb.y ], [ %i.dw, %bb.x ] ; 3 uses
  %i.eb = load ptr, ptr %.01319.i.i.i.i.i, align 8, !tbaa !106
  %i.ec = icmp eq ptr %i.eb, %i.du
  br i1 %i.ec, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.01319.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ed, %i.ea
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !107

._crit_edge.i.i.i.i.i:                            ; preds = %bb.y, %bb.x
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dz
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

bb.z:                                             ; preds = %bb.w
  %i.ef = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.du) #8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !106
  %i.eh = icmp eq ptr %i.eg, %i.du
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !104 ; 4 uses
  %.pre4.i.i.i.i = load ptr, ptr %5, align 16, !tbaa !105 ; 5 uses
  br i1 %i.eh, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i, label %bb.aa

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i: ; preds = %bb.z
  %.pre5.i.i.i.i = load i32, ptr %i.i, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ei = icmp eq ptr %.pre.i.i.i.i, %.pre4.i.i.i.i
  %i.ej = load i32, ptr %i.i, align 4             ; 2 uses
  %i.ek = load i32, ptr %i.h, align 16
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
  %i.er = load i32, ptr %i.h, align 16
  %.v.v.i4.i.i.i.i.i = select i1 %i.eq, i32 %i.eo, i32 %i.er
  %.v.i5.i.i.i.i.i = zext i32 %.v.v.i4.i.i.i.i.i to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.v.i5.i.i.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i.i.i = icmp eq ptr %.2.i.i.i.i.i, %i.es
  br i1 %.not3.i4.i.i6.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i.i.i

.lr.ph.i5.i.i7.i.i.i.i.i:                         ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i, %.critedge2.i7.i.i9.i.i.i.i.i
  %.sroa.0.3.i.i.i.i.i = phi ptr [ %i.eu, %.critedge2.i7.i.i9.i.i.i.i.i ], [ %.2.i.i.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i ] ; 3 uses
  %i.et = load ptr, ptr %.sroa.0.3.i.i.i.i.i, align 8, !tbaa !106
  %switch.i6.i.i8.i.i.i.i.i = icmp ugt ptr %i.et, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.i.i, label %.critedge2.i7.i.i9.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i

.critedge2.i7.i.i9.i.i.i.i.i:                     ; preds = %.lr.ph.i5.i.i7.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.i.i = icmp eq ptr %i.eu, %i.es
  br i1 %.not.i8.i.i10.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i.i.i, !llvm.loop !108

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i.i.i
  %.not232.i.i = icmp eq ptr %.sroa.0.3.i.i.i.i.i, %i.es
  br i1 %.not232.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %bb.ac

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i: ; preds = %.critedge2.i7.i.i9.i.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !62
  %i.ew = load i32, ptr %i.l, align 8, !tbaa !94  ; 2 uses
  %i.ex = load i32, ptr %i.m, align 4, !tbaa !103
  %.not.i.i.i = icmp ult i32 %i.ew, %i.ex
  br i1 %.not.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i, label %bb.ab, !prof !109

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
  store i64 %i.fc, ptr %i.fb, align 1
  %i.fd = load i32, ptr %i.l, align 8, !tbaa !94
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.l, align 8, !tbaa !94
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !104, !noalias !110
  %.pre293.i.i = load ptr, ptr %5, align 16, !tbaa !105, !noalias !110
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i
  %i.ff = phi ptr [ %.pre293.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i ], [ %i.em, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i ] ; 3 uses
  %i.fg = phi ptr [ %.pre.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i ], [ %i.ep, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i ]
  %i.fh = load ptr, ptr %i.dt, align 8, !tbaa !62 ; 4 uses
  %i.fi = icmp eq ptr %i.fg, %i.ff
  br i1 %i.fi, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.fj = load i32, ptr %i.i, align 4, !tbaa !101, !noalias !110 ; 4 uses
  %i.fk = zext i32 %i.fj to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.fk, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i.i.i.i ; 2 uses
  %.not63.i.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not63.i.i.i.i, label %.critedge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ae
  %.065.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.ae ], [ null, %bb.ad ]
  %.04964.i.i.i.i = phi ptr [ %i.fo, %bb.ae ], [ %i.ff, %bb.ad ] ; 3 uses
  %i.fm = load ptr, ptr %.04964.i.i.i.i, align 8, !tbaa !106, !noalias !110 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.fm, %i.fh
  br i1 %.not27.i.i.i.i, label %.critedge139.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fn = icmp eq ptr %i.fm, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i.i = select i1 %i.fn, ptr %.04964.i.i.i.i, ptr %.065.i.i.i.i ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.04964.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fo, %i.fl
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !113

.critedge.i.i.i.i:                                ; preds = %bb.ae
  %.not28.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i, null
  br i1 %.not28.i.i.i.i, label %.critedge.thread.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.critedge.i.i.i.i
  store ptr %i.fh, ptr %spec.select.i.i.i.i, align 8, !tbaa !106, !noalias !110
  %i.fp = load i32, ptr %i.j, align 8, !tbaa !102, !noalias !110
  %i.fq = add i32 %i.fp, -1
  store i32 %i.fq, ptr %i.j, align 8, !tbaa !102, !noalias !110
  br label %.critedge139.i.i

.critedge.thread.i.i.i.i:                         ; preds = %.critedge.i.i.i.i, %bb.ad
  %i.fr = load i32, ptr %i.h, align 16, !tbaa !99, !noalias !110
  %i.fs = icmp ult i32 %i.fj, %i.fr
  br i1 %i.fs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.critedge.thread.i.i.i.i
  %i.ft = add nuw i32 %i.fj, 1
  store i32 %i.ft, ptr %i.i, align 4, !tbaa !101, !noalias !110
  store ptr %i.fh, ptr %i.fl, align 8, !tbaa !106, !noalias !110
  br label %.critedge139.i.i

bb.ah:                                            ; preds = %.critedge.thread.i.i.i.i, %bb.ac
  %i.fu = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.fh) #8, !noalias !110 ; 0 uses
  br label %.critedge139.i.i

.critedge139.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %bb.ah, %bb.ag, %bb.af, %.lr.ph.i92.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.0100247.i.i, i64 8 ; 2 uses
  %.not126.i.i = icmp eq ptr %i.fv, %i.dp
  br i1 %.not126.i.i, label %.critedge141.i.i, label %.lr.ph.i92.i

.critedge141.i.i:                                 ; preds = %.critedge139.i.i, %bb.v
  %i.fw = load i32, ptr %i.i, align 4, !tbaa !101
  %i.fx = load i32, ptr %i.j, align 8, !tbaa !102
  %i.fy = icmp eq i32 %i.fw, %i.fx
  br i1 %i.fy, label %.thread217.i.i, label %bb.ai

bb.ai:                                            ; preds = %.critedge141.i.i
  %i.fz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cs) #8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !93 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !94 ; 2 uses
  %i.gd = zext i32 %i.gc to i64
  %.idx280.i.i = shl nuw nsw i64 %i.gd, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx280.i.i
  %.not127255.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not127255.i.i, label %.thread223.i.i, label %.lr.ph259.i.i

.lr.ph259.i.i:                                    ; preds = %bb.ai, %.thread.i.i
  %.0108257.i.i = phi ptr [ %.2110216.i.i, %.thread.i.i ], [ null, %bb.ai ] ; 3 uses
  %.0112256.i.i = phi ptr [ %i.hx, %.thread.i.i ], [ %i.ga, %bb.ai ] ; 2 uses
  %i.gf = load ptr, ptr %.0112256.i.i, align 8, !tbaa !95 ; 9 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !61
  %i.gi = icmp ne i8 %i.gh, 33
  %.not128233.i.i = icmp eq ptr %i.gf, null
  %.not128.i.i = or i1 %.not128233.i.i, %i.gi
  br i1 %.not128.i.i, label %.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph259.i.i
  %.not129.i.i = icmp eq ptr %.0108257.i.i, null
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %.pre295.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62 ; 3 uses
  br i1 %.not129.i.i, label %._crit_edge294.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not130.i.i = icmp eq ptr %.pre295.i.i, %.0108257.i.i
  call void @llvm.assume(i1 %.not130.i.i)
  br label %._crit_edge294.i.i

._crit_edge294.i.i:                               ; preds = %bb.ak, %bb.aj
  %i.gj = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %i.gf) #8
  %.not281.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not281.i.i, label %._crit_edge.i94.i, label %.lr.ph250.i.i

._crit_edge.i94.i:                                ; preds = %.lr.ph250.i.i, %._crit_edge294.i.i
  %.0114.lcssa.i.i = phi ptr [ null, %._crit_edge294.i.i ], [ %spec.select.i93.i, %.lr.ph250.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0114.lcssa.i.i) ]
  %i.gk = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %i.gf) #8
  %.not132251.not.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not132251.not.i.i, label %.thread.i.i, label %.lr.ph254.i.i

.lr.ph250.i.i:                                    ; preds = %._crit_edge294.i.i, %.lr.ph250.i.i
  %.0114249.i.i = phi ptr [ %spec.select.i93.i, %.lr.ph250.i.i ], [ null, %._crit_edge294.i.i ]
  %.0116248.i.i = phi i32 [ %i.gp, %.lr.ph250.i.i ], [ 0, %._crit_edge294.i.i ] ; 2 uses
  %i.gl = call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.gf, i32 noundef %.0116248.i.i) #8 ; 2 uses
  %i.gm = extractvalue { ptr, ptr } %i.gl, 1
  %i.gn = icmp eq ptr %i.gm, %.sroa.0112.0162.i
  %i.go = extractvalue { ptr, ptr } %i.gl, 0
  %spec.select.i93.i = select i1 %i.gn, ptr %i.go, ptr %.0114249.i.i ; 2 uses
  %i.gp = add nuw i32 %.0116248.i.i, 1            ; 2 uses
  %i.gq = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %i.gf) #8
  %i.gr = icmp ult i32 %i.gp, %i.gq
  br i1 %i.gr, label %.lr.ph250.i.i, label %._crit_edge.i94.i, !llvm.loop !114

.lr.ph254.i.i:                                    ; preds = %._crit_edge.i94.i, %.critedge144.i.i
  %.0118252.i.i = phi i32 [ %i.hv, %.critedge144.i.i ], [ 0, %._crit_edge.i94.i ] ; 2 uses
  %i.gs = call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.gf, i32 noundef %.0118252.i.i) #8 ; 2 uses
  %i.gt = extractvalue { ptr, ptr } %i.gs, 1      ; 3 uses
  %i.gu = load ptr, ptr %i.g, align 8, !tbaa !104 ; 6 uses
  %i.gv = load ptr, ptr %5, align 16, !tbaa !105  ; 3 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.lr.ph254.i.i
  %i.gx = load i32, ptr %i.i, align 4, !tbaa !101 ; 4 uses
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %.idx.i.i.i167.i.i = shl nuw nsw i64 %i.gy, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx.i.i.i167.i.i
  %.not18.i.i.i168.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not18.i.i.i168.i.i, label %._crit_edge.i.i.i172.i.i, label %.lr.ph.i.i.i169.i.i

.lr.ph.i.i.i169.i.i:                              ; preds = %bb.al, %bb.am
  %.01319.i.i.i170.i.i = phi ptr [ %i.hc, %bb.am ], [ %i.gv, %bb.al ] ; 3 uses
  %i.ha = load ptr, ptr %.01319.i.i.i170.i.i, align 8, !tbaa !106
  %i.hb = icmp eq ptr %i.ha, %i.gt
  br i1 %i.hb, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i151.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i169.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.01319.i.i.i170.i.i, i64 8 ; 2 uses
  %.not.i.i.i171.i.i = icmp eq ptr %i.hc, %i.gz
  br i1 %.not.i.i.i171.i.i, label %._crit_edge.i.i.i172.i.i, label %.lr.ph.i.i.i169.i.i, !llvm.loop !107

._crit_edge.i.i.i172.i.i:                         ; preds = %bb.am, %bb.al
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gy
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i151.i.i

bb.an:                                            ; preds = %.lr.ph254.i.i
  %i.he = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.gt) #8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !106
  %i.hg = icmp eq ptr %i.hf, %i.gt
  %.pre.i.i147.i.i = load ptr, ptr %i.g, align 8, !tbaa !104 ; 4 uses
  %.pre4.i.i148.i.i = load ptr, ptr %5, align 16, !tbaa !105 ; 3 uses
  br i1 %i.hg, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i164.i.i, label %bb.ao

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i164.i.i: ; preds = %bb.an
  %.pre5.i.i166.i.i = load i32, ptr %i.i, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i151.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hh = icmp eq ptr %.pre.i.i147.i.i, %.pre4.i.i148.i.i
  %i.hi = load i32, ptr %i.i, align 4             ; 2 uses
  %i.hj = load i32, ptr %i.h, align 16
  %.v.v.i14.i.i.i149.i.i = select i1 %i.hh, i32 %i.hi, i32 %i.hj
  %.v.i15.i.i.i150.i.i = zext i32 %.v.v.i14.i.i.i149.i.i to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i147.i.i, i64 %.v.i15.i.i.i150.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i151.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i151.i.i: ; preds = %.lr.ph.i.i.i169.i.i, %bb.ao, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i164.i.i, %._crit_edge.i.i.i172.i.i
  %i.hl = phi ptr [ %i.gu, %._crit_edge.i.i.i172.i.i ], [ %.pre4.i.i148.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i164.i.i ], [ %.pre4.i.i148.i.i, %bb.ao ], [ %i.gu, %.lr.ph.i.i.i169.i.i ]
  %i.hm = phi i32 [ %i.gx, %._crit_edge.i.i.i172.i.i ], [ %.pre5.i.i166.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i164.i.i ], [ %i.hi, %bb.ao ], [ %i.gx, %.lr.ph.i.i.i169.i.i ]
  %i.hn = phi ptr [ %i.gu, %._crit_edge.i.i.i172.i.i ], [ %.pre.i.i147.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i164.i.i ], [ %.pre.i.i147.i.i, %bb.ao ], [ %i.gu, %.lr.ph.i.i.i169.i.i ] ; 2 uses
  %.2.i.i.i152.i.i = phi ptr [ %i.hd, %._crit_edge.i.i.i172.i.i ], [ %i.he, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i164.i.i ], [ %i.hk, %bb.ao ], [ %.01319.i.i.i170.i.i, %.lr.ph.i.i.i169.i.i ] ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.hl
  %i.hp = load i32, ptr %i.h, align 16
  %.v.v.i4.i.i.i153.i.i = select i1 %i.ho, i32 %i.hm, i32 %i.hp
  %.v.i5.i.i.i154.i.i = zext i32 %.v.v.i4.i.i.i153.i.i to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.v.i5.i.i.i154.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i155.i.i = icmp eq ptr %.2.i.i.i152.i.i, %i.hq
  br i1 %.not3.i4.i.i6.i.i.i155.i.i, label %.critedge144.i.i, label %.lr.ph.i5.i.i7.i.i.i156.i.i

.lr.ph.i5.i.i7.i.i.i156.i.i:                      ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i151.i.i, %.critedge2.i7.i.i9.i.i.i162.i.i
  %.sroa.0.3.i.i.i157.i.i = phi ptr [ %i.hs, %.critedge2.i7.i.i9.i.i.i162.i.i ], [ %.2.i.i.i152.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i151.i.i ] ; 3 uses
  %i.hr = load ptr, ptr %.sroa.0.3.i.i.i157.i.i, align 8, !tbaa !106
  %switch.i6.i.i8.i.i.i158.i.i = icmp ugt ptr %i.hr, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i158.i.i, label %.critedge2.i7.i.i9.i.i.i162.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i

.critedge2.i7.i.i9.i.i.i162.i.i:                  ; preds = %.lr.ph.i5.i.i7.i.i.i156.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i157.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i163.i.i = icmp eq ptr %i.hs, %i.hq
  br i1 %.not.i8.i.i10.i.i.i163.i.i, label %.critedge144.i.i, label %.lr.ph.i5.i.i7.i.i.i156.i.i, !llvm.loop !108

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i156.i.i
  %.not234.i.i = icmp eq ptr %.sroa.0.3.i.i.i157.i.i, %i.hq
  %i.ht = extractvalue { ptr, ptr } %i.gs, 0
  %i.hu = icmp eq ptr %i.ht, %.0114.lcssa.i.i
  %or.cond.i.i = select i1 %.not234.i.i, i1 true, i1 %i.hu
  br i1 %or.cond.i.i, label %.critedge144.i.i, label %.thread217.i.i

.critedge144.i.i:                                 ; preds = %.critedge2.i7.i.i9.i.i.i162.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i151.i.i
  %i.hv = add nuw i32 %.0118252.i.i, 1            ; 2 uses
  %i.hw = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %i.gf) #8
  %.not132.i.i = icmp ult i32 %i.hv, %i.hw
  br i1 %.not132.i.i, label %.lr.ph254.i.i, label %.thread.i.i, !llvm.loop !115

.thread.i.i:                                      ; preds = %.critedge144.i.i, %._crit_edge.i94.i, %.lr.ph259.i.i
  %.2110216.i.i = phi ptr [ %.0108257.i.i, %.lr.ph259.i.i ], [ %.pre295.i.i, %._crit_edge.i94.i ], [ %.pre295.i.i, %.critedge144.i.i ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0112256.i.i, i64 8 ; 2 uses
  %.not127.i.i = icmp eq ptr %i.hx, %i.ge
  br i1 %.not127.i.i, label %.thread223.i.i, label %.lr.ph259.i.i

.thread223.i.i:                                   ; preds = %.thread.i.i, %bb.ai
  %.0108.lcssa.i.i = phi ptr [ null, %bb.ai ], [ %.2110216.i.i, %.thread.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0108.lcssa.i.i) ]
  %i.hy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cs) #8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !93 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !94 ; 2 uses
  %i.ic = zext i32 %i.ib to i64
  %.idx282.i.i = shl nuw nsw i64 %i.ic, 3
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx282.i.i
  %.not133276.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not133276.i.i, label %._crit_edge279.i.i, label %.lr.ph278.i.i

._crit_edge279.i.i:                               ; preds = %.loopexit.i.i, %.thread223.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.0108.lcssa.i.i, i64 16
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull %i.ie) #8
  call void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8
  br label %.thread217.i.i

.lr.ph278.i.i:                                    ; preds = %.thread223.i.i, %.loopexit.i.i
  %.0121277.i.i = phi ptr [ %i.ka, %.loopexit.i.i ], [ %i.hz, %.thread223.i.i ] ; 2 uses
  %i.if = load ptr, ptr %.0121277.i.i, align 8, !tbaa !95 ; 8 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !61
  %i.ii = icmp ne i8 %i.ih, 33
  %.not134235.i.i = icmp eq ptr %i.if, null
  %.not134.i.i = or i1 %.not134235.i.i, %i.ii
  br i1 %.not134.i.i, label %.loopexit.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph278.i.i
  %i.ij = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %i.if) #8 ; 2 uses
  %.not283.i.i = icmp eq i32 %i.ij, 0
  br i1 %.not283.i.i, label %._crit_edge265.i.i, label %.lr.ph264.i.i

._crit_edge265.i.i:                               ; preds = %.lr.ph264.i.i, %bb.ap
  %.0119.lcssa.i.i = phi ptr [ null, %bb.ap ], [ %spec.select145.i.i, %.lr.ph264.i.i ]
  %i.ik = call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %i.if) #8
  %.0113267.i.i = add i32 %i.ik, -1               ; 2 uses
  %i.il = icmp sgt i32 %.0113267.i.i, -1
  br i1 %i.il, label %.lr.ph270.i.i, label %._crit_edge271.i.i

.lr.ph264.i.i:                                    ; preds = %bb.ap, %.lr.ph264.i.i
  %.0117262.i.i = phi i32 [ %i.iq, %.lr.ph264.i.i ], [ 0, %bb.ap ] ; 2 uses
  %.0119261.i.i = phi ptr [ %spec.select145.i.i, %.lr.ph264.i.i ], [ null, %bb.ap ]
  %i.im = call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.if, i32 noundef %.0117262.i.i) #8 ; 2 uses
  %i.in = extractvalue { ptr, ptr } %i.im, 1
  %i.io = icmp eq ptr %i.in, %.sroa.0112.0162.i
  %i.ip = extractvalue { ptr, ptr } %i.im, 0
  %spec.select145.i.i = select i1 %i.io, ptr %i.ip, ptr %.0119261.i.i ; 2 uses
  %i.iq = add nuw i32 %.0117262.i.i, 1            ; 2 uses
  %exitcond.not.i95.i = icmp eq i32 %i.iq, %i.ij
  br i1 %exitcond.not.i95.i, label %._crit_edge265.i.i, label %.lr.ph264.i.i, !llvm.loop !116

._crit_edge271.i.i:                               ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, %._crit_edge265.i.i
  %i.ir = load ptr, ptr %6, align 8, !tbaa !93    ; 2 uses
  %i.is = load i32, ptr %i.l, align 8, !tbaa !94  ; 2 uses
  %i.it = zext i32 %i.is to i64
  %.idx284.i.i = shl nuw nsw i64 %i.it, 3
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.idx284.i.i
  %.not135272.i.i = icmp eq i32 %i.is, 0
  br i1 %.not135272.i.i, label %.loopexit.i.i, label %.lr.ph275.i.i

.lr.ph270.i.i:                                    ; preds = %._crit_edge265.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i
  %.0113268.i.i = phi i32 [ %.0113.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i ], [ %.0113267.i.i, %._crit_edge265.i.i ] ; 4 uses
  %i.iv = call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.if, i32 noundef %.0113268.i.i) #8
  %i.iw = extractvalue { ptr, ptr } %i.iv, 1      ; 4 uses
  %i.ix = icmp eq ptr %i.iw, %.sroa.0112.0162.i
  br i1 %i.ix, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph270.i.i
  %i.iy = load ptr, ptr %i.g, align 8, !tbaa !104 ; 6 uses
  %i.iz = load ptr, ptr %5, align 16, !tbaa !105  ; 3 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.jb = load i32, ptr %i.i, align 4, !tbaa !101 ; 4 uses
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %.idx.i.i.i195.i.i = shl nuw nsw i64 %i.jc, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.idx.i.i.i195.i.i
  %.not18.i.i.i196.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not18.i.i.i196.i.i, label %._crit_edge.i.i.i200.i.i, label %.lr.ph.i.i.i197.i.i

.lr.ph.i.i.i197.i.i:                              ; preds = %bb.ar, %bb.as
  %.01319.i.i.i198.i.i = phi ptr [ %i.jg, %bb.as ], [ %i.iz, %bb.ar ] ; 3 uses
  %i.je = load ptr, ptr %.01319.i.i.i198.i.i, align 8, !tbaa !106
  %i.jf = icmp eq ptr %i.je, %i.iw
  br i1 %i.jf, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i197.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.01319.i.i.i198.i.i, i64 8 ; 2 uses
  %.not.i.i.i199.i.i = icmp eq ptr %i.jg, %i.jd
  br i1 %.not.i.i.i199.i.i, label %._crit_edge.i.i.i200.i.i, label %.lr.ph.i.i.i197.i.i, !llvm.loop !107

._crit_edge.i.i.i200.i.i:                         ; preds = %bb.as, %bb.ar
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jc
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i

bb.at:                                            ; preds = %bb.aq
  %i.ji = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.iw) #8 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !106
  %i.jk = icmp eq ptr %i.jj, %i.iw
  %.pre.i.i175.i.i = load ptr, ptr %i.g, align 8, !tbaa !104 ; 4 uses
  %.pre4.i.i176.i.i = load ptr, ptr %5, align 16, !tbaa !105 ; 3 uses
  br i1 %i.jk, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i, label %bb.au

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i: ; preds = %bb.at
  %.pre5.i.i194.i.i = load i32, ptr %i.i, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i

bb.au:                                            ; preds = %bb.at
  %i.jl = icmp eq ptr %.pre.i.i175.i.i, %.pre4.i.i176.i.i
  %i.jm = load i32, ptr %i.i, align 4             ; 2 uses
  %i.jn = load i32, ptr %i.h, align 16
  %.v.v.i14.i.i.i177.i.i = select i1 %i.jl, i32 %i.jm, i32 %i.jn
  %.v.i15.i.i.i178.i.i = zext i32 %.v.v.i14.i.i.i177.i.i to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i175.i.i, i64 %.v.i15.i.i.i178.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i: ; preds = %.lr.ph.i.i.i197.i.i, %bb.au, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i, %._crit_edge.i.i.i200.i.i
  %i.jp = phi ptr [ %i.iy, %._crit_edge.i.i.i200.i.i ], [ %.pre4.i.i176.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i ], [ %.pre4.i.i176.i.i, %bb.au ], [ %i.iy, %.lr.ph.i.i.i197.i.i ]
  %i.jq = phi i32 [ %i.jb, %._crit_edge.i.i.i200.i.i ], [ %.pre5.i.i194.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i ], [ %i.jm, %bb.au ], [ %i.jb, %.lr.ph.i.i.i197.i.i ]
  %i.jr = phi ptr [ %i.iy, %._crit_edge.i.i.i200.i.i ], [ %.pre.i.i175.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i ], [ %.pre.i.i175.i.i, %bb.au ], [ %i.iy, %.lr.ph.i.i.i197.i.i ] ; 2 uses
  %.2.i.i.i180.i.i = phi ptr [ %i.jh, %._crit_edge.i.i.i200.i.i ], [ %i.ji, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i192.i.i ], [ %i.jo, %bb.au ], [ %.01319.i.i.i198.i.i, %.lr.ph.i.i.i197.i.i ] ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.jp
  %i.jt = load i32, ptr %i.h, align 16
  %.v.v.i4.i.i.i181.i.i = select i1 %i.js, i32 %i.jq, i32 %i.jt
  %.v.i5.i.i.i182.i.i = zext i32 %.v.v.i4.i.i.i181.i.i to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.v.i5.i.i.i182.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i183.i.i = icmp eq ptr %.2.i.i.i180.i.i, %i.ju
  br i1 %.not3.i4.i.i6.i.i.i183.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i184.i.i

.lr.ph.i5.i.i7.i.i.i184.i.i:                      ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i, %.critedge2.i7.i.i9.i.i.i190.i.i
  %.sroa.0.3.i.i.i185.i.i = phi ptr [ %i.jw, %.critedge2.i7.i.i9.i.i.i190.i.i ], [ %.2.i.i.i180.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i ] ; 3 uses
  %i.jv = load ptr, ptr %.sroa.0.3.i.i.i185.i.i, align 8, !tbaa !106
  %switch.i6.i.i8.i.i.i186.i.i = icmp ugt ptr %i.jv, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i186.i.i, label %.critedge2.i7.i.i9.i.i.i190.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i

.critedge2.i7.i.i9.i.i.i190.i.i:                  ; preds = %.lr.ph.i5.i.i7.i.i.i184.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i185.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i191.i.i = icmp eq ptr %i.jw, %i.ju
  br i1 %.not.i8.i.i10.i.i.i191.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i184.i.i, !llvm.loop !108

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i184.i.i
  %.not236.i.i = icmp eq ptr %.sroa.0.3.i.i.i185.i.i, %i.ju
  br i1 %.not236.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i, %.lr.ph270.i.i
  call void @_ZN6hermes7PhiInst11removeEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.if, i32 noundef %.0113268.i.i) #8
  br label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i: ; preds = %.critedge2.i7.i.i9.i.i.i190.i.i, %bb.av, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i
  %.0113.i.i = add nsw i32 %.0113268.i.i, -1
  %i.jx = icmp sgt i32 %.0113268.i.i, 0
  br i1 %i.jx, label %.lr.ph270.i.i, label %._crit_edge271.i.i, !llvm.loop !117

.lr.ph275.i.i:                                    ; preds = %._crit_edge271.i.i, %.lr.ph275.i.i
  %.0101273.i.i = phi ptr [ %i.jz, %.lr.ph275.i.i ], [ %i.ir, %._crit_edge271.i.i ] ; 2 uses
  %i.jy = load ptr, ptr %.0101273.i.i, align 8, !tbaa !118
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
  %i.kd = load ptr, ptr %i.g, align 8, !tbaa !104 ; 2 uses
  %i.ke = load ptr, ptr %5, align 16, !tbaa !105
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
  br i1 %.not.i.i.i.i98.i, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i97.i, !llvm.loop !119

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
  br i1 %.not.i.i.i.i107.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i101.i, !llvm.loop !119

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
  br i1 %.not.i.i.i10.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i, !llvm.loop !119

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %bb.bd, %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.ll, %.lr.ph.i.i.i ], [ %i.lr, %bb.bd ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i7.i.i ] ; 2 uses
  %i.ls = add i32 %.06.i.i.i, 1
  %.not.i.i106.i = icmp eq ptr %.sroa.02.2.i.i.i, %i.lk
  br i1 %.not.i.i106.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !120

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
  br i1 %.not134.i, label %._crit_edge.i, label %.lr.ph168.i, !llvm.loop !121

._crit_edge.i:                                    ; preds = %.lr.ph168.i, %.preheader.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull %i.cs) #8
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ch) #8
  call void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cn) #8
  br label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread

_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i: ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %bb.ba, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %bb.u, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i, %bb.r, %bb.r, %bb.r, %bb.q, %.lr.ph164.i
  %.9.ph.i = phi i1 [ %.6161.i, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i ], [ %.6161.i, %.lr.ph164.i ], [ %.6161.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i ], [ true, %bb.ba ], [ %.6161.i, %bb.r ], [ %.6161.i, %bb.q ], [ %.6161.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i ], [ %.6161.i, %bb.u ], [ %.6161.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ], [ %.6161.i, %bb.r ], [ %.6161.i, %bb.r ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 8
  %.sroa.0112.0.i = load ptr, ptr %i.lz, align 8, !tbaa !60 ; 2 uses
  %.not132.i = icmp eq ptr %.sroa.0112.0.i, %i.d
  br i1 %.not132.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.backedge.backedge

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, %.preheader138.i
  %.10.i = phi i1 [ %.0.lcssa.i, %.preheader138.i ], [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br i1 %.10.i, label %.backedge.backedge, label %bb.be

.backedge.backedge:                               ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread, %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit
  br label %.backedge, !llvm.loop !122

bb.be:                                            ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.n, ptr %3, align 8, !tbaa !105
  store ptr %i.n, ptr %i.o, align 8, !tbaa !104
  store i32 16, ptr %i.p, align 8, !tbaa !99
  store i32 0, ptr %i.q, align 4, !tbaa !101
  store i32 0, ptr %i.r, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.s, ptr %4, align 8, !tbaa !93
  store i32 32, ptr %i.u, align 4, !tbaa !103
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
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !118 ; 6 uses
  %i.mi = add i32 %i.mc, -1
  store i32 %i.mi, ptr %i.t, align 8, !tbaa !94
  %i.mj = load ptr, ptr %i.o, align 8, !tbaa !104, !noalias !123
  %i.mk = load ptr, ptr %3, align 8, !tbaa !105, !noalias !123 ; 3 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %bb.bf, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.bf:                                            ; preds = %.lr.ph55.i
  %i.mm = load i32, ptr %i.q, align 4, !tbaa !101, !noalias !123 ; 4 uses
  %i.mn = zext i32 %i.mm to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.mn, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.idx.i.i.i ; 2 uses
  %.not63.i.i.i = icmp eq i32 %i.mm, 0
  br i1 %.not63.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.bf, %bb.bg
  %.065.i.i.i = phi ptr [ %spec.select.i.i.i19, %bb.bg ], [ null, %bb.bf ]
  %.04964.i.i.i = phi ptr [ %i.mr, %bb.bg ], [ %i.mk, %bb.bf ] ; 3 uses
  %i.mp = load ptr, ptr %.04964.i.i.i, align 8, !tbaa !106, !noalias !123 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.mp, %i.mh
  br i1 %.not27.i.i.i, label %.loopexitthread-pre-split.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i18
  %i.mq = icmp eq ptr %i.mp, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i19 = select i1 %i.mq, ptr %.04964.i.i.i, ptr %.065.i.i.i ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.04964.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.mr, %i.mo
  br i1 %.not.i.i.i20, label %.critedge.i.i.i, label %.lr.ph.i.i.i18, !llvm.loop !113

.critedge.i.i.i:                                  ; preds = %bb.bg
  %.not28.i.i.i = icmp eq ptr %spec.select.i.i.i19, null
  br i1 %.not28.i.i.i, label %.critedge.thread.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.critedge.i.i.i
  store ptr %i.mh, ptr %spec.select.i.i.i19, align 8, !tbaa !106, !noalias !123
  %i.ms = load i32, ptr %i.r, align 8, !tbaa !102, !noalias !123
  %i.mt = add i32 %i.ms, -1
  store i32 %i.mt, ptr %i.r, align 8, !tbaa !102, !noalias !123
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.bf
  %i.mu = load i32, ptr %i.p, align 8, !tbaa !99, !noalias !123
  %i.mv = icmp ult i32 %i.mm, %i.mu
  br i1 %i.mv, label %bb.bi, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.bi:                                            ; preds = %.critedge.thread.i.i.i
  %i.mw = add nuw i32 %i.mm, 1
  store i32 %i.mw, ptr %i.q, align 4, !tbaa !101, !noalias !123
  store ptr %i.mh, ptr %i.mo, align 8, !tbaa !106, !noalias !123
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i: ; preds = %.lr.ph55.i, %.critedge.thread.i.i.i
  %i.mx = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.mh) #8, !noalias !123
  %i.my = extractvalue { ptr, i8 } %i.mx, 1
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread, label %.loopexitthread-pre-split.i, !llvm.loop !126

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread: ; preds = %bb.bh, %bb.bi, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i
  %i.na = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mh) #8, !noalias !127
  %i.nb = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mh) #8, !noalias !127 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i16, label %.loopexitthread-pre-split.i, label %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i

_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i:  ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread
  %i.nc = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.nb) #8, !noalias !127 ; 2 uses
  %.not4652.i = icmp eq i32 %i.nc, 0
  br i1 %.not4652.i, label %.loopexitthread-pre-split.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i
  %.sroa.4.053.i = phi i32 [ %i.nn, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i ], [ 0, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %i.nd = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.na, i32 noundef %.sroa.4.053.i) #8
  %i.ne = load i32, ptr %i.t, align 8, !tbaa !94  ; 2 uses
  %i.nf = load i32, ptr %i.u, align 4, !tbaa !103
  %.not.i19.i = icmp ult i32 %i.ne, %i.nf
  br i1 %.not.i19.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i, label %bb.bj, !prof !109

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
  %i.nq = load ptr, ptr %i.o, align 8, !tbaa !104 ; 2 uses
  %i.nr = load ptr, ptr %3, align 8, !tbaa !105
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
  %i.nv = load ptr, ptr %i.o, align 8, !tbaa !104 ; 6 uses
  %i.nw = load ptr, ptr %3, align 8, !tbaa !105   ; 3 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %.lr.ph61.i
  %i.ny = load i32, ptr %i.q, align 4, !tbaa !101 ; 4 uses
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %.idx.i.i.i.i14 = shl nuw nsw i64 %i.nz, 3
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.idx.i.i.i.i14
  %.not18.i.i.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %bb.bm, %bb.bn
  %.01319.i.i.i.i = phi ptr [ %i.od, %bb.bn ], [ %i.nw, %bb.bm ] ; 3 uses
  %i.ob = load ptr, ptr %.01319.i.i.i.i, align 8, !tbaa !106
  %i.oc = icmp eq ptr %i.ob, %.sroa.027.057.i
  br i1 %i.oc, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i15
  %i.od = getelementptr inbounds nuw i8, ptr %.01319.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i23.i = icmp eq ptr %i.od, %i.oa
  br i1 %.not.i.i.i23.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i15, !llvm.loop !107

._crit_edge.i.i.i.i:                              ; preds = %bb.bn, %bb.bm
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nz
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.bo:                                            ; preds = %.lr.ph61.i
  %i.of = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull %.sroa.027.057.i) #8 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !106
  %i.oh = icmp eq ptr %i.og, %.sroa.027.057.i
  %.pre.i.i.i7 = load ptr, ptr %i.o, align 8, !tbaa !104 ; 4 uses
  %.pre4.i.i.i = load ptr, ptr %3, align 8, !tbaa !105 ; 3 uses
  br i1 %i.oh, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, label %bb.bp

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i: ; preds = %bb.bo
  %.pre5.i.i.i = load i32, ptr %i.q, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.oi = icmp eq ptr %.pre.i.i.i7, %.pre4.i.i.i
  %i.oj = load i32, ptr %i.q, align 4             ; 2 uses
  %i.ok = load i32, ptr %i.p, align 8
  %.v.v.i14.i.i.i.i = select i1 %i.oi, i32 %i.oj, i32 %i.ok
  %.v.i15.i.i.i.i = zext i32 %.v.v.i14.i.i.i.i to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i7, i64 %.v.i15.i.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i15, %bb.bp, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, %._crit_edge.i.i.i.i
  %i.om = phi ptr [ %i.nv, %._crit_edge.i.i.i.i ], [ %.pre4.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %.pre4.i.i.i, %bb.bp ], [ %i.nv, %.lr.ph.i.i.i.i15 ]
  %i.on = phi i32 [ %i.ny, %._crit_edge.i.i.i.i ], [ %.pre5.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %i.oj, %bb.bp ], [ %i.ny, %.lr.ph.i.i.i.i15 ]
  %i.oo = phi ptr [ %i.nv, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i7, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %.pre.i.i.i7, %bb.bp ], [ %i.nv, %.lr.ph.i.i.i.i15 ] ; 2 uses
  %.2.i.i.i.i = phi ptr [ %i.oe, %._crit_edge.i.i.i.i ], [ %i.of, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i ], [ %i.ol, %bb.bp ], [ %.01319.i.i.i.i, %.lr.ph.i.i.i.i15 ] ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.om
  %i.oq = load i32, ptr %i.p, align 8
  %.v.v.i4.i.i.i.i = select i1 %i.op, i32 %i.on, i32 %i.oq
  %.v.i5.i.i.i.i = zext i32 %.v.v.i4.i.i.i.i to i64
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %.v.i5.i.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i.i = icmp eq ptr %.2.i.i.i.i, %i.or
  br i1 %.not3.i4.i.i6.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i, label %.lr.ph.i5.i.i7.i.i.i.i

.lr.ph.i5.i.i7.i.i.i.i:                           ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, %.critedge2.i7.i.i9.i.i.i.i
  %.sroa.0.3.i.i.i.i = phi ptr [ %i.ot, %.critedge2.i7.i.i9.i.i.i.i ], [ %.2.i.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i ] ; 3 uses
  %i.os = load ptr, ptr %.sroa.0.3.i.i.i.i, align 8, !tbaa !106
  %switch.i6.i.i8.i.i.i.i = icmp ugt ptr %i.os, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.i, label %.critedge2.i7.i.i9.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i

.critedge2.i7.i.i9.i.i.i.i:                       ; preds = %.lr.ph.i5.i.i7.i.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.i = icmp eq ptr %i.ot, %i.or
  br i1 %.not.i8.i.i10.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i, label %.lr.ph.i5.i.i7.i.i.i.i, !llvm.loop !108

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i: ; preds = %.lr.ph.i5.i.i7.i.i.i.i
  %.not48.i = icmp eq ptr %.sroa.0.3.i.i.i.i, %i.or
  br i1 %.not48.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i, label %bb.bw

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i: ; preds = %.critedge2.i7.i.i9.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.027.057.i, i64 16 ; 3 uses
  %i.ov = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ou) #8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !93 ; 3 uses
  %i.ox = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ou) #8 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !93
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !94
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %i.pb ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !93
  store i32 0, ptr %i.w, align 8, !tbaa !94
  store i32 2, ptr %i.x, align 4, !tbaa !103
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = ptrtoint ptr %i.ow to i64
  %i.pf = sub i64 %i.pd, %i.pe                    ; 2 uses
  %i.pg = ashr exact i64 %i.pf, 3                 ; 3 uses
  %i.ph = icmp ugt i64 %i.pg, 2
  br i1 %i.ph, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.v, i64 noundef %i.pg, i64 noundef 8) #8
  %.pre7.pre.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !94
  %.pre20.pre.i.i = load ptr, ptr %2, align 8, !tbaa !93
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i
  %.pre20.i.i = phi ptr [ %.pre20.pre.i.i, %bb.bq ], [ %i.v, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i ] ; 2 uses
  %.pre7.i.i.i.i = phi i32 [ %.pre7.pre.i.i.i.i, %bb.bq ], [ 0, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i ] ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.ow, %i.pc
  br i1 %.not.i.i.i.i.i9, label %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EEC2IPKS3_vEET_S8_.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pi = zext i32 %.pre7.i.i.i.i to i64
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %.pre20.i.i, i64 %i.pi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pj, ptr align 8 %i.ow, i64 %i.pf, i1 false)
  %.pre.i.i.i.i10 = load i32, ptr %i.w, align 8, !tbaa !94
  %.pre.i24.i = load ptr, ptr %2, align 8, !tbaa !93
  br label %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EEC2IPKS3_vEET_S8_.exit.i.i

_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EEC2IPKS3_vEET_S8_.exit.i.i: ; preds = %bb.bs, %bb.br
  %i.pk = phi ptr [ %.pre20.i.i, %bb.br ], [ %.pre.i24.i, %bb.bs ] ; 2 uses
  %i.pl = phi i32 [ %.pre7.i.i.i.i, %bb.br ], [ %.pre.i.i.i.i10, %bb.bs ]
  %i.pm = trunc i64 %i.pg to i32
  %i.pn = add i32 %i.pl, %i.pm                    ; 3 uses
  store i32 %i.pn, ptr %i.w, align 8, !tbaa !94
  %i.po = zext i32 %i.pn to i64
  %.idx.i.i11 = shl nuw nsw i64 %i.po, 3
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.idx.i.i11
  %.not18.i.i = icmp eq i32 %i.pn, 0
  br i1 %.not18.i.i, label %._crit_edge.i.i13, label %.lr.ph.i.i12

._crit_edge.i.i13:                                ; preds = %bb.bv, %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EEC2IPKS3_vEET_S8_.exit.i.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ou, ptr noundef null) #8
  call void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.027.057.i) #8
  %i.pq = load ptr, ptr %2, align 8, !tbaa !93    ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.v
  br i1 %i.pr, label %_ZL16deleteBasicBlockPN6hermes10BasicBlockE.exit.i, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i13
  call void @free(ptr noundef %i.pq) #8
  br label %_ZL16deleteBasicBlockPN6hermes10BasicBlockE.exit.i

.lr.ph.i.i12:                                     ; preds = %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EEC2IPKS3_vEET_S8_.exit.i.i, %bb.bv
  %.019.i.i = phi ptr [ %i.pw, %bb.bv ], [ %i.pk, %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj2EEC2IPKS3_vEET_S8_.exit.i.i ] ; 2 uses
  %i.ps = load ptr, ptr %.019.i.i, align 8, !tbaa !95 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load i8, ptr %i.pt, align 8, !tbaa !61
  %i.pv = icmp ne i8 %i.pu, 33
  %.not1617.i.i = icmp eq ptr %i.ps, null
  %.not16.i.i = or i1 %.not1617.i.i, %i.pv
  br i1 %.not16.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i12
  call void @_ZN6hermes7PhiInst11removeEntryEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %i.ps, ptr noundef nonnull %.sroa.027.057.i) #8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph.i.i12
  %i.pw = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.pw, %i.pp
  br i1 %.not.i25.i, label %._crit_edge.i.i13, label %.lr.ph.i.i12

_ZL16deleteBasicBlockPN6hermes10BasicBlockE.exit.i: ; preds = %bb.bt, %._crit_edge.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.bw

bb.bw:                                            ; preds = %_ZL16deleteBasicBlockPN6hermes10BasicBlockE.exit.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i
  %.1.i = phi i1 [ %.059.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i ], [ true, %_ZL16deleteBasicBlockPN6hermes10BasicBlockE.exit.i ] ; 2 uses
  %.not47.i = icmp eq ptr %i.nu, %i.d
  br i1 %.not47.i, label %._crit_edge62.i, label %.lr.ph61.i, !llvm.loop !130

_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit: ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.0.lcssa.i8, label %.backedge.backedge, label %bb.bx

bb.bx:                                            ; preds = %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17createSimplifyCFGEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes11SimplifyCFGESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #9, !noalias !131 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !134, !noalias !131
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !139, !noalias !131
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 11, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !140, !noalias !131
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes11SimplifyCFGE, i64 16), ptr %i.a, align 8, !tbaa !141, !noalias !131
  store ptr %i.a, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes11SimplifyCFGD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #10
  ret void
}

declare noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL33replaceCondBranchWithDirectBranchPN6hermes14CondBranchInstEPNS_10BasicBlockE(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 4 uses
  %i.c = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 1) #8 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.f = select i1 %i.d, ptr null, ptr %i.e       ; 2 uses
  %i.g = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 2) #8 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.j = select i1 %i.h, ptr null, ptr %i.i       ; 2 uses
  %.not = icmp eq ptr %i.f, %1
  br i1 %.not, label %_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %.sroa.019.026.i = load ptr, ptr %i.k, align 8, !tbaa !60 ; 2 uses
  %.not2227.i = icmp eq ptr %.sroa.019.026.i, %i.l
  br i1 %.not2227.i, label %_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.b, %.loopexit.i
  %.sroa.019.028.i = phi ptr [ %.sroa.019.0.i, %.loopexit.i ], [ %.sroa.019.026.i, %bb.b ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.019.028.i, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !61
  %i.o = icmp ne i8 %i.n, 33
  %.not23.i = icmp eq ptr %.sroa.019.028.i, null
  %.not.i = or i1 %.not23.i, %i.o
  br i1 %.not.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph30.i
  %i.p = tail call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.019.028.i) #8 ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.c, %.critedge.i
  %.01625.i = phi i32 [ %i.t, %.critedge.i ], [ 0, %bb.c ] ; 3 uses
  %i.r = tail call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.019.028.i, i32 noundef %.01625.i) #8
  %i.s = extractvalue { ptr, ptr } %i.r, 1
  %.not18.i = icmp eq ptr %i.s, %i.b
  br i1 %.not18.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_ZN6hermes7PhiInst11removeEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.019.028.i, i32 noundef %.01625.i) #8
  br label %.loopexit.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.t = add nuw nsw i32 %.01625.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.t, %i.p
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !146

.loopexit.i:                                      ; preds = %.critedge.i, %bb.d, %bb.c, %.lr.ph30.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.019.028.i, i64 8
  %.sroa.019.0.i = load ptr, ptr %i.u, align 8, !tbaa !60 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.019.0.i, %i.l
  br i1 %.not22.i, label %_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit, label %.lr.ph30.i

_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit: ; preds = %.loopexit.i, %bb.b, %bb.a
  %.not16 = icmp eq ptr %i.j, %1
  br i1 %.not16, label %_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit31, label %bb.e

bb.e:                                             ; preds = %_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %.sroa.019.026.i17 = load ptr, ptr %i.v, align 8, !tbaa !60 ; 2 uses
  %.not2227.i18 = icmp eq ptr %.sroa.019.026.i17, %i.w
  br i1 %.not2227.i18, label %_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit31, label %.lr.ph30.i19

.lr.ph30.i19:                                     ; preds = %bb.e, %.loopexit.i23
  %.sroa.019.028.i20 = phi ptr [ %.sroa.019.0.i24, %.loopexit.i23 ], [ %.sroa.019.026.i17, %bb.e ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.028.i20, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !61
  %i.z = icmp ne i8 %i.y, 33
  %.not23.i21 = icmp eq ptr %.sroa.019.028.i20, null
  %.not.i22 = or i1 %.not23.i21, %i.z
  br i1 %.not.i22, label %.loopexit.i23, label %bb.f

bb.f:                                             ; preds = %.lr.ph30.i19
  %i.aa = tail call noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.019.028.i20) #8 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i26, label %.loopexit.i23

.lr.ph.i26:                                       ; preds = %bb.f, %.critedge.i29
  %.01625.i27 = phi i32 [ %i.ae, %.critedge.i29 ], [ 0, %bb.f ] ; 3 uses
  %i.ac = tail call { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.019.028.i20, i32 noundef %.01625.i27) #8
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  %.not18.i28 = icmp eq ptr %i.ad, %i.b
  br i1 %.not18.i28, label %bb.g, label %.critedge.i29

bb.g:                                             ; preds = %.lr.ph.i26
  tail call void @_ZN6hermes7PhiInst11removeEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.019.028.i20, i32 noundef %.01625.i27) #8
  br label %.loopexit.i23

.critedge.i29:                                    ; preds = %.lr.ph.i26
  %i.ae = add nuw nsw i32 %.01625.i27, 1          ; 2 uses
  %exitcond.not.i30 = icmp eq i32 %i.ae, %i.aa
  br i1 %exitcond.not.i30, label %.loopexit.i23, label %.lr.ph.i26, !llvm.loop !146

.loopexit.i23:                                    ; preds = %.critedge.i29, %bb.g, %bb.f, %.lr.ph30.i19
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.019.028.i20, i64 8
  %.sroa.019.0.i24 = load ptr, ptr %i.af, align 8, !tbaa !60 ; 2 uses
  %.not22.i25 = icmp eq ptr %.sroa.019.0.i24, %i.w
  br i1 %.not22.i25, label %_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit31, label %.lr.ph30.i19

_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit31: ; preds = %.loopexit.i23, %bb.e, %_ZL18removeEntryFromPhiPN6hermes10BasicBlockES1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !7
  store ptr %i.aj, ptr %2, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.b) #8
  %i.al = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1) #8 ; 0 uses
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

declare noundef ptr @_ZN6hermes13evalToBooleanERNS_9IRBuilderEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes10SwitchInst21getDefaultDestinationEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK6hermes10SwitchInst11getCasePairEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes10SwitchInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes27deleteIncomingBlockFromPhisEPNS_10BasicBlockES1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes7PhiInst13getNumEntriesEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK6hermes7PhiInst8getEntryEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes7PhiInst11removeEntryEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6hermes7PhiInst8addEntryEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes7PhiInst11removeEntryEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !25, i64 56}
!8 = !{!"_ZTSN6hermes8FunctionE", !9, i64 0, !15, i64 16, !25, i64 56, !26, i64 64, !27, i64 72, !28, i64 80, !33, i64 96, !38, i64 176, !40, i64 184, !26, i64 188, !41, i64 192, !44, i64 208, !38, i64 216, !45, i64 224, !4, i64 232, !46, i64 236, !47, i64 248, !49, i64 280, !54, i64 296}
!9 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !10, i64 0}
!10 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !11, i64 0}
!11 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !12, i64 0}
!12 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !13, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"_ZTSN6hermes5ValueE", !16, i64 0, !17, i64 2, !19, i64 8}
!16 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!17 = !{!"_ZTSN6hermes4TypeE", !18, i64 0, !18, i64 2}
!18 = !{!"short", !5, i64 0}
!19 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !20, i64 0, !24, i64 16}
!20 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !21, i64 0}
!21 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !22, i64 0}
!22 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !23, i64 0}
!23 = !{!"_ZTSN4llvh15SmallVectorBaseE", !14, i64 0, !4, i64 8, !4, i64 12}
!24 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!25 = !{!"p1 _ZTSN6hermes6ModuleE", !14, i64 0}
!26 = !{!"bool", !5, i64 0}
!27 = !{!"p1 _ZTSN6hermes9ScopeDescE", !14, i64 0}
!28 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !29, i64 0}
!29 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !30, i64 0}
!30 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !31, i64 0}
!31 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !32, i64 0}
!32 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !12, i64 0}
!33 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !34, i64 0, !37, i64 16}
!34 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !35, i64 0}
!35 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !36, i64 0}
!36 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !23, i64 0}
!37 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !5, i64 0}
!38 = !{!"_ZTSN6hermes10IdentifierE", !39, i64 0}
!39 = !{!"p1 _ZTSN6hermes12UniqueStringE", !14, i64 0}
!40 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !5, i64 0}
!41 = !{!"_ZTSN4llvh7SMRangeE", !42, i64 0, !42, i64 8}
!42 = !{!"_ZTSN4llvh5SMLocE", !43, i64 0}
!43 = !{!"p1 omnipotent char", !14, i64 0}
!44 = !{!"_ZTSN6hermes16SourceVisibilityE", !5, i64 0}
!45 = !{!"p1 _ZTSN6hermes9ParameterE", !14, i64 0}
!46 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !26, i64 4}
!47 = !{!"_ZTSN6hermes10LazySourceE", !48, i64 0, !4, i64 4, !41, i64 8, !26, i64 24, !26, i64 25}
!48 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!49 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !50, i64 0}
!50 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !51, i64 0, !52, i64 8}
!51 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !14, i64 0}
!52 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0}
!53 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!54 = !{!"p1 _ZTSN6hermes8VariableE", !14, i64 0}
!55 = !{!56, !25, i64 0}
!56 = !{!"_ZTSN6hermes9IRBuilderE", !25, i64 0, !57, i64 8, !59, i64 16, !42, i64 24, !27, i64 32}
!57 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !58, i64 0}
!58 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !14, i64 0}
!59 = !{!"p1 _ZTSN6hermes10BasicBlockE", !14, i64 0}
!60 = !{!12, !13, i64 8}
!61 = !{!15, !16, i64 0}
!62 = !{!63, !59, i64 56}
!63 = !{!"_ZTSN6hermes11InstructionE", !64, i64 0, !15, i64 16, !59, i64 56, !67, i64 64, !27, i64 112, !42, i64 120, !4, i64 128}
!64 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !65, i64 0}
!65 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !66, i64 0}
!66 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !12, i64 0}
!67 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !68, i64 0, !71, i64 16}
!68 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !69, i64 0}
!69 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !70, i64 0}
!70 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !23, i64 0}
!71 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !5, i64 0}
!72 = !{!73, !80, i64 72}
!73 = !{!"_ZTSN6hermes10BasicBlockE", !74, i64 0, !15, i64 16, !76, i64 56, !80, i64 72}
!74 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !75, i64 0}
!75 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !32, i64 0}
!76 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !77, i64 0}
!77 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !78, i64 0}
!78 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !79, i64 0}
!79 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !66, i64 0}
!80 = !{!"p1 _ZTSN6hermes8FunctionE", !14, i64 0}
!81 = !{!82, !85, i64 48}
!82 = !{!"_ZTSN6hermes13LiteralNumberE", !83, i64 0, !84, i64 40, !85, i64 48}
!83 = !{!"_ZTSN6hermes7LiteralE", !15, i64 0}
!84 = !{!"_ZTSN4llvh14FoldingSetBase4NodeE", !14, i64 0}
!85 = !{!"double", !5, i64 0}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = distinct !{!88, !87}
!89 = !{!90, !26, i64 40}
!90 = !{!"_ZTSN6hermes11LiteralBoolE", !83, i64 0, !26, i64 40}
!91 = !{i8 0, i8 2}
!92 = !{}
!93 = !{!23, !14, i64 0}
!94 = !{!23, !4, i64 8}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTSN6hermes11InstructionE", !14, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"any p2 pointer", !14, i64 0}
!99 = !{!100, !4, i64 16}
!100 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !98, i64 0, !98, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!101 = !{!100, !4, i64 20}
!102 = !{!100, !4, i64 24}
!103 = !{!23, !4, i64 12}
!104 = !{!100, !98, i64 8}
!105 = !{!100, !98, i64 0}
!106 = !{!14, !14, i64 0}
!107 = distinct !{!107, !87}
!108 = distinct !{!108, !87}
!109 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!112 = distinct !{!112, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!113 = distinct !{!113, !87}
!114 = distinct !{!114, !87}
!115 = distinct !{!115, !87}
!116 = distinct !{!116, !87}
!117 = distinct !{!117, !87}
!118 = !{!59, !59, i64 0}
!119 = distinct !{!119, !87}
!120 = distinct !{!120, !87}
!121 = distinct !{!121, !87}
!122 = distinct !{!122, !87}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!125 = distinct !{!125, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!126 = distinct !{!126, !87}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN6hermes10successorsEPNS_10BasicBlockE: argument 0"}
!129 = distinct !{!129, !"_ZN6hermes10successorsEPNS_10BasicBlockE"}
!130 = distinct !{!130, !87}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZSt11make_uniqueIN6hermes11SimplifyCFGEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!133 = distinct !{!133, !"_ZSt11make_uniqueIN6hermes11SimplifyCFGEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!134 = !{!135, !136, i64 8}
!135 = !{!"_ZTSN6hermes4PassE", !136, i64 8, !137, i64 16}
!136 = !{!"_ZTSN6hermes4Pass8PassKindE", !5, i64 0}
!137 = !{!"_ZTSN4llvh9StringRefE", !43, i64 0, !138, i64 8}
!138 = !{!"long", !5, i64 0}
!139 = !{!43, !43, i64 0}
!140 = !{!138, !138, i64 0}
!141 = !{!142, !142, i64 0}
!142 = !{!"vtable pointer", !6, i64 0}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes4PassELb0EE", !145, i64 0}
!145 = !{!"p1 _ZTSN6hermes4PassE", !14, i64 0}
!146 = distinct !{!146, !87}
end_hunk_0
