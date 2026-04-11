inline.NumInlined: 4932
inline.NumDeleted: 2065
begin_hunk_0_@_ZN6google8protobuf4util18MessageDifferencer14StreamReporter10PrintValueERKNS0_7MessageERKSt6vectorINS2_13SpecificFieldESaIS8_EEb:bb.a
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !508  ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 7 uses
  %.not = icmp eq ptr %i.d, null
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util18MessageDifferencer14StreamReporter10PrintValueERKNS0_7MessageERKSt6vectorINS2_13SpecificFieldESaIS8_EEb:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  store i64 0, ptr %i.f, align 8, !tbaa !371
  store i8 0, ptr %i.e, align 8, !tbaa !106
  %.in49.v = select i1 %3, i64 -56, i64 -52
  %.in49 = getelementptr inbounds i8, ptr %i.b, i64 %.in49.v
  %i.g = load i32, ptr %.in49, align 4, !tbaa !3  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !130
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf4util18MessageDifferencer14StreamReporter10PrintValueERKNS0_7MessageERKSt6vectorINS2_13SpecificFieldESaIS8_EEb:bb.a
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.aq:                                            ; preds = %bb.a
  %.in.v = select i1 %3, i64 -32, i64 -24
  %.in = getelementptr inbounds i8, ptr %i.b, i64 %.in.v
  %i.ed = load ptr, ptr %.in, align 8, !tbaa !101 ; 2 uses
  %.in48.v = select i1 %3, i64 -16, i64 -12
  %.in48 = getelementptr inbounds i8, ptr %i.b, i64 %.in48.v
  %i.ee = load i32, ptr %.in48, align 4, !tbaa !3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !407
end_hunk_2
