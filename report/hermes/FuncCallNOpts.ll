inline.NumInlined: 139
inline.NumDeleted: 102
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::IRBuilder::InstructionDestroyer" = type { %"class.llvh::SmallVector" }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [8 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.hermes::IRBuilder" = type { ptr, %"class.llvh::ilist_iterator", ptr, %"class.llvh::SMLoc", ptr }
%"class.llvh::ilist_iterator" = type { ptr }
%"class.llvh::SMLoc" = type { ptr }

$_ZN6hermes4PassD2Ev = comdat any

$_ZN6hermes13FuncCallNOptsD0Ev = comdat any

@_ZTVN6hermes13FuncCallNOptsE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes13FuncCallNOptsD0Ev, ptr @_ZN6hermes13FuncCallNOpts13runOnFunctionEPNS_8FunctionE] }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13FuncCallNOpts13runOnFunctionEPNS_8FunctionE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 10 uses
  %3 = alloca %"class.hermes::IRBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 8, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  store ptr %i.e, ptr %3, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.034.044 = load ptr, ptr %i.g, align 8, !tbaa !63 ; 2 uses
  %.not45 = icmp eq ptr %.sroa.034.044, %i.h
  br i1 %.not45, label %._crit_edge.i.thread, label %.lr.ph49

._crit_edge.i.thread:                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit

.lr.ph49:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

._crit_edge50:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %2, align 8, !tbaa !7     ; 3 uses
  %.pre52 = load i32, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.j = zext i32 %.pre52 to i64
  %.idx.i = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i
  %.not8.i = icmp eq i32 %.pre52, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %._crit_edge50
  %i.l = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %.pre, %._crit_edge50 ] ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.l) #9
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit

.lr.ph.i:                                         ; preds = %._crit_edge50, %.lr.ph.i
  %.09.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.pre, %._crit_edge50 ] ; 2 uses
  %i.n = load ptr, ptr %.09.i, align 8, !tbaa !64
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.n) #9
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.k
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit: ; preds = %._crit_edge.i.thread, %._crit_edge.i, %bb.b
  %.0.lcssa6668 = phi i1 [ false, %._crit_edge.i.thread ], [ %.1.lcssa, %._crit_edge.i ], [ %.1.lcssa, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i1 %.0.lcssa6668

bb.c:                                             ; preds = %.lr.ph49, %._crit_edge
  %.sroa.034.047 = phi ptr [ %.sroa.034.044, %.lr.ph49 ], [ %.sroa.034.0, %._crit_edge ] ; 3 uses
  %.046 = phi i1 [ false, %.lr.ph49 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.034.047, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.034.047, i64 56 ; 2 uses
  %.sroa.030.040 = load ptr, ptr %i.p, align 8, !tbaa !63 ; 2 uses
  %.not3741 = icmp eq ptr %.sroa.030.040, %i.q
  br i1 %.not3741, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %.1.lcssa = phi i1 [ %.046, %bb.c ], [ %.3, %bb.l ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.034.047, i64 8
  %.sroa.034.0 = load ptr, ptr %i.r, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %.sroa.034.0, %i.h
  br i1 %.not, label %._crit_edge50, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %bb.l
  %.sroa.030.043 = phi ptr [ %.sroa.030.0, %bb.l ], [ %.sroa.030.040, %bb.c ] ; 11 uses
  %.142 = phi i1 [ %.3, %bb.l ], [ %.046, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 16 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !66
  %i.u = icmp eq i8 %i.t, 91
  br i1 %i.u, label %bb.d, label %bb.l

bb.d:                                             ; preds = %.lr.ph
  %i.v = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.030.043) #9
  %i.w = add i32 %i.v, -3
  %or.cond = icmp ult i32 %i.w, 4
  br i1 %or.cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 112
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !67
  %i.z = shufflevector <2 x ptr> %i.y, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.z, ptr %i.i, align 8, !tbaa !67
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %.sroa.030.043) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.ac = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.030.043, i32 noundef 0) #9
  %i.ad = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.030.043, i32 noundef 2) #9
  %i.ae = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.030.043) #9, !noalias !80 ; 2 uses
  %i.af = add i32 %i.ae, -2                       ; 2 uses
  %i.ag = add i32 %i.ae, -3                       ; 2 uses
  %.not.i23 = icmp eq i32 %i.ag, 0
  br i1 %.not.i23, label %_ZN12_GLOBAL__N_123getArgumentsWithoutThisEPN6hermes8CallInstE.exit, label %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i

_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i: ; preds = %bb.e
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #10, !noalias !80 ; 6 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah ; 3 uses
  %i.al = icmp ugt i32 %i.af, 1
  br i1 %i.al, label %.lr.ph.i25, label %_ZN12_GLOBAL__N_123getArgumentsWithoutThisEPN6hermes8CallInstE.exit

.lr.ph.i25:                                       ; preds = %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ], [ %i.aj, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ]
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ], [ %i.ak, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ]
  %i.am = phi ptr [ %i.bf, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ], [ %i.aj, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ] ; 4 uses
  %i.an = phi ptr [ %i.bg, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ], [ %i.ak, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ] ; 3 uses
  %i.ao = phi ptr [ %.sroa.7.0, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ], [ %i.aj, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ] ; 3 uses
  %.08.i = phi i32 [ %i.bh, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ], [ 1, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ] ; 2 uses
  %i.ap = add i32 %.08.i, 2
  %i.aq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.030.043, i32 noundef %i.ap) #9, !noalias !80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i25
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !83, !noalias !80
  br label %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i

bb.g:                                             ; preds = %.lr.ph.i25
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.h, label %_ZNKSt6vectorIPN6hermes5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11, !noalias !80
  unreachable

_ZNKSt6vectorIPN6hermes5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.g
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #10, !noalias !80 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store ptr %i.aq, ptr %i.bc, align 8, !tbaa !83, !noalias !80
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.i, label %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.am, i64 %i.at, i1 false), !noalias !80
  br label %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.at) #12, !noalias !80
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az ; 2 uses
  br label %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.f
  %.sroa.0.1 = phi ptr [ %i.bb, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.0.0, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %i.bc, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.ao, %bb.f ]
  %.sroa.11.1 = phi ptr [ %i.be, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.11.0, %bb.f ] ; 2 uses
  %i.bf = phi ptr [ %i.bb, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.am, %bb.f ]
  %i.bg = phi ptr [ %i.be, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.an, %bb.f ]
  %.sroa.7.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.bh = add nuw i32 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %i.af
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_123getArgumentsWithoutThisEPN6hermes8CallInstE.exit, label %.lr.ph.i25, !llvm.loop !85

_ZN12_GLOBAL__N_123getArgumentsWithoutThisEPN6hermes8CallInstE.exit: ; preds = %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i, %bb.e, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i
  %.sroa.0.2 = phi ptr [ null, %bb.e ], [ %i.aj, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ], [ %.sroa.0.1, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ] ; 4 uses
  %.sroa.7.1 = phi ptr [ null, %bb.e ], [ %i.aj, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ], [ %.sroa.7.0, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ]
  %.sroa.11.2 = phi ptr [ null, %bb.e ], [ %i.ak, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE7reserveEm.exit.i ], [ %.sroa.11.1, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EE9push_backEOS2_.exit.i ]
  %i.bi = ptrtoint ptr %.sroa.7.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0.2 to i64          ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3
  %i.bm = call noundef ptr @_ZN6hermes9IRBuilder18createHBCCallNInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ad, ptr %.sroa.0.2, i64 %i.bl) #9 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIPN6hermes5ValueESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_123getArgumentsWithoutThisEPN6hermes8CallInstE.exit
  %i.bn = ptrtoint ptr %.sroa.11.2 to i64
  %i.bo = sub i64 %i.bn, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.bo) #12
  br label %_ZNSt6vectorIPN6hermes5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6hermes5ValueESaIS2_EED2Ev.exit:   ; preds = %_ZN12_GLOBAL__N_123getArgumentsWithoutThisEPN6hermes8CallInstE.exit, %bb.j
  %i.bp = icmp eq ptr %i.bm, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %spec.select = select i1 %i.bp, ptr null, ptr %i.bq
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef %spec.select) #9
  %i.br = load i32, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i.i = icmp ult i32 %i.br, %i.bs
  br i1 %.not.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit, label %bb.k, !prof !87

bb.k:                                             ; preds = %_ZNSt6vectorIPN6hermes5ValueESaIS2_EED2Ev.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #9
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit

_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit: ; preds = %_ZNSt6vectorIPN6hermes5ValueESaIS2_EED2Ev.exit, %bb.k
  %i.bt = phi i32 [ %.pre.i.i, %bb.k ], [ %i.br, %_ZNSt6vectorIPN6hermes5ValueESaIS2_EED2Ev.exit ]
  %i.bu = load ptr, ptr %2, align 8, !tbaa !7
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = ptrtoint ptr %.sroa.030.043 to i64
  store i64 %i.bx, ptr %i.bw, align 1
  %i.by = load i32, ptr %i.b, align 8, !tbaa !10
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.b, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit, %.lr.ph
  %.3 = phi i1 [ %.142, %.lr.ph ], [ true, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit ], [ %.142, %bb.d ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 8
  %.sroa.030.0 = load ptr, ptr %i.ca, align 8, !tbaa !63 ; 2 uses
  %.not37 = icmp eq ptr %.sroa.030.0, %i.q
  br i1 %.not37, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder18createHBCCallNInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes13FuncCallNOptsD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !4, i64 12}
!12 = !{!13, !28, i64 56}
!13 = !{!"_ZTSN6hermes8FunctionE", !14, i64 0, !19, i64 16, !28, i64 56, !29, i64 64, !30, i64 72, !31, i64 80, !36, i64 96, !41, i64 176, !43, i64 184, !29, i64 188, !44, i64 192, !47, i64 208, !41, i64 216, !48, i64 224, !4, i64 232, !49, i64 236, !50, i64 248, !52, i64 280, !57, i64 296}
!14 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !15, i64 0}
!15 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !16, i64 0}
!16 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !17, i64 0}
!17 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !18, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !9, i64 0}
!19 = !{!"_ZTSN6hermes5ValueE", !20, i64 0, !21, i64 2, !23, i64 8}
!20 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!21 = !{!"_ZTSN6hermes4TypeE", !22, i64 0, !22, i64 2}
!22 = !{!"short", !5, i64 0}
!23 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !24, i64 0, !27, i64 16}
!24 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !25, i64 0}
!25 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !26, i64 0}
!26 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !8, i64 0}
!27 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!28 = !{!"p1 _ZTSN6hermes6ModuleE", !9, i64 0}
!29 = !{!"bool", !5, i64 0}
!30 = !{!"p1 _ZTSN6hermes9ScopeDescE", !9, i64 0}
!31 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !32, i64 0}
!32 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !33, i64 0}
!33 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !34, i64 0}
!34 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !35, i64 0}
!35 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !17, i64 0}
!36 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !37, i64 0, !40, i64 16}
!37 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !38, i64 0}
!38 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !39, i64 0}
!39 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !8, i64 0}
!40 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !5, i64 0}
!41 = !{!"_ZTSN6hermes10IdentifierE", !42, i64 0}
!42 = !{!"p1 _ZTSN6hermes12UniqueStringE", !9, i64 0}
!43 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !5, i64 0}
!44 = !{!"_ZTSN4llvh7SMRangeE", !45, i64 0, !45, i64 8}
!45 = !{!"_ZTSN4llvh5SMLocE", !46, i64 0}
!46 = !{!"p1 omnipotent char", !9, i64 0}
!47 = !{!"_ZTSN6hermes16SourceVisibilityE", !5, i64 0}
!48 = !{!"p1 _ZTSN6hermes9ParameterE", !9, i64 0}
!49 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !29, i64 4}
!50 = !{!"_ZTSN6hermes10LazySourceE", !51, i64 0, !4, i64 4, !44, i64 8, !29, i64 24, !29, i64 25}
!51 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!52 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !53, i64 0}
!53 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0, !55, i64 8}
!54 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !9, i64 0}
!55 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0}
!56 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!57 = !{!"p1 _ZTSN6hermes8VariableE", !9, i64 0}
!58 = !{!59, !28, i64 0}
!59 = !{!"_ZTSN6hermes9IRBuilderE", !28, i64 0, !60, i64 8, !62, i64 16, !45, i64 24, !30, i64 32}
!60 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !61, i64 0}
!61 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !9, i64 0}
!62 = !{!"p1 _ZTSN6hermes10BasicBlockE", !9, i64 0}
!63 = !{!17, !18, i64 8}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTSN6hermes11InstructionE", !9, i64 0}
!66 = !{!19, !20, i64 0}
!67 = !{!9, !9, i64 0}
!68 = !{!69, !79, i64 136}
!69 = !{!"_ZTSN6hermes8CallInstE", !70, i64 0, !79, i64 136}
!70 = !{!"_ZTSN6hermes11InstructionE", !71, i64 0, !19, i64 16, !62, i64 56, !74, i64 64, !30, i64 112, !45, i64 120, !4, i64 128}
!71 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !72, i64 0}
!72 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !73, i64 0}
!73 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !17, i64 0}
!74 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !75, i64 0, !78, i64 16}
!75 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !76, i64 0}
!76 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !77, i64 0}
!77 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !8, i64 0}
!78 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !5, i64 0}
!79 = !{!"p1 _ZTSN6hermes13LiteralStringE", !9, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN12_GLOBAL__N_123getArgumentsWithoutThisEPN6hermes8CallInstE: argument 0"}
!82 = distinct !{!82, !"_ZN12_GLOBAL__N_123getArgumentsWithoutThisEPN6hermes8CallInstE"}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTSN6hermes5ValueE", !9, i64 0}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
