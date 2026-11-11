Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/memchr-4ef0de43cc821fa9.memchr.6aab1a0404ed0ab8-cgu.0?download=true
inline.NumInlined: 230
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCs99Nb5C8iXR4_6memchr:bb.a
bb.e:                                             ; preds = %bb.b
  %i.j = tail call zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr align 4 %i.a, ptr nonnull align 8 %1)
  br label %_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmtCs99Nb5C8iXR4_6memchr.exit

_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmtCs99Nb5C8iXR4_6memchr.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs99Nb5C8iXR4_6memchr(ptr nofree align 8 captures(none) %0) unnamed_addr #7 !guid !112 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs99Nb5C8iXR4_6memchr(ptr nofree align 8 captures(none) %0) unnamed_addr #4 !guid !113 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvXsL_NtNtCs4NRVxsYgnAr_4core4iter5rangejNtB5_4Step18backward_uncheckedCs99Nb5C8iXR4_6memchr(i64 %i.c, i64 1) ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs4_NtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB5_9PrefilterNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr align 32 %0, ptr align 8 %1) unnamed_addr #2 !guid !114 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @42, i64 9)
  %i.b = call align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr nonnull align 8 %i.a, ptr nonnull @43, i64 4, ptr nonnull @45, ptr nonnull align 8 @46)
  %i.c = call align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr align 8 %i.b, ptr nonnull @47, i64 4, ptr nonnull @49, ptr nonnull align 8 @46)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = call align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr align 8 %i.c, ptr nonnull @50, i64 11, ptr nonnull %i.d, ptr nonnull align 8 @51)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.g = call align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr align 8 %i.e, ptr nonnull @52, i64 13, ptr nonnull %i.f, ptr nonnull align 8 @51)
  %i.h = call zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr align 8 %i.g)
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvXs5_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs99Nb5C8iXR4_6memchr(ptr nofree align 8 captures(none) %0) unnamed_addr #4 !guid !115 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs99Nb5C8iXR4_6memchr.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvXsL_NtNtCs4NRVxsYgnAr_4core4iter5rangejNtB5_4Step18backward_uncheckedCs99Nb5C8iXR4_6memchr(i64 %i.c, i64 1) ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs99Nb5C8iXR4_6memchr.exit

_RNvXs3_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs99Nb5C8iXR4_6memchr.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE3getCs99Nb5C8iXR4_6memchr(i64 %0, ptr %1, i64 %2) unnamed_addr #0 !guid !116 {
bb.a:
  %i.a = icmp ult i64 %2, %0                      ; 2 uses
  %i.b = sub nuw i64 %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %.sroa.3.0 = select i1 %i.a, i64 undef, i64 %i.b
  %.sroa.0.0 = select i1 %i.a, ptr null, ptr %i.c
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs99Nb5C8iXR4_6memchr(i64 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #4 !guid !117 {
bb.a:
  %i.a = icmp ugt i64 %0, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.b, 1
  ret { ptr, i64 } %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 %0, i64 %2, i64 %2, ptr align 8 %3) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, ptr } @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionPhENtNtNtB7_3ops9try_trait3Try6branchCs99Nb5C8iXR4_6memchr(i64 %0, ptr %1) unnamed_addr #0 !guid !118 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  %not. = and i64 %0, 1
  %. = xor i64 %not., 1
  %.3 = select i1 %i.a, ptr %1, ptr undef
  %i.b = insertvalue { i64, ptr } poison, i64 %., 0
  %i.c = insertvalue { i64, ptr } %i.b, ptr %.3, 1
  ret { i64, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionRShENtNtNtB7_3ops9try_trait3Try6branchCs99Nb5C8iXR4_6memchr(ptr %0, i64 %1) unnamed_addr #0 !guid !119 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.5 = select i1 %.not, i64 undef, i64 %1
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.5, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionjENtNtNtB7_3ops9try_trait3Try6branchCs99Nb5C8iXR4_6memchr(i64 %0, i64 %1) unnamed_addr #0 !guid !120 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  %not. = and i64 %0, 1
  %. = xor i64 %not., 1
  %.3 = select i1 %i.a, i64 %1, i64 undef
  %i.b = insertvalue { i64, i64 } poison, i64 %., 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.3, 1
  ret { i64, i64 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionjEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualCs99Nb5C8iXR4_6memchr() unnamed_addr #0 !guid !121 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @_RNvXsU_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Debug3fmtCs99Nb5C8iXR4_6memchr(ptr %0, ptr align 8 %1) unnamed_addr #4 !guid !122 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs_NtCs99Nb5C8iXR4_6memchr6memmemNtB4_8FindIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr align 32 %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !124 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 272
  %.val6 = load i64, ptr %i.a, align 16           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 32             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp ult i64 %i.e, %i.g                  ; 2 uses
  %i.i = sub nuw i64 %i.e, %i.g
  %.sroa.3.0.i.i = select i1 %i.h, i64 undef, i64 %i.i ; 2 uses
  %.not.i7 = icmp eq ptr %i.c, null
  %.not.i = select i1 %i.h, i1 true, i1 %.not.i7
  %i.j = icmp ult i64 %.sroa.3.0.i.i, %.val6
  %or.cond = select i1 %.not.i, i1 true, i1 %i.j
  br i1 %or.cond, label %_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit.thread, label %_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit

_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.l = getelementptr i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call { i64, i64 } %i.o(ptr nonnull align 32 %0, ptr nonnull align 4 %i.m, ptr nonnull %i.k, i64 %.sroa.3.0.i.i, ptr %.val, i64 %.val6), !inline_history !123 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.b, label %_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit.thread

bb.b:                                             ; preds = %_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit
  %i.s = extractvalue { i64, i64 } %i.p, 1
  %i.t = load i64, ptr %i.f, align 8
  %i.u = add i64 %i.t, %i.s                       ; 2 uses
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %.val6, i64 1)
  %i.v = add i64 %i.u, %.sroa.0.0.sroa.speculated.i
  store i64 %i.v, ptr %i.f, align 8
  br label %_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit.thread

_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit.thread: ; preds = %_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit, %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %i.u, %bb.b ], [ undef, %bb.a ], [ undef, %_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %_RNvMNtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB2_8Searcher4find.exit ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs99Nb5C8iXR4_6memchr6memmemNtB4_8FindIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hint(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #2 !guid !125 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, i64 } @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj11checked_subCs99Nb5C8iXR4_6memchr(i64 %i.b, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 3 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 272
  %.val2 = load i64, ptr %i.i, align 16           ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.e, %bb.d
  %.sink6 = phi i64 [ 0, %bb.e ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  %.sink4 = phi i64 [ 1, %bb.e ], [ %i.o, %bb.d ], [ 1, %bb.a ]
  %.sink = phi i64 [ %i.q, %bb.e ], [ %i.p, %bb.d ], [ 0, %bb.a ]
  store i64 %.sink6, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.l, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.m = tail call range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %i.g, i64 1)
  %i.n = tail call { i64, i64 } @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj11checked_addCs99Nb5C8iXR4_6memchr(i64 %i.g, i64 1) ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.q = udiv i64 %i.g, %.val2
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice4iterRShNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs99Nb5C8iXR4_6memchr(ptr %0, i64 %1) unnamed_addr #10 !guid !126 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCs99Nb5C8iXR4_6memchr6memmem8searcherNtB4_8SearcherNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr align 32 %0, ptr align 8 %1) unnamed_addr #2 !guid !127 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @53, i64 8)
  %i.b = call align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr nonnull align 8 %i.a, ptr nonnull @43, i64 4, ptr nonnull @55, ptr nonnull align 8 @46)
  %i.c = call align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr align 8 %i.b, ptr nonnull @47, i64 4, ptr nonnull @57, ptr nonnull align 8 @46)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = call align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr align 8 %i.c, ptr nonnull @58, i64 9, ptr nonnull %i.d, ptr nonnull align 8 @59)
  %i.f = call zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr align 8 %i.e)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs99Nb5C8iXR4_6memchr(ptr nofree align 8 captures(none) %0) unnamed_addr #4 !guid !128 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs99Nb5C8iXR4_6memchr.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvXsL_NtNtCs4NRVxsYgnAr_4core4iter5rangejNtB5_4Step18backward_uncheckedCs99Nb5C8iXR4_6memchr(i64 %i.c, i64 1) ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs99Nb5C8iXR4_6memchr.exit

_RNvXs5_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs99Nb5C8iXR4_6memchr.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0.i.i, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator3revCs99Nb5C8iXR4_6memchr(i64 %0, i64 %1) unnamed_addr #0 !guid !129 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvYNtNtNtCs4NRVxsYgnAr_4core9core_arch3x867___m128iNtNtCs99Nb5C8iXR4_6memchr6vector6Vector27movemask_will_have_non_zeroBS_(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #2 !guid !130 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load <2 x i64>, ptr %0, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i64> %i.b, ptr %i.a, align 16
  %i.c = call i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_movemask_epi8Cs99Nb5C8iXR4_6memchr(ptr nonnull align 16 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvYNtNtNtCs4NRVxsYgnAr_4core9core_arch3x867___m256iNtNtCs99Nb5C8iXR4_6memchr6vector6Vector27movemask_will_have_non_zeroBS_(ptr nofree readonly align 32 captures(none) %0) unnamed_addr #8 !guid !131 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 4 uses
  %i.b = load <4 x i64>, ptr %0, align 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <4 x i64> %i.b, ptr %i.a, align 32
  %i.c = call i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx220__mm256_movemask_epi8Cs99Nb5C8iXR4_6memchr(ptr nonnull align 32 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i64 -1, 32) i64 @_RNvYNvYNtNtCs99Nb5C8iXR4_6memchr6vector16SensibleMoveMaskNtB7_8MoveMask11last_offsetINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTB5_EE4callB9_(ptr nofree readnone captures(none) %0, i32 %1) unnamed_addr #0 !guid !132 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 false)
  %narrow.i = sub nuw nsw i32 32, %i.a
  %i.b = zext nneg i32 %narrow.i to i64
  %i.c = add nsw i64 %i.b, -1
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i64 0, 33) i64 @_RNvYNvYNtNtCs99Nb5C8iXR4_6memchr6vector16SensibleMoveMaskNtB7_8MoveMask12first_offsetINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTB5_EE4callB9_(ptr nofree readnone captures(none) %0, i32 %1) unnamed_addr #0 !guid !133 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 false)
  %i.b = zext nneg i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCs99Nb5C8iXR4_6memchr(i64 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !134 {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCs99Nb5C8iXR4_6memchr(i64 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !135 {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #18

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXNtCs4NRVxsYgnAr_4core7convertRShINtB2_5AsRefBw_E6as_refCs99Nb5C8iXR4_6memchr(ptr align 8) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #20

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvNtCs99Nb5C8iXR4_6memchr6memchr6memchrB3_(i8, ptr, i64) unnamed_addr #4

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj11checked_subCs99Nb5C8iXR4_6memchr(i64, i64) unnamed_addr #4

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs9_NtCs4NRVxsYgnAr_4core3numj11checked_addCs99Nb5C8iXR4_6memchr(i64, i64) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64, i64, ptr align 8) unnamed_addr #21

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayjECs99Nb5C8iXR4_6memchr(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #4

end_hunk_0
