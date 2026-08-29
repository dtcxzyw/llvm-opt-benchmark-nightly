Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_syntax-2e8c2d6a39ca6641.regex_syntax.b1049769bf5b995c-cgu.15?download=true
inline.NumInlined: 87
inline.NumDeleted: 14
begin_hunk_0
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"e\00\00\00\00\00\00\00c\00\00\00\0D\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"e\00\00\00\00\00\00\00b\00\00\00\0D\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"e\00\00\00\00\00\00\00`\00\00\00\0D\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"e\00\00\00\00\00\00\00_\00\00\00\0D\00\00\00" }>, align 8
@91 = private unnamed_addr constant [31 x i8] c"\0CPosition(o: \C0\05, l: \C0\05, c: \C0\01)\00", align 1
@switch.table._RNvMsf_NtCsfcggljOhZkm_12regex_syntax3astNtB5_14HexLiteralKind6digits = private unnamed_addr constant [3 x i8] c"\02\04\08", align 4

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre11starts_withReECsfcggljOhZkm_12regex_syntax(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern12is_prefix_ofCsfcggljOhZkm_12regex_syntax(ptr %2, i64 %3, ptr %0, i64 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre4findReECsfcggljOhZkm_12regex_syntax(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcherCsfcggljOhZkm_12regex_syntax(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr %2, i64 %3, ptr %0, i64 %1)
  call void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsfcggljOhZkm_12regex_syntax(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.sroa.3.0 = select i1 %i.d, i64 %i.f, i64 undef
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECsfcggljOhZkm_12regex_syntax(ptr %0, i64 %1, i32 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern13into_searcherCsfcggljOhZkm_12regex_syntax(ptr nonnull sret([48 x i8]) align 8 %i.a, i32 %2, ptr %0, i64 %1)
  call void @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsfcggljOhZkm_12regex_syntax(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.sroa.3.0 = select i1 %i.d, i64 %i.f, i64 undef
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre8containscECsfcggljOhZkm_12regex_syntax(ptr %0, i64 %1, i32 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_inCsfcggljOhZkm_12regex_syntax(i32 %2, ptr %0, i64 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RINvMNtCs4NRVxsYgnAr_4core3stre9ends_withcECsfcggljOhZkm_12regex_syntax(ptr %0, i64 %1, i32 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern12is_suffix_ofCsfcggljOhZkm_12regex_syntax(i32 %2, ptr %0, i64 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMs2_NtBx_5parseINtB2e_7ParserIQNtB2e_6ParserE16add_capture_name0E0EBz_(ptr align 8 %0, i64 %1, ptr %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  switch i64 %1, label %.lr.ph [
    i64 0, label %bb.b
    i64 1, label %._crit_edge
  ]

bb.b:                                             ; preds = %bb.a, %._crit_edge, %bb.c
  %.sroa.4.0 = phi i64 [ %i.r, %bb.c ], [ %1, %bb.a ], [ %.sroa.05.0.lcssa, %._crit_edge ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 1, %bb.a ], [ 0, %._crit_edge ]
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.d

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.05.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.05.0.lcssa
  %i.f = call i8 @_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName20binary_search_by_keyReNCNvMs2_NtBz_5parseINtB1Q_7ParserIQNtB1Q_6ParserE16add_capture_name0E0BB_(ptr nonnull align 8 %i.a, ptr align 8 %i.e) ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.014 = phi i64 [ %i.n, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.013 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.014, 1                ; 2 uses
  %i.i = add i64 %i.h, %.sroa.05.013              ; 2 uses
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.i
  %i.k = call i8 @_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName20binary_search_by_keyReNCNvMs2_NtBz_5parseINtB1Q_7ParserIQNtB1Q_6ParserE16add_capture_name0E0BB_(ptr nonnull align 8 %i.a, ptr align 8 %i.j)
  %i.l = icmp eq i8 %i.k, 1
  %i.m = select i1 %i.l, i64 %.sroa.05.013, i64 %i.i, !unpredictable !3 ; 2 uses
  %i.n = sub nuw i64 %.sroa.01.014, %i.h          ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.p = icmp eq i8 %i.f, -1
  %i.q = zext i1 %i.p to i64
  %i.r = add i64 %.sroa.05.0.lcssa, %i.q
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName20binary_search_by_keyReNCNvMs2_NtBx_5parseINtB1O_7ParserIQNtB1O_6ParserE16add_capture_name0EBz_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  switch i64 %1, label %.lr.ph.i [
    i64 0, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMs2_NtBx_5parseINtB2e_7ParserIQNtB2e_6ParserE16add_capture_name0E0EBz_.exit
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %i.e = call i8 @_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName20binary_search_by_keyReNCNvMs2_NtBz_5parseINtB1Q_7ParserIQNtB1Q_6ParserE16add_capture_name0E0BB_(ptr nonnull align 8 %i.b, ptr align 8 %i.d) ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMs2_NtBx_5parseINtB2e_7ParserIQNtB2e_6ParserE16add_capture_name0E0EBz_.exit, label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.014.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.013.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.014.i, 1              ; 2 uses
  %i.h = add i64 %i.g, %.sroa.05.013.i            ; 2 uses
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.h
  %i.j = call i8 @_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName20binary_search_by_keyReNCNvMs2_NtBz_5parseINtB1Q_7ParserIQNtB1Q_6ParserE16add_capture_name0E0BB_(ptr nonnull align 8 %i.b, ptr align 8 %i.i)
  %i.k = icmp eq i8 %i.j, 1
  %i.l = select i1 %i.k, i64 %.sroa.05.013.i, i64 %i.h, !unpredictable !3 ; 2 uses
  %i.m = sub nuw i64 %.sroa.01.014.i, %i.g        ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.o = icmp eq i8 %i.e, -1
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %.sroa.05.0.lcssa.i, %i.p
  br label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMs2_NtBx_5parseINtB2e_7ParserIQNtB2e_6ParserE16add_capture_name0E0EBz_.exit

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast11CaptureName16binary_search_byNCINvB2_20binary_search_by_keyReNCNvMs2_NtBx_5parseINtB2e_7ParserIQNtB2e_6ParserE16add_capture_name0E0EBz_.exit: ; preds = %bb.a, %._crit_edge.i, %bb.b
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.b ], [ %1, %bb.a ], [ %.sroa.05.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %._crit_edge.i ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RINvMNtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB3_11HeapVisitor5visitINtNtB5_5print6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEEB7_(ptr align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  store ptr %2, ptr %i.g, align 8
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtCsfcggljOhZkm_12regex_syntax3hir3HirNtNtBH_7visitor5FrameEE5clearBJ_(ptr align 8 %0)
  call void @_RNvYINtNtNtCsfcggljOhZkm_12regex_syntax3hir5print6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtNtB7_7visitor7Visitor5startB9_(ptr nonnull align 8 %i.g)
  %i.h = call zeroext i1 @_RNvXs1_NtNtCsfcggljOhZkm_12regex_syntax3hir5printINtB5_6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtNtB7_7visitor7Visitor9visit_preB9_(ptr nonnull align 8 %i.g, ptr align 8 %1)
  %i.i = call zeroext i1 @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfcggljOhZkm_12regex_syntax(i1 zeroext %i.h)
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %i.m = call zeroext i1 @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 @5)
  br label %bb.u

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 3 uses
  call void @_RNvMNtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB2_11HeapVisitor6induct(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr align 8 poison, ptr align 8 %.sroa.0.042)
  %i.n = load i64, ptr %i.f, align 8              ; 3 uses
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  switch i64 %i.n, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit
    i64 3, label %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8
  %.sroa.0.0.in.i.sroa.speculate.load. = load ptr, ptr %i.o, align 8
  br label %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit

bb.f:                                             ; preds = %bb.c
  %.sroa.0.0.in.i.sroa.speculate.load.24 = load ptr, ptr %.sroa.3.0.copyload, align 8
  br label %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit

_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit: ; preds = %bb.c, %bb.c, %bb.e, %bb.f
  %.sroa.0.0.in.i.sroa.speculated = phi ptr [ %.sroa.0.0.in.i.sroa.speculate.load., %bb.e ], [ %.sroa.0.0.in.i.sroa.speculate.load.24, %bb.f ], [ %.sroa.3.0.copyload, %bb.c ], [ %.sroa.3.0.copyload, %bb.c ]
  store ptr %.sroa.0.042, ptr %i.e, align 8
  store i64 %i.n, ptr %i.j, align 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  br label %.backedge

.backedge:                                        ; preds = %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit, %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit18
  %.sink = phi ptr [ %i.e, %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit ], [ %i.b, %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit18 ]
  %.sroa.0.0.be = phi ptr [ %.sroa.0.0.in.i.sroa.speculated, %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit ], [ %.sroa.0.0.in.i16.sroa.speculated, %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit18 ] ; 2 uses
  call void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCsfcggljOhZkm_12regex_syntax3hir3HirNtNtBI_7visitor5FrameEE4pushBK_(ptr align 8 %0, ptr nonnull align 8 %.sink)
  %i.p = call zeroext i1 @_RNvXs1_NtNtCsfcggljOhZkm_12regex_syntax3hir5printINtB5_6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtNtB7_7visitor7Visitor9visit_preB9_(ptr nonnull align 8 %i.g, ptr align 8 %.sroa.0.0.be)
  %i.q = call zeroext i1 @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfcggljOhZkm_12regex_syntax(i1 zeroext %i.p)
  br i1 %i.q, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.b
  %i.r = call zeroext i1 @_RNvXs1_NtNtCsfcggljOhZkm_12regex_syntax3hir5printINtB5_6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtNtB7_7visitor7Visitor10visit_postB9_(ptr nonnull align 8 %i.g, ptr align 8 %.sroa.0.042)
  %i.s = call zeroext i1 @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfcggljOhZkm_12regex_syntax(i1 zeroext %i.r)
  br i1 %i.s, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.t = call zeroext i1 @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 @4)
  br label %bb.u

.preheader:                                       ; preds = %bb.g, %bb.l
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtCsfcggljOhZkm_12regex_syntax3hir3HirNtNtBH_7visitor5FrameEE3popBJ_(ptr nonnull sret([40 x i8]) align 8 %i.d, ptr align 8 %0)
  %i.u = load i64, ptr %i.k, align 8
  %.not14 = icmp eq i64 %i.u, -1
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.v = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @_RNvMNtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB2_11HeapVisitor3pop(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr align 8 poison, ptr nonnull align 8 %i.a)
  %i.w = load i64, ptr %i.c, align 8              ; 3 uses
  %.not15 = icmp eq i64 %i.w, -1
  br i1 %.not15, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.x = load ptr, ptr %i.g, align 8
  %i.y = call zeroext i1 @_RNvXs1_NtNtCsfcggljOhZkm_12regex_syntax3hir5printINtB5_6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtNtB7_7visitor7Visitor6finishB9_(ptr align 8 %i.x)
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  switch i64 %i.w, label %bb.m [
    i64 2, label %bb.p
    i64 3, label %bb.q
    i64 0, label %bb.n
    i64 1, label %bb.o
  ]

bb.l:                                             ; preds = %bb.i
  %i.z = call zeroext i1 @_RNvXs1_NtNtCsfcggljOhZkm_12regex_syntax3hir5printINtB5_6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtNtB7_7visitor7Visitor10visit_postB9_(ptr nonnull align 8 %i.g, ptr align 8 %i.v)
  %i.aa = call zeroext i1 @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfcggljOhZkm_12regex_syntax(i1 zeroext %i.z)
  br i1 %i.aa, label %bb.t, label %.preheader

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %.sroa.0.0.in.i16.sroa.speculate.load. = load ptr, ptr %i.ab, align 8
  br label %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit18

bb.o:                                             ; preds = %bb.k
  %.sroa.0.0.in.i16.sroa.speculate.load.35 = load ptr, ptr %.sroa.4.0.copyload, align 8
  br label %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit18

_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit18: ; preds = %bb.p, %bb.q, %bb.n, %bb.o
  %.sroa.0.0.in.i16.sroa.speculated = phi ptr [ %.sroa.0.0.in.i16.sroa.speculate.load., %bb.n ], [ %.sroa.0.0.in.i16.sroa.speculate.load.35, %bb.o ], [ %.sroa.4.0.copyload, %bb.p ], [ %.sroa.4.0.copyload, %bb.q ]
  store ptr %i.v, ptr %i.b, align 8
  store i64 %i.w, ptr %i.l, align 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx31, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  br label %.backedge

bb.p:                                             ; preds = %bb.k
  %i.ac = call zeroext i1 @_RNvYINtNtNtCsfcggljOhZkm_12regex_syntax3hir5print6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtNtB7_7visitor7Visitor15visit_concat_inB9_(ptr nonnull align 8 %i.g)
  %i.ad = call zeroext i1 @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfcggljOhZkm_12regex_syntax(i1 zeroext %i.ac)
  br i1 %i.ad, label %bb.r, label %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit18

bb.q:                                             ; preds = %bb.k
  %i.ae = call zeroext i1 @_RNvXs1_NtNtCsfcggljOhZkm_12regex_syntax3hir5printINtB5_6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterENtNtB7_7visitor7Visitor20visit_alternation_inB9_(ptr nonnull align 8 %i.g)
  %i.af = call zeroext i1 @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsfcggljOhZkm_12regex_syntax(i1 zeroext %i.ae)
  br i1 %i.af, label %bb.s, label %_RNvMs_NtNtCsfcggljOhZkm_12regex_syntax3hir7visitorNtB4_5Frame5child.exit18

bb.r:                                             ; preds = %bb.p
  %i.ag = call zeroext i1 @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 @1)
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ah = call zeroext i1 @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 @2)
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.ai = call zeroext i1 @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 @3)
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bb.r, %bb.s, %bb.t, %bb.h, %._crit_edge
  %.sroa.04.0.in = phi i1 [ %i.m, %._crit_edge ], [ %i.t, %bb.h ], [ %i.ag, %bb.r ], [ %i.ah, %bb.s ], [ %i.ai, %bb.t ], [ %i.y, %bb.j ]
  ret i1 %.sroa.04.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs5_NtCsfcggljOhZkm_12regex_syntax5errorNtB6_5Spans14from_formatterNtNtB8_3ast9ErrorKindEB8_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.441 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [72 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern13into_searcherCsfcggljOhZkm_12regex_syntax(ptr nonnull sret([48 x i8]) align 8 %.sroa.39.0..sroa_idx.i, i32 10, ptr %i.l, i64 %i.n)
  store i64 0, ptr %i.j, align 8, !alias.scope !4
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.n, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !4
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !4
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  store i8 0, ptr %.sroa.511.0..sroa_idx.i, align 1, !alias.scope !4
  %i.o = call i64 @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB8_4iter6traits8iterator8Iterator5countCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.j) ; 3 uses
  store i64 %i.o, ptr %i.k, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = load i64, ptr %i.m, align 8
  %i.r = call zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern12is_suffix_ofCsfcggljOhZkm_12regex_syntax(i32 10, ptr %i.p, i64 %i.q)
  br i1 %i.r, label %bb.b, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %i.s = phi i64 [ %i.u, %bb.b ], [ %i.o, %bb.a ]
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %bb.f, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.u, ptr %i.k, align 8
  br label %thread-pre-split

bb.c:                                             ; preds = %thread-pre-split
  call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringjNtB5_8ToString9to_stringCsfcggljOhZkm_12regex_syntax(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.k)
  %i.v = invoke i64 @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String3lenCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.i) #19
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.i)
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.e
  %.sroa.0.0 = phi i64 [ %i.v, %bb.e ], [ 0, %thread-pre-split ]
  %i.x = load ptr, ptr %1, align 8
  %i.y = load i64, ptr %i.m, align 8
  call void @_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE3newBF_(ptr nonnull sret([24 x i8]) align 8 %i.f)
  %i.z = load i64, ptr %i.k, align 8
  call void @_RINvNtCscdodAO9FK5_5alloc3vec9from_elemINtB2_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanEEBP_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f, i64 %i.z)
  invoke void @_RNvMNtCscdodAO9FK5_5alloc3vecINtB2_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE3newBF_(ptr nonnull sret([24 x i8]) align 8 %i.e)
          to label %bb.k unwind label %bb.i

bb.g:                                             ; preds = %bb.j, %bb.i, %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.ab, %bb.i ], [ %i.w, %bb.d ]
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtCsfcggljOhZkm_12regex_syntax3ast4SpanEEEB1f_(ptr nonnull align 8 %i.g) #19
          to label %bb.h unwind label %bb.g

bb.j:                                             ; preds = %.noexc13, %.noexc9, %.noexc11, %.noexc10, %bb.r, %bb.q, %.noexc6, %.noexc, %.noexc4, %.noexc3, %bb.m, %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfcggljOhZkm_12regex_syntax5error5SpansEBF_(ptr nonnull align 8 %i.h) #19
          to label %bb.h unwind label %bb.g

bb.k:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.x, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %i.y, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %.sroa.0.0, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ai, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.424.0.copyload = load i64, ptr %.sroa.424.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = icmp eq i64 %.sroa.3.0.copyload, %.sroa.424.0.copyload
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.3.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx18, align 8
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  %.sroa.424.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.424.0.copyload, ptr %.sroa.424.0..sroa_idx25, align 8
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx29, align 8
  invoke void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE4pushBI_(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.d)
          to label %.noexc unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.ak = add i64 %.sroa.3.0.copyload, -1         ; 2 uses
  %i.al = invoke align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCsfcggljOhZkm_12regex_syntax3ast4SpanEEINtNtNtCs4NRVxsYgnAr_4core3ops5index8IndexMutjE9index_mutBM_(ptr nonnull align 8 %i.h, i64 %i.ak, ptr nonnull align 8 @18)
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.m
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.3.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx20, align 8
  %.sroa.4.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %.sroa.424.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.3.0.copyload, ptr %.sroa.424.0..sroa_idx27, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx31, align 8
  invoke void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE4pushBI_(ptr align 8 %i.al, ptr nonnull align 8 %i.c)
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %.noexc3
  %i.am = invoke align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCsfcggljOhZkm_12regex_syntax3ast4SpanEEINtNtNtCs4NRVxsYgnAr_4core3ops5index8IndexMutjE9index_mutBM_(ptr nonnull align 8 %i.h, i64 %i.ak, ptr nonnull align 8 @19)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc4, %bb.l
  %.sink.i = phi ptr [ %i.ag, %bb.l ], [ %i.am, %.noexc4 ]
  %i.an = invoke { ptr, i64 } @_RNvXs8_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanENtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mutBI_(ptr align 8 %.sink.i)
          to label %.noexc6 unwind label %bb.j    ; 2 uses

.noexc6:                                          ; preds = %.noexc
  %i.ao = extractvalue { ptr, i64 } %i.an, 0
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  invoke void @_RINvNtCscdodAO9FK5_5alloc5slice11stable_sortNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYBG_NtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltEBK_(ptr align 8 %i.ao, i64 %i.ap)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 6 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvMs5_NtCsfcggljOhZkm_12regex_syntax5errorNtB5_5Spans3add.exit15, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  ret void

bb.p:                                             ; preds = %bb.n
  %.sroa.033.0.copyload = load i64, ptr %i.ar, align 8 ; 2 uses
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.336.0.copyload = load i64, ptr %.sroa.336.0..sroa_idx, align 8 ; 5 uses
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.0..sroa_idx, i64 16, i1 false)
end_hunk_0
