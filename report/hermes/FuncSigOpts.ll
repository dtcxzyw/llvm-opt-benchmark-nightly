inline.NumInlined: 522
inline.NumDeleted: 315
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvh::detail::DenseSetEmpty" = type { i8 }
%"struct.std::pair.140" = type <{ %"class.llvh::DenseMapIterator.125", i8, [7 x i8] }>
%"class.llvh::DenseMapIterator.125" = type { ptr, ptr }
%"class.hermes::IRBuilder" = type { ptr, %"class.llvh::ilist_iterator.85", ptr, %"class.llvh::SMLoc", ptr }
%"class.llvh::ilist_iterator.85" = type { ptr }
%"class.llvh::SMLoc" = type { ptr }
%"class.llvh::SmallVector.87" = type { %"class.llvh::SmallVectorImpl.88", %"struct.llvh::SmallVectorStorage.91" }
%"class.llvh::SmallVectorImpl.88" = type { %"class.llvh::SmallVectorTemplateBase.89" }
%"class.llvh::SmallVectorTemplateBase.89" = type { %"class.llvh::SmallVectorTemplateCommon.90" }
%"class.llvh::SmallVectorTemplateCommon.90" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.91" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.92"] }
%"struct.llvh::AlignedCharArrayUnion.92" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [8 x i8] }
%"class.llvh::SmallVector.93" = type { %"class.llvh::SmallVectorImpl.94", %"struct.llvh::SmallVectorStorage.97" }
%"class.llvh::SmallVectorImpl.94" = type { %"class.llvh::SmallVectorTemplateBase.95" }
%"class.llvh::SmallVectorTemplateBase.95" = type { %"class.llvh::SmallVectorTemplateCommon.96" }
%"class.llvh::SmallVectorTemplateCommon.96" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.97" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.98"] }
%"struct.llvh::AlignedCharArrayUnion.98" = type { %"struct.llvh::AlignedCharArray.99" }
%"struct.llvh::AlignedCharArray.99" = type { [16 x i8] }
%"class.llvh::SmallVector.102" = type { %"class.llvh::SmallVectorImpl.103", %"struct.llvh::SmallVectorStorage.106" }
%"class.llvh::SmallVectorImpl.103" = type { %"class.llvh::SmallVectorTemplateBase.104" }
%"class.llvh::SmallVectorTemplateBase.104" = type { %"class.llvh::SmallVectorTemplateCommon.105" }
%"class.llvh::SmallVectorTemplateCommon.105" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.106" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.107"] }
%"struct.llvh::AlignedCharArrayUnion.107" = type { %"struct.llvh::AlignedCharArray.99" }
%"class.llvh::DenseSet" = type { %"class.llvh::detail::DenseSetImpl" }
%"class.llvh::detail::DenseSetImpl" = type { %"class.llvh::DenseMap.120" }
%"class.llvh::DenseMap.120" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.76" }
%"struct.std::_Head_base.76" = type { ptr }

$_ZN6hermes11FuncSigOptsD0Ev = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_ = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_EENS4_12DenseSetPairIS3_EEE4growEj = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes11FuncSigOptsE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes11FuncSigOptsD0Ev, ptr @_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"FuncSigOpts\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %3 = alloca %"struct.std::pair.140", align 8    ; 3 uses
  %4 = alloca %"class.hermes::IRBuilder", align 8 ; 5 uses
  %5 = alloca %"class.llvh::SmallVector.87", align 8 ; 9 uses
  %6 = alloca %"class.llvh::SmallVector.93", align 8 ; 11 uses
  %7 = alloca %"class.llvh::SmallVector.102", align 8 ; 10 uses
  %8 = alloca %"class.llvh::DenseSet", align 8    ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.015.036 = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %.not2737 = icmp eq ptr %.sroa.015.036, %i.c
  br i1 %.not2737, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 856
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit
  %.not45 = icmp eq ptr %.sroa.9.1, %.sroa.018.1
  br i1 %.not45, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.phi.trans.insert144.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit
  %.sroa.015.041 = phi ptr [ %.sroa.015.036, %.lr.ph ], [ %.sroa.015.0, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %.sroa.018.040 = phi ptr [ null, %.lr.ph ], [ %.sroa.018.1, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %.sroa.9.039 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %.sroa.19.038 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.1, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.q = load i32, ptr %i.e, align 8, !tbaa !14   ; 4 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %.sroa.015.041 to i64
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = lshr i32 %i.t, 4
  %i.v = lshr i32 %i.t, 9
  %i.w = xor i32 %i.u, %i.v
  %i.x = add i32 %i.q, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.x, %i.w              ; 2 uses
  %i.y = zext nneg i32 %.02944.i.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = icmp eq ptr %.sroa.015.041, %i.aa
  br i1 %i.ab, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !17

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.ac = phi ptr [ %i.ai, %bb.d ], [ %i.aa, %bb.c ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.d ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.ae, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.ad = icmp eq ptr %i.ac, inttoptr (i64 -8 to ptr)
  br i1 %i.ad, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i, label %bb.d, !prof !18

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = add i32 %.02746.i.i.i, 1
  %i.af = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.af, %i.x               ; 2 uses
  %i.ag = zext i32 %.029.i.i.i to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.015.041, %i.ai
  br i1 %i.aj, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !19, !llvm.loop !20

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.ak = zext i32 %i.q to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ak
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i: ; preds = %bb.d, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i, %bb.c
  %.sink.i.ph.pn.i.i = phi ptr [ %i.al, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i ], [ %i.z, %bb.c ], [ %i.ah, %bb.d ] ; 2 uses
  %i.am = zext i32 %i.q to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.am
  %i.ao = icmp eq ptr %.sink.i.ph.pn.i.i, %i.an
  br i1 %i.ao, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit

_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  %.not8 = icmp eq ptr %i.aq, null
  br i1 %.not8, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit

_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %.not.i.i = icmp eq ptr %.sroa.9.039, %.sroa.19.038
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread
  store ptr %.sroa.015.041, ptr %.sroa.9.039, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.039, i64 8
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread
  %i.as = ptrtoint ptr %.sroa.9.039 to i64
  %i.at = ptrtoint ptr %.sroa.018.040 to i64
  %i.au = sub i64 %i.as, %i.at                    ; 6 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.g, label %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.aw = ashr exact i64 %i.au, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #11 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.au ; 2 uses
  store ptr %.sroa.015.041, ptr %i.bb, align 8, !tbaa !15
  %i.bc = icmp sgt i64 %i.au, 0
  br i1 %i.bc, label %bb.h, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %.sroa.018.040, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.018.040, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.040, i64 noundef %i.au) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.e, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %.sroa.19.1 = phi ptr [ %.sroa.19.038, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.be, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.19.038, %bb.e ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.039, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.bd, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.018.1 = phi ptr [ %.sroa.018.040, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.ba, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.018.040, %bb.e ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.015.041, i64 8
  %.sroa.015.0 = load ptr, ptr %i.bf, align 8, !tbaa !7 ; 2 uses
  %.not27 = icmp eq ptr %.sroa.015.0, %i.c
  br i1 %.not27, label %.preheader, label %bb.b

bb.j:                                             ; preds = %.lr.ph50, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
  %.049 = phi i1 [ false, %.lr.ph50 ], [ %.1.i, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 7 uses
  %.sroa.018.248 = phi ptr [ %.sroa.018.1, %.lr.ph50 ], [ %.sroa.018.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 7 uses
  %.sroa.9.247 = phi ptr [ %.sroa.9.1, %.lr.ph50 ], [ %.sroa.9.7, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ]
  %.sroa.19.246 = phi ptr [ %.sroa.19.1, %.lr.ph50 ], [ %.sroa.19.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 8 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.9.247, i64 -8 ; 8 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 80 ; 2 uses
  %.sroa.028.042.i.i = load ptr, ptr %i.bi, align 8, !tbaa !7 ; 2 uses
  %.not3343.not.i.i = icmp eq ptr %.sroa.028.042.i.i, %i.bj
  br i1 %.not3343.not.i.i, label %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %bb.j, %.critedge.i.i
  %.sroa.028.044.i.i = phi ptr [ %.sroa.028.0.i.i, %.critedge.i.i ], [ %.sroa.028.042.i.i, %bb.j ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 56 ; 2 uses
  %.sroa.024.039.i.i = load ptr, ptr %i.bk, align 8, !tbaa !7 ; 2 uses
  %.not3440.i.i = icmp eq ptr %.sroa.024.039.i.i, %i.bl
  br i1 %.not3440.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph46.i.i, %bb.l
  %.sroa.024.041.i.i = phi ptr [ %.sroa.024.0.i.i, %bb.l ], [ %.sroa.024.039.i.i, %.lr.ph46.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.024.041.i.i, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !25
  switch i8 %i.bn, label %bb.l [
    i8 55, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
    i8 93, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bo = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.024.041.i.i, i32 noundef 0) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !36 ; 4 uses
  %i.br = fcmp ule double %i.bq, f0x41DFFFFFFFC00000
  %i.bs = fcmp uge double %i.bq, f0xC1E0000000000000
  %i.bt = fcmp ord double %i.bq, 0.000000e+00
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.br)
  call void @llvm.assume(i1 %i.bs)
  %i.bu = fptosi double %i.bq to i32
  %i.bv = and i32 %i.bu, 255
  %i.bw = icmp eq i32 %i.bv, 45
  br i1 %i.bw, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.024.041.i.i, i64 8
  %.sroa.024.0.i.i = load ptr, ptr %i.bx, align 8, !tbaa !7 ; 2 uses
  %.not34.i.i = icmp eq ptr %.sroa.024.0.i.i, %i.bl
  br i1 %.not34.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.critedge.i.i:                                    ; preds = %bb.l, %.lr.ph46.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 8
  %.sroa.028.0.i.i = load ptr, ptr %i.by, align 8, !tbaa !7 ; 2 uses
  %.not33.not.i.i = icmp eq ptr %.sroa.028.0.i.i, %i.bj
  br i1 %.not33.not.i.i, label %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, label %.lr.ph46.i.i

_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i: ; preds = %.critedge.i.i, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !25
  switch i8 %i.ca, label %bb.m [
    i8 -127, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
    i8 -125, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
  ]

bb.m:                                             ; preds = %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !41
  store ptr %i.cc, ptr %4, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %i.g, ptr %5, align 8, !tbaa !81
  store i32 0, ptr %i.h, align 8, !tbaa !82
  store i32 8, ptr %i.i, align 4, !tbaa !83
  %i.cd = call noundef zeroext i1 @_ZN6hermes12getCallSitesEPNS_8FunctionERN4llvh15SmallVectorImplIPNS_8CallInstEEE(ptr noundef nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  br i1 %i.cd, label %bb.n, label %bb.aj

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 96 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 104 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !82 ; 5 uses
  %i.ch = zext i32 %i.cg to i64                   ; 5 uses
  %i.ci = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %i.j, ptr %6, align 8, !tbaa !81
  store i32 8, ptr %i.l, align 4, !tbaa !83
  store i32 0, ptr %i.k, align 8, !tbaa !82
  %i.cj = icmp ugt i32 %i.cg, 8
  br i1 %i.cj, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull %i.j, i64 noundef %i.ch, i64 noundef 16) #13
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !81 ; 2 uses
  store i32 %i.cg, ptr %i.k, align 8, !tbaa !82
  %i.ck = shl nuw nsw i64 %i.ch, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.ck
  br label %.lr.ph.i.i.i.i.i.preheader.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.cg, ptr %i.k, align 8, !tbaa !82
  %i.cm = shl nuw nsw i64 %i.ch, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cm
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.o, %.thread.i
  %i.co = phi ptr [ %i.cl, %.thread.i ], [ %i.cn, %bb.o ]
  %i.cp = phi ptr [ %.pre.i.i, %.thread.i ], [ %i.j, %bb.o ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %i.cp, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  store ptr %i.ci, ptr %.07.i.i.i.i.i.i, align 8
  %.sroa.492.0..07.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 8
  store i8 0, ptr %.sroa.492.0..07.i.i.i.i.i.sroa_idx.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.co
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !84

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.o
  %.not6.i.i.i.i.i174.i = phi i1 [ true, %bb.o ], [ false, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.m, ptr %7, align 8, !tbaa !81
  store i32 0, ptr %i.n, align 8, !tbaa !82
  store i32 8, ptr %i.o, align 4, !tbaa !83
  %i.cr = load ptr, ptr %5, align 8, !tbaa !81    ; 2 uses
  %i.cs = load i32, ptr %i.h, align 8, !tbaa !82  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %.idx.i = shl nuw nsw i64 %i.ct, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i
  %.not112.i = icmp eq i32 %i.cs, 0
  br i1 %.not112.i, label %._crit_edge115.i, label %.lr.ph114.i

._crit_edge115.i:                                 ; preds = %._crit_edge111.i, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i
  %i.cv = load ptr, ptr %i.ce, align 8, !tbaa !81 ; 2 uses
  %i.cw = load i32, ptr %i.cf, align 8, !tbaa !82 ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %.idx133.i = shl nuw nsw i64 %i.cx, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx133.i
  %.not57116.i = icmp eq i32 %i.cw, 0
  br i1 %.not57116.i, label %._crit_edge122.i, label %.lr.ph121.i

.lr.ph114.i:                                      ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, %._crit_edge111.i
  %.046113.i = phi ptr [ %i.dt, %._crit_edge111.i ], [ %i.cr, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i ] ; 2 uses
  %i.cz = load ptr, ptr %.046113.i, align 8, !tbaa !85 ; 4 uses
  br i1 %.not6.i.i.i.i.i174.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.s, %.lr.ph114.i
  %i.da = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cz) #13
  %i.db = add i32 %i.da, -2                       ; 2 uses
  %i.dc = icmp ugt i32 %i.db, 1
  br i1 %i.dc, label %.lr.ph110.preheader.i, label %._crit_edge111.i

.lr.ph110.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count139.i = zext i32 %i.db to i64
  br label %.lr.ph110.i

.lr.ph.i:                                         ; preds = %.lr.ph114.i, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %.lr.ph114.i ] ; 4 uses
  %i.dd = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cz) #13
  %i.de = add i32 %i.dd, -3
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.i, %i.df
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  %i.dh = trunc nuw i64 %indvars.iv.i to i32
  %i.di = add i32 %i.dh, 3
  %i.dj = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.cz, i32 noundef %i.di) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %.049.i = phi ptr [ %i.dj, %bb.p ], [ %i.ci, %.lr.ph.i ] ; 2 uses
  %i.dk = load i8, ptr %.049.i, align 8, !tbaa !25
  %i.dl = add i8 %i.dk, -109
  %i.dm = icmp ult i8 %i.dl, 11
  %spec.select.i.i = select i1 %i.dm, ptr %.049.i, ptr null ; 2 uses
  %i.dn = load ptr, ptr %6, align 8, !tbaa !81
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %indvars.iv.i ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !87, !range !90, !noundef !91
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.r, label %.sink.split.i

bb.r:                                             ; preds = %bb.q
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !92
  %.not60.i = icmp eq ptr %i.ds, %spec.select.i.i
  br i1 %.not60.i, label %bb.s, label %.sink.split.i
end_hunk_0
begin_hunk_1_@_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE:bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.m, i64 noundef 0, i64 noundef 16) #13
  %.pre.i62.i = load i32, ptr %i.n, align 8, !tbaa !82
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i: ; preds = %bb.v, %bb.u
  %i.ec = phi i32 [ %.pre.i62.i, %bb.v ], [ %i.ea, %bb.u ]
  %i.ed = load ptr, ptr %7, align 8, !tbaa !81
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  store ptr %i.cz, ptr %i.ef, align 1
  %.sroa.473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eg = trunc nuw i64 %indvars.iv136.i to i32
  store i32 %i.eg, ptr %.sroa.473.0..sroa_idx.i, align 1
  %i.eh = load i32, ptr %i.n, align 8, !tbaa !82
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.n, align 8, !tbaa !82
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i, %bb.t
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next137.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %._crit_edge111.i, label %.lr.ph110.i, !llvm.loop !95

._crit_edge122.i.loopexit:                        ; preds = %bb.y
  %i.ej = or i1 %.049, %.151.i
  br label %._crit_edge122.i

._crit_edge122.i:                                 ; preds = %._crit_edge122.i.loopexit, %._crit_edge115.i
  %.050.lcssa.i = phi i1 [ %.049, %._crit_edge115.i ], [ %i.ej, %._crit_edge122.i.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 20, i1 false)
  %i.ek = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.el = load i32, ptr %i.n, align 8, !tbaa !82  ; 2 uses
  %i.em = zext i32 %i.el to i64
  %.idx134.i = shl nuw nsw i64 %i.em, 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx134.i
  %.not58123.i = icmp eq i32 %i.el, 0
  br i1 %.not58123.i, label %._crit_edge127.thread.i, label %.lr.ph126.i

.lr.ph121.i:                                      ; preds = %._crit_edge115.i, %bb.y
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %bb.y ], [ 0, %._crit_edge115.i ] ; 2 uses
  %.050119.i = phi i1 [ %.151.i, %bb.y ], [ false, %._crit_edge115.i ]
  %.053117.i = phi ptr [ %i.es, %bb.y ], [ %i.cv, %._crit_edge115.i ] ; 2 uses
  %i.eo = load ptr, ptr %6, align 8, !tbaa !81
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv141.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !92 ; 2 uses
  %.not59.i = icmp eq ptr %i.eq, null
  br i1 %.not59.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph121.i
  %i.er = load ptr, ptr %.053117.i, align 8, !tbaa !94
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.er, ptr noundef nonnull %i.eq) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph121.i
  %.151.i = phi i1 [ true, %bb.x ], [ %.050119.i, %.lr.ph121.i ] ; 2 uses
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1
  %i.es = getelementptr inbounds nuw i8, ptr %.053117.i, i64 8 ; 2 uses
  %.not57.i = icmp eq ptr %i.es, %i.cy
  br i1 %.not57.i, label %._crit_edge122.i.loopexit, label %.lr.ph121.i

._crit_edge127.i:                                 ; preds = %bb.ab
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  %.pre143.i = load ptr, ptr %8, align 8, !tbaa !99 ; 7 uses
  %.pre145.i = load i32, ptr %.phi.trans.insert144.i, align 8, !tbaa !100 ; 2 uses
  %i.et = icmp eq i32 %.pre.i, 0
  %i.eu = zext i32 %.pre145.i to i64              ; 4 uses
  br i1 %i.et, label %._crit_edge127.thread.i, label %bb.z

._crit_edge127.thread.i:                          ; preds = %._crit_edge127.i, %._crit_edge122.i
  %i.ev = phi i64 [ %i.eu, %._crit_edge127.i ], [ 0, %._crit_edge122.i ] ; 2 uses
  %i.ew = phi ptr [ %.pre143.i, %._crit_edge127.i ], [ null, %._crit_edge122.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ev ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i

bb.z:                                             ; preds = %._crit_edge127.i
  %.idx.i.i63.i = shl nuw nsw i64 %i.eu, 3
  %i.ey = getelementptr i8, ptr %.pre143.i, i64 %.idx.i.i63.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i = icmp eq i32 %.pre145.i, 0
  br i1 %.not5.i5.i10.i2.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i

.lr.ph.i6.i12.i3.i.i.i:                           ; preds = %bb.z, %.critedge2.i8.i14.i6.i.i.i
  %.sroa.0.3.i4.i.i.i = phi ptr [ %i.fa, %.critedge2.i8.i14.i6.i.i.i ], [ %.pre143.i, %bb.z ] ; 3 uses
  %i.ez = load ptr, ptr %.sroa.0.3.i4.i.i.i, align 8, !tbaa !15
  %magicptr.i7.i13.i5.i.i.i = ptrtoint ptr %i.ez to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i:                       ; preds = %.lr.ph.i6.i12.i3.i.i.i, %.lr.ph.i6.i12.i3.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i = icmp eq ptr %i.fa, %i.ey
  br i1 %.not.i9.i15.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i, !llvm.loop !101

_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i.i, %.lr.ph.i6.i12.i3.i.i.i, %bb.z, %._crit_edge127.thread.i
  %i.fb = phi i64 [ %i.ev, %._crit_edge127.thread.i ], [ 0, %bb.z ], [ %i.eu, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.eu, %.critedge2.i8.i14.i6.i.i.i ]
  %i.fc = phi ptr [ %i.ew, %._crit_edge127.thread.i ], [ %.pre143.i, %bb.z ], [ %.pre143.i, %.lr.ph.i6.i12.i3.i.i.i ], [ %.pre143.i, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %.pn14.i.i.i = phi ptr [ %i.ex, %._crit_edge127.thread.i ], [ %.pre143.i, %bb.z ], [ %i.ey, %.critedge2.i8.i14.i6.i.i.i ], [ %.sroa.0.3.i4.i.i.i, %.lr.ph.i6.i12.i3.i.i.i ] ; 2 uses
  %.pn12.i.i.i = phi ptr [ %i.ex, %._crit_edge127.thread.i ], [ %i.ey, %bb.z ], [ %i.ey, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.ey, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb ; 2 uses
  %.not106128.i = icmp eq ptr %.pn14.i.i.i, %i.fd
  br i1 %.not106128.i, label %._crit_edge131.i, label %.lr.ph130.i

.lr.ph126.i:                                      ; preds = %._crit_edge122.i, %bb.ab
  %.047124.i = phi ptr [ %i.fu, %bb.ab ], [ %i.ek, %._crit_edge122.i ] ; 5 uses
  %i.fe = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.ff = getelementptr inbounds nuw i8, ptr %.047124.i, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !104
  %i.fh = add i32 %i.fg, 2
  %i.fi = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.fe, i32 noundef %i.fh) #13
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !25
  %i.fk = add i8 %i.fj, -109
  %i.fl = icmp ult i8 %i.fk, 11
  br i1 %i.fl, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fm = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !105
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 72
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !115
  store ptr %i.fq, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !123
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.140") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph126.i
  %i.fr = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.fs = load i32, ptr %i.ff, align 8, !tbaa !104
  %i.ft = add i32 %i.fs, 2
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(144) %i.fr, ptr noundef %i.ci, i32 noundef %i.ft) #13
  %i.fu = getelementptr inbounds nuw i8, ptr %.047124.i, i64 16 ; 2 uses
  %.not58.i = icmp eq ptr %i.fu, %i.en
  br i1 %.not58.i, label %._crit_edge127.i, label %.lr.ph126.i

._crit_edge131.loopexit.i:                        ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.pre148.i = load ptr, ptr %8, align 8, !tbaa !99
  br label %._crit_edge131.i

._crit_edge131.i:                                 ; preds = %._crit_edge131.loopexit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  %.sroa.19.7 = phi ptr [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.19.6, %._crit_edge131.loopexit.i ]
  %.sroa.9.6 = phi ptr [ %i.bg, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.9.5, %._crit_edge131.loopexit.i ]
  %.sroa.018.7 = phi ptr [ %.sroa.018.248, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.018.6, %._crit_edge131.loopexit.i ]
  %i.fv = phi ptr [ %i.fc, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.pre148.i, %._crit_edge131.loopexit.i ]
  call void @_ZdlPv(ptr noundef %i.fv) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fw = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.m
  br i1 %i.fx, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge131.i
  call void @free(ptr noundef %i.fw) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i: ; preds = %bb.ac, %._crit_edge131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.fy = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.j
  br i1 %i.fz, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.fy) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i: ; preds = %bb.ad, %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.aj

.lr.ph130.i:                                      ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.sroa.19.5 = phi ptr [ %.sroa.19.6, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ]
  %.sroa.018.5 = phi ptr [ %.sroa.018.6, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.018.248, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 5 uses
  %i.ga = phi ptr [ %i.gp, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 3 uses
  %i.gb = phi ptr [ %.sroa.9.5, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %i.bg, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 3 uses
  %.sroa.066.0129.i = phi ptr [ %.sroa.066.2.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.pn14.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 2 uses
  %i.gc = load ptr, ptr %.sroa.066.0129.i, align 8, !tbaa !15 ; 2 uses
  %.not.i64.i = icmp eq ptr %i.gb, %i.ga
  br i1 %.not.i64.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph130.i
  store ptr %i.gc, ptr %i.gb, align 8, !tbaa !15
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i

bb.af:                                            ; preds = %.lr.ph130.i
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = ptrtoint ptr %.sroa.018.5 to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 6 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775800
  br i1 %i.gg, label %bb.ag, label %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9: ; preds = %bb.af
  %i.gh = ashr exact i64 %i.gf, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i10 = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i.i10, %i.gh ; 2 uses
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gi, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.gk = shl nuw nsw i64 %i.gj, 3
  %i.gl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #11 ; 4 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 %i.gf ; 2 uses
  store ptr %i.gc, ptr %i.gm, align 8, !tbaa !15
  %i.gn = icmp sgt i64 %i.gf, 0
  br i1 %i.gn, label %bb.ah, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12

bb.ah:                                            ; preds = %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gl, ptr align 8 %.sroa.018.5, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12: ; preds = %bb.ah, %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9
  %.not.i17.i.i.i13 = icmp eq ptr %.sroa.018.5, null
  br i1 %.not.i17.i.i.i13, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.5, i64 noundef %i.gf) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gj ; 2 uses
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ae
  %.sroa.19.6 = phi ptr [ %i.go, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.19.5, %bb.ae ] ; 2 uses
  %.pn = phi ptr [ %i.gm, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.gb, %bb.ae ]
  %.sroa.018.6 = phi ptr [ %i.gl, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.018.5, %bb.ae ] ; 2 uses
  %i.gp = phi ptr [ %i.go, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ga, %bb.ae ]
  %.sroa.9.5 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.066.0129.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i = icmp eq ptr %i.gq, %.pn12.i.i.i
  br i1 %.not5.i3.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i, %.critedge2.i6.i.i.i
  %.sroa.066.1.i = phi ptr [ %i.gs, %.critedge2.i6.i.i.i ], [ %i.gq, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %i.gr = load ptr, ptr %.sroa.066.1.i, align 8, !tbaa !15
  %magicptr.i5.i.i.i = ptrtoint ptr %i.gr to i64
  switch i64 %magicptr.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i [
    i64 -8, label %.critedge2.i6.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i
  ]

.critedge2.i6.i.i.i:                              ; preds = %.lr.ph.i4.i.i.i, %.lr.ph.i4.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.066.1.i, i64 8 ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %i.gs, %.pn12.i.i.i
  br i1 %.not.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i, !llvm.loop !101

_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i: ; preds = %.critedge2.i6.i.i.i, %.lr.ph.i4.i.i.i, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i
  %.sroa.066.2.i = phi ptr [ %i.gq, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.066.1.i, %.lr.ph.i4.i.i.i ], [ %i.gs, %.critedge2.i6.i.i.i ] ; 2 uses
  %.not106.i = icmp eq ptr %.sroa.066.2.i, %i.fd
  br i1 %.not106.i, label %._crit_edge131.loopexit.i, label %.lr.ph130.i

bb.aj:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i, %bb.m
  %.sroa.19.4 = phi ptr [ %.sroa.19.7, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i ], [ %.sroa.19.246, %bb.m ]
  %.sroa.9.4 = phi ptr [ %.sroa.9.6, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i ], [ %i.bg, %bb.m ]
  %.sroa.018.4 = phi ptr [ %.sroa.018.7, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i ], [ %.sroa.018.248, %bb.m ]
  %.0.i = phi i1 [ %.050.lcssa.i, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i ], [ %.049, %bb.m ]
  %i.gt = load ptr, ptr %5, align 8, !tbaa !81    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.g
  br i1 %i.gu, label %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.gt) #13
  br label %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit

_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit: ; preds = %.lr.ph.i.i, %bb.k, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i
  %.sroa.19.8 = phi ptr [ %.sroa.19.4, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i ], [ %.sroa.19.246, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.sroa.19.246, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.sroa.19.246, %bb.k ], [ %.sroa.19.246, %.lr.ph.i.i ] ; 2 uses
  %.sroa.9.7 = phi ptr [ %.sroa.9.4, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i ], [ %i.bg, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %i.bg, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %i.bg, %bb.k ], [ %i.bg, %.lr.ph.i.i ] ; 2 uses
  %.sroa.018.8 = phi ptr [ %.sroa.018.4, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i ], [ %.sroa.018.248, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.sroa.018.248, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.sroa.018.248, %bb.k ], [ %.sroa.018.248, %.lr.ph.i.i ] ; 3 uses
  %.1.i = phi i1 [ %.0.i, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i ], [ %.049, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.049, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.049, %bb.k ], [ %.049, %.lr.ph.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.9.7, %.sroa.018.8
  br i1 %.not, label %._crit_edge, label %bb.j, !llvm.loop !126

._crit_edge:                                      ; preds = %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit, %.preheader
  %.sroa.018.2.lcssa44 = phi ptr [ %.sroa.018.1, %.preheader ], [ %.sroa.018.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 3 uses
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.1, %.preheader ], [ %.sroa.19.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ]
  %.0.lcssa = phi i1 [ false, %.preheader ], [ %.1.i, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.018.2.lcssa44, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  %i.gv = ptrtoint ptr %.sroa.018.2.lcssa44 to i64
  %i.gw = ptrtoint ptr %.sroa.19.2.lcssa to i64
  %i.gx = sub i64 %i.gw, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.2.lcssa44, i64 noundef %i.gx) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EED2Ev.exit: ; preds = %bb.a, %._crit_edge, %bb.al
  %.0.lcssa90 = phi i1 [ %.0.lcssa, %bb.al ], [ %.0.lcssa, %._crit_edge ], [ false, %bb.a ]
  ret i1 %.0.lcssa90
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17createFuncSigOptsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes11FuncSigOptsESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11, !noalias !127 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !130, !noalias !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.c, align 8, !tbaa !135, !noalias !127
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 11, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !136, !noalias !127
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes11FuncSigOptsE, i64 16), ptr %i.a, align 8, !tbaa !137, !noalias !127
  store ptr %i.a, ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes11FuncSigOptsD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

declare noundef zeroext i1 @_ZN6hermes12getCallSitesEPNS_8FunctionERN4llvh15SmallVectorImplIPNS_8CallInstEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.140") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !99     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100  ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !15     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !17

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !19, !llvm.loop !142

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !18

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !144
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
end_hunk_1
