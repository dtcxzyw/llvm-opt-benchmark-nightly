Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1081
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_T2_":bb.a
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 4                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.z, label %bb.aa, !prof !127

bb.z:                                             ; preds = %bb.y
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %5, i64 %i.ao, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_SL_T1_T2_.exit"

bb.aa:                                            ; preds = %bb.y
  %i.at = icmp eq i64 %i.ao, 16
  br i1 %i.at, label %bb.ab, label %"_ZSt21__move_merge_adaptiveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_SL_T1_T2_.exit"

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.au, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !126
  br label %"_ZSt21__move_merge_adaptiveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_SL_T1_T2_.exit"

bb.ac:                                            ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aj, ptr noundef nonnull align 8 dereferenceable(10) %.0.i, i64 10, i1 false), !tbaa.struct !126
  %i.av = icmp eq ptr %5, %.0.i
  br i1 %i.av, label %"_ZSt21__move_merge_adaptiveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_SL_T1_T2_.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aw = getelementptr inbounds i8, ptr %.0.i, i64 -16
  br label %bb.w, !llvm.loop !640

"_ZSt21__move_merge_adaptiveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_SL_T1_T2_.exit": ; preds = %bb.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.s, %bb.r, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #22 {
bb.a:
  %5 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 12 uses
  %6 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 12 uses
  %7 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 4 uses
  %8 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond83 = or i1 %i.a, %i.b
  br i1 %or.cond83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit
  %.tr7989 = phi i64 [ %4, %.lr.ph ], [ %i.cf, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit ] ; 4 uses
  %.tr7888 = phi i64 [ %3, %.lr.ph ], [ %i.ce, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit ] ; 4 uses
  %.tr7686 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit ] ; 13 uses
  %.tr84 = phi ptr [ %0, %.lr.ph ], [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit ] ; 8 uses
  %i.d = add nsw i64 %.tr7989, %.tr7888
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr7686, i64 8
  %.val.i = load i16, ptr %i.f, align 8, !tbaa !130
  %i.g = getelementptr i8, ptr %.tr84, i64 8
  %.val1.i = load i16, ptr %i.g, align 8, !tbaa !130
  %i.h = icmp ult i16 %.val.i, %.val1.i
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.tr84, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.tr84, ptr noundef nonnull align 8 dereferenceable(10) %.tr7686, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.tr7686, ptr noundef nonnull align 8 dereferenceable(10) %8, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.tr7888, %.tr7989
  %i.j = ptrtoint ptr %.tr7686 to i64             ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %.tr7888, 2                     ; 2 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %.tr84, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val = load i16, ptr %i.m, align 8
  %i.n = sub i64 %i.c, %i.j
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.07.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7686, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.q = lshr i64 %.07.i, 1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.06.i, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val.i.i = load i16, ptr %i.s, align 8, !tbaa !130
  %i.t = icmp ult i16 %.val.i.i, %.val            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.07.i, %i.v
  %.sroa.02.1.i = select i1 %i.t, ptr %i.u, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.t, i64 %i.w, i64 %i.q      ; 2 uses
  %i.x = icmp sgt i64 %.1.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit", !llvm.loop !14

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit" ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit" ], [ %.tr7686, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.j
  %i.z = ashr exact i64 %i.y, 4
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.e
  %i.aa = sdiv i64 %.tr7989, 2                    ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %.tr7686, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val50 = load i16, ptr %i.ac, align 8
  %i.ad = ptrtoint ptr %.tr84 to i64              ; 3 uses
  %i.ae = sub i64 %i.j, %i.ad
  %i.af = ashr exact i64 %i.ae, 4                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit54, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56
  %.07.i57 = phi i64 [ %.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56 ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ] ; 2 uses
  %.sroa.02.06.i58 = phi ptr [ %.sroa.02.1.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56 ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ] ; 2 uses
  %i.ah = lshr i64 %.07.i57, 1                    ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.06.i58, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val2.i.i = load i16, ptr %i.aj, align 8, !tbaa !130
  %i.ak = icmp ult i16 %.val50, %.val2.i.i        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = xor i64 %i.ah, -1
  %i.an = add nsw i64 %.07.i57, %i.am
  %.sroa.02.1.i61 = select i1 %i.ak, ptr %.sroa.02.06.i58, ptr %i.al ; 3 uses
  %.1.i62 = select i1 %i.ak, i64 %i.ah, i64 %i.an ; 2 uses
  %i.ao = icmp sgt i64 %.1.i62, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit", !llvm.loop !15

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56
  %.pre93 = ptrtoint ptr %.sroa.02.1.i61 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.pre-phi94 = phi i64 [ %.pre93, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit" ], [ %i.ad, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %.sroa.02.0.lcssa.i55 = phi ptr [ %.sroa.02.1.i61, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit" ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %i.ap = sub i64 %.pre-phi94, %i.ad
  %i.aq = ashr exact i64 %i.ap, 4
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit"
  %.sroa.065.0 = phi ptr [ %i.l, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i55, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ], [ %i.ab, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ] ; 4 uses
  %.047 = phi i64 [ %i.z, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ], [ %i.aa, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.k, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ], [ %i.aq, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ] ; 2 uses
  %i.ar = icmp eq ptr %.sroa.065.0, %.tr7686
  br i1 %i.ar, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq ptr %.sroa.0.0, %.tr7686
  br i1 %i.as, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.au = ptrtoint ptr %.sroa.065.0 to i64        ; 2 uses
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = ptrtoint ptr %.tr7686 to i64            ; 2 uses
  %i.ay = sub i64 %i.ax, %i.au
  %i.az = ashr exact i64 %i.ay, 4                 ; 3 uses
  %i.ba = sub nsw i64 %i.aw, %i.az
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i.i, label %bb.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.tr7686, %bb.h ] ; 3 uses
  %.sroa.04.07.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.sroa.065.0, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.04.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.08.i.i.i, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.bc, %.tr7686
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %.lr.ph.i.i.i, !llvm.loop !16

bb.i:                                             ; preds = %bb.h
  %i.be = sub i64 %i.at, %i.ax
  %i.bf = getelementptr inbounds i8, ptr %.sroa.065.0, i64 %i.be ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.056.i.i = phi i64 [ %i.aw, %bb.i ], [ %.056.i.i.be, %.backedge ] ; 4 uses
  %.0.i.i = phi i64 [ %i.az, %bb.i ], [ %.0.i.i.be, %.backedge ] ; 11 uses
  %.sroa.026.0.i.i = phi ptr [ %.sroa.065.0, %bb.i ], [ %.sroa.026.0.i.i.be, %.backedge ] ; 7 uses
  %i.bg = sub nsw i64 %.056.i.i, %.0.i.i          ; 9 uses
  %i.bh = icmp slt i64 %.0.i.i, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp sgt i64 %i.bg, 0
  br i1 %i.bi, label %.lr.ph66.preheader.i.i, label %._crit_edge67.i.i

.lr.ph66.preheader.i.i:                           ; preds = %bb.k
  %i.bj = getelementptr inbounds [16 x i8], ptr %.sroa.026.0.i.i, i64 %.0.i.i ; 2 uses
  %xtraiter115 = and i64 %i.bg, 1
  %i.bk = icmp eq i64 %i.bg, 1
  br i1 %i.bk, label %.lr.ph66.i.i.epil.preheader, label %.lr.ph66.preheader.i.i.new

.lr.ph66.preheader.i.i.new:                       ; preds = %.lr.ph66.preheader.i.i
  %unroll_iter119 = and i64 %i.bg, 9223372036854775806
  br label %.lr.ph66.i.i

._crit_edge67.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph66.i.i
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %._crit_edge67.i.i, label %.lr.ph66.i.i.epil.preheader

.lr.ph66.i.i.epil.preheader:                      ; preds = %._crit_edge67.i.i.loopexit.unr-lcssa, %.lr.ph66.preheader.i.i
  %.sroa.025.063.i.i.epil.init = phi ptr [ %i.bj, %.lr.ph66.preheader.i.i ], [ %i.bq, %._crit_edge67.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.026.162.i.i.epil.init = phi ptr [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i ], [ %i.bp, %._crit_edge67.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod118 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.162.i.i.epil.init, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.026.162.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.025.063.i.i.epil.init, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.025.063.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(10) %6, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i.epil.init, i64 16
  br label %._crit_edge67.i.i

._crit_edge67.i.i:                                ; preds = %.lr.ph66.i.i.epil.preheader, %._crit_edge67.i.i.loopexit.unr-lcssa, %bb.k
  %.sroa.026.1.lcssa.i.i = phi ptr [ %.sroa.026.0.i.i, %bb.k ], [ %i.bp, %._crit_edge67.i.i.loopexit.unr-lcssa ], [ %i.bl, %.lr.ph66.i.i.epil.preheader ]
  %i.bm = srem i64 %.056.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %bb.l

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i, %.lr.ph66.preheader.i.i.new
  %.sroa.025.063.i.i = phi ptr [ %i.bj, %.lr.ph66.preheader.i.i.new ], [ %i.bq, %.lr.ph66.i.i ] ; 4 uses
  %.sroa.026.162.i.i = phi ptr [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i.new ], [ %i.bp, %.lr.ph66.i.i ] ; 4 uses
  %niter120 = phi i64 [ 0, %.lr.ph66.preheader.i.i.new ], [ %niter120.next.1, %.lr.ph66.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.162.i.i, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.026.162.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.025.063.i.i, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.025.063.i.i, ptr noundef nonnull align 8 dereferenceable(10) %6, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bn, ptr noundef nonnull align 8 dereferenceable(10) %i.bo, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bo, ptr noundef nonnull align 8 dereferenceable(10) %6, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 32 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %._crit_edge67.i.i.loopexit.unr-lcssa, label %.lr.ph66.i.i, !llvm.loop !17

bb.l:                                             ; preds = %._crit_edge67.i.i
  %i.br = sub nsw i64 %.0.i.i, %i.bm
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds [16 x i8], ptr %.sroa.026.0.i.i, i64 %.056.i.i ; 3 uses
  %i.bt = sub i64 0, %i.bg
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bt ; 3 uses
  %i.bv = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bv, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %xtraiter = and i64 %.0.i.i, 1
  %i.bw = icmp eq i64 %.0.i.i, 1
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.0.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.060.i.i.epil.init = phi ptr [ %i.bs, %.lr.ph.i.i.preheader ], [ %i.cd, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.sroa.026.259.i.i.epil.init = phi ptr [ %i.bu, %.lr.ph.i.i.preheader ], [ %i.cc, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i64 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %i.bx = getelementptr inbounds i8, ptr %.sroa.026.259.i.i.epil.init, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.0.060.i.i.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bx, ptr noundef nonnull align 8 dereferenceable(10) %i.by, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.by, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.m
  %.sroa.026.2.lcssa.i.i = phi ptr [ %i.bu, %bb.m ], [ %.sroa.026.0.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.sroa.026.0.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bz = srem i64 %.056.i.i, %i.bg               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.l
  %.056.i.i.be = phi i64 [ %.0.i.i, %bb.l ], [ %i.bg, %._crit_edge.i.i ]
  %.0.i.i.be = phi i64 [ %i.br, %bb.l ], [ %i.bz, %._crit_edge.i.i ]
  %.sroa.026.0.i.i.be = phi ptr [ %.sroa.026.1.lcssa.i.i, %bb.l ], [ %.sroa.026.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.j, !llvm.loop !18

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.060.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.preheader.new ], [ %i.cd, %.lr.ph.i.i ] ; 2 uses
  %.sroa.026.259.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.preheader.new ], [ %i.cc, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ca = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ca, ptr noundef nonnull align 8 dereferenceable(10) %i.cb, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.cb, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cc = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -32 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.cc, ptr noundef nonnull align 8 dereferenceable(10) %i.cd, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.cd, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !19

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit: ; preds = %._crit_edge67.i.i, %._crit_edge.i.i, %.lr.ph.i.i.i, %bb.f, %bb.g
  %.sroa.015.1.i.i = phi ptr [ %.sroa.065.0, %bb.g ], [ %.sroa.0.0, %bb.f ], [ %.tr7686, %.lr.ph.i.i.i ], [ %i.bf, %._crit_edge.i.i ], [ %i.bf, %._crit_edge67.i.i ] ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_"(ptr %.tr84, ptr %.sroa.065.0, ptr %.sroa.015.1.i.i, i64 noundef %.0, i64 noundef %.047)
  %i.ce = sub nsw i64 %.tr7888, %.0               ; 2 uses
  %i.cf = sub nsw i64 %.tr7989, %.047             ; 2 uses
  %i.cg = icmp eq i64 %i.ce, 0
  %i.ch = icmp eq i64 %i.cf, 0
  %or.cond = or i1 %i.cg, %i.ch
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_SL_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 4611686018427387903) %6) unnamed_addr #0 {
bb.a:
  %.not99 = icmp sgt i64 %3, %6
  %.not66100 = icmp sgt i64 %4, %6
  %or.cond101 = and i1 %.not99, %.not66100
  br i1 %or.cond101, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr93.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr95.lcssa = phi i64 [ %3, %bb.a ], [ %i.ak, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %4, %bb.a ], [ %i.am, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_T2_"(ptr %.tr.lcssa, ptr %.tr93.lcssa, ptr %2, i64 noundef %.tr95.lcssa, i64 noundef %.tr96.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr96107 = phi i64 [ %4, %.lr.ph ], [ %i.am, %tailrecurse ] ; 3 uses
  %.tr95106 = phi i64 [ %3, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 3 uses
  %.tr93104 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr102 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr95106, %.tr96107
  %i.c = ptrtoint ptr %.tr93104 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit71

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr95106, 2                    ; 2 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %.tr102, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val = load i16, ptr %i.f, align 8
  %i.g = sub i64 %i.a, %i.c
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.07.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr93104, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.07.i, 1                       ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.06.i, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val.i.i = load i16, ptr %i.l, align 8, !tbaa !130
  %i.m = icmp ult i16 %.val.i.i, %.val            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.07.i, %i.o
  %.sroa.02.1.i = select i1 %i.m, ptr %i.n, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.m, i64 %i.p, i64 %i.j      ; 2 uses
  %i.q = icmp sgt i64 %.1.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit", !llvm.loop !14

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit" ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit.loopexit" ], [ %.tr93104, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.r = sub i64 %.pre-phi, %i.c
end_hunk_0
begin_hunk_1_@"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_SL_T2_":bb.a

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit"
  %.sroa.082.0 = phi ptr [ %i.e, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i72, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ], [ %i.u, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ] ; 3 uses
  %.062 = phi i64 [ %i.s, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ], [ %i.t, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ] ; 3 uses
  %.0 = phi i64 [ %i.d, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ], [ %i.aj, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET_SK_SK_RKT0_T1_.exit" ] ; 2 uses
  %i.ak = sub nsw i64 %.tr95106, %.0              ; 4 uses
  %i.al = tail call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lET_SB_SB_SB_T1_SC_T0_SC_(ptr %.sroa.082.0, ptr %.tr93104, ptr %.sroa.0.0, i64 noundef %i.ak, i64 noundef %.062, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_SK_T0_SL_T1_SL_T2_"(ptr %.tr102, ptr %.sroa.082.0, ptr %i.al, i64 noundef %.0, i64 noundef %.062, ptr noundef %5, i64 noundef %6)
  %i.am = sub nsw i64 %.tr96107, %.062            ; 3 uses
  %.not = icmp sgt i64 %i.ak, %6
  %.not66 = icmp sgt i64 %i.am, %6
  %or.cond = and i1 %.not, %.not66
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lET_SB_SB_SB_T1_SC_T0_SC_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 12 uses
  %8 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 12 uses
  %9 = alloca %"struct.flatbuffers::BinaryAnnotator::VTable::Entry", align 8 ; 4 uses
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !127

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull align 8 dereferenceable(10) %1, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !127

bb.g:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [16 x i8], ptr %2, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit
  %i.m = icmp eq i64 %i.h, 16
  br i1 %i.m, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds i8, ptr %2, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.n, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !127

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %i.o = icmp eq i64 %i.d, 16
  br i1 %i.o, label %bb.l, label %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit

_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit

bb.m:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp sgt i64 %i.s, 16
  br i1 %i.t, label %bb.p, label %bb.q, !prof !127

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 16
  br i1 %i.u, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull align 8 dereferenceable(10) %0, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.v = ptrtoint ptr %2 to i64
  %i.w = sub i64 %i.v, %i.q                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 16
  br i1 %i.x, label %bb.s, label %bb.t, !prof !127

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.w, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit37
  %i.y = icmp eq i64 %i.w, 16
  br i1 %i.y, label %bb.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(10) %1, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.z = ashr exact i64 %i.s, 4                   ; 3 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.v, label %bb.w, !prof !127

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [16 x i8], ptr %2, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %5, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %i.ad = icmp eq i64 %i.s, 16
  br i1 %i.ad, label %bb.x, label %_ZSt13move_backwardIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit

bb.x:                                             ; preds = %bb.w
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ae, ptr noundef nonnull align 8 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit

_ZSt13move_backwardIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit: ; preds = %bb.v, %bb.w, %bb.x
  %i.af = sub nsw i64 0, %i.z
  %i.ag = getelementptr inbounds [16 x i8], ptr %2, i64 %i.af
  br label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit

bb.y:                                             ; preds = %bb.m
  %i.ah = icmp eq ptr %0, %1
  br i1 %i.ah, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ai = icmp eq ptr %2, %1
  br i1 %i.ai, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4                 ; 2 uses
  %i.an = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.aq = sub nsw i64 %i.am, %i.ap
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i, label %bb.ab

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %1, %bb.aa ] ; 3 uses
  %.sroa.04.07.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %0, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.04.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.08.i.i.i, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(10) %9, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %.lr.ph.i.i.i, !llvm.loop !16

bb.ab:                                            ; preds = %bb.aa
  %i.au = sub i64 %i.aj, %i.an
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.056.i.i = phi i64 [ %i.am, %bb.ab ], [ %.056.i.i.be, %.backedge ] ; 4 uses
  %.0.i.i = phi i64 [ %i.ap, %bb.ab ], [ %.0.i.i.be, %.backedge ] ; 11 uses
  %.sroa.026.0.i.i = phi ptr [ %0, %bb.ab ], [ %.sroa.026.0.i.i.be, %.backedge ] ; 7 uses
  %i.aw = sub nsw i64 %.056.i.i, %.0.i.i          ; 9 uses
  %i.ax = icmp slt i64 %.0.i.i, %i.aw
  br i1 %i.ax, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ay = icmp sgt i64 %i.aw, 0
  br i1 %i.ay, label %.lr.ph66.preheader.i.i, label %._crit_edge67.i.i

.lr.ph66.preheader.i.i:                           ; preds = %bb.ad
  %i.az = getelementptr inbounds [16 x i8], ptr %.sroa.026.0.i.i, i64 %.0.i.i ; 2 uses
  %xtraiter60 = and i64 %i.aw, 1
  %i.ba = icmp eq i64 %i.aw, 1
  br i1 %i.ba, label %.lr.ph66.i.i.epil.preheader, label %.lr.ph66.preheader.i.i.new

.lr.ph66.preheader.i.i.new:                       ; preds = %.lr.ph66.preheader.i.i
  %unroll_iter64 = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph66.i.i

._crit_edge67.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph66.i.i
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %._crit_edge67.i.i, label %.lr.ph66.i.i.epil.preheader

.lr.ph66.i.i.epil.preheader:                      ; preds = %._crit_edge67.i.i.loopexit.unr-lcssa, %.lr.ph66.preheader.i.i
  %.sroa.025.063.i.i.epil.init = phi ptr [ %i.az, %.lr.ph66.preheader.i.i ], [ %i.bg, %._crit_edge67.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.026.162.i.i.epil.init = phi ptr [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i ], [ %i.bf, %._crit_edge67.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod63 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.162.i.i.epil.init, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.026.162.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.025.063.i.i.epil.init, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.025.063.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(10) %8, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i.epil.init, i64 16
  br label %._crit_edge67.i.i

._crit_edge67.i.i:                                ; preds = %.lr.ph66.i.i.epil.preheader, %._crit_edge67.i.i.loopexit.unr-lcssa, %bb.ad
  %.sroa.026.1.lcssa.i.i = phi ptr [ %.sroa.026.0.i.i, %bb.ad ], [ %i.bf, %._crit_edge67.i.i.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph66.i.i.epil.preheader ]
  %i.bc = srem i64 %.056.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %bb.ae

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i, %.lr.ph66.preheader.i.i.new
  %.sroa.025.063.i.i = phi ptr [ %i.az, %.lr.ph66.preheader.i.i.new ], [ %i.bg, %.lr.ph66.i.i ] ; 4 uses
  %.sroa.026.162.i.i = phi ptr [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i.new ], [ %i.bf, %.lr.ph66.i.i ] ; 4 uses
  %niter65 = phi i64 [ 0, %.lr.ph66.preheader.i.i.new ], [ %niter65.next.1, %.lr.ph66.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.162.i.i, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.026.162.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.025.063.i.i, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.025.063.i.i, ptr noundef nonnull align 8 dereferenceable(10) %8, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bd, ptr noundef nonnull align 8 dereferenceable(10) %i.be, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.be, ptr noundef nonnull align 8 dereferenceable(10) %8, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 32 ; 2 uses
  %niter65.next.1 = add i64 %niter65, 2           ; 2 uses
  %niter65.ncmp.1 = icmp eq i64 %niter65.next.1, %unroll_iter64
  br i1 %niter65.ncmp.1, label %._crit_edge67.i.i.loopexit.unr-lcssa, label %.lr.ph66.i.i, !llvm.loop !17

bb.ae:                                            ; preds = %._crit_edge67.i.i
  %i.bh = sub nsw i64 %.0.i.i, %i.bc
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds [16 x i8], ptr %.sroa.026.0.i.i, i64 %.056.i.i ; 3 uses
  %i.bj = sub i64 0, %i.aw
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bl, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %xtraiter = and i64 %.0.i.i, 1
  %i.bm = icmp eq i64 %.0.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.0.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.060.i.i.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bt, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.sroa.026.259.i.i.epil.init = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bs, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.bn = getelementptr inbounds i8, ptr %.sroa.026.259.i.i.epil.init, i64 -16 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.060.i.i.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bn, ptr noundef nonnull align 8 dereferenceable(10) %i.bo, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bo, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.af
  %.sroa.026.2.lcssa.i.i = phi ptr [ %i.bk, %bb.af ], [ %.sroa.026.0.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.sroa.026.0.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bp = srem i64 %.056.i.i, %i.aw               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.ae
  %.056.i.i.be = phi i64 [ %.0.i.i, %bb.ae ], [ %i.aw, %._crit_edge.i.i ]
  %.0.i.i.be = phi i64 [ %i.bh, %bb.ae ], [ %i.bp, %._crit_edge.i.i ]
  %.sroa.026.0.i.i.be = phi ptr [ %.sroa.026.1.lcssa.i.i, %bb.ae ], [ %.sroa.026.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.ac, !llvm.loop !18

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.060.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.sroa.026.259.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -16 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bq, ptr noundef nonnull align 8 dereferenceable(10) %i.br, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.br, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bs = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -32 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bs, ptr noundef nonnull align 8 dereferenceable(10) %i.bt, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bt, ptr noundef nonnull align 8 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !19

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_.exit: ; preds = %._crit_edge.i.i, %._crit_edge67.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit, %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit
  %.sroa.032.0 = phi ptr [ %i.p, %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit ], [ %2, %bb.n ], [ %i.ag, %_ZSt13move_backwardIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.av, %._crit_edge67.i.i ], [ %i.av, %._crit_edge.i.i ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKN10reflection5FieldEEZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS5_12BinaryRegionESaIS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_6ObjectEE3$_0E9_M_invokeERKSt9_Any_dataOS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !168
  %.val2 = load ptr, ptr %1, align 8, !tbaa !125
  tail call fastcc void @"_ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE"(ptr noundef nonnull readonly align 8 dereferenceable(40) %.val, ptr noundef %.val2), !inline_history !641
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKN10reflection5FieldEEZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS5_12BinaryRegionESaIS8_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0", ptr %0, align 8, !tbaa !199
  br label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !168
  store ptr %.val, ptr %0, align 8, !tbaa !168
  br label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !642
  store ptr %i.a, ptr %0, align 8, !tbaa !168
  br label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !168 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS1_12BinaryRegionESaIS4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN11flatbuffers15BinaryAnnotator11BuildStructEmRSt6vectorINS_12BinaryRegionESaIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN10reflection6ObjectEENK3$_0clEPKNSC_5FieldE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
end_hunk_1
