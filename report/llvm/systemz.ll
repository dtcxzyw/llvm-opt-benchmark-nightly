Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/systemz?download=true
inline.NumInlined: 214
inline.NumDeleted: 151
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Error" = type { ptr }
%"class.llvm::iterator_range" = type { %"class.llvm::jitlink::LinkGraph::nested_collection_iterator", %"class.llvm::jitlink::LinkGraph::nested_collection_iterator" }
%"class.llvm::jitlink::LinkGraph::nested_collection_iterator" = type { %"class.llvm::mapped_iterator", %"class.llvm::mapped_iterator", %"class.llvm::detail::DenseSetImpl<llvm::jitlink::Block *, llvm::DenseMap<llvm::jitlink::Block *, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<llvm::jitlink::Block *>, llvm::detail::DenseSetPair<llvm::jitlink::Block *>>>::DenseSetIterator" }
%"class.llvm::mapped_iterator" = type <{ %"class.llvm::iterator_adaptor_base", %"class.llvm::callable_detail::Callable", [6 x i8] }>
%"class.llvm::iterator_adaptor_base" = type { %"class.llvm::DenseMapIterator" }
%"class.llvm::DenseMapIterator" = type { ptr, ptr, ptr, ptr }
%"class.llvm::callable_detail::Callable" = type { %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base" }
%"struct.std::_Optional_payload_base" = type { i8, i8 }
%"class.llvm::detail::DenseSetImpl<llvm::jitlink::Block *, llvm::DenseMap<llvm::jitlink::Block *, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<llvm::jitlink::Block *>, llvm::detail::DenseSetPair<llvm::jitlink::Block *>>>::DenseSetIterator" = type { %"class.llvm::DenseMapIterator.1" }
%"class.llvm::DenseMapIterator.1" = type { ptr, ptr, ptr, ptr }

$_ZN4llvm7jitlink9LinkGraph6blocksEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4llvm7jitlink7systemz18NullPointerContentE = local_unnamed_addr constant [8 x i8] zeroinitializer, align 1
@_ZN4llvm7jitlink7systemz24Pointer64JumpStubContentE = local_unnamed_addr constant [8 x i8] c"\C4\18\00\00\00\00\07\F1", align 1
@.str = private unnamed_addr constant [10 x i8] c"Pointer64\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Pointer32\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Pointer20\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Pointer16\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Pointer12\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Pointer8\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Delta64\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Delta32\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Delta16\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Delta32dbl\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Delta24dbl\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Delta16dbl\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Delta12dbl\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"NegDelta64\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"NegDelta32\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"DeltaPLT32dbl\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"DeltaPLT24dbl\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"DeltaPLT16dbl\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"DeltaPLT12dbl\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"DeltaPLT64\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"DeltaPLT32\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Delta64FromGOT\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Delta32FromGOT\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Delta16FromGOT\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Delta64PLTFromGOT\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Delta32PLTFromGOT\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Delta16PLTFromGOT\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Delta32GOTBase\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Delta32dblGOTBase\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"RequestGOTAndTransformToDelta64FromGOT\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"RequestGOTAndTransformToDelta32FromGOT\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"RequestGOTAndTransformToDelta20FromGOT\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"RequestGOTAndTransformToDelta16FromGOT\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"RequestGOTAndTransformToDelta12FromGOT\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"RequestGOTAndTransformToDelta32dbl\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"RequestTLSDescInGOTAndTransformToDelta64FromGOT\00", align 1
@switch.table._ZN4llvm7jitlink7systemz15getEdgeKindNameEh = private unnamed_addr constant [38 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr poison, ptr poison, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.27, ptr @.str.28], align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm7jitlink7systemz15getEdgeKindNameEh(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i8 %0, -2                ; 3 uses
  %i.a = icmp ult i8 %switch.tableidx, 38
  br i1 %i.a, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.b = tail call noundef ptr @_ZN4llvm7jitlink22getGenericEdgeKindNameEh(i8 noundef zeroext %0) #5
  br label %bb.c

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 274475253759, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm7jitlink7systemz15getEdgeKindNameEh, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %switch.load, %switch.lookup ]
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm7jitlink22getGenericEdgeKindNameEh(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink7systemz26optimizeGOTAndStubAccessesERNS0_9LinkGraphE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @_ZN4llvm7jitlink9LinkGraph6blocksEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %2, ptr noundef nonnull align 8 dereferenceable(312) %1)
  %.sroa.055.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1064.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.1064.0.copyload = load ptr, ptr %.sroa.1064.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.1168.0.copyload = load ptr, ptr %.sroa.1168.0..sroa_idx, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.052.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.sroa.454.0.copyload = load ptr, ptr %.sroa.454.0..sroa_idx, align 8 ; 2 uses
  %i.b = icmp ne ptr %.sroa.055.0.copyload, %.sroa.052.0.copyload
  %i.c = icmp ne ptr %.sroa.1168.0.copyload, %.sroa.454.0.copyload
  %.not3.i107 = select i1 %i.b, i1 true, i1 %i.c
  br i1 %.not3.i107, label %.lr.ph114, label %_ZN4llvm5ErrorD2Ev.exit

.lr.ph114:                                        ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8
  %i.d = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.e = ptrtoint ptr %.sroa.8.0.copyload to i64  ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = add nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5                         ; 2 uses
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  store ptr null, ptr %0, align 8, !tbaa !8
  ret void

bb.b:                                             ; preds = %.lr.ph114, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.1168.0112 = phi ptr [ %.sroa.1168.0.copyload, %.lr.ph114 ], [ %.sroa.1168.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 2 uses
  %.sroa.055.0111 = phi ptr [ %.sroa.055.0.copyload, %.lr.ph114 ], [ %.sroa.055.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 5 uses
  %.sroa.22.0110 = phi ptr [ %.sroa.22.0.copyload, %.lr.ph114 ], [ %.sroa.22.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.20.0109 = phi ptr [ %.sroa.20.0.copyload, %.lr.ph114 ], [ %.sroa.20.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.18.0108 = phi ptr [ %.sroa.18.0.copyload, %.lr.ph114 ], [ %.sroa.18.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 6 uses
  %i.j = load ptr, ptr %.sroa.1168.0112, align 8, !tbaa !12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %.not94 = icmp eq ptr %i.l, %i.n
  br i1 %.not94, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.1168.0112, i64 8
  %i.p = ptrtoint ptr %.sroa.18.0108 to i64
  %i.q = ptrtoint ptr %.sroa.20.0109 to i64       ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.t, %i.q
  %i.v = ashr exact i64 %i.u, 3                   ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.v, %i.s
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit

bb.c:                                             ; preds = %._crit_edge
  %i.w = add nsw i64 %i.s, 31
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = lshr i64 %i.v, 5                         ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0110, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16, !noalias !17
  %i.ab = trunc i64 %i.v to i32
  %i.ac = and i32 %i.ab, 31
  %i.ad = shl nsw i32 -1, %i.ac
  %i.ae = and i32 %i.aa, %i.ad                    ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.ag = add nuw nsw i64 %i.y, 1                 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.x
  br i1 %i.ah, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit, label %.lr.ph148

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph148
  %i.ai = add i64 %i.ak, 1                        ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.x
  br i1 %i.aj, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit, label %.lr.ph148, !llvm.loop !20

.lr.ph148:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.ak = phi i64 [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0110, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16, !noalias !17 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !20

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph148, %bb.c
  %.012.lcssa.i.i.i.i = phi i64 [ %i.y, %bb.c ], [ %i.ak, %.lr.ph148 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.ae, %bb.c ], [ %i.am, %.lr.ph148 ]
  %i.ao = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 8
  %i.aq = getelementptr i8, ptr %.sroa.20.0109, i64 %.idx.i.i.i.i
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.ap
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge, %._crit_edge.i.i.i.i
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.18.0108, %._crit_edge ], [ %i.ar, %._crit_edge.i.i.i.i ], [ %.sroa.18.0108, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.18.0108, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not21.i = icmp eq ptr %.sroa.055.0111, %.sroa.1064.0.copyload
  br i1 %.not21.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.055.0111, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22, !noalias !17 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24, !noalias !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37, !noalias !28
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ay
  %i.ba = icmp eq ptr %storemerge16.i.i.i.i, %i.az
  br i1 %i.ba, label %.lr.ph97, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit

.lr.ph97:                                         ; preds = %.lr.ph.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %.sroa.055.196 = phi ptr [ %storemerge16.i.i.i.i28, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %.sroa.055.0111, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.055.196, i64 24
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  %i.be = sdiv exact i64 %i.bd, 24                ; 3 uses
  %.not.i.i.i.i27 = icmp ult i64 %i.be, %i.g
  br i1 %.not.i.i.i.i27, label %bb.d, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

bb.d:                                             ; preds = %.lr.ph97
  %i.bf = lshr i64 %i.be, 5                       ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16, !noalias !17
  %i.bi = trunc i64 %i.be to i32
  %i.bj = and i32 %i.bi, 31
  %i.bk = shl nsw i32 -1, %i.bj
  %i.bl = and i32 %i.bh, %i.bk                    ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i33.preheader, label %._crit_edge.i.i.i.i29

.lr.ph.i.i.i.i33.preheader:                       ; preds = %bb.d
  %i.bn = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.i
  br i1 %i.bo, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph149

.lr.ph.i.i.i.i33:                                 ; preds = %.lr.ph149
  %i.bp = add i64 %i.br, 1                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.i
  br i1 %i.bq, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph149, !llvm.loop !38

.lr.ph149:                                        ; preds = %.lr.ph.i.i.i.i33.preheader, %.lr.ph.i.i.i.i33
  %i.br = phi i64 [ %i.bp, %.lr.ph.i.i.i.i33 ], [ %i.bn, %.lr.ph.i.i.i.i33.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !16, !noalias !17 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i.i33, label %._crit_edge.i.i.i.i29, !llvm.loop !38

._crit_edge.i.i.i.i29:                            ; preds = %.lr.ph149, %bb.d
  %.012.lcssa.i.i.i.i30 = phi i64 [ %i.bf, %bb.d ], [ %i.br, %.lr.ph149 ]
  %.0.lcssa.i.i.i.i31 = phi i32 [ %i.bl, %bb.d ], [ %i.bt, %.lr.ph149 ]
  %i.bv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i31, i1 true)
  %i.bw = zext nneg i32 %i.bv to i64
  %.idx.i.i.i.i32 = mul i64 %.012.lcssa.i.i.i.i30, 768
  %i.bx = getelementptr i8, ptr %.sroa.8.0.copyload, i64 %.idx.i.i.i.i32
  %i.by = getelementptr [24 x i8], ptr %i.bx, i64 %i.bw
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i33, %.lr.ph.i.i.i.i33.preheader, %._crit_edge.i.i.i.i29, %.lr.ph97
  %storemerge16.i.i.i.i28 = phi ptr [ %.sroa.7.0.copyload, %.lr.ph97 ], [ %i.by, %._crit_edge.i.i.i.i29 ], [ %.sroa.7.0.copyload, %.lr.ph.i.i.i.i33.preheader ], [ %.sroa.7.0.copyload, %.lr.ph.i.i.i.i33 ] ; 5 uses
  %.not.i.i = icmp eq ptr %storemerge16.i.i.i.i28, %.sroa.1064.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i28, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !22, !noalias !39 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !24, !noalias !42 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !51, !noalias !42 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !37, !noalias !42 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !52, !noalias !42
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = zext i32 %i.cg to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ck ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.cg, 0
  %or.cond.i.i.i.i.i = select i1 %i.cj, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cm = add nuw nsw i64 %i.ck, 31
  %i.cn = lshr i64 %i.cm, 5                       ; 2 uses
  %i.co = load i32, ptr %i.ce, align 4, !tbaa !16, !noalias !53 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.f
  %i.cq = icmp eq i64 %i.cn, 1
  br i1 %i.cq, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph150

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph150
  %i.cr = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %i.cn
  br i1 %i.cs, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph150, !llvm.loop !20

.lr.ph150:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ct = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !16, !noalias !53 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !20

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph150
  %i.cx = shl i64 %i.ct, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i, %bb.f
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.cx, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.co, %bb.f ], [ %i.cv, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.cy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.cc, i64 %.012.lcssa.i.i.i.i.i.i.i.i
  %i.db = getelementptr [8 x i8], ptr %i.da, i64 %i.cz
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.db, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.e ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dc = icmp eq ptr %.sroa.0.0.i, %i.cl
  br i1 %i.dc, label %.lr.ph97, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit: ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit
  %.sroa.18.2.a = phi ptr [ %.sroa.18.0108, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %.sroa.18.0108, %.lr.ph.i ], [ %i.cl, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.20.2.a = phi ptr [ %.sroa.20.0109, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %.sroa.20.0109, %.lr.ph.i ], [ %i.cc, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.22.2.a = phi ptr [ %.sroa.22.0110, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %.sroa.22.0110, %.lr.ph.i ], [ %i.ce, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.055.2.a = phi ptr [ %.sroa.055.0111, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %.sroa.055.0111, %.lr.ph.i ], [ %storemerge16.i.i.i.i28, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %storemerge16.i.i.i.i28, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ] ; 2 uses
  %.sroa.1168.2 = phi ptr [ %storemerge16.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %storemerge16.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ] ; 2 uses
  %i.dd = icmp ne ptr %.sroa.055.2.a, %.sroa.052.0.copyload
  %i.de = icmp ne ptr %.sroa.1168.2, %.sroa.454.0.copyload
  %.not3.i = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %.not3.i, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

.lr.ph:                                           ; preds = %bb.b, %bb.k
  %.sroa.047.095 = phi ptr [ %i.er, %bb.k ], [ %i.l, %bb.b ] ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.047.095, i64 24 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !56
  %i.dh = icmp eq i8 %i.dg, 17
  br i1 %i.dh, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.di = load ptr, ptr %.sroa.047.095, align 8, !tbaa !60
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !61 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !67
  %i.dn = icmp eq i64 %i.dm, 8
  br i1 %i.dn, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !76
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !77 ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = icmp eq i64 %i.du, 32
  br i1 %i.dv, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !60
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !61
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !14
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !60 ; 3 uses
  %.sroa.0.0.copyload.i26 = load i64, ptr %i.j, align 8, !tbaa !78
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.047.095, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !79
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !61
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.eg, align 8, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = and i64 %i.ei, 144115188075855871
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.047.095, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !80
  %i.em = add i64 %.sroa.0.0.copyload.i26, %i.ee
  %reass.sub = sub i64 %.sroa.0.0.copyload.i.i, %i.em
  %i.en = add i64 %reass.sub, 4294967296
  %i.eo = add i64 %i.en, %i.ej
  %i.ep = add i64 %i.eo, %i.el
  %i.eq = icmp ult i64 %i.ep, 8589934592
  br i1 %i.eq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 11, ptr %i.df, align 8, !tbaa !56
  store ptr %i.eb, ptr %.sroa.047.095, align 8, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %bb.h, %.lr.ph
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.047.095, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.er, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph6blocksEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81, !noalias !84 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89, !noalias !84 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !90, !noalias !84 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !91, !noalias !84
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx230 = mul nuw nsw i64 %i.j, 24             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx230 ; 14 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 5                         ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !16, !noalias !92 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !38

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16, !noalias !92 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !38

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph306
  %i.w = mul i64 %i.s, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow293 = mul nuw nsw i32 %i.x, 24
  %.idx292 = zext nneg i32 %narrow293 to i64
  %i.y = add i64 %.012.lcssa.i.i.i.i, %.idx292    ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %.idx230
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22, !noalias !95 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24, !noalias !98 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51, !noalias !98 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37, !noalias !98 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !52, !noalias !98
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %.idx295 = shl nuw nsw i64 %i.al, 3             ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx295
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.preheader.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !16, !noalias !107 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.a

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader.a, label %.lr.ph307

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader.a, label %.lr.ph307, !llvm.loop !20

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16, !noalias !107 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !20

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph307
  %3 = shl i64 %i.at, 8
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.d, %._crit_edge.i.loopexit.i.i.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %3, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.d ], [ %i.av, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %4 = shl nuw nsw i32 %i.ax, 3
  %.idx294 = zext nneg i32 %4 to i64
  %5 = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i, %.idx294 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ad, i64 %5
  %6 = icmp eq i64 %5, %.idx295
  br i1 %6, label %.lr.ph.preheader.a, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

.lr.ph.preheader.a:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.a
  %.in = add nuw nsw i64 %i.j, 31
  %7 = lshr i64 %.in, 5                           ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %i.az = phi i64 [ %i.bt, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.y, %.lr.ph.preheader.a ]
  %i.ba = add i64 %i.az, 24
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bb, %i.j
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

bb.e:                                             ; preds = %.lr.ph
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !16
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i30.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

.lr.ph.i.i.i.i30.preheader:                       ; preds = %bb.e
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %7
  br i1 %i.bl, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph308
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %7
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !38

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !16 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !38

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph308, %bb.e
  %.012.lcssa.i.i.i.i28 = phi i64 [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph308 ]
  %.0.lcssa.i.i.i.i29 = phi i32 [ %i.bi, %bb.e ], [ %i.bq, %.lr.ph308 ]
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28, 768
  %narrow = mul nuw nsw i32 %i.bs, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.bt = add i64 %.idx.i.i.i.i, %.idx            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bt   ; 3 uses
  %.not.i.i18 = icmp eq i64 %i.bt, %.idx230
  br i1 %.not.i.i18, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !22, !noalias !110 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24, !noalias !113 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !51, !noalias !113 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !37, !noalias !113 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !52, !noalias !113
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !16, !noalias !122 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !20

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !16, !noalias !122 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !20

._crit_edge.i.loopexit.i.i.i.i.i.i.i26:           ; preds = %.lr.ph309
  %i.ct = shl i64 %i.cp, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i.i.i21:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, %bb.g
  %.012.lcssa.i.i.i.i.i.i.i.i22 = phi i64 [ 0, %bb.g ], [ %i.ct, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %.0.lcssa.i.i.i.i.i.i.i.i23 = phi i32 [ %i.ck, %bb.g ], [ %i.cr, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.by, i64 %.012.lcssa.i.i.i.i.i.i.i.i22
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %._crit_edge.i.i.i.i.i.i.i.i21, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.i.i.i21 ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.0.0.i, %i.ch
  br i1 %i.cy, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph, %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i.preheader, %bb.a, %.lr.ph.i.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.sroa.989.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ay, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1490.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %2, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1691.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ad, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1892.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.af, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.074.1 = phi ptr [ %i.k, %.lr.ph.i.i.i.i30 ], [ %i.k, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.z, %.lr.ph.i.a ], [ %i.k, %.lr.ph ], [ %i.k, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.bu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %i.k, %.lr.ph.i.i.i.i30.preheader ], [ %i.k, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.074.1, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %.sroa.8183.0..sroa_idx, align 1
  %.sroa.10185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.10185.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.12187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %.sroa.12187.0..sroa_idx, align 8
  %.sroa.13188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.d, ptr %.sroa.13188.0..sroa_idx, align 8
  %.sroa.15190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %.sroa.15190.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.989.2, ptr %.sroa.17.0..sroa_idx.a, align 8
  %.sroa.18192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1490.2, ptr %.sroa.18192.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1691.2, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1892.2, ptr %.sroa.20.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.cz, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 1, ptr %.sroa.8198.0..sroa_idx, align 1
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %.sroa.11201.0..sroa_idx, align 8
  %.sroa.12202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.b, ptr %.sroa.12202.0..sroa_idx, align 8
  %.sroa.13203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.d, ptr %.sroa.13203.0..sroa_idx, align 8
  %.sroa.15205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %.sroa.15205.0..sroa_idx, align 1
  %.sroa.17207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17207.0..sroa_idx, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4llvm5ErrorE", !10, i64 0}
!10 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTSN4llvm7jitlink5BlockE", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSN4llvm7jitlink4EdgeE", !11, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv: argument 0"}
!19 = distinct !{!19, !"_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSN4llvm7jitlink7SectionE", !11, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSN4llvm8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEE", !26, i64 0, !27, i64 8, !5, i64 16, !5, i64 20}
!26 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_7jitlink5BlockEEE", !11, i64 0}
!27 = !{!"p1 int", !11, i64 0}
!28 = !{!29, !31, !33, !35, !18}
!29 = distinct !{!29, !30, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E5beginEv: argument 0"}
!30 = distinct !{!30, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E5beginEv"}
!31 = distinct !{!31, !32, !"_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5beginEv: argument 0"}
!32 = distinct !{!32, !"_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5beginEv"}
!33 = distinct !{!33, !34, !"_ZN4llvm7jitlink7Section6blocksEv: argument 0"}
!34 = distinct !{!34, !"_ZN4llvm7jitlink7Section6blocksEv"}
!35 = distinct !{!35, !36, !"_ZN4llvm7jitlink9LinkGraph16getSectionBlocksERNS0_7SectionE: argument 0"}
!36 = distinct !{!36, !"_ZN4llvm7jitlink9LinkGraph16getSectionBlocksERNS0_7SectionE"}
!37 = !{!25, !5, i64 20}
!38 = distinct !{!38, !21}
!39 = !{!40, !18}
!40 = distinct !{!40, !41, !"_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_: argument 0"}
!41 = distinct !{!41, !"_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_"}
!42 = !{!43, !45, !47, !49, !40, !18}
!43 = distinct !{!43, !44, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E5beginEv: argument 0"}
!44 = distinct !{!44, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E5beginEv"}
!45 = distinct !{!45, !46, !"_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5beginEv: argument 0"}
!46 = distinct !{!46, !"_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5beginEv"}
!47 = distinct !{!47, !48, !"_ZN4llvm7jitlink7Section6blocksEv: argument 0"}
!48 = distinct !{!48, !"_ZN4llvm7jitlink7Section6blocksEv"}
!49 = distinct !{!49, !50, !"_ZN4llvm7jitlink9LinkGraph16getSectionBlocksERNS0_7SectionE: argument 0"}
!50 = distinct !{!50, !"_ZN4llvm7jitlink9LinkGraph16getSectionBlocksERNS0_7SectionE"}
!51 = !{!25, !27, i64 8}
!52 = !{!25, !5, i64 16}
!53 = !{!54, !43, !45, !47, !49, !40, !18}
!54 = distinct !{!54, !55, !"_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!55 = distinct !{!55, !"_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE"}
!56 = !{!57, !6, i64 24}
!57 = !{!"_ZTSN4llvm7jitlink4EdgeE", !58, i64 0, !5, i64 8, !59, i64 16, !6, i64 24}
!58 = !{!"p1 _ZTSN4llvm7jitlink6SymbolE", !11, i64 0}
!59 = !{!"long", !6, i64 0}
!60 = !{!57, !58, i64 0}
!61 = !{!62, !66, i64 8}
!62 = !{!"_ZTSN4llvm7jitlink6SymbolE", !63, i64 0, !66, i64 8, !59, i64 16, !59, i64 23, !59, i64 23, !59, i64 23, !59, i64 23, !59, i64 23, !59, i64 23, !59, i64 24}
!63 = !{!"_ZTSN4llvm3orc15SymbolStringPtrE", !64, i64 0}
!64 = !{!"_ZTSN4llvm3orc19SymbolStringPtrBaseE", !65, i64 0}
!65 = !{!"p1 _ZTSN4llvm14StringMapEntryISt6atomicImEEE", !11, i64 0}
!66 = !{!"p1 _ZTSN4llvm7jitlink11AddressableE", !11, i64 0}
!67 = !{!68, !59, i64 32}
!68 = !{!"_ZTSN4llvm7jitlink5BlockE", !69, i64 0, !23, i64 16, !71, i64 24, !59, i64 32, !72, i64 40}
!69 = !{!"_ZTSN4llvm7jitlink11AddressableE", !70, i64 0, !59, i64 8, !59, i64 8, !59, i64 8, !59, i64 8, !59, i64 9}
!70 = !{!"_ZTSN4llvm3orc12ExecutorAddrE", !59, i64 0}
!71 = !{!"p1 omnipotent char", !11, i64 0}
!72 = !{!"_ZTSSt6vectorIN4llvm7jitlink4EdgeESaIS2_EE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN4llvm7jitlink4EdgeESaIS2_EE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN4llvm7jitlink4EdgeESaIS2_EE12_Vector_implE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN4llvm7jitlink4EdgeESaIS2_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!76 = !{!75, !15, i64 8}
!77 = !{!75, !15, i64 0}
!78 = !{!59, !59, i64 0}
!79 = !{!57, !5, i64 8}
!80 = !{!57, !59, i64 16}
!81 = !{!82, !83, i64 0}
!82 = !{!"_ZTSN4llvm8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEEE", !83, i64 0, !27, i64 8, !5, i64 16, !5, i64 20}
!83 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EEEE", !11, i64 0}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E5beginEv: argument 0"}
!86 = distinct !{!86, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E5beginEv"}
!87 = distinct !{!87, !88, !"_ZN4llvm7jitlink9LinkGraph8sectionsEv: argument 0"}
!88 = distinct !{!88, !"_ZN4llvm7jitlink9LinkGraph8sectionsEv"}
!89 = !{!82, !27, i64 8}
!90 = !{!82, !5, i64 20}
!91 = !{!82, !5, i64 16}
!92 = !{!93, !85, !87}
!93 = distinct !{!93, !94, !"_ZN4llvm16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EELb0EE9makeBeginEPSC_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!94 = distinct !{!94, !"_ZN4llvm16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EELb0EE9makeBeginEPSC_PKjjbRKNS_14DebugEpochBaseE"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_: argument 0"}
!97 = distinct !{!97, !"_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_"}
!98 = !{!99, !101, !103, !105, !96}
!99 = distinct !{!99, !100, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E5beginEv: argument 0"}
!100 = distinct !{!100, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E5beginEv"}
!101 = distinct !{!101, !102, !"_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5beginEv: argument 0"}
!102 = distinct !{!102, !"_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5beginEv"}
!103 = distinct !{!103, !104, !"_ZN4llvm7jitlink7Section6blocksEv: argument 0"}
!104 = distinct !{!104, !"_ZN4llvm7jitlink7Section6blocksEv"}
!105 = distinct !{!105, !106, !"_ZN4llvm7jitlink9LinkGraph16getSectionBlocksERNS0_7SectionE: argument 0"}
!106 = distinct !{!106, !"_ZN4llvm7jitlink9LinkGraph16getSectionBlocksERNS0_7SectionE"}
!107 = !{!108, !99, !101, !103, !105, !96}
!108 = distinct !{!108, !109, !"_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!109 = distinct !{!109, !"_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_: argument 0"}
!112 = distinct !{!112, !"_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_"}
!113 = !{!114, !116, !118, !120, !111}
!114 = distinct !{!114, !115, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E5beginEv: argument 0"}
!115 = distinct !{!115, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E5beginEv"}
!116 = distinct !{!116, !117, !"_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5beginEv: argument 0"}
!117 = distinct !{!117, !"_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5beginEv"}
!118 = distinct !{!118, !119, !"_ZN4llvm7jitlink7Section6blocksEv: argument 0"}
!119 = distinct !{!119, !"_ZN4llvm7jitlink7Section6blocksEv"}
!120 = distinct !{!120, !121, !"_ZN4llvm7jitlink9LinkGraph16getSectionBlocksERNS0_7SectionE: argument 0"}
!121 = distinct !{!121, !"_ZN4llvm7jitlink9LinkGraph16getSectionBlocksERNS0_7SectionE"}
!122 = !{!123, !114, !116, !118, !120, !111}
!123 = distinct !{!123, !124, !"_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!124 = distinct !{!124, !"_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EELb0EE9makeBeginEPS9_PKjjbRKNS_14DebugEpochBaseE"}
end_hunk_0
