Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SimpleStackPromotion?download=true
inline.NumInlined: 209
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
define hidden void @_ZN6hermes26createSimpleStackPromotionEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIZN6hermes26createSimpleStackPromotionEvE8ThisPassSt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8, !noalias !11 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !16, !noalias !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !17, !noalias !11
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 20, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !noalias !11
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN6hermes26createSimpleStackPromotionEvE8ThisPass, i64 16), ptr %i.a, align 8, !tbaa !20, !noalias !11
  store ptr %i.a, ptr %0, align 8, !tbaa !23
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
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %3 = alloca %"class.hermes::IRBuilder", align 8 ; 10 uses
  %4 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %5 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.05.017.i = load ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
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
  %.019.i = phi i1 [ false, %.lr.ph.i ], [ %i.hk, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ]
  %i.m = getelementptr i8, ptr %.sroa.05.020.i, i64 72
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 152 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 160 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !74   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %.not3.i.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !73 ; 4 uses
  %.pre27.i.i = load i32, ptr %i.p, align 8, !tbaa !74 ; 2 uses
  %i.t = zext i32 %.pre27.i.i to i64
  %.idx21.i.i = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.idx21.i.i
  %.not266.i.i = icmp eq i32 %.pre27.i.i, 0
  br i1 %.not266.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph10.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a
  %.0245.i.i = phi ptr [ %i.gi, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a ], [ %i.o, %bb.b ] ; 2 uses
  %.0254.i.i = phi i1 [ %.1.i.i, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a ], [ false, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.0245.i.i, align 8, !tbaa !75 ; 9 uses
  %i.w = call noundef ptr @_ZN6hermes19isStoreOnceVariableEPNS_8VariableE(ptr noundef %i.v) #10 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = load i8, ptr %i.w, align 8, !tbaa !76
  %i.y = add i8 %i.x, -109
  %i.z = icmp ult i8 %i.y, 11
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %i.c, ptr %5, align 8, !tbaa !73
  store i32 0, ptr %i.d, align 8, !tbaa !74
  store i32 8, ptr %i.e, align 4, !tbaa !77
  %i.aa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !74 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i
  %.not1015.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not1015.i.i.i, label %.._crit_edge_crit_edge.i.i.i, label %.lr.ph.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.d
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !74
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.ag = phi i32 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.ba, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !73    ; 3 uses
  %i.ai = zext i32 %i.ag to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not8.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !73
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %._crit_edge.i.i.i
  %i.ak = phi ptr [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ] ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @free(ptr noundef %i.ak) #10
  br label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !79
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.am) #10
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i
  %.016.i.i.i = phi ptr [ %i.bb, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ao = load ptr, ptr %.016.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !76
  %i.ar = icmp eq i8 %i.aq, 49
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %i.w) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.as = load i32, ptr %i.d, align 8, !tbaa !74  ; 2 uses
  %i.at = load i32, ptr %i.e, align 4, !tbaa !77
  %.not.i.i.i.i.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i, label %bb.h, !prof !80

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i.i.i = load i32, ptr %i.d, align 8, !tbaa !74
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.au = phi i32 [ %.pre.i.i.i.i.i, %bb.h ], [ %i.as, %bb.g ]
  %i.av = load ptr, ptr %5, align 8, !tbaa !73
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = ptrtoint ptr %i.ao to i64
  store i64 %i.ay, ptr %i.ax, align 1
  %i.az = load i32, ptr %i.d, align 8, !tbaa !74
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !74
  %i.bb = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bb, %i.af
  br i1 %.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

bb.i:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !96 ; 6 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !73 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !74 ; 2 uses
  %.not3746.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not3746.i.i.i, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i, label %.lr.ph.i28.i.i.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %bb.i
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 2305843009213693951 ; 2 uses
  %i.bm = and i64 %i.bl, 2305843009213693951      ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.lr.ph.i28.i.i.epil.preheader, label %.lr.ph.i28.i.i.preheader.new

.lr.ph.i28.i.i.preheader.new:                     ; preds = %.lr.ph.i28.i.i.preheader
  %unroll_iter = and i64 %i.bn, 4611686018427387902
  br label %.lr.ph.i28.i.i

._crit_edge.i29.i.i.unr-lcssa:                    ; preds = %.lr.ph.i28.i.i
  %6 = and i64 %i.bl, 1
  %lcmp.mod.not.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i28.i.i.epil.preheader, label %._crit_edge.i29.i.i

.lr.ph.i28.i.i.epil.preheader:                    ; preds = %._crit_edge.i29.i.i.unr-lcssa, %.lr.ph.i28.i.i.preheader
  %.03349.i.i.i.epil.init = phi i1 [ false, %.lr.ph.i28.i.i.preheader ], [ %.1.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ]
  %.03448.i.i.i.epil.init = phi ptr [ %i.bh, %.lr.ph.i28.i.i.preheader ], [ %i.dc, %._crit_edge.i29.i.i.unr-lcssa ]
  %.03547.i.i.i.epil.init = phi i1 [ false, %.lr.ph.i28.i.i.preheader ], [ %.136.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ]
  %lcmp.mod56 = trunc i64 %i.bn to i1
  call void @llvm.assume(i1 %lcmp.mod56)
  %i.bp = load ptr, ptr %.03448.i.i.i.epil.init, align 8, !tbaa !79 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !107
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !115
  %i.bu = icmp eq ptr %i.bt, %i.bf                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !76
  %i.bx = icmp ne i8 %i.bw, 49                    ; 2 uses
  %i.by = xor i1 %i.bu, true
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  %.136.i.i.i.epil = or i1 %.03547.i.i.i.epil.init, %i.bz
  %not..i.i.i.epil = xor i1 %i.bx, true
  %i.ca = select i1 %not..i.i.i.epil, i1 %i.bu, i1 false
  %.1.i.i.i.epil = or i1 %.03349.i.i.i.epil.init, %i.ca
  br label %._crit_edge.i29.i.i

._crit_edge.i29.i.i:                              ; preds = %._crit_edge.i29.i.i.unr-lcssa, %.lr.ph.i28.i.i.epil.preheader
  %.136.i.i.i.lcssa = phi i1 [ %.136.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ], [ %.136.i.i.i.epil, %.lr.ph.i28.i.i.epil.preheader ]
  %.1.i.i.i.lcssa = phi i1 [ %.1.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ], [ %.1.i.i.i.epil, %.lr.ph.i28.i.i.epil.preheader ]
  %i.cb = xor i1 %.136.i.i.i.lcssa, true
  %i.cc = select i1 %i.cb, i1 %.1.i.i.i.lcssa, i1 false
  br i1 %i.cc, label %bb.j, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph.i28.i.i:                                   ; preds = %.lr.ph.i28.i.i, %.lr.ph.i28.i.i.preheader.new
  %.03349.i.i.i = phi i1 [ false, %.lr.ph.i28.i.i.preheader.new ], [ %.1.i.i.i.1, %.lr.ph.i28.i.i ]
  %.03448.i.i.i = phi ptr [ %i.bh, %.lr.ph.i28.i.i.preheader.new ], [ %i.dc, %.lr.ph.i28.i.i ] ; 3 uses
  %.03547.i.i.i = phi i1 [ false, %.lr.ph.i28.i.i.preheader.new ], [ %.136.i.i.i.1, %.lr.ph.i28.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i28.i.i ]
  %i.cd = load ptr, ptr %.03448.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !107
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !115
  %i.ci = icmp eq ptr %i.ch, %i.bf                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !76
  %i.cl = icmp ne i8 %i.ck, 49                    ; 2 uses
  %i.cm = xor i1 %i.ci, true
  %i.cn = select i1 %i.cl, i1 %i.cm, i1 false
  %.136.i.i.i = or i1 %.03547.i.i.i, %i.cn
  %not..i.i.i = xor i1 %i.cl, true
  %i.co = select i1 %not..i.i.i, i1 %i.ci, i1 false
  %.1.i.i.i = or i1 %.03349.i.i.i, %i.co
  %i.cp = getelementptr inbounds nuw i8, ptr %.03448.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !79 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !107
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !115
  %i.cv = icmp eq ptr %i.cu, %i.bf                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !76
  %i.cy = icmp ne i8 %i.cx, 49                    ; 2 uses
  %i.cz = xor i1 %i.cv, true
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  %.136.i.i.i.1 = or i1 %.136.i.i.i, %i.da        ; 3 uses
  %not..i.i.i.1 = xor i1 %i.cy, true
  %i.db = select i1 %not..i.i.i.1, i1 %i.cv, i1 false
  %.1.i.i.i.1 = or i1 %.1.i.i.i, %i.db            ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.03448.i.i.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i29.i.i.unr-lcssa, label %.lr.ph.i28.i.i

bb.j:                                             ; preds = %._crit_edge.i29.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !116
  store ptr %i.de, ptr %3, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !28
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.di) #10
  %i.dj = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !121
  %i.dk = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr %.sroa.0.0.copyload.i.i.i.i) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr %i.g, ptr %4, align 8, !tbaa !73
  store i32 0, ptr %i.h, align 8, !tbaa !74
  store i32 8, ptr %i.i, align 4, !tbaa !77
  %i.dl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !73 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !74 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %.idx56.i.i.i = shl nuw nsw i64 %i.dp, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx56.i.i.i
  %.not3851.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not3851.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

._crit_edge55.i.i.i:                              ; preds = %bb.p, %bb.j
  %i.dr = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %i.ds = load i32, ptr %i.h, align 8, !tbaa !74  ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %.idx.i.i30.i.i = shl nuw nsw i64 %i.dt, 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i.i30.i.i
  %.not8.i.i31.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not8.i.i31.i.i, label %._crit_edge.i.i37.i.i, label %.lr.ph.i.i32.i.i

._crit_edge.loopexit.i.i35.i.i:                   ; preds = %.lr.ph.i.i32.i.i
  %.pre.i.i36.i.i = load ptr, ptr %4, align 8, !tbaa !73
  br label %._crit_edge.i.i37.i.i

._crit_edge.i.i37.i.i:                            ; preds = %._crit_edge.loopexit.i.i35.i.i, %._crit_edge55.i.i.i
  %i.dv = phi ptr [ %.pre.i.i36.i.i, %._crit_edge.loopexit.i.i35.i.i ], [ %i.dr, %._crit_edge55.i.i.i ] ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.g
  br i1 %i.dw, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i37.i.i
  call void @free(ptr noundef %i.dv) #10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i

.lr.ph.i.i32.i.i:                                 ; preds = %._crit_edge55.i.i.i, %.lr.ph.i.i32.i.i
  %.09.i.i33.i.i = phi ptr [ %i.dy, %.lr.ph.i.i32.i.i ], [ %i.dr, %._crit_edge55.i.i.i ] ; 2 uses
  %i.dx = load ptr, ptr %.09.i.i33.i.i, align 8, !tbaa !79
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.dx) #10
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i33.i.i, i64 8 ; 2 uses
  %.not.i.i34.i.i = icmp eq ptr %i.dy, %i.du
  br i1 %.not.i.i34.i.i, label %._crit_edge.loopexit.i.i35.i.i, label %.lr.ph.i.i32.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i: ; preds = %bb.k, %._crit_edge.i.i37.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.j, %bb.p
  %.03252.i.i.i = phi ptr [ %i.ew, %bb.p ], [ %i.dm, %bb.j ] ; 2 uses
  %i.dz = load ptr, ptr %.03252.i.i.i, align 8, !tbaa !79 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !76
  %i.ec = icmp eq i8 %i.eb, 49
  br i1 %i.ec, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph54.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !107
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !115
  %i.eh = icmp eq ptr %i.eg, %i.bf
  br i1 %i.eh, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.dz) #10
  %i.ei = call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.dk) #10 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %spec.select.i.i.i = select i1 %i.ej, ptr null, ptr %i.ek
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef %spec.select.i.i.i) #10
  %i.el = load i32, ptr %i.h, align 8, !tbaa !74  ; 2 uses
  %i.em = load i32, ptr %i.i, align 4, !tbaa !77
  %.not.i.i.i39.i.i = icmp ult i32 %i.el, %i.em
  br i1 %.not.i.i.i39.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, label %bb.n, !prof !80

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.g, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i40.i.i = load i32, ptr %i.h, align 8, !tbaa !74
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i: ; preds = %bb.n, %bb.m
  %i.en = phi i32 [ %.pre.i.i.i40.i.i, %bb.n ], [ %i.el, %bb.m ]
  %i.eo = load ptr, ptr %4, align 8, !tbaa !73
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = ptrtoint ptr %i.dz to i64
  store i64 %i.er, ptr %i.eq, align 1
  %i.es = load i32, ptr %i.h, align 8, !tbaa !74
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.h, align 8, !tbaa !74
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph54.i.i.i
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.dz) #10
  %i.eu = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.dz, i32 noundef 0) #10
  %i.ev = call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.eu, ptr noundef %i.dk) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %.03252.i.i.i, i64 8 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.ew, %i.dq
  br i1 %.not38.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i: ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, %._crit_edge.i29.i.i, %bb.i
  %.035.lcssa60.i.i.i = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i ], [ %.0254.i.i, %._crit_edge.i29.i.i ], [ %.0254.i.i, %bb.i ] ; 2 uses
  %i.ex = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10
  br i1 %i.ex, label %bb.q, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

bb.q:                                             ; preds = %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i
  %i.ey = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !73 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !74 ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %.idx.i42.i.i = shl nuw nsw i64 %i.fc, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx.i42.i.i
  %.not24.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not24.i.i.i, label %._crit_edge.i45.i.i, label %.lr.ph.i43.i.i

bb.r:                                             ; preds = %.lr.ph.i43.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.02125.i.i.i, i64 8 ; 2 uses
  %.not.i44.i.i = icmp eq ptr %i.fe, %i.fd
  br i1 %.not.i44.i.i, label %._crit_edge.i45.i.i, label %.lr.ph.i43.i.i

.lr.ph.i43.i.i:                                   ; preds = %bb.q, %bb.r
  %.02125.i.i.i = phi ptr [ %i.fe, %bb.r ], [ %i.ez, %bb.q ] ; 2 uses
  %i.ff = load ptr, ptr %.02125.i.i.i, align 8, !tbaa !79
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !76
  %i.fi = icmp eq i8 %i.fh, 51
  br i1 %i.fi, label %bb.r, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

._crit_edge.i45.i.i:                              ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.j, ptr %2, align 8, !tbaa !73
  store i32 0, ptr %i.k, align 8, !tbaa !74
  store i32 8, ptr %i.l, align 4, !tbaa !77
  %i.fj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !73 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !74 ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %.idx31.i.i.i = shl nuw nsw i64 %i.fn, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.idx31.i.i.i
  %.not2226.i.i.i = icmp eq i32 %i.fm, 0
  %.pre32.i.i.i = load i32, ptr %i.k, align 8, !tbaa !74 ; 2 uses
  br i1 %.not2226.i.i.i, label %._crit_edge30.i.i.i, label %.lr.ph29.i.i.i

._crit_edge30.i.i.i:                              ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i, %._crit_edge.i45.i.i
  %i.fp = phi i32 [ %.pre32.i.i.i, %._crit_edge.i45.i.i ], [ %i.gg, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ] ; 2 uses
  %i.fq = load ptr, ptr %2, align 8, !tbaa !73    ; 3 uses
  %i.fr = zext i32 %i.fp to i64
  %.idx.i.i49.i.i = shl nuw nsw i64 %i.fr, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx.i.i49.i.i
  %.not8.i.i50.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not8.i.i50.i.i, label %._crit_edge.i.i56.i.i, label %.lr.ph.i.i51.i.i

._crit_edge.loopexit.i.i54.i.i:                   ; preds = %.lr.ph.i.i51.i.i
  %.pre.i.i55.i.i = load ptr, ptr %2, align 8, !tbaa !73
  br label %._crit_edge.i.i56.i.i

._crit_edge.i.i56.i.i:                            ; preds = %._crit_edge.loopexit.i.i54.i.i, %._crit_edge30.i.i.i
  %i.ft = phi ptr [ %.pre.i.i55.i.i, %._crit_edge.loopexit.i.i54.i.i ], [ %i.fq, %._crit_edge30.i.i.i ] ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.j
  br i1 %i.fu, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i56.i.i
  call void @free(ptr noundef %i.ft) #10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i

.lr.ph.i.i51.i.i:                                 ; preds = %._crit_edge30.i.i.i, %.lr.ph.i.i51.i.i
  %.09.i.i52.i.i = phi ptr [ %i.fw, %.lr.ph.i.i51.i.i ], [ %i.fq, %._crit_edge30.i.i.i ] ; 2 uses
  %i.fv = load ptr, ptr %.09.i.i52.i.i, align 8, !tbaa !79
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.fv) #10
  %i.fw = getelementptr inbounds nuw i8, ptr %.09.i.i52.i.i, i64 8 ; 2 uses
  %.not.i.i53.i.i = icmp eq ptr %i.fw, %i.fs
  br i1 %.not.i.i53.i.i, label %._crit_edge.loopexit.i.i54.i.i, label %.lr.ph.i.i51.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i: ; preds = %bb.s, %._crit_edge.i.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

.lr.ph29.i.i.i:                                   ; preds = %._crit_edge.i45.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i
  %i.fx = phi i32 [ %i.gg, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ], [ %.pre32.i.i.i, %._crit_edge.i45.i.i ] ; 2 uses
  %.01827.i.i.i = phi ptr [ %i.gh, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ], [ %i.fk, %._crit_edge.i45.i.i ] ; 2 uses
  %i.fy = load ptr, ptr %.01827.i.i.i, align 8, !tbaa !79
  %i.fz = load i32, ptr %i.l, align 4, !tbaa !77
  %.not.i.i.i46.i.i = icmp ult i32 %i.fx, %i.fz
  br i1 %.not.i.i.i46.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i, label %bb.t, !prof !80

bb.t:                                             ; preds = %.lr.ph29.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.j, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i47.i.i = load i32, ptr %i.k, align 8, !tbaa !74
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i: ; preds = %bb.t, %.lr.ph29.i.i.i
  %i.ga = phi i32 [ %.pre.i.i.i47.i.i, %bb.t ], [ %i.fx, %.lr.ph29.i.i.i ]
  %i.gb = load ptr, ptr %2, align 8, !tbaa !73
  %i.gc = zext i32 %i.ga to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = ptrtoint ptr %i.fy to i64
  store i64 %i.ge, ptr %i.gd, align 1
  %i.gf = load i32, ptr %i.k, align 8, !tbaa !74
  %i.gg = add i32 %i.gf, 1                        ; 3 uses
  store i32 %i.gg, ptr %i.k, align 8, !tbaa !74
  %i.gh = getelementptr inbounds nuw i8, ptr %.01827.i.i.i, i64 8 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.gh, %i.fo
  br i1 %.not22.i.i.i, label %._crit_edge30.i.i.i, label %.lr.ph29.i.i.i

_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a: ; preds = %.lr.ph.i43.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i, %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i
  %.1.i.i = phi i1 [ true, %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i ], [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i ], [ %.035.lcssa60.i.i.i, %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i ], [ %.035.lcssa60.i.i.i, %.lr.ph.i43.i.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0245.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gi, %i.s
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge11.i.i:                                ; preds = %bb.ag
  %.val.i.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !73 ; 8 uses
  %.val3.i.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !74 ; 3 uses
  %i.gj = zext i32 %.val3.i.pre.i.i to i64        ; 2 uses
  %.idx1.i.i.i.i = shl nuw nsw i64 %i.gj, 3       ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.pre.i.i, i64 %.idx1.i.i.i.i ; 5 uses
  %i.gl = lshr i64 %i.gj, 2                       ; 2 uses
  %.not.i.i58.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i.i58.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge11.i.i
  %i.gm = and i64 %.idx1.i.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.pre.i.i, i64 %i.gm
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.x, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.050.i.i.i.i.i.i.i.i = phi i64 [ %i.gr, %bb.x ], [ %i.gl, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i.i.i.i = phi ptr [ %i.gq, %bb.x ], [ %.val.i.pre.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i.i.i.i = load ptr, ptr %.02949.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.029.val32.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i.i.i.i = load ptr, ptr %i.gn, align 8, !tbaa !75
  %.not.i.i33.i.i.i.i.i.i.i.i = icmp eq ptr %.val31.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i33.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i.i.i.i = load ptr, ptr %i.go, align 8, !tbaa !75
  %.not.i.i34.i.i.i.i.i.i.i.i = icmp eq ptr %.val30.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i34.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit34", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gp = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.gp, align 8, !tbaa !75
  %.not.i.i35.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i35.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit36", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 32
  %i.gr = add nsw i64 %.050.i.i.i.i.i.i.i.i, -1
  %i.gs = icmp sgt i64 %.050.i.i.i.i.i.i.i.i, 1
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !24

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.x
  %i.gt = and i32 %.val3.i.pre.i.i, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %._crit_edge11.i.i
  %.pre-phi56.i.i.i.i.i.i.i.i = phi i32 [ %i.gt, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.val3.i.pre.i.i, %._crit_edge11.i.i ]
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.val.i.pre.i.i, %._crit_edge11.i.i ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i [
    i32 3, label %bb.y
    i32 2, label %bb.aa
    i32 1, label %bb.ac
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %.not.i.i36.i.i.i.i.i.i.i.i = icmp eq ptr %.029.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i36.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gu = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %bb.z ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %.not.i.i37.i.i.i.i.i.i.i.i = icmp eq ptr %.1.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i37.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i.i.i, align 8, !tbaa !75
  %.not.i.i38.i.i.i.i.i.i.i.i = icmp eq ptr %.2.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i38.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i

"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.u
  %i.gw = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 8
  br label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i"

"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit34": ; preds = %bb.v
  %i.gx = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 16
  br label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i"

"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit36": ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i.i.i.i, i64 24
  br label %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i"

"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit34", %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit36", %bb.ac, %bb.aa, %bb.y
  %.028.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %bb.aa ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %bb.y ], [ %.2.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.gy, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit36" ], [ %i.gx, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit34" ], [ %i.gw, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %.02949.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gz = icmp eq ptr %.028.i.i.i.i.i.i.i.i, %i.gk
  %.01730.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not31.i.i.i.i.i.i = icmp eq ptr %.01730.i.i.i.i.i.i, %i.gk
  %or.cond.i.i.i.i.i.i = select i1 %i.gz, i1 true, i1 %.not31.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", %bb.ae
  %.01733.i.i.i.i.i.i = phi ptr [ %.017.i.i.i.i.i.i, %bb.ae ], [ %.01730.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ] ; 2 uses
  %.032.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.ae ], [ %.028.i.i.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ] ; 3 uses
  %.017.val.i.i.i.i.i.i = load ptr, ptr %.01733.i.i.i.i.i.i, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.017.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %.017.val.i.i.i.i.i.i, ptr %.032.i.i.i.i.i.i, align 8, !tbaa !75
  %i.ha = getelementptr inbounds nuw i8, ptr %.032.i.i.i.i.i.i, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %.032.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ha, %bb.ad ] ; 2 uses
  %.017.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.017.i.i.i.i.i.i, %i.gk
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

.lr.ph10.i.i:                                     ; preds = %._crit_edge.i.i, %bb.ag
  %.08.i.i = phi ptr [ %i.he, %bb.ag ], [ %.pre.i.i, %._crit_edge.i.i ] ; 4 uses
  %.27.i.i = phi i1 [ %.3.i.i, %bb.ag ], [ %.1.i.i, %._crit_edge.i.i ]
  %i.hb = load ptr, ptr %.08.i.i, align 8, !tbaa !75
  %i.hc = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.hb) #10
  br i1 %i.hc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph10.i.i
  %i.hd = load ptr, ptr %.08.i.i, align 8, !tbaa !75
  call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef %i.hd) #10
  store ptr null, ptr %.08.i.i, align 8, !tbaa !75
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph10.i.i
  %.3.i.i = phi i1 [ %.27.i.i, %.lr.ph10.i.i ], [ true, %bb.af ] ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.he, %i.u
  br i1 %.not26.i.i, label %._crit_edge11.i.i, label %.lr.ph10.i.i

_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i: ; preds = %bb.ae, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.i.i, %bb.b
  %.2.lcssa55.i.i = phi i1 [ %.3.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %.3.i.i, %bb.ac ], [ %.3.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ false, %bb.b ], [ %.1.i.i, %._crit_edge.i.i ], [ %.3.i.i, %bb.ae ]
  %.val.i53.i.i = phi ptr [ %.val.i.pre.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %.val.i.pre.i.i, %bb.ac ], [ %.val.i.pre.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.val.i.pre.i.i, %bb.ae ]
  %.016.i.i.i.i.i.i = phi ptr [ %.028.i.i.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %i.gk, %bb.ac ], [ %i.gk, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.1.i.i.i.i.i.i, %bb.ae ]
  %i.hf = ptrtoint ptr %.016.i.i.i.i.i.i to i64
  %i.hg = ptrtoint ptr %.val.i53.i.i to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = lshr exact i64 %i.hh, 3
  %i.hj = trunc i64 %i.hi to i32
  store i32 %i.hj, ptr %i.p, align 8, !tbaa !74
  %i.hk = or i1 %.019.i, %.2.lcssa55.i.i          ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.05.020.i, i64 8
  %.sroa.05.0.i = load ptr, ptr %i.hl, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, %i.b
  br i1 %.not.i, label %_ZN6hermes12_GLOBAL__N_123runSimpleStackPromotionEPNS_6ModuleE.exit, label %bb.b

_ZN6hermes12_GLOBAL__N_123runSimpleStackPromotionEPNS_6ModuleE.exit: ; preds = %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %i.hk, %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i ]
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { builtin nounwind allocsize(0) }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 omnipotent char", !7, i64 0}
!9 = distinct !{!9, i1 true, !"_ZSt11make_uniqueIZN6hermes26createSimpleStackPromotionEvE8ThisPassJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!10 = distinct !{!10, !9, !"_ZSt11make_uniqueIZN6hermes26createSimpleStackPromotionEvE8ThisPassJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!11 = !{!10}
!12 = !{!"_ZTSN6hermes4Pass8PassKindE", !4, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"_ZTSN4llvh9StringRefE", !8, i64 0, !13, i64 8}
!15 = !{!"_ZTSN6hermes4PassE", !12, i64 8, !14, i64 16}
!16 = !{!15, !12, i64 8}
!17 = !{!8, !8, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!"vtable pointer", !3, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTSN6hermes4PassE", !7, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes4PassELb0EE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = distinct !{!24, !122}
!25 = distinct !{!25, !122}
!26 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !7, i64 0}
!27 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !26, i64 0, !26, i64 8}
!28 = !{!27, !26, i64 8}
!29 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !27, i64 0}
!30 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !29, i64 0}
!31 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !30, i64 0}
!32 = !{!"_ZTSN6hermes9ValueKindE", !4, i64 0}
!33 = !{!"short", !4, i64 0}
!34 = !{!"_ZTSN6hermes4TypeE", !33, i64 0, !33, i64 2}
!35 = !{!"_ZTSN4llvh15SmallVectorBaseE", !7, i64 0, !5, i64 8, !5, i64 12}
!36 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !35, i64 0}
!37 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !36, i64 0}
!38 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !37, i64 0}
!39 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !4, i64 0}
!40 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !38, i64 0, !39, i64 16}
!41 = !{!"_ZTSN6hermes5ValueE", !32, i64 0, !34, i64 2, !40, i64 8}
!42 = !{!"p1 _ZTSN6hermes6ModuleE", !7, i64 0}
!43 = !{!"bool", !4, i64 0}
!44 = !{!"p1 _ZTSN6hermes9ScopeDescE", !7, i64 0}
!45 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !27, i64 0}
!46 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !45, i64 0}
!47 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !46, i64 0}
!48 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !47, i64 0}
!49 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !48, i64 0}
!50 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !35, i64 0}
!51 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !50, i64 0}
!52 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !51, i64 0}
!53 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !4, i64 0}
!54 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !52, i64 0, !53, i64 16}
!55 = !{!"p1 _ZTSN6hermes12UniqueStringE", !7, i64 0}
!56 = !{!"_ZTSN6hermes10IdentifierE", !55, i64 0}
!57 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !4, i64 0}
!58 = !{!"_ZTSN4llvh5SMLocE", !8, i64 0}
!59 = !{!"_ZTSN4llvh7SMRangeE", !58, i64 0, !58, i64 8}
!60 = !{!"_ZTSN6hermes16SourceVisibilityE", !4, i64 0}
!61 = !{!"p1 _ZTSN6hermes9ParameterE", !7, i64 0}
!62 = !{!"_ZTSN6hermes8OptValueIjEE", !5, i64 0, !43, i64 4}
!63 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !4, i64 0}
!64 = !{!"_ZTSN6hermes10LazySourceE", !63, i64 0, !5, i64 4, !59, i64 8, !43, i64 24, !43, i64 25}
!65 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !7, i64 0}
!66 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 0}
!67 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0}
!68 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0, !67, i64 8}
!69 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !68, i64 0}
!70 = !{!"p1 _ZTSN6hermes8VariableE", !7, i64 0}
!71 = !{!"_ZTSN6hermes8FunctionE", !31, i64 0, !41, i64 16, !42, i64 56, !43, i64 64, !44, i64 72, !49, i64 80, !54, i64 96, !56, i64 176, !57, i64 184, !43, i64 188, !59, i64 192, !60, i64 208, !56, i64 216, !61, i64 224, !5, i64 232, !62, i64 236, !64, i64 248, !69, i64 280, !70, i64 296}
!72 = !{!71, !44, i64 72}
!73 = !{!35, !7, i64 0}
!74 = !{!35, !5, i64 8}
!75 = !{!70, !70, i64 0}
!76 = !{!41, !32, i64 0}
!77 = !{!35, !5, i64 12}
!78 = !{!"p1 _ZTSN6hermes11InstructionE", !7, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!81 = !{!"_ZTSN6hermes18JavaScriptDeclKindE", !4, i64 0}
!82 = !{!"_ZTSN6hermes8VariableE", !41, i64 0, !81, i64 40, !56, i64 48, !44, i64 56, !43, i64 64}
!83 = !{!82, !44, i64 56}
!84 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ScopeDescEvEE", !35, i64 0}
!85 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EEE", !84, i64 0}
!86 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ScopeDescEEE", !85, i64 0}
!87 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ScopeDescELj8EEE", !4, i64 0}
!88 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ScopeDescELj8EEE", !86, i64 0, !87, i64 16}
!89 = !{!"p1 _ZTSN6hermes8FunctionE", !7, i64 0}
!90 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes8VariableEvEE", !35, i64 0}
!91 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EEE", !90, i64 0}
!92 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes8VariableEEE", !91, i64 0}
!93 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes8VariableELj8EEE", !4, i64 0}
!94 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes8VariableELj8EEE", !92, i64 0, !93, i64 16}
!95 = !{!"_ZTSN6hermes9ScopeDescE", !41, i64 0, !44, i64 40, !88, i64 48, !69, i64 128, !89, i64 144, !94, i64 152, !43, i64 232}
!96 = !{!95, !89, i64 144}
!97 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !27, i64 0}
!98 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !97, i64 0}
!99 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !98, i64 0}
!100 = !{!"p1 _ZTSN6hermes10BasicBlockE", !7, i64 0}
!101 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !35, i64 0}
!102 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !101, i64 0}
!103 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !102, i64 0}
!104 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !4, i64 0}
!105 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !103, i64 0, !104, i64 16}
!106 = !{!"_ZTSN6hermes11InstructionE", !99, i64 0, !41, i64 16, !100, i64 56, !105, i64 64, !44, i64 112, !58, i64 120, !5, i64 128}
!107 = !{!106, !100, i64 56}
!108 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !45, i64 0}
!109 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !108, i64 0}
!110 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !97, i64 0}
!111 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !110, i64 0}
!112 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !111, i64 0}
!113 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !112, i64 0}
!114 = !{!"_ZTSN6hermes10BasicBlockE", !109, i64 0, !41, i64 16, !113, i64 56, !89, i64 72}
!115 = !{!114, !89, i64 72}
!116 = !{!71, !42, i64 56}
!117 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !7, i64 0}
!118 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !117, i64 0}
!119 = !{!"_ZTSN6hermes9IRBuilderE", !42, i64 0, !118, i64 8, !100, i64 16, !58, i64 24, !44, i64 32}
!120 = !{!119, !42, i64 0}
!121 = !{!55, !55, i64 0}
!122 = !{!"llvm.loop.mustprogress"}
end_hunk_0
