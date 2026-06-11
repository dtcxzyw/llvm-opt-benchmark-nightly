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
define hidden noundef zeroext i1 @_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
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
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #11 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  store ptr %.sroa.015.041, ptr %i.bd, align 8, !tbaa !15
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.h, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %.sroa.018.040, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.018.040, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.040, i64 noundef %i.au) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.e, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %.sroa.19.1 = phi ptr [ %.sroa.19.038, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.bg, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.19.038, %bb.e ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.039, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.bf, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.018.1 = phi ptr [ %.sroa.018.040, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.bc, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.018.040, %bb.e ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.015.041, i64 8
  %.sroa.015.0 = load ptr, ptr %i.bh, align 8, !tbaa !7 ; 2 uses
  %.not27 = icmp eq ptr %.sroa.015.0, %i.c
  br i1 %.not27, label %.preheader, label %bb.b

bb.j:                                             ; preds = %.lr.ph50, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
  %.049 = phi i1 [ false, %.lr.ph50 ], [ %.1.i, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 7 uses
  %.sroa.018.248 = phi ptr [ %.sroa.018.1, %.lr.ph50 ], [ %.sroa.018.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 7 uses
  %.sroa.9.247 = phi ptr [ %.sroa.9.1, %.lr.ph50 ], [ %.sroa.9.7, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ]
  %.sroa.19.246 = phi ptr [ %.sroa.19.1, %.lr.ph50 ], [ %.sroa.19.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 8 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.9.247, i64 -8 ; 8 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 80 ; 2 uses
  %.sroa.028.042.i.i = load ptr, ptr %i.bk, align 8, !tbaa !7 ; 2 uses
  %.not3343.not.i.i = icmp eq ptr %.sroa.028.042.i.i, %i.bl
  br i1 %.not3343.not.i.i, label %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %bb.j, %.critedge.i.i
  %.sroa.028.044.i.i = phi ptr [ %.sroa.028.0.i.i, %.critedge.i.i ], [ %.sroa.028.042.i.i, %bb.j ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 56 ; 2 uses
  %.sroa.024.039.i.i = load ptr, ptr %i.bm, align 8, !tbaa !7 ; 2 uses
  %.not3440.i.i = icmp eq ptr %.sroa.024.039.i.i, %i.bn
  br i1 %.not3440.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph46.i.i, %bb.l
  %.sroa.024.041.i.i = phi ptr [ %.sroa.024.0.i.i, %bb.l ], [ %.sroa.024.039.i.i, %.lr.ph46.i.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.024.041.i.i, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !25
  switch i8 %i.bp, label %bb.l [
    i8 55, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
    i8 93, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.024.041.i.i, i32 noundef 0) #13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load double, ptr %i.br, align 8, !tbaa !36 ; 4 uses
  %i.bt = fcmp ule double %i.bs, f0x41DFFFFFFFC00000
  %i.bu = fcmp uge double %i.bs, f0xC1E0000000000000
  %i.bv = fcmp ord double %i.bs, 0.000000e+00
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bu)
  %i.bw = fptosi double %i.bs to i32
  %i.bx = and i32 %i.bw, 255
  %i.by = icmp eq i32 %i.bx, 45
  br i1 %i.by, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.024.041.i.i, i64 8
  %.sroa.024.0.i.i = load ptr, ptr %i.bz, align 8, !tbaa !7 ; 2 uses
  %.not34.i.i = icmp eq ptr %.sroa.024.0.i.i, %i.bn
  br i1 %.not34.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.critedge.i.i:                                    ; preds = %bb.l, %.lr.ph46.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 8
  %.sroa.028.0.i.i = load ptr, ptr %i.ca, align 8, !tbaa !7 ; 2 uses
  %.not33.not.i.i = icmp eq ptr %.sroa.028.0.i.i, %i.bl
  br i1 %.not33.not.i.i, label %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, label %.lr.ph46.i.i

_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i: ; preds = %.critedge.i.i, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !25
  switch i8 %i.cc, label %bb.m [
    i8 -127, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
    i8 -125, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
  ]

bb.m:                                             ; preds = %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !41
  store ptr %i.ce, ptr %4, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %i.g, ptr %5, align 8, !tbaa !81
  store i32 0, ptr %i.h, align 8, !tbaa !82
  store i32 8, ptr %i.i, align 4, !tbaa !83
  %i.cf = call noundef zeroext i1 @_ZN6hermes12getCallSitesEPNS_8FunctionERN4llvh15SmallVectorImplIPNS_8CallInstEEE(ptr noundef nonnull %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  br i1 %i.cf, label %bb.n, label %bb.aj

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 104 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !82 ; 5 uses
  %i.cj = zext i32 %i.ci to i64                   ; 5 uses
  %i.ck = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %i.j, ptr %6, align 8, !tbaa !81
  store i32 8, ptr %i.l, align 4, !tbaa !83
  store i32 0, ptr %i.k, align 8, !tbaa !82
  %i.cl = icmp ugt i32 %i.ci, 8
  br i1 %i.cl, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull %i.j, i64 noundef %i.cj, i64 noundef 16) #13
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !81 ; 2 uses
  store i32 %i.ci, ptr %i.k, align 8, !tbaa !82
  %i.cm = shl nuw nsw i64 %i.cj, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.cm
  br label %.lr.ph.i.i.i.i.i.preheader.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.ci, ptr %i.k, align 8, !tbaa !82
  %i.co = shl nuw nsw i64 %i.cj, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.co
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.o, %.thread.i
  %i.cq = phi ptr [ %i.cn, %.thread.i ], [ %i.cp, %bb.o ]
  %i.cr = phi ptr [ %.pre.i.i, %.thread.i ], [ %i.j, %bb.o ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  store ptr %i.ck, ptr %.07.i.i.i.i.i.i, align 8
  %.sroa.492.0..07.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 8
  store i8 0, ptr %.sroa.492.0..07.i.i.i.i.i.sroa_idx.i, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.cq
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !84

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.o
  %.not6.i.i.i.i.i174.i = phi i1 [ true, %bb.o ], [ false, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.m, ptr %7, align 8, !tbaa !81
  store i32 0, ptr %i.n, align 8, !tbaa !82
  store i32 8, ptr %i.o, align 4, !tbaa !83
  %i.ct = load ptr, ptr %5, align 8, !tbaa !81    ; 2 uses
  %i.cu = load i32, ptr %i.h, align 8, !tbaa !82  ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %.idx.i = shl nuw nsw i64 %i.cv, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i
  %.not112.i = icmp eq i32 %i.cu, 0
  br i1 %.not112.i, label %._crit_edge115.i, label %.lr.ph114.i

._crit_edge115.i:                                 ; preds = %._crit_edge111.i, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i
  %i.cx = load ptr, ptr %i.cg, align 8, !tbaa !81 ; 2 uses
  %i.cy = load i32, ptr %i.ch, align 8, !tbaa !82 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %.idx133.i = shl nuw nsw i64 %i.cz, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx133.i
  %.not57116.i = icmp eq i32 %i.cy, 0
  br i1 %.not57116.i, label %._crit_edge122.i, label %.lr.ph121.i

.lr.ph114.i:                                      ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, %._crit_edge111.i
  %.046113.i = phi ptr [ %i.dv, %._crit_edge111.i ], [ %i.ct, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i ] ; 2 uses
  %i.db = load ptr, ptr %.046113.i, align 8, !tbaa !85 ; 4 uses
  br i1 %.not6.i.i.i.i.i174.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.s, %.lr.ph114.i
  %i.dc = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.db) #13
  %i.dd = add i32 %i.dc, -2                       ; 2 uses
  %i.de = icmp ugt i32 %i.dd, 1
  br i1 %i.de, label %.lr.ph110.preheader.i, label %._crit_edge111.i

.lr.ph110.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count139.i = zext i32 %i.dd to i64
  br label %.lr.ph110.i

.lr.ph.i:                                         ; preds = %.lr.ph114.i, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %.lr.ph114.i ] ; 4 uses
  %i.df = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.db) #13
  %i.dg = add i32 %i.df, -3
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp samesign ult i64 %indvars.iv.i, %i.dh
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  %i.dj = trunc nuw i64 %indvars.iv.i to i32
  %i.dk = add i32 %i.dj, 3
  %i.dl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.db, i32 noundef %i.dk) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %.049.i = phi ptr [ %i.dl, %bb.p ], [ %i.ck, %.lr.ph.i ] ; 2 uses
  %i.dm = load i8, ptr %.049.i, align 8, !tbaa !25
  %i.dn = add i8 %i.dm, -109
  %i.do = icmp ult i8 %i.dn, 11
  %spec.select.i.i = select i1 %i.do, ptr %.049.i, ptr null ; 2 uses
  %i.dp = load ptr, ptr %6, align 8, !tbaa !81
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv.i ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !87, !range !90, !noundef !91
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.r, label %.sink.split.i

bb.r:                                             ; preds = %bb.q
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !92
  %.not60.i = icmp eq ptr %i.du, %spec.select.i.i
  br i1 %.not60.i, label %bb.s, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.q
  %.sink.i = phi ptr [ %spec.select.i.i, %bb.q ], [ null, %bb.r ]
  store ptr %.sink.i, ptr %i.dq, align 8, !tbaa !92
  store i8 1, ptr %i.dr, align 8, !tbaa !87
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cj
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !93

._crit_edge111.i:                                 ; preds = %bb.w, %._crit_edge.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.046113.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dv, %i.cw
  br i1 %.not.i, label %._crit_edge115.i, label %.lr.ph114.i

.lr.ph110.i:                                      ; preds = %bb.w, %.lr.ph110.preheader.i
  %indvars.iv136.i = phi i64 [ 1, %.lr.ph110.preheader.i ], [ %indvars.iv.next137.i, %bb.w ] ; 4 uses
  %i.dw = icmp samesign ugt i64 %indvars.iv136.i, %i.cj
  br i1 %i.dw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph110.i
  %i.dx = load ptr, ptr %i.cg, align 8, !tbaa !81
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %indvars.iv136.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !94
  %i.eb = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ea) #13
  br i1 %i.eb, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph110.i
  %i.ec = load i32, ptr %i.n, align 8, !tbaa !82  ; 2 uses
  %i.ed = load i32, ptr %i.o, align 4, !tbaa !83
  %.not.i61.i = icmp ult i32 %i.ec, %i.ed
  br i1 %.not.i61.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i, label %bb.v, !prof !18

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.m, i64 noundef 0, i64 noundef 16) #13
  %.pre.i62.i = load i32, ptr %i.n, align 8, !tbaa !82
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i: ; preds = %bb.v, %bb.u
  %i.ee = phi i32 [ %.pre.i62.i, %bb.v ], [ %i.ec, %bb.u ]
  %i.ef = load ptr, ptr %7, align 8, !tbaa !81
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  store ptr %i.db, ptr %i.eh, align 1
  %.sroa.473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ei = trunc nuw i64 %indvars.iv136.i to i32
  store i32 %i.ei, ptr %.sroa.473.0..sroa_idx.i, align 1
  %i.ej = load i32, ptr %i.n, align 8, !tbaa !82
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.n, align 8, !tbaa !82
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i, %bb.t
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next137.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %._crit_edge111.i, label %.lr.ph110.i, !llvm.loop !95

._crit_edge122.i.loopexit:                        ; preds = %bb.y
  %i.el = or i1 %.049, %.151.i
  br label %._crit_edge122.i

._crit_edge122.i:                                 ; preds = %._crit_edge122.i.loopexit, %._crit_edge115.i
  %.050.lcssa.i = phi i1 [ %.049, %._crit_edge115.i ], [ %i.el, %._crit_edge122.i.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 20, i1 false)
  %i.em = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.en = load i32, ptr %i.n, align 8, !tbaa !82  ; 2 uses
  %i.eo = zext i32 %i.en to i64
  %.idx134.i = shl nuw nsw i64 %i.eo, 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx134.i
  %.not58123.i = icmp eq i32 %i.en, 0
  br i1 %.not58123.i, label %._crit_edge127.thread.i, label %.lr.ph126.i

.lr.ph121.i:                                      ; preds = %._crit_edge115.i, %bb.y
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %bb.y ], [ 0, %._crit_edge115.i ] ; 2 uses
  %.050119.i = phi i1 [ %.151.i, %bb.y ], [ false, %._crit_edge115.i ]
  %.053117.i = phi ptr [ %i.et, %bb.y ], [ %i.cx, %._crit_edge115.i ] ; 2 uses
  %9 = load ptr, ptr %6, align 8, !tbaa !81
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %indvars.iv141.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !92 ; 2 uses
  %.not59.i = icmp eq ptr %i.er, null
  br i1 %.not59.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph121.i
  %i.es = load ptr, ptr %.053117.i, align 8, !tbaa !94
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.es, ptr noundef nonnull %i.er) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph121.i
  %.151.i = phi i1 [ true, %bb.x ], [ %.050119.i, %.lr.ph121.i ] ; 2 uses
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1
  %i.et = getelementptr inbounds nuw i8, ptr %.053117.i, i64 8 ; 2 uses
  %.not57.i = icmp eq ptr %i.et, %i.da
  br i1 %.not57.i, label %._crit_edge122.i.loopexit, label %.lr.ph121.i

._crit_edge127.i:                                 ; preds = %bb.ab
  %.pre.i.a = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  %.pre143.i.a = load ptr, ptr %8, align 8, !tbaa !99 ; 7 uses
  %.pre145.i = load i32, ptr %.phi.trans.insert144.i, align 8, !tbaa !100 ; 2 uses
  %i.eu = icmp eq i32 %.pre.i.a, 0
  %i.ev = zext i32 %.pre145.i to i64              ; 4 uses
  br i1 %i.eu, label %._crit_edge127.thread.i, label %bb.z

._crit_edge127.thread.i:                          ; preds = %._crit_edge127.i, %._crit_edge122.i
  %i.ew = phi i64 [ %i.ev, %._crit_edge127.i ], [ 0, %._crit_edge122.i ] ; 2 uses
  %i.ex = phi ptr [ %.pre143.i.a, %._crit_edge127.i ], [ null, %._crit_edge122.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i

bb.z:                                             ; preds = %._crit_edge127.i
  %.idx.i.i63.i = shl nuw nsw i64 %i.ev, 3
  %i.ez = getelementptr i8, ptr %.pre143.i.a, i64 %.idx.i.i63.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i = icmp eq i32 %.pre145.i, 0
  br i1 %.not5.i5.i10.i2.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i

.lr.ph.i6.i12.i3.i.i.i:                           ; preds = %bb.z, %.critedge2.i8.i14.i6.i.i.i
  %.sroa.0.3.i4.i.i.i = phi ptr [ %i.fb, %.critedge2.i8.i14.i6.i.i.i ], [ %.pre143.i.a, %bb.z ] ; 3 uses
  %i.fa = load ptr, ptr %.sroa.0.3.i4.i.i.i, align 8, !tbaa !15
  %magicptr.i7.i13.i5.i.i.i = ptrtoint ptr %i.fa to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i:                       ; preds = %.lr.ph.i6.i12.i3.i.i.i, %.lr.ph.i6.i12.i3.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i = icmp eq ptr %i.fb, %i.ez
  br i1 %.not.i9.i15.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i, !llvm.loop !101

_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i.i, %.lr.ph.i6.i12.i3.i.i.i, %bb.z, %._crit_edge127.thread.i
  %i.fc = phi i64 [ %i.ew, %._crit_edge127.thread.i ], [ 0, %bb.z ], [ %i.ev, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.ev, %.critedge2.i8.i14.i6.i.i.i ]
  %i.fd = phi ptr [ %i.ex, %._crit_edge127.thread.i ], [ %.pre143.i.a, %bb.z ], [ %.pre143.i.a, %.lr.ph.i6.i12.i3.i.i.i ], [ %.pre143.i.a, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %.pn14.i.i.i = phi ptr [ %i.ey, %._crit_edge127.thread.i ], [ %.pre143.i.a, %bb.z ], [ %i.ez, %.critedge2.i8.i14.i6.i.i.i ], [ %.sroa.0.3.i4.i.i.i, %.lr.ph.i6.i12.i3.i.i.i ] ; 2 uses
  %.pn12.i.i.i = phi ptr [ %i.ey, %._crit_edge127.thread.i ], [ %i.ez, %bb.z ], [ %i.ez, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.ez, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fc ; 2 uses
  %.not106128.i = icmp eq ptr %.pn14.i.i.i, %i.fe
  br i1 %.not106128.i, label %._crit_edge131.i, label %.lr.ph130.i

.lr.ph126.i:                                      ; preds = %._crit_edge122.i, %bb.ab
  %.047124.i = phi ptr [ %i.fv, %bb.ab ], [ %i.em, %._crit_edge122.i ] ; 5 uses
  %i.ff = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.fg = getelementptr inbounds nuw i8, ptr %.047124.i, i64 8 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !104
  %i.fi = add i32 %i.fh, 2
  %i.fj = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.ff, i32 noundef %i.fi) #13
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !25
  %i.fl = add i8 %i.fk, -109
  %i.fm = icmp ult i8 %i.fl, 11
  br i1 %i.fm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fn = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !105
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !115
  store ptr %i.fr, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !123
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.140") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph126.i
  %i.fs = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.ft = load i32, ptr %i.fg, align 8, !tbaa !104
  %i.fu = add i32 %i.ft, 2
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(144) %i.fs, ptr noundef %i.ck, i32 noundef %i.fu) #13
  %i.fv = getelementptr inbounds nuw i8, ptr %.047124.i, i64 16 ; 2 uses
  %.not58.i = icmp eq ptr %i.fv, %i.ep
  br i1 %.not58.i, label %._crit_edge127.i, label %.lr.ph126.i

._crit_edge131.loopexit.i:                        ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.pre148.i = load ptr, ptr %8, align 8, !tbaa !99
  br label %._crit_edge131.i

._crit_edge131.i:                                 ; preds = %._crit_edge131.loopexit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  %.sroa.19.7 = phi ptr [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.19.6, %._crit_edge131.loopexit.i ]
  %.sroa.9.6 = phi ptr [ %i.bi, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.9.5, %._crit_edge131.loopexit.i ]
  %.sroa.018.7 = phi ptr [ %.sroa.018.248, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.018.6, %._crit_edge131.loopexit.i ]
  %i.fw = phi ptr [ %i.fd, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.pre148.i, %._crit_edge131.loopexit.i ]
  call void @_ZdlPv(ptr noundef %i.fw) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fx = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.m
  br i1 %i.fy, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge131.i
  call void @free(ptr noundef %i.fx) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i: ; preds = %bb.ac, %._crit_edge131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.fz = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.j
  br i1 %i.ga, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.fz) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i: ; preds = %bb.ad, %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.aj

.lr.ph130.i:                                      ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.sroa.19.5 = phi ptr [ %.sroa.19.6, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ]
  %.sroa.018.5 = phi ptr [ %.sroa.018.6, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.018.248, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 5 uses
  %i.gb = phi ptr [ %i.gs, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 3 uses
  %i.gc = phi ptr [ %.sroa.9.5, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %i.bi, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 3 uses
  %.sroa.066.0129.i = phi ptr [ %.sroa.066.2.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.pn14.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 2 uses
  %i.gd = load ptr, ptr %.sroa.066.0129.i, align 8, !tbaa !15 ; 2 uses
  %.not.i64.i = icmp eq ptr %i.gc, %i.gb
  br i1 %.not.i64.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph130.i
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !15
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i

bb.af:                                            ; preds = %.lr.ph130.i
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = ptrtoint ptr %.sroa.018.5 to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 6 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775800
  br i1 %i.gh, label %bb.ag, label %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9: ; preds = %bb.af
  %i.gi = ashr exact i64 %i.gg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i10 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gj = add nsw i64 %.sroa.speculated.i.i.i.i10, %i.gi ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.gi
  %i.gl = call i64 @llvm.umin.i64(i64 %i.gj, i64 1152921504606846975)
  %i.gm = select i1 %i.gk, i64 1152921504606846975, i64 %i.gl ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.gn = shl nuw nsw i64 %i.gm, 3
  %i.go = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #11 ; 4 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %i.gg ; 2 uses
  store ptr %i.gd, ptr %i.gp, align 8, !tbaa !15
  %i.gq = icmp sgt i64 %i.gg, 0
  br i1 %i.gq, label %bb.ah, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12

bb.ah:                                            ; preds = %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.go, ptr align 8 %.sroa.018.5, i64 %i.gg, i1 false)
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12: ; preds = %bb.ah, %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9
  %.not.i17.i.i.i13 = icmp eq ptr %.sroa.018.5, null
  br i1 %.not.i17.i.i.i13, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.5, i64 noundef %i.gg) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gm ; 2 uses
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ae
  %.sroa.19.6 = phi ptr [ %i.gr, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.19.5, %bb.ae ] ; 2 uses
  %.pn = phi ptr [ %i.gp, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.gc, %bb.ae ]
  %.sroa.018.6 = phi ptr [ %i.go, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.018.5, %bb.ae ] ; 2 uses
  %i.gs = phi ptr [ %i.gr, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.gb, %bb.ae ]
  %.sroa.9.5 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.066.0129.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i = icmp eq ptr %i.gt, %.pn12.i.i.i
  br i1 %.not5.i3.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i, %.critedge2.i6.i.i.i
  %.sroa.066.1.i = phi ptr [ %i.gv, %.critedge2.i6.i.i.i ], [ %i.gt, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %i.gu = load ptr, ptr %.sroa.066.1.i, align 8, !tbaa !15
  %magicptr.i5.i.i.i = ptrtoint ptr %i.gu to i64
  switch i64 %magicptr.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i [
    i64 -8, label %.critedge2.i6.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i
  ]

.critedge2.i6.i.i.i:                              ; preds = %.lr.ph.i4.i.i.i, %.lr.ph.i4.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.066.1.i, i64 8 ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %i.gv, %.pn12.i.i.i
  br i1 %.not.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i, !llvm.loop !101

end_hunk_0
