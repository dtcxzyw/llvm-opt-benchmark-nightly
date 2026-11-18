Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.09?download=true
inline.NumInlined: 137
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState14consume_number:tailrecurse
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 2, ptr %i.di, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.ar

bb.bh:                                            ; preds = %bb.bf, %bb.bf
  %i.dj = load ptr, ptr %i.e, align 8, !nonnull !14, !align !15, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  %i.dl = call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.dk), !noalias !80, !inline_history !77 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 2, ptr %i.dm, align 4, !alias.scope !80
  store i32 -1, ptr %0, align 8, !alias.scope !80
  br label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState14consume_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !83 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 13 uses
  %i.c = tail call noundef i32 @_RNvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPosition4peek(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) ; 2 uses
  switch i32 %i.c, label %.critedge.i [
    i32 34, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i
    i32 39, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.thread
  ]

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  store i32 %i.c, ptr %i.a, align 4, !noalias !84
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 66, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i: ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RINvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB6_12TextPosition7consumeReEBa_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 3)
  br i1 %i.d, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us.preheader

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.thread: ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RINvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB6_12TextPosition7consumeReEBa_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 3)
  br i1 %i.e, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.preheader

_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i, %bb.d
  %.sroa.03.027.us.us = phi i64 [ %.sroa.03.2.us.us, %bb.d ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i ]
  %i.f = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
  switch i32 %i.f, label %bb.d [
    i32 -1, label %.critedge
    i32 92, label %bb.b
    i32 34, label %bb.c
  ]

bb.b:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us
  %i.g = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us
  %i.h = add i64 %.sroa.03.027.us.us, 1
  br label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us, %bb.c, %bb.b
  %.sroa.03.2.us.us = phi i64 [ %i.h, %bb.c ], [ 0, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us ], [ 0, %bb.b ] ; 2 uses
  %.not23.us.us = icmp eq i64 %.sroa.03.2.us.us, 3
  br i1 %.not23.us.us, label %.split29.us, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us

_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.thread, %bb.g
  %.sroa.03.027.us = phi i64 [ %.sroa.03.2.us, %bb.g ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.thread ]
  %i.i = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
  switch i32 %i.i, label %bb.g [
    i32 -1, label %.critedge
    i32 39, label %bb.f
    i32 92, label %bb.e
  ]

bb.e:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split
  %i.j = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split
  %i.k = add i64 %.sroa.03.027.us, 1
  br label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split, %bb.f, %bb.e
  %.sroa.03.2.us = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ], [ 0, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split ] ; 2 uses
  %.not23.us = icmp eq i64 %.sroa.03.2.us, 3
  br i1 %.not23.us, label %.split29.us, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split

_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.thread
  %i.l = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) ; 0 uses
  br label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split

_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i
  %i.m = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) ; 0 uses
  br label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us

_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us: ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us.preheader, %bb.j
  %.sroa.03.027.us30 = phi i64 [ %.sroa.03.2.us32, %bb.j ], [ 0, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us.preheader ]
  %i.n = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
  switch i32 %i.n, label %bb.j [
    i32 -1, label %.critedge
    i32 10, label %.critedge
    i32 92, label %bb.h
    i32 34, label %bb.i
  ]

bb.h:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us
  %i.o = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us
  %i.p = add i64 %.sroa.03.027.us30, 1
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us, %bb.i, %bb.h
  %.sroa.03.2.us32 = phi i64 [ %i.p, %bb.i ], [ 0, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us ], [ 0, %bb.h ] ; 2 uses
  %.not23.us33 = icmp eq i64 %.sroa.03.2.us32, 1
  br i1 %.not23.us33, label %.split29.us, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us

.split29.us:                                      ; preds = %bb.l, %bb.g, %bb.j, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.q, align 4
  br label %.critedge

_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split: ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.preheader, %bb.l
  %.sroa.03.027 = phi i64 [ %.sroa.03.2, %bb.l ], [ 0, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.preheader ]
  %i.r = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
  switch i32 %i.r, label %bb.l [
    i32 -1, label %.critedge
    i32 10, label %.critedge
    i32 39, label %bb.k
    i32 92, label %bb.m
  ]

.critedge:                                        ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us, %.split29.us
  %storemerge26 = phi i32 [ -1, %.split29.us ], [ 14, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split.us ], [ 13, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us ], [ 14, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.us.split ], [ 13, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split.us ], [ 13, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split ], [ 13, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split ]
  store i32 %storemerge26, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split
  %i.s = add i64 %.sroa.03.027, 1
  br label %bb.l

bb.l:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split, %bb.m, %bb.k
  %.sroa.03.2 = phi i64 [ %i.s, %bb.k ], [ 0, %bb.m ], [ 0, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split ] ; 2 uses
  %.not23 = icmp eq i64 %.sroa.03.2, 1
  br i1 %.not23, label %.split29.us, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split

bb.m:                                             ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.split.split
  %i.t = tail call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) ; 0 uses
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState20consume_decimal_tail(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 !guid !85 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE4withNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1O_8TokState20consume_decimal_tail0bEB1S_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @18, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !14, !align !15, !noundef !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = call noundef i32 @_RNvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPosition4peek(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
  %i.f = icmp eq i32 %i.e, 95
  %. = select i1 %i.f, i32 6, i32 -1
  store i32 %., ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState37consume_identifier_or_prefixed_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !133 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [256 x i8], align 8               ; 27 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  store ptr %1, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE4withNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1O_8TokState37consume_identifier_or_prefixed_string0bEB1S_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @24, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !14, !align !15, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.l) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = call noundef i32 @_RNvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPosition4peek(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.l)
  switch i32 %i.n, label %bb.d [
    i32 39, label %bb.p
    i32 34, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = call noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE4withNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1O_8TokState37consume_identifier_or_prefixed_strings0_0bEB1S_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @25, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) ; 0 uses
  %i.p = load ptr, ptr %i.i, align 8, !nonnull !14, !align !15, !noundef !14 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.s = call { ptr, i64 } @_RNvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPosition20slice_from_start_pos(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 10 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.t, ptr %i.f, align 8, !noalias !134
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.u, ptr %i.v, align 8, !noalias !134
  %i.w = icmp samesign ult i64 %i.u, 64
  br i1 %i.w, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = and i64 %i.u, 9223372036854775744
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x ; 3 uses
  %i.z = and i64 %i.u, 63                         ; 2 uses
  br label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 64 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.e
  %.sroa.01.028.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.t, %bb.e ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i.i, align 1, !alias.scope !135, !noalias !136
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i.i = load <2 x i64>, ptr %i.ac, align 1, !alias.scope !135, !noalias !137
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i.i = load <2 x i64>, ptr %i.ad, align 1, !alias.scope !135, !noalias !138
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i.i = load <2 x i64>, ptr %i.ae, align 1, !alias.scope !135, !noalias !139
  %i.af = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i, %.sroa.0.0.copyload.i.i.i.i
  %i.ag = or <2 x i64> %i.af, %.sroa.0.0.copyload.i10.i.i.i
  %i.ah = or <2 x i64> %i.ag, %.sroa.0.0.copyload.i11.i.i.i
  %i.ai = bitcast <2 x i64> %i.ah to <16 x i8>
  %i.aj = icmp slt <16 x i8> %i.ai, zeroinitializer
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.f, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

._crit_edge.i.i.i:                                ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.an = icmp samesign eq i64 %i.z, 0
  br i1 %i.an, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.am
  br i1 %i.ap, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i, %bb.g
  %i.aq = phi ptr [ %i.ao, %bb.g ], [ %i.y, %._crit_edge.i.i.i ] ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.aq, align 1, !alias.scope !135, !noalias !140, !noundef !14
  %i.ar = icmp sgt i8 %.val.i.i.i.i, -1
  br i1 %i.ar, label %bb.g, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

bb.h:                                             ; preds = %bb.d
  %i.as = and i64 %i.u, 56                        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.as ; 7 uses
  %i.au = and i64 %i.u, 7                         ; 7 uses
  %.not.i.i60 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i60, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsarohYtwVpE2_13libcst_native.exit.i.i

bb.i:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsarohYtwVpE2_13libcst_native.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i62, i64 8
  %2 = add nsw i64 %.sroa.6.0.i.i61, -8           ; 2 uses
  %.not.i.i.a = icmp eq i64 %2, 0
  br i1 %.not.i.i.a, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsarohYtwVpE2_13libcst_native.exit.i.i

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %i.aw = icmp samesign eq i64 %i.au, 0
  br i1 %i.aw, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph64

bb.j:                                             ; preds = %.lr.ph64
  %i.ax = icmp samesign eq i64 %i.au, 1
  br i1 %i.ax, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph64.1

.lr.ph64.1:                                       ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %.val.i.i.i.1 = load i8, ptr %i.ay, align 1, !alias.scope !141, !noalias !142, !noundef !14
  %i.az = icmp sgt i8 %.val.i.i.i.1, -1
  br i1 %i.az, label %bb.k, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

bb.k:                                             ; preds = %.lr.ph64.1
  %i.ba = icmp samesign eq i64 %i.au, 2
  br i1 %i.ba, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph64.2

.lr.ph64.2:                                       ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %.val.i.i.i.2 = load i8, ptr %i.bb, align 1, !alias.scope !141, !noalias !142, !noundef !14
  %i.bc = icmp sgt i8 %.val.i.i.i.2, -1
  br i1 %i.bc, label %bb.l, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

bb.l:                                             ; preds = %.lr.ph64.2
  %i.bd = icmp samesign eq i64 %i.au, 3
  br i1 %i.bd, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph64.3

.lr.ph64.3:                                       ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %.val.i.i.i.3 = load i8, ptr %i.be, align 1, !alias.scope !141, !noalias !142, !noundef !14
  %i.bf = icmp sgt i8 %.val.i.i.i.3, -1
  br i1 %i.bf, label %bb.m, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

bb.m:                                             ; preds = %.lr.ph64.3
  %i.bg = icmp samesign eq i64 %i.au, 4
  br i1 %i.bg, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph64.4

.lr.ph64.4:                                       ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.val.i.i.i.4 = load i8, ptr %i.bh, align 1, !alias.scope !141, !noalias !142, !noundef !14
  %i.bi = icmp sgt i8 %.val.i.i.i.4, -1
  br i1 %i.bi, label %bb.n, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

bb.n:                                             ; preds = %.lr.ph64.4
  %i.bj = icmp samesign eq i64 %i.au, 5
  br i1 %i.bj, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph64.5

.lr.ph64.5:                                       ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 5
  %.val.i.i.i.5 = load i8, ptr %i.bk, align 1, !alias.scope !141, !noalias !142, !noundef !14
  %i.bl = icmp sgt i8 %.val.i.i.i.5, -1
  br i1 %i.bl, label %bb.o, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

bb.o:                                             ; preds = %.lr.ph64.5
  %i.bm = icmp samesign eq i64 %i.au, 6
  br i1 %i.bm, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %.lr.ph64.6

.lr.ph64.6:                                       ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %.val.i.i.i.6 = load i8, ptr %i.bn, align 1, !alias.scope !141, !noalias !142, !noundef !14
  %i.bo = icmp sgt i8 %.val.i.i.i.6, -1
  br i1 %i.bo, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

.lr.ph64:                                         ; preds = %._crit_edge
  %.val.i.i.i = load i8, ptr %i.at, align 1, !alias.scope !141, !noalias !142, !noundef !14
  %i.bp = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.bp, label %bb.j, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsarohYtwVpE2_13libcst_native.exit.i.i: ; preds = %bb.h, %bb.i
  %.sroa.0.017.i.i62 = phi ptr [ %i.av, %bb.i ], [ %i.t, %bb.h ] ; 2 uses
  %.sroa.6.0.i.i61 = phi i64 [ %2, %bb.i ], [ %i.as, %bb.h ]
  %.sroa.012.0.copyload.i.i = load i64, ptr %.sroa.0.017.i.i62, align 1, !alias.scope !141
  %i.bq = and i64 %.sroa.012.0.copyload.i.i, -9187201950435737472
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.i, label %_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit

_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit.thread: ; preds = %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.lr.ph64.6, %._crit_edge.i.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

_RNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsarohYtwVpE2_13libcst_native.exit.i.i, %.lr.ph64, %.lr.ph64.1, %.lr.ph64.2, %.lr.ph64.3, %.lr.ph64.4, %.lr.ph64.5, %.lr.ph64.6
  %i.bs = call noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE4withNCNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core17verify_identifier0bEB1R_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @26, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.bs, label %bb.aa, label %bb.z

bb.p:                                             ; preds = %bb.c, %bb.c
  %i.bt = load ptr, ptr %i.i, align 8, !nonnull !14, !align !15, !noundef !14 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 251
  %i.bv = load i8, ptr %i.bu, align 1, !range !16, !noundef !14
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.q, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1X_8TokState37consume_identifier_or_prefixed_strings_0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB21_.exit.thread

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1X_8TokState37consume_identifier_or_prefixed_strings_0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB21_.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkcNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1i_8TokState37consume_identifier_or_prefixed_strings_0E0B1m_.exit.i, %bb.p
  %i.bx = load ptr, ptr %i.i, align 8, !nonnull !14, !align !15, !noundef !14
  call fastcc void @_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState14consume_string(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(256) %i.bx)
  br label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 184
  %i.ca = call { ptr, i64 } @_RNvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPosition20slice_from_start_pos(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0      ; 3 uses
  %i.cc = extractvalue { ptr, i64 } %i.ca, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc ; 4 uses
  br label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkcNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1i_8TokState37consume_identifier_or_prefixed_strings_0E0B1m_.exit.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkcNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1i_8TokState37consume_identifier_or_prefixed_strings_0E0B1m_.exit.i: ; preds = %bb.t, %bb.q
  %i.ce = phi ptr [ %i.dn, %bb.t ], [ %i.cb, %bb.q ] ; 6 uses
  %.not.i.i21 = icmp eq ptr %i.ce, %i.cd
  br i1 %.not.i.i21, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1X_8TokState37consume_identifier_or_prefixed_strings_0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB21_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkcNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1i_8TokState37consume_identifier_or_prefixed_strings_0E0B1m_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 1, !noalias !143, !noundef !14 ; 5 uses
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %bb.s, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i: ; preds = %bb.r
  %i.ci = and i8 %i.cg, 31
  %i.cj = zext nneg i8 %i.ci to i32               ; 3 uses
  %i.ck = icmp ne ptr %i.cf, %i.cd
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 3 uses
  %i.cm = load i8, ptr %i.cf, align 1, !noalias !143, !noundef !14
  %i.cn = shl nuw nsw i32 %i.cj, 6
  %i.co = and i8 %i.cm, 63
  %i.cp = zext nneg i8 %i.co to i32               ; 2 uses
  %i.cq = or disjoint i32 %i.cn, %i.cp
  %i.cr = icmp samesign ugt i8 %i.cg, -33
  br i1 %i.cr, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cs = zext nneg i8 %i.cg to i32
  br label %bb.t

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i
  %i.ct = icmp ne ptr %i.cl, %i.cd
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 3 ; 3 uses
  %i.cv = load i8, ptr %i.cl, align 1, !noalias !143, !noundef !14
  %i.cw = shl nuw nsw i32 %i.cp, 6
  %i.cx = and i8 %i.cv, 63
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cw, %i.cy            ; 2 uses
  %i.da = shl nuw nsw i32 %i.cj, 12
  %i.db = or disjoint i32 %i.cz, %i.da
  %i.dc = icmp samesign ugt i8 %i.cg, -17
  br i1 %i.dc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i, label %bb.t

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i
  %i.dd = icmp ne ptr %i.cu, %i.cd
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.df = load i8, ptr %i.cu, align 1, !noalias !143, !noundef !14
  %i.dg = shl nuw nsw i32 %i.cj, 18
  %i.dh = and i32 %i.dg, 1835008
  %i.di = shl nuw nsw i32 %i.cz, 6
  %i.dj = and i8 %i.df, 63
  %i.dk = zext nneg i8 %i.dj to i32
  %i.dl = or disjoint i32 %i.di, %i.dk
  %i.dm = or disjoint i32 %i.dl, %i.dh
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i, %bb.s, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i
  %i.dn = phi ptr [ %i.cu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i ], [ %i.de, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i ], [ %i.cl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i ], [ %i.cf, %bb.s ]
  %spec.select.i.ph.i = phi i32 [ %i.db, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i ], [ %i.dm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i ], [ %i.cq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i ], [ %i.cs, %bb.s ]
  %i.do = add nsw i32 %spec.select.i.ph.i, -70    ; 2 uses
  %i.dp = call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 31) ; 3 uses
  %i.dq = icmp ult i32 %i.dp, 24
  %switch.shifted = lshr i32 8454273, %i.dp
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond65 = select i1 %i.dq, i1 %switch.lobit, i1 false
  br i1 %or.cond65, label %switch.lookup, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkcNCNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB1i_8TokState37consume_identifier_or_prefixed_strings_0E0B1m_.exit.i

switch.lookup:                                    ; preds = %bb.t
  %switch.cast = trunc nuw i32 %i.dp to i24
  %switch.downshift = lshr i24 -8388480, %switch.cast ; 2 uses
  %switch.masked = trunc i24 %switch.downshift to i1
  %i.dr = load ptr, ptr %i.i, align 8, !nonnull !14, !align !15, !noundef !14 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 96 ; 4 uses
  %i.dt = call noundef i32 @_RNvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPosition4peek(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ds), !noalias !144 ; 2 uses
  switch i32 %i.dt, label %.critedge.i.i [
    i32 34, label %bb.u
    i32 39, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.i
  ]

.critedge.i.i:                                    ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !146
  store i32 %i.dt, ptr %i.e, align 4, !noalias !146
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 66, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21, !noalias !144
  unreachable

bb.u:                                             ; preds = %switch.lookup
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.i: ; preds = %bb.u, %switch.lookup
  %i.du = phi i8 [ 1, %bb.u ], [ 0, %switch.lookup ]
  %i.dv = phi ptr [ @17, %bb.u ], [ @16, %switch.lookup ]
  %i.dw = call noundef zeroext i1 @_RINvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB6_12TextPosition7consumeReEBa_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ds, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dv, i64 noundef 3), !noalias !144 ; 2 uses
  br i1 %i.dw, label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.i
  %i.dx = call noundef i32 @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPositionNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ds), !noalias !144 ; 0 uses
  br label %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.i

_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.i: ; preds = %bb.v, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtNtCsarohYtwVpE2_13libcst_native9tokenizer4core12string_types15StringQuoteCharNtBJ_30StringQuoteCharConversionErrorE6expectBP_.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 184
  %i.dz = call { ptr, i64 } @_RNvMs1_NtNtCsarohYtwVpE2_13libcst_native9tokenizer13text_positionNtB5_12TextPosition20slice_from_start_pos(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy), !noalias !144 ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1      ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb ; 4 uses
  %i.ed = icmp samesign eq i64 %i.eb, 0
  br i1 %i.ed, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern15is_contained_inCsarohYtwVpE2_13libcst_native.exit.i, label %.lr.ph.i.i.i23

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCsarohYtwVpE2_13libcst_native.exit.loopexit.i.i.i: ; preds = %.preheader.i.preheader.i.i
  %i.ee = icmp eq ptr %i.fo, %i.ec
  br i1 %i.ee, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern15is_contained_inCsarohYtwVpE2_13libcst_native.exit.i, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCsarohYtwVpE2_13libcst_native.exit.loopexit.i.i.i
  %i.ef = phi ptr [ %i.fo, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCsarohYtwVpE2_13libcst_native.exit.loopexit.i.i.i ], [ %i.ea, %_RNvMNtNtCsarohYtwVpE2_13libcst_native9tokenizer4coreNtB2_8TokState18consume_open_quote.exit.i ] ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 3 uses
  %i.eh = load i8, ptr %i.ef, align 1, !alias.scope !147, !noalias !148, !noundef !14 ; 5 uses
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %bb.w, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i23
  %i.ej = and i8 %i.eh, 31
  %i.ek = zext nneg i8 %i.ej to i32               ; 3 uses
  %i.el = icmp ne ptr %i.eg, %i.ec
  call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 2 ; 3 uses
  %i.en = load i8, ptr %i.eg, align 1, !alias.scope !147, !noalias !148, !noundef !14
  %i.eo = shl nuw nsw i32 %i.ek, 6
  %i.ep = and i8 %i.en, 63
  %i.eq = zext nneg i8 %i.ep to i32               ; 2 uses
  %i.er = or disjoint i32 %i.eo, %i.eq
  %i.es = icmp samesign ugt i8 %i.eh, -33
  br i1 %i.es, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i.i.i.i, label %.preheader.i.preheader.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i23
  %i.et = zext nneg i8 %i.eh to i32
  br label %.preheader.i.preheader.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i.i.i.i
  %i.eu = icmp ne ptr %i.em, %i.ec
  call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 3 ; 3 uses
  %i.ew = load i8, ptr %i.em, align 1, !alias.scope !147, !noalias !148, !noundef !14
  %i.ex = shl nuw nsw i32 %i.eq, 6
  %i.ey = and i8 %i.ew, 63
  %i.ez = zext nneg i8 %i.ey to i32
  %i.fa = or disjoint i32 %i.ex, %i.ez            ; 2 uses
  %i.fb = shl nuw nsw i32 %i.ek, 12
  %i.fc = or disjoint i32 %i.fa, %i.fb
  %i.fd = icmp samesign ugt i8 %i.eh, -17
  br i1 %i.fd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i.i.i.i, label %.preheader.i.preheader.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i.i.i.i
  %i.fe = icmp ne ptr %i.ev, %i.ec
  call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.fg = load i8, ptr %i.ev, align 1, !alias.scope !147, !noalias !148, !noundef !14
  %i.fh = shl nuw nsw i32 %i.ek, 18
  %i.fi = and i32 %i.fh, 1835008
  %i.fj = shl nuw nsw i32 %i.fa, 6
  %i.fk = and i8 %i.fg, 63
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = or disjoint i32 %i.fm, %i.fi
  br label %.preheader.i.preheader.i.i

.preheader.i.preheader.i.i:                       ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i.i.i.i, %bb.w, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i.i.i.i
  %i.fo = phi ptr [ %i.ev, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i.i.i.i ], [ %i.ff, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i.i.i.i ], [ %i.em, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i.i.i.i ], [ %i.eg, %bb.w ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.fc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit14.i.i.i.i.i.i ], [ %i.fn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit16.i.i.i.i.i.i ], [ %i.er, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsarohYtwVpE2_13libcst_native.exit12.i.i.i.i.i.i ], [ %i.et, %bb.w ] ; 2 uses
  %i.fp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fp)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherRScENtB5_8Searcher4nextCsarohYtwVpE2_13libcst_native.exit.loopexit.i.i.i [
    i32 114, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern15is_contained_inCsarohYtwVpE2_13libcst_native.exit.i
end_hunk_0
