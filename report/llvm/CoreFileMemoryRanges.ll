Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CoreFileMemoryRanges?download=true
inline.NumInlined: 359
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%"class.lldb_private::Status" = type { %"class.llvm::Error", %"class.std::__cxx11::basic_string" }
%"class.llvm::Error" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.4", %"struct.std::array" }
%"class.llvm::formatv_object_base.base" = type <{ %"class.llvm::StringRef", %"class.llvm::ArrayRef", i8 }>
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.std::tuple.4" = type { %"struct.std::_Tuple_impl.5" }
%"struct.std::_Tuple_impl.5" = type { %"struct.std::_Tuple_impl.6", %"struct.std::_Head_base.12" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Tuple_impl.7", %"struct.std::_Head_base.11" }
%"struct.std::_Tuple_impl.7" = type { %"struct.std::_Tuple_impl.8", %"struct.std::_Head_base.10" }
%"struct.std::_Tuple_impl.8" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { i64 }
%"struct.std::_Head_base.10" = type { %"class.llvm::support::detail::FormatFunctor" }
%"struct.std::_Head_base.11" = type { %"class.llvm::support::detail::FormatFunctor" }
%"struct.std::_Head_base.12" = type { %"class.llvm::support::detail::FormatFunctor" }
%"struct.std::array" = type { [4 x %"class.llvm::function_ref"] }
%"class.llvm::function_ref" = type { ptr, i64 }
%"struct.lldb_private::AugmentedRangeData" = type { %"struct.lldb_private::RangeData", i64 }
%"struct.lldb_private::RangeData" = type { %"struct.lldb_private::Range", %"struct.lldb_private::CoreFileMemoryRange" }
%"struct.lldb_private::Range" = type { i64, i64 }
%"struct.lldb_private::CoreFileMemoryRange" = type <{ %"class.llvm::AddressRange", i32, [4 x i8] }>
%"class.llvm::AddressRange" = type { i64, i64 }

$_ZN12lldb_private6Status26FromErrorStringWithFormatvIJmmmmEEES0_PKcDpOT_ = comdat any

$_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE18ComputeUpperBoundsEmm = comdat any

$_ZSt13__stable_sortIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_T0_ = comdat any

$_ZSt21__inplace_stable_sortIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_T0_ = comdat any

$_ZSt29__stable_sort_adaptive_resizeIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_T0_T1_T2_ = comdat any

$_ZSt24__merge_sort_with_bufferIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_T0_T1_ = comdat any

$_ZSt16__merge_adaptiveIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_SI_T0_SJ_T1_T2_ = comdat any

$_ZSt17__merge_sort_loopIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_T0_T1_T2_ = comdat any

$_ZSt16__insertion_sortIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_T0_ = comdat any

$_ZSt22__merge_without_bufferIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_SI_T0_SJ_T1_ = comdat any

$_ZSt23__merge_adaptive_resizeIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_SI_T0_SJ_T1_SJ_T2_ = comdat any

$_ZSt17__rotate_adaptiveIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEES4_lET_S5_S5_S5_T1_S6_T0_S6_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerImvE6formatERKmRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE = comdat any

$_ZN4llvm9StringRef13consume_frontES0_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [87 x i8] c"Memory region at {0}::{1} has different permssions than overlapping region at {2}::{3}\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Core file memory ranges mutated outside of CalculateCoreFileSaveRanges\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private20CoreFileMemoryRanges26FinalizeCoreFileSaveRangesEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  tail call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 3 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.h
  tail call void @_ZSt13__stable_sortIPN12lldb_private18AugmentedRangeDataImmNS0_19CoreFileMemoryRangeEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorImmS2_Lj0ESt4lessIS2_EE4SortEvEUlRKNS0_9RangeDataImmS2_EESF_E_EEEvT_SI_T0_(ptr noundef %i.j, ptr noundef nonnull %i.k, ptr nonnull %i.i)
  %.pr.i = load i32, ptr %i.e, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %.pr.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %.lr.ph.preheader, label %_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE4SortEv.exit

_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE4SortEv.exit: ; preds = %bb.c
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noundef i64 @_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE18ComputeUpperBoundsEmm(ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef 0, i64 noundef %i.m) ; 0 uses
  %.pre = load i32, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.o = zext i32 %.pre to i64                    ; 2 uses
  %.03875 = add nsw i64 %i.o, -1                  ; 2 uses
  %.not76 = icmp eq i64 %.03875, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE4SortEv.exit
  %.0387593 = phi i64 [ %.03875, %_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE4SortEv.exit ], [ -1, %bb.c ]
  %4 = phi i64 [ %i.o, %_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE4SortEv.exit ], [ 0, %bb.c ]
  %i.p = phi i32 [ %.pre, %_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE4SortEv.exit ], [ 0, %bb.c ]
  %.pre84 = load ptr, ptr %1, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread
  %i.q = phi ptr [ %i.br, %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread ], [ %.pre84, %.lr.ph.preheader ] ; 7 uses
  %i.r = phi i32 [ %i.bs, %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread ], [ %i.p, %.lr.ph.preheader ] ; 6 uses
  %.03878 = phi i64 [ %.038, %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread ], [ %.0387593, %.lr.ph.preheader ] ; 5 uses
  %.038.in77 = phi i64 [ %.03878, %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread ], [ %4, %.lr.ph.preheader ] ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.03878 ; 6 uses
  %i.u = add i64 %.038.in77, -2                   ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.s
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.u ; 10 uses
  %i.x = select i1 %i.v, ptr %i.w, ptr null
  %.val = load i64, ptr %i.t, align 8, !tbaa !19  ; 4 uses
  %i.y = getelementptr i8, ptr %i.t, i64 8
  %.val40 = load i64, ptr %i.y, align 8, !tbaa !20
  %i.z = add i64 %.val40, %.val                   ; 3 uses
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !19  ; 5 uses
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread, label %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit

_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit: ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %i.w, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.ae = add i64 %i.ad, %i.aa                    ; 2 uses
  %.not67 = icmp ult i64 %i.ae, %.val
  br i1 %.not67, label %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit
  %i.af = getelementptr i8, ptr %i.t, i64 32
  %.val41 = load i32, ptr %i.af, align 8, !tbaa !36
  %i.ag = getelementptr i8, ptr %i.w, i64 32
  %.val42 = load i32, ptr %i.ag, align 8, !tbaa !36
  %i.ah = icmp eq i32 %.val41, %.val42
  br i1 %i.ah, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp eq i64 %.val, %i.ae
  %i.aj = icmp eq i64 %i.z, %i.aa
  %or.cond = or i1 %i.aj, %i.ai
  br i1 %or.cond, label %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.t, i64 8
  %i.al = getelementptr i8, ptr %i.w, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.am = load i64, ptr %i.t, align 8, !tbaa !19
  store i64 %i.am, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.an = load i64, ptr %i.t, align 8, !tbaa !19
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.ap = add i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !19
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !19
  %i.as = load i64, ptr %i.al, align 8, !tbaa !20
  %i.at = add i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.d, align 8, !tbaa !24
  call void @_ZN12lldb_private6Status26FromErrorStringWithFormatvIJmmmmEEES0_PKcDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %2, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.au = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2) #13 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %.sroa.speculated50 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %.val) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20
  %i.ax = add i64 %i.aw, %i.aa
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.ax) ; 2 uses
  %i.ay = sub i64 %.sroa.speculated, %.sroa.speculated50
  store i64 %.sroa.speculated50, ptr %i.w, align 8, !tbaa !19
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.speculated50, ptr %i.az, align 8, !tbaa !24
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.speculated, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !24
  %i.ba = trunc i64 %.03878 to i32
  %i.bb = trunc i64 %.038.in77 to i32             ; 3 uses
  %.not.i = icmp uge i32 %i.ba, %i.bb
  %i.bc = icmp ult i32 %i.r, %i.bb
  %or.cond66 = or i1 %.not.i, %i.bc
  br i1 %or.cond66, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = and i64 %.038.in77, 4294967295
  %i.be = and i64 %.03878, 4294967295
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.be ; 3 uses
  %.idx9.i = mul nuw nsw i64 %i.bd, 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx9.i ; 2 uses
  %narrow.i = sub nuw i32 %i.r, %i.bb             ; 3 uses
  %.idx10.i = zext i32 %narrow.i to i64
  %gepdiff.i = mul nuw nsw i64 %.idx10.i, 48      ; 2 uses
  %i.bh = icmp ugt i32 %narrow.i, 1
  br i1 %i.bh, label %bb.i, label %bb.j, !prof !25

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bf, ptr nonnull align 8 %i.bg, i64 %gepdiff.i, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.bi = icmp eq i32 %narrow.i, 1
  br i1 %i.bi, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i64 48, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %3, ptr noundef nonnull @.str.1) #13
  %i.bj = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3) #13 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %gepdiff.i
  %i.bl = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 48
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  store i32 %i.bq, ptr %i.e, align 8, !tbaa !35
  br label %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread

_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread: ; preds = %bb.e, %.lr.ph, %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit, %bb.m
  %i.br = phi ptr [ %i.q, %bb.e ], [ %i.q, %.lr.ph ], [ %i.q, %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit ], [ %i.bl, %bb.m ]
  %i.bs = phi i32 [ %i.r, %bb.e ], [ %i.r, %.lr.ph ], [ %i.r, %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit ], [ %i.bq, %bb.m ]
  %.038 = add i64 %.03878, -1                     ; 2 uses
  %.not = icmp eq i64 %.038, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !34

.loopexit:                                        ; preds = %_ZL8OverlapsPKN12lldb_private9RangeDataImmNS_19CoreFileMemoryRangeEEES4_.exit.thread, %_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE4SortEv.exit, %bb.l, %bb.f
  ret void
}

declare void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6Status26FromErrorStringWithFormatvIJmmmmEEES0_PKcDpOT_(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.llvm::formatv_object", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.a = load i64, ptr %2, align 8, !tbaa !24, !noalias !47
  %i.b = load i64, ptr %3, align 8, !tbaa !24, !noalias !47
  %i.c = load i64, ptr %4, align 8, !tbaa !24, !noalias !47
  %i.d = load i64, ptr %5, align 8, !tbaa !24, !noalias !47
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZN4llvm7formatvIJmmmmEEEDaPKcDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !47
  br label %_ZN4llvm7formatvIJmmmmEEEDaPKcDpOT_.exit

_ZN4llvm7formatvIJmmmmEEEDaPKcDpOT_.exit:         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  store ptr %1, ptr %8, align 8, !tbaa !28, !alias.scope !47
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !24, !alias.scope !47
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !49, !alias.scope !47
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !24, !alias.scope !47
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.h, align 8, !tbaa !53, !alias.scope !47
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 %i.d, ptr %i.i, align 8, !tbaa !24, !alias.scope !47
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i64 %i.c, ptr %i.j, align 8, !tbaa !24, !alias.scope !47
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i64 %i.b, ptr %i.k, align 8, !tbaa !24, !alias.scope !47
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i64 %i.a, ptr %i.l, align 8, !tbaa !24, !alias.scope !47
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.i to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %i.f, align 8, !alias.scope !47
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !47
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i, align 8, !alias.scope !47
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 %i.n, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !47
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i, align 8, !alias.scope !47
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i64 %i.o, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !47
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %.ptr.3.i.i.i.i, align 8, !alias.scope !47
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 %i.p, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !tbaa !30, !alias.scope !47
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !57, !alias.scope !58
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !60, !alias.scope !58
  store i8 0, ptr %i.q, align 8, !tbaa !30, !alias.scope !58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !58
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !64, !noalias !58
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %i.t, align 8, !tbaa !65, !noalias !58
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.u, align 4, !tbaa !66, !noalias !58
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !noalias !58
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !68, !noalias !58
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %7, ptr %i.w, align 8, !tbaa !70, !noalias !58
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #13
  %i.x = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(33) %8) #13 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !58
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %7) #13
  %i.y = load ptr, ptr %7, align 8, !tbaa !71     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.q
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm7formatvIJmmmmEEEDaPKcDpOT_.exit
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !30
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm7formatvIJmmmmEEEDaPKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE18ComputeUpperBoundsEmm(ptr noundef nonnull align 8 dereferenceable(17) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add i64 %2, %1
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.b ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 5 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !73
  %i.j = icmp ult i64 %1, %i.b
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZN12lldb_private15RangeDataVectorImmNS_19CoreFileMemoryRangeELj0ESt4lessIS1_EE18ComputeUpperBoundsEmm(ptr noundef nonnull align 8 dereferenceable(17) %0, i64 noundef %1, i64 noundef %i.b)
  %i.l = load i64, ptr %i.i, align 8, !tbaa !24
  %.sroa.speculated25 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.k) ; 2 uses
  store i64 %.sroa.speculated25, ptr %i.i, align 8, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i64 [ %.sroa.speculated25, %bb.b ], [ %i.h, %bb.a ]
  %i.n = add nuw i64 %i.b, 1                      ; 2 uses
  %i.o = icmp ult i64 %i.n, %2
  br i1 %i.o, label %bb.d, label %common.ret

common.ret:                                       ; preds = %bb.c, %bb.d
  %common.ret.op = phi i64 [ %.sroa.speculated, %bb.d ], [ %i.m, %bb.c ]
  ret i64 %common.ret.op
end_hunk_0
