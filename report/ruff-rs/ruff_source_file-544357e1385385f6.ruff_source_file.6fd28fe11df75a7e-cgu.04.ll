Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_source_file-544357e1385385f6.ruff_source_file.6fd28fe11df75a7e-cgu.04?download=true
inline.NumInlined: 36
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN = external local_unnamed_addr global { { { ptr } } }
@_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr12memrchr2_raw2FN = external local_unnamed_addr global { { { ptr } } }
@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant [43 x i8] c"crates/ruff_source_file/src/line_ranges.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00T\01\00\00\19\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00h\01\00\00\1A\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00j\01\00\000\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00z\01\00\00\0E\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00\8A\01\00\00\0E\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00\82\01\00\00#\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00q\01\00\00\1A\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00s\01\00\000\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00~\01\00\00\0E\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00\86\01\00\00\0E\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9BeaGo73rC4_16ruff_source_file }>, align 8
@14 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@15 = private unnamed_addr constant [36 x i8] c"crates/ruff_text_size/src/traits.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"#\00\00\00\00\00\00\00\13\00\00\00\1F\00\00\00" }>, align 8
@17 = private unnamed_addr constant [38 x i8] c"assertion failed: start.raw <= end.raw", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00{\00\00\00\09\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00\E2\00\00\00\09\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00c\00\00\00\09\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"*\00\00\00\00\00\00\00\C2\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = zext i32 %2 to i64                       ; 6 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp ugt i64 %1, %i.b
  br i1 %.not6.i, label %bb.c, label %.split7.i

.split7.i:                                        ; preds = %bb.b
  %i.d = icmp eq i64 %1, %i.b
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !13, !noundef !4
  %i.g = icmp sgt i8 %i.f, -65
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.split7.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.i = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr12memrchr2_raw2FN monotonic, align 8, !noalias !14, !nonnull !4, !noundef !4
  %i.j = tail call { i64, ptr } %i.i(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.h), !noalias !14, !inline_history !10 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit, label %bb.f

bb.e:                                             ; preds = %bb.c, %.split7.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit: ; preds = %bb.d
  %i.m = extractvalue { i64, ptr } %i.j, 1
  %i.n = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs9BeaGo73rC4_16ruff_source_file(ptr noundef %i.m, ptr noundef nonnull readonly %0) ; 2 uses
  %.not.i = icmp ult i64 %i.n, %i.b
  tail call void @llvm.assume(i1 %.not.i)
  %.sroa.6.0.extract.trunc.i = trunc i64 %i.n to i32
  %i.o = add nuw i32 %.sroa.6.0.extract.trunc.i, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15
  store i32 12565487, ptr %i.a, align 4, !noalias !15
  %i.p = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  %..i = select i1 %i.p, i32 3, i32 0
  br label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit, %bb.f
  %.sroa.0.0 = phi i32 [ %i.o, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit ], [ %..i, %bb.f ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges13full_line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = zext i32 %2 to i64                       ; 6 uses
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ugt i64 %1, %i.c
  br i1 %.not.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.e = icmp eq i64 %1, %i.c
  br i1 %i.e, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !27, !noundef !4
  %i.h = icmp sgt i8 %i.g, -65
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %.split.i, %bb.a
  %i.i = sub nuw i64 %1, %i.c                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !29, !nonnull !4, !noundef !4
  %i.m = tail call { i64, ptr } %i.l(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.k), !noalias !30, !inline_history !22 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { i64, ptr } %i.m, 1
  %i.q = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs9BeaGo73rC4_16ruff_source_file(ptr noundef %i.p, ptr noundef nonnull readonly %i.j) ; 5 uses
  %.not.i.i = icmp ult i64 %i.q, %i.i
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !28, !noundef !4
  %cond = icmp eq i8 %i.s, 13
  br i1 %cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.i
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !28, !noundef !4
  %i.x = icmp eq i8 %i.w, 10
  %i.y = select i1 %i.x, i32 2, i32 1
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %.split.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %i.c, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #7
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.3.0.i25.ph = phi i32 [ 1, %bb.e ], [ 1, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp ugt i64 %i.q, 4294967295
  %i.aa = shl nuw i64 %i.q, 32
  %.sroa.021.0.insert.insert = select i1 %i.z, i64 513, i64 %i.aa ; 2 uses
  %i.ab = trunc i64 %.sroa.021.0.insert.insert to i1
  br i1 %i.ab, label %bb.j, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31
  store i8 2, ptr %i.b, align 1, !noalias !31
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #7
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit: ; preds = %bb.i
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.021.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.ac = add i32 %2, %.sroa.6.0.extract.trunc.i
  %i.ad = add i32 %i.ac, %.sroa.3.0.i25.ph
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.ae = icmp ugt i64 %1, 4294967295
  %i.af = shl nuw i64 %1, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.ae, i64 513, i64 %i.af ; 2 uses
  %i.ag = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.ag, label %bb.l, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit, !prof !5

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32
  store i8 2, ptr %i.a, align 1, !noalias !32
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #7
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit: ; preds = %bb.k
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  br label %bb.m

bb.m:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  %.sroa.0.0 = phi i32 [ %i.ad, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit ], [ %.sroa.6.0.extract.trunc.i.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges13full_line_str(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.b = zext i32 %2 to i64                       ; 6 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i.i.i = icmp ugt i64 %1, %i.b
  br i1 %.not6.i.i.i, label %bb.c, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.b
  %i.d = icmp eq i64 %1, %i.b
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !48, !noundef !4
  %i.g = icmp sgt i8 %i.f, -65
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.split7.i.i.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.i = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr12memrchr2_raw2FN monotonic, align 8, !noalias !49, !nonnull !4, !noundef !4
  %i.j = tail call { i64, ptr } %i.i(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.h), !noalias !50, !inline_history !41 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit.i.i, label %bb.f

bb.e:                                             ; preds = %bb.c, %.split7.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #7
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit.i.i: ; preds = %bb.d
  %i.m = extractvalue { i64, ptr } %i.j, 1
  %i.n = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs9BeaGo73rC4_16ruff_source_file(ptr noundef %i.m, ptr noundef nonnull readonly %0) ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.n, %i.b
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %i.n to i32
  %i.o = add nuw i32 %.sroa.6.0.extract.trunc.i.i.i, 1
  br label %_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  store i32 12565487, ptr %i.a, align 4, !noalias !51
  %i.p = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  %..i.i.i = select i1 %i.p, i32 3, i32 0
  br label %_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start.exit.i

_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start.exit.i: ; preds = %bb.f, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %i.o, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file.exit.i.i ], [ %..i.i.i, %bb.f ] ; 3 uses
  %i.q = call noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges13full_line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %2) ; 3 uses
  %.not.i = icmp ugt i32 %.sroa.0.0.i.i, %i.q
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !5

bb.g:                                             ; preds = %_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #7
  unreachable

bb.h:                                             ; preds = %_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start.exit.i
  %i.r = zext i32 %.sroa.0.0.i.i to i64           ; 6 uses
  %i.s = zext i32 %i.q to i64                     ; 5 uses
  %i.t = icmp eq i32 %.sroa.0.0.i.i, 0
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not5.i = icmp ugt i64 %1, %i.r
  br i1 %.not5.i, label %bb.k, label %.split.i

bb.j:                                             ; preds = %bb.k, %.split.i, %bb.h
  %i.u = icmp eq i32 %i.q, 0
  br i1 %i.u, label %bb.n, label %bb.l

.split.i:                                         ; preds = %bb.i
  %i.v = icmp eq i64 %1, %i.r
  br i1 %i.v, label %bb.j, label %bb.o
end_hunk_0
