Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SimplifyCFG?download=true
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
  %i.y = insertelement <2 x ptr> poison, ptr %i.f, i64 0
  %i.z = shufflevector <2 x ptr> %i.y, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.backedge.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !54
  store ptr %i.aa, ptr %8, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %.sroa.0116.0154.i = load ptr, ptr %i.c, align 8, !tbaa !60 ; 3 uses
  %.not131155.i = icmp eq ptr %.sroa.0116.0154.i, %i.d
  br i1 %.not131155.i, label %.preheader138.i, label %.lr.ph.i

.preheader138.loopexit.i:                         ; preds = %.thread121.i
  %.sroa.0112.0159.pre.i = load ptr, ptr %i.c, align 8, !tbaa !60
  br label %.preheader138.i

.preheader138.i:                                  ; preds = %.preheader138.loopexit.i, %.backedge
  %.sroa.0112.0159.i = phi ptr [ %.sroa.0116.0154.i, %.backedge ], [ %.sroa.0112.0159.pre.i, %.preheader138.loopexit.i ] ; 2 uses
  %.065.lcssa.i = phi i8 [ 0, %.backedge ], [ %.570.i, %.preheader138.loopexit.i ] ; 2 uses
  %.not132160.i = icmp eq ptr %.sroa.0112.0159.i, %i.d
  br i1 %.not132160.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

.lr.ph.i:                                         ; preds = %.backedge, %.thread121.i
  %.sroa.0116.0157.i = phi ptr [ %.sroa.0116.0.i, %.thread121.i ], [ %.sroa.0116.0154.i, %.backedge ] ; 3 uses
  %.065156.i = phi i8 [ %.570.i, %.thread121.i ], [ 0, %.backedge ] ; 4 uses
  %i.ab = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0116.0157.i) #8 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !61
  %i.ae = icmp ne i8 %i.ad, 80
  %.not82135.i = icmp eq ptr %i.ab, null
  %.not82.i = or i1 %.not82135.i, %i.ae
  br i1 %.not82.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !71 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54
  store ptr %i.ak, ptr %7, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.ag) #8
  %i.al = call noundef ptr @_ZNK6hermes10SwitchInst13getInputValueEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8 ; 4 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !61
  %i.an = add i8 %i.am, -109
  %i.ao = icmp ult i8 %i.an, 11                   ; 3 uses
  %spec.select.i.i.i = select i1 %i.ao, ptr %i.al, ptr null
  br i1 %i.ao, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ap = call noundef ptr @_ZNK6hermes10SwitchInst21getDefaultDestinationEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8 ; 2 uses
  %i.aq = call noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %.split.loop.exit37.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.03042.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bd, %bb.f ] ; 2 uses
  %i.as = call { ptr, ptr } @_ZNK6hermes10SwitchInst11getCasePairEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ab, i32 noundef %.03042.i.i) #8 ; 3 uses
  %i.at = extractvalue { ptr, ptr } %i.as, 0      ; 3 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !61
  %i.av = icmp eq i8 %i.au, 114
  br i1 %i.av, label %bb.e, label %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aw = load i8, ptr %i.al, align 8, !tbaa !61
  %i.ax = icmp eq i8 %i.aw, 114
  br i1 %i.ax, label %.split.i.i, label %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.az = load double, ptr %i.ay, align 8, !tbaa !107
  %i.ba = load double, ptr %i.ar, align 8, !tbaa !107
  %i.bb = fcmp oeq double %i.az, %i.ba
  br i1 %i.bb, label %.split.loop.exit.i.i, label %bb.f

_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bc = icmp eq ptr %i.at, %spec.select.i.i.i
  br i1 %i.bc, label %.split.loop.exit39.i.i, label %bb.f

bb.f:                                             ; preds = %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i, %.split.i.i
  %i.bd = add nuw i32 %.03042.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bd, %i.aq
  br i1 %exitcond.not.i.i, label %.split.loop.exit37.i.i, label %bb.d, !llvm.loop !82

.split.loop.exit.i.i:                             ; preds = %.split.i.i
  %i.be = extractvalue { ptr, ptr } %i.as, 1
  br label %.split.loop.exit37.i.i

.split.loop.exit39.i.i:                           ; preds = %_ZL21literalStrictEqualityPN6hermes7LiteralES1_.exit.i.i
  %i.bf = extractvalue { ptr, ptr } %i.as, 1
  br label %.split.loop.exit37.i.i

.split.loop.exit37.i.i:                           ; preds = %bb.f, %.split.loop.exit39.i.i, %.split.loop.exit.i.i, %bb.c
  %.2.i.i = phi ptr [ %i.bf, %.split.loop.exit39.i.i ], [ %i.be, %.split.loop.exit.i.i ], [ %i.ap, %bb.c ], [ %i.ap, %bb.f ] ; 2 uses
  %i.bg = call noundef i32 @_ZNK6hermes10SwitchInst14getNumCasePairEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8 ; 2 uses
  %.not45.i.i = icmp eq i32 %i.bg, -1
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph44.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %.split.loop.exit37.i.i
  %i.bh = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %.2.i.i) #8 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = select i1 %i.bi, ptr null, ptr %i.bj
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef %i.bk) #8
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ab) #8
  br label %bb.i

.lr.ph44.i.i:                                     ; preds = %.split.loop.exit37.i.i, %bb.h
  %.02943.i.i = phi i32 [ %i.bo, %bb.h ], [ 0, %.split.loop.exit37.i.i ] ; 3 uses
  %i.bl = call noundef ptr @_ZNK6hermes10SwitchInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ab, i32 noundef %.02943.i.i) #8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %.2.i.i
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph44.i.i
  %i.bn = call noundef zeroext i1 @_ZN6hermes27deleteIncomingBlockFromPhisEPNS_10BasicBlockES1_(ptr noundef %i.bl, ptr noundef nonnull %i.ag) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph44.i.i
  %i.bo = add nuw i32 %.02943.i.i, 1
  %exitcond48.not.i.i = icmp eq i32 %.02943.i.i, %i.bg
  br i1 %exitcond48.not.i.i, label %._crit_edge.i.i, label %.lr.ph44.i.i, !llvm.loop !83

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %9 = zext i1 %i.ao to i8
  %10 = or i8 %.065156.i, %9
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %.thread121.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.bp = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0116.0157.i) #8 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !61
  %i.bs = icmp ne i8 %i.br, 81
  %.not83136.i = icmp eq ptr %i.bp, null
  %.not83.i = or i1 %.not83136.i, %i.bs
  br i1 %.not83.i, label %.thread121.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bp, i32 noundef 1) #8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null                 ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.bw = select i1 %i.bu, ptr null, ptr %i.bv    ; 3 uses
  %i.bx = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bp, i32 noundef 2) #8 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null                 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -16
  %i.ca = select i1 %i.by, ptr null, ptr %i.bz    ; 2 uses
  %i.cb = icmp eq ptr %i.bw, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZL33replaceCondBranchWithDirectBranchPN6hermes14CondBranchInstEPNS_10BasicBlockE(ptr noundef %i.bp, ptr noundef %i.bw)
  br label %.thread121.i

bb.m:                                             ; preds = %bb.k
  %i.cc = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.bp, i32 noundef 0) #8
  %i.cd = call noundef ptr @_ZN6hermes13evalToBooleanERNS_9IRBuilderEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %i.cc) #8 ; 2 uses
  %.not84.i = icmp eq ptr %i.cd, null
  br i1 %.not84.i, label %.thread121.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !109, !range !110, !noundef !111
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  %.not85.i = select i1 %i.cg, i1 %i.bu, i1 %i.by
  br i1 %.not85.i, label %.thread121.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %..i = select i1 %i.cg, ptr %i.bw, ptr %i.ca
  call fastcc void @_ZL33replaceCondBranchWithDirectBranchPN6hermes14CondBranchInstEPNS_10BasicBlockE(ptr noundef %i.bp, ptr noundef nonnull %..i)
  br label %.thread121.i

.thread121.i:                                     ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  %.570.i = phi i8 [ %12, %bb.i ], [ %.065156.i, %bb.j ], [ 1, %bb.l ], [ 1, %bb.o ], [ %.065156.i, %bb.n ], [ %.065156.i, %bb.m ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0116.0157.i, i64 8
  %.sroa.0116.0.i = load ptr, ptr %i.ch, align 8, !tbaa !60 ; 2 uses
  %.not131.i = icmp eq ptr %.sroa.0116.0.i, %i.d
  br i1 %.not131.i, label %.preheader138.loopexit.i, label %.lr.ph.i

.lr.ph164.i:                                      ; preds = %.preheader138.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
  %.sroa.0112.0162.i = phi ptr [ %.sroa.0112.0.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.sroa.0112.0159.i, %.preheader138.i ] ; 14 uses
  %.671161.i = phi i8 [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ], [ %.065.lcssa.i, %.preheader138.i ] ; 10 uses
  %i.ci = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !61
  %i.cl = icmp ne i8 %i.ck, 77
  %.not133.i = icmp eq ptr %i.ci, null
  %.not.i = or i1 %.not133.i, %i.cl
  br i1 %.not.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph164.i
  %i.cm = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ci, i32 noundef 0) #8 ; 6 uses
  %i.cn = icmp eq ptr %i.cm, null                 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -16 ; 2 uses
  %i.cp = select i1 %i.cn, ptr null, ptr %i.co    ; 4 uses
  %i.cq = icmp eq ptr %i.cp, %.sroa.0112.0162.i
  br i1 %i.cq, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr i8, ptr %i.cm, i64 48
  %.val.i = load ptr, ptr %i.cr, align 8, !tbaa !60
  %i.cs = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i8, ptr %i.cs, align 8, !tbaa !61
  switch i8 %.val.val.i, label %bb.r [
    i8 85, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
    i8 60, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
    i8 56, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i
  ]

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 16 ; 7 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ct) #8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !112 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !113 ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %.idx.i.i = shl nuw nsw i64 %i.cy, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i.i
  %.not13.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not13.not.i.i, label %.loopexit.i, label %.lr.ph.i88.i

bb.s:                                             ; preds = %.lr.ph.i88.i
  %i.da = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.da, %i.cz
  br i1 %.not.not.i.i, label %.loopexit.i, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %bb.r, %bb.s
  %.0914.i.i = phi ptr [ %i.da, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %i.db = load ptr, ptr %.0914.i.i, align 8, !tbaa !115
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !61
  %i.de = icmp eq i8 %i.dd, 33
  br i1 %i.de, label %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i, label %bb.s

_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i: ; preds = %.lr.ph.i88.i
  %i.df = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !60
  %.not.i90.i = icmp eq ptr %i.df, %i.dh
  br i1 %.not.i90.i, label %bb.t, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.t:                                             ; preds = %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i
  %i.di = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0112.0162.i) #8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !61
  %.not125.i.i = icmp eq i8 %i.dk, 77
  br i1 %.not125.i.i, label %bb.u, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store <2 x ptr> %i.z, ptr %5, align 16, !tbaa !117
  store i32 8, ptr %i.h, align 16, !tbaa !119
  store i32 0, ptr %i.i, align 4, !tbaa !120
  store i32 0, ptr %i.j, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %i.k, ptr %6, align 8, !tbaa !112
  store i32 0, ptr %i.l, align 8, !tbaa !113
  store i32 8, ptr %i.m, align 4, !tbaa !122
  %i.dl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ct) #8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !112 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !113 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %.idx.i91.i = shl nuw nsw i64 %i.dp, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i91.i
  %.not126246.i.i = icmp eq i32 %i.do, 0
  br i1 %.not126246.i.i, label %.critedge141.i.i, label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %bb.u, %.critedge139.i.i
  %.0121247.i.i = phi ptr [ %i.fw, %.critedge139.i.i ], [ %i.dm, %bb.u ] ; 2 uses
  %i.dr = load ptr, ptr %.0121247.i.i, align 8, !tbaa !115 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !61
  switch i8 %i.dt, label %.thread217.i.i [
    i8 77, label %bb.v
    i8 81, label %bb.v
    i8 80, label %bb.v
    i8 82, label %bb.v
    i8 83, label %bb.v
    i8 33, label %.critedge139.i.i
  ]

bb.v:                                             ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i, %.lr.ph.i92.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !71 ; 3 uses
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !123 ; 6 uses
  %i.dx = load ptr, ptr %5, align 16, !tbaa !124  ; 5 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dz = load i32, ptr %i.i, align 4, !tbaa !120 ; 4 uses
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ea, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx.i.i.i.i.i
  %.not18.i.i.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not18.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %bb.x
  %.01219.i.i.i.i.i = phi ptr [ %i.ee, %bb.x ], [ %i.dx, %bb.w ] ; 3 uses
  %i.ec = load ptr, ptr %.01219.i.i.i.i.i, align 8, !tbaa !125
  %i.ed = icmp eq ptr %i.ec, %i.dv
  br i1 %i.ed, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.01219.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ee, %i.eb
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !84

._crit_edge.i.i.i.i.i:                            ; preds = %bb.x, %bb.w
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ea
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.eg = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %i.dv) #8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !125
  %i.ei = icmp eq ptr %i.eh, %i.dv
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !123 ; 4 uses
  %.pre4.i.i.i.i = load ptr, ptr %5, align 16, !tbaa !124 ; 5 uses
  br i1 %i.ei, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i, label %bb.z

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i: ; preds = %bb.y
  %.pre5.i.i.i.i = load i32, ptr %i.i, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ej = icmp eq ptr %.pre.i.i.i.i, %.pre4.i.i.i.i
  %i.ek = load i32, ptr %i.i, align 4             ; 2 uses
  %i.el = load i32, ptr %i.h, align 16
  %.v.v.i14.i.i.i.i.i = select i1 %i.ej, i32 %i.ek, i32 %i.el
  %.v.i15.i.i.i.i.i = zext i32 %.v.v.i14.i.i.i.i.i to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.v.i15.i.i.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.z, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.en = phi ptr [ %i.dx, %._crit_edge.i.i.i.i.i ], [ %.pre4.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre4.i.i.i.i, %bb.z ], [ %i.dx, %.lr.ph.i.i.i.i.i ]
  %i.eo = phi ptr [ %i.dw, %._crit_edge.i.i.i.i.i ], [ %.pre4.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre4.i.i.i.i, %bb.z ], [ %i.dw, %.lr.ph.i.i.i.i.i ]
  %i.ep = phi i32 [ %i.dz, %._crit_edge.i.i.i.i.i ], [ %.pre5.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %i.ek, %bb.z ], [ %i.dz, %.lr.ph.i.i.i.i.i ]
  %i.eq = phi ptr [ %i.dw, %._crit_edge.i.i.i.i.i ], [ %.pre.i.i.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %.pre.i.i.i.i, %bb.z ], [ %i.dw, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.2.i.i.i.i.i = phi ptr [ %i.ef, %._crit_edge.i.i.i.i.i ], [ %i.eg, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i.i ], [ %i.em, %bb.z ], [ %.01219.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.eo
  %i.es = load i32, ptr %i.h, align 16
  %.v.v.i4.i.i.i.i.i = select i1 %i.er, i32 %i.ep, i32 %i.es
  %.v.i5.i.i.i.i.i = zext i32 %.v.v.i4.i.i.i.i.i to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.v.i5.i.i.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i.i.i = icmp eq ptr %.2.i.i.i.i.i, %i.et
  br i1 %.not3.i4.i.i6.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i.i.i

.lr.ph.i5.i.i7.i.i.i.i.i:                         ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i, %.critedge2.i7.i.i9.i.i.i.i.i
  %.sroa.0.3.i.i.i.i.i = phi ptr [ %i.ev, %.critedge2.i7.i.i9.i.i.i.i.i ], [ %.2.i.i.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i ] ; 3 uses
  %i.eu = load ptr, ptr %.sroa.0.3.i.i.i.i.i, align 8, !tbaa !125
  %switch.i6.i.i8.i.i.i.i.i = icmp ugt ptr %i.eu, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.i.i, label %.critedge2.i7.i.i9.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i

.critedge2.i7.i.i9.i.i.i.i.i:                     ; preds = %.lr.ph.i5.i.i7.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.i.i = icmp eq ptr %i.ev, %i.et
  br i1 %.not.i8.i.i10.i.i.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i.i.i, !llvm.loop !85

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i.i.i
  %.not232.i.i = icmp eq ptr %.sroa.0.3.i.i.i.i.i, %i.et
  br i1 %.not232.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i, label %bb.ab

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i: ; preds = %.critedge2.i7.i.i9.i.i.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i.i
  %i.ew = load ptr, ptr %i.du, align 8, !tbaa !71
  %i.ex = load i32, ptr %i.l, align 8, !tbaa !113 ; 2 uses
  %i.ey = load i32, ptr %i.m, align 4, !tbaa !122
  %.not.i.i.i = icmp ult i32 %i.ex, %i.ey
  br i1 %.not.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i, label %bb.aa, !prof !126

bb.aa:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 8) #8
  %.pre.i.i.i = load i32, ptr %i.l, align 8, !tbaa !113
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit.i.i: ; preds = %bb.aa, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i
  %i.ez = phi i32 [ %.pre.i.i.i, %bb.aa ], [ %i.ex, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit.thread.i.i ]
  %i.fa = load ptr, ptr %6, align 8, !tbaa !112
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = ptrtoint ptr %i.ew to i64
  store i64 %i.fd, ptr %i.fc, align 1
end_hunk_0
begin_hunk_1_@_ZN6hermes11SimplifyCFG13runOnFunctionEPNS_8FunctionE:bb.a
  %.v.v.i4.i.i.i181.i.i = select i1 %i.jt, i32 %i.jr, i32 %i.ju
  %.v.i5.i.i.i182.i.i = zext i32 %.v.v.i4.i.i.i181.i.i to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.v.i5.i.i.i182.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i183.i.i = icmp eq ptr %.2.i.i.i180.i.i, %i.jv
  br i1 %.not3.i4.i.i6.i.i.i183.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i184.i.i

.lr.ph.i5.i.i7.i.i.i184.i.i:                      ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i, %.critedge2.i7.i.i9.i.i.i190.i.i
  %.sroa.0.3.i.i.i185.i.i = phi ptr [ %i.jx, %.critedge2.i7.i.i9.i.i.i190.i.i ], [ %.2.i.i.i180.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i ] ; 3 uses
  %i.jw = load ptr, ptr %.sroa.0.3.i.i.i185.i.i, align 8, !tbaa !125
  %switch.i6.i.i8.i.i.i186.i.i = icmp ugt ptr %i.jw, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i186.i.i, label %.critedge2.i7.i.i9.i.i.i190.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i

.critedge2.i7.i.i9.i.i.i190.i.i:                  ; preds = %.lr.ph.i5.i.i7.i.i.i184.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i185.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i191.i.i = icmp eq ptr %i.jx, %i.jv
  br i1 %.not.i8.i.i10.i.i.i191.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %.lr.ph.i5.i.i7.i.i.i184.i.i, !llvm.loop !85

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i: ; preds = %.lr.ph.i5.i.i7.i.i.i184.i.i
  %.not236.i.i = icmp eq ptr %.sroa.0.3.i.i.i185.i.i, %i.jv
  br i1 %.not236.i.i, label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i, %.lr.ph270.i.i
  call void @_ZN6hermes7PhiInst11removeEntryEj(ptr noundef nonnull align 8 dereferenceable(132) %i.ig, i32 noundef %.0101268.i.i) #8
  br label %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i

_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.thread.i.i: ; preds = %.critedge2.i7.i.i9.i.i.i190.i.i, %bb.au, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit201.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i179.i.i
  %.0101.i.i = add nsw i32 %.0101268.i.i, -1
  %i.jy = icmp sgt i32 %.0101268.i.i, 0
  br i1 %i.jy, label %.lr.ph270.i.i, label %._crit_edge271.i.i, !llvm.loop !92

.lr.ph275.i.i:                                    ; preds = %._crit_edge271.i.i, %.lr.ph275.i.i
  %.0100273.i.i = phi ptr [ %i.ka, %.lr.ph275.i.i ], [ %i.is, %._crit_edge271.i.i ] ; 2 uses
  %i.jz = load ptr, ptr %.0100273.i.i, align 8, !tbaa !128
  call void @_ZN6hermes7PhiInst8addEntryEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %i.ig, ptr noundef %.0103.lcssa.i.i, ptr noundef %i.jz) #8
  %i.ka = getelementptr inbounds nuw i8, ptr %.0100273.i.i, i64 8 ; 2 uses
  %.not135.i.i = icmp eq ptr %i.ka, %i.iv
  br i1 %.not135.i.i, label %.loopexit.i.i, label %.lr.ph275.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph275.i.i, %._crit_edge271.i.i, %.lr.ph278.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.0105277.i.i, i64 8 ; 2 uses
  %.not133.i.i = icmp eq ptr %i.kb, %i.ie
  br i1 %.not133.i.i, label %._crit_edge279.i.i, label %.lr.ph278.i.i

.thread217.i.i:                                   ; preds = %.lr.ph.i92.i, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i, %._crit_edge279.i.i, %.critedge141.i.i
  %.11.i.i = phi i1 [ true, %._crit_edge279.i.i ], [ false, %.critedge141.i.i ], [ false, %_ZNK4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE5countEPKS2_.exit173.i.i ], [ false, %.lr.ph.i92.i ]
  %i.kc = load ptr, ptr %6, align 8, !tbaa !112   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.k
  br i1 %i.kd, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i, label %bb.av

bb.av:                                            ; preds = %.thread217.i.i
  call void @free(ptr noundef %i.kc) #8
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i: ; preds = %bb.av, %.thread217.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.ke = load ptr, ptr %i.g, align 8, !tbaa !123 ; 2 uses
  %i.kf = load ptr, ptr %5, align 16, !tbaa !124
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i
  call void @free(ptr noundef %i.ke) #8
  br label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i

_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i: ; preds = %bb.aw, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %.11.i.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

.loopexit.i:                                      ; preds = %bb.s, %bb.r
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 64
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !60
  %i.kj = icmp eq ptr %i.ki, %i.ci
  br i1 %i.kj, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %.loopexit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !112 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 32
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !113 ; 2 uses
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %.idx.i.i.i96.i = shl nuw nsw i64 %i.ko, 3
  %i.kp = getelementptr i8, ptr %i.kl, i64 %.idx.i.i.i96.i ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.kn, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i97.i

.lr.ph.i.i.i.i97.i:                               ; preds = %bb.ax, %bb.ay
  %.sroa.0.0.i.i.i = phi ptr [ %i.kv, %bb.ay ], [ %i.kl, %bb.ax ] ; 3 uses
  %i.kq = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !115 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i8, ptr %i.kr, align 8, !tbaa !61
  %i.kt = add i8 %i.ks, -90
  %i.ku = icmp ult i8 %i.kt, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.kq, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.ku
  br i1 %.not1.i.i.i.i.i, label %bb.ay, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i97.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i98.i = icmp eq ptr %i.kv, %i.kp
  br i1 %.not.i.i.i.i98.i, label %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i.i97.i, !llvm.loop !93

_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i: ; preds = %bb.ay, %.lr.ph.i.i.i.i97.i, %bb.ax
  %.sroa.0.1.i.i.i = phi ptr [ %i.kl, %bb.ax ], [ %i.kp, %bb.ay ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i97.i ]
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.ko
  %i.kx = icmp eq ptr %.sroa.0.1.i.i.i, %i.kw
  br i1 %i.kx, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %spec.select.i = select i1 %i.cn, ptr null, ptr %i.ky
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef %spec.select.i) #8
  br label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

bb.ba:                                            ; preds = %_ZN6hermes10pred_emptyEPKNS_10BasicBlockE.exit.i, %.loopexit.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !112 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !113 ; 2 uses
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %.idx.i.i.i99.i = shl nuw nsw i64 %i.ld, 3
  %i.le = getelementptr i8, ptr %i.la, i64 %.idx.i.i.i99.i ; 4 uses
  %.not3.i.i.i.i100.i = icmp eq i32 %i.lc, 0
  br i1 %.not3.i.i.i.i100.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i101.i

.lr.ph.i.i.i.i101.i:                              ; preds = %bb.ba, %bb.bb
  %.sroa.0.0.i.i102.i = phi ptr [ %i.lk, %bb.bb ], [ %i.la, %bb.ba ] ; 3 uses
  %i.lf = load ptr, ptr %.sroa.0.0.i.i102.i, align 8, !tbaa !115 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !61
  %i.li = add i8 %i.lh, -90
  %i.lj = icmp ult i8 %i.li, -15
  %.not12.i.i.i.i103.i = icmp eq ptr %i.lf, null
  %.not1.i.i.i.i104.i = or i1 %.not12.i.i.i.i103.i, %i.lj
  br i1 %.not1.i.i.i.i104.i, label %bb.bb, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i101.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i102.i, i64 8 ; 2 uses
  %.not.i.i.i.i107.i = icmp eq ptr %i.lk, %i.le
  br i1 %.not.i.i.i.i107.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i101.i, !llvm.loop !93

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i101.i, %bb.ba
  %.sroa.0.1.i.i105.i = phi ptr [ %i.la, %bb.ba ], [ %i.le, %bb.bb ], [ %.sroa.0.0.i.i102.i, %.lr.ph.i.i.i.i101.i ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.ld ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0.1.i.i105.i, %i.ll
  br i1 %.not4.i.i.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %.06.i.i.i = phi i32 [ %i.lt, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ 0, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %.sroa.02.2.i.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ %.sroa.0.1.i.i105.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i6.i.i = icmp eq ptr %i.lm, %i.le
  br i1 %.not3.i.i.i6.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.bc
  %.sroa.02.1.i.i.i = phi ptr [ %i.ls, %bb.bc ], [ %i.lm, %.lr.ph.i.i.i ] ; 3 uses
  %i.ln = load ptr, ptr %.sroa.02.1.i.i.i, align 8, !tbaa !115 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !61
  %i.lq = add i8 %i.lp, -90
  %i.lr = icmp ult i8 %i.lq, -15
  %.not12.i.i.i8.i.i = icmp eq ptr %i.ln, null
  %.not1.i.i.i9.i.i = or i1 %.not12.i.i.i8.i.i, %i.lr
  br i1 %.not1.i.i.i9.i.i, label %bb.bc, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i7.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i10.i.i = icmp eq ptr %i.ls, %i.le
  br i1 %.not.i.i.i10.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i, !llvm.loop !93

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.lm, %.lr.ph.i.i.i ], [ %i.ls, %bb.bc ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i7.i.i ] ; 2 uses
  %i.lt = add i32 %.06.i.i.i, 1
  %.not.i.i106.i = icmp eq ptr %.sroa.02.2.i.i.i, %i.ll
  br i1 %.not.i.i106.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !94

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %i.lu = icmp eq i32 %.06.i.i.i, 0
  br i1 %i.lu, label %.preheader.i, label %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i

.preheader.i:                                     ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i
  %i.lv = getelementptr i8, ptr %i.cp, i64 64     ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.cp, i64 56 ; 2 uses
  %i.lx = load ptr, ptr %i.lv, align 8, !tbaa !60 ; 2 uses
  %.not134167.i = icmp eq ptr %i.lx, %i.lw
  br i1 %.not134167.i, label %._crit_edge.i, label %.lr.ph168.i

.lr.ph168.i:                                      ; preds = %.preheader.i, %.lr.ph168.i
  %i.ly = phi ptr [ %i.lz, %.lr.ph168.i ], [ %i.lx, %.preheader.i ]
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.ly, ptr noundef nonnull %i.ci) #8
  %i.lz = load ptr, ptr %i.lv, align 8, !tbaa !60 ; 2 uses
  %.not134.i = icmp eq ptr %i.lz, %i.lw
  br i1 %.not134.i, label %._crit_edge.i, label %.lr.ph168.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph168.i, %.preheader.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull %i.ct) #8
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ci) #8
  call void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.co) #8
  br label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread

_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i: ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %bb.az, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %bb.t, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i, %bb.q, %bb.q, %bb.q, %bb.p, %.lr.ph164.i
  %.9.ph.i = phi i8 [ %.671161.i, %_ZL15isUsedInPhiNodePN6hermes10BasicBlockE.exit.i ], [ %.671161.i, %.lr.ph164.i ], [ %.671161.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i ], [ 1, %bb.az ], [ %.671161.i, %bb.q ], [ %.671161.i, %bb.p ], [ %.671161.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i ], [ %.671161.i, %bb.t ], [ %.671161.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ], [ %.671161.i, %bb.q ], [ %.671161.i, %bb.q ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0112.0162.i, i64 8
  %.sroa.0112.0.i = load ptr, ptr %i.ma, align 8, !tbaa !60 ; 2 uses
  %.not132.i = icmp eq ptr %.sroa.0112.0.i, %i.d
  br i1 %.not132.i, label %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, label %.lr.ph164.i

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %.backedge.backedge

_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit: ; preds = %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i, %.preheader138.i
  %.10.i = phi i8 [ %.065.lcssa.i, %.preheader138.i ], [ %.9.ph.i, %_ZL32attemptBranchRemovalFromPhiNodesPN6hermes10BasicBlockE.exit.thread.i ]
  %13 = trunc nuw i8 %.10.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br i1 %13, label %.backedge.backedge, label %bb.bd

.backedge.backedge:                               ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit, %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit.thread, %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit
  br label %.backedge, !llvm.loop !96

bb.bd:                                            ; preds = %_ZL22optimizeStaticBranchesPN6hermes8FunctionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %i.n, ptr %3, align 8, !tbaa !124
  store ptr %i.n, ptr %i.o, align 8, !tbaa !123
  store i32 16, ptr %i.p, align 8, !tbaa !119
  store i32 0, ptr %i.q, align 4, !tbaa !120
  store i32 0, ptr %i.r, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %i.s, ptr %4, align 8, !tbaa !112
  store i32 32, ptr %i.u, align 4, !tbaa !122
  %i.mb = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.mc = ptrtoint ptr %i.mb to i64
  store i64 %i.mc, ptr %i.s, align 8
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.loopexit.i5, %bb.bd
  %i.md = phi i32 [ %.pr.i, %.loopexit.i5 ], [ 1, %bb.bd ] ; 2 uses
  %i.me = load ptr, ptr %4, align 8, !tbaa !112
  %i.mf = zext i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mf
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !128 ; 6 uses
  %i.mj = add i32 %i.md, -1
  store i32 %i.mj, ptr %i.t, align 8, !tbaa !113
  %i.mk = load ptr, ptr %i.o, align 8, !tbaa !123, !noalias !129
  %i.ml = load ptr, ptr %3, align 8, !tbaa !124, !noalias !129 ; 3 uses
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %bb.be, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.be:                                            ; preds = %.lr.ph55.i
  %i.mn = load i32, ptr %i.q, align 4, !tbaa !120, !noalias !129 ; 4 uses
  %i.mo = zext i32 %i.mn to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.mo, 3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx.i.i.i ; 2 uses
  %.not63.i.i.i = icmp eq i32 %i.mn, 0
  br i1 %.not63.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.be, %bb.bf
  %.065.i.i.i = phi ptr [ %spec.select.i.i.i18, %bb.bf ], [ null, %bb.be ]
  %.04964.i.i.i = phi ptr [ %i.ms, %bb.bf ], [ %i.ml, %bb.be ] ; 3 uses
  %i.mq = load ptr, ptr %.04964.i.i.i, align 8, !tbaa !125, !noalias !129 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.mq, %i.mi
  br i1 %.not27.i.i.i, label %.loopexitthread-pre-split.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i17
  %i.mr = icmp eq ptr %i.mq, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i18 = select i1 %i.mr, ptr %.04964.i.i.i, ptr %.065.i.i.i ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.04964.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ms, %i.mp
  br i1 %.not.i.i.i19, label %.critedge.i.i.i, label %.lr.ph.i.i.i17, !llvm.loop !88

.critedge.i.i.i:                                  ; preds = %bb.bf
  %.not28.i.i.i = icmp eq ptr %spec.select.i.i.i18, null
  br i1 %.not28.i.i.i, label %.critedge.thread.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.critedge.i.i.i
  store ptr %i.mi, ptr %spec.select.i.i.i18, align 8, !tbaa !125, !noalias !129
  %i.mt = load i32, ptr %i.r, align 8, !tbaa !121, !noalias !129
  %i.mu = add i32 %i.mt, -1
  store i32 %i.mu, ptr %i.r, align 8, !tbaa !121, !noalias !129
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.be
  %i.mv = load i32, ptr %i.p, align 8, !tbaa !119, !noalias !129
  %i.mw = icmp ult i32 %i.mn, %i.mv
  br i1 %i.mw, label %bb.bh, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i

bb.bh:                                            ; preds = %.critedge.thread.i.i.i
  %i.mx = add nuw i32 %i.mn, 1
  store i32 %i.mx, ptr %i.q, align 4, !tbaa !120, !noalias !129
  store ptr %i.mi, ptr %i.mp, align 8, !tbaa !125, !noalias !129
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i: ; preds = %.lr.ph55.i, %.critedge.thread.i.i.i
  %i.my = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.mi) #8, !noalias !129
  %i.mz = extractvalue { ptr, i8 } %i.my, 1
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread, label %.loopexitthread-pre-split.i, !llvm.loop !99

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread: ; preds = %bb.bg, %bb.bh, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i
  %i.nb = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mi) #8, !noalias !130
  %i.nc = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mi) #8, !noalias !130 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i15, label %.loopexitthread-pre-split.i, label %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i

_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i:  ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread
  %i.nd = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.nc) #8, !noalias !130 ; 2 uses
  %.not4652.i = icmp eq i32 %i.nd, 0
  br i1 %.not4652.i, label %.loopexitthread-pre-split.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i
  %.sroa.4.053.i = phi i32 [ %i.no, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i ], [ 0, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i ] ; 2 uses
  %i.ne = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %i.nb, i32 noundef %.sroa.4.053.i) #8
  %i.nf = load i32, ptr %i.t, align 8, !tbaa !113 ; 2 uses
  %i.ng = load i32, ptr %i.u, align 4, !tbaa !122
  %.not.i19.i = icmp ult i32 %i.nf, %i.ng
  br i1 %.not.i19.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i, label %bb.bi, !prof !126

bb.bi:                                            ; preds = %.lr.ph.i16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.s, i64 noundef 0, i64 noundef 8) #8
  %.pre.i20.i = load i32, ptr %i.t, align 8, !tbaa !113
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i: ; preds = %bb.bi, %.lr.ph.i16
  %i.nh = phi i32 [ %.pre.i20.i, %bb.bi ], [ %i.nf, %.lr.ph.i16 ]
  %i.ni = load ptr, ptr %4, align 8, !tbaa !112
  %i.nj = zext i32 %i.nh to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nj
  %i.nl = ptrtoint ptr %i.ne to i64
  store i64 %i.nl, ptr %i.nk, align 1
  %i.nm = load i32, ptr %i.t, align 8, !tbaa !113
  %i.nn = add i32 %i.nm, 1                        ; 2 uses
  store i32 %i.nn, ptr %i.t, align 8, !tbaa !113
  %i.no = add nuw nsw i32 %.sroa.4.053.i, 1       ; 2 uses
  %.not46.i = icmp eq i32 %i.no, %i.nd
  br i1 %.not46.i, label %.loopexit.i5, label %.lr.ph.i16

.loopexitthread-pre-split.i:                      ; preds = %.lr.ph.i.i.i17, %_ZN6hermes10successorsEPNS_10BasicBlockE.exit.i, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i.thread, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit.i
  %.pr.pr.i = load i32, ptr %i.t, align 8, !tbaa !113
  br label %.loopexit.i5

.loopexit.i5:                                     ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i, %.loopexitthread-pre-split.i
  %.pr.i = phi i32 [ %.pr.pr.i, %.loopexitthread-pre-split.i ], [ %i.nn, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21.i ] ; 2 uses
  %.not.i13.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i13.i, label %._crit_edge.i6, label %.lr.ph55.i

._crit_edge.i6:                                   ; preds = %.loopexit.i5
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !60 ; 2 uses
  %.not4756.i = icmp eq ptr %.pre.i, %i.d
  br i1 %.not4756.i, label %._crit_edge62.i, label %.lr.ph61.i

._crit_edge62.i:                                  ; preds = %bb.bv, %._crit_edge.i6
  %.0.lcssa.i = phi i1 [ false, %._crit_edge.i6 ], [ %.1.i, %bb.bv ]
  %i.np = load ptr, ptr %4, align 8, !tbaa !112   ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.s
  br i1 %i.nq, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge62.i
  call void @free(ptr noundef %i.np) #8
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i: ; preds = %bb.bj, %._crit_edge62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.nr = load ptr, ptr %i.o, align 8, !tbaa !123 ; 2 uses
  %i.ns = load ptr, ptr %3, align 8, !tbaa !124
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.nr) #8
  br label %_ZL26removeUnreachedBasicBlocksPN6hermes8FunctionE.exit

.lr.ph61.i:                                       ; preds = %._crit_edge.i6, %bb.bv
  %.059.i = phi i1 [ %.1.i, %bb.bv ], [ false, %._crit_edge.i6 ]
  %.sroa.027.057.i = phi ptr [ %i.nv, %bb.bv ], [ %.pre.i, %._crit_edge.i6 ] ; 7 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.027.057.i, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !60 ; 2 uses
  %i.nw = load ptr, ptr %i.o, align 8, !tbaa !123 ; 6 uses
  %i.nx = load ptr, ptr %3, align 8, !tbaa !124   ; 3 uses
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.lr.ph61.i
  %i.nz = load i32, ptr %i.q, align 4, !tbaa !120 ; 4 uses
  %i.oa = zext i32 %i.nz to i64                   ; 2 uses
  %.idx.i.i.i.i13 = shl nuw nsw i64 %i.oa, 3
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.idx.i.i.i.i13
  %.not18.i.i.i.i = icmp eq i32 %i.nz, 0
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.bl, %bb.bm
  %.01219.i.i.i.i = phi ptr [ %i.oe, %bb.bm ], [ %i.nx, %bb.bl ] ; 3 uses
  %i.oc = load ptr, ptr %.01219.i.i.i.i, align 8, !tbaa !125
  %i.od = icmp eq ptr %i.oc, %.sroa.027.057.i
  br i1 %i.od, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i14
  %i.oe = getelementptr inbounds nuw i8, ptr %.01219.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i23.i = icmp eq ptr %i.oe, %i.ob
  br i1 %.not.i.i.i23.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i14, !llvm.loop !84

._crit_edge.i.i.i.i:                              ; preds = %bb.bm, %bb.bl
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.oa
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i

bb.bn:                                            ; preds = %.lr.ph61.i
  %i.og = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull %.sroa.027.057.i) #8 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !125
  %i.oi = icmp eq ptr %i.oh, %.sroa.027.057.i
  %.pre.i.i.i7 = load ptr, ptr %i.o, align 8, !tbaa !123 ; 4 uses
  %.pre4.i.i.i = load ptr, ptr %3, align 8, !tbaa !124 ; 3 uses
  br i1 %i.oi, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i, label %bb.bo

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i.i: ; preds = %bb.bn
  %.pre5.i.i.i = load i32, ptr %i.q, align 4
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.i
end_hunk_1
