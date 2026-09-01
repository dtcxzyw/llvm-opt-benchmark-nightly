Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/CodeMotion?download=true
inline.NumInlined: 313
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::PostOrderAnalysis" = type { ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::BasicBlock *, std::allocator<hermes::BasicBlock *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.hermes::DominanceInfo" = type { %"class.llvh::DominatorTreeBase" }
%"class.llvh::DominatorTreeBase" = type { %"class.llvh::SmallVector.1", %"class.llvh::DenseMap", ptr, ptr, i8, i32 }
%"class.llvh::SmallVector.1" = type { %"class.llvh::SmallVectorImpl.2", %"struct.llvh::SmallVectorStorage.5" }
%"class.llvh::SmallVectorImpl.2" = type { %"class.llvh::SmallVectorTemplateBase.3" }
%"class.llvh::SmallVectorTemplateBase.3" = type { %"class.llvh::SmallVectorTemplateCommon.4" }
%"class.llvh::SmallVectorTemplateCommon.4" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.5" = type { [1 x %"struct.llvh::AlignedCharArrayUnion.6"] }
%"struct.llvh::AlignedCharArrayUnion.6" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.llvh::DenseMap" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.hermes::LoopAnalysis" = type { %"class.llvh::SmallDenseMap", %"class.llvh::SmallDenseMap" }
%"class.llvh::SmallDenseMap" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion.8" }
%"struct.llvh::AlignedCharArrayUnion.8" = type { %"struct.llvh::AlignedCharArray.9" }
%"struct.llvh::AlignedCharArray.9" = type { [256 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.11" }
%"struct.std::_Head_base.11" = type { ptr }

$_ZN6hermes10CodeMotionD0Ev = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes10CodeMotionE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes10CodeMotionD0Ev, ptr @_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE] }, align 8
@.str = private unnamed_addr constant [11 x i8] c"CodeMotion\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::PostOrderAnalysis", align 8 ; 6 uses
  %3 = alloca %"class.hermes::DominanceInfo", align 8 ; 9 uses
  %4 = alloca %"class.hermes::LoopAnalysis", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1) #6
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %.not4145 = icmp eq ptr %i.b, %i.d
  br i1 %.not4145, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_ZN6hermes13DominanceInfoC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @_ZN6hermes12LoopAnalysisC1EPNS_8FunctionERKNS_13DominanceInfoE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %3) #6
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %.not4248 = icmp eq ptr %i.e, %i.f
  br i1 %.not4248, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.u

.lr.ph:                                           ; preds = %bb.a, %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit
  %.047 = phi i1 [ %.1, %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit ], [ false, %bb.a ] ; 10 uses
  %.sroa.031.046 = phi ptr [ %i.cr, %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.031.046, align 8, !tbaa !11
  %i.j = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #6 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !13
  %i.m = icmp ne i8 %i.l, 81
  %.not43 = icmp eq ptr %i.j, null
  %.not = or i1 %.not43, %i.m
  br i1 %.not, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.j) #6
  %.not91.i = icmp eq i32 %i.n, 0
  br i1 %.not91.i, label %bb.c, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.j, i32 noundef 1) #6 ; 5 uses
  %5 = icmp eq ptr %i.o, null
  %i.p = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.j, i32 noundef 2) #6 ; 6 uses
  %6 = icmp eq ptr %i.p, null
  %i.q = icmp eq ptr %i.p, %i.o
  %not..i = icmp ne ptr %i.p, null
  %7 = and i1 %not..i, %i.q
  %8 = select i1 %5, i1 %6, i1 %7
  br i1 %8, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i ; 4 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 8, !tbaa !13
  %i.aa = add i8 %i.z, -90
  %i.ab = icmp ult i8 %i.aa, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.x, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.ab
  br i1 %.not1.i.i.i.i.i, label %bb.e, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !28

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.w, %bb.e ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.ad
  br i1 %.not4.i.i.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %.06.i.i.i = phi i32 [ %i.al, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ 0, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %.sroa.02.2.i.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i6.i.i = icmp eq ptr %i.ae, %i.w
  br i1 %.not3.i.i.i6.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.02.1.i.i.i = phi ptr [ %i.ak, %bb.f ], [ %i.ae, %.lr.ph.i.i.i ] ; 3 uses
  %i.af = load ptr, ptr %.sroa.02.1.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !13
  %i.ai = add i8 %i.ah, -90
  %i.aj = icmp ult i8 %i.ai, -15
  %.not12.i.i.i8.i.i = icmp eq ptr %i.af, null
  %.not1.i.i.i9.i.i = or i1 %.not12.i.i.i8.i.i, %i.aj
  br i1 %.not1.i.i.i9.i.i, label %bb.f, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i7.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i10.i.i = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i.i.i10.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i, !llvm.loop !28

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.ak, %bb.f ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i7.i.i ] ; 2 uses
  %i.al = add i32 %.06.i.i.i, 1
  %.not.i.i.i = icmp eq ptr %.sroa.02.2.i.i.i, %i.ad
  br i1 %.not.i.i.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !30

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %.not.i = icmp eq i32 %.06.i.i.i, 0
  br i1 %.not.i, label %bb.g, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit

bb.g:                                             ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.idx.i.i.i43.i = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr i8, ptr %i.an, i64 %.idx.i.i.i43.i ; 4 uses
  %.not3.i.i.i.i44.i = icmp eq i32 %i.ap, 0
  br i1 %.not3.i.i.i.i44.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i49.i, label %.lr.ph.i.i.i.i45.i

.lr.ph.i.i.i.i45.i:                               ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i46.i = phi ptr [ %i.ax, %bb.h ], [ %i.an, %bb.g ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.0.i.i46.i, align 8, !tbaa !26 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !13
  %i.av = add i8 %i.au, -90
  %i.aw = icmp ult i8 %i.av, -15
  %.not12.i.i.i.i47.i = icmp eq ptr %i.as, null
  %.not1.i.i.i.i48.i = or i1 %.not12.i.i.i.i47.i, %i.aw
  br i1 %.not1.i.i.i.i48.i, label %bb.h, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i49.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i45.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i46.i, i64 8 ; 2 uses
  %.not.i.i.i.i65.i = icmp eq ptr %i.ax, %i.ar
  br i1 %.not.i.i.i.i65.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i49.i, label %.lr.ph.i.i.i.i45.i, !llvm.loop !28

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i49.i: ; preds = %bb.h, %.lr.ph.i.i.i.i45.i, %bb.g
  %.sroa.0.1.i.i50.i = phi ptr [ %i.an, %bb.g ], [ %i.ar, %bb.h ], [ %.sroa.0.0.i.i46.i, %.lr.ph.i.i.i.i45.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %.not4.i.i51.i = icmp eq ptr %.sroa.0.1.i.i50.i, %i.ay
  br i1 %.not4.i.i51.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i49.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i60.i
  %.06.i.i53.i = phi i32 [ %i.bg, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i60.i ], [ 0, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i49.i ] ; 2 uses
  %.sroa.02.05.i.i54.i = phi ptr [ %.sroa.02.2.i.i61.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i60.i ], [ %.sroa.0.1.i.i50.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i49.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i54.i, i64 8 ; 3 uses
  %.not3.i.i.i6.i55.i = icmp eq ptr %i.az, %i.ar
  br i1 %.not3.i.i.i6.i55.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i60.i, label %.lr.ph.i.i.i7.i56.i

.lr.ph.i.i.i7.i56.i:                              ; preds = %.lr.ph.i.i52.i, %bb.i
  %.sroa.02.1.i.i57.i = phi ptr [ %i.bf, %bb.i ], [ %i.az, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ba = load ptr, ptr %.sroa.02.1.i.i57.i, align 8, !tbaa !26 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !13
  %i.bd = add i8 %i.bc, -90
  %i.be = icmp ult i8 %i.bd, -15
  %.not12.i.i.i8.i58.i = icmp eq ptr %i.ba, null
  %.not1.i.i.i9.i59.i = or i1 %.not12.i.i.i8.i58.i, %i.be
  br i1 %.not1.i.i.i9.i59.i, label %bb.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i60.i

bb.i:                                             ; preds = %.lr.ph.i.i.i7.i56.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i57.i, i64 8 ; 3 uses
  %.not.i.i.i10.i64.i = icmp eq ptr %i.bf, %i.ar
  br i1 %.not.i.i.i10.i64.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i60.i, label %.lr.ph.i.i.i7.i56.i, !llvm.loop !28

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i60.i: ; preds = %bb.i, %.lr.ph.i.i.i7.i56.i, %.lr.ph.i.i52.i
  %.sroa.02.2.i.i61.i = phi ptr [ %i.az, %.lr.ph.i.i52.i ], [ %i.bf, %bb.i ], [ %.sroa.02.1.i.i57.i, %.lr.ph.i.i.i7.i56.i ] ; 2 uses
  %i.bg = add i32 %.06.i.i53.i, 1
  %.not.i.i62.i = icmp eq ptr %.sroa.02.2.i.i61.i, %i.ay
  br i1 %.not.i.i62.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit66.i, label %.lr.ph.i.i52.i, !llvm.loop !30

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit66.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i60.i
  %.not40.i = icmp eq i32 %.06.i.i53.i, 0
  br i1 %.not40.i, label %.preheader.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit

.preheader.i:                                     ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit66.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !13
  %i.bm = add i8 %i.bl, -75
  %i.bn = icmp ult i8 %i.bm, 15
  br i1 %i.bn, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !13
  %i.br = add i8 %i.bq, -75
  %i.bs = icmp ult i8 %i.br, 15
  br i1 %i.bs, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.preheader.i
  %i.bt = call fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bo) ; 2 uses
  %.not41.peel.i = icmp eq ptr %i.bt, null
  br i1 %.not41.peel.i, label %bb.k, label %.thread.peel.i

bb.k:                                             ; preds = %bb.j
  %i.bu = call fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bj) ; 2 uses
  %.not42.not.not.peel.i = icmp eq ptr %i.bu, null
  br i1 %.not42.not.not.peel.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.thread.peel.i

.thread.peel.i:                                   ; preds = %bb.k, %bb.j
  %.286.peel.i = phi ptr [ %i.bu, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  %.22785.peel.i = phi ptr [ %i.bo, %bb.k ], [ %i.bj, %bb.j ] ; 2 uses
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %.22785.peel.i, ptr noundef nonnull %i.j) #6
  %i.bv = getelementptr inbounds nuw i8, ptr %.286.peel.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.22785.peel.i, i64 16
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull %i.bw) #6
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %.286.peel.i) #6
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !13
  %i.ca = add i8 %i.bz, -75
  %i.cb = icmp ult i8 %i.ca, 15
  br i1 %i.cb, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.peel.i, %.thread.i
  %i.cc = phi ptr [ %i.cm, %.thread.i ], [ %i.bx, %.thread.peel.i ] ; 3 uses
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !13
  %i.cg = add i8 %i.cf, -75
  %i.ch = icmp ult i8 %i.cg, 15
  br i1 %i.ch, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ci = call fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd) ; 2 uses
  %.not41.i = icmp eq ptr %i.ci, null
  br i1 %.not41.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.cj = call fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cc) ; 2 uses
  %.not42.not.not.i = icmp eq ptr %i.cj, null
  br i1 %.not42.not.not.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.l
  %.286.i = phi ptr [ %i.cj, %bb.m ], [ %i.ci, %bb.l ] ; 2 uses
  %.22785.i = phi ptr [ %i.cd, %bb.m ], [ %i.cc, %bb.l ] ; 2 uses
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %.22785.i, ptr noundef nonnull %i.j) #6
  %i.ck = getelementptr inbounds nuw i8, ptr %.286.i, i64 16
end_hunk_0
