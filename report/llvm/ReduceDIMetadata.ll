Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ReduceDIMetadata?download=true
inline.NumInlined: 779
inline.NumDeleted: 511
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::SetVector" = type { %"class.llvm::DenseSet", %"class.llvm::SmallVector" }
%"class.llvm::DenseSet" = type { %"class.llvm::detail::DenseSetImpl" }
%"class.llvm::detail::DenseSetImpl" = type { %"class.llvm::DenseMap" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"class.llvm::SetVector.0" = type { %"class.llvm::DenseSet.1", %"class.llvm::SmallVector.5" }
%"class.llvm::DenseSet.1" = type { %"class.llvm::detail::DenseSetImpl.2" }
%"class.llvm::detail::DenseSetImpl.2" = type { %"class.llvm::DenseMap.3" }
%"class.llvm::DenseMap.3" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.5" = type { %"class.llvm::SmallVectorImpl.6" }
%"class.llvm::SmallVectorImpl.6" = type { %"class.llvm::SmallVectorTemplateBase.7" }
%"class.llvm::SmallVectorTemplateBase.7" = type { %"class.llvm::SmallVectorTemplateCommon.8" }
%"class.llvm::SmallVectorTemplateCommon.8" = type { %"class.llvm::SmallVectorBase" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Tuple_impl.14", %"struct.std::_Head_base.17" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Tuple_impl.15", %"struct.std::_Head_base.16" }
%"struct.std::_Tuple_impl.15" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"struct.std::_Head_base.16" = type { i64 }
%"struct.std::_Head_base.17" = type { ptr }
%"class.llvm::SmallVector.18" = type { %"class.llvm::SmallVectorImpl.19", %"struct.llvm::SmallVectorStorage.22" }
%"class.llvm::SmallVectorImpl.19" = type { %"class.llvm::SmallVectorTemplateBase.20" }
%"class.llvm::SmallVectorTemplateBase.20" = type { %"class.llvm::SmallVectorTemplateCommon.21" }
%"class.llvm::SmallVectorTemplateCommon.21" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.22" = type { [128 x i8] }
%"class.llvm::Module::debug_compile_units_iterator" = type <{ ptr, i32, [4 x i8] }>
%"class.llvm::SmallVector.10" = type { %"class.llvm::SmallVectorImpl.6", %"struct.llvm::SmallVectorStorage.11" }
%"struct.llvm::SmallVectorStorage.11" = type { [48 x i8] }

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJPNS_6MDNodeEmS4_EENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJPNS_6MDNodeEmS4_EENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJPNS_6MDNodeEmS4_EENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt5tupleIJPNS_6MDNodeEmS4_EENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJPNS_6MDNodeEmS3_EELb0EE4growEm = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_6MDNodeELb1EE15growAndPushBackES2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [12 x i8] c"llvm.dbg.cu\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z28identifyUninterestingMDNodesRN4llvm6OracleERNS_11SmallVectorIPNS_6MDNodeELj6EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::SetVector", align 8   ; 10 uses
  %3 = alloca %"class.llvm::SetVector.0", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %"class.std::tuple", align 8        ; 11 uses
  %5 = alloca %"class.llvm::SmallVector.18", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  store i32 0, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !12
  %i.j = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not143 = icmp eq i32 %i.l, 0
  br i1 %.not143, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit
  %i.o = icmp eq ptr %.sroa.0105.1, %.sroa.9.1
  br i1 %i.o, label %._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = ptrtoint ptr %4 to i64
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit
  %.035147 = phi ptr [ %i.al, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit ], [ %i.j, %bb.a ] ; 3 uses
  %.sroa.0105.0146 = phi ptr [ %.sroa.0105.1, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.9.0145 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.19.0144 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.a ] ; 3 uses
  %i.u = load ptr, ptr %.035147, align 8, !tbaa !13 ; 2 uses
  %.not49 = icmp eq ptr %i.u, null
  br i1 %.not49, label %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.9.0145, %.sroa.19.0144
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.u, ptr %.sroa.9.0145, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.9.0145, i64 8
  br label %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %.sroa.9.0145 to i64
  %i.x = ptrtoint ptr %.sroa.0105.0146 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIPN4llvm6MDNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIPN4llvm6MDNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #14 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  %6 = load ptr, ptr %.035147, align 8, !tbaa !13
  store ptr %6, ptr %i.ah, align 8, !tbaa !13
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.f, label %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4llvm6MDNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %.sroa.0105.0146, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4llvm6MDNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0105.0146, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0146, i64 noundef %i.y) #15
  br label %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %.lr.ph
  %.sroa.19.1 = phi ptr [ %.sroa.19.0144, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.19.0144, %bb.c ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0145, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.v, %bb.c ] ; 3 uses
  %.sroa.0105.1 = phi ptr [ %.sroa.0105.0146, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIPN4llvm6MDNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0105.0146, %bb.c ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.035147, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.n
  br i1 %.not, label %.preheader, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph162, %_ZN4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit
  %.sroa.0105.2161 = phi ptr [ %.sroa.0105.1, %.lr.ph162 ], [ %.sroa.0105.5, %_ZN4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit ] ; 3 uses
  %.sroa.9.2160 = phi ptr [ %.sroa.9.1, %.lr.ph162 ], [ %.sroa.9.5, %_ZN4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit ]
  %.sroa.19.2159 = phi ptr [ %.sroa.19.1, %.lr.ph162 ], [ %.sroa.19.5, %_ZN4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.am = getelementptr inbounds i8, ptr %.sroa.9.2160, i64 -8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !13
  store ptr %i.an, ptr %i.a, align 8, !tbaa !13
  %i.ao = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6MDNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !15
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.ao, 1
  %i.ap = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.ap, label %bb.i, label %_ZN4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !11  ; 2 uses
  %i.as = load i32, ptr %i.i, align 4, !tbaa !12
  %.not.i.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6MDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.aq)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.at = zext i32 %i.ar to i64
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  store ptr %i.aq, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.h, align 8, !tbaa !11
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.h, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !13, !nonnull !23, !noundef !23 ; 6 uses
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !24
  switch i8 %i.az, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit.thread [
    i8 9, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 10, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 11, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 12, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 37, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 34, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 36, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 13, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 14, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 15, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 16, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 17, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 18, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 19, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 20, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 21, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 33, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 23, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 24, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 25, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 26, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 27, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 28, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 29, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 22, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 35, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
    i8 30, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
  ]

_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -24
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 -32
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit, %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit
  %storemerge = phi i64 [ 0, %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit ], [ %i.ea, %_ZNK4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit ] ; 5 uses
  %i.bd = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.be = and i64 %i.bd, 2
  %.not.i.i51 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i51, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit:          ; preds = %bb.m
  %i.bf = lshr i64 %i.bd, 6
  %i.bg = and i64 %i.bf, 15
  %i.bh = icmp ult i64 %storemerge, %i.bg
  br i1 %i.bh, label %bb.o, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit.thread.loopexit

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread:   ; preds = %bb.m
  %i.bi = load i32, ptr %i.ba, align 8, !tbaa !11
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp ult i64 %storemerge, %i.bj
  br i1 %i.bk, label %bb.n, label %_ZN4llvm16dyn_cast_or_nullINS_6DINodeENS_6MDNodeEEEDaPT0_.exit.thread.loopexit

bb.n:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !8
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

bb.o:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.bm = lshr i64 %i.bd, 2
  %i.bn = and i64 %i.bm, 15
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bo
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

_ZNK4llvm6MDNode10getOperandEj.exit:              ; preds = %bb.n, %bb.o
  %.sroa.0.0.i.i = phi ptr [ %i.bp, %bb.o ], [ %i.bl, %bb.n ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %storemerge
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !27 ; 7 uses
  %.not.i.i54 = icmp eq ptr %i.br, null
  br i1 %.not.i.i54, label %_ZNK4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !24
  %i.bt = icmp eq i8 %i.bs, 5
  br i1 %i.bt, label %_ZN4llvm16dyn_cast_or_nullINS_7MDTupleENS_9MDOperandEEEDaRKT0_.exit, label %_ZNK4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit

_ZN4llvm16dyn_cast_or_nullINS_7MDTupleENS_9MDOperandEEEDaRKT0_.exit: ; preds = %bb.p
  %i.bu = load ptr, ptr %3, align 8, !tbaa !30, !noalias !34
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !39, !noalias !34 ; 2 uses
  %i.bw = load i32, ptr %i.q, align 4, !tbaa !40, !noalias !34 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_7MDTupleENS_9MDOperandEEEDaRKT0_.exit
  %i.by = add i32 %i.bw, -1                       ; 2 uses
  %i.bz = ptrtoint ptr %i.br to i64
  %i.ca = mul i64 %i.bz, -4658895280553007687     ; 2 uses
  %i.cb = lshr i64 %i.ca, 31
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.by, %i.cd                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = lshr i64 %i.cf, 5
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !41
  %i.cj = and i32 %i.ce, 31
  %i.ck = lshr i32 %i.ci, %i.cj
  %i.cl = trunc i32 %i.ck to i1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !prof !42

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %bb.r
  %i.cm = phi i64 [ %i.cs, %bb.r ], [ %i.cf, %bb.q ]
  %.01119.i.i.i.i.i.i = phi i32 [ %i.cr, %bb.r ], [ %i.ce, %bb.q ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !13
  %i.cp = icmp eq ptr %i.br, %i.co
  br i1 %i.cp, label %_ZNK4llvm9SetVectorIPNS_6MDNodeENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit, label %bb.r, !prof !22

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cq = add nuw i32 %.01119.i.i.i.i.i.i, 1
  %i.cr = and i32 %i.cq, %i.by                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !41
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !prof !43

.loopexit:                                        ; preds = %bb.r, %_ZN4llvm16dyn_cast_or_nullINS_7MDTupleENS_9MDOperandEEEDaRKT0_.exit, %bb.q
  %i.cz = getelementptr inbounds i8, ptr %i.br, i64 -16
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.db = and i64 %i.da, 2
  %.not.i.i56 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i56, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.dc = trunc i64 %i.da to i32
  %i.dd = lshr i32 %i.dc, 6
  %i.de = and i32 %i.dd, 15
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit58

end_hunk_0
