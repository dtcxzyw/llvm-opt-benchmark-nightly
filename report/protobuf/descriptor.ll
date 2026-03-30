begin_hunk_0
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %3 = load i64, ptr %.fr28, align 4
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.fr28, align 4
  store i64 %3, ptr %i.ck, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1
  %i.cw = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i, %.sroa.24.0.extract.trunc.i.i33.i.i
  %spec.select.i.i43.i.i = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = select i1 %i.cu, i1 true, i1 %spec.select.i.i43.i.i
  %4 = load i64, ptr %.fr28, align 4              ; 2 uses
  br i1 %i.cx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.0.0.copyload.i27.i.i, ptr %.fr28, align 4
  store i64 %4, ptr %i.cl, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %.fr28, align 4
  store i64 %4, ptr %i.f, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.q:                                             ; preds = %.lr.ph44
end_hunk_1
begin_hunk_2
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %5 = load i64, ptr %.fr28, align 4
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %.fr28, align 4
  store i64 %5, ptr %i.f, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
end_hunk_2
begin_hunk_3
  %i.de = icmp slt i32 %.sroa.24.0.extract.trunc.i.i.i.i, %.sroa.24.0.extract.trunc.i.i33.i.i
  %spec.select.i.i61.i.i = select i1 %i.dd, i1 %i.de, i1 false
  %i.df = select i1 %i.dc, i1 true, i1 %spec.select.i.i61.i.i
  %6 = load i64, ptr %.fr28, align 4              ; 2 uses
  br i1 %i.df, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 %.sroa.0.0.copyload.i27.i.i, ptr %.fr28, align 4
  store i64 %6, ptr %i.cl, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.u:                                             ; preds = %bb.s
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.fr28, align 4
  store i64 %6, ptr %i.ck, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader": ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
end_hunk_3
