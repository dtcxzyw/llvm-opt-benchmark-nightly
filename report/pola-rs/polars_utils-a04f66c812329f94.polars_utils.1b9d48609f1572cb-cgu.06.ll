Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_utils-a04f66c812329f94.polars_utils.1b9d48609f1572cb-cgu.06?download=true
inline.NumInlined: 120
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [39 x i8] c"memory map offset is larger than length", align 1
@_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global i64
@1 = private unnamed_addr constant [45 x i8] c"crates/polars-utils/src/calc_morsel_split.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c",\00\00\00\00\00\00\00E\00\00\00\1F\00\00\00" }>, align 8
@3 = private unnamed_addr constant [45 x i8] c"cannot use end_position() on a negative slice", align 1
@4 = private unnamed_addr constant [38 x i8] c"crates/polars-utils/src/slice_enum.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"%\00\00\00\00\00\00\006\00\00\00\0D\00\00\00" }>, align 8
@6 = private unnamed_addr constant [48 x i8] c"cannot use positive_offset() on a negative slice", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"%\00\00\00\00\00\00\00*\00\00\00\0D\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"%\00\00\00\00\00\00\00n\00\00\00H\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"%\00\00\00\00\00\00\00r\00\00\004\00\00\00" }>, align 8
@10 = private unnamed_addr constant [42 x i8] c"cannot use offsetted() on a negative slice", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"%\00\00\00\00\00\00\00B\00\00\00\0D\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCscgRAwXFJnXP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@13 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCscgRAwXFJnXP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@15 = private unnamed_addr constant [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0", align 8
@16 = private unnamed_addr constant [15 x i8] c"\0C_POLARS_TMP_\C0\00", align 1
@17 = private unnamed_addr constant [34 x i8] c"crates/polars-utils/src/pl_str.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"!\00\00\00\00\00\00\00;\01\00\00\05\00\00\00" }>, align 8
@_RNvNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name7COUNTER = internal global [8 x i8] zeroinitializer, align 8
@19 = private unnamed_addr constant [18 x i8] c"variant identifier", align 1
@20 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"%\00\00\00\00\00\00\00\87\00\00\00;\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"!\00\00\00\00\00\00\009\00\00\00\0E\00\00\00" }>, align 8
@23 = private unnamed_addr constant [10 x i8] c"enum Slice", align 1
@24 = private unnamed_addr constant [30 x i8] c"struct variant Slice::Positive", align 1
@25 = private unnamed_addr constant [30 x i8] c"struct variant Slice::Negative", align 1
@26 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCs2mZqlW55729_12polars_utils }>, align 8
@27 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@28 = private unnamed_addr constant [5 x i8] c"Error", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions18map_copy_read_onlyRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call noundef i32 @_RNvXs_Cs61SnqI2q75L_7memmap2RNtNtCsh8eZTKRCwoO_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14
  call void @llvm.experimental.noalias.scope.decl(metadata !16), !dbg !19
  %i.d = load i64, ptr %1, align 8, !dbg !20, !range !24, !alias.scope !16, !noalias !25, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1, !dbg !27
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !27

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20
  %i.g = load i64, ptr %i.f, align 8, !dbg !28, !alias.scope !16, !noalias !25, !noundef !12
  br label %bb.d, !dbg !29

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef i32 @_RNvXs_Cs61SnqI2q75L_7memmap2RNtNtCsh8eZTKRCwoO_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !30, !noalias !16
  %i.i = call { i64, ptr } @_RNvNtCs61SnqI2q75L_7memmap22os8file_len(i32 noundef %i.h), !dbg !31, !noalias !16 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0, !dbg !31
  %i.k = extractvalue { i64, ptr } %i.i, 1, !dbg !31 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64, !dbg !31       ; 2 uses
  %i.m = trunc nuw i64 %i.j to i1, !dbg !33
  br i1 %i.m, label %bb.e, label %bb.f, !dbg !33

bb.d:                                             ; preds = %bb.g, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.b ], [ %i.s, %bb.g ], !dbg !40
  %i.n = call { i64, ptr } @_RNvMs0_Cs61SnqI2q75L_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef %.sroa.01.0.i), !dbg !41, !noalias !16
  br label %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit, !dbg !43

bb.e:                                             ; preds = %bb.c
  %i.o = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.k, 1, !dbg !44
  br label %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit, !dbg !44

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !47
  %i.q = load i64, ptr %i.p, align 8, !dbg !47, !alias.scope !16, !noalias !25, !noundef !12 ; 2 uses
  %i.r = icmp ugt i64 %i.q, %i.l, !dbg !49
  br i1 %i.r, label %bb.h, label %bb.g, !dbg !49

bb.g:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %i.l, %i.q, !dbg !50
  br label %bb.d, !dbg !29

bb.h:                                             ; preds = %bb.f
  %i.t = call noundef nonnull ptr @_RINvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 39) #19, !dbg !51, !noalias !16
  %i.u = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.t, 1, !dbg !52
  br label %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit, !dbg !52

_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.d, %bb.e, %bb.h
  %.merged.i = phi { i64, ptr } [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.u, %bb.h ], !dbg !43 ; 2 uses
  %i.v = extractvalue { i64, ptr } %.merged.i, 0, !dbg !54
  %i.w = extractvalue { i64, ptr } %.merged.i, 1, !dbg !54 ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1, !dbg !55
  br i1 %i.x, label %bb.k, label %bb.i, !dbg !55

bb.i:                                             ; preds = %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit
  %i.y = ptrtoint ptr %i.w to i64, !dbg !54
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !57
  %i.aa = load i64, ptr %i.z, align 8, !dbg !57, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 27, !dbg !58
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !58, !range !59, !noundef !12
  %i.ad = trunc nuw i8 %i.ac to i1, !dbg !58
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !60
  %i.af = load i8, ptr %i.ae, align 4, !dbg !60, !range !59, !noundef !12
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !60
  call void @_RNvMNtCs61SnqI2q75L_7memmap22osNtB2_9MmapInner18map_copy_read_only(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.y, i32 noundef %i.c, i64 noundef %i.aa, i1 noundef zeroext %i.ad, i1 noundef zeroext %i.ag), !dbg !14
  %i.ah = load i64, ptr %i.a, align 8, !dbg !61, !range !24, !noundef !12
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !66
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !66, !noundef !12 ; 2 uses
  br i1 %i.ai, label %bb.k, label %bb.j, !dbg !65

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !67
  %i.am = load i64, ptr %i.al, align 8, !dbg !67, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !68
  store i64 %i.am, ptr %i.an, align 8, !dbg !68
  br label %bb.k, !dbg !70

bb.k:                                             ; preds = %bb.j, %bb.i, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit
  %.sink = phi ptr [ %i.w, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ]
  %storemerge.sink = phi i64 [ 1, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit ], [ 1, %bb.i ], [ 0, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !71
  store ptr %.sink, ptr %i.ao, align 8, !dbg !71
  store i64 %storemerge.sink, ptr %0, align 8, !dbg !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72
  ret void, !dbg !73
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions3mapRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !74 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call noundef i32 @_RNvXs_Cs61SnqI2q75L_7memmap2RNtNtCsh8eZTKRCwoO_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !76
  call void @llvm.experimental.noalias.scope.decl(metadata !78), !dbg !81
  %i.d = load i64, ptr %1, align 8, !dbg !82, !range !24, !alias.scope !78, !noalias !84, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1, !dbg !86
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !86

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !82
  %i.g = load i64, ptr %i.f, align 8, !dbg !87, !alias.scope !78, !noalias !84, !noundef !12
  br label %bb.d, !dbg !88

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef i32 @_RNvXs_Cs61SnqI2q75L_7memmap2RNtNtCsh8eZTKRCwoO_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !89, !noalias !78
  %i.i = call { i64, ptr } @_RNvNtCs61SnqI2q75L_7memmap22os8file_len(i32 noundef %i.h), !dbg !90, !noalias !78 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0, !dbg !90
  %i.k = extractvalue { i64, ptr } %i.i, 1, !dbg !90 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64, !dbg !90       ; 2 uses
  %i.m = trunc nuw i64 %i.j to i1, !dbg !91
  br i1 %i.m, label %bb.e, label %bb.f, !dbg !91

bb.d:                                             ; preds = %bb.g, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.g, %bb.b ], [ %i.s, %bb.g ], !dbg !93
  %i.n = call { i64, ptr } @_RNvMs0_Cs61SnqI2q75L_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef %.sroa.01.0.i), !dbg !94, !noalias !78
  br label %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit, !dbg !95

bb.e:                                             ; preds = %bb.c
  %i.o = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.k, 1, !dbg !96
  br label %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit, !dbg !96

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !97
  %i.q = load i64, ptr %i.p, align 8, !dbg !97, !alias.scope !78, !noalias !84, !noundef !12 ; 2 uses
  %i.r = icmp ugt i64 %i.q, %i.l, !dbg !98
  br i1 %i.r, label %bb.h, label %bb.g, !dbg !98

bb.g:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %i.l, %i.q, !dbg !99
  br label %bb.d, !dbg !88

bb.h:                                             ; preds = %bb.f
  %i.t = call noundef nonnull ptr @_RINvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 39) #19, !dbg !100, !noalias !78
  %i.u = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.t, 1, !dbg !101
  br label %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit, !dbg !101

_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.d, %bb.e, %bb.h
  %.merged.i = phi { i64, ptr } [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.u, %bb.h ], !dbg !95 ; 2 uses
  %i.v = extractvalue { i64, ptr } %.merged.i, 0, !dbg !102
  %i.w = extractvalue { i64, ptr } %.merged.i, 1, !dbg !102 ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1, !dbg !103
  br i1 %i.x, label %bb.k, label %bb.i, !dbg !103

bb.i:                                             ; preds = %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit
  %i.y = ptrtoint ptr %i.w to i64, !dbg !102
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !105
  %i.aa = load i64, ptr %i.z, align 8, !dbg !105, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 27, !dbg !106
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !106, !range !59, !noundef !12
  %i.ad = trunc nuw i8 %i.ac to i1, !dbg !106
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !107
  %i.af = load i8, ptr %i.ae, align 4, !dbg !107, !range !59, !noundef !12
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !107
  call void @_RNvMNtCs61SnqI2q75L_7memmap22osNtB2_9MmapInner3map(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.y, i32 noundef %i.c, i64 noundef %i.aa, i1 noundef zeroext %i.ad, i1 noundef zeroext %i.ag), !dbg !76
  %i.ah = load i64, ptr %i.a, align 8, !dbg !108, !range !24, !noundef !12
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !111
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !112
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !112, !noundef !12 ; 2 uses
  br i1 %i.ai, label %bb.k, label %bb.j, !dbg !111

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !113
  %i.am = load i64, ptr %i.al, align 8, !dbg !113, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114
  store i64 %i.am, ptr %i.an, align 8, !dbg !114
  br label %bb.k, !dbg !116

bb.k:                                             ; preds = %bb.j, %bb.i, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit
  %.sink = phi ptr [ %i.w, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ]
  %storemerge.sink = phi i64 [ 1, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit ], [ 1, %bb.i ], [ 0, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117
  store ptr %.sink, ptr %i.ao, align 8, !dbg !117
  store i64 %storemerge.sink, ptr %0, align 8, !dbg !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !118
  ret void, !dbg !119
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !120 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !123

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit unwind label %bb.d, !dbg !124

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !127
  ret void, !dbg !123
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs2mZqlW55729_12polars_utils:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !dbg !517, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !518
  %i.e = load ptr, ptr %i.d, align 8, !dbg !518, !nonnull !12, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !518
  %i.g = load ptr, ptr %i.f, align 8, !dbg !518, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !519 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !519
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !519 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !519
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !519 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c, !dbg !522
  br i1 %i.h, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit, label %bb.b, !dbg !534

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64, !dbg !535      ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64, !dbg !535      ; 2 uses
  %i.k = sub i64 %i.i, %i.j, !dbg !535            ; 3 uses
  %xtraiter = and i64 %i.k, 1, !dbg !553
  %i.l = add i64 %i.i, -1, !dbg !553
  %i.m = icmp eq i64 %i.l, %i.j, !dbg !553
  br i1 %i.m, label %.epil.preheader, label %.new, !dbg !553

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2, !dbg !553
  br label %bb.c, !dbg !553

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ], !dbg !554 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !555
  %.val16.i = load i8, ptr %i.o, align 1, !dbg !559, !noalias !560, !noundef !12 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !dbg !563, !noalias !571, !noundef !12
  %i.q = icmp eq i8 %.val16.i, %i.p, !dbg !574
  br i1 %i.q, label %bb.d, label %bb.e, !dbg !574

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !dbg !575, !noalias !571, !noundef !12
  br label %bb.e, !dbg !576

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ], !dbg !577
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n, !dbg !578
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !dbg !588, !noalias !591
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !555
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !555
  %.val16.i.1 = load i8, ptr %i.u, align 1, !dbg !559, !noalias !560, !noundef !12 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !dbg !563, !noalias !571, !noundef !12
  %i.w = icmp eq i8 %.val16.i.1, %i.v, !dbg !574
  br i1 %i.w, label %bb.f, label %bb.g, !dbg !574

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !dbg !575, !noalias !571, !noundef !12
  br label %bb.g, !dbg !576

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ], !dbg !577
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n, !dbg !578
  %i.z = getelementptr i8, ptr %i.y, i64 1, !dbg !578
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !dbg !588, !noalias !591
  %i.aa = add i64 %i.n, 2, !dbg !596              ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2, !dbg !600 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !603    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !603
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa, label %bb.c, !dbg !603

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !574
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit, label %.epil.preheader, !dbg !574

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1, !dbg !574
  tail call void @llvm.assume(i1 %lcmp.mod4), !dbg !574
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !555
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !dbg !559, !noalias !560, !noundef !12 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !dbg !563, !noalias !571, !noundef !12
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad, !dbg !574
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa, !dbg !574

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !dbg !575, !noalias !571, !noundef !12
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa, !dbg !576

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ], !dbg !577
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !578
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !dbg !588, !noalias !591
  %i.ah = add i64 %.epil.init, 1, !dbg !596
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa ], !dbg !604
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !604, !noalias !560
  ret void, !dbg !613
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENvMs5_NtB2D_8registryNtB3m_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Y_8for_each4callB3B_NCINvMsj_B12_INtB12_3VecB3B_E14extend_trustedBN_E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !614 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !617
  call void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B47_B45_3newNCINvNvB2s_8for_each4callB45_NCINvMsj_B8_INtB8_3VecB45_E14extend_trustedINtB3y_3MapBI_B4z_EE0E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !620
  ret void, !dbg !621
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3n_EIB4P_B4u_EECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !622 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !623
  store i64 0, ptr %i.b, align 8, !dbg !624, !alias.scope !630
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !624
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !dbg !624, !alias.scope !630
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !624
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !dbg !624, !alias.scope !630
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !624, !alias.scope !630
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !624
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !624, !alias.scope !630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !633
  invoke void @_RNvXs_NvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extendTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !635

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBI_INtB1h_7StealerB21_EEEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48) %i.b) #22
          to label %bb.e unwind label %bb.d, !dbg !641

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !641
  ret void, !dbg !643

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !644
  unreachable, !dbg !644

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !644
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3p_EIB4R_B4w_EECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !645 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !646
  store i64 0, ptr %i.a, align 8, !dbg !647, !alias.scope !649
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !647
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !dbg !647, !alias.scope !649
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !647
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !647
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !dbg !647, !alias.scope !649
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !647, !alias.scope !649
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !647
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !647, !alias.scope !649
  invoke void @_RNvXs_NvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extendTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b, !dbg !652

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBI_INtB1h_7StealerB21_EEEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48) %i.a) #22
          to label %bb.e unwind label %bb.d, !dbg !658

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !658
  ret void, !dbg !660

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !661
  unreachable, !dbg !661

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !661
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtCs2mZqlW55729_12polars_utils10slice_enumNtB2_5Slice12end_position(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !662 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !dbg !667
  %i.a = trunc nuw i64 %.sroa.0.0.copyload to i1, !dbg !671
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !671, !prof !672

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !dbg !673
  unreachable, !dbg !673

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !667
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !667
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !667
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !667
  %i.b = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.5.0.copyload, i64 %.sroa.6.0.copyload), !dbg !674
  ret i64 %i.b, !dbg !678
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtCs2mZqlW55729_12polars_utils10slice_enumNtB2_5Slice15positive_offset(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !679 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !dbg !680
  %i.a = trunc nuw i64 %.sroa.0.0.copyload to i1, !dbg !683
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !683, !prof !672

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 97 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !dbg !684
  unreachable, !dbg !684

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !680
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !680
  ret i64 %.sroa.5.0.copyload, !dbg !685
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCs2mZqlW55729_12polars_utils10slice_enumNtB2_5Slice18restrict_to_bounds(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !686 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !687, !range !24, !noundef !12
  %i.b = trunc nuw i64 %i.a to i1, !dbg !688
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !689
  %i.d = load i64, ptr %i.c, align 8, !dbg !689, !noundef !12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !689
  %i.f = load i64, ptr %i.e, align 8, !dbg !689, !noundef !12 ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !688

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %2, %i.d, !dbg !690
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !692 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !692 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.f, !dbg !690

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.d), !dbg !693 ; 2 uses
  %i.i = sub nuw i64 %2, %.sroa.0.0.i, !dbg !698
  %.sroa.0.0.i4 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.f), !dbg !700
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !702
  store i64 %.sroa.0.0.i, ptr %i.j, align 8, !dbg !702
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !702
  store i64 %.sroa.0.0.i4, ptr %i.k, align 8, !dbg !702
  br label %bb.d, !dbg !704

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.c
  store i64 0, ptr %0, align 8, !dbg !689
  ret void, !dbg !705

bb.e:                                             ; preds = %bb.b
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %i.f), !dbg !706
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.l), !dbg !709
  store i64 0, ptr %i.g, align 8, !dbg !712
  store i64 %i.m, ptr %i.h, align 8, !dbg !712
  br label %bb.d, !dbg !714

bb.f:                                             ; preds = %bb.b
  %i.n = sub nuw i64 %2, %i.d, !dbg !715
  %.sroa.0.0.i5 = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.f), !dbg !716
  store i64 %i.n, ptr %i.g, align 8, !dbg !719
  store i64 %.sroa.0.0.i5, ptr %i.h, align 8, !dbg !719
  br label %bb.d, !dbg !714
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMNtCs2mZqlW55729_12polars_utils10slice_enumNtB2_5Slice20to_signed_offset_len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !721 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !dbg !722, !range !24, !noundef !12
  %i.c = trunc nuw i64 %i.b to i1, !dbg !723
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !724
  %i.e = load i64, ptr %i.d, align 8, !dbg !724, !noundef !12 ; 3 uses
  %i.f = icmp slt i64 %i.e, 0, !dbg !725          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !723

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %.split8, label %.split10, !dbg !732

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %.split, label %.split6, !dbg !735

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !dbg !738
  unreachable

.split6:                                          ; preds = %bb.c, %.split10
  %.sroa.01.0 = phi i64 [ %i.j, %.split10 ], [ %i.e, %bb.c ], !dbg !724
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !724
  %.sroa.04.0 = load i64, ptr %.sroa.04.0.in, align 8, !dbg !724, !noundef !12
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.04.0, i64 4294967295), !dbg !742
  %i.g = trunc nuw i64 %.sroa.0.0.i to i32, !dbg !745
  %i.h = insertvalue { i64, i32 } poison, i64 %.sroa.01.0, 0, !dbg !746
  %i.i = insertvalue { i64, i32 } %i.h, i32 %i.g, 1, !dbg !746
  ret { i64, i32 } %i.i, !dbg !746

.split10:                                         ; preds = %bb.b
  %i.j = sub nsw i64 0, %i.e, !dbg !747
  br label %.split6, !dbg !748

.split8:                                          ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24, !dbg !749
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2mZqlW55729_12polars_utils10slice_enumNtB2_5Slice9offsetted(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 !dbg !751 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !752, !range !24, !noundef !12
  %i.b = trunc nuw i64 %i.a to i1, !dbg !753
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !753, !prof !672

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !dbg !754
  unreachable, !dbg !754

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !755
  %i.d = load i64, ptr %i.c, align 8, !dbg !755, !noundef !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !756
  %i.f = load i64, ptr %i.e, align 8, !dbg !756, !noundef !12 ; 2 uses
  %.not = icmp ugt i64 %2, %i.d, !dbg !757
  br i1 %.not, label %bb.d, label %bb.e, !dbg !757

bb.d:                                             ; preds = %bb.c
  %i.g = sub nuw i64 %2, %i.d, !dbg !759
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.g), !dbg !760
  br label %bb.f, !dbg !764

bb.e:                                             ; preds = %bb.c
  %i.i = sub nuw i64 %i.d, %2, !dbg !765
  br label %bb.f, !dbg !764

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.02.0 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ], !dbg !766
  %.sroa.0.0 = phi i64 [ %i.f, %bb.e ], [ %i.h, %bb.d ], !dbg !767
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !768
  store i64 %.sroa.02.0, ptr %i.j, align 8, !dbg !768
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !768
  store i64 %.sroa.0.0, ptr %i.k, align 8, !dbg !768
  store i64 0, ptr %0, align 8, !dbg !768
  ret void, !dbg !770
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs2mZqlW55729_12polars_utils17calc_morsel_splitNtB2_13PartSizesIter19new_from_total_size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !771 {
bb.a:
  %i.a = icmp eq i64 %2, 0, !dbg !775
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !775

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sink2 = phi i64 [ %i.d, %bb.c ], [ 0, %bb.a ], !dbg !776
  %.sink = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ], !dbg !776
  store i64 %.sink2, ptr %0, align 8, !dbg !776
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !776
  store i64 %2, ptr %i.b, align 8, !dbg !776
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !776
  store i64 %.sink, ptr %i.c, align 8, !dbg !776
  ret void, !dbg !777

bb.c:                                             ; preds = %bb.a
  %i.d = udiv i64 %1, %2, !dbg !778
  %i.e = urem i64 %1, %2, !dbg !779
  %i.f = sub nuw i64 %2, %i.e, !dbg !781
  br label %bb.b, !dbg !777
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch6insert(ptr noalias nofree noundef captures(none) dereferenceable(256) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !783 {
bb.a:
  %i.a = mul i64 %1, 2887833722462635776, !dbg !787
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 false), !dbg !789
  %i.c = trunc nuw nsw i64 %i.b to i8, !dbg !787
  %i.d = add nuw nsw i8 %i.c, 1, !dbg !793
  %i.e = mul i64 %1, -8059169931769559161, !dbg !794
  %i.f = lshr i64 %i.e, 56, !dbg !797
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f, !dbg !798 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !dbg !798, !noundef !12
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 66) %i.d, i8 %i.h), !dbg !800
  store i8 %.sroa.0.0.i, ptr %i.g, align 1, !dbg !803
  ret void, !dbg !804
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch7combine(ptr noalias noundef dereferenceable(256) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !805 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [256 x i8], align 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !806
  store ptr %0, ptr %i.a, align 8, !noalias !811
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !noalias !811
  br label %bb.b, !dbg !816

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge5.i.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.d = call noundef i8 @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB12_17CardinalitySketch7combine0EINtNtB6_8function5FnMutTjEE8call_mutB14_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %storemerge5.i.i), !dbg !827, !noalias !828
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %storemerge5.i.i, !dbg !829
  store i8 %i.d, ptr %i.e, align 1, !dbg !843
  %i.f = add nuw nsw i64 %storemerge5.i.i, 1, !dbg !850 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, 256, !dbg !816
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj100_INtBJ_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB1S_17CardinalitySketch7combine0EEB1U_.exit, label %bb.b, !dbg !816

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj100_INtBJ_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB1S_17CardinalitySketch7combine0EEB1U_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !853, !noalias !806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, ptr noundef nonnull align 1 dereferenceable(256) %i.b, i64 256, i1 false), !dbg !854
  ret void, !dbg !855
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef i64 @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch8estimate(ptr noalias noundef readonly captures(none) dereferenceable(256) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !856 {
vector.ph:
  br label %vector.body, !dbg !857

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !868 ; 2 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi21 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi22 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !871 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !873
  %wide.load = load <2 x i8>, ptr %i.a, align 1, !dbg !873 ; 2 uses
  %wide.load23 = load <2 x i8>, ptr %i.b, align 1, !dbg !873 ; 2 uses
  %i.c = zext <2 x i8> %wide.load to <2 x i64>, !dbg !875
  %i.d = zext <2 x i8> %wide.load23 to <2 x i64>, !dbg !875
  %i.e = shl nuw nsw <2 x i64> %i.c, splat (i64 52), !dbg !879
  %i.f = shl nuw nsw <2 x i64> %i.d, splat (i64 52), !dbg !879
  %i.g = sub nuw nsw <2 x i64> splat (i64 4607182418800017408), %i.e, !dbg !880
  %i.h = sub nuw nsw <2 x i64> splat (i64 4607182418800017408), %i.f, !dbg !880
  %i.i = bitcast <2 x i64> %i.g to <2 x double>, !dbg !881
  %i.j = bitcast <2 x i64> %i.h to <2 x double>, !dbg !881
  %i.k = fadd reassoc nsz arcp contract <2 x double> %vec.phi, %i.i, !dbg !887 ; 2 uses
  %i.l = fadd reassoc nsz arcp contract <2 x double> %vec.phi20, %i.j, !dbg !887 ; 2 uses
  %i.m = icmp eq <2 x i8> %wide.load, zeroinitializer, !dbg !892
  %i.n = icmp eq <2 x i8> %wide.load23, zeroinitializer, !dbg !892
  %i.o = zext <2 x i1> %i.m to <2 x i64>, !dbg !892
  %i.p = zext <2 x i1> %i.n to <2 x i64>, !dbg !892
  %i.q = add <2 x i64> %vec.phi21, %i.o, !dbg !893 ; 2 uses
  %i.r = add <2 x i64> %vec.phi22, %i.p, !dbg !893 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !868  ; 2 uses
  %i.s = icmp eq i64 %index.next, 256, !dbg !857
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !857, !llvm.loop !894

middle.block:                                     ; preds = %vector.body
  %bin.rdx24 = add <2 x i64> %i.r, %i.q, !dbg !857
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx24), !dbg !857 ; 3 uses
  %bin.rdx = fadd reassoc nsz arcp contract <2 x double> %i.l, %i.k, !dbg !857
  %i.u = tail call reassoc nsz arcp contract double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx), !dbg !857
  %i.v = fdiv double f0x40E6B2ABA7F5EE9A, %i.u, !dbg !897 ; 2 uses
  %i.w = fcmp ugt double %i.v, 6.400000e+02, !dbg !898
  %i.x = icmp eq i64 %i.t, 0
  %or.cond = select i1 %i.w, i1 true, i1 %i.x, !dbg !898
  br i1 %or.cond, label %bb.b, label %bb.a, !dbg !898

bb.a:                                             ; preds = %middle.block
  %i.y = uitofp i64 %i.t to float, !dbg !900
  %i.z = fdiv nnan float 2.560000e+02, %i.y, !dbg !901
  %i.aa = tail call nnan float @llvm.log.f32(float %i.z), !dbg !902
  %i.ab = fpext nnan float %i.aa to double, !dbg !901
  %i.ac = fmul nnan double %i.ab, 2.560000e+02, !dbg !908
  br label %bb.b, !dbg !909

bb.b:                                             ; preds = %middle.block, %bb.a
  %.sroa.010.0 = phi double [ %i.v, %middle.block ], [ %i.ac, %bb.a ], !dbg !910
  %i.ad = icmp eq i64 %i.t, 256, !dbg !911
  br i1 %i.ad, label %bb.d, label %bb.c, !dbg !911

bb.c:                                             ; preds = %bb.b
  %i.ae = fadd double %.sroa.010.0, 5.000000e-01, !dbg !913
  %i.af = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ae), !dbg !914
  %.sroa.0.0.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.af, i64 1), !dbg !915
  br label %bb.d, !dbg !918

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %bb.c ], [ 0, %bb.b ], !dbg !919
  ret i64 %.sroa.0.0, !dbg !920
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts(i64 noundef %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !921 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.g, align 8
  store i64 %1, ptr %i.f, align 8
  %.not = icmp ugt i64 %0, %1, !dbg !922
  br i1 %.not, label %bb.c, label %bb.b, !dbg !922

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i64 %0, 0, !dbg !923
  %. = zext i1 %i.h to i64, !dbg !924
  br label %bb.e, !dbg !924

bb.c:                                             ; preds = %bb.a
  %i.i = udiv i64 %0, %1, !dbg !925               ; 7 uses
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1), !dbg !926 ; 7 uses
  %i.k = icmp uge i64 %i.i, %i.j, !dbg !930       ; 2 uses
  %not..i.i = xor i1 %i.k, true, !dbg !948
  %i.l = zext i1 %not..i.i to i64, !dbg !948
  %.sroa.58.0.copyload.i.i = add nuw i64 %i.i, %i.l, !dbg !948 ; 3 uses
  %i.m = udiv i64 %0, %i.i, !dbg !950             ; 3 uses
  %i.n = icmp ult i64 %i.m, %1, !dbg !968
  %i.o = sub nuw i64 %1, %i.m, !dbg !968
  %i.p = sub nuw i64 %i.m, %1, !dbg !968
  %.sroa.0.0.i.i3.i.i.i = select i1 %i.n, i64 %i.o, i64 %i.p, !dbg !968 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !971
  store ptr %i.g, ptr %i.e, align 8, !noalias !985
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.q, align 8, !noalias !985
  %.not.i.i.i6.i.i = icmp ugt i64 %.sroa.58.0.copyload.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.k, i1 true, i1 %.not.i.i.i6.i.i, !dbg !990
  br i1 %or.cond.i.i.i, label %bb.d, label %.preheader.i.i.i.i.i, !dbg !990

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %i.r = icmp ult i64 %.sroa.58.0.copyload.i.i, %i.j, !dbg !1006
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, !dbg !1009

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %2, !dbg !1009

2:                                                ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.01.036.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i3.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.8.035.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 2 uses
  %3 = phi i64 [ %.sroa.58.0.copyload.i.i, %.lr.ph.i.i.i.i.i ], [ %i.v, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1010), !dbg !1013
  call void @llvm.experimental.noalias.scope.decl(metadata !1016), !dbg !1019
  %4 = icmp eq i64 %3, 0, !dbg !1026
  br i1 %4, label %5, label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i, !dbg !1026

5:                                                ; preds = %2
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !dbg !1026, !noalias !1031
  unreachable, !dbg !1026

_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i: ; preds = %2
  %i.v = add i64 %3, 1, !dbg !1032                ; 2 uses
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !dbg !1038, !alias.scope !1039, !noalias !985, !nonnull !12, !noundef !12
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !1038, !alias.scope !1039, !noalias !985, !nonnull !12, !noundef !12
  %i.w = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !dbg !1040, !noalias !1031, !noundef !12
  %i.x = udiv i64 %i.w, %3, !dbg !1026            ; 3 uses
  %i.y = load i64, ptr %.val5.i.i.i.i.i.i.i, align 8, !dbg !1041, !range !1042, !noalias !1031, !noundef !12 ; 3 uses
  %i.z = icmp ult i64 %i.x, %i.y, !dbg !1043
  %i.aa = sub nuw i64 %i.y, %i.x, !dbg !1043
  %i.ab = sub nuw i64 %i.x, %i.y, !dbg !1043
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %i.z, i64 %i.aa, i64 %i.ab, !dbg !1043 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1045
  store i64 %.sroa.01.036.i.i.i.i.i, ptr %i.d, align 8, !noalias !1048
  store i64 %.sroa.8.035.i.i.i.i.i, ptr %i.t, align 8, !noalias !1048
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !1048
  store i64 %3, ptr %i.u, align 8, !noalias !1048
  %i.ac = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareyyEINtB7_6FnOnceTRTyyEB29_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !1051, !noalias !1058
  %i.ad = icmp slt i8 %i.ac, 1, !dbg !1059        ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i.i.i.i = select i1 %i.ad, i64 %.sroa.8.035.i.i.i.i.i, i64 %3, !dbg !1051 ; 2 uses
  %.sroa.0.0.i.i6.i.i.i.i.i.i.i = select i1 %i.ad, i64 %.sroa.01.036.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, !dbg !1051 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1063, !noalias !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1063, !noalias !1045
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.v, %i.j, !dbg !1006
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %2, !dbg !1009

._crit_edge.i.i.i.i.i:                            ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1064), !dbg !1067
  call void @llvm.experimental.noalias.scope.decl(metadata !1068), !dbg !1071
  %.val5.i.i25.i.i.i.i.pre.i = load ptr, ptr %i.q, align 8, !dbg !1073, !alias.scope !1075, !noalias !985
  %.val.i.i26.i.i.i.i.pre.i = load ptr, ptr %i.e, align 8, !dbg !1073, !alias.scope !1075, !noalias !985
  %.pre.i = load i64, ptr %.val.i.i26.i.i.i.i.pre.i, align 8, !dbg !1076, !noalias !1079
  %.pre10.i = load i64, ptr %.val5.i.i25.i.i.i.i.pre.i, align 8, !dbg !1080, !range !1042, !noalias !1079
  br label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, !dbg !1081

_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.ae = phi i64 [ %.pre10.i, %._crit_edge.i.i.i.i.i ], [ %1, %.preheader.i.i.i.i.i ], !dbg !1080 ; 3 uses
  %i.af = phi i64 [ %.pre.i, %._crit_edge.i.i.i.i.i ], [ %0, %.preheader.i.i.i.i.i ], !dbg !1076
  %.sroa.8.0.lcssa47.i.i.i21.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.lcssa48.i.i.i20.i.i = phi i64 [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i3.i.i.i, %.preheader.i.i.i.i.i ]
  %i.ag = udiv i64 %i.af, %i.j, !dbg !1081        ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae, !dbg !1082
  %i.ai = sub nuw i64 %i.ae, %i.ag, !dbg !1082
  %i.aj = sub nuw i64 %i.ag, %i.ae, !dbg !1082
  %.sroa.0.0.i.i.i.i27.i.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.aj, !dbg !1082
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !1084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1085
  store i64 %.sroa.01.0.lcssa48.i.i.i20.i.i, ptr %i.b, align 8, !noalias !1088
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.8.0.lcssa47.i.i.i21.i.i, ptr %i.al, align 8, !noalias !1088
  store i64 %.sroa.0.0.i.i.i.i27.i.i.i.i.i, ptr %i.a, align 8, !noalias !1088
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.am, align 8, !noalias !1088
  %i.an = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareyyEINtB7_6FnOnceTRTyyEB29_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !1091, !noalias !1058
  %i.ao = icmp slt i8 %i.an, 1, !dbg !1094
  %.sroa.3.0.i.i.i.i28.i.i.i.i.i = select i1 %i.ao, i64 %.sroa.8.0.lcssa47.i.i.i21.i.i, i64 %i.j, !dbg !1091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1096, !noalias !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1096, !noalias !1085
  br label %bb.d, !dbg !1097

bb.d:                                             ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, %bb.c
  %.sroa.8.1.pn.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i28.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1098, !noalias !971
  br label %bb.e, !dbg !1099

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %., %bb.b ], [ %.sroa.8.1.pn.i.i.i.i.i, %bb.d ], !dbg !1100
  ret i64 %.sroa.0.0, !dbg !1099
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1101 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1104
  %i.e = atomicrmw add ptr @_RNvNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name7COUNTER, i64 1 monotonic, align 8, !dbg !1105
  store i64 %i.e, ptr %i.d, align 8, !dbg !1105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @15, i64 24, i1 false), !dbg !1120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1121
  store ptr %i.d, ptr %i.b, align 8, !dbg !1121
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1121
  store ptr @_RNvXsd_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !1121
  %i.f = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @16, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.b, !dbg !1126

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !1131
  %i.i = load i8, ptr %i.h, align 1, !dbg !1131, !range !1149, !alias.scope !1150, !noundef !12
  %i.j = icmp eq i8 %i.i, -40, !dbg !1159
  br i1 %i.j, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit, !dbg !1159, !prof !672

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit unwind label %bb.f, !dbg !1160

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2mZqlW55729_12polars_utils.exit, !dbg !1161, !prof !672

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #24
          to label %.noexc unwind label %bb.b, !dbg !1164

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2mZqlW55729_12polars_utils.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1169
  ret void, !dbg !1170

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1171
  unreachable, !dbg !1171

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.g, !dbg !1171
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB4_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1172 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !1175
  %i.b = load i8, ptr %i.a, align 1, !dbg !1175, !range !1149, !alias.scope !1191, !noundef !12 ; 4 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !1194
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1194

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !1195
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !1199
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !1199
  br label %bb.f, !dbg !1203

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !1206, !alias.scope !1191, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1207
  %i.h = load i64, ptr %i.g, align 8, !dbg !1207, !alias.scope !1191, !noundef !12
  br label %bb.f, !dbg !1208

bb.d:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i8 %i.b, -40, !dbg !1209
  br i1 %i.j, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit, !dbg !1209, !prof !672

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit unwind label %bb.i, !dbg !1214

bb.f:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !1215
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !1216
  %i.k = invoke noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i)
          to label %bb.g unwind label %bb.d, !dbg !1217

bb.g:                                             ; preds = %bb.f
  %i.l = icmp eq i8 %i.b, -40, !dbg !1225
  br i1 %i.l, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1, !dbg !1225, !prof !672

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !1230
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1, !dbg !1230

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1: ; preds = %bb.g, %bb.h
  ret ptr %i.k, !dbg !1231

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1232
  unreachable, !dbg !1232

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i, !dbg !1232
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtB7_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB15_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1233 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 18), !dbg !1238
  ret i1 %i.a, !dbg !1239
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBd_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB8_9___VisitorNtB1b_7Visitor10visit_enumNtB2_14___FieldVisitorB2m_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1240 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 16), !dbg !1244
  ret i1 %i.a, !dbg !1245
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs2mZqlW55729_12polars_utils10slice_enumNtB5_5SliceINtNtCscgRAwXFJnXP_4core7convert4FromTxjEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1246 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = icmp sgt i64 %1, -1, !dbg !1248
  br i1 %i.b, label %.split, label %bb.b, !dbg !1248

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 0, %1, !dbg !1250                ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !1251
  br i1 %i.d, label %.split, label %.split2, !dbg !1251

.split2:                                          ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24, !dbg !1255
  unreachable

.split:                                           ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ %1, %bb.a ], [ %i.c, %bb.b ]
  %storemerge = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], !dbg !1259
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1259
  store i64 %.sink, ptr %i.e, align 8, !dbg !1259
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1259
  store i64 %2, ptr %i.f, align 8, !dbg !1259
  store i64 %storemerge, ptr %0, align 8, !dbg !1259
  ret void, !dbg !1260
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB7_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12FromPyObject7extract(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1261 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1264, !noalias !1273
  call void @_RINvNvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %1), !dbg !1276, !noalias !1273
  %i.d = load ptr, ptr %i.b, align 8, !dbg !1279, !noalias !1273, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !1279
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1282
  %i.f = load ptr, ptr %i.e, align 8, !dbg !1282, !noalias !1273, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1283, !noalias !1273
  br i1 %.not.i, label %_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit, label %_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit.thread, !dbg !1284

_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1285
  call void @_RNvXs1_NtNtCsbm5zPlkZccl_4pyo33err10cast_errorNtB7_5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f), !dbg !1293
  br label %bb.b, !dbg !1294

_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit: ; preds = %bb.a
  tail call void @_Py_IncRef(ptr noundef nonnull %i.f) #21, !dbg !1296, !noalias !1273
  call void @_RNvXs6_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrINtNtCscgRAwXFJnXP_4core7convert7TryFromINtNtB7_8instance5BoundNtNtNtB7_5types6string8PyStringEE8try_from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.f), !dbg !1307
  %.pre = load i64, ptr %i.c, align 8, !dbg !1309, !range !24
  %i.h = trunc nuw i64 %.pre to i1, !dbg !1294
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !1294

bb.b:                                             ; preds = %_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit.thread, %_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1310
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1310
  %.sroa.626.0.copyload = load i64, ptr %.sroa.626.0..sroa_idx, align 8, !dbg !1310
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1310
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.727.0..sroa_idx, i64 40, i1 false), !dbg !1310
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1311
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !dbg !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1318
  store <2 x ptr> %i.k, ptr %i.j, align 8, !dbg !1311
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1311
  store i64 %.sroa.626.0.copyload, ptr %.sroa.330.0..sroa_idx, align 8, !dbg !1311
  store i64 1, ptr %0, align 8, !dbg !1311
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrECs2mZqlW55729_12polars_utils.exit, !dbg !1319

bb.c:                                             ; preds = %_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1320
  %.sroa.018.0.copyload = load ptr, ptr %i.l, align 8, !dbg !1320 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1320
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1320, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1320
  %.sroa.619.0.copyload = load i64, ptr %.sroa.619.0..sroa_idx, align 8, !dbg !1320 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1321
  %i.m = icmp eq i64 %.sroa.619.0.copyload, 0, !dbg !1321
  br i1 %i.m, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread46, label %bb.d, !dbg !1321

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread46: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1341
  br label %bb.i, !dbg !1342

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %.sroa.619.0.copyload, 25, !dbg !1346
  br i1 %i.n, label %bb.f, label %bb.e, !dbg !1346

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.i.i.i.i.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.619.0.copyload, i64 32), !dbg !1347 ; 2 uses
  %i.o = invoke noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc unwind label %bb.h, !dbg !1357 ; 3 uses

.noexc:                                           ; preds = %bb.e
  %i.p = icmp eq ptr %i.o, null, !dbg !1360
  br i1 %i.p, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i, label %bb.g, !dbg !1363

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1341
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread, !dbg !1364

bb.f:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.a, i8 0, i64 23, i1 false), !dbg !1367, !noalias !1374
  %i.q = trunc nuw nsw i64 %.sroa.619.0.copyload to i8, !dbg !1381
  %i.r = or disjoint i8 %i.q, -64, !dbg !1383
  %.23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23, !dbg !1383
  store i8 %i.r, ptr %.23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !1383, !noalias !1374
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.619.0.copyload, i1 false), !dbg !1384, !noalias !1387
  %.0..0..0..0..0..sroa.02.0.copyload3.i = load ptr, ptr %i.a, align 8, !dbg !1388, !noalias !1390
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1388
  %.8..8..8..8..8..sroa.6.0.copyload6.i = load i64, ptr %.8..8..8..8..8..sroa_idx, align 8, !dbg !1388, !noalias !1390
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1388
  %.16..16..16..16..16..sroa.7.0.copyload9.i = load i64, ptr %.16..16..16..16..16..sroa_idx, align 8, !dbg !1388, !noalias !1390
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, !dbg !1391

bb.g:                                             ; preds = %.noexc
  %i.s = or i64 %.sroa.0.0.i.i.i.i.i, -2882303761517117440, !dbg !1392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.5.0.copyload, i64 range(i64 25, 0) %.sroa.619.0.copyload, i1 false), !dbg !1398, !noalias !1404
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, !dbg !1407

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.02.0.i = phi ptr [ %i.o, %bb.g ], [ %.0..0..0..0..0..sroa.02.0.copyload3.i, %bb.f ], !dbg !1410
  %.sroa.6.0.i = phi i64 [ %.sroa.619.0.copyload, %bb.g ], [ %.8..8..8..8..8..sroa.6.0.copyload6.i, %bb.f ], !dbg !1410
  %.sroa.7.0.i = phi i64 [ %i.s, %bb.g ], [ %.16..16..16..16..16..sroa.7.0.copyload9.i, %bb.f ], !dbg !1411 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1341
  %i.t = and i64 %.sroa.7.0.i, -72057594037927936, !dbg !1364
  %or.cond = icmp eq i64 %i.t, -2738188573441261568, !dbg !1364
  br i1 %or.cond, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread, label %bb.i, !dbg !1364, !prof !1412

bb.h:                                             ; preds = %bb.e, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.copyload) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrECs2mZqlW55729_12polars_utils(ptr nonnull %.sroa.018.0.copyload) #22
          to label %bb.n unwind label %bb.m, !dbg !1413

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i
  invoke void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #24
          to label %bb.l unwind label %bb.h, !dbg !1414

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread46
  %.sroa.534.054 = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread46 ], [ %.sroa.7.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.433.053 = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread46 ], [ %.sroa.6.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.032.052 = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread46 ], [ %.sroa.02.0.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1416
  store ptr %.sroa.032.052, ptr %i.v, align 8, !dbg !1416
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1416
  store i64 %.sroa.433.053, ptr %.sroa.539.0..sroa_idx, align 8, !dbg !1416
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1416
  store i64 %.sroa.534.054, ptr %.sroa.640.0..sroa_idx, align 8, !dbg !1416
  store i64 0, ptr %0, align 8, !dbg !1416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.018.0.copyload) ]
  %i.w = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !1417
  %.val.i.i.i.i.i = load i64, ptr %i.w, align 8, !dbg !1426, !noundef !12
  %i.x = icmp sgt i64 %.val.i.i.i.i.i, 0, !dbg !1427
  br i1 %i.x, label %bb.k, label %bb.j, !dbg !1429, !prof !175

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sroa.018.0.copyload), !dbg !1431
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrECs2mZqlW55729_12polars_utils.exit, !dbg !1431

bb.k:                                             ; preds = %bb.i
  tail call void @_Py_DecRef(ptr noundef nonnull %.sroa.018.0.copyload) #21, !dbg !1432
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrECs2mZqlW55729_12polars_utils.exit, !dbg !1434

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.k, %bb.j, %bb.b
  ret void, !dbg !1319

bb.l:                                             ; preds = %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils.exit.thread
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1435
  unreachable, !dbg !1435

bb.n:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.u, !dbg !1435
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBa_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB18_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1436 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 10), !dbg !1437
  ret i1 %i.a, !dbg !1438
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBg_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_9___VisitorB2p_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1439 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 30), !dbg !1441
  ret i1 %i.a, !dbg !1442
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs1_NtCs2mZqlW55729_12polars_utils10slice_enumTnnEINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_5SliceE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1443 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !1445, !range !24, !noundef !12
  %i.b = trunc nuw i64 %i.a to i1, !dbg !1446
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1447
  %i.d = load i64, ptr %i.c, align 8, !dbg !1447, !noundef !12
  %i.e = zext i64 %i.d to i128, !dbg !1448        ; 2 uses
  %i.f = sub nsw i128 0, %i.e, !dbg !1446
  %.sink1 = select i1 %i.b, i128 %i.f, i128 %i.e, !dbg !1446
  %.sink.in.in = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1447
  %.sink.in = load i64, ptr %.sink.in.in, align 8, !dbg !1447, !noundef !12
  %.sink = zext i64 %.sink.in to i128, !dbg !1448
  store i128 %.sink1, ptr %0, align 16, !dbg !1447
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1447
  store i128 %.sink, ptr %i.g, align 16, !dbg !1447
  ret void, !dbg !1451
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBg_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_14___FieldVisitorB2p_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1452 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 16), !dbg !1454
  ret i1 %i.a, !dbg !1455
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBg_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1e_7Visitor10visit_enumNtB5_s_9___VisitorB2p_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1456 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 30), !dbg !1458
  ret i1 %i.a, !dbg !1459
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCscgRAwXFJnXP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !1460 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1464
  store ptr %0, ptr %i.a, align 8, !dbg !1464
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26), !dbg !1465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1466
  ret i1 %i.b, !dbg !1467
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCscgRAwXFJnXP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !1468 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5), !dbg !1472
  ret i1 %i.a, !dbg !1473
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implRNtB6_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1474 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !1476
  %i.b = load i8, ptr %i.a, align 1, !dbg !1476, !range !1149, !alias.scope !1485, !noundef !12 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !1488
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1488

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !1489
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !1491
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !1491
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !1494

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !1495, !alias.scope !1485, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1496
  %i.h = load i64, ptr %i.g, align 8, !dbg !1496, !alias.scope !1485, !noundef !12
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !1497

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !1498
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !1499
  %i.i = tail call noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i), !dbg !1500
  ret ptr %i.i, !dbg !1503
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvXs_Cs61SnqI2q75L_7memmap2RNtNtCsh8eZTKRCwoO_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs61SnqI2q75L_7memmap22osNtB2_9MmapInner18map_copy_read_only(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs61SnqI2q75L_7memmap22osNtB2_9MmapInner3map(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtCs61SnqI2q75L_7memmap22os8file_len(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_Cs61SnqI2q75L_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef range(i8 0, 42), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareyyEINtB7_6FnOnceTRTyyEB29_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB12_17CardinalitySketch7combine0EINtNtB6_8function5FnMutTjEE8call_mutB14_(ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtB2S_7HashSetB1s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1A_7collect6ExtendB1s_E6extendBP_E0NCINvNvB1w_8for_each4callB2B_NCINvXs1l_NtB2U_3mapINtB5K_7HashMapB1s_uB3F_EIB4t_B2B_E6extendINtB2f_3MapBP_B2J_EE0E0E0ECs2mZqlW55729_12polars_utils(ptr noundef nonnull, ptr noundef, ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B47_B45_3newNCINvNvB2s_8for_each4callB45_NCINvMsj_B8_INtB8_3VecB45_E14extend_trustedINtB3y_3MapBI_B4z_EE0E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extendTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extendTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_DecRef(ptr noundef) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_IncRef(ptr noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrINtNtCscgRAwXFJnXP_4core7convert7TryFromINtNtB7_8instance5BoundNtNtNtB7_5types6string8PyStringEE8try_from(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCsbm5zPlkZccl_4pyo33err10cast_errorNtB7_5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_9CastErrorE4from(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noinline }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { noinline noreturn }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!5 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "crates/polars-utils/src/lib.rs/@/polars_utils.1b9d48609f1572cb-cgu.06", directory: "/opt-bench/work/pola-rs/polars")
!7 = distinct !DISubprogram(name: "map_copy_read_only<&std::fs::File>", linkageName: "_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions18map_copy_read_onlyRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils", scope: !9, file: !8, line: 593, type: !11, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!8 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/memmap2-0.9.11", checksumkind: CSK_MD5, checksum: "bcdf74a411aa4e676d0037c05ee788ef")
!9 = !DINamespace(name: "MmapOptions", scope: !10)
!10 = !DINamespace(name: "memmap2", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{}
!13 = !DILocation(line: 594, column: 25, scope: !7)
!14 = !DILocation(line: 596, column: 9, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 594, column: 9)
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils: argument 0"}
!18 = distinct !{!18, !"_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils"}
!19 = !DILocation(line: 597, column: 18, scope: !15)
!20 = !DILocation(line: 266, column: 38, scope: !21, inlinedAt: !23)
!21 = distinct !DILexicalBlock(scope: !22, file: !8, line: 266, column: 47)
!22 = distinct !DISubprogram(name: "get_len<&std::fs::File>", linkageName: "_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils", scope: !9, file: !8, line: 265, type: !11, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!23 = distinct !DILocation(line: 597, column: 18, scope: !15)
!24 = !{i64 0, i64 2}
!25 = !{!26}
!26 = distinct !{!26, !18, !"_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils: argument 1"}
!27 = !DILocation(line: 266, column: 26, scope: !21, inlinedAt: !23)
!28 = !DILocation(line: 266, column: 31, scope: !21, inlinedAt: !23)
!29 = !DILocation(line: 266, column: 19, scope: !22, inlinedAt: !23)
!30 = !DILocation(line: 269, column: 29, scope: !22, inlinedAt: !23)
!31 = !DILocation(line: 270, column: 28, scope: !32, inlinedAt: !23)
!32 = distinct !DILexicalBlock(scope: !22, file: !8, line: 269, column: 13)
!33 = !DILocation(line: 2173, column: 9, scope: !34, inlinedAt: !39)
!34 = distinct !DISubprogram(name: "branch<u64, std::io::error::Error>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultyNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !36, file: !35, line: 2172, type: !11, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!35 = !DIFile(filename: "library/core/src/result.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7ebc974a4b69a504d7e902d792c422dd")
!36 = !DINamespace(name: "{impl#27}", scope: !37)
!37 = !DINamespace(name: "result", scope: !38)
!38 = !DINamespace(name: "core", scope: null)
!39 = distinct !DILocation(line: 270, column: 28, scope: !32, inlinedAt: !23)
!40 = !DILocation(line: 0, scope: !22, inlinedAt: !23)
!41 = !DILocation(line: 281, column: 9, scope: !42, inlinedAt: !23)
!42 = distinct !DILexicalBlock(scope: !22, file: !8, line: 266, column: 9)
!43 = !DILocation(line: 282, column: 6, scope: !22, inlinedAt: !23)
!44 = !DILocation(line: 0, scope: !45, inlinedAt: !23)
!45 = !DILexicalBlockFile(scope: !32, file: !46, discriminator: 0)
!46 = !DIFile(filename: "crates/polars-utils/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "166f19075a2797604bb6b50c0b859353")
!47 = !DILocation(line: 272, column: 27, scope: !48, inlinedAt: !23)
!48 = distinct !DILexicalBlock(scope: !32, file: !8, line: 270, column: 13)
!49 = !DILocation(line: 272, column: 16, scope: !48, inlinedAt: !23)
!50 = !DILocation(line: 279, column: 13, scope: !48, inlinedAt: !23)
!51 = !DILocation(line: 273, column: 28, scope: !48, inlinedAt: !23)
!52 = !DILocation(line: 0, scope: !53, inlinedAt: !23)
!53 = !DILexicalBlockFile(scope: !48, file: !46, discriminator: 0)
!54 = !DILocation(line: 597, column: 13, scope: !15)
!55 = !DILocation(line: 2173, column: 9, scope: !56, inlinedAt: !54)
!56 = distinct !DISubprogram(name: "branch<usize, std::io::error::Error>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !36, file: !35, line: 2172, type: !11, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!57 = !DILocation(line: 599, column: 13, scope: !15)
!58 = !DILocation(line: 600, column: 13, scope: !15)
!59 = !{i8 0, i8 2}
!60 = !DILocation(line: 601, column: 13, scope: !15)
!61 = !DILocation(line: 835, column: 15, scope: !62, inlinedAt: !64)
!62 = distinct !DISubprogram(name: "map<memmap2::os::MmapInner, std::io::error::Error, memmap2::Mmap, memmap2::{impl#2}::map_copy_read_only::{closure_env#0}<&std::fs::File>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCs61SnqI2q75L_7memmap22os9MmapInnerNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE3mapNtBM_4MmapNCINvMs0_BM_NtBM_11MmapOptions18map_copy_read_onlyRNtNtB1r_2fs4FileE0ECs2mZqlW55729_12polars_utils", scope: !63, file: !35, line: 831, type: !11, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!63 = !DINamespace(name: "Result", scope: !37)
!64 = !DILocation(line: 603, column: 10, scope: !15)
!65 = !DILocation(line: 835, column: 9, scope: !62, inlinedAt: !64)
!66 = !DILocation(line: 0, scope: !62, inlinedAt: !64)
!67 = !DILocation(line: 836, column: 16, scope: !62, inlinedAt: !64)
!68 = !DILocation(line: 836, column: 22, scope: !69, inlinedAt: !64)
!69 = distinct !DILexicalBlock(scope: !62, file: !35, line: 836, column: 13)
!70 = !DILocation(line: 839, column: 6, scope: !62, inlinedAt: !64)
!71 = !DILocation(line: 0, scope: !15)
!72 = !DILocation(line: 603, column: 36, scope: !15)
!73 = !DILocation(line: 604, column: 6, scope: !7)
!74 = distinct !DISubprogram(name: "map<&std::fs::File>", linkageName: "_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions3mapRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils", scope: !9, file: !8, line: 429, type: !11, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!75 = !DILocation(line: 430, column: 25, scope: !74)
!76 = !DILocation(line: 432, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !8, line: 430, column: 9)
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils: argument 0"}
!80 = distinct !{!80, !"_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils"}
!81 = !DILocation(line: 433, column: 18, scope: !77)
!82 = !DILocation(line: 266, column: 38, scope: !21, inlinedAt: !83)
!83 = distinct !DILocation(line: 433, column: 18, scope: !77)
!84 = !{!85}
!85 = distinct !{!85, !80, !"_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils: argument 1"}
!86 = !DILocation(line: 266, column: 26, scope: !21, inlinedAt: !83)
!87 = !DILocation(line: 266, column: 31, scope: !21, inlinedAt: !83)
!88 = !DILocation(line: 266, column: 19, scope: !22, inlinedAt: !83)
!89 = !DILocation(line: 269, column: 29, scope: !22, inlinedAt: !83)
!90 = !DILocation(line: 270, column: 28, scope: !32, inlinedAt: !83)
!91 = !DILocation(line: 2173, column: 9, scope: !34, inlinedAt: !92)
!92 = distinct !DILocation(line: 270, column: 28, scope: !32, inlinedAt: !83)
!93 = !DILocation(line: 0, scope: !22, inlinedAt: !83)
!94 = !DILocation(line: 281, column: 9, scope: !42, inlinedAt: !83)
!95 = !DILocation(line: 282, column: 6, scope: !22, inlinedAt: !83)
!96 = !DILocation(line: 0, scope: !45, inlinedAt: !83)
!97 = !DILocation(line: 272, column: 27, scope: !48, inlinedAt: !83)
!98 = !DILocation(line: 272, column: 16, scope: !48, inlinedAt: !83)
!99 = !DILocation(line: 279, column: 13, scope: !48, inlinedAt: !83)
!100 = !DILocation(line: 273, column: 28, scope: !48, inlinedAt: !83)
!101 = !DILocation(line: 0, scope: !53, inlinedAt: !83)
!102 = !DILocation(line: 433, column: 13, scope: !77)
!103 = !DILocation(line: 2173, column: 9, scope: !104, inlinedAt: !102)
!104 = distinct !DISubprogram(name: "branch<usize, std::io::error::Error>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !36, file: !35, line: 2172, type: !11, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!105 = !DILocation(line: 435, column: 13, scope: !77)
!106 = !DILocation(line: 436, column: 13, scope: !77)
!107 = !DILocation(line: 437, column: 13, scope: !77)
!108 = !DILocation(line: 835, column: 15, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "map<memmap2::os::MmapInner, std::io::error::Error, memmap2::Mmap, memmap2::{impl#2}::map::{closure_env#0}<&std::fs::File>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCs61SnqI2q75L_7memmap22os9MmapInnerNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE3mapNtBM_4MmapNCINvMs0_BM_NtBM_11MmapOptions3mapRNtNtB1r_2fs4FileE0ECs2mZqlW55729_12polars_utils", scope: !63, file: !35, line: 831, type: !11, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!110 = !DILocation(line: 439, column: 10, scope: !77)
!111 = !DILocation(line: 835, column: 9, scope: !109, inlinedAt: !110)
!112 = !DILocation(line: 0, scope: !109, inlinedAt: !110)
!113 = !DILocation(line: 836, column: 16, scope: !109, inlinedAt: !110)
!114 = !DILocation(line: 836, column: 22, scope: !115, inlinedAt: !110)
!115 = distinct !DILexicalBlock(scope: !109, file: !35, line: 836, column: 13)
!116 = !DILocation(line: 839, column: 6, scope: !109, inlinedAt: !110)
!117 = !DILocation(line: 0, scope: !77)
!118 = !DILocation(line: 439, column: 36, scope: !77)
!119 = !DILocation(line: 440, column: 6, scope: !74)
!120 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils", scope: !122, file: !121, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!121 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e257ba3fa91f9f150d8872ddddab6def")
!122 = !DINamespace(name: "ptr", scope: !38)
!123 = !DILocation(line: 810, column: 1, scope: !120)
!124 = !DILocation(line: 810, column: 1, scope: !125, inlinedAt: !126)
!125 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils", scope: !122, file: !121, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!126 = distinct !DILocation(line: 810, column: 1, scope: !120)
!127 = !DILocation(line: 810, column: 1, scope: !125, inlinedAt: !128)
!128 = distinct !DILocation(line: 810, column: 1, scope: !120)
!129 = distinct !DISubprogram(name: "drop_in_place<pyo3::pybacked::PyBackedStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrECs2mZqlW55729_12polars_utils", scope: !122, file: !121, line: 810, type: !130, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!130 = !DISubroutineType(cc: DW_CC_nocall, types: !12)
!131 = !DILocation(line: 75, column: 26, scope: !132, inlinedAt: !139)
!132 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_0Cs2mZqlW55729_12polars_utils", scope: !134, file: !133, line: 71, type: !130, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!133 = !DIFile(filename: "library/std/src/sys/thread_local/native/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f45b912659b967b327e1af351608d593")
!134 = !DINamespace(name: "{constant#0}", scope: !135)
!135 = !DINamespace(name: "ATTACH_COUNT", scope: !136)
!136 = !DINamespace(name: "state", scope: !137)
!137 = !DINamespace(name: "internal", scope: !138)
!138 = !DINamespace(name: "pyo3", scope: null)
!139 = distinct !DILocation(line: 250, column: 5, scope: !140, inlinedAt: !145)
!140 = distinct !DISubprogram(name: "call_once<pyo3::internal::state::ATTACH_COUNT::{constant#0}::{closure_env#1}, (core::option::Option<&mut core::option::Option<core::cell::Cell<isize>>>)>", linkageName: "_RNvYNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB19_6option6OptionQIB1O_INtNtB19_4cell4CelliEEEEE9call_onceCs2mZqlW55729_12polars_utils", scope: !142, file: !141, line: 250, type: !11, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!141 = !DIFile(filename: "library/core/src/ops/function.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7165aec212fc528edf645f7f5c1c91bb")
!142 = !DINamespace(name: "FnOnce", scope: !143)
!143 = !DINamespace(name: "function", scope: !144)
!144 = !DINamespace(name: "ops", scope: !38)
!145 = distinct !DILocation(line: 461, column: 37, scope: !146, inlinedAt: !152)
!146 = distinct !DISubprogram(name: "try_with<core::cell::Cell<isize>, pyo3::internal::state::thread_is_attached::{closure_env#0}, bool>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CelliEE8try_withNCNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached0bECs2mZqlW55729_12polars_utils", scope: !148, file: !147, line: 457, type: !130, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!147 = !DIFile(filename: "library/std/src/thread/local.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "a9256a1d70f734e1147910659b28fa84")
!148 = !DINamespace(name: "LocalKey", scope: !149)
!149 = !DINamespace(name: "local", scope: !150)
!150 = !DINamespace(name: "thread", scope: !151)
!151 = !DINamespace(name: "std", scope: null)
!152 = distinct !DILocation(line: 39, column: 18, scope: !153, inlinedAt: !155)
!153 = distinct !DISubprogram(name: "thread_is_attached", linkageName: "_RNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached", scope: !136, file: !154, line: 38, type: !11, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!154 = !DIFile(filename: "src/internal/state.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "61078dcb539a5195ea650af11e687497")
!155 = distinct !DILocation(line: 2290, column: 16, scope: !156, inlinedAt: !161)
!156 = distinct !DISubprogram(name: "inner", linkageName: "_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop5inner", scope: !158, file: !157, line: 2287, type: !11, scopeLine: 2287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!157 = !DIFile(filename: "src/instance.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "a9445dd2946120d03be07b6023684263")
!158 = !DINamespace(name: "drop", scope: !159)
!159 = !DINamespace(name: "{impl#38}", scope: !160)
!160 = !DINamespace(name: "instance", scope: !138)
!161 = distinct !DILocation(line: 2306, column: 9, scope: !162, inlinedAt: !163)
!162 = distinct !DISubprogram(name: "drop<pyo3::types::string::PyString>", linkageName: "_RNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtNtB7_5types6string8PyStringENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !159, file: !157, line: 2284, type: !130, scopeLine: 2284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!163 = distinct !DILocation(line: 810, column: 1, scope: !164, inlinedAt: !165)
!164 = distinct !DISubprogram(name: "drop_in_place<pyo3::instance::Py<pyo3::types::string::PyString>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types6string8PyStringEECs2mZqlW55729_12polars_utils", scope: !122, file: !121, line: 810, type: !130, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!165 = distinct !DILocation(line: 810, column: 1, scope: !129)
!166 = !DILocation(line: 462, column: 12, scope: !167, inlinedAt: !152)
!167 = distinct !DILexicalBlock(scope: !146, file: !147, line: 461, column: 9)
!168 = !DILocation(line: 39, column: 31, scope: !169, inlinedAt: !171)
!169 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached0Cs2mZqlW55729_12polars_utils", scope: !170, file: !154, line: 39, type: !130, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!170 = !DINamespace(name: "thread_is_attached", scope: !136)
!171 = distinct !DILocation(line: 462, column: 12, scope: !167, inlinedAt: !152)
!172 = !DILocation(line: 1595, column: 9, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "unwrap_or<bool, std::thread::local::AccessError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultbNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE9unwrap_orCs2mZqlW55729_12polars_utils", scope: !63, file: !35, line: 1590, type: !11, scopeLine: 1590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!174 = distinct !DILocation(line: 39, column: 44, scope: !153, inlinedAt: !155)
!175 = !{!"branch_weights", i32 4000000, i32 4001}
!176 = !DILocation(line: 2294, column: 17, scope: !156, inlinedAt: !161)
!177 = !DILocation(line: 269, column: 13, scope: !178, inlinedAt: !182)
!178 = distinct !DISubprogram(name: "Py_DECREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_DECREF", scope: !180, file: !179, line: 255, type: !11, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!179 = !DIFile(filename: "src/refcount.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-ffi-0.29.0", checksumkind: CSK_MD5, checksum: "274518e7fddcb930011602272ef77a4d")
!180 = !DINamespace(name: "refcount", scope: !181)
!181 = !DINamespace(name: "pyo3_ffi", scope: null)
!182 = distinct !DILocation(line: 2292, column: 26, scope: !156, inlinedAt: !161)
!183 = !DILocation(line: 2290, column: 13, scope: !156, inlinedAt: !161)
!184 = !DILocation(line: 810, column: 1, scope: !129)
!185 = distinct !DISubprogram(name: "drop_in_place<(alloc::vec::Vec<crossbeam_deque::deque::Worker<rayon_core::job::JobRef>, alloc::alloc::Global>, alloc::vec::Vec<crossbeam_deque::deque::Stealer<rayon_core::job::JobRef>, alloc::alloc::Global>)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBI_INtB1h_7StealerB21_EEEECs2mZqlW55729_12polars_utils", scope: !122, file: !121, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!186 = !DILocation(line: 810, column: 1, scope: !187, inlinedAt: !188)
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!826 = !DILocation(line: 49, column: 24, scope: !805)
!827 = !DILocation(line: 937, column: 20, scope: !817, inlinedAt: !821)
!828 = !{!812, !807}
!829 = !DILocation(line: 266, column: 18, scope: !830, inlinedAt: !834)
!830 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<u8>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtB9_3mem12maybe_uninit11MaybeUninithEE17get_unchecked_mutCs2mZqlW55729_12polars_utils", scope: !832, file: !831, line: 259, type: !11, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!831 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "949bb7af491f1c6ef62f3972592a0143")
!832 = !DINamespace(name: "{impl#2}", scope: !833)
!833 = !DINamespace(name: "index", scope: !532)
!834 = distinct !DILocation(line: 691, column: 30, scope: !835, inlinedAt: !838)
!835 = distinct !DISubprogram(name: "get_unchecked_mut<core::mem::maybe_uninit::MaybeUninit<u8>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE17get_unchecked_mutjECs2mZqlW55729_12polars_utils", scope: !837, file: !836, line: 684, type: !11, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!836 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b606e5d97bff599edd0dcbc6067a14f1")
!837 = !DINamespace(name: "{impl#0}", scope: !532)
!838 = distinct !DILocation(line: 978, column: 28, scope: !839, inlinedAt: !841)
!839 = distinct !DISubprogram(name: "push_unchecked<u8>", linkageName: "_RNvMsn_NtCscgRAwXFJnXP_4core5arrayINtB5_5GuardhE14push_uncheckedCs2mZqlW55729_12polars_utils", scope: !840, file: !818, line: 973, type: !11, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!840 = !DINamespace(name: "Guard", scope: !820)
!841 = distinct !DILocation(line: 940, column: 24, scope: !842, inlinedAt: !821)
!842 = distinct !DILexicalBlock(scope: !817, file: !818, line: 937, column: 9)
!843 = !DILocation(line: 574, column: 9, scope: !844, inlinedAt: !849)
!844 = distinct !DISubprogram(name: "write<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninithE5writeCs2mZqlW55729_12polars_utils", scope: !846, file: !845, line: 573, type: !11, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!845 = !DIFile(filename: "library/core/src/mem/maybe_uninit.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "d25680b3b948521c840a272b7b71b5d9")
!846 = !DINamespace(name: "MaybeUninit", scope: !847)
!847 = !DINamespace(name: "maybe_uninit", scope: !848)
!848 = !DINamespace(name: "mem", scope: !38)
!849 = distinct !DILocation(line: 978, column: 64, scope: !839, inlinedAt: !841)
!850 = !DILocation(line: 898, column: 17, scope: !851, inlinedAt: !852)
!851 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !294, file: !293, line: 886, type: !11, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!852 = distinct !DILocation(line: 979, column: 49, scope: !839, inlinedAt: !841)
!853 = !DILocation(line: 945, column: 2, scope: !819, inlinedAt: !821)
!854 = !DILocation(line: 49, column: 9, scope: !805)
!855 = !DILocation(line: 50, column: 6, scope: !805)
!856 = distinct !DISubprogram(name: "estimate", linkageName: "_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch8estimate", scope: !785, file: !784, line: 52, type: !11, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!857 = !DILocation(line: 180, column: 28, scope: !858, inlinedAt: !861)
!858 = distinct !DILexicalBlock(scope: !859, file: !527, line: 162, column: 17)
!859 = distinct !DILexicalBlock(scope: !860, file: !527, line: 161, column: 17)
!860 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils", scope: !530, file: !527, line: 157, type: !11, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!861 = !DILocation(line: 58, column: 18, scope: !862)
!862 = !DILexicalBlockFile(scope: !863, file: !784, discriminator: 2)
!863 = distinct !DILexicalBlock(scope: !864, file: !784, line: 58, column: 9)
!864 = distinct !DILexicalBlock(scope: !865, file: !784, line: 57, column: 9)
!865 = distinct !DILexicalBlock(scope: !866, file: !784, line: 56, column: 9)
!866 = distinct !DILexicalBlock(scope: !867, file: !784, line: 54, column: 9)
!867 = distinct !DILexicalBlock(scope: !856, file: !784, line: 53, column: 9)
!868 = !DILocation(line: 659, column: 28, scope: !869, inlinedAt: !870)
!869 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE3addCs2mZqlW55729_12polars_utils", scope: !260, file: !259, line: 651, type: !11, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!870 = !DILocation(line: 185, column: 40, scope: !858, inlinedAt: !861)
!871 = !DILocation(line: 1717, column: 9, scope: !872, inlinedAt: !857)
!872 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCs2mZqlW55729_12polars_utils", scope: !524, file: !259, line: 1716, type: !11, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!873 = !DILocation(line: 59, column: 45, scope: !874)
!874 = distinct !DILexicalBlock(scope: !863, file: !784, line: 58, column: 9)
!875 = !DILocation(line: 6, column: 28, scope: !876, inlinedAt: !878)
!876 = distinct !DILexicalBlock(scope: !877, file: !784, line: 5, column: 5)
!877 = distinct !DISubprogram(name: "inv_pow2", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils18cardinality_sketch8inv_pow2", scope: !786, file: !784, line: 4, type: !11, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!878 = !DILocation(line: 59, column: 36, scope: !874)
!879 = !DILocation(line: 6, column: 27, scope: !876, inlinedAt: !878)
!880 = !DILocation(line: 6, column: 20, scope: !876, inlinedAt: !878)
!881 = !DILocation(line: 1229, column: 18, scope: !882, inlinedAt: !886)
!882 = distinct !DISubprogram(name: "from_bits", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3f64d9from_bits", scope: !884, file: !883, line: 1226, type: !11, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!883 = !DIFile(filename: "library/core/src/num/f64.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "5d0c0921a38449ff2a5acd4f0c9d38b2")
!884 = !DINamespace(name: "{impl#0}", scope: !885)
!885 = !DINamespace(name: "f64", scope: !38)
!886 = !DILocation(line: 6, column: 5, scope: !876, inlinedAt: !878)
!887 = !DILocation(line: 5, column: 9, scope: !888, inlinedAt: !891)
!888 = distinct !DISubprogram(name: "alg_add_f64", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils13algebraic_ops11alg_add_f64", scope: !890, file: !889, line: 2, type: !11, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!889 = !DIFile(filename: "crates/polars-utils/src/algebraic_ops.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "a27e0ce95da94e8689599a2726d6273c")
!890 = !DINamespace(name: "algebraic_ops", scope: !666)
!891 = !DILocation(line: 59, column: 19, scope: !874)
!892 = !DILocation(line: 60, column: 25, scope: !874)
!893 = !DILocation(line: 60, column: 13, scope: !874)
!894 = distinct !{!894, !895, !896}
!895 = !{!"llvm.loop.isvectorized", i32 1}
!896 = !{!"llvm.loop.unroll.runtime.disable"}
!897 = !DILocation(line: 63, column: 19, scope: !864)
!898 = !DILocation(line: 64, column: 27, scope: !899)
!899 = distinct !DILexicalBlock(scope: !864, file: !784, line: 63, column: 9)
!900 = !DILocation(line: 66, column: 29, scope: !899)
!901 = !DILocation(line: 66, column: 17, scope: !899)
!902 = !DILocation(line: 472, column: 9, scope: !903, inlinedAt: !907)
!903 = distinct !DISubprogram(name: "ln", linkageName: "_RNvMNtCsh8eZTKRCwoO_3std3f32f2ln", scope: !905, file: !904, line: 471, type: !11, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!904 = !DIFile(filename: "library/std/src/num/f32.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f0b9edd9b4401d181abb858442759c14")
!905 = !DINamespace(name: "{impl#0}", scope: !906)
!906 = !DINamespace(name: "f32", scope: !151)
!907 = !DILocation(line: 66, column: 46, scope: !899)
!908 = !DILocation(line: 66, column: 13, scope: !899)
!909 = !DILocation(line: 64, column: 24, scope: !899)
!910 = !DILocation(line: 0, scope: !864)
!911 = !DILocation(line: 71, column: 12, scope: !912)
!912 = distinct !DILexicalBlock(scope: !899, file: !784, line: 64, column: 9)
!913 = !DILocation(line: 74, column: 14, scope: !912)
!914 = !DILocation(line: 74, column: 13, scope: !912)
!915 = !DILocation(line: 1038, column: 12, scope: !916, inlinedAt: !917)
!916 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3maxCs2mZqlW55729_12polars_utils", scope: !695, file: !218, line: 1034, type: !11, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!917 = distinct !DILocation(line: 74, column: 41, scope: !912)
!918 = !DILocation(line: 71, column: 9, scope: !912)
!919 = !DILocation(line: 0, scope: !912)
!920 = !DILocation(line: 76, column: 6, scope: !856)
!921 = distinct !DISubprogram(name: "calc_n_parts", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts", scope: !774, file: !772, line: 61, type: !11, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!922 = !DILocation(line: 62, column: 8, scope: !921)
!923 = !DILocation(line: 63, column: 19, scope: !921)
!924 = !DILocation(line: 63, column: 16, scope: !921)
!925 = !DILocation(line: 66, column: 19, scope: !921)
!926 = !DILocation(line: 2355, column: 13, scope: !927, inlinedAt: !928)
!927 = distinct !DISubprogram(name: "saturating_add", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy14saturating_add", scope: !791, file: !293, line: 2354, type: !11, scopeLine: 2354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!928 = !DILocation(line: 68, column: 24, scope: !929)
!929 = distinct !DILexicalBlock(scope: !921, file: !772, line: 66, column: 5)
!930 = !DILocation(line: 1917, column: 50, scope: !931, inlinedAt: !933)
!931 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs12_NtNtCscgRAwXFJnXP_4core3cmp5implsyNtB8_10PartialOrd2lt", scope: !932, file: !218, line: 1917, type: !11, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!932 = !DINamespace(name: "{impl#66}", scope: !220)
!933 = distinct !DILocation(line: 1177, column: 28, scope: !934, inlinedAt: !936)
!934 = distinct !DISubprogram(name: "spec_next<u64>", linkageName: "_RNvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveyENtB5_26RangeInclusiveIteratorImpl9spec_nextCs2mZqlW55729_12polars_utils", scope: !935, file: !224, line: 1173, type: !11, scopeLine: 1173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!935 = !DINamespace(name: "{impl#14}", scope: !226)
!936 = distinct !DILocation(line: 1269, column: 14, scope: !937, inlinedAt: !939)
!937 = distinct !DISubprogram(name: "next<u64>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveyENtNtNtB7_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils", scope: !938, file: !224, line: 1268, type: !11, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!938 = !DINamespace(name: "{impl#15}", scope: !226)
!939 = distinct !DILocation(line: 107, column: 19, scope: !940, inlinedAt: !941)
!940 = distinct !DISubprogram(name: "next<(u64, u64), core::ops::range::RangeInclusive<u64>, core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusiveyENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1F_4nextB2B_", scope: !203, file: !202, line: 106, type: !11, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!941 = distinct !DILocation(line: 2723, column: 26, scope: !942, inlinedAt: !943)
!942 = distinct !DISubprogram(name: "reduce<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<u64>, core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6reduceNCINvNvB1A_6min_by4foldTyyEINvB1y_7compareyyEE0EB2w_", scope: !235, file: !232, line: 2718, type: !11, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!943 = distinct !DILocation(line: 3434, column: 14, scope: !944, inlinedAt: !945)
!944 = distinct !DISubprogram(name: "min_by<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<u64>, core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>, fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6min_byINvB1y_7compareyyEEB2w_", scope: !235, file: !232, line: 3424, type: !11, scopeLine: 3424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!945 = distinct !DILocation(line: 3405, column: 39, scope: !946, inlinedAt: !947)
!946 = distinct !DISubprogram(name: "min_by_key<core::ops::range::RangeInclusive<u64>, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_", scope: !235, file: !232, line: 3390, type: !11, scopeLine: 3390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!947 = distinct !DILocation(line: 69, column: 10, scope: !929)
!948 = !DILocation(line: 1178, column: 17, scope: !949, inlinedAt: !936)
!949 = distinct !DILexicalBlock(scope: !934, file: !224, line: 1177, column: 9)
!950 = !DILocation(line: 69, column: 31, scope: !951, inlinedAt: !953)
!951 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0B5_", scope: !952, file: !772, line: 69, type: !130, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!952 = !DINamespace(name: "calc_n_parts", scope: !774)
!953 = distinct !DILocation(line: 3397, column: 23, scope: !954, inlinedAt: !957)
!954 = distinct !DISubprogram(name: "{closure#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0B1p_", scope: !955, file: !232, line: 3397, type: !130, scopeLine: 3397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!955 = !DINamespace(name: "key", scope: !956)
!956 = !DINamespace(name: "min_by_key", scope: !235)
!957 = distinct !DILocation(line: 310, column: 21, scope: !958, inlinedAt: !961)
!958 = distinct !DISubprogram(name: "call_once<(u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>", linkageName: "_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0INtB7_6FnOnceTyEE9call_onceB1Y_", scope: !959, file: !141, line: 309, type: !11, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!959 = !DINamespace(name: "{impl#4}", scope: !960)
!960 = !DINamespace(name: "impls", scope: !143)
!961 = distinct !DILocation(line: 1165, column: 29, scope: !962, inlinedAt: !967)
!962 = distinct !DILexicalBlock(scope: !964, file: !963, line: 1165, column: 13)
!963 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "fddbcef1524c4b01c55888c6c3823b51")
!964 = distinct !DISubprogram(name: "map<u64, (u64, u64), &mut core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionyE3mapTyyEQNCINvNvNtNtNtNtB5_4iter6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB23_", scope: !965, file: !963, line: 1160, type: !11, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!965 = !DINamespace(name: "Option", scope: !966)
!966 = !DINamespace(name: "option", scope: !38)
!967 = distinct !DILocation(line: 107, column: 26, scope: !940, inlinedAt: !941)
!968 = !DILocation(line: 3074, column: 20, scope: !969, inlinedAt: !970)
!969 = distinct !DISubprogram(name: "abs_diff", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy8abs_diff", scope: !791, file: !293, line: 3068, type: !11, scopeLine: 3068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!970 = distinct !DILocation(line: 69, column: 49, scope: !951, inlinedAt: !953)
!971 = !{!972, !974, !975, !976, !978, !980, !981, !983, !984}
!972 = distinct !{!972, !973, !"_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_: argument 0"}
!973 = distinct !{!973, !"_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_"}
!974 = distinct !{!974, !973, !"_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_: argument 1"}
!975 = distinct !{!975, !973, !"_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_: argument 2"}
!976 = distinct !{!976, !977, !"_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1G_4foldTyyENCINvNvB1G_6min_by4foldB3O_INvB1E_7compareyyEE0EB2C_: argument 0"}
!977 = distinct !{!977, !"_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1G_4foldTyyENCINvNvB1G_6min_by4foldB3O_INvB1E_7compareyyEE0EB2C_"}
!978 = distinct !{!978, !979, !"_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6reduceNCINvNvB1A_6min_by4foldTyyEINvB1y_7compareyyEE0EB2w_: argument 0"}
!979 = distinct !{!979, !"_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6reduceNCINvNvB1A_6min_by4foldTyyEINvB1y_7compareyyEE0EB2w_"}
!980 = distinct !{!980, !979, !"_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6reduceNCINvNvB1A_6min_by4foldTyyEINvB1y_7compareyyEE0EB2w_: argument 1"}
!981 = distinct !{!981, !982, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_: argument 0"}
!982 = distinct !{!982, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_"}
!983 = distinct !{!983, !982, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_: argument 1"}
!984 = distinct !{!984, !982, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_: argument 2"}
!985 = !{!986, !988, !989, !972, !974, !975, !976, !978, !980, !981, !983, !984}
!986 = distinct !{!986, !987, !"_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_: argument 0"}
!987 = distinct !{!987, !"_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_"}
!988 = distinct !{!988, !987, !"_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_: argument 1"}
!989 = distinct !{!989, !987, !"_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_: argument 2"}
!990 = !DILocation(line: 563, column: 9, scope: !991, inlinedAt: !995)
!991 = distinct !DISubprogram(name: "is_empty<u64>", linkageName: "_RNvMs8_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB5_14RangeInclusiveyE8is_emptyCs2mZqlW55729_12polars_utils", scope: !993, file: !992, line: 559, type: !11, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!992 = !DIFile(filename: "library/core/src/ops/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "aa9e58e587ecf6fc84aabc8815f8ac79")
!993 = !DINamespace(name: "RangeInclusive", scope: !994)
!994 = !DINamespace(name: "range", scope: !144)
!995 = distinct !DILocation(line: 1195, column: 17, scope: !996, inlinedAt: !997)
!996 = distinct !DISubprogram(name: "spec_try_fold<u64, (u64, u64), core::ops::try_trait::{impl#2}::wrap_mut_2::{closure_env#0}<(u64, u64), (u64, u64), u64, core::iter::adapters::map::map_fold::{closure_env#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>>, core::ops::try_trait::NeverShortCircuit<(u64, u64)>>", linkageName: "_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_", scope: !935, file: !224, line: 1189, type: !11, scopeLine: 1189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!997 = distinct !DILocation(line: 1329, column: 14, scope: !998, inlinedAt: !999)
!998 = distinct !DISubprogram(name: "try_fold<u64, (u64, u64), core::ops::try_trait::{impl#2}::wrap_mut_2::{closure_env#0}<(u64, u64), (u64, u64), u64, core::iter::adapters::map::map_fold::{closure_env#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>>, core::ops::try_trait::NeverShortCircuit<(u64, u64)>>", linkageName: "_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator8try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2a_17NeverShortCircuitB1X_E10wrap_mut_2B1X_yNCINvNtNtB8_8adapters3map8map_foldyB1X_B1X_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1X_INvB3X_7compareyyEE0E0E0B2p_EB4r_", scope: !938, file: !224, line: 1323, type: !11, scopeLine: 1323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!999 = distinct !DILocation(line: 380, column: 18, scope: !1000, inlinedAt: !1002)
!1000 = distinct !DISubprogram(name: "fold<u64, (u64, u64), core::iter::adapters::map::map_fold::{closure_env#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>>", linkageName: "_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_", scope: !938, file: !1001, line: 374, type: !11, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1001 = !DIFile(filename: "library/core/src/iter/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "20d83cc3e02b8a8debc301b85898f940")
!1002 = distinct !DILocation(line: 128, column: 19, scope: !1003, inlinedAt: !1004)
!1003 = distinct !DISubprogram(name: "fold<(u64, u64), core::ops::range::RangeInclusive<u64>, core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, (u64, u64), core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1G_4foldTyyENCINvNvB1G_6min_by4foldB3O_INvB1E_7compareyyEE0EB2C_", scope: !203, file: !202, line: 124, type: !11, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1004 = distinct !DILocation(line: 2724, column: 19, scope: !1005, inlinedAt: !943)
!1005 = distinct !DILexicalBlock(scope: !942, file: !232, line: 2723, column: 9)
!1006 = !DILocation(line: 1917, column: 50, scope: !931, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 1201, column: 15, scope: !1008, inlinedAt: !997)
!1008 = distinct !DILexicalBlock(scope: !996, file: !224, line: 1199, column: 9)
!1009 = !DILocation(line: 1201, column: 15, scope: !1008, inlinedAt: !997)
!1010 = !{!1011}
!1011 = distinct !{!1011, !1012, !"_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_: argument 0"}
!1012 = distinct !{!1012, !"_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_"}
!1013 = !DILocation(line: 1205, column: 21, scope: !1014, inlinedAt: !997)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !224, line: 1204, column: 13)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !224, line: 1203, column: 13)
!1016 = !{!1017}
!1017 = distinct !{!1017, !1018, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_: argument 0"}
!1018 = distinct !{!1018, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_"}
!1019 = !DILocation(line: 436, column: 39, scope: !1020, inlinedAt: !1025)
!1020 = distinct !DISubprogram(name: "{closure#0}<(u64, u64), (u64, u64), u64, core::iter::adapters::map::map_fold::{closure_env#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>>", linkageName: "_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_", scope: !1022, file: !1021, line: 436, type: !11, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1021 = !DIFile(filename: "library/core/src/ops/try_trait.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "335edf7dc4f730de066f28da87d0a7cf")
!1022 = !DINamespace(name: "wrap_mut_2", scope: !1023)
!1023 = !DINamespace(name: "{impl#2}", scope: !1024)
!1024 = !DINamespace(name: "try_trait", scope: !144)
!1025 = distinct !DILocation(line: 1205, column: 21, scope: !1014, inlinedAt: !997)
!1026 = !DILocation(line: 69, column: 31, scope: !951, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 3397, column: 23, scope: !954, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 88, column: 28, scope: !1029, inlinedAt: !1030)
!1029 = distinct !DISubprogram(name: "{closure#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_", scope: !254, file: !202, line: 88, type: !11, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1030 = distinct !DILocation(line: 436, column: 39, scope: !1020, inlinedAt: !1025)
!1031 = !{!1017, !1011, !986, !972, !976, !978, !980, !981}
!1032 = !DILocation(line: 898, column: 17, scope: !1033, inlinedAt: !1034)
!1033 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy13unchecked_add", scope: !791, file: !293, line: 886, type: !11, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1034 = distinct !DILocation(line: 214, column: 28, scope: !1035, inlinedAt: !1037)
!1035 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsD_NtNtCscgRAwXFJnXP_4core4iter5rangeyNtB5_4Step17forward_unchecked", scope: !1036, file: !224, line: 212, type: !11, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1036 = !DINamespace(name: "{impl#41}", scope: !226)
!1037 = distinct !DILocation(line: 1203, column: 30, scope: !1008, inlinedAt: !997)
!1038 = !DILocation(line: 88, column: 28, scope: !1029, inlinedAt: !1030)
!1039 = !{!1017, !1011}
!1040 = !DILocation(line: 69, column: 32, scope: !951, inlinedAt: !1027)
!1041 = !DILocation(line: 69, column: 58, scope: !951, inlinedAt: !1027)
!1042 = !{i64 1, i64 0}
!1043 = !DILocation(line: 3074, column: 20, scope: !969, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 69, column: 49, scope: !951, inlinedAt: !1027)
!1045 = !{!1046, !1017, !1011, !986, !988, !989, !972, !974, !975, !976, !978, !980, !981, !983, !984}
!1046 = distinct !{!1046, !1047, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils: argument 0"}
!1047 = distinct !{!1047, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils"}
!1048 = !{!1049, !1046, !1017, !1011, !986, !988, !989, !972, !974, !975, !976, !978, !980, !981, !983, !984}
!1049 = distinct !{!1049, !1050, !"_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils: argument 0"}
!1050 = distinct !{!1050, !"_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils"}
!1051 = !DILocation(line: 1611, column: 8, scope: !1052, inlinedAt: !1053)
!1052 = distinct !DISubprogram(name: "min_by<(u64, u64), &mut fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils", scope: !221, file: !218, line: 1606, type: !11, scopeLine: 1606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1053 = distinct !DILocation(line: 3431, column: 25, scope: !1054, inlinedAt: !1057)
!1054 = distinct !DISubprogram(name: "{closure#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils", scope: !1055, file: !232, line: 3431, type: !11, scopeLine: 3431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1055 = !DINamespace(name: "fold", scope: !1056)
!1056 = !DINamespace(name: "min_by", scope: !235)
!1057 = distinct !DILocation(line: 88, column: 21, scope: !1029, inlinedAt: !1030)
!1058 = !{!986, !972, !976, !978, !980, !981}
!1059 = !DILocation(line: 520, column: 9, scope: !1060, inlinedAt: !1062)
!1060 = distinct !DISubprogram(name: "is_le", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_le", scope: !1061, file: !218, line: 519, type: !11, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1061 = !DINamespace(name: "Ordering", scope: !221)
!1062 = distinct !DILocation(line: 1611, column: 26, scope: !1052, inlinedAt: !1053)
!1063 = !DILocation(line: 1612, column: 2, scope: !1052, inlinedAt: !1053)
!1064 = !{!1065}
!1065 = distinct !{!1065, !1066, !"_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_: argument 0"}
!1066 = distinct !{!1066, !"_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_"}
!1067 = !DILocation(line: 1211, column: 21, scope: !1008, inlinedAt: !997)
!1068 = !{!1069}
!1069 = distinct !{!1069, !1070, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_: argument 0"}
!1070 = distinct !{!1070, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_"}
!1071 = !DILocation(line: 436, column: 39, scope: !1020, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 1211, column: 21, scope: !1008, inlinedAt: !997)
!1073 = !DILocation(line: 88, column: 28, scope: !1029, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 436, column: 39, scope: !1020, inlinedAt: !1072)
!1075 = !{!1069, !1065}
!1076 = !DILocation(line: 69, column: 32, scope: !951, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 3397, column: 23, scope: !954, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 88, column: 28, scope: !1029, inlinedAt: !1074)
!1079 = !{!1069, !1065, !986, !972, !976, !978, !980, !981}
!1080 = !DILocation(line: 69, column: 58, scope: !951, inlinedAt: !1077)
!1081 = !DILocation(line: 69, column: 31, scope: !951, inlinedAt: !1077)
!1082 = !DILocation(line: 3074, column: 20, scope: !969, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 69, column: 49, scope: !951, inlinedAt: !1077)
!1084 = !DILocation(line: 88, column: 21, scope: !1029, inlinedAt: !1074)
!1085 = !{!1086, !1069, !1065, !986, !988, !989, !972, !974, !975, !976, !978, !980, !981, !983, !984}
!1086 = distinct !{!1086, !1087, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils: argument 0"}
!1087 = distinct !{!1087, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils"}
!1088 = !{!1089, !1086, !1069, !1065, !986, !988, !989, !972, !974, !975, !976, !978, !980, !981, !983, !984}
!1089 = distinct !{!1089, !1090, !"_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils: argument 0"}
!1090 = distinct !{!1090, !"_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils"}
!1091 = !DILocation(line: 1611, column: 8, scope: !1052, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 3431, column: 25, scope: !1054, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 88, column: 21, scope: !1029, inlinedAt: !1074)
!1094 = !DILocation(line: 520, column: 9, scope: !1060, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 1611, column: 26, scope: !1052, inlinedAt: !1092)
!1096 = !DILocation(line: 1612, column: 2, scope: !1052, inlinedAt: !1092)
!1097 = !DILocation(line: 1210, column: 9, scope: !1008, inlinedAt: !997)
!1098 = !DILocation(line: 1215, column: 6, scope: !996, inlinedAt: !997)
!1099 = !DILocation(line: 71, column: 2, scope: !921)
!1100 = !DILocation(line: 0, scope: !921)
!1101 = distinct !DISubprogram(name: "unique_column_name", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name", scope: !1103, file: !1102, line: 312, type: !11, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1102 = !DIFile(filename: "crates/polars-utils/src/pl_str.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "a3712769674cc97eef236c6e73878c1e")
!1103 = !DINamespace(name: "pl_str", scope: !666)
!1104 = !DILocation(line: 314, column: 9, scope: !1101)
!1105 = !DILocation(line: 3937, column: 24, scope: !1106, inlinedAt: !1107)
!1106 = distinct !DISubprogram(name: "atomic_add<u64, u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addyyECs2mZqlW55729_12polars_utils", scope: !283, file: !282, line: 3933, type: !11, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1107 = !DILocation(line: 3162, column: 26, scope: !1108, inlinedAt: !1109)
!1108 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE9fetch_add", scope: !287, file: !282, line: 3160, type: !11, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1109 = !DILocation(line: 100, column: 24, scope: !1110, inlinedAt: !1114)
!1110 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvXsa_NtCs2mZqlW55729_12polars_utils12relaxed_cellyNtB5_12AtomicNative9fetch_add", scope: !1112, file: !1111, line: 99, type: !11, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1111 = !DIFile(filename: "crates/polars-utils/src/relaxed_cell.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "afc89ba5581dcec04ada8ac579dc6dbd")
!1112 = !DINamespace(name: "{impl#12}", scope: !1113)
!1113 = !DINamespace(name: "relaxed_cell", scope: !666)
!1114 = !DILocation(line: 21, column: 9, scope: !1115, inlinedAt: !1117)
!1115 = distinct !DISubprogram(name: "fetch_add<u64>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils12relaxed_cellINtB2_11RelaxedCellyE9fetch_addB4_", scope: !1116, file: !1111, line: 20, type: !11, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1116 = !DINamespace(name: "RelaxedCell", scope: !1113)
!1117 = !DILocation(line: 314, column: 23, scope: !1101)
!1118 = !DILocation(line: 11, column: 13, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1101, file: !1102, line: 314, column: 5)
!1120 = !DILocation(line: 11, column: 26, scope: !1119)
!1121 = !DILocation(line: 12, column: 9, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1123, file: !1102, discriminator: 0)
!1123 = distinct !DILexicalBlock(scope: !1125, file: !1124, line: 604, column: 24)
!1124 = !DIFile(filename: "library/core/src/macros/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "05d0820999e50315dc32c83aa7c28669")
!1125 = distinct !DILexicalBlock(scope: !1119, file: !1102, line: 11, column: 9)
!1126 = !DILocation(line: 287, column: 16, scope: !1127, inlinedAt: !1129)
!1127 = distinct !DISubprogram(name: "write_fmt", linkageName: "_RNvXso_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt", scope: !1128, file: !1102, line: 286, type: !11, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1128 = !DINamespace(name: "{impl#26}", scope: !1103)
!1129 = !DILocation(line: 12, column: 9, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1125, file: !1102, discriminator: 4)
!1131 = !DILocation(line: 612, column: 33, scope: !1132, inlinedAt: !1137)
!1132 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !1134, file: !1133, line: 609, type: !11, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1133 = !DIFile(filename: "src/repr/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "75dfb465d6c97cf0f66f252751410a59")
!1134 = !DINamespace(name: "Repr", scope: !1135)
!1135 = !DINamespace(name: "repr", scope: !1136)
!1136 = !DINamespace(name: "compact_str", scope: null)
!1137 = distinct !DILocation(line: 447, column: 30, scope: !1138, inlinedAt: !1139)
!1138 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !1134, file: !1133, line: 446, type: !11, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1139 = distinct !DILocation(line: 779, column: 17, scope: !1140, inlinedAt: !1142)
!1140 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !1141, file: !1133, line: 776, type: !11, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1141 = !DINamespace(name: "{impl#4}", scope: !1135)
!1142 = distinct !DILocation(line: 810, column: 1, scope: !1143, inlinedAt: !1144)
!1143 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs2mZqlW55729_12polars_utils", scope: !122, file: !121, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1144 = distinct !DILocation(line: 810, column: 1, scope: !1145, inlinedAt: !1146)
!1145 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs2mZqlW55729_12polars_utils", scope: !122, file: !121, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1146 = distinct !DILocation(line: 810, column: 1, scope: !1147, inlinedAt: !1148)
!1147 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_", scope: !122, file: !121, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1148 = distinct !DILocation(line: 14, column: 5, scope: !1119)
!1149 = !{i8 0, i8 -38}
!1150 = !{!1151, !1153, !1155, !1157}
!1151 = distinct !{!1151, !1152, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!1152 = distinct !{!1152, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!1153 = distinct !{!1153, !1154, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs2mZqlW55729_12polars_utils: argument 0"}
!1154 = distinct !{!1154, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs2mZqlW55729_12polars_utils"}
!1155 = distinct !{!1155, !1156, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs2mZqlW55729_12polars_utils: argument 0"}
!1156 = distinct !{!1156, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs2mZqlW55729_12polars_utils"}
!1157 = distinct !{!1157, !1158, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_: argument 0"}
!1158 = distinct !{!1158, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_"}
!1159 = !DILocation(line: 779, column: 12, scope: !1140, inlinedAt: !1142)
!1160 = !DILocation(line: 780, column: 13, scope: !1140, inlinedAt: !1142)
!1161 = !DILocation(line: 1231, column: 9, scope: !1162, inlinedAt: !1163)
!1162 = distinct !DISubprogram(name: "unwrap<(), core::fmt::Error>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2mZqlW55729_12polars_utils", scope: !63, file: !35, line: 1227, type: !11, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1163 = distinct !DILocation(line: 12, column: 34, scope: !1125)
!1164 = !DILocation(line: 1233, column: 23, scope: !1165, inlinedAt: !1163)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !35, line: 1233, column: 13)
!1166 = !DILocation(line: 12, column: 42, scope: !1125)
!1167 = !DILocation(line: 13, column: 9, scope: !1125)
!1168 = !DILocation(line: 14, column: 5, scope: !1119)
!1169 = !DILocation(line: 316, column: 1, scope: !1101)
!1170 = !DILocation(line: 316, column: 2, scope: !1101)
!1171 = !DILocation(line: 312, column: 1, scope: !1101)
!1172 = distinct !DISubprogram(name: "into_pyobject", linkageName: "_RNvXNtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB4_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject", scope: !1173, file: !1102, line: 333, type: !11, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1173 = !DINamespace(name: "{impl#0}", scope: !1174)
!1174 = !DINamespace(name: "_python_impl", scope: !1103)
!1175 = !DILocation(line: 612, column: 33, scope: !1176, inlinedAt: !1177)
!1176 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !1134, file: !1133, line: 609, type: !11, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1177 = distinct !DILocation(line: 359, column: 17, scope: !1178, inlinedAt: !1181)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !1133, line: 358, column: 9)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !1133, line: 357, column: 9)
!1180 = distinct !DISubprogram(name: "as_slice", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice", scope: !1134, file: !1133, line: 355, type: !11, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1181 = distinct !DILocation(line: 381, column: 54, scope: !1182, inlinedAt: !1183)
!1182 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr6as_str", scope: !1134, file: !1133, line: 379, type: !11, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1183 = !DILocation(line: 558, column: 16, scope: !1184, inlinedAt: !1187)
!1184 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMCs7VARH73bmU_11compact_strNtB2_13CompactString6as_str", scope: !1186, file: !1185, line: 557, type: !11, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1185 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "f3db9a3cc7432998c9a8567b9d88cfb3")
!1186 = !DINamespace(name: "CompactString", scope: !1136)
!1187 = !DILocation(line: 67, column: 16, scope: !1188, inlinedAt: !1190)
!1188 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr6as_str", scope: !1189, file: !1102, line: 66, type: !11, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1189 = !DINamespace(name: "PlSmallStr", scope: !1103)
!1190 = !DILocation(line: 334, column: 18, scope: !1172)
!1191 = !{!1192}
!1192 = distinct !{!1192, !1193, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!1193 = distinct !{!1193, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice"}
!1194 = !DILocation(line: 359, column: 12, scope: !1178, inlinedAt: !1181)
!1195 = !DILocation(line: 2548, column: 13, scope: !1196, inlinedAt: !1198)
!1196 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3numh12wrapping_sub", scope: !1197, file: !293, line: 2547, type: !11, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1197 = !DINamespace(name: "{impl#6}", scope: !295)
!1198 = distinct !DILocation(line: 365, column: 30, scope: !1178, inlinedAt: !1181)
!1199 = !DILocation(line: 1077, column: 12, scope: !694, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 1576, column: 8, scope: !1201, inlinedAt: !1202)
!1201 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECs2mZqlW55729_12polars_utils", scope: !221, file: !218, line: 1575, type: !11, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1202 = distinct !DILocation(line: 364, column: 26, scope: !1178, inlinedAt: !1181)
!1203 = !DILocation(line: 369, column: 12, scope: !1204, inlinedAt: !1181)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1133, line: 368, column: 9)
!1205 = distinct !DILexicalBlock(scope: !1178, file: !1133, line: 364, column: 9)
!1206 = !DILocation(line: 358, column: 28, scope: !1179, inlinedAt: !1181)
!1207 = !DILocation(line: 368, column: 27, scope: !1205, inlinedAt: !1181)
!1208 = !DILocation(line: 369, column: 9, scope: !1204, inlinedAt: !1181)
!1209 = !DILocation(line: 779, column: 12, scope: !1140, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 810, column: 1, scope: !1143, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 810, column: 1, scope: !1145, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 810, column: 1, scope: !1147, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 335, column: 9, scope: !1172)
!1214 = !DILocation(line: 780, column: 13, scope: !1140, inlinedAt: !1210)
!1215 = !DILocation(line: 0, scope: !1178, inlinedAt: !1181)
!1216 = !DILocation(line: 0, scope: !1180, inlinedAt: !1181)
!1217 = !DILocation(line: 22, column: 12, scope: !1218, inlinedAt: !1224)
!1218 = distinct !DISubprogram(name: "into_pyobject", linkageName: "_RNvXNtNtNtCsbm5zPlkZccl_4pyo311conversions3std6stringReNtNtB8_10conversion12IntoPyObject13into_pyobject", scope: !1220, file: !1219, line: 21, type: !11, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1219 = !DIFile(filename: "src/conversions/std/string.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "68e57536a4dafb6e8579c548712a22f7")
!1220 = !DINamespace(name: "{impl#0}", scope: !1221)
!1221 = !DINamespace(name: "string", scope: !1222)
!1222 = !DINamespace(name: "std", scope: !1223)
!1223 = !DINamespace(name: "conversions", scope: !138)
!1224 = !DILocation(line: 334, column: 27, scope: !1172)
!1225 = !DILocation(line: 779, column: 12, scope: !1140, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 810, column: 1, scope: !1143, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 810, column: 1, scope: !1145, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 810, column: 1, scope: !1147, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 335, column: 9, scope: !1172)
!1230 = !DILocation(line: 780, column: 13, scope: !1140, inlinedAt: !1226)
!1231 = !DILocation(line: 335, column: 10, scope: !1172)
!1232 = !DILocation(line: 333, column: 9, scope: !1172)
!1233 = distinct !DISubprogram(name: "expecting", linkageName: "_RNvXNvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtB7_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB15_7Visitor9expecting", scope: !1234, file: !663, line: 6, type: !11, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1234 = !DINamespace(name: "{impl#0}", scope: !1235)
!1235 = !DINamespace(name: "deserialize", scope: !1236)
!1236 = !DINamespace(name: "{impl#0}", scope: !1237)
!1237 = !DINamespace(name: "_", scope: !665)
!1238 = !DILocation(line: 6, column: 56, scope: !1233)
!1239 = !DILocation(line: 6, column: 74, scope: !1233)
!1240 = distinct !DISubprogram(name: "expecting", linkageName: "_RNvXNvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBd_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB8_9___VisitorNtB1b_7Visitor10visit_enumNtB2_14___FieldVisitorB2m_9expecting", scope: !1241, file: !663, line: 6, type: !11, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1241 = !DINamespace(name: "{impl#0}", scope: !1242)
!1242 = !DINamespace(name: "visit_enum", scope: !1243)
!1243 = !DINamespace(name: "{impl#2}", scope: !1235)
!1244 = !DILocation(line: 6, column: 56, scope: !1240)
!1245 = !DILocation(line: 6, column: 74, scope: !1240)
!1246 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs0_NtCs2mZqlW55729_12polars_utils10slice_enumNtB5_5SliceINtNtCscgRAwXFJnXP_4core7convert4FromTxjEE4from", scope: !1247, file: !663, line: 127, type: !11, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1247 = !DINamespace(name: "{impl#2}", scope: !665)
!1248 = !DILocation(line: 128, column: 12, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !663, line: 127, column: 50)
!1250 = !DILocation(line: 135, column: 50, scope: !1249)
!1251 = !DILocation(line: 272, column: 20, scope: !1252, inlinedAt: !1254)
!1252 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXso_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsjINtB9_7TryFromxE8try_from", scope: !1253, file: !727, line: 271, type: !11, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1253 = !DINamespace(name: "{impl#26}", scope: !729)
!1254 = !DILocation(line: 135, column: 34, scope: !1249)
!1255 = !DILocation(line: 1233, column: 23, scope: !1256, inlinedAt: !1258)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !35, line: 1233, column: 13)
!1257 = distinct !DISubprogram(name: "unwrap<usize, core::num::error::TryFromIntError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2mZqlW55729_12polars_utils", scope: !63, file: !35, line: 1227, type: !11, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1258 = distinct !DILocation(line: 135, column: 59, scope: !1249)
!1259 = !DILocation(line: 0, scope: !1249)
!1260 = !DILocation(line: 139, column: 6, scope: !1246)
!1261 = distinct !DISubprogram(name: "extract", linkageName: "_RNvXs0_NtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB7_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12FromPyObject7extract", scope: !1262, file: !1102, line: 351, type: !11, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1262 = !DINamespace(name: "{impl#2}", scope: !1174)
!1263 = !DILocation(line: 352, column: 19, scope: !1261)
!1264 = !DILocation(line: 140, column: 25, scope: !1265, inlinedAt: !1269)
!1265 = distinct !DISubprogram(name: "extract", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract", scope: !1267, file: !1266, line: 139, type: !11, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1266 = !DIFile(filename: "src/pybacked.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0", checksumkind: CSK_MD5, checksum: "0c9a12bd5ccf666b9440bef4cdf5e9da")
!1267 = !DINamespace(name: "{impl#9}", scope: !1268)
!1268 = !DINamespace(name: "pybacked", scope: !138)
!1269 = distinct !DILocation(line: 1012, column: 9, scope: !1270, inlinedAt: !1272)
!1270 = distinct !DISubprogram(name: "extract<pyo3::types::any::PyAny, pyo3::pybacked::PyBackedStr>", linkageName: "_RINvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB6_8BorrowedNtNtNtB8_5types3any5PyAnyE7extractNtNtB8_8pybacked11PyBackedStrECs2mZqlW55729_12polars_utils", scope: !1271, file: !157, line: 1008, type: !11, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1271 = !DINamespace(name: "Borrowed", scope: !160)
!1272 = !DILocation(line: 352, column: 22, scope: !1261)
!1273 = !{!1274}
!1274 = distinct !{!1274, !1275, !"_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract: argument 0"}
!1275 = distinct !{!1275, !"_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract"}
!1276 = !DILocation(line: 1037, column: 9, scope: !1277, inlinedAt: !1278)
!1277 = distinct !DISubprogram(name: "cast<pyo3::types::any::PyAny, pyo3::types::string::PyString>", linkageName: "_RINvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB6_8BorrowedNtNtNtB8_5types3any5PyAnyE4castNtNtBT_6string8PyStringECs2mZqlW55729_12polars_utils", scope: !1271, file: !157, line: 1020, type: !11, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1278 = distinct !DILocation(line: 140, column: 29, scope: !1265, inlinedAt: !1269)
!1279 = !DILocation(line: 2173, column: 15, scope: !1280, inlinedAt: !1281)
!1280 = distinct !DISubprogram(name: "branch<pyo3::instance::Borrowed<pyo3::types::string::PyString>, pyo3::err::cast_error::CastError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultINtNtCsbm5zPlkZccl_4pyo38instance8BorrowedNtNtNtBP_5types6string8PyStringENtNtNtBP_3err10cast_error9CastErrorENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !36, file: !35, line: 2172, type: !11, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1281 = distinct !DILocation(line: 140, column: 25, scope: !1265, inlinedAt: !1269)
!1282 = !DILocation(line: 0, scope: !1280, inlinedAt: !1281)
!1283 = !DILocation(line: 140, column: 47, scope: !1265, inlinedAt: !1269)
!1284 = !DILocation(line: 2173, column: 9, scope: !1280, inlinedAt: !1281)
!1285 = !DILocation(line: 2189, column: 23, scope: !1286, inlinedAt: !1289)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !35, line: 2189, column: 13)
!1287 = distinct !DISubprogram(name: "from_residual<pyo3::pybacked::PyBackedStr, pyo3::err::cast_error::CastError, pyo3::err::PyErr>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrNtNtBO_3err5PyErrEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtB1v_10cast_error9CastErrorEE13from_residualCs2mZqlW55729_12polars_utils", scope: !1288, file: !35, line: 2187, type: !11, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1288 = !DINamespace(name: "{impl#28}", scope: !37)
!1289 = distinct !DILocation(line: 140, column: 25, scope: !1290, inlinedAt: !1269)
!1290 = !DILexicalBlockFile(scope: !1291, file: !1266, discriminator: 2)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !1266, line: 140, column: 47)
!1292 = distinct !DILexicalBlock(scope: !1265, file: !1266, line: 140, column: 47)
!1293 = !DILocation(line: 2189, column: 27, scope: !1286, inlinedAt: !1289)
end_hunk_2
