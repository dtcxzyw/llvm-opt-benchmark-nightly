Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1081
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt8__detail15_List_node_base7_M_hookEPS0_
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_"(ptr %0, ptr %1) unnamed_addr #22 {
bb.a:
  %2 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %common.ret28, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.016.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i = icmp eq ptr %.sroa.0.016.i, %1
  br i1 %.not17.i, label %common.ret28, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.0.019.i = phi ptr [ %.sroa.0.016.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.i ] ; 7 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i, %bb.i ] ; 4 uses
  %i.h = getelementptr i8, ptr %.pn18.i, i64 24
  %.val.i.i = load i16, ptr %i.h, align 8, !tbaa !130 ; 4 uses
  %.val1.i.i = load i16, ptr %i.g, align 8, !tbaa !130
  %i.i = icmp ult i16 %.val.i.i, %.val1.i.i
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i, i64 16, i1 false), !tbaa.struct !126
  %i.j = ptrtoint ptr %.sroa.0.019.i to i64
  %i.k = sub i64 %i.j, %i.b                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32
  %i.o = sub nsw i64 0, %i.l
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.k, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %i.k, 16
  br i1 %i.q, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.r, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(10) %2, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.019.i, align 8, !tbaa !125
  %i.s = getelementptr i8, ptr %.pn18.i, i64 8
  %.val2.i10.i.i = load i16, ptr %i.s, align 8, !tbaa !130
  %i.t = icmp ult i16 %.val.i.i, %.val2.i10.i.i
  br i1 %i.t, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.07.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.011.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.0.i.i, i64 10, i1 false), !tbaa.struct !126
  %i.u = getelementptr i8, ptr %.sroa.07.011.i.i, i64 -24
  %.val2.i.i.i = load i16, ptr %i.u, align 8, !tbaa !130
  %i.v = icmp ult i16 %.val.i.i, %.val2.i.i.i
  br i1 %i.v, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i", !llvm.loop !12

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i": ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i, %bb.h ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.07.0.lcssa.i.i, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  store i16 %.val.i.i, ptr %.sroa.4.0..sroa_idx5.i.i, align 8, !tbaa !97
  br label %bb.i

bb.i:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %common.ret28, label %bb.c, !llvm.loop !13

common.ret28:                                     ; preds = %.preheader.i, %bb.b, %bb.i, %bb.j
  ret void

bb.j:                                             ; preds = %bb.a
  %i.w = lshr i64 %i.d, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.w ; 4 uses
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_"(ptr %0, ptr %i.x)
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_"(ptr %i.x, ptr %1)
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.a, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_"(ptr %0, ptr %i.x, ptr %1, i64 noundef %i.w, i64 noundef %i.aa)
  br label %common.ret28
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_"(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_"(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_"(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_SL_T2_"(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_"(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_T2_"(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #24 {
bb.a:
  %3 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 4 uses
  %4 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 24 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i"
  %i.g = phi i64 [ %i.cg, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i" ], [ %i.b, %bb.a ] ; 6 uses
  %.sroa.031.034.i = phi ptr [ %i.cf, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i" ], [ %0, %bb.a ] ; 38 uses
  %i.h = getelementptr i8, ptr %.sroa.031.034.i, i64 8 ; 6 uses
  %.sroa.0.019.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 16 ; 3 uses
  %i.i = getelementptr i8, ptr %.sroa.031.034.i, i64 24 ; 2 uses
  %.val.i.i.i = load i16, ptr %i.i, align 8, !tbaa !130
  %.val1.i.i.i = load i16, ptr %i.h, align 8, !tbaa !130 ; 2 uses
  %i.j = icmp ult i16 %.val.i.i.i, %.val1.i.i.i
  br i1 %i.j, label %bb.b, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr.i, i64 16, i1 false), !tbaa.struct !126
  %i.k = ptrtoint ptr %.sroa.0.019.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 32
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.034.i, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.l, 16
  br i1 %i.r, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.019.i.ptr.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, ptr noundef nonnull align 8 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.val1.i.i.1.pre.i = load i16, ptr %i.h, align 8, !tbaa !130
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.i"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i, %.lr.ph.i.i
  %.val1.i.i.1.i = phi i16 [ %.val1.i.i.1.pre.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i ], [ %.val1.i.i.i, %.lr.ph.i.i ]
  %.sroa.0.019.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 32 ; 6 uses
  %i.s = getelementptr i8, ptr %.sroa.031.034.i, i64 40 ; 2 uses
  %.val.i.i.1.i = load i16, ptr %i.s, align 8, !tbaa !130 ; 4 uses
  %i.t = icmp ult i16 %.val.i.i.1.i, %.val1.i.i.1.i
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.i"
  %.sroa.03.0.copyload.i.i.1.i = load ptr, ptr %.sroa.0.019.i.ptr.1.i, align 8, !tbaa !125
  %.val2.i10.i.i.1.i = load i16, ptr %i.i, align 8, !tbaa !130
  %i.u = icmp ult i16 %.val.i.i.1.i, %.val2.i10.i.i.1.i
  br i1 %i.u, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.1.i"

.lr.ph.i.i.1.i:                                   ; preds = %bb.f, %.lr.ph.i.i.1.i
  %.sroa.07.011.i.i.1.i = phi ptr [ %.sroa.0.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.sroa.0.019.i.ptr.1.i, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i.1.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i.1.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.011.i.i.1.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.0.i.i.1.i, i64 10, i1 false), !tbaa.struct !126
  %i.v = getelementptr i8, ptr %.sroa.07.011.i.i.1.i, i64 -24
  %.val2.i.i.i.1.i = load i16, ptr %i.v, align 8, !tbaa !130
  %i.w = icmp ult i16 %.val.i.i.1.i, %.val2.i.i.i.1.i
  br i1 %i.w, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.1.i", !llvm.loop !12

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.1.i": ; preds = %.lr.ph.i.i.1.i, %bb.f
  %.sroa.07.0.lcssa.i.i.1.i = phi ptr [ %.sroa.0.019.i.ptr.1.i, %bb.f ], [ %.sroa.0.0.i.i.1.i, %.lr.ph.i.i.1.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.1.i, ptr %.sroa.07.0.lcssa.i.i.1.i, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx5.i.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.1.i, i64 8
  store i16 %.val.i.i.1.i, ptr %.sroa.4.0..sroa_idx5.i.i.1.i, align 8, !tbaa !97
  br label %bb.k

bb.g:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr.1.i, i64 16, i1 false), !tbaa.struct !126
  %i.x = ptrtoint ptr %.sroa.0.019.i.ptr.1.i to i64
  %i.y = sub i64 %i.x, %i.g                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.h, !prof !127

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.y, 16
  br i1 %i.ab, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.019.i.ptr.1.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 48
  %i.ad = sub nsw i64 0, %i.z
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.034.i, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i: ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, ptr noundef nonnull align 8 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.k

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.1.i"
  %.sroa.0.019.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 48 ; 6 uses
  %i.af = getelementptr i8, ptr %.sroa.031.034.i, i64 56 ; 2 uses
  %.val.i.i.2.i = load i16, ptr %i.af, align 8, !tbaa !130 ; 4 uses
  %.val1.i.i.2.i = load i16, ptr %i.h, align 8, !tbaa !130
  %i.ag = icmp ult i16 %.val.i.i.2.i, %.val1.i.i.2.i
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.03.0.copyload.i.i.2.i = load ptr, ptr %.sroa.0.019.i.ptr.2.i, align 8, !tbaa !125
  %.val2.i10.i.i.2.i = load i16, ptr %i.s, align 8, !tbaa !130
  %i.ah = icmp ult i16 %.val.i.i.2.i, %.val2.i10.i.i.2.i
  br i1 %i.ah, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.2.i"

.lr.ph.i.i.2.i:                                   ; preds = %bb.l, %.lr.ph.i.i.2.i
  %.sroa.07.011.i.i.2.i = phi ptr [ %.sroa.0.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.sroa.0.019.i.ptr.2.i, %bb.l ] ; 3 uses
  %.sroa.0.0.i.i.2.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i.2.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.011.i.i.2.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.0.i.i.2.i, i64 10, i1 false), !tbaa.struct !126
  %i.ai = getelementptr i8, ptr %.sroa.07.011.i.i.2.i, i64 -24
  %.val2.i.i.i.2.i = load i16, ptr %i.ai, align 8, !tbaa !130
  %i.aj = icmp ult i16 %.val.i.i.2.i, %.val2.i.i.i.2.i
  br i1 %i.aj, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.2.i", !llvm.loop !12

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.2.i": ; preds = %.lr.ph.i.i.2.i, %bb.l
  %.sroa.07.0.lcssa.i.i.2.i = phi ptr [ %.sroa.0.019.i.ptr.2.i, %bb.l ], [ %.sroa.0.0.i.i.2.i, %.lr.ph.i.i.2.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.2.i, ptr %.sroa.07.0.lcssa.i.i.2.i, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx5.i.i.2.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.2.i, i64 8
  store i16 %.val.i.i.2.i, ptr %.sroa.4.0..sroa_idx5.i.i.2.i, align 8, !tbaa !97
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr.2.i, i64 16, i1 false), !tbaa.struct !126
  %i.ak = ptrtoint ptr %.sroa.0.019.i.ptr.2.i to i64
  %i.al = sub i64 %i.ak, %i.g                     ; 3 uses
  %i.am = ashr exact i64 %i.al, 4                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %bb.p, label %bb.n, !prof !127

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp eq i64 %i.al, 16
  br i1 %i.ao, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.019.i.ptr.2.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i

bb.p:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 64
  %i.aq = sub nsw i64 0, %i.am
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.034.i, i64 %i.al, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, ptr noundef nonnull align 8 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.q

bb.q:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.2.i"
  %.sroa.0.019.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 64 ; 6 uses
  %i.as = getelementptr i8, ptr %.sroa.031.034.i, i64 72 ; 2 uses
  %.val.i.i.3.i = load i16, ptr %i.as, align 8, !tbaa !130 ; 4 uses
  %.val1.i.i.3.i = load i16, ptr %i.h, align 8, !tbaa !130
  %i.at = icmp ult i16 %.val.i.i.3.i, %.val1.i.i.3.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.03.0.copyload.i.i.3.i = load ptr, ptr %.sroa.0.019.i.ptr.3.i, align 8, !tbaa !125
  %.val2.i10.i.i.3.i = load i16, ptr %i.af, align 8, !tbaa !130
  %i.au = icmp ult i16 %.val.i.i.3.i, %.val2.i10.i.i.3.i
  br i1 %i.au, label %.lr.ph.i.i.3.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.3.i"

.lr.ph.i.i.3.i:                                   ; preds = %bb.r, %.lr.ph.i.i.3.i
  %.sroa.07.011.i.i.3.i = phi ptr [ %.sroa.0.0.i.i.3.i, %.lr.ph.i.i.3.i ], [ %.sroa.0.019.i.ptr.3.i, %bb.r ] ; 3 uses
  %.sroa.0.0.i.i.3.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i.3.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.011.i.i.3.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.0.i.i.3.i, i64 10, i1 false), !tbaa.struct !126
  %i.av = getelementptr i8, ptr %.sroa.07.011.i.i.3.i, i64 -24
  %.val2.i.i.i.3.i = load i16, ptr %i.av, align 8, !tbaa !130
  %i.aw = icmp ult i16 %.val.i.i.3.i, %.val2.i.i.i.3.i
  br i1 %i.aw, label %.lr.ph.i.i.3.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.3.i", !llvm.loop !12

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.3.i": ; preds = %.lr.ph.i.i.3.i, %bb.r
  %.sroa.07.0.lcssa.i.i.3.i = phi ptr [ %.sroa.0.019.i.ptr.3.i, %bb.r ], [ %.sroa.0.0.i.i.3.i, %.lr.ph.i.i.3.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.3.i, ptr %.sroa.07.0.lcssa.i.i.3.i, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx5.i.i.3.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.3.i, i64 8
  store i16 %.val.i.i.3.i, ptr %.sroa.4.0..sroa_idx5.i.i.3.i, align 8, !tbaa !97
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr.3.i, i64 16, i1 false), !tbaa.struct !126
  %i.ax = ptrtoint ptr %.sroa.0.019.i.ptr.3.i to i64
  %i.ay = sub i64 %i.ax, %i.g                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 4                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.v, label %bb.t, !prof !127

bb.t:                                             ; preds = %bb.s
  %i.bb = icmp eq i64 %i.ay, 16
  br i1 %i.bb, label %bb.u, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.019.i.ptr.3.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i

bb.v:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 80
  %i.bd = sub nsw i64 0, %i.az
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.034.i, i64 %i.ay, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, ptr noundef nonnull align 8 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.w

bb.w:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.3.i"
  %.sroa.0.019.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 80 ; 6 uses
  %i.bf = getelementptr i8, ptr %.sroa.031.034.i, i64 88 ; 2 uses
  %.val.i.i.4.i = load i16, ptr %i.bf, align 8, !tbaa !130 ; 4 uses
  %.val1.i.i.4.i = load i16, ptr %i.h, align 8, !tbaa !130
  %i.bg = icmp ult i16 %.val.i.i.4.i, %.val1.i.i.4.i
  br i1 %i.bg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.03.0.copyload.i.i.4.i = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !125
  %.val2.i10.i.i.4.i = load i16, ptr %i.as, align 8, !tbaa !130
  %i.bh = icmp ult i16 %.val.i.i.4.i, %.val2.i10.i.i.4.i
  br i1 %i.bh, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.4.i"

.lr.ph.i.i.4.i:                                   ; preds = %bb.x, %.lr.ph.i.i.4.i
  %.sroa.07.011.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.x ] ; 3 uses
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i.4.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.011.i.i.4.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.0.i.i.4.i, i64 10, i1 false), !tbaa.struct !126
  %i.bi = getelementptr i8, ptr %.sroa.07.011.i.i.4.i, i64 -24
  %.val2.i.i.i.4.i = load i16, ptr %i.bi, align 8, !tbaa !130
  %i.bj = icmp ult i16 %.val.i.i.4.i, %.val2.i.i.i.4.i
  br i1 %i.bj, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.4.i", !llvm.loop !12

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.4.i": ; preds = %.lr.ph.i.i.4.i, %bb.x
end_hunk_0
