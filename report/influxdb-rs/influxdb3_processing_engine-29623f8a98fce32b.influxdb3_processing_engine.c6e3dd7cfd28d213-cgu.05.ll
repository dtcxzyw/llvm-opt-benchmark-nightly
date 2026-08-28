Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine-29623f8a98fce32b.influxdb3_processing_engine.c6e3dd7cfd28d213-cgu.05?download=true
inline.NumInlined: 667
inline.NumDeleted: 413
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [39 x i8] c"influxdb3_catalog/src/format/reader.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"&\00\00\00\00\00\00\00Z\00\00\00;\00\00\00" }>, align 8
@2 = private unnamed_addr constant [132 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/node.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\83\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@4 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\83\00\00\00\00\00\00\00\03\04\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\83\00\00\00\00\00\00\00\13\05\00\00$\00\00\00" }>, align 8
@7 = private unnamed_addr constant [134 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/search.rs\00", align 1
@8 = private unnamed_addr constant [54 x i8] c"range start and end are equal and excluded in BTreeSet", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\85\00\00\00\00\00\00\00n\00\00\00\15\00\00\00" }>, align 8
@10 = private unnamed_addr constant [49 x i8] c"range start is greater than range end in BTreeSet", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\85\00\00\00\00\00\00\00w\00\00\00\15\00\00\00" }>, align 8
@12 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@13 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\83\00\00\00\00\00\00\00T\07\00\00\05\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref13clone_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtNtNtBa_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3q_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref12wake_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtNtNtBa_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3p_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref19wake_by_ref_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtNtNtBa_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3w_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine, ptr @_RINvNtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task9waker_ref12drop_arc_rawINtB4_4TaskINtNtB8_15futures_ordered12OrderWrapperINtNtNtNtBa_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3p_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@16 = private unnamed_addr constant [9 x i8] c"\01'\C0\03': \C0\00", align 1
@17 = private unnamed_addr constant [137 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\88\00\00\00\00\00\00\00\8F\01\00\00.\00\00\00" }>, align 8
@19 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/futures-util-0.3.32/src/future/try_join_all.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"s\00\00\00\00\00\00\00\B2\00\00\006\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\83\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@23 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/futures-util-0.3.32/src/future/try_maybe_done.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"u\00\00\00\00\00\00\00:\00\00\00\16\00\00\00" }>, align 8
@25 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\83\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@27 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\83\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\83\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common5spans4SpanENtB6_5Debug3fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@32 = private unnamed_addr constant [14 x i8] c"DiagnosticNote", align 1
@33 = private unnamed_addr constant [7 x i8] c"message", align 1
@34 = private unnamed_addr constant [4 x i8] c"span", align 1
@35 = private unnamed_addr constant [31 x i8] c"future still here when dropping", align 1
@36 = private unnamed_addr constant [14 x i8] c"DiagnosticHelp", align 1
@37 = private unnamed_addr constant [22 x i8] c"assertion failed: prev", align 1
@38 = private unnamed_addr constant [125 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/futures-util-0.3.32/src/stream/futures_unordered/mod.rs\00", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"|\00\00\00\00\00\00\00\DA\01\00\00\0D\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"|\00\00\00\00\00\00\00\16\02\00\001\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsh4GC5dvIChH_27influxdb3_processing_engine }>, align 8
@42 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@43 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"s\00\00\00\00\00\00\00q\0B\00\00\0E\00\00\00" }>, align 8
@45 = private unnamed_addr constant [5 x i8] c"Error", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs1hWu9vWSLgD_16iox_query_params6paramsNtB3_15StatementParams6insertRNtNtCscdodAO9FK5_5alloc6string6StringReECsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsC_NtCs1hWu9vWSLgD_16iox_query_params6paramsNtB5_14StatementParamINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamE4intoCsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.b

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertReINtB5_4IntoNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamE4intoCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.a
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE6insertCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #22
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs844E4pPEVZX_17influxdb3_catalog6format6readerNtB3_11CatalogFile9read_fromRShECsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [80 x i8], align 16               ; 16 uses
  %.sroa.755.sroa.3.i = alloca [16 x i8], align 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.755.sroa.3.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11
  call void @_RINvMNtNtCs844E4pPEVZX_17influxdb3_catalog6format6headerNtB3_6Header9read_fromRShECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !12
  %i.e = load i64, ptr %i.d, align 16, !range !14, !noalias !15, !noundef !16
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.8.copyload21.i = load i64, ptr %i.g, align 8, !noalias !17
  %.sroa.12.8..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.12.8.copyload23.i = load i64, ptr %.sroa.12.8..sroa_idx22.i, align 16, !noalias !17 ; 2 uses
  %.sroa.12.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.12.8.copyload23.i to i32
  %.sroa.12.sroa.9.0.extract.shift.i = lshr i64 %.sroa.12.8.copyload23.i, 32
  %.sroa.12.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.12.sroa.9.0.extract.shift.i to i32
  %.sroa.17.8..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load <2 x i64>, ptr %.sroa.17.8..sroa_idx25.i, align 8, !noalias !17
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.414.0.copyload.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !15 ; 4 uses
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %.sroa.616.0.copyload.i.i = load i32, ptr %.sroa.616.0..sroa_idx.i.i, align 4, !noalias !15 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !18, !noalias !12, !noundef !16 ; 4 uses
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !18, !noalias !12, !nonnull !16, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22.i.i = load i64, ptr %i.l, align 8, !alias.scope !18, !noalias !12, !noundef !16 ; 3 uses
  %i.m = add i64 %i.k, %.sroa.414.0.copyload.i.i  ; 5 uses
  %i.n = icmp ugt i64 %i.m, %.val22.i.i
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.12.sroa.0.0.extract.trunc34.i = trunc i64 %i.m to i32
  %.sroa.12.sroa.9.0.extract.shift39.i = lshr i64 %i.m, 32
  %.sroa.12.sroa.9.0.extract.trunc40.i = trunc nuw i64 %.sroa.12.sroa.9.0.extract.shift39.i to i32
  %i.o = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.val22.i.i, i64 0
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.m, %i.k
  br i1 %i.p, label %bb.f, label %bb.g, !prof !19

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %i.m, i64 noundef %.val22.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.k
  %i.r = call noundef i32 @_RNvCs8aRvbY5KviY_9crc32fast4hash(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %.sroa.414.0.copyload.i.i), !noalias !12 ; 2 uses
  %.not21.i.i = icmp eq i32 %i.r, %.sroa.616.0.copyload.i.i
  br i1 %.not21.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  %.sroa.12.sroa.9.0.ph.i = phi i32 [ %.sroa.12.sroa.9.0.extract.trunc.i, %bb.b ], [ %.sroa.12.sroa.9.0.extract.trunc40.i, %bb.d ], [ %i.r, %bb.g ]
  %.sroa.12.sroa.0.0.ph.i = phi i32 [ %.sroa.12.sroa.0.0.extract.trunc.i, %bb.b ], [ %.sroa.12.sroa.0.0.extract.trunc34.i, %bb.d ], [ %.sroa.616.0.copyload.i.i, %bb.g ]
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.8.8.copyload21.i, %bb.b ], [ -9223372036854775805, %bb.d ], [ -9223372036854775803, %bb.g ]
  %i.s = phi <2 x i64> [ %i.h, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11
  %.sroa.12.sroa.9.0.insert.ext.i = zext i32 %.sroa.12.sroa.9.0.ph.i to i64
  %.sroa.12.sroa.9.0.insert.shift.i = shl nuw i64 %.sroa.12.sroa.9.0.insert.ext.i, 32
  %.sroa.12.sroa.0.0.insert.ext.i = zext i32 %.sroa.12.sroa.0.0.ph.i to i64
  %.sroa.12.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.12.sroa.9.0.insert.shift.i, %.sroa.12.sroa.0.0.insert.ext.i
  store i64 %.sroa.8.0.ph.i, ptr %0, align 16, !alias.scope !3, !noalias !6
  %.sroa.4105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.sroa.0.0.insert.insert.i, ptr %.sroa.4105.0..sroa_idx.i, align 8, !alias.scope !3, !noalias !6
  %.sroa.5106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.s, ptr %.sroa.5106.0..sroa_idx.i, align 16, !alias.scope !3, !noalias !6
  br label %_RINvMNtNtCs844E4pPEVZX_17influxdb3_catalog6format6readerNtB3_11CatalogFile10read_innerRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.i:                                             ; preds = %bb.g
  %i.t = load <2 x i64>, ptr %i.i, align 16, !noalias !17
  %.sroa.18.16..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.18.16.copyload32.i = load i64, ptr %.sroa.18.16..sroa_idx31.i, align 16, !noalias !17
  %.sroa.19.sroa.5.0..sroa.515.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %.sroa.19.sroa.5.0.copyload.i = load i32, ptr %.sroa.19.sroa.5.0..sroa.515.0..sroa_idx.i.sroa_idx.i, align 4, !noalias !17 ; 3 uses
  %i.u = load <2 x i32>, ptr %.sroa.515.0..sroa_idx.i.i, align 16, !noalias !17
  %.sroa.19.sroa.6.0..sroa.515.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.19.sroa.6.0.copyload.i = load i32, ptr %.sroa.19.sroa.6.0..sroa.515.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !17 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.755.sroa.3.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.v = zext i32 %.sroa.19.sroa.6.0.copyload.i to i64
  %i.w = mul nuw nsw i64 %i.v, 24                 ; 2 uses
  %.not.i.i = icmp eq i32 %.sroa.19.sroa.6.0.copyload.i, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.x = call i64 @llvm.usub.sat.i64(i64 %.sroa.414.0.copyload.i.i, i64 %i.w)
  %i.y = lshr i64 %i.x, 4
  %i.z = zext i32 %.sroa.19.sroa.5.0.copyload.i to i64
  %.sroa.0.0.i.i.i = call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.y, i64 range(i64 0, 4294967296) %i.z) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !26
  %i.aa = load i64, ptr %i.a, align 8, !range !14, !noalias !23, !noundef !16
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !27, !noalias !23, !noundef !16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !28

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.j, align 8, !alias.scope !29, !noalias !30, !noundef !16
  %i.ag = add i64 %i.af, %i.w
  store i64 %i.ag, ptr %i.j, align 8, !alias.scope !29, !noalias !30
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !23
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.ah) #24, !noalias !26
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ae, align 8, !noalias !23, !nonnull !16, !noundef !16 ; 2 uses
  %i.aj = icmp samesign ule i64 %.sroa.0.0.i.i.i, %i.ad
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23
  store i64 %i.ad, ptr %i.c, align 8, !noalias !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.ai, ptr %i.ak, align 8, !noalias !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8, !noalias !23
  %.not44.i.i = icmp eq i32 %.sroa.19.sroa.5.0.copyload.i, 0
  br i1 %.not44.i.i, label %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.n

_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.loopexit.i: ; preds = %bb.x
  %.sroa.759.8.copyload61.pre.i = load i64, ptr %i.c, align 8, !noalias !31
  %.sroa.11.8.copyload64.pre.i = load ptr, ptr %i.ak, align 8, !noalias !31
  br label %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i

_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i: ; preds = %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.loopexit.i, %bb.m
  %.sroa.12.8.copyload68.i = phi i64 [ %i.bc, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.loopexit.i ], [ 0, %bb.m ]
  %.sroa.11.8.copyload64.i = phi ptr [ %.sroa.11.8.copyload64.pre.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.loopexit.i ], [ %i.ai, %bb.m ]
  %.sroa.759.8.copyload61.i = phi i64 [ %.sroa.759.8.copyload61.pre.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.loopexit.i ], [ %i.ad, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23
  br label %bb.aa

bb.n:                                             ; preds = %bb.x, %.lr.ph.i.i
  %.sroa.06.043.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.am, %bb.x ]
  %i.am = add nuw i32 %.sroa.06.043.i.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23
  invoke void @_RINvMs_NtNtCs844E4pPEVZX_17influxdb3_catalog6format6recordNtB5_6Record9read_fromRShECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.p unwind label %bb.o, !noalias !30

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.v, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.aw, %bb.v ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.c) #22
          to label %common.resume.i.i unwind label %bb.y, !noalias !30

bb.p:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.b, align 8, !noalias !23, !noundef !16 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  %.sroa.034.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !noalias !23 ; 4 uses
  %.sroa.435.0.copyload.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !23 ; 4 uses
  %.sroa.536.0.copyload.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !23 ; 4 uses
  %.sroa.637.0.copyload.i.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !23 ; 3 uses
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23
  %i.aq = ptrtoint ptr %.sroa.034.0.copyload.i.i to i64
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.r, !noalias !30

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i unwind label %bb.s, !noalias !30

bb.s:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !30
  unreachable

common.resume.i.i:                                ; preds = %bb.r, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.t:                                             ; preds = %bb.p
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23
  %i.at = load i64, ptr %i.al, align 8, !alias.scope !32, !noalias !35, !noundef !16 ; 3 uses
  %i.au = load i64, ptr %i.c, align 8, !range !37, !alias.scope !32, !noalias !35, !noundef !16
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.x unwind label %bb.v, !noalias !38

bb.v:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !39, !nonnull !16, !noundef !16
  invoke void %i.ay(ptr noundef %.sroa.536.0.copyload.i.i, ptr noundef %.sroa.034.0.copyload.i.i, i64 noundef %.sroa.435.0.copyload.i.i)
          to label %.body.i.i unwind label %bb.w, !noalias !38, !inline_history !46

bb.w:                                             ; preds = %bb.v
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !38
  unreachable

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.ba = load ptr, ptr %i.ak, align 8, !alias.scope !32, !noalias !35, !nonnull !16, !noundef !16
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.ba, i64 %i.at ; 6 uses
  store ptr %i.ao, ptr %i.bb, align 8, !noalias !30
  %.sroa.3.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.sroa.034.0.copyload.i.i, ptr %.sroa.3.0..sroa_idx.i14.i, align 8, !noalias !30
  %.sroa.5.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.435.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx12.i.i, align 8, !noalias !30
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %.sroa.536.0.copyload.i.i, ptr %.sroa.614.0..sroa_idx.i.i, align 8, !noalias !30
  %.sroa.7.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %.sroa.637.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i15.i, align 8, !noalias !30
  %.sroa.715.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.715.0..sroa_idx.i.i, align 8, !noalias !30
  %i.bc = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.bc, ptr %i.al, align 8, !alias.scope !32, !noalias !35
  %exitcond.not.i.i = icmp eq i32 %i.am, %.sroa.19.sroa.5.0.copyload.i
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.loopexit.i, label %bb.n

bb.y:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !30
  unreachable

_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %bb.q
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23
  %.not.i = icmp eq ptr %.sroa.034.0.copyload.i.i, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  store i64 %i.aq, ptr %0, align 16, !alias.scope !3, !noalias !6
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.435.0.copyload.i.i, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !3, !noalias !6
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.536.0.copyload.i.i, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !3, !noalias !6
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.637.0.copyload.i.i, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3, !noalias !6
  br label %_RINvMNtNtCs844E4pPEVZX_17influxdb3_catalog6format6readerNtB3_11CatalogFile10read_innerRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.aa:                                            ; preds = %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i
  %.sroa.759.0142.i = phi i64 [ %.sroa.759.8.copyload61.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i ], [ %.sroa.435.0.copyload.i.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ]
  %.sroa.11.0141.i = phi ptr [ %.sroa.11.8.copyload64.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i ], [ %.sroa.536.0.copyload.i.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ]
  %.sroa.12.0140.i = phi i64 [ %.sroa.12.8.copyload68.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i ], [ %.sroa.637.0.copyload.i.i, %_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format6reader12read_recordsRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ]
  %.sroa.873.sroa.4.0..sroa.873.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.873.sroa.4.0..sroa.873.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.755.sroa.3.i, i64 16, i1 false), !noalias !6
  store <2 x i64> %i.t, ptr %0, align 16, !alias.scope !3, !noalias !6
  %.sroa.069.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18.16.copyload32.i, ptr %.sroa.069.sroa.5.0..sroa_idx.i, align 16, !alias.scope !3, !noalias !6
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.414.0.copyload.i.i, ptr %.sroa.470.0..sroa_idx.i, align 8, !alias.scope !3, !noalias !6
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i32> %i.u, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !3, !noalias !6
  %.sroa.772.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.19.sroa.6.0.copyload.i, ptr %.sroa.772.0..sroa_idx.i, align 8, !alias.scope !3, !noalias !6
  %.sroa.873.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.616.0.copyload.i.i, ptr %.sroa.873.0..sroa_idx.i, align 4, !alias.scope !3, !noalias !6
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.759.0142.i, ptr %.sroa.9.0..sroa_idx.i, align 16, !alias.scope !3, !noalias !6
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.11.0141.i, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3, !noalias !6
  br label %_RINvMNtNtCs844E4pPEVZX_17influxdb3_catalog6format6readerNtB3_11CatalogFile10read_innerRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RINvMNtNtCs844E4pPEVZX_17influxdb3_catalog6format6readerNtB3_11CatalogFile10read_innerRShECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.h, %bb.z, %bb.aa
  %.sink40 = phi i64 [ 64, %bb.h ], [ 64, %bb.z ], [ 80, %bb.aa ]
  %.sink = phi i64 [ -1, %bb.h ], [ -1, %bb.z ], [ %.sroa.12.0140.i, %bb.aa ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.sink40
  store i64 %.sink, ptr %i.be, align 16, !alias.scope !3, !noalias !6
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.755.sroa.3.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueEE13new_uninit_inCsh4GC5dvIChH_27influxdb3_processing_engine() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtB8_7set_val9SetValZSTNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodemNtNtBK_7set_val9SetValZSTEE13new_uninit_inCsh4GC5dvIChH_27influxdb3_processing_engine() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs9_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedmNtNtB8_7set_val9SetValZSTNtB19_8InternalE12new_internalNtNtBc_5alloc6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodemNtNtBK_7set_val9SetValZSTEE13new_uninit_inCsh4GC5dvIChH_27influxdb3_processing_engine() ; 6 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  %i.d = add i64 %1, 1                            ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !noalias !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 0, ptr %i.e, align 4, !noalias !52
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.d, 1
  ret { ptr, i64 } %i.g

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 152, i64 noundef 8) #25
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3L_11VacantEntryB1C_B1X_E12insert_entry0ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [48 x i8], align 8   ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [48 x i8], align 8          ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [48 x i8], align 8          ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [48 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !53, !noalias !56, !nonnull !16, !noundef !16 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !60, !noundef !16 ; 3 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !53, !noalias !56, !noundef !16 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !64, !noalias !65, !noundef !16 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.z, %i.v
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !72, !noalias !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !77, !noalias !79
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging7LogLineENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins22run_dry_run_wal_plugins0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB4J_3vecINtB5p_3VecB4F_E14extend_trustedBN_E0E0EB2k_:bb.a
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1026
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1014
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1028
  %i.p = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging7LogLineENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins22run_dry_run_wal_plugins0_0NCINvNvB1H_8for_each4callB35_NCINvMsj_NtB39_3vecINtB5G_3VecB35_E14extend_trustedINtB2x_3MapBF_B3H_EE0E0E0EB3N_.exit, label %bb.c

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1033
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging7LogLineENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins22run_dry_run_wal_plugins0_0NCINvNvB1H_8for_each4callB35_NCINvMsj_NtB39_3vecINtB5G_3VecB35_E14extend_trustedINtB2x_3MapBF_B3H_EE0E0E0EB3N_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1033
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging7LogLineENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins27run_dry_run_schedule_plugins_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB4N_3vecINtB5t_3VecB4J_E14extend_trustedBN_E0E0EB2k_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging7LogLineENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins27run_dry_run_schedule_plugins_0NCINvNvB1H_8for_each4callB35_NCINvMsj_NtB39_3vecINtB5K_3VecB35_E14extend_trustedINtB2x_3MapBF_B3H_EE0E0E0EB3N_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.h ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1034
  store i64 0, ptr %i.c, align 8, !noalias !1034
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1034
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !1034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1034
  store i32 1610612768, ptr %i.j, align 8, !noalias !1034
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !1034
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !1034
  store ptr %i.c, ptr %i.b, align 8, !noalias !1034
  store ptr @41, ptr %i.k, align 8, !noalias !1034
  %i.m = invoke noundef zeroext i1 @_RNvXs2_NtCskkCPRT7oCWw_16influxdb3_py_api7loggingNtB5_7LogLineNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit.i, !noalias !1046

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.i unwind label %bb.g, !noalias !1046

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.f, label %bb.h, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #24
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !1046

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1046
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1034
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1048
  %i.p = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging7LogLineENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins27run_dry_run_schedule_plugins_0NCINvNvB1H_8for_each4callB35_NCINvMsj_NtB39_3vecINtB5K_3VecB35_E14extend_trustedINtB2x_3MapBF_B3H_EE0E0E0EB3N_.exit, label %bb.c

bb.i:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1053
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskkCPRT7oCWw_16influxdb3_py_api7logging7LogLineENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins27run_dry_run_schedule_plugins_0NCINvNvB1H_8for_each4callB35_NCINvMsj_NtB39_3vecINtB5K_3VecB35_E14extend_trustedINtB2x_3MapBF_B3H_EE0E0E0EB3N_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1053
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB1W_20CatalogSubscriptions11send_update0s_00ENvYB1K_NtNtNtCs5SRHcsv2kA9_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtB40_6stream15futures_ordered14FuturesOrderedINtNtB3W_11into_future10IntoFutureB1K_EENCINvXs8_B5T_B5Q_INtNtB5h_7collect12FromIteratorB6F_E9from_iterBN_E0ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [456 x i8], align 8               ; 12 uses
  %i.b = alloca [392 x i8], align 8               ; 6 uses
  %i.c = alloca [440 x i8], align 8               ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1057, !noalias !1061, !nonnull !16, !noundef !16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !1057, !noalias !1061, !nonnull !16, !noundef !16 ; 2 uses
  %.not.not10.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 449
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %.lr.ph.i
  %i.q = phi ptr [ %i.i, %.lr.ph.i ], [ %i.r, %bb.o ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 376 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !1067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.j, ptr noundef nonnull align 8 dereferenceable(376) %i.q, i64 376, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %i.s = load i64, ptr %i.k, align 8, !alias.scope !1068, !noalias !1071, !noundef !16 ; 2 uses
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !1068, !noalias !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1074
  store i64 1, ptr %i.b, align 8, !noalias !1074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.42.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(376) %i.q, i64 376, i1 false)
  store i64 %i.s, ptr %.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1077
  %i.u = load ptr, ptr %i.l, align 8, !alias.scope !1068, !noalias !1078, !nonnull !16, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1074, !nonnull !16, !noundef !16
  %i.x = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB40_20CatalogSubscriptions11send_update0s_00EEEE9downgradeCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %bb.d unwind label %bb.c, !noalias !1078

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !1057, !noalias !1061
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtBN_20CatalogSubscriptions11send_update0s_00ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull align 8 %.sroa.42.0..sroa_idx.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.l, !noalias !1078

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(392) %i.b, i64 392, i1 false), !noalias !1074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1074
  store i64 1, ptr %i.a, align 8, !noalias !1074
  store i64 1, ptr %i.m, align 8, !noalias !1074
  store ptr %i.x, ptr %i.n, align 8, !noalias !1074
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1074
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !noalias !1074
  store i8 1, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !1074
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !noalias !1074
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1079
  %i.aa = call noundef align 8 dereferenceable_or_null(456) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 456, i64 noundef 8) #25, !noalias !1079 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.e, label %bb.h, !prof !28

bb.e:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !1057, !noalias !1061
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 456) #24
          to label %.noexc14.i.i.i.i unwind label %bb.f, !noalias !1078

.noexc14.i.i.i.i:                                 ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperINtNtNtNtB1m_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB49_20CatalogSubscriptions11send_update0s_00EEEEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull align 8 dereferenceable(456) %i.a) #22
          to label %.body.i.i.i unwind label %bb.g, !noalias !1078

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1078
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.aa, ptr noundef nonnull align 8 dereferenceable(456) %i.a, i64 456, i1 false), !noalias !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1074
  store atomic i8 0, ptr %i.o monotonic, align 8, !alias.scope !1068, !noalias !1078
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.af = atomicrmw xchg ptr %i.p, ptr %i.ae acq_rel, align 8, !alias.scope !1068, !noalias !1078 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.critedge.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.l, align 8, !alias.scope !1068, !noalias !1078, !nonnull !16, !noundef !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1078, !nonnull !16, !noundef !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 400
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.am = load atomic ptr, ptr %i.al acquire, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 416
  %i.ao = load i64, ptr %i.an, align 8, !noundef !16
  %i.ap = add i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 432
  store i64 %i.ap, ptr %i.aq, align 8, !noalias !1078
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 416
  store atomic ptr %i.af, ptr %i.ar release, align 8, !noalias !1078
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 408
  store ptr %i.ae, ptr %i.as, align 8
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE4linkCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 432
  store i64 1, ptr %i.at, align 8, !noalias !1078
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 416
  store atomic ptr null, ptr %i.au release, align 8, !noalias !1078
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE4linkCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE4linkCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i.i, %bb.k
  %i.av = load ptr, ptr %i.l, align 8, !alias.scope !1068, !noalias !1078, !nonnull !16, !noundef !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  invoke void @_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperINtNtNtNtB8_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3q_20CatalogSubscriptions11send_update0s_00EEE7enqueueCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull align 8 %i.aw, ptr noundef nonnull %i.ae)
          to label %bb.o unwind label %bb.m, !noalias !1071

bb.l:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1078
  unreachable

bb.m:                                             ; preds = %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE4linkCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !1057, !noalias !1061
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.f, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.ac, %bb.f ], [ %i.y, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB2U_20CatalogSubscriptions11send_update0s_00EEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c) #22
          to label %.critedge.i unwind label %bb.n, !noalias !1071

bb.n:                                             ; preds = %.body.i.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1071
  unreachable

._crit_edge.i:                                    ; preds = %bb.o, %bb.a
  %i.ba = load ptr, ptr %i.e, align 8, !alias.scope !1057, !noalias !1061, !nonnull !16, !noundef !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !1057, !noalias !1061, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1082
  store i64 %i.bc, ptr %i.d, align 8, !noalias !1082
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ba, ptr %i.bd, align 8, !noalias !1082
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtBX_20CatalogSubscriptions11send_update0s_00ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull align 8 %i.d)
          to label %_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB18_20CatalogSubscriptions11send_update0s_00ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB46_6future10try_future11into_future10IntoFutureBW_EENCINvNtNtB35_8adapters3map8map_foldBW_B5c_B3Z_NvYBW_NtB5h_12TryFutureExt11into_futureNCINvXs8_B42_B3Z_INtNtB33_7collect12FromIteratorB5c_E9from_iterINtB6h_3MapBH_B6W_EE0E0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.p, !noalias !1082

bb.o:                                             ; preds = %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE4linkCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !1067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1062
  %i.be = load ptr, ptr %i.f, align 8, !alias.scope !1057, !noalias !1061, !nonnull !16, !noundef !16
  %.not.not.i = icmp eq ptr %i.r, %i.be
  br i1 %.not.not.i, label %._crit_edge.i, label %bb.b

bb.p:                                             ; preds = %._crit_edge.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB2U_20CatalogSubscriptions11send_update0s_00EEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(64) %2) #22
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB1A_20CatalogSubscriptions11send_update0s_00EECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.q, !noalias !1067

bb.q:                                             ; preds = %.critedge.i, %bb.p
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1067
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB1A_20CatalogSubscriptions11send_update0s_00EECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %.critedge.i, %bb.p
  %eh.lpad-body6.i = phi { ptr, i32 } [ %i.bf, %bb.p ], [ %eh.lpad-body.i.i.i, %.critedge.i ]
  resume { ptr, i32 } %eh.lpad-body6.i

.critedge.i:                                      ; preds = %.body.i.i.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB17_20CatalogSubscriptions11send_update0s_00ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB1A_20CatalogSubscriptions11send_update0s_00EECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.q, !noalias !1061

_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB18_20CatalogSubscriptions11send_update0s_00ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB46_6future10try_future11into_future10IntoFutureBW_EENCINvNtNtB35_8adapters3map8map_foldBW_B5c_B3Z_NvYBW_NtB5h_12TryFutureExt11into_futureNCINvXs8_B42_B3Z_INtNtB33_7collect12FromIteratorB5c_E9from_iterINtB6h_3MapBH_B6W_EE0E0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !alias.scope !1061, !noalias !1057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENCINvNtB12_16in_place_collect24write_in_place_with_dropB5G_E0INtNtBc_6result6ResultB55_zEEB39_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1083, !nonnull !16, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !alias.scope !1083 ; 2 uses
  %.not12.i = icmp eq ptr %.promoted.i, %i.e
  br i1 %.not12.i, label %_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENCINvNtNtB2l_8adapters3map12map_try_foldBW_B3T_B3j_INtNtB2n_6result6ResultB3j_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3T_E0E0B5F_EB6e_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB2h_EINtNtBa_6result6ResultB3d_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB3i_16in_place_collect24write_in_place_with_dropB2h_E0E0B4M_.exit.i, %.lr.ph.i
  %.sroa.4.013.i = phi ptr [ %2, %.lr.ph.i ], [ %i.l, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB2h_EINtNtBa_6result6ResultB3d_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB3i_16in_place_collect24write_in_place_with_dropB2h_E0E0B4M_.exit.i ] ; 3 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB2h_EINtNtBa_6result6ResultB3d_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB3i_16in_place_collect24write_in_place_with_dropB2h_E0E0B4M_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !1083
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1086
  store ptr %1, ptr %i.c, align 8, !noalias !1086
  store ptr %.sroa.4.013.i, ptr %i.g, align 8, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1086
  invoke void @_RNvMs_NtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4_13SnapshotChunk10into_batch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB2h_EINtNtBa_6result6ResultB3d_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB3i_16in_place_collect24write_in_place_with_dropB2h_E0E0B4M_.exit.i unwind label %bb.d, !noalias !1086

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(16) %i.c) #22
          to label %bb.c unwind label %bb.e, !noalias !1086

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1086
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB2h_EINtNtBa_6result6ResultB3d_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB3i_16in_place_collect24write_in_place_with_dropB2h_E0E0B4M_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.013.i, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !1086
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1086
  %.not.i = icmp eq ptr %i.i, %i.e
  br i1 %.not.i, label %_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENCINvNtNtB2l_8adapters3map12map_try_foldBW_B3T_B3j_INtNtB2n_6result6ResultB3j_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3T_E0E0B5F_EB6e_.exit, label %bb.b

_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENCINvNtNtB2l_8adapters3map12map_try_foldBW_B3T_B3j_INtNtB2n_6result6ResultB3j_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3T_E0E0B5F_EB6e_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB2h_EINtNtBa_6result6ResultB3d_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB3i_16in_place_collect24write_in_place_with_dropB2h_E0E0B4M_.exit.i, %bb.a
  %.sroa.4.0.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.l, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB2h_EINtNtBa_6result6ResultB3d_zENCNvNtCsh4GC5dvIChH_27influxdb3_processing_engine3wal26write_batch_to_wal_content0NCINvNtB3i_16in_place_collect24write_in_place_with_dropB2h_E0E0B4M_.exit.i ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.4.0.lcssa.i, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE8as_sliceCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkE32forget_allocation_drop_remainingCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer13SnapshotChunkECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 %.val, i64 noundef %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE3newCsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [456 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 449
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1089
  %i.e = tail call noundef align 8 dereferenceable_or_null(456) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 456, i64 noundef 8) #25, !noalias !1089 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperINtNtNtNtB18_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3V_20CatalogSubscriptions11send_update0s_00EEEEE3newCsh4GC5dvIChH_27influxdb3_processing_engine.exit, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 456) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB1k_15futures_ordered12OrderWrapperINtNtNtNtB1m_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB49_20CatalogSubscriptions11send_update0s_00EEEEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull align 8 dereferenceable(456) %i.b) #22
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperINtNtNtNtB18_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3V_20CatalogSubscriptions11send_update0s_00EEEEE3newCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.e, ptr noundef nonnull align 8 dereferenceable(456) %i.b, i64 456, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx10, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.612.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1092
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 64, i64 noundef 8) #25, !noalias !1092 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperINtNtNtNtB18_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4m_20CatalogSubscriptions11send_update0s_00EEEEE3newCsh4GC5dvIChH_27influxdb3_processing_engine.exit, !prof !28

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperINtNtNtNtB18_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3V_20CatalogSubscriptions11send_update0s_00EEEEE3newCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #24
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1k_15futures_ordered12OrderWrapperINtNtNtNtB1m_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4A_20CatalogSubscriptions11send_update0s_00EEEEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #22
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB16_15futures_ordered12OrderWrapperINtNtNtNtB18_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4m_20CatalogSubscriptions11send_update0s_00EEEEE3newCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB16_15futures_ordered12OrderWrapperINtNtNtNtB18_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3V_20CatalogSubscriptions11send_update0s_00EEEEE3newCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE3newB3b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1095
  %i.e = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 80, i64 noundef 8) #25, !noalias !1095 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2f_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB2f_6marker4SendEL_EEEEE3newB3s_.exit, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEEB3D_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #22
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2f_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB2f_6marker4SendEL_EEEEE3newB3s_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.68.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1098
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 64, i64 noundef 8) #25, !noalias !1098 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2G_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB2G_6marker4SendEL_EEEEE3newB3T_.exit, !prof !28

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2f_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB2f_6marker4SendEL_EEEEE3newB3s_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #24
          to label %.noexc18 unwind label %bb.f

.noexc18:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEEB44_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #22
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2G_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB2G_6marker4SendEL_EEEEE3newB3T_.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2f_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB2f_6marker4SendEL_EEEEE3newB3s_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE4pushB3b_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16
  %i.e = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2m_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB2m_6marker4SendEL_EEEE9downgradeB3N_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEEB2R_(ptr nonnull %1, ptr nonnull %2) #22
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1101
  %i.j = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 80, i64 noundef 8) #25, !noalias !1101 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.g, !prof !28

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEEB3D_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #22
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = atomicrmw xchg ptr %i.p, ptr %i.o acq_rel, align 8 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !16, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.x = load atomic ptr, ptr %i.w acquire, align 8
  %.not.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !16
  %i.aa = add i64 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store atomic ptr %i.q, ptr %i.ac release, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.ad, align 8
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE4linkB3b_.exit

.critedge.i:                                      ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store atomic ptr null, ptr %i.af release, align 8
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE4linkB3b_.exit

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE4linkB3b_.exit: ; preds = %.critedge.i, %bb.j
  %i.ag = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  tail call void @_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1M_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1M_6marker4SendEL_EEE7enqueueB3t_(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull %i.o)
  ret void

bb.k:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1u_6marker4SendEL_EEE3newB3b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i8 0, i64 32, i1 false)
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1104
  %i.e = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 80, i64 noundef 8) #25, !noalias !1104 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2f_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB2f_6marker4SendEL_EEEEE3newB3s_.exit, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEEB3D_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b) #22
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2f_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB2f_6marker4SendEL_EEEEE3newB3s_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.i, ptr %.sroa.68.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1107
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 64, i64 noundef 8) #25, !noalias !1107 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2G_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB2G_6marker4SendEL_EEEEE3newB3T_.exit, !prof !28

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2f_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB2f_6marker4SendEL_EEEEE3newB3s_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #24
          to label %.noexc18 unwind label %bb.f

.noexc18:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEEB44_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #22
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2G_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB2G_6marker4SendEL_EEEEE3newB3T_.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinIBu_DNtNtNtB2f_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB2f_6marker4SendEL_EEEEE3newB3s_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1u_6marker4SendEL_EEE4pushB3b_(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16
  %i.e = invoke noundef nonnull ptr @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2m_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB2m_6marker4SendEL_EEEE9downgradeB3N_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEEB2R_(ptr nonnull %1, ptr nonnull %2) #22
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1110
  %i.j = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 64, 457) 80, i64 noundef 8) #25, !noalias !1110 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.g, !prof !28

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB4_6marker4SendEL_EEEEEB3D_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #22
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = atomicrmw xchg ptr %i.p, ptr %i.o acq_rel, align 8 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !16, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.x = load atomic ptr, ptr %i.w acquire, align 8
  %.not.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !16
  %i.aa = add i64 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store atomic ptr %i.q, ptr %i.ac release, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.ad, align 8
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1u_6marker4SendEL_EEE4linkB3b_.exit

.critedge.i:                                      ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store atomic ptr null, ptr %i.af release, align 8
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1u_6marker4SendEL_EEE4linkB3b_.exit

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1u_6marker4SendEL_EEE4linkB3b_.exit: ; preds = %.critedge.i, %bb.j
  %i.ag = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  tail call void @_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1M_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler17AutoDisableResultNtNtB1M_6marker4SendEL_EEE7enqueueB3t_(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull %i.o)
  ret void

bb.k:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1l_14LeafOrInternalENtB1l_2KVE7into_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1l_4LeafENtB1l_2KVE7into_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1l_8InternalENtB1l_2KVE7into_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12into_val_mutCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !16
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutmNtNtB7_7set_val9SetValZSTNtB1l_4LeafENtB1l_2KVE12into_val_mutCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvMsS_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsdLkRf3gRIi6_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE6kv_mutCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.d
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutmNtNtB7_7set_val9SetValZSTNtB1w_4LeafENtB1w_4EdgeE7next_kvCsh4GC5dvIChH_27influxdb3_processing_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  %i.g = load i16, ptr %i.f, align 2, !noundef !16
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.022 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.021 = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.022, align 8, !noalias !1113, !noundef !16 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.k = zext i16 %i.p to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8
end_hunk_1
begin_hunk_2_@_RNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsh4GC5dvIChH_27influxdb3_processing_engine:bb.a
.thread3.i:                                       ; preds = %.noexc
  %i.v = icmp eq ptr %i.p, null
  br i1 %i.v, label %.thread4.i, label %.thread.i

.thread4.i:                                       ; preds = %.thread3.i
  store ptr null, ptr %i.b, align 8, !alias.scope !1205
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit

.thread.i:                                        ; preds = %.thread3.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 400
  store atomic ptr %i.n, ptr %i.w monotonic, align 8, !noalias !1205
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.b, align 8, !alias.scope !1205
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.x = phi ptr [ %i.f, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  store i64 %i.i, ptr %i.y, align 8, !noalias !1205
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.f:                                             ; preds = %bb.k, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.l, %bb.m, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.al, %bb.m ], [ %i.al, %bb.l ], [ %i.al, %bb.i ]
  %i.aa = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtNtB4_3ops4drop4Drop4drop15LeakQueueOnDropINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4y_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.g:                                             ; preds = %.body
  call void @llvm.trap()
  unreachable

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.e, %.thread4.i
  %i.ad = phi ptr [ %i.x, %bb.e ], [ null, %.thread4.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  %i.af = atomicrmw xchg ptr %i.ae, i8 1 seq_cst, align 1
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %.sroa.0.0.sroa.speculate.load.1.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculate.load.1.i, i64 24 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !14, !noundef !16
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculate.load.1.i, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtBN_20CatalogSubscriptions11send_update0s_00ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull align 8 %i.ak)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.ah, align 8
  br i1 %i.ag, label %bb.l, label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %bb.h, %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE6unlinkCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  store i64 0, ptr %i.ah, align 8
  br i1 %i.ag, label %bb.j, label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE12release_taskCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.am = load ptr, ptr %i.a, align 8, !alias.scope !1214, !nonnull !16, !noundef !16
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1214
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.k, label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE12release_taskCsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3z_20CatalogSubscriptions11send_update0s_00EEEE9drop_slowCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE12release_taskCsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.f

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.ap = load ptr, ptr %i.a, align 8, !alias.scope !1221, !nonnull !16, !noundef !16
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !1221
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.m, label %.body

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3z_20CatalogSubscriptions11send_update0s_00EEEE9drop_slowCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB38_20CatalogSubscriptions11send_update0s_00EEE12release_taskCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs5SRHcsv2kA9_12futures_util6stream15futures_ordered12OrderWrapperINtNtNtNtB14_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB3f_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = icmp eq ptr %i.ad, null
  br i1 %i.at, label %._crit_edge, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtNtB4_3ops4drop4Drop4drop15LeakQueueOnDropINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4y_20CatalogSubscriptions11send_update0s_00EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEENtNtNtB1u_3ops4drop4Drop4dropB3b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.b, align 8        ; 2 uses
  %i.c = icmp eq ptr %.promoted, null
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.ad, %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noalias !1222, !noundef !16
  %i.i = add i64 %i.h, -1
  %i.j = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1V_6marker4SendEL_EEEEB3m_(ptr noundef nonnull %i.f)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !1222 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1222, !noundef !16 ; 4 uses
  %i.q = load ptr, ptr %i.e, align 8, !noalias !1222, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store atomic ptr %i.r, ptr %i.m monotonic, align 8, !noalias !1222
  store ptr null, ptr %i.o, align 8, !noalias !1222
  %i.s = icmp eq ptr %i.n, null
  br i1 %i.s, label %.thread3.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.t, align 8, !noalias !1222
  %i.u = icmp eq ptr %i.p, null
  br i1 %i.u, label %bb.d, label %.thread.i

.thread3.i:                                       ; preds = %.noexc
  %i.v = icmp eq ptr %i.p, null
  br i1 %i.v, label %.thread4.i, label %.thread.i

.thread4.i:                                       ; preds = %.thread3.i
  store ptr null, ptr %i.b, align 8, !alias.scope !1222
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit

.thread.i:                                        ; preds = %.thread3.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store atomic ptr %i.n, ptr %i.w monotonic, align 8, !noalias !1222
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.b, align 8, !alias.scope !1222
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.x = phi ptr [ %i.f, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %i.i, ptr %i.y, align 8, !noalias !1222
  br label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit

bb.f:                                             ; preds = %bb.o, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p, %bb.q, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.aq, %bb.q ], [ %i.aq, %bb.p ], [ %i.aq, %.body.i ]
  %i.aa = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtNtB4_3ops4drop4Drop4drop15LeakQueueOnDropINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB4k_.exit

bb.g:                                             ; preds = %.body
  call void @llvm.trap()
  unreachable

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit: ; preds = %bb.e, %.thread4.i
  %i.ad = phi ptr [ %i.x, %bb.e ], [ null, %.thread4.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.af = atomicrmw xchg ptr %i.ae, i8 1 seq_cst, align 1
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %.sroa.0.0.sroa.speculated.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.sroa.speculated.i, i64 24 ; 3 uses
  %.val.i = load ptr, ptr %i.ah, align 8, !noundef !16 ; 4 uses
  %i.ai = getelementptr i8, ptr %.sroa.0.0.sroa.speculated.i, i64 32
  %.val6.i = load ptr, ptr %i.ai, align 8         ; 6 uses
  %i.aj = icmp eq ptr %.val.i, null
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i) ]
  %i.ak = load ptr, ptr %.val6.i, align 8, !invariant.load !16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.ak(ptr noundef nonnull %.val.i)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !37, !invariant.load !16 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !385, !invariant.load !16
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #25
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i

bb.l:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !37, !invariant.load !16 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !385, !invariant.load !16
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.ah, align 8
  br i1 %i.ag, label %bb.p, label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i: ; preds = %bb.k, %bb.j, %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE6unlinkB3b_.exit
  store ptr null, ptr %i.ah, align 8
  br i1 %i.ag, label %bb.n, label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.aw = load ptr, ptr %i.a, align 8, !alias.scope !1231, !nonnull !16, !noundef !16
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !1231
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.o, label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1V_6marker4SendEL_EEEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit unwind label %bb.f

bb.p:                                             ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.az = load ptr, ptr %i.a, align 8, !alias.scope !1238, !nonnull !16, !noundef !16
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !1238
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4task4TaskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1V_6marker4SendEL_EEEE9drop_slowB3m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNvMs4_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB1u_6marker4SendEL_EEE12release_taskB3b_.exit: ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB2s_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = icmp eq ptr %i.ad, null
  br i1 %i.bd, label %._crit_edge, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs8_NtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtNtB4_3ops4drop4Drop4drop15LeakQueueOnDropINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16RetryDelayResultNtNtB4_6marker4SendEL_EEEEB4k_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1239, !noundef !16 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1239, !nonnull !16, !noundef !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1239, !nonnull !16, !noundef !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1239
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1242
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1245, !noalias !1242, !noundef !16 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1245, !noalias !1242, !nonnull !16, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1245, !noalias !1242
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
end_hunk_2
