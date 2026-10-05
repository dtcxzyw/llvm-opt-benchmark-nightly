Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/mdtest-6d13eae5d4aac296.mdtest.f417265bba566f7e-cgu.14?download=true
inline.NumInlined: 194
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXhPDodhyTq_6mdtest, align 8
@1 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@2 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @1, [24 x i8] zeroinitializer }>, align 8
@3 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/algorithms/histogram.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"n\00\00\00\00\00\00\001\01\00\00\18\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"n\00\00\00\00\00\00\00F\01\00\00\17\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"n\00\00\00\00\00\00\00F\01\00\00-\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"n\00\00\00\00\00\00\00R\01\00\00\17\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"n\00\00\00\00\00\00\00R\01\00\00+\00\00\00" }>, align 8
@9 = private unnamed_addr constant [22 x i8] c"no entry found for key", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"n\00\00\00\00\00\00\00V\01\00\00%\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"n\00\00\00\00\00\00\00J\01\00\00%\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"n\00\00\00\00\00\00\00#\01\00\00\18\00\00\00" }>, align 8
@_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@13 = private unnamed_addr constant [17 x i8] c"mdtest_snippet.py", align 1
@14 = private unnamed_addr constant [18 x i8] c"mdtest_snippet.pyi", align 1
@15 = private unnamed_addr constant [20 x i8] c"mdtest_snippet.ipynb", align 1
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@17 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@18 = private unnamed_addr constant [33 x i8] c"absolute line number must be >= 1", align 1
@19 = private unnamed_addr constant [28 x i8] c"crates/mdtest/src/parser.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"\1B\00\00\00\00\00\00\00I\01\00\00\16\00\00\00" }>, align 8
@21 = private unnamed_addr constant [45 x i8] c"markdown file to have at least one code block", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"\1B\00\00\00\00\00\00\00R\01\00\00\1E\00\00\00" }>, align 8
@23 = private unnamed_addr constant [42 x i8] c"Should never pop the implicit root section", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"\1B\00\00\00\00\00\00\00\E6\01\00\00\0E\00\00\00" }>, align 8
@25 = private unnamed_addr constant [51 x i8] c"assertion failed: value <= Self::MAX_VALUE as usize", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"\1B\00\00\00\00\00\00\00\CA\00\00\00\01\00\00\00" }>, align 8
@27 = private unnamed_addr constant [42 x i8] c"assertion failed: value <= Self::MAX_VALUE", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"\1B\00\00\00\00\00\00\00\DF\00\00\00\01\00\00\00" }>, align 8
@29 = private unnamed_addr constant [19 x i8] c"slice out of bounds", align 1
@30 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@31 = private unnamed_addr constant [38 x i8] c"diff operation old range out of bounds", align 1
@32 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-3.1.1/src/text/mod.rs\00", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"b\00\00\00\00\00\00\00\8A\00\00\00\1A\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"b\00\00\00\00\00\00\00\9E\00\00\00\1A\00\00\00" }>, align 8
@35 = private unnamed_addr constant [38 x i8] c"diff operation new range out of bounds", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"b\00\00\00\00\00\00\00\B1\00\00\00\1A\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"b\00\00\00\00\00\00\00\D2\00\00\00\1A\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"b\00\00\00\00\00\00\00\C4\00\00\00\1A\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCskXhPDodhyTq_6mdtest }>, align 8
@41 = private unnamed_addr constant [6 x i8] c"Layout", align 1
@42 = private unnamed_addr constant [4 x i8] c"size", align 1
@43 = private unnamed_addr constant [5 x i8] c"align", align 1
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCskXhPDodhyTq_6mdtest }>, align 8
@45 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@46 = private unnamed_addr constant [14 x i8] c"EmbeddedFileId", align 1
@47 = private unnamed_addr constant [36 x i8] c"crates/ruff_text_size/src/traits.rs\00", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c"#\00\00\00\00\00\00\00\13\00\00\00\1F\00\00\00" }>, align 8
@49 = private unnamed_addr constant [24 x i8] c"snapshotting diagnostics", align 1
@50 = private unnamed_addr constant [31 x i8] c"skipping the pull-types visitor", align 1
@51 = private unnamed_addr constant [20 x i8] c"expect test to panic", align 1
@52 = private unnamed_addr constant [9 x i8] c"SectionId", align 1
@53 = private unnamed_addr constant [7 x i8] c"Pointer", align 1
@54 = private unnamed_addr constant [4 x i8] c"addr", align 1
@55 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCs4NRVxsYgnAr_4core3ptr8metadataINtB5_11DynMetadataDNtNtCs45bxiIjzMqg_5salsa8database8DatabaseEL_ENtNtB9_3fmt5Debug3fmtCskXhPDodhyTq_6mdtest }>, align 8
@56 = private unnamed_addr constant [8 x i8] c"metadata", align 1
@switch.table._RNvMs7_NtCskXhPDodhyTq_6mdtest6parserNtB5_12EmbeddedFile9full_path = private unnamed_addr constant [3 x i8] c"\11\12\14", align 8
@switch.table._RNvMs7_NtCskXhPDodhyTq_6mdtest6parserNtB5_12EmbeddedFile9full_path.23 = private unnamed_addr constant [3 x ptr] [ptr @13, ptr @14, ptr @15], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCsiqiOkcJdymw_7similar4textINtB6_8TextDiffeE10from_linesReB12_eECskXhPDodhyTq_6mdtest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24
  call void @_RNvXs2_NtNtCsiqiOkcJdymw_7similar4text11abstractionReNtB5_13IntoDiffInput15into_diff_inputCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !25
  call fastcc void @_RINvMs_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeE14from_tokenizedNvYeNtNtB5_11abstraction11DiffableStr14tokenize_linesECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.e), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24
  invoke void @_RNvXs2_NtNtCsiqiOkcJdymw_7similar4text11abstractionReNtB5_13IntoDiffInput15into_diff_inputCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.b unwind label %bb.n, !noalias !26

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvMs_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeE14from_tokenizedNvYeNtNtB5_11abstraction11DiffableStr14tokenize_linesECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.n, !noalias !26

bb.c:                                             ; preds = %bb.h, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.n, %bb.h ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiqiOkcJdymw_7similar4text12TextDiffSideeEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #16
          to label %bb.m unwind label %bb.l, !noalias !27

bb.d:                                             ; preds = %bb.j, %._crit_edge.i.i, %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24
  %.val23.i.i = load i64, ptr %i.f, align 8, !range !3, !alias.scope !29, !noalias !31, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val24.i.i = load i64, ptr %i.h, align 8, !alias.scope !29, !noalias !31 ; 4 uses
  %i.i = trunc nuw i64 %.val23.i.i to i1
  %..i.i.i = select i1 %i.i, i64 384307168202282326, i64 576460752303423488
  %i.j = icmp ult i64 %.val24.i.i, %..i.i.i
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %.val24.i.i, 100
  %.val.pre.i.i = load i64, ptr %i.d, align 8, !range !3, !alias.scope !30, !noalias !32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val14.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !30, !noalias !32 ; 4 uses
  %.pre.i.i = trunc nuw i64 %.val.pre.i.i to i1
  %.pre35.i.i = select i1 %.pre.i.i, i64 384307168202282326, i64 576460752303423488
  %i.l = icmp ult i64 %.val14.pre.i.i, %.pre35.i.i
  br i1 %i.k, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ugt i64 %.val14.pre.i.i, 100
  br i1 %i.m, label %._crit_edge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCsiqiOkcJdymw_7similar6common21capture_diff_deadlineINtNtB4_4text12TextDiffSideeEBU_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %.val24.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %.val14.pre.i.i, i64 undef, i32 noundef -1)
          to label %_RINvMs3_NtCsiqiOkcJdymw_7similar4textNtB6_14TextDiffConfig10diff_linesReB16_eECskXhPDodhyTq_6mdtest.exit unwind label %bb.d, !noalias !27

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33
  invoke void @_RINvMs4_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB6_16IdentifyDistinctmE3newINtNtBa_4text12TextDiffSideeEB1i_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %.val24.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %.val14.pre.i.i)
          to label %bb.i unwind label %bb.d, !noalias !27

bb.h:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils16IdentifyDistinctmEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(64) %i.a) #16
          to label %bb.c unwind label %bb.l, !noalias !27

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val25.i.i = load i64, ptr %i.o, align 8, !noalias !33, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val26.i.i = load i64, ptr %i.p, align 8, !noalias !33, !noundef !4 ; 2 uses
  %i.q = icmp ult i64 %.val25.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val26.i.i, %.val25.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.val27.i.i = load i64, ptr %i.t, align 8, !noalias !33, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val28.i.i = load i64, ptr %i.u, align 8, !noalias !33, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %.val27.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.v)
  %i.w = add i64 %.val28.i.i, %.val27.i.i
  invoke void @_RINvNtCsiqiOkcJdymw_7similar6common21capture_diff_deadlineINtNtNtB4_10algorithms5utils12OffsetLookupmEBU_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.val26.i.i, i64 noundef %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, i64 noundef %.val28.i.i, i64 noundef %i.w, i64 undef, i32 noundef -1)
          to label %bb.j unwind label %bb.h, !noalias !27

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils16IdentifyDistinctmEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(64) %i.a)
          to label %bb.k unwind label %bb.d, !noalias !27

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33
  br label %_RINvMs3_NtCsiqiOkcJdymw_7similar4textNtB6_14TextDiffConfig10diff_linesReB16_eECskXhPDodhyTq_6mdtest.exit

bb.l:                                             ; preds = %bb.m, %bb.h, %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !27
  unreachable

bb.m:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiqiOkcJdymw_7similar4text12TextDiffSideeEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #16
          to label %.body.i unwind label %bb.l, !noalias !27

bb.n:                                             ; preds = %bb.b, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiqiOkcJdymw_7similar4text12TextDiffSideeEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(32) %i.f) #16
          to label %.body.i unwind label %bb.o, !noalias !26

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !26
  unreachable

.body.i:                                          ; preds = %bb.n, %bb.m
  %eh.lpad-body6.i = phi { ptr, i32 } [ %i.y, %bb.n ], [ %.pn.i.i, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body6.i

_RINvMs3_NtCsiqiOkcJdymw_7similar4textNtB6_14TextDiffConfig10diff_linesReB16_eECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.g, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !34, !noalias !35
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !alias.scope !36, !noalias !37
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !38
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.ac, align 8, !alias.scope !39, !noalias !38
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.ad, align 1, !alias.scope !39, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeE14from_tokenizedNvYeNtNtB5_11abstraction11DiffableStr14tokenize_linesECskXhPDodhyTq_6mdtest(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = load i64, ptr %1, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs5_NtNtCsiqiOkcJdymw_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest.exit, %bb.b
  ret void

bb.d:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val7 = load i64, ptr %i.m, align 8, !noundef !4
  invoke void @_RNvXs5_NtNtCsiqiOkcJdymw_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_lines(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val7)
          to label %_RNvYNvYeNtNtNtCsiqiOkcJdymw_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCskXhPDodhyTq_6mdtest.exit unwind label %bb.d

_RNvYNvYeNtNtNtCsiqiOkcJdymw_7similar4text11abstraction11DiffableStr14tokenize_linesINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.r = icmp ult i64 %i.q, 576460752303423488
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.q
  %i.t = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCskXhPDodhyTq_6mdtest6parserNtB5_21EmbeddedFileSourceMap23to_absolute_line_number:bb.a
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.01.021 = phi i64 [ %i.m, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %.sroa.04.020 = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.020, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = icmp ugt i64 %.sroa.01.021, %i.h
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load i64, ptr %.sroa.04.020, align 8, !noundef !4
  %i.k = add i64 %i.j, %.sroa.01.021              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.e, !prof !8

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.020, i64 16 ; 2 uses
  %i.m = sub nuw i64 %.sroa.01.021, %i.h
  %i.n = icmp eq ptr %i.l, %i.e
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #18
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.3.0 = phi i64 [ %i.k, %bb.b ], [ %i.u, %._crit_edge ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 1, %._crit_edge ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.p

._crit_edge:                                      ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.e, i64 -16
  %i.r = load i64, ptr %i.q, align 8, !noundef !4
  %i.s = getelementptr i8, ptr %i.e, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  %i.u = add i64 %i.t, %i.r                       ; 2 uses
  %.not17 = icmp eq i64 %i.u, 0
  br i1 %.not17, label %._crit_edge.thread, label %bb.e, !prof !8

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #18
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB5_16EmbeddedFilePath24is_allowed_explicit_path(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %1, label %_RNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB7_16EmbeddedFilePath24is_allowed_explicit_path0B9_.exit.backedge.i.2 [
    i64 17, label %.split.i
    i64 18, label %.split.i.1
    i64 20, label %.split.i.2
  ]

.split.i:                                         ; preds = %bb.a
  %i.a = load i128, ptr %0, align 1
  %i.b = xor i128 %i.a, 149114741979759836048329595473292977261
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i128
  %i.f = xor i128 %i.e, 121
  %i.g = or i128 %i.b, %i.f
  %i.h = icmp ne i128 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCskLngH8kgpZI_15ruff_python_ast12PySourceTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB2t_16EmbeddedFilePath24is_allowed_explicit_path0EB2v_.exit, label %_RNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB7_16EmbeddedFilePath24is_allowed_explicit_path0B9_.exit.backedge.i.2

.split.i.1:                                       ; preds = %bb.a
  %i.j = load i128, ptr %0, align 1
  %i.k = xor i128 %i.j, 149114741979759836048329595473292977261
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i128
  %i.o = xor i128 %i.n, 27001
  %i.p = or i128 %i.k, %i.o
  %i.q = icmp ne i128 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %.not.i.1 = icmp eq i32 %i.r, 0
  br i1 %.not.i.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCskLngH8kgpZI_15ruff_python_ast12PySourceTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB2t_16EmbeddedFilePath24is_allowed_explicit_path0EB2v_.exit, label %_RNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB7_16EmbeddedFilePath24is_allowed_explicit_path0B9_.exit.backedge.i.2

.split.i.2:                                       ; preds = %bb.a
  %i.s = load i128, ptr %0, align 1
  %i.t = xor i128 %i.s, 139810146009265424938002946051330565229
  %i.u = getelementptr i8, ptr %0, i64 16
  %i.v = load i32, ptr %i.u, align 1
  %i.w = zext i32 %i.v to i128
  %i.x = xor i128 %i.w, 1651407216
  %i.y = or i128 %i.t, %i.x
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not.i.2 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.2, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCskLngH8kgpZI_15ruff_python_ast12PySourceTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB2t_16EmbeddedFilePath24is_allowed_explicit_path0EB2v_.exit, label %_RNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB7_16EmbeddedFilePath24is_allowed_explicit_path0B9_.exit.backedge.i.2

_RNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB7_16EmbeddedFilePath24is_allowed_explicit_path0B9_.exit.backedge.i.2: ; preds = %bb.a, %.split.i, %.split.i.1, %.split.i.2
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCskLngH8kgpZI_15ruff_python_ast12PySourceTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB2t_16EmbeddedFilePath24is_allowed_explicit_path0EB2v_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCskLngH8kgpZI_15ruff_python_ast12PySourceTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB2t_16EmbeddedFilePath24is_allowed_explicit_path0EB2v_.exit: ; preds = %_RNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB7_16EmbeddedFilePath24is_allowed_explicit_path0B9_.exit.backedge.i.2, %.split.i.2, %.split.i.1, %.split.i
  %.lcssa.ph.i = phi i1 [ false, %.split.i ], [ true, %_RNCNvMs6_NtCskXhPDodhyTq_6mdtest6parserNtB7_16EmbeddedFilePath24is_allowed_explicit_path0B9_.exit.backedge.i.2 ], [ false, %.split.i.1 ], [ false, %.split.i.2 ]
  ret i1 %.lcssa.ph.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCskXhPDodhyTq_6mdtest6parserNtB5_12EmbeddedFile11append_code(ptr noalias noundef align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs1_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweE6to_mutCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !339, !noundef !4 ; 4 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !339, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 10, ptr %i.j, align 1
  %i.k = add nuw i64 %i.f, 1                      ; 2 uses
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !339
  %i.l = icmp samesign ugt i64 %i.f, 4294967294
  %i.m = shl nuw i64 %i.k, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.l, i64 513, i64 %i.m ; 2 uses
  %i.n = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskXhPDodhyTq_6mdtest.exit, !prof !8

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #18
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.b
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %4)
  %i.o = load i64, ptr %i.e, align 8, !alias.scope !340, !noundef !4 ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !340, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !340
  %i.s = add i64 %.pre.i, %4
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !340
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !341, !noalias !342, !noundef !4 ; 3 uses
  %i.v = load i64, ptr %0, align 8, !range !6, !alias.scope !341, !noalias !342, !noundef !4
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskXhPDodhyTq_6mdtest6parser9CodeBlockE8push_mutBI_.exit

bb.d:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskXhPDodhyTq_6mdtest.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskXhPDodhyTq_6mdtest6parser9CodeBlockE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !342
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskXhPDodhyTq_6mdtest6parser9CodeBlockE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskXhPDodhyTq_6mdtest6parser9CodeBlockE8push_mutBI_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskXhPDodhyTq_6mdtest.exit, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !341, !noalias !342, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.u ; 4 uses
  store i32 %1, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %.sroa.62.0..sroa_idx, align 8
  %i.aa = add i64 %i.u, 1
  store i64 %i.aa, ptr %i.t, align 8, !alias.scope !341, !noalias !342
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskXhPDodhyTq_6mdtest6parser9CodeBlockE8push_mutBI_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCskXhPDodhyTq_6mdtest6parserNtB5_12EmbeddedFile9full_path(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %.not, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 8, !range !11, !noundef !4 ; 2 uses
  %i.g = zext nneg i8 %i.f to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCskXhPDodhyTq_6mdtest6parserNtB5_12EmbeddedFile9full_path, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.h = zext nneg i8 %i.f to i64
  %switch.gep6 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs7_NtCskXhPDodhyTq_6mdtest6parserNtB5_12EmbeddedFile9full_path.23, i64 %i.h
  %switch.load7 = load ptr, ptr %switch.gep6, align 8
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.sroa.7.0 = phi i64 [ %i.e, %bb.b ], [ %switch.ext, %switch.lookup ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %switch.load7, %switch.lookup ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 47, ptr %i.a, align 4
  %i.i = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call { ptr, i64 } @_RINvMs4_CshFWUtO0bu8g_6caminoNtB6_8Utf8Path3neweECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0), !noalias !346 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  call void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinRBw_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvXs7_NtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB5_13SystemPathBufINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs9_NtCskXhPDodhyTq_6mdtest6parserNtB5_12SectionStack3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 4) #19 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #18
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i32 %1, ptr %i.a, align 4
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvMs9_NtCskXhPDodhyTq_6mdtest6parserNtB5_12SectionStack3top(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.b
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !range !12, !noundef !4
  ret i32 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs9_NtCskXhPDodhyTq_6mdtest6parserNtB5_12SectionStack4push(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !349, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !349, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskXhPDodhyTq_6mdtest6parser9SectionIdE8push_mutBI_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskXhPDodhyTq_6mdtest6parser9SectionIdE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskXhPDodhyTq_6mdtest6parser9SectionIdE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskXhPDodhyTq_6mdtest6parser9SectionIdE8push_mutBI_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !349, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  store i32 %1, ptr %i.g, align 4
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !349
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCskXhPDodhyTq_6mdtest() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 329) 328, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjjEmEE13new_uninit_inCskXhPDodhyTq_6mdtest() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(232) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 329) 232, i64 noundef 8) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsc_NtCskXhPDodhyTq_6mdtest6parserNtB5_16MdtestDirectives13add_directive(ptr noalias noundef align 8 dereferenceable(32) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i8 noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !352, !alias.scope !353, !noundef !4
  %switch.i = icmp ugt i64 %i.b, -3
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECskXhPDodhyTq_6mdtest.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskXhPDodhyTq_6mdtest.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskXhPDodhyTq_6mdtest.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest.exit.i.i: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECskXhPDodhyTq_6mdtest.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskXhPDodhyTq_6mdtest.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsc_NtCskXhPDodhyTq_6mdtest6parserNtB5_16MdtestDirectives17has_directive_set(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.a, align 1
  %i.b = call noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyBO_EBS_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsc_NtCskXhPDodhyTq_6mdtest6parserNtB5_16MdtestDirectives3get(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !370, !noalias !371, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCskXhPDodhyTq_6mdtest6parser15MdtestDirectiveEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !374, !noalias !375, !noundef !4 ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !alias.scope !374, !noalias !375, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.j    ; 3 uses
end_hunk_1
