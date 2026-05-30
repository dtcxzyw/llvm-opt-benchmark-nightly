inline.NumInlined: 209
inline.NumDeleted: 154
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.hermes::IRBuilder::InstructionDestroyer" = type { %"class.llvh::SmallVector.80" }
%"class.llvh::SmallVector.80" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage.81" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.81" = type { [8 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.hermes::IRBuilder" = type { ptr, %"class.llvh::ilist_iterator.103", ptr, %"class.llvh::SMLoc", ptr }
%"class.llvh::ilist_iterator.103" = type { ptr }
%"class.llvh::SMLoc" = type { ptr }

$_ZN6hermes4PassD2Ev = comdat any

@.str = private unnamed_addr constant [21 x i8] c"SimpleStackPromotion\00", align 1
@_ZTVZN6hermes26createSimpleStackPromotionEvE8ThisPass = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPassD0Ev, ptr @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes26createSimpleStackPromotionEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIZN6hermes26createSimpleStackPromotionEvE8ThisPassSt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #7, !noalias !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !10, !noalias !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !17, !noalias !7
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 20, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !noalias !7
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN6hermes26createSimpleStackPromotionEvE8ThisPass, i64 16), ptr %i.a, align 8, !tbaa !19, !noalias !7
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPassD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %3 = alloca %"class.hermes::IRBuilder", align 8 ; 10 uses
  %4 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %5 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.05.017.i = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.05.017.i, %i.b
  br i1 %.not18.i, label %_ZN6hermes12_GLOBAL__N_123runSimpleStackPromotionEPNS_6ModuleE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, %.lr.ph.i
  %.sroa.05.020.i = phi ptr [ %.sroa.05.017.i, %.lr.ph.i ], [ %.sroa.05.0.i, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ] ; 2 uses
  %.019.i = phi i1 [ false, %.lr.ph.i ], [ %i.ga, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ]
  %i.m = getelementptr i8, ptr %.sroa.05.020.i, i64 72
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !27 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 152 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 160 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %.not3.i.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !71 ; 4 uses
  %.pre27.i.i = load i32, ptr %i.p, align 8, !tbaa !72 ; 2 uses
  %i.t = zext i32 %.pre27.i.i to i64
  %.idx21.i.i = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.idx21.i.i
  %.not266.i.i = icmp eq i32 %.pre27.i.i, 0
  br i1 %.not266.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph10.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a
  %.05.i.i = phi i8 [ %.1.i.i, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a ], [ 0, %bb.b ]
  %.0244.i.i = phi ptr [ %i.ey, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.0244.i.i, align 8, !tbaa !73 ; 9 uses
  %i.w = call noundef ptr @_ZN6hermes19isStoreOnceVariableEPNS_8VariableE(ptr noundef %i.v) #9 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = load i8, ptr %i.w, align 8, !tbaa !74
  %i.y = add i8 %i.x, -109
  %i.z = icmp ult i8 %i.y, 11
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %i.c, ptr %5, align 8, !tbaa !71
  store i32 0, ptr %i.d, align 8, !tbaa !72
  store i32 8, ptr %i.e, align 4, !tbaa !75
  %i.aa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i
  %.not1015.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not1015.i.i.i, label %.._crit_edge_crit_edge.i.i.i, label %.lr.ph.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.d
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !72
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.ag = phi i32 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.ba, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !71    ; 3 uses
  %i.ai = zext i32 %i.ag to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not8.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !71
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %._crit_edge.i.i.i
  %i.ak = phi ptr [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ] ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @free(ptr noundef %i.ak) #9
  br label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.am) #9
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i
  %.0916.i.i.i = phi ptr [ %i.bb, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ao = load ptr, ptr %.0916.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !74
  %i.ar = icmp eq i8 %i.aq, 49
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %i.w) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.as = load i32, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %i.at = load i32, ptr %i.e, align 4, !tbaa !75
  %.not.i.i.i.i.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #9
  %.pre.i.i.i.i.i = load i32, ptr %i.d, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.au = phi i32 [ %.pre.i.i.i.i.i, %bb.h ], [ %i.as, %bb.g ]
  %i.av = load ptr, ptr %5, align 8, !tbaa !71
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = ptrtoint ptr %i.ao to i64
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = load i32, ptr %i.d, align 8, !tbaa !72
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %.0916.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bb, %i.af
  br i1 %.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

bb.i:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !82 ; 4 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %6 = zext i32 %i.bj to i64
  %.idx.i27.i.i = shl nuw nsw i64 %6, 3
  %7 = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i27.i.i
  %.not3746.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not3746.i.i.i, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i, label %.lr.ph.i28.i.i.epil.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %.lr.ph.i28.i.i
  %8 = trunc nuw i8 %.134.i.i.i to i1
  %9 = xor i1 %8, true
  %10 = trunc nuw i8 %.1.i.i.i to i1
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %bb.j, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph.i28.i.i.epil.preheader:                    ; preds = %bb.i, %.lr.ph.i28.i.i
  %.03249.i.i.i = phi i8 [ %.1.i.i.i, %.lr.ph.i28.i.i ], [ 0, %bb.i ] ; 2 uses
  %.03348.i.i.i = phi i8 [ %.134.i.i.i, %.lr.ph.i28.i.i ], [ 0, %bb.i ] ; 2 uses
  %.03647.i.i.i.epil.init = phi ptr [ %i.bs, %.lr.ph.i28.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bk = load ptr, ptr %.03647.i.i.i.epil.init, align 8, !tbaa !76 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !95
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !106
  %i.bp = icmp eq ptr %i.bo, %i.bf                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !74
  %12 = icmp eq i8 %i.br, 49
  br i1 %12, label %13, label %._crit_edge.i29.i.i

13:                                               ; preds = %.lr.ph.i28.i.i.epil.preheader
  %14 = trunc nuw i8 %.03249.i.i.i to i1
  %15 = or i1 %i.bp, %14
  %16 = zext i1 %15 to i8
  br label %.lr.ph.i28.i.i

._crit_edge.i29.i.i:                              ; preds = %.lr.ph.i28.i.i.epil.preheader
  %17 = xor i1 %i.bp, true
  %18 = trunc nuw i8 %.03348.i.i.i to i1
  %19 = or i1 %18, %17
  %20 = zext i1 %19 to i8
  br label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %._crit_edge.i29.i.i, %13
  %.134.i.i.i = phi i8 [ %.03348.i.i.i, %13 ], [ %20, %._crit_edge.i29.i.i ] ; 2 uses
  %.1.i.i.i = phi i8 [ %16, %13 ], [ %.03249.i.i.i, %._crit_edge.i29.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.03647.i.i.i.epil.init, i64 8 ; 2 uses
  %niter.ncmp.1 = icmp eq ptr %i.bs, %7
  br i1 %niter.ncmp.1, label %.lr.ph.i28.i.i.preheader, label %.lr.ph.i28.i.i.epil.preheader

bb.j:                                             ; preds = %.lr.ph.i28.i.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !114
  store ptr %i.bu, ptr %3, align 8, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.by) #9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !119
  %i.ca = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr %.sroa.0.0.copyload.i.i.i.i) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.g, ptr %4, align 8, !tbaa !71
  store i32 0, ptr %i.h, align 8, !tbaa !72
  store i32 8, ptr %i.i, align 4, !tbaa !75
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !72 ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %.idx56.i.i.i = shl nuw nsw i64 %i.cf, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx56.i.i.i
  %.not3851.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not3851.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

._crit_edge55.i.i.i:                              ; preds = %bb.p, %bb.j
  %i.ch = load ptr, ptr %4, align 8, !tbaa !71    ; 3 uses
  %i.ci = load i32, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %.idx.i.i30.i.i = shl nuw nsw i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i30.i.i
  %.not8.i.i31.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not8.i.i31.i.i, label %._crit_edge.i.i37.i.i, label %.lr.ph.i.i32.i.i

._crit_edge.loopexit.i.i35.i.i:                   ; preds = %.lr.ph.i.i32.i.i
  %.pre.i.i36.i.i = load ptr, ptr %4, align 8, !tbaa !71
  br label %._crit_edge.i.i37.i.i

._crit_edge.i.i37.i.i:                            ; preds = %._crit_edge.loopexit.i.i35.i.i, %._crit_edge55.i.i.i
  %i.cl = phi ptr [ %.pre.i.i36.i.i, %._crit_edge.loopexit.i.i35.i.i ], [ %i.ch, %._crit_edge55.i.i.i ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.g
  br i1 %i.cm, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i37.i.i
  call void @free(ptr noundef %i.cl) #9
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i

.lr.ph.i.i32.i.i:                                 ; preds = %._crit_edge55.i.i.i, %.lr.ph.i.i32.i.i
  %.09.i.i33.i.i = phi ptr [ %i.co, %.lr.ph.i.i32.i.i ], [ %i.ch, %._crit_edge55.i.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.09.i.i33.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cn) #9
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i33.i.i, i64 8 ; 2 uses
  %.not.i.i34.i.i = icmp eq ptr %i.co, %i.ck
  br i1 %.not.i.i34.i.i, label %._crit_edge.loopexit.i.i35.i.i, label %.lr.ph.i.i32.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i: ; preds = %bb.k, %._crit_edge.i.i37.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.j, %bb.p
  %.03552.i.i.i = phi ptr [ %i.dm, %bb.p ], [ %i.cc, %bb.j ] ; 2 uses
  %i.cp = load ptr, ptr %.03552.i.i.i, align 8, !tbaa !76 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !74
  %i.cs = icmp eq i8 %i.cr, 49
  br i1 %i.cs, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph54.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !95
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !106
  %i.cx = icmp eq ptr %i.cw, %i.bf
  br i1 %i.cx, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.cp) #9
  %i.cy = call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.ca) #9 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %spec.select.i.i.i = select i1 %i.cz, ptr null, ptr %i.da
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef %spec.select.i.i.i) #9
  %i.db = load i32, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.dc = load i32, ptr %i.i, align 4, !tbaa !75
  %.not.i.i.i39.i.i = icmp ult i32 %i.db, %i.dc
  br i1 %.not.i.i.i39.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, label %bb.n, !prof !78

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.g, i64 noundef 0, i64 noundef 8) #9
  %.pre.i.i.i40.i.i = load i32, ptr %i.h, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i: ; preds = %bb.n, %bb.m
  %i.dd = phi i32 [ %.pre.i.i.i40.i.i, %bb.n ], [ %i.db, %bb.m ]
  %i.de = load ptr, ptr %4, align 8, !tbaa !71
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  %i.dh = ptrtoint ptr %i.cp to i64
  store i64 %i.dh, ptr %i.dg, align 1
  %i.di = load i32, ptr %i.h, align 8, !tbaa !72
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.h, align 8, !tbaa !72
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph54.i.i.i
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.cp) #9
  %i.dk = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.cp, i32 noundef 0) #9
  %i.dl = call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.dk, ptr noundef %i.ca) #9 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %.03552.i.i.i, i64 8 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.dm, %i.cg
  br i1 %.not38.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i: ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, %.lr.ph.i28.i.i.preheader, %bb.i
  %.033.lcssa60.i.i.i = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i ], [ false, %.lr.ph.i28.i.i.preheader ], [ false, %bb.i ]
  %21 = trunc nuw i8 %.05.i.i to i1
  %22 = or i1 %.033.lcssa60.i.i.i, %21            ; 2 uses
  %i.dn = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9
  br i1 %i.dn, label %bb.q, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

bb.q:                                             ; preds = %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i
  %i.do = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !71 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !72 ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %.idx.i42.i.i = shl nuw nsw i64 %i.ds, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx.i42.i.i
  %.not24.i.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not24.i.i.i, label %._crit_edge.i45.i.i, label %.lr.ph.i43.i.i

bb.r:                                             ; preds = %.lr.ph.i43.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.01825.i.i.i, i64 8 ; 2 uses
  %.not.i44.i.i = icmp eq ptr %i.du, %i.dt
  br i1 %.not.i44.i.i, label %._crit_edge.i45.i.i, label %.lr.ph.i43.i.i

.lr.ph.i43.i.i:                                   ; preds = %bb.q, %bb.r
  %.01825.i.i.i = phi ptr [ %i.du, %bb.r ], [ %i.dp, %bb.q ] ; 2 uses
  %i.dv = load ptr, ptr %.01825.i.i.i, align 8, !tbaa !76
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !74
  %i.dy = icmp eq i8 %i.dx, 51
  br i1 %i.dy, label %bb.r, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

._crit_edge.i45.i.i:                              ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %i.j, ptr %2, align 8, !tbaa !71
  store i32 0, ptr %i.k, align 8, !tbaa !72
  store i32 8, ptr %i.l, align 4, !tbaa !75
  %i.dz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !71 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !72 ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %.idx31.i.i.i = shl nuw nsw i64 %i.ed, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx31.i.i.i
  %.not2226.i.i.i = icmp eq i32 %i.ec, 0
  %.pre32.i.i.i = load i32, ptr %i.k, align 8, !tbaa !72 ; 2 uses
  br i1 %.not2226.i.i.i, label %._crit_edge30.i.i.i, label %.lr.ph29.i.i.i

._crit_edge30.i.i.i:                              ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i, %._crit_edge.i45.i.i
  %i.ef = phi i32 [ %.pre32.i.i.i, %._crit_edge.i45.i.i ], [ %i.ew, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ] ; 2 uses
  %i.eg = load ptr, ptr %2, align 8, !tbaa !71    ; 3 uses
  %i.eh = zext i32 %i.ef to i64
  %.idx.i.i49.i.i = shl nuw nsw i64 %i.eh, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i.i49.i.i
  %.not8.i.i50.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not8.i.i50.i.i, label %._crit_edge.i.i56.i.i, label %.lr.ph.i.i51.i.i

._crit_edge.loopexit.i.i54.i.i:                   ; preds = %.lr.ph.i.i51.i.i
  %.pre.i.i55.i.i = load ptr, ptr %2, align 8, !tbaa !71
  br label %._crit_edge.i.i56.i.i

._crit_edge.i.i56.i.i:                            ; preds = %._crit_edge.loopexit.i.i54.i.i, %._crit_edge30.i.i.i
  %i.ej = phi ptr [ %.pre.i.i55.i.i, %._crit_edge.loopexit.i.i54.i.i ], [ %i.eg, %._crit_edge30.i.i.i ] ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.j
  br i1 %i.ek, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i56.i.i
  call void @free(ptr noundef %i.ej) #9
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i

.lr.ph.i.i51.i.i:                                 ; preds = %._crit_edge30.i.i.i, %.lr.ph.i.i51.i.i
  %.09.i.i52.i.i = phi ptr [ %i.em, %.lr.ph.i.i51.i.i ], [ %i.eg, %._crit_edge30.i.i.i ] ; 2 uses
  %i.el = load ptr, ptr %.09.i.i52.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.el) #9
  %i.em = getelementptr inbounds nuw i8, ptr %.09.i.i52.i.i, i64 8 ; 2 uses
  %.not.i.i53.i.i = icmp eq ptr %i.em, %i.ei
  br i1 %.not.i.i53.i.i, label %._crit_edge.loopexit.i.i54.i.i, label %.lr.ph.i.i51.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i: ; preds = %bb.s, %._crit_edge.i.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

.lr.ph29.i.i.i:                                   ; preds = %._crit_edge.i45.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i
  %i.en = phi i32 [ %i.ew, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ], [ %.pre32.i.i.i, %._crit_edge.i45.i.i ] ; 2 uses
  %.01927.i.i.i = phi ptr [ %i.ex, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ], [ %i.ea, %._crit_edge.i45.i.i ] ; 2 uses
  %i.eo = load ptr, ptr %.01927.i.i.i, align 8, !tbaa !76
  %i.ep = load i32, ptr %i.l, align 4, !tbaa !75
  %.not.i.i.i46.i.i = icmp ult i32 %i.en, %i.ep
  br i1 %.not.i.i.i46.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i, label %bb.t, !prof !78

bb.t:                                             ; preds = %.lr.ph29.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.j, i64 noundef 0, i64 noundef 8) #9
  %.pre.i.i.i47.i.i = load i32, ptr %i.k, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i: ; preds = %bb.t, %.lr.ph29.i.i.i
  %i.eq = phi i32 [ %.pre.i.i.i47.i.i, %bb.t ], [ %i.en, %.lr.ph29.i.i.i ]
  %i.er = load ptr, ptr %2, align 8, !tbaa !71
  %i.es = zext i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.es
  %i.eu = ptrtoint ptr %i.eo to i64
  store i64 %i.eu, ptr %i.et, align 1
  %i.ev = load i32, ptr %i.k, align 8, !tbaa !72
  %i.ew = add i32 %i.ev, 1                        ; 3 uses
  store i32 %i.ew, ptr %i.k, align 8, !tbaa !72
  %i.ex = getelementptr inbounds nuw i8, ptr %.01927.i.i.i, i64 8 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.ex, %i.ee
  br i1 %.not22.i.i.i, label %._crit_edge30.i.i.i, label %.lr.ph29.i.i.i

_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i: ; preds = %.lr.ph.i43.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i
  %.3.i.i.i = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i ], [ %22, %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i ], [ %22, %.lr.ph.i43.i.i ]
  %23 = zext i1 %.3.i.i.i to i8
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a: ; preds = %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i, %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i
  %.1.i.i = phi i8 [ %23, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i ], [ 1, %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0244.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ey, %i.s
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge11.i.i:                                ; preds = %bb.ag
  %.val.i.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !71 ; 8 uses
  %.val3.i.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !72 ; 3 uses
  %i.ez = zext i32 %.val3.i.pre.i.i to i64        ; 2 uses
  %.idx1.i.i.i.i = shl nuw nsw i64 %i.ez, 3       ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i.pre.i.i, i64 %.idx1.i.i.i.i ; 5 uses
  %i.fb = lshr i64 %i.ez, 2                       ; 2 uses
  %.not.i.i58.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i58.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge11.i.i
  %i.fc = and i64 %.idx1.i.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.pre.i.i, i64 %i.fc
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.x, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.050.i.i.i.i.i.i.i.i = phi i64 [ %i.fh, %bb.x ], [ %i.fb, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %bb.x ], [ %.val.i.pre.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i = load ptr, ptr %.02949.i.i.i.i.i.i.i.i, align 8, !tbaa !73
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.029.val32.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i.i.i = load ptr, ptr %i.fd, align 8, !tbaa !73
  %.not.i.i33.i.i.i.i.i.i.i.i = icmp eq ptr %.val31.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i33.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i.i.i = load ptr, ptr %i.fe, align 8, !tbaa !73
  %.not.i.i34.i.i.i.i.i.i.i.i = icmp eq ptr %.val30.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i34.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit34", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ff = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ff, align 8, !tbaa !73
  %.not.i.i35.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i35.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit36", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 32
  %i.fh = add nsw i64 %.050.i.i.i.i.i.i.i.i, -1
  %i.fi = icmp sgt i64 %.050.i.i.i.i.i.i.i.i, 1
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !120

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.x
  %i.fj = and i32 %.val3.i.pre.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %._crit_edge11.i.i
  %.pre-phi56.i.i.i.i.i.i.i.i = phi i32 [ %i.fj, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.val3.i.pre.i.i, %._crit_edge11.i.i ]
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.val.i.pre.i.i, %._crit_edge11.i.i ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i [
    i32 3, label %bb.y
    i32 2, label %bb.aa
    i32 1, label %bb.ac
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 8, !tbaa !73
  %.not.i.i36.i.i.i.i.i.i.i.i = icmp eq ptr %.029.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i36.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi ptr [ %i.fk, %bb.z ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i.i.i, align 8, !tbaa !73
  %.not.i.i37.i.i.i.i.i.i.i.i = icmp eq ptr %.1.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i37.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i = phi ptr [ %i.fl, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i.i.i, align 8, !tbaa !73
  %.not.i.i38.i.i.i.i.i.i.i.i = icmp eq ptr %.2.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i38.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i

"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 8
  br label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i"

"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit34": ; preds = %bb.v
  %i.fn = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 16
  br label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i"

"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit36": ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 24
  br label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i"

"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit34", %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit36", %bb.ac, %bb.aa, %bb.y
  %.028.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %bb.aa ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %bb.y ], [ %.2.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.fo, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit36" ], [ %i.fn, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit34" ], [ %i.fm, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %.02949.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.fp = icmp eq ptr %.028.i.i.i.i.i.i.i.i, %i.fa
  %.01730.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not31.i.i.i.i.i.i = icmp eq ptr %.01730.i.i.i.i.i.i, %i.fa
  %or.cond.i.i.i.i.i.i = select i1 %i.fp, i1 true, i1 %.not31.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", %bb.ae
  %.01733.i.i.i.i.i.i = phi ptr [ %.017.i.i.i.i.i.i, %bb.ae ], [ %.01730.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ] ; 2 uses
  %.032.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.ae ], [ %.028.i.i.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ] ; 3 uses
  %.017.val.i.i.i.i.i.i = load ptr, ptr %.01733.i.i.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.017.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %.017.val.i.i.i.i.i.i, ptr %.032.i.i.i.i.i.i, align 8, !tbaa !73
  %i.fq = getelementptr inbounds nuw i8, ptr %.032.i.i.i.i.i.i, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %.032.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.fq, %bb.ad ] ; 2 uses
  %.017.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.017.i.i.i.i.i.i, %i.fa
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

.lr.ph10.i.i:                                     ; preds = %._crit_edge.i.i, %bb.ag
  %.28.i.i = phi i8 [ %.3.i.i, %bb.ag ], [ %.1.i.i, %._crit_edge.i.i ]
  %.0257.i.i = phi ptr [ %i.fu, %bb.ag ], [ %.pre.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.fr = load ptr, ptr %.0257.i.i, align 8, !tbaa !73
  %i.fs = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fr) #9
  br i1 %i.fs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph10.i.i
  %i.ft = load ptr, ptr %.0257.i.i, align 8, !tbaa !73
  call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef %i.ft) #9
  store ptr null, ptr %.0257.i.i, align 8, !tbaa !73
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph10.i.i
  %.3.i.i = phi i8 [ %.28.i.i, %.lr.ph10.i.i ], [ 1, %bb.af ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0257.i.i, i64 8 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.fu, %i.u
  br i1 %.not26.i.i, label %._crit_edge11.i.i, label %.lr.ph10.i.i

_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i: ; preds = %bb.ae, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.i.i, %bb.b
  %.2.lcssa56.i.i = phi i8 [ %.3.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %.3.i.i, %bb.ac ], [ %.3.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %bb.b ], [ %.1.i.i, %._crit_edge.i.i ], [ %.3.i.i, %bb.ae ]
  %.val.i53.i.i = phi ptr [ %.val.i.pre.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %.val.i.pre.i.i, %bb.ac ], [ %.val.i.pre.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.val.i.pre.i.i, %bb.ae ]
  %.016.i.i.i.i.i.i = phi ptr [ %.028.i.i.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %i.fa, %bb.ac ], [ %i.fa, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.1.i.i.i.i.i.i, %bb.ae ]
  %i.fv = ptrtoint ptr %.016.i.i.i.i.i.i to i64
  %i.fw = ptrtoint ptr %.val.i53.i.i to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr exact i64 %i.fx, 3
  %i.fz = trunc i64 %i.fy to i32
  store i32 %i.fz, ptr %i.p, align 8, !tbaa !72
  %24 = trunc nuw i8 %.2.lcssa56.i.i to i1
  %i.ga = or i1 %.019.i, %24                      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.05.020.i, i64 8
  %.sroa.05.0.i = load ptr, ptr %i.gb, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, %i.b
  br i1 %.not.i, label %_ZN6hermes12_GLOBAL__N_123runSimpleStackPromotionEPNS_6ModuleE.exit, label %bb.b

_ZN6hermes12_GLOBAL__N_123runSimpleStackPromotionEPNS_6ModuleE.exit: ; preds = %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %i.ga, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN6hermes5Value7destroyEPS0_(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes19isStoreOnceVariableEPNS_8VariableE(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { builtin nounwind allocsize(0) }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind }

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
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZSt11make_uniqueIZN6hermes26createSimpleStackPromotionEvE8ThisPassJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!9 = distinct !{!9, !"_ZSt11make_uniqueIZN6hermes26createSimpleStackPromotionEvE8ThisPassJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSN6hermes4PassE", !12, i64 8, !13, i64 16}
!12 = !{!"_ZTSN6hermes4Pass8PassKindE", !5, i64 0}
!13 = !{!"_ZTSN4llvh9StringRefE", !14, i64 0, !16, i64 8}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!16, !16, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !6, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes4PassELb0EE", !23, i64 0}
!23 = !{!"p1 _ZTSN6hermes4PassE", !15, i64 0}
!24 = !{!25, !26, i64 8}
!25 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !26, i64 0, !26, i64 8}
!26 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !15, i64 0}
!27 = !{!28, !44, i64 72}
!28 = !{!"_ZTSN6hermes8FunctionE", !29, i64 0, !32, i64 16, !42, i64 56, !43, i64 64, !44, i64 72, !45, i64 80, !50, i64 96, !55, i64 176, !57, i64 184, !43, i64 188, !58, i64 192, !60, i64 208, !55, i64 216, !61, i64 224, !4, i64 232, !62, i64 236, !63, i64 248, !65, i64 280, !70, i64 296}
!29 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !30, i64 0}
!30 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !31, i64 0}
!31 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !25, i64 0}
!32 = !{!"_ZTSN6hermes5ValueE", !33, i64 0, !34, i64 2, !36, i64 8}
!33 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!34 = !{!"_ZTSN6hermes4TypeE", !35, i64 0, !35, i64 2}
!35 = !{!"short", !5, i64 0}
!36 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !37, i64 0, !41, i64 16}
!37 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !38, i64 0}
!38 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !39, i64 0}
!39 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !40, i64 0}
!40 = !{!"_ZTSN4llvh15SmallVectorBaseE", !15, i64 0, !4, i64 8, !4, i64 12}
!41 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!42 = !{!"p1 _ZTSN6hermes6ModuleE", !15, i64 0}
!43 = !{!"bool", !5, i64 0}
!44 = !{!"p1 _ZTSN6hermes9ScopeDescE", !15, i64 0}
!45 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !46, i64 0}
!46 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !47, i64 0}
!47 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !48, i64 0}
!48 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !49, i64 0}
!49 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !25, i64 0}
!50 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !51, i64 0, !54, i64 16}
!51 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !52, i64 0}
!52 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !53, i64 0}
!53 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !40, i64 0}
!54 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !5, i64 0}
!55 = !{!"_ZTSN6hermes10IdentifierE", !56, i64 0}
!56 = !{!"p1 _ZTSN6hermes12UniqueStringE", !15, i64 0}
!57 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !5, i64 0}
!58 = !{!"_ZTSN4llvh7SMRangeE", !59, i64 0, !59, i64 8}
!59 = !{!"_ZTSN4llvh5SMLocE", !14, i64 0}
!60 = !{!"_ZTSN6hermes16SourceVisibilityE", !5, i64 0}
!61 = !{!"p1 _ZTSN6hermes9ParameterE", !15, i64 0}
!62 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !43, i64 4}
!63 = !{!"_ZTSN6hermes10LazySourceE", !64, i64 0, !4, i64 4, !58, i64 8, !43, i64 24, !43, i64 25}
!64 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!65 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !66, i64 0}
!66 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0, !68, i64 8}
!67 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !15, i64 0}
!68 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0}
!69 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!70 = !{!"p1 _ZTSN6hermes8VariableE", !15, i64 0}
!71 = !{!40, !15, i64 0}
!72 = !{!40, !4, i64 8}
!73 = !{!70, !70, i64 0}
!74 = !{!32, !33, i64 0}
!75 = !{!40, !4, i64 12}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 _ZTSN6hermes11InstructionE", !15, i64 0}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = !{!80, !44, i64 56}
!80 = !{!"_ZTSN6hermes8VariableE", !32, i64 0, !81, i64 40, !55, i64 48, !44, i64 56, !43, i64 64}
!81 = !{!"_ZTSN6hermes18JavaScriptDeclKindE", !5, i64 0}
!82 = !{!83, !89, i64 144}
!83 = !{!"_ZTSN6hermes9ScopeDescE", !32, i64 0, !44, i64 40, !84, i64 48, !65, i64 128, !89, i64 144, !90, i64 152, !43, i64 232}
!84 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ScopeDescELj8EEE", !85, i64 0, !88, i64 16}
!85 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ScopeDescEEE", !86, i64 0}
!86 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EEE", !87, i64 0}
!87 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ScopeDescEvEE", !40, i64 0}
!88 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ScopeDescELj8EEE", !5, i64 0}
!89 = !{!"p1 _ZTSN6hermes8FunctionE", !15, i64 0}
!90 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes8VariableELj8EEE", !91, i64 0, !94, i64 16}
!91 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes8VariableEEE", !92, i64 0}
!92 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EEE", !93, i64 0}
!93 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes8VariableEvEE", !40, i64 0}
!94 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes8VariableELj8EEE", !5, i64 0}
!95 = !{!96, !100, i64 56}
!96 = !{!"_ZTSN6hermes11InstructionE", !97, i64 0, !32, i64 16, !100, i64 56, !101, i64 64, !44, i64 112, !59, i64 120, !4, i64 128}
!97 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !98, i64 0}
!98 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !99, i64 0}
!99 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !25, i64 0}
!100 = !{!"p1 _ZTSN6hermes10BasicBlockE", !15, i64 0}
!101 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !102, i64 0, !105, i64 16}
!102 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !103, i64 0}
!103 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !104, i64 0}
!104 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !40, i64 0}
!105 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !5, i64 0}
!106 = !{!107, !89, i64 72}
!107 = !{!"_ZTSN6hermes10BasicBlockE", !108, i64 0, !32, i64 16, !110, i64 56, !89, i64 72}
!108 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !109, i64 0}
!109 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !49, i64 0}
!110 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !111, i64 0}
!111 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !112, i64 0}
!112 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !113, i64 0}
!113 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !99, i64 0}
!114 = !{!28, !42, i64 56}
!115 = !{!116, !42, i64 0}
!116 = !{!"_ZTSN6hermes9IRBuilderE", !42, i64 0, !117, i64 8, !100, i64 16, !59, i64 24, !44, i64 32}
!117 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !118, i64 0}
!118 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !15, i64 0}
!119 = !{!56, !56, i64 0}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.mustprogress"}
!122 = distinct !{!122, !121}
end_hunk_0
