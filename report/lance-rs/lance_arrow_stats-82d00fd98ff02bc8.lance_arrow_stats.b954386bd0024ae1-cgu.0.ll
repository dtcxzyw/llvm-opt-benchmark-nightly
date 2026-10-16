Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow_stats-82d00fd98ff02bc8.lance_arrow_stats.b954386bd0024ae1-cgu.0?download=true
inline.NumInlined: 392
inline.NumDeleted: 293
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [15 x i8] c"primitive array", align 1
@1 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/arrow-array-58.4.0/src/cast.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00Q\03\00\00!\00\00\00" }>, align 8
@3 = private unnamed_addr constant [10 x i8] c"list array", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\A1\03\00\00\1C\00\00\00" }>, align 8
@5 = private unnamed_addr constant [12 x i8] c"binary array", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00m\03\00\00\1D\00\00\00" }>, align 8
@7 = private unnamed_addr constant [12 x i8] c"string array", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00c\03\00\00\1D\00\00\00" }>, align 8
@9 = private unnamed_addr constant [35 x i8] c"\18Type mismatch: expected \C0\06, got \C0\00", align 1
@10 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/arrow-array-58.4.0/src/array/list_array.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"o\00\00\00\00\00\00\00`\01\00\00\13\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"o\00\00\00\00\00\00\00a\01\00\00\15\00\00\00" }>, align 8
@13 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/arrow-array-58.4.0/src/array/byte_array.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@15 = private unnamed_addr constant [6 x i8] c"Binary", align 1
@16 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @15, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@17 = private unnamed_addr constant [69 x i8] c"%Trying to access an element at index \C0\08 from a \C0\C0\10Array of length \C0\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"o\00\00\00\00\00\00\00W\01\00\00\09\00\00\00" }>, align 8
@19 = private unnamed_addr constant [5 x i8] c"Large", align 1
@20 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @19, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@21 = private unnamed_addr constant [6 x i8] c"String", align 1
@22 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @21, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@23 = private unnamed_addr constant [75 x i8] c"%Trying to access an element at index \C0! from a PrimitiveArray of length \C0\00", align 1
@24 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/arrow-array-58.4.0/src/array/primitive_array.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"t\00\00\00\00\00\00\00\05\03\00\00\09\00\00\00" }>, align 8
@26 = private unnamed_addr constant [4 x i8] c"Null", align 1
@27 = private unnamed_addr constant [7 x i8] c"Boolean", align 1
@28 = private unnamed_addr constant [4 x i8] c"Int8", align 1
@29 = private unnamed_addr constant [5 x i8] c"Int16", align 1
@30 = private unnamed_addr constant [5 x i8] c"Int32", align 1
@31 = private unnamed_addr constant [5 x i8] c"Int64", align 1
@32 = private unnamed_addr constant [5 x i8] c"UInt8", align 1
@33 = private unnamed_addr constant [6 x i8] c"UInt16", align 1
@34 = private unnamed_addr constant [6 x i8] c"UInt32", align 1
@35 = private unnamed_addr constant [6 x i8] c"UInt64", align 1
@36 = private unnamed_addr constant [7 x i8] c"Float16", align 1
@37 = private unnamed_addr constant [7 x i8] c"Float32", align 1
@38 = private unnamed_addr constant [7 x i8] c"Float64", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtB8_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEENtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@41 = private unnamed_addr constant [9 x i8] c"Timestamp", align 1
@42 = private unnamed_addr constant [6 x i8] c"Date32", align 1
@43 = private unnamed_addr constant [6 x i8] c"Date64", align 1
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8TimeUnitNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@45 = private unnamed_addr constant [6 x i8] c"Time32", align 1
@46 = private unnamed_addr constant [6 x i8] c"Time64", align 1
@47 = private unnamed_addr constant [8 x i8] c"Duration", align 1
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype12IntervalUnitNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@49 = private unnamed_addr constant [8 x i8] c"Interval", align 1
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRlNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@51 = private unnamed_addr constant [15 x i8] c"FixedSizeBinary", align 1
@52 = private unnamed_addr constant [11 x i8] c"LargeBinary", align 1
@53 = private unnamed_addr constant [10 x i8] c"BinaryView", align 1
@54 = private unnamed_addr constant [4 x i8] c"Utf8", align 1
@55 = private unnamed_addr constant [9 x i8] c"LargeUtf8", align 1
@56 = private unnamed_addr constant [8 x i8] c"Utf8View", align 1
@57 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@58 = private unnamed_addr constant [4 x i8] c"List", align 1
@59 = private unnamed_addr constant [8 x i8] c"ListView", align 1
@60 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsV_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@61 = private unnamed_addr constant [13 x i8] c"FixedSizeList", align 1
@62 = private unnamed_addr constant [9 x i8] c"LargeList", align 1
@63 = private unnamed_addr constant [13 x i8] c"LargeListView", align 1
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@65 = private unnamed_addr constant [6 x i8] c"Struct", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields11UnionFieldsECsfUv75jb5FCv_17lance_arrow_stats, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype9UnionModeNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@68 = private unnamed_addr constant [5 x i8] c"Union", align 1
@69 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@71 = private unnamed_addr constant [10 x i8] c"Dictionary", align 1
@72 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@73 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRaNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@74 = private unnamed_addr constant [9 x i8] c"Decimal32", align 1
@75 = private unnamed_addr constant [9 x i8] c"Decimal64", align 1
@76 = private unnamed_addr constant [10 x i8] c"Decimal128", align 1
@77 = private unnamed_addr constant [10 x i8] c"Decimal256", align 1
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRbNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@79 = private unnamed_addr constant [3 x i8] c"Map", align 1
@80 = private unnamed_addr constant [13 x i8] c"RunEndEncoded", align 1
@81 = private unnamed_addr constant [4 x i8] c"None", align 1
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc4sync3ArceENtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats }>, align 8
@83 = private unnamed_addr constant [4 x i8] c"Some", align 1
@84 = private unnamed_addr constant [6 x i8] c"Second", align 1
@85 = private unnamed_addr constant [11 x i8] c"Millisecond", align 1
@86 = private unnamed_addr constant [11 x i8] c"Microsecond", align 1
@87 = private unnamed_addr constant [10 x i8] c"Nanosecond", align 1
@88 = private unnamed_addr constant [9 x i8] c"YearMonth", align 1
@89 = private unnamed_addr constant [7 x i8] c"DayTime", align 1
@90 = private unnamed_addr constant [12 x i8] c"MonthDayNano", align 1
@91 = private unnamed_addr constant [6 x i8] c"Sparse", align 1
@92 = private unnamed_addr constant [5 x i8] c"Dense", align 1
@93 = private unnamed_addr constant [13 x i8] c"boolean array", align 1
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00I\03\00\00\1F\00\00\00" }>, align 8
@95 = private unnamed_addr constant [21 x i8] c"fixed size list array", align 1
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"c\00\00\00\00\00\00\00\BB\03\00\00\0E\00\00\00" }>, align 8
@97 = private unnamed_addr constant [36 x i8] c"assertion failed: idx < self.bit_len", align 1
@98 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/arrow-buffer-58.4.0/src/buffer/boolean.rs\00", align 1
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"n\00\00\00\00\00\00\00\EF\01\00\00\09\00\00\00" }>, align 8
@switch.table._RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator3new = private unnamed_addr constant [4 x i8] c"\01\00\01\01", align 8
@switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype12IntervalUnitNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats = private unnamed_addr constant [3 x i8] c"\09\07\0C", align 8
@switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype12IntervalUnitNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats.165 = private unnamed_addr constant [3 x ptr] [ptr @88, ptr @89, ptr @90], align 8
@switch.table._RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\06\0B\0B\0A", align 8
@switch.table._RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.167 = private unnamed_addr constant [4 x ptr] [ptr @84, ptr @85, ptr @86, ptr @87], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !35, !nonnull !6, !noundef !6
  %1 = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !35
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.g) #17
          to label %bb.h unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !37, !noundef !6 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !37, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #18, !noalias !36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !41, !nonnull !6, !noundef !6
  %2 = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !42
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !45, !nonnull !6, !noundef !6
  %1 = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !45
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfUv75jb5FCv_17lance_arrow_stats.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfUv75jb5FCv_17lance_arrow_stats.exit

_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #18
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #18
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !55, !nonnull !6, !noundef !6
  %1 = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !55
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row9RowConfigECsfUv75jb5FCv_17lance_arrow_stats.exit2

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row9RowConfigECsfUv75jb5FCv_17lance_arrow_stats.exit2

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row9RowConfigECsfUv75jb5FCv_17lance_arrow_stats.exit2: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !70, !nonnull !6, !noundef !6
  %1 = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !70
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.d) #17
          to label %bb.g unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !71, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %.val1.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !71, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #18, !noalias !71
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !75, !nonnull !6, !noundef !6
  %2 = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !75
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields11UnionFieldsECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !82, !nonnull !6, !noundef !6
  %1 = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !82
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTaIBC_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTaIBC_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEEECsfUv75jb5FCv_17lance_arrow_stats.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSTaIBC_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !7, !noundef !6
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 4, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 5, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 6, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 7, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 8, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 9, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 10, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 11, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 12, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 13, label %bb.d
    i8 14, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 15, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 16, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 17, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 18, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 19, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 20, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 21, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 22, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 23, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 24, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 25, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 26, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 27, label %bb.g
    i8 28, label %bb.i
    i8 29, label %bb.k
    i8 30, label %bb.m
    i8 31, label %bb.o
    i8 32, label %bb.q
    i8 33, label %bb.s
    i8 34, label %bb.u
    i8 35, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 36, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 37, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 38, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
    i8 39, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !143, !nonnull !6, !noundef !6
  %1 = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !143
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.aa

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats.exit, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats.exit10, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !144, !noundef !6 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %2 = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !145
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCs8SUNSmrkv52_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !148, !nonnull !6, !noundef !6
  %3 = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !148
  %i.k = icmp eq i64 %3, 1
  br i1 %i.k, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !151, !nonnull !6, !noundef !6
  %4 = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !151
  %i.n = icmp eq i64 %4, 1
  br i1 %i.n, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.k:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !154, !nonnull !6, !noundef !6
  %5 = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !154
  %i.q = icmp eq i64 %5, 1
  br i1 %i.q, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.m:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !157, !nonnull !6, !noundef !6
  %6 = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !157
  %i.t = icmp eq i64 %6, 1
  br i1 %i.t, label %bb.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.o:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !160, !nonnull !6, !noundef !6
  %7 = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !160
  %i.w = icmp eq i64 %7, 1
  br i1 %i.w, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.q:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !164, !nonnull !6, !noundef !6
  %8 = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !164
  %i.z = icmp eq i64 %8, 1
  br i1 %i.z, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.s:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !168, !nonnull !6, !noundef !6
  %9 = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !168
  %i.ac = icmp eq i64 %9, 1
  br i1 %i.ac, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.u:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !169, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(24) %i.ae)
          to label %bb.x unwind label %.body, !noalias !169, !inline_history !170

.body:                                            ; preds = %bb.u
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 24, i64 noundef 8) #18, !noalias !169, !inline_history !170
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #17
          to label %common.resume unwind label %bb.z

bb.v:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !173, !nonnull !6, !noundef !6
  %10 = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !173
  %i.aj = icmp eq i64 %10, 1
  br i1 %i.aj, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 24, i64 noundef 8) #18, !noalias !169, !inline_history !170
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !174, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats.exit10 unwind label %bb.y, !noalias !174, !inline_history !170

common.resume:                                    ; preds = %.body, %bb.ab, %bb.aa, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.y ], [ %i.af, %.body ], [ %i.ao, %bb.ab ], [ %i.ao, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 24, i64 noundef 8) #18, !noalias !174, !inline_history !170
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsfUv75jb5FCv_17lance_arrow_stats.exit10: ; preds = %bb.x
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 24, i64 noundef 8) #18, !noalias !174, !inline_history !170
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.z:                                             ; preds = %bb.ab, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.aa:                                            ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !177, !nonnull !6, !noundef !6
  %11 = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !177
  %i.ar = icmp eq i64 %11, 1
  br i1 %i.ar, label %bb.ab, label %common.resume

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %common.resume unwind label %bb.z

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.b, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !180, !nonnull !6, !noundef !6
  %12 = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !180
  %i.au = icmp eq i64 %12, 1
  br i1 %i.au, label %bb.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfUv75jb5FCv_17lance_arrow_stats.exit
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArceEEECsfUv75jb5FCv_17lance_arrow_stats.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types16Time32SecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !181 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !181
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, -167721410346568615793789983387322545841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types18DurationSecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !182 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !182
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 21325862818289535616668292364605710907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types19TimestampSecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !183 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !183
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 115754184826212673767787198192103481641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types20Time64NanosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !184 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !184
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, -166715981354507167029399911239356845453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types21Time32MillisecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !185 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !185
  %i.n = load i128, ptr %i.a, align 16, !noundef !6
  %i.o = icmp ne i128 %i.n, 106886705347596581231865711943615134348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types21Time64MicrosecondTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !6
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
end_hunk_0
begin_hunk_1_@_RNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_max:bb.a
bb.ik:                                            ; preds = %bb.ij
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !503
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %bb.ij
  %i.bep = load ptr, ptr %i.vs, align 8, !alias.scope !502, !noalias !380, !noundef !6
  %i.beq = load i64, ptr %i.vt, align 8, !alias.scope !502, !noalias !380, !noundef !6
  %i.ber = add i64 %i.beq, %.sroa.0397.0.i2351    ; 2 uses
  %i.bes = lshr i64 %i.ber, 3
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bep, i64 %i.bes
  %i.beu = load i8, ptr %i.bet, align 1, !noalias !503, !noundef !6
  %i.bev = trunc i64 %i.ber to i8
  %i.bew = and i8 %i.bev, 7
  %i.bex = xor i8 %i.beu, -1
  %i.bey = lshr i8 %i.bex, %i.bew
  %i.bez = trunc i8 %i.bey to i1
  br i1 %i.bez, label %bb.ih, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.i, %bb.ii
  %.val1018.i = load ptr, ptr %i.vu, align 8, !noalias !380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !382
  store i64 %.sroa.0397.0.i2351, ptr %i.c, align 8, !noalias !504
  %i.bfa = icmp samesign ult i64 %.sroa.0397.0.i2351, %i.vp
  br i1 %i.bfa, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i, label %bb.il, !prof !12

bb.il:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !504
  store i64 %i.vp, ptr %i.b, align 8, !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !504
  store ptr %i.c, ptr %i.a, align 8, !noalias !504
  %.sroa.42.0..sroa_idx.i1201.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i1201.i, align 8, !noalias !504
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bfb, align 8, !noalias !504
  %.sroa.46.0..sroa_idx.i1202.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i1202.i, align 8, !noalias !504
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20, !noalias !505
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types14Decimal256TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.i
  %i.bfc = getelementptr inbounds nuw [32 x i8], ptr %.val1018.i, i64 %.sroa.0397.0.i2351 ; 2 uses
  %i.bfd = load i128, ptr %i.bfc, align 16, !noalias !505, !noundef !6 ; 6 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfc, i64 16
  %i.bff = load i128, ptr %i.bfe, align 16, !noalias !505, !noundef !6 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !382
  br i1 %.not.i2364, label %.thread2544.i, label %bb.im

bb.im:                                            ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.bfg = icmp eq i128 %i.bff, %.sroa.8645.0.ph.i2360
  %i.bfh = icmp slt i128 %i.bff, %.sroa.8645.0.ph.i2360
  %i.bfi = icmp ult i128 %i.bfd, %.sroa.6644.0.ph.i2361
  %spec.select903.i = select i1 %i.bfg, i1 %i.bfi, i1 %i.bfh
  br i1 %spec.select903.i, label %bb.io, label %.thread2527.i

.thread2527.i:                                    ; preds = %bb.im
  br label %bb.io

bb.in:                                            ; preds = %bb.io
  br label %.thread2544.i

bb.io:                                            ; preds = %.thread2527.i, %bb.im
  %.sroa.0107.12543.i = phi i64 [ %.sroa.0107.0.ph.i2369, %.thread2527.i ], [ 1, %bb.im ] ; 2 uses
  %.sroa.3108.12540.i = phi i64 [ %.sroa.3108.0.ph.i2368, %.thread2527.i ], [ %.sroa.0397.0.i2351, %bb.im ] ; 2 uses
  %.sroa.6644.12537.i = phi i128 [ %.sroa.6644.0.ph.i2361, %.thread2527.i ], [ %i.bfd, %bb.im ] ; 2 uses
  %.sroa.8645.12534.i = phi i128 [ %.sroa.8645.0.ph.i2360, %.thread2527.i ], [ %i.bff, %bb.im ] ; 2 uses
  %i.bfj = icmp eq i128 %i.bff, %.sroa.8.0.ph.i2362
  %i.bfk = icmp sgt i128 %i.bff, %.sroa.8.0.ph.i2362
  %i.bfl = icmp ugt i128 %i.bfd, %.sroa.6641.0.ph.i2363
  %spec.select904.i = select i1 %i.bfj, i1 %i.bfl, i1 %i.bfk
  br i1 %spec.select904.i, label %bb.in, label %.thread2544.i

.thread2544.i:                                    ; preds = %bb.io, %bb.in, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %.sroa.0107.12541.i = phi i64 [ %.sroa.0107.12543.i, %bb.io ], [ %.sroa.0107.12543.i, %bb.in ], [ 1, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 2 uses
  %.sroa.3108.12538.i = phi i64 [ %.sroa.3108.12540.i, %bb.io ], [ %.sroa.3108.12540.i, %bb.in ], [ %.sroa.0397.0.i2351, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 2 uses
  %.sroa.6644.12535.i = phi i128 [ %.sroa.6644.12537.i, %bb.io ], [ %.sroa.6644.12537.i, %bb.in ], [ %i.bfd, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ]
  %.sroa.8645.12532.i = phi i128 [ %.sroa.8645.12534.i, %bb.io ], [ %.sroa.8645.12534.i, %bb.in ], [ %i.bff, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ]
  %.sroa.8.1.i = phi i128 [ %.sroa.8.0.ph.i2362, %bb.io ], [ %i.bff, %bb.in ], [ %i.bff, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ]
  %.sroa.6641.1.i = phi i128 [ %.sroa.6641.0.ph.i2363, %bb.io ], [ %i.bfd, %bb.in ], [ %i.bfd, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ]
  %.sroa.3114.1.i = phi i64 [ %.sroa.3114.0.ph.i2366, %bb.io ], [ %.sroa.0397.0.i2351, %bb.in ], [ %.sroa.0397.0.i2351, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 2 uses
  %.sroa.0113.1.i = phi i64 [ %.sroa.0113.0.ph.i2367, %bb.io ], [ 1, %bb.in ], [ 1, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types14Decimal256TypeE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit.i ] ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bem, i64 %i.vp)
  %exitcond.not.i2350.not = icmp ult i64 %i.bem, %i.vp
  br i1 %exitcond.not.i2350.not, label %.lr.ph, label %.loopexit.i

bb.ip:                                            ; preds = %.loopexit.i, %bb.af, %bb.ae, %bb.a
  %.sroa.11.0 = phi i64 [ undef, %bb.a ], [ %.sroa.33.0.i, %.loopexit.i ], [ undef, %bb.ae ], [ undef, %bb.af ]
  %.sink3043.i.sroa.phi = phi ptr [ %.sroa.5, %bb.a ], [ %.sroa.14, %.loopexit.i ], [ %.sroa.5, %bb.ae ], [ %.sroa.5, %bb.af ]
  %.sroa.65.0.sink.i = phi i64 [ 0, %bb.a ], [ %.sroa.65.0.i, %.loopexit.i ], [ 0, %bb.ae ], [ 0, %bb.af ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.14, %bb.a ], [ %.sroa.20, %.loopexit.i ], [ %.sroa.14, %bb.ae ], [ %.sroa.14, %bb.af ]
  %.sroa.97.0.sink.i = phi i64 [ 0, %bb.a ], [ %.sroa.97.0.i, %.loopexit.i ], [ 0, %bb.ae ], [ 0, %bb.af ]
  store i64 %.sroa.65.0.sink.i, ptr %.sink3043.i.sroa.phi, align 8, !alias.scope !380
  store i64 %.sroa.97.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !380
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8..sroa.064.0.copyload = load i64, ptr %.sroa.5, align 8
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.24..sroa.566.0.copyload = load i64, ptr %.sroa.14, align 8
  %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.32..sroa.667.0.copyload = load i64, ptr %.sroa.20, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.021)
  %i.bfm = trunc nuw i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8..sroa.064.0.copyload to i1
  br i1 %i.bfm, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  call void @_RNvMCskqViAy2tSOx_18lance_arrow_scalarNtB2_11ArrowScalar7try_new(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef %.sroa.11.0)
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %.sroa.631.0.copyload = load i8, ptr %.sroa.631.0..sroa_idx, align 8 ; 2 uses
  %i.bfn = icmp eq i8 %.sroa.631.0.copyload, 2
  br i1 %i.bfn, label %bb.is, label %bb.it

bb.ir:                                            ; preds = %bb.ip, %bb.it
  %i.bfo = phi i8 [ %.sroa.631.0.copyload, %bb.it ], [ 2, %bb.ip ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.021, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.021)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.017, i64 48, i1 false)
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store i8 %i.bfo, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.538.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.927, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.039)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.045)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.758)
  %i.bfp = trunc nuw i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.24..sroa.566.0.copyload to i1
  br i1 %i.bfp, label %bb.iu, label %bb.iv

bb.is:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.021)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 32, i1 false)
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -1, ptr %i.bfq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.it:                                            ; preds = %bb.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.021, ptr noundef nonnull align 8 dereferenceable(48) %i.dj, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.927, ptr noundef nonnull align 1 dereferenceable(7) %i.dk, i64 7, i1 false)
  br label %bb.ir

bb.iu:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  invoke void @_RNvMCskqViAy2tSOx_18lance_arrow_scalarNtB2_11ArrowScalar7try_new(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef %.sroa.20.0..sroa.20.0..sroa.20.0..sroa.20.32..sroa.667.0.copyload)
          to label %_RNCNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_maxs_0B3_.exit unwind label %bb.iw

bb.iv:                                            ; preds = %bb.ir, %bb.je
  %.sroa.846.0 = phi i8 [ %.sroa.655.0.copyload, %bb.je ], [ 2, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.758)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.039, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.045, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045)
  %.sroa.061.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.061, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.061)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.061.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.039, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.061, ptr noundef nonnull align 8 dereferenceable(56) %i.dl, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.061, i64 104, i1 false)
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.846.0, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.663.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.951, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.061)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.iw:                                            ; preds = %bb.iu
  %i.bfr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(56) %i.dl) #17
          to label %common.resume unwind label %bb.jf

_RNCNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_maxs_0B3_.exit: ; preds = %bb.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.054, ptr noundef nonnull align 8 dereferenceable(48) %i.di, i64 48, i1 false)
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %.sroa.655.0.copyload = load i8, ptr %.sroa.655.0..sroa_idx, align 8 ; 2 uses
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.758, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.758.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %i.bfs = icmp eq i8 %.sroa.655.0.copyload, 2
  br i1 %i.bfs, label %bb.ix, label %bb.je

bb.ix:                                            ; preds = %_RNCNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_maxs_0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.045, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.054, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.758)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.039, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.045, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.039, i64 32, i1 false)
  %i.bft = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -1, ptr %i.bft, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.bfu = icmp eq i8 %i.bfo, 2
  br i1 %i.bfu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.bfv = load ptr, ptr %i.dl, align 8, !alias.scope !510, !nonnull !6, !noundef !6
  %2 = atomicrmw add ptr %i.bfv, i64 -1 release, align 8, !noalias !510
  %i.bfw = icmp eq i64 %2, 1
  br i1 %i.bfw, label %bb.iz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i

bb.iz:                                            ; preds = %bb.iy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.bfy) #17
          to label %common.resume unwind label %bb.jd

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i: ; preds = %bb.iz, %bb.iy
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.val1.i.i.i = load i64, ptr %i.bfz, align 8, !alias.scope !512, !noundef !6 ; 2 uses
  %i.bga = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.bga, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i, label %bb.jb

bb.jb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.val.i.i.i113 = load ptr, ptr %i.bgb, align 8, !alias.scope !512, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i113, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #18, !noalias !511
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i: ; preds = %bb.jb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.bgd = load ptr, ptr %i.bgc, align 8, !alias.scope !516, !nonnull !6, !noundef !6
  %3 = atomicrmw add ptr %i.bgd, i64 -1 release, align 8, !noalias !517
  %i.bge = icmp eq i64 %3, 1
  br i1 %i.bge, label %bb.jc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.jc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bgc)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.jd:                                            ; preds = %bb.ja
  %i.bgf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.iw, %bb.ja
  %common.resume.op = phi { ptr, i32 } [ %i.bfx, %bb.ja ], [ %i.bfr, %bb.iw ]
  resume { ptr, i32 } %common.resume.op

bb.je:                                            ; preds = %_RNCNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_maxs_0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.045, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.054, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.951, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.758, i64 7, i1 false)
  br label %bb.iv

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.is, %bb.ix, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i, %bb.jc, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  ret void

bb.jf:                                            ; preds = %bb.iw
  %i.bgg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10statistics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 4 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvXs6_CskqViAy2tSOx_18lance_arrow_scalarNtB5_11ArrowScalarNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 2, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load i8, ptr %i.g, align 8, !range !5, !noundef !6
  %.not6 = icmp eq i8 %i.h, 2
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs6_CskqViAy2tSOx_18lance_arrow_scalarNtB5_11ArrowScalarNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.h
  %.sroa.4.0 = phi i8 [ %.sroa.4.0.copyload2, %bb.h ], [ 2, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.o, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.q, ptr %i.p, align 8
  %i.r = load <2 x i64>, ptr %i.j, align 8
  store <2 x i64> %i.r, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(56) %i.b) #17
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.4.0.copyload2 = load i8, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_max(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 14 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6
  %.not15.not = icmp eq i8 %i.g, 2
  br i1 %.not15.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.d

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.o)
  %i.p = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.m, i64 %spec.store.select) ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %i.k, %i.o
  %spec.select = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp sgt i64 %spec.select, -1
  br i1 %i.t, label %bb.k, label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.u = load ptr, ptr %i.a, align 8, !alias.scope !549, !nonnull !6, !noundef !6
  %2 = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !549
  %i.v = icmp eq i64 %2, 1
  br i1 %i.v, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.x) #17
          to label %common.resume unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i = load i64, ptr %i.y, align 8, !alias.scope !551, !noundef !6 ; 2 uses
  %i.z = icmp eq i64 %.val1.i.i, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !551, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #18, !noalias !550
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !555, !nonnull !6, !noundef !6
  %3 = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !556
  %i.ad = icmp eq i64 %3, 1
  br i1 %i.ad, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread, %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.af = load ptr, ptr %i.b, align 8, !alias.scope !560, !nonnull !6, !noundef !6
  %4 = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !560
  %i.ag = icmp eq i64 %4, 1
  br i1 %i.ag, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.ai) #17
          to label %common.resume unwind label %bb.p

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20: ; preds = %bb.l, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i21 = load i64, ptr %i.aj, align 8, !alias.scope !562, !noundef !6 ; 2 uses
  %i.ak = icmp eq i64 %.val1.i.i21, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23, label %bb.n

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i22 = load ptr, ptr %i.al, align 8, !alias.scope !562, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i22, i64 noundef range(i64 1, 0) %.val1.i.i21, i64 noundef 1) #18, !noalias !561
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23: ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !566, !nonnull !6, !noundef !6
  %5 = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !567
  %i.ao = icmp eq i64 %5, 1
  br i1 %i.ao, label %bb.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24

bb.p:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.w, %bb.g ]
  resume { ptr, i32 } %common.resume.op
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_min(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 14 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !5, !noundef !6
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = load i8, ptr %i.f, align 8, !range !5, !noundef !6
  %.not15.not = icmp eq i8 %i.g, 2
  br i1 %.not15.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.d

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.o)
  %i.p = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.m, i64 %spec.store.select) ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %i.k, %i.o
  %spec.select = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp slt i64 %spec.select, 1
  br i1 %i.t, label %bb.k, label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.u = load ptr, ptr %i.a, align 8, !alias.scope !599, !nonnull !6, !noundef !6
  %2 = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !599
  %i.v = icmp eq i64 %2, 1
  br i1 %i.v, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.x) #17
          to label %common.resume unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i = load i64, ptr %i.y, align 8, !alias.scope !601, !noundef !6 ; 2 uses
  %i.z = icmp eq i64 %.val1.i.i, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !601, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #18, !noalias !600
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !605, !nonnull !6, !noundef !6
  %3 = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !606
  %i.ad = icmp eq i64 %3, 1
  br i1 %i.ad, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit.thread, %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.af = load ptr, ptr %i.b, align 8, !alias.scope !610, !nonnull !6, !noundef !6
  %4 = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !610
  %i.ag = icmp eq i64 %4, 1
  br i1 %i.ag, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.ai) #17
          to label %common.resume unwind label %bb.p

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20: ; preds = %bb.l, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i21 = load i64, ptr %i.aj, align 8, !alias.scope !612, !noundef !6 ; 2 uses
  %i.ak = icmp eq i64 %.val1.i.i21, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23, label %bb.n

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i22 = load ptr, ptr %i.al, align 8, !alias.scope !612, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i22, i64 noundef range(i64 1, 0) %.val1.i.i21, i64 noundef 1) #18, !noalias !611
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23: ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i20
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !616, !nonnull !6, !noundef !6
  %5 = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !617
  %i.ao = icmp eq i64 %5, 1
  br i1 %i.ao, label %bb.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i23
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit24

bb.p:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.w, %bb.g ]
  resume { ptr, i32 } %common.resume.op
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(184) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.05 = alloca [48 x i8], align 8           ; 7 uses
  %.sroa.8 = alloca [63 x i8], align 1            ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 12 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 12 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = tail call noundef zeroext i1 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_8is_empty(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !14, !noundef !6
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.bb

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_10null_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.r = load i64, ptr %i.p, align 8, !noundef !6
  %i.s = add i64 %i.r, %i.q
  store i64 %i.s, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.t = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.u = load i8, ptr %i.t, align 8, !range !7, !noundef !6
  switch i8 %i.u, label %bb.f [
    i8 27, label %bb.g
    i8 29, label %bb.i
    i8 30, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %1, align 8, !range !14, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.aw, label %bb.ax

bb.g:                                             ; preds = %bb.e
  %.val = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val22 = load ptr, ptr %i.x, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !8, !invariant.load !6
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = and i64 %i.aa, -16
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr i8, ptr %.val22, i64 32
  %.val.i.i = load ptr, ptr %i.ae, align 8
  %i.af = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.ad), !inline_history !0 ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 9 uses
  %i.ah = extractvalue { ptr, ptr } %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !6, !nonnull !6
  call void %i.aj(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ag), !inline_history !0
  %i.ak = load i128, ptr %i.b, align 16, !noundef !6
  %i.al = icmp ne i128 %i.ak, -161552374697213817395454635259496115404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not1.i = icmp eq ptr %i.ag, null
  %.not.i = or i1 %.not1.i, %i.al
  br i1 %.not.i, label %bb.h, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nsw i64 %i.ao, -1                   ; 2 uses
  %.not68 = icmp eq i64 %i.ap, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.ax = tail call noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 7 uses
  %.not.i25 = icmp eq ptr %i.ax, null
  br i1 %.not.i25, label %bb.j, label %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #20
  unreachable

_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.az = load i64, ptr %i.ay, align 8, !noundef !6 ; 2 uses
  %.not67 = icmp eq i64 %i.az, 0
  br i1 %.not67, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.z

bb.k:                                             ; preds = %bb.e
  %.val23 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val24 = load ptr, ptr %i.bf, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val24, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !8, !invariant.load !6
  %i.bi = add nsw i64 %i.bh, -1
  %i.bj = and i64 %i.bi, -16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val23, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = getelementptr i8, ptr %.val24, i64 32
  %.val.i.i26 = load ptr, ptr %i.bm, align 8
  %i.bn = tail call { ptr, ptr } %.val.i.i26(ptr noundef nonnull %i.bl), !inline_history !1 ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 9 uses
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !6, !nonnull !6
  call void %i.br(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.bo), !inline_history !1
  %i.bs = load i128, ptr %i.a, align 16, !noundef !6
  %i.bt = icmp ne i128 %i.bs, 90189382463122623267183234748201210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1.i27 = icmp eq ptr %i.bo, null
  %.not.i28 = or i1 %.not1.i27, %i.bt
  br i1 %.not.i28, label %bb.l, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !6
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nsw i64 %i.bw, -1                   ; 2 uses
  %.not66 = icmp eq i64 %i.bx, 0
  br i1 %.not66, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.ak

bb.m:                                             ; preds = %.lr.ph65, %bb.q
  %.sroa.010.064 = phi i64 [ 0, %.lr.ph65 ], [ %i.cf, %bb.q ] ; 4 uses
  %i.cf = add nuw i64 %.sroa.010.064, 1           ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.cg = load ptr, ptr %i.aq, align 8, !alias.scope !671, !noundef !6
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i64, ptr %i.ar, align 8, !alias.scope !670, !noundef !6
  %i.ci = icmp ult i64 %.sroa.010.064, %i.ch
  br i1 %i.ci, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.o, !prof !12

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !670
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.n
  %i.cj = load ptr, ptr %i.as, align 8, !alias.scope !670, !noundef !6
  %i.ck = load i64, ptr %i.at, align 8, !alias.scope !670, !noundef !6
  %i.cl = add i64 %i.ck, %.sroa.010.064           ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !noalias !670, !noundef !6
  %i.cp = trunc i64 %i.cl to i8
  %i.cq = and i8 %i.cp, 7
  %i.cr = xor i8 %i.co, -1
  %i.cs = lshr i8 %i.cr, %i.cq
  %i.ct = trunc i8 %i.cs to i1
  br i1 %i.ct, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread

.loopexit:                                        ; preds = %bb.ao, %bb.ac, %bb.q, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit, %bb.ba
  store i64 -1, ptr %0, align 8
  br label %bb.bb

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread: ; preds = %bb.m, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.cu = load i64, ptr %i.am, align 8, !alias.scope !672, !noundef !6
  %i.cv = lshr i64 %i.cu, 2                       ; 2 uses
  %i.cw = icmp ult i64 %i.cf, %i.cv
  br i1 %i.cw, label %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.p

bb.p:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20, !noalias !672
  unreachable

_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread
  %i.cx = load ptr, ptr %i.au, align 8, !alias.scope !672, !noundef !6 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cf
  %i.cz = load i32, ptr %i.cy, align 4, !noalias !672, !noundef !6
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.sroa.010.064
  %i.dc = load i32, ptr %i.db, align 4, !noalias !672, !noundef !6
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = sub nsw i64 %i.da, %i.dd
  %i.df = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.av, i64 noundef %i.dd, i64 noundef %i.de) ; 2 uses
  %i.dg = extractvalue { ptr, ptr } %i.df, 0
  %i.dh = extractvalue { ptr, ptr } %i.df, 1
  store ptr %i.dg, ptr %i.j, align 8
  store ptr %i.dh, ptr %i.aw, align 8
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.t unwind label %bb.r

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit30, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit
  %exitcond87.not = icmp eq i64 %i.cf, %i.ap
  br i1 %exitcond87.not, label %.loopexit, label %bb.m

bb.r:                                             ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.dj = load ptr, ptr %i.j, align 8, !alias.scope !675, !nonnull !6, !noundef !6
  %3 = atomicrmw add ptr %i.dj, i64 -1 release, align 8, !noalias !675
  %i.dk = icmp eq i64 %3, 1
  br i1 %i.dk, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.y

bb.t:                                             ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.dl = load i64, ptr %i.k, align 8, !range !15, !noundef !6
  %.not20 = icmp eq i64 %i.dl, -1
  br i1 %.not20, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.dm = load ptr, ptr %i.j, align 8, !alias.scope !678, !nonnull !6, !noundef !6
  %4 = atomicrmw add ptr %i.dm, i64 -1 release, align 8, !noalias !678
  %i.dn = icmp eq i64 %4, 1
  br i1 %i.dn, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit29

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit29

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit29: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bb

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.do = load ptr, ptr %i.j, align 8, !alias.scope !681, !nonnull !6, !noundef !6
  %5 = atomicrmw add ptr %i.do, i64 -1 release, align 8, !noalias !681
  %i.dp = icmp eq i64 %5, 1
  br i1 %i.dp, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit30

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit30

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit30: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.q

bb.y:                                             ; preds = %bb.aq, %bb.ae, %bb.s, %bb.bc
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.ap, %bb.aq, %bb.ad, %bb.ae, %bb.r, %bb.s, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.gh, %bb.bc ], [ %i.fs, %bb.ap ], [ %i.ej, %bb.ad ], [ %i.di, %bb.r ], [ %i.di, %bb.s ], [ %i.ej, %bb.ae ], [ %i.fs, %bb.aq ]
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %.lr.ph63, %bb.ac
  %.sroa.014.062 = phi i64 [ 0, %.lr.ph63 ], [ %i.dr, %bb.ac ] ; 4 uses
  %i.dr = add nuw i64 %.sroa.014.062, 1           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.ds = load ptr, ptr %i.ba, align 8, !alias.scope !683, !noundef !6
  %.not.i.i31 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i31, label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i64, ptr %i.bb, align 8, !alias.scope !682, !noundef !6
  %i.du = icmp ult i64 %.sroa.014.062, %i.dt
  br i1 %i.du, label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.ab, !prof !12

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !682
  unreachable

_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.aa
  %i.dv = load ptr, ptr %i.bc, align 8, !alias.scope !682, !noundef !6
  %i.dw = load i64, ptr %i.bd, align 8, !alias.scope !682, !noundef !6
  %i.dx = add i64 %i.dw, %.sroa.014.062           ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !682, !noundef !6
  %i.eb = trunc i64 %i.dx to i8
  %i.ec = and i8 %i.eb, 7
  %i.ed = xor i8 %i.ea, -1
  %i.ee = lshr i8 %i.ed, %i.ec
  %i.ef = trunc i8 %i.ee to i1
  br i1 %i.ef, label %bb.ac, label %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread

_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread: ; preds = %bb.z, %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.eg = call { ptr, ptr } @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray5value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ax, i64 noundef %.sroa.014.062) ; 2 uses
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0
  %i.ei = extractvalue { ptr, ptr } %i.eg, 1
  store ptr %i.eh, ptr %i.f, align 8
  store ptr %i.ei, ptr %i.be, align 8
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.af unwind label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit36, %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit
  %exitcond86.not = icmp eq i64 %i.dr, %i.az
  br i1 %exitcond86.not, label %.loopexit, label %bb.z

bb.ad:                                            ; preds = %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.ek = load ptr, ptr %i.f, align 8, !alias.scope !686, !nonnull !6, !noundef !6
  %6 = atomicrmw add ptr %i.ek, i64 -1 release, align 8, !noalias !686
  %i.el = icmp eq i64 %6, 1
  br i1 %i.el, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.y

bb.af:                                            ; preds = %_RNvYNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB6_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread
  %i.em = load i64, ptr %i.g, align 8, !range !15, !noundef !6
  %.not19 = icmp eq i64 %i.em, -1
  br i1 %.not19, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.en = load ptr, ptr %i.f, align 8, !alias.scope !689, !nonnull !6, !noundef !6
  %7 = atomicrmw add ptr %i.en, i64 -1 release, align 8, !noalias !689
  %i.eo = icmp eq i64 %7, 1
  br i1 %i.eo, label %bb.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit35

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit35

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit35: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bb

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.ep = load ptr, ptr %i.f, align 8, !alias.scope !692, !nonnull !6, !noundef !6
  %8 = atomicrmw add ptr %i.ep, i64 -1 release, align 8, !noalias !692
  %i.eq = icmp eq i64 %8, 1
  br i1 %i.eq, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit36

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit36

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit36: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ac

bb.ak:                                            ; preds = %.lr.ph, %bb.ao
  %.sroa.012.061 = phi i64 [ 0, %.lr.ph ], [ %i.er, %bb.ao ] ; 4 uses
  %i.er = add nuw i64 %.sroa.012.061, 1           ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.es = load ptr, ptr %i.by, align 8, !alias.scope !694, !noundef !6
  %.not.i.i37 = icmp eq ptr %i.es, null
  br i1 %.not.i.i37, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = load i64, ptr %i.bz, align 8, !alias.scope !693, !noundef !6
  %i.eu = icmp ult i64 %.sroa.012.061, %i.et
  br i1 %i.eu, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.am, !prof !12

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !693
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.al
  %i.ev = load ptr, ptr %i.ca, align 8, !alias.scope !693, !noundef !6
  %i.ew = load i64, ptr %i.cb, align 8, !alias.scope !693, !noundef !6
  %i.ex = add i64 %i.ew, %.sroa.012.061           ; 2 uses
  %i.ey = lshr i64 %i.ex, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !693, !noundef !6
  %i.fb = trunc i64 %i.ex to i8
  %i.fc = and i8 %i.fb, 7
  %i.fd = xor i8 %i.fa, -1
  %i.fe = lshr i8 %i.fd, %i.fc
  %i.ff = trunc i8 %i.fe to i1
  br i1 %i.ff, label %bb.ao, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread: ; preds = %bb.ak, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.fg = load i64, ptr %i.bu, align 8, !alias.scope !695, !noundef !6
  %i.fh = lshr i64 %i.fg, 3                       ; 2 uses
  %i.fi = icmp ult i64 %i.er, %i.fh
  br i1 %i.fi, label %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.an

bb.an:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.er, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20, !noalias !695
  unreachable

_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread
  %i.fj = load ptr, ptr %i.cc, align 8, !alias.scope !695, !noundef !6 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.er
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !695, !noundef !6
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.sroa.012.061
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !695, !noundef !6 ; 2 uses
  %i.fo = sub i64 %i.fl, %i.fn
  %i.fp = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cd, i64 noundef %i.fn, i64 noundef %i.fo) ; 2 uses
  %i.fq = extractvalue { ptr, ptr } %i.fp, 0
  %i.fr = extractvalue { ptr, ptr } %i.fp, 1
  store ptr %i.fq, ptr %i.h, align 8
  store ptr %i.fr, ptr %i.ce, align 8
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.ar unwind label %bb.ap

bb.ao:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit42, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit
  %exitcond.not = icmp eq i64 %i.er, %i.bx
  br i1 %exitcond.not, label %.loopexit, label %bb.ak

bb.ap:                                            ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.ft = load ptr, ptr %i.h, align 8, !alias.scope !698, !nonnull !6, !noundef !6
  %9 = atomicrmw add ptr %i.ft, i64 -1 release, align 8, !noalias !698
  %i.fu = icmp eq i64 %9, 1
  br i1 %i.fu, label %bb.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.y

bb.ar:                                            ; preds = %_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE5valueCsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.fv = load i64, ptr %i.i, align 8, !range !15, !noundef !6
  %.not = icmp eq i64 %i.fv, -1
  br i1 %.not, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.fw = load ptr, ptr %i.h, align 8, !alias.scope !701, !nonnull !6, !noundef !6
  %10 = atomicrmw add ptr %i.fw, i64 -1 release, align 8, !noalias !701
  %i.fx = icmp eq i64 %10, 1
  br i1 %i.fx, label %bb.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit41

bb.at:                                            ; preds = %bb.as
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit41

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit41: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bb

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.fy = load ptr, ptr %i.h, align 8, !alias.scope !704, !nonnull !6, !noundef !6
  %11 = atomicrmw add ptr %i.fy, i64 -1 release, align 8, !noalias !704
  %i.fz = icmp eq i64 %11, 1
  br i1 %i.fz, label %bb.av, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit42

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit42

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit42: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ao

bb.aw:                                            ; preds = %bb.f
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gb = tail call fastcc noundef i64 @_RNvNtCsfUv75jb5FCv_17lance_arrow_stats3nan10count_nans(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.gc = load i64, ptr %i.ga, align 8, !noundef !6
  %i.gd = add i64 %i.gc, %i.gb
  store i64 %i.gd, ptr %i.ga, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_max(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.gf = load i8, ptr %i.ge, align 8, !range !16, !noundef !6 ; 2 uses
  %i.gg = icmp eq i8 %i.gf, -1
  br i1 %i.gg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.517.0..sroa_idx, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05, i64 48, i1 false)
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 %i.gf, ptr %.sroa.7.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  %.sroa.8.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 1 dereferenceable(56) %.sroa.8.56..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_min(ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.c)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  call fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_max(ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.bb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit29, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit35, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit41, %bb.ay, %.loopexit, %bb.c
  ret void

bb.bc:                                            ; preds = %bb.az
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(56) %i.e) #17
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !7, !noundef !6 ; 2 uses
  %switch.tableidx = add nsw i8 %i.a, -27         ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 4
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator3new, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.backedge.i, %bb.b
  %i.d = phi i8 [ %i.a, %bb.b ], [ %.pre, %tailrecurse.backedge.i ]
  %.tr.i = phi ptr [ %1, %bb.b ], [ %.tr.be.i, %tailrecurse.backedge.i ]
  switch i8 %i.d, label %_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit.loopexit [
    i8 10, label %_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit
    i8 11, label %_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit
    i8 12, label %_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit
    i8 27, label %tailrecurse.backedge.i
    i8 29, label %tailrecurse.backedge.i
    i8 30, label %tailrecurse.backedge.i
  ]

tailrecurse.backedge.i:                           ; preds = %tailrecurse.i, %tailrecurse.i, %tailrecurse.i
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.tr.i, i64 8
  %.pn.i = load ptr, ptr %.pn.in.i, align 8, !nonnull !6, !noundef !6
  %.tr.be.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 40 ; 2 uses
  %.pre = load i8, ptr %.tr.be.i, align 8, !range !7
  br label %tailrecurse.i

_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit.loopexit: ; preds = %tailrecurse.i
  br label %_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit

_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit: ; preds = %tailrecurse.i, %tailrecurse.i, %tailrecurse.i, %_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit.loopexit
  %i.e = phi i64 [ 0, %_RNvCsfUv75jb5FCv_17lance_arrow_stats12can_have_nan.exit.loopexit ], [ 1, %tailrecurse.i ], [ 1, %tailrecurse.i ], [ 1, %tailrecurse.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 2, ptr %.sroa.4.0..sroa_idx4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.g, align 8
  store i64 %i.e, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator5merge(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 3 uses
  %i.d = alloca [56 x i8], align 8                ; 14 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  br i1 %i.h, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.j = load i64, ptr %i.i, align 8, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8
  %i.n = load i64, ptr %1, align 8, !range !14, !noundef !6
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = load i64, ptr %2, align 8, !range !14
  %i.q = trunc nuw i64 %i.p to i1
  %or.cond56 = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond56, label %bb.d, label %bb.c

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.r, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @9, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aw

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.t = load i64, ptr %i.s, align 8, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !14, !noundef !6
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !14
  %i.ac = trunc nuw i64 %i.ab to i1
  %or.cond59 = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %or.cond59, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.ad, align 8, !noundef !6
  %i.ah = add i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.ad, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ak = load i8, ptr %i.aj, align 8, !range !5, !noundef !6
  %.not = icmp eq i8 %i.ak, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.al, align 8, !noundef !6
  %i.ap = add i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.al, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !5, !noundef !6
  %.not48 = icmp eq i8 %i.as, 2
  br i1 %.not48, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.av = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %.not50 = icmp eq i8 %i.av, 2
  br i1 %.not50, label %bb.aw, label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !noundef !6 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !6 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bd)
  %i.be = tail call i32 @memcmp(ptr nonnull %i.ax, ptr nonnull %i.bb, i64 %spec.store.select) ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub i64 %i.az, %i.bd
  %spec.select = select i1 %i.bg, i64 %i.bh, i64 %i.bf
  %i.bi = icmp slt i64 %spec.select, 1
  br i1 %i.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  invoke void @_RNvXs6_CskqViAy2tSOx_18lance_arrow_scalarNtB5_11ArrowScalarNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ai)
          to label %bb.k unwind label %bb.s

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit.thread: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.k:                                             ; preds = %bb.j
  %.pre = load i8, ptr %.sroa.3.0..sroa_idx, align 8, !range !5, !alias.scope !765
  %i.bj = icmp eq i8 %.pre, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  br i1 %i.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.bk = load ptr, ptr %i.aq, align 8, !alias.scope !769, !nonnull !6, !noundef !6
  %3 = atomicrmw add ptr %i.bk, i64 -1 release, align 8, !noalias !769
  %i.bl = icmp eq i64 %3, 1
  br i1 %i.bl, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.bn) #17
          to label %.body unwind label %bb.q

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !771, !noundef !6 ; 2 uses
  %i.bp = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !771, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #18, !noalias !770
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i: ; preds = %bb.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !775, !nonnull !6, !noundef !6
  %4 = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !noalias !776
  %i.bt = icmp eq i64 %4, 1
  br i1 %i.bt, label %bb.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.r:                                             ; preds = %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bw, %bb.s ] ; 2 uses
  %i.bv = load i8, ptr %i.ar, align 8, !range !5, !noundef !6
  %.not87 = icmp eq i8 %i.bv, 2
  br i1 %.not87, label %common.resume, label %bb.aa

bb.s:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.t ], [ %i.bm, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  br label %bb.r

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i, %bb.k, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.by = load i8, ptr %i.ar, align 8, !range !5, !noundef !6
  %.not88 = icmp eq i8 %i.by, 2
  br i1 %.not88, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.u

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit.thread, %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.bz = load ptr, ptr %i.d, align 8, !alias.scope !780, !nonnull !6, !noundef !6
  %5 = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !780
  %i.ca = icmp eq i64 %5, 1
  br i1 %i.ca, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.cc) #17
          to label %common.resume unwind label %bb.z

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i: ; preds = %bb.v, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val1.i.i = load i64, ptr %i.cd, align 8, !alias.scope !782, !noundef !6 ; 2 uses
  %i.ce = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ce, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !782, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #18, !noalias !781
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i: ; preds = %bb.x, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !786, !nonnull !6, !noundef !6
  %6 = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !noalias !787
  %i.ci = icmp eq i64 %6, 1
  br i1 %i.ci, label %bb.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.z:                                             ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.ar, %bb.r, %bb.aa, %bb.am, %bb.av, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.cb, %bb.w ], [ %.pn52, %bb.av ], [ %.pn52, %bb.am ], [ %.pn, %bb.aa ], [ %i.dt, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %bb.r
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(56) %i.d) #17
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.av, %bb.aa
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ac:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.cl, i64 56, i1 false)
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store i8 2, ptr %.sroa.335.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 8, !range !5, !noundef !6
  %.not51 = icmp eq i8 %i.cn, 2
  br i1 %.not51, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !6, !noundef !6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !6 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !6, !noundef !6
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !6 ; 2 uses
  %spec.store.select4 = call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cv)
  %i.cw = call i32 @memcmp(ptr nonnull %i.cp, ptr nonnull %i.ct, i64 %spec.store.select4) ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp eq i32 %i.cw, 0
  %i.cz = sub i64 %i.cr, %i.cv
  %spec.select60 = select i1 %i.cy, i64 %i.cz, i64 %i.cx
  %i.da = icmp sgt i64 %spec.select60, -1
  br i1 %i.da, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  invoke void @_RNvXs6_CskqViAy2tSOx_18lance_arrow_scalarNtB5_11ArrowScalarNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.at)
          to label %bb.af unwind label %bb.an

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69.thread: ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cl, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit74

bb.af:                                            ; preds = %bb.ae
  %.pre77 = load i8, ptr %.sroa.335.0..sroa_idx, align 8, !range !5, !alias.scope !788
  %i.db = icmp eq i8 %.pre77, 2
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  br i1 %i.db, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.dc = load ptr, ptr %i.cl, align 8, !alias.scope !792, !nonnull !6, !noundef !6
  %7 = atomicrmw add ptr %i.dc, i64 -1 release, align 8, !noalias !792
  %i.dd = icmp eq i64 %7, 1
  br i1 %i.dd, label %bb.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i62

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i62 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.df) #17
          to label %.body67 unwind label %bb.al

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i62: ; preds = %bb.ah, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val1.i.i.i63 = load i64, ptr %i.dg, align 8, !alias.scope !794, !noundef !6 ; 2 uses
  %i.dh = icmp eq i64 %.val1.i.i.i63, 0
  br i1 %i.dh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i65, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i62
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i.i.i64 = load ptr, ptr %i.di, align 8, !alias.scope !794, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i64, i64 noundef range(i64 1, 0) %.val1.i.i.i63, i64 noundef 1) #18, !noalias !793
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i65

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i65: ; preds = %bb.aj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i62
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !798, !nonnull !6, !noundef !6
  %8 = atomicrmw add ptr %i.dk, i64 -1 release, align 8, !noalias !799
  %i.dl = icmp eq i64 %8, 1
  br i1 %i.dl, label %bb.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69

bb.ak:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i65
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69 unwind label %bb.ao

bb.al:                                            ; preds = %bb.ai
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.am:                                            ; preds = %.body67, %bb.an
  %.pn52 = phi { ptr, i32 } [ %eh.lpad-body68, %.body67 ], [ %i.do, %bb.an ] ; 2 uses
  %i.dn = load i8, ptr %i.cm, align 8, !range !5, !noundef !6
  %.not89 = icmp eq i8 %i.dn, 2
  br i1 %.not89, label %common.resume, label %bb.av

bb.an:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.ak
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.ai, %bb.ao
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.dp, %bb.ao ], [ %i.de, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cl, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %bb.am

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i65, %bb.af, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cl, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %i.dq = load i8, ptr %i.cm, align 8, !range !5, !noundef !6
  %.not90 = icmp eq i8 %i.dq, 2
  br i1 %.not90, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit74, label %bb.ap

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit74: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69.thread, %bb.at, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i73, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aw

bb.ap:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit69
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.dr = load ptr, ptr %i.b, align 8, !alias.scope !803, !nonnull !6, !noundef !6
  %9 = atomicrmw add ptr %i.dr, i64 -1 release, align 8, !noalias !803
  %i.ds = icmp eq i64 %9, 1
  br i1 %i.ds, label %bb.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i70

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i70 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.du) #17
          to label %common.resume unwind label %bb.au

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i70: ; preds = %bb.aq, %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i71 = load i64, ptr %i.dv, align 8, !alias.scope !805, !noundef !6 ; 2 uses
  %i.dw = icmp eq i64 %.val1.i.i71, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i73, label %bb.as

bb.as:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i70
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i72 = load ptr, ptr %i.dx, align 8, !alias.scope !805, !nonnull !6, !noundef !6
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i72, i64 noundef range(i64 1, 0) %.val1.i.i71, i64 noundef 1) #18, !noalias !804
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i73

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i73: ; preds = %bb.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i70
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !809, !nonnull !6, !noundef !6
  %10 = atomicrmw add ptr %i.dz, i64 -1 release, align 8, !noalias !810
  %i.ea = icmp eq i64 %10, 1
  br i1 %i.ea, label %bb.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit74

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i73
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit74

bb.au:                                            ; preds = %bb.ar
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.av:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(56) %i.b) #17
          to label %common.resume unwind label %bb.ab

bb.aw:                                            ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit74, %.split
  %storemerge = phi i64 [ -9223372036854775794, %.split ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarECsfUv75jb5FCv_17lance_arrow_stats.exit74 ], [ -1, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator5reset(ptr noalias noundef align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !5, !alias.scope !843, !noundef !6
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !847, !nonnull !6, !noundef !6
  %1 = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !847
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.h) #17
          to label %.body unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i: ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !849, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !849, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #18, !noalias !848
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !853, !nonnull !6, !noundef !6
  %2 = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !854
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.g, %bb.d ]
  store i8 2, ptr %i.b, align 8
  br label %bb.t

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i, %bb.a, %bb.f
  store i8 2, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !range !5, !alias.scope !855, !noundef !6
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit19, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.u = load ptr, ptr %i.q, align 8, !alias.scope !859, !nonnull !6, !noundef !6
  %3 = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !859
  %i.v = icmp eq i64 %3, 1
  br i1 %i.v, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i12

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i12 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs4ZMvlXuwFud_9arrow_row8OwnedRowECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(40) %i.x) #17
          to label %.body17 unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i12: ; preds = %bb.j, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i.i.i13 = load i64, ptr %i.y, align 8, !alias.scope !861, !noundef !6 ; 2 uses
  %i.z = icmp eq i64 %.val1.i.i.i13, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i15, label %bb.l

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i.i14 = load ptr, ptr %i.aa, align 8, !alias.scope !861, !nonnull !6, !noundef !6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i14, i64 noundef range(i64 1, 0) %.val1.i.i.i13, i64 noundef 1) #18, !noalias !860
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i15

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i15: ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !865, !nonnull !6, !noundef !6
  %4 = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !866
  %i.ad = icmp eq i64 %4, 1
  br i1 %i.ad, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit19

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i15
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtCs4ZMvlXuwFud_9arrow_row9SortFieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit19 unwind label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.k, %bb.o
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.w, %bb.k ]
  store i8 2, ptr %i.r, align 8
  br label %bb.t

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit19: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxShEECsfUv75jb5FCv_17lance_arrow_stats.exit.i.i.i15, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit, %bb.m
  store i8 2, ptr %i.r, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.ag, align 8
  %i.ah = load i64, ptr %0, align 8, !range !14, !noundef !6
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats.exit19
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !14, !noundef !6
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.an, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.ao, align 8
  ret void

bb.t:                                             ; preds = %.body17, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator6finish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 160)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <2 x i64>, ptr %i.f, align 8
  store <2 x i64> %i.j, ptr %i.i, align 8
  %i.k = load <2 x i64>, ptr %i.e, align 8
  store <2 x i64> %i.k, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(24) %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator6update(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 12 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.09 = alloca [48 x i8], align 8           ; 7 uses
  %.sroa.8 = alloca [63 x i8], align 1            ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
  br i1 %i.p, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_8is_empty(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.q, label %bb.d, label %bb.c

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.r = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  store ptr %i.r, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.o, ptr %i.l, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.s, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsfUv75jb5FCv_17lance_arrow_stats, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @9, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -9223372036854775794, ptr %0, align 8
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8
  %i.x = tail call noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_10null_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.ac = load i8, ptr %i.ab, align 8, !range !7, !noundef !6
  switch i8 %i.ac, label %bb.e [
    i8 27, label %bb.f
    i8 29, label %bb.x
    i8 30, label %bb.al
  ]

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %1, align 8, !range !14, !noundef !6
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.bd, label %bb.be

bb.f:                                             ; preds = %bb.c
  %.val32 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val33 = load ptr, ptr %i.af, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val33, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !8, !invariant.load !6
  %i.ai = add nsw i64 %i.ah, -1
  %i.aj = and i64 %i.ai, -16
  %i.ak = getelementptr inbounds nuw i8, ptr %.val32, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr i8, ptr %.val33, i64 32
  %.val.i.i = load ptr, ptr %i.am, align 8
  %i.an = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.al), !inline_history !0 ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 10 uses
  %i.ap = extractvalue { ptr, ptr } %i.an, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !6, !nonnull !6
  call void %i.ar(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef %i.ao), !inline_history !0
  %i.as = load i128, ptr %i.h, align 16, !noundef !6
  %i.at = icmp ne i128 %i.as, -161552374697213817395454635259496115404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not1.i = icmp eq ptr %i.ao, null
  %.not.i = or i1 %.not1.i, %i.at
  br i1 %.not.i, label %bb.g, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !6
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nsw i64 %i.aw, -1                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i280282 = icmp eq i64 %i.ax, 0
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i280282, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %.lr.ph281

.lr.ph281:                                        ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i
  %umax.i.i.i.i.i284 = phi i64 [ %umax.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i ], [ %i.ax, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %.sroa.5.0.i283 = phi i64 [ %i.bh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i ], [ 0, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %i.bf = load ptr, ptr %i.ay, align 8, !alias.scope !959, !noalias !960, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br label %bb.h

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6update0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i = icmp eq i64 %i.bh, %umax.i.i.i.i.i284
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph281, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i
  %i.bg = phi i64 [ %.sroa.5.0.i283, %.lr.ph281 ], [ %i.bh, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i ] ; 6 uses
  %i.bh = add i64 %i.bg, 1                        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load i64, ptr %i.az, align 8, !alias.scope !961, !noalias !960, !noundef !6
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6update0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !962
  unreachable

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6update0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bk = load ptr, ptr %i.ba, align 8, !alias.scope !961, !noalias !960, !noundef !6
  %i.bl = load i64, ptr %i.bb, align 8, !alias.scope !961, !noalias !960, !noundef !6
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !962, !noundef !6
  %i.bq = trunc i64 %i.bm to i8
  %i.br = and i8 %i.bq, 7
  %i.bs = xor i8 %i.bp, -1
  %i.bt = lshr i8 %i.bs, %i.br
  %.fr3.i.i.i.i.i.i = freeze i8 %i.bt
  %i.bu = trunc i8 %.fr3.i.i.i.i.i.i to i1
  br i1 %i.bu, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6update0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.bv = load ptr, ptr %i.bc, align 8, !alias.scope !963, !noalias !964, !noundef !6 ; 2 uses
  %i.bw = load i64, ptr %i.au, align 8, !alias.scope !963, !noalias !964, !noundef !6
  %i.bx = lshr i64 %i.bw, 2                       ; 4 uses
  %i.by = icmp ult i64 %i.bh, %i.bx
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp ult i64 %i.bg, %i.bx
  br i1 %i.bz, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20, !noalias !965
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20, !noalias !965
  unreachable

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bh
  %i.cb = load i32, ptr %i.ca, align 4, !noalias !965, !noundef !6
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bg
  %i.ce = load i32, ptr %i.cd, align 4, !noalias !965, !noundef !6
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = sub nsw i64 %i.cc, %i.cf
  %i.ch = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bd, i64 noundef %i.cf, i64 noundef %i.cg), !noalias !964 ; 2 uses
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 2 uses
  %.not.i36 = icmp eq ptr %i.ci, null
  br i1 %.not.i36, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.o

common.resume:                                    ; preds = %bb.bi, %bb.av, %bb.aw, %bb.ad, %bb.ae, %bb.p, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.gg, %bb.av ], [ %i.ck, %bb.p ], [ %i.du, %bb.ad ], [ %i.ck, %bb.q ], [ %i.du, %bb.ae ], [ %i.gg, %bb.aw ], [ %i.gw, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !966
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  store ptr %i.ci, ptr %i.g, align 8, !noalias !966
  store ptr %i.cj, ptr %i.be, align 8, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !966
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.r unwind label %bb.p, !noalias !967

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6update0E0B1j_.exit.i.i.i.i.i, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listlECsfUv75jb5FCv_17lance_arrow_stats.exit
  store i64 -1, ptr %0, align 8, !alias.scope !958
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.cl = load ptr, ptr %i.g, align 8, !alias.scope !970, !noalias !966, !nonnull !6, !noundef !6
  %3 = atomicrmw add ptr %i.cl, i64 -1 release, align 8, !noalias !971
  %i.cm = icmp eq i64 %3, 1
  br i1 %i.cm, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %common.resume unwind label %bb.w, !noalias !967

bb.r:                                             ; preds = %bb.o
  %i.cn = load i64, ptr %i.f, align 8, !range !15, !noalias !966, !noundef !6
  %.not4.i = icmp eq i64 %i.cn, -1
  br i1 %.not4.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !966
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.co = load ptr, ptr %i.g, align 8, !alias.scope !975, !noalias !966, !nonnull !6, !noundef !6
  %4 = atomicrmw add ptr %i.co, i64 -1 release, align 8, !noalias !976
  %i.cp = icmp eq i64 %4, 1
  br i1 %i.cp, label %bb.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !967
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !966
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !966
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.cq = load ptr, ptr %i.g, align 8, !alias.scope !979, !noalias !966, !nonnull !6, !noundef !6
  %5 = atomicrmw add ptr %i.cq, i64 -1 release, align 8, !noalias !980
  %i.cr = icmp eq i64 %5, 1
  br i1 %i.cr, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !967
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !966
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.bh)
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i280.not = icmp ult i64 %i.bh, %i.ax
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i280.not, label %.lr.ph281, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i

bb.w:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !967
  unreachable

bb.x:                                             ; preds = %bb.c
  %i.ct = tail call noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 7 uses
  %.not.i37 = icmp eq ptr %i.ct, null
  br i1 %.not.i37, label %bb.y, label %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #20
  unreachable

_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47275277 = icmp eq i64 %i.cv, 0
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47275277, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %.lr.ph276

.lr.ph276:                                        ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54
  %umax.i.i.i.i.i46279 = phi i64 [ %umax.i.i.i.i.i46, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54 ], [ %i.cv, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %.sroa.5.0.i45278 = phi i64 [ %i.dd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54 ], [ 0, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %i.db = load ptr, ptr %i.cw, align 8, !alias.scope !982, !noalias !983, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i.i48 = icmp eq ptr %i.db, null
  br label %bb.z

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates2_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47 = icmp eq i64 %i.dd, %umax.i.i.i.i.i46279
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph276, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i
  %i.dc = phi i64 [ %.sroa.5.0.i45278, %.lr.ph276 ], [ %i.dd, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i ] ; 4 uses
  %i.dd = add i64 %i.dc, 1                        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i48, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = load i64, ptr %i.cx, align 8, !alias.scope !984, !noalias !983, !noundef !6
  %i.df = icmp ult i64 %i.dc, %i.de
  br i1 %i.df, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates2_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, label %bb.ab, !prof !12

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !985
  unreachable

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates2_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.dg = load ptr, ptr %i.cy, align 8, !alias.scope !984, !noalias !983, !noundef !6
  %i.dh = load i64, ptr %i.cz, align 8, !alias.scope !984, !noalias !983, !noundef !6
  %i.di = add i64 %i.dh, %i.dc                    ; 2 uses
  %i.dj = lshr i64 %i.di, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !985, !noundef !6
  %i.dm = trunc i64 %i.di to i8
  %i.dn = and i8 %i.dm, 7
  %i.do = xor i8 %i.dl, -1
  %i.dp = lshr i8 %i.do, %i.dn
  %.fr3.i.i.i.i.i.i49 = freeze i8 %i.dp
  %i.dq = trunc i8 %.fr3.i.i.i.i.i.i49 to i1
  br i1 %i.dq, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates2_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, %bb.z
  %i.dr = call { ptr, ptr } @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray5value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ct, i64 noundef %i.dc), !noalias !986 ; 2 uses
  %i.ds = extractvalue { ptr, ptr } %i.dr, 0      ; 2 uses
  %.not.i50 = icmp eq ptr %i.ds, null
  br i1 %.not.i50, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i
  %i.dt = extractvalue { ptr, ptr } %i.dr, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !987
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  store ptr %i.ds, ptr %i.e, align 8, !noalias !987
  store ptr %i.dt, ptr %i.da, align 8, !noalias !987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !987
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.af unwind label %bb.ad, !noalias !988

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates2_0E0B1j_.exit.i.i.i.i.i, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsfUv75jb5FCv_17lance_arrow_stats.exit
  store i64 -1, ptr %0, align 8, !alias.scope !981
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.dv = load ptr, ptr %i.e, align 8, !alias.scope !991, !noalias !987, !nonnull !6, !noundef !6
  %6 = atomicrmw add ptr %i.dv, i64 -1 release, align 8, !noalias !992
  %i.dw = icmp eq i64 %6, 1
  br i1 %i.dw, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %common.resume unwind label %bb.ak, !noalias !988

bb.af:                                            ; preds = %bb.ac
  %i.dx = load i64, ptr %i.d, align 8, !range !15, !noalias !987, !noundef !6
  %.not4.i52 = icmp eq i64 %i.dx, -1
  br i1 %.not4.i52, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !987
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.dy = load ptr, ptr %i.e, align 8, !alias.scope !996, !noalias !987, !nonnull !6, !noundef !6
  %7 = atomicrmw add ptr %i.dy, i64 -1 release, align 8, !noalias !997
  %i.dz = icmp eq i64 %7, 1
  br i1 %i.dz, label %bb.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !988
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !987
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !987
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.ea = load ptr, ptr %i.e, align 8, !alias.scope !1000, !noalias !987, !nonnull !6, !noundef !6
  %8 = atomicrmw add ptr %i.ea, i64 -1 release, align 8, !noalias !1001
  %i.eb = icmp eq i64 %8, 1
  br i1 %i.eb, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !noalias !988
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i54: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !987
  %umax.i.i.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.dd)
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47275.not = icmp ult i64 %i.dd, %i.cv
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i47275.not, label %.lr.ph276, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i

bb.ak:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !988
  unreachable

bb.al:                                            ; preds = %bb.c
  %.val34 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val35 = load ptr, ptr %i.ed, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val35, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !8, !invariant.load !6
  %i.eg = add nsw i64 %i.ef, -1
  %i.eh = and i64 %i.eg, -16
  %i.ei = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = getelementptr i8, ptr %.val35, i64 32
  %.val.i.i55 = load ptr, ptr %i.ek, align 8
  %i.el = tail call { ptr, ptr } %.val.i.i55(ptr noundef nonnull %i.ej), !inline_history !1 ; 2 uses
  %i.em = extractvalue { ptr, ptr } %i.el, 0      ; 10 uses
  %i.en = extractvalue { ptr, ptr } %i.el, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !invariant.load !6, !nonnull !6
  call void %i.ep(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef %i.em), !inline_history !1
  %i.eq = load i128, ptr %i.c, align 16, !noundef !6
  %i.er = icmp ne i128 %i.eq, 90189382463122623267183234748201210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not1.i56 = icmp eq ptr %i.em, null
  %.not.i57 = or i1 %.not1.i56, %i.er
  br i1 %.not.i57, label %bb.am, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 56 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !noundef !6
  %i.eu = lshr i64 %i.et, 3
  %i.ev = add nsw i64 %i.eu, -1                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271272 = icmp eq i64 %i.ev, 0
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271272, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74
  %umax.i.i.i.i.i66274 = phi i64 [ %umax.i.i.i.i.i66, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74 ], [ %i.ev, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %.sroa.5.0.i65273 = phi i64 [ %i.ff, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74 ], [ 0, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit ]
  %i.fd = load ptr, ptr %i.ew, align 8, !alias.scope !1003, !noalias !1004, !noundef !6
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.fd, null
  br label %bb.an

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates0_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67 = icmp eq i64 %i.ff, %umax.i.i.i.i.i66274
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i
  %i.fe = phi i64 [ %.sroa.5.0.i65273, %.lr.ph ], [ %i.ff, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i ] ; 6 uses
  %i.ff = add i64 %i.fe, 1                        ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fg = load i64, ptr %i.ex, align 8, !alias.scope !1005, !noalias !1004, !noundef !6
  %i.fh = icmp ult i64 %i.fe, %i.fg
  br i1 %i.fh, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates0_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, label %bb.ap, !prof !12

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #20, !noalias !1006
  unreachable

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates0_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i: ; preds = %bb.ao
  %i.fi = load ptr, ptr %i.ey, align 8, !alias.scope !1005, !noalias !1004, !noundef !6
  %i.fj = load i64, ptr %i.ez, align 8, !alias.scope !1005, !noalias !1004, !noundef !6
  %i.fk = add i64 %i.fj, %i.fe                    ; 2 uses
  %i.fl = lshr i64 %i.fk, 3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !1006, !noundef !6
  %i.fo = trunc i64 %i.fk to i8
  %i.fp = and i8 %i.fo, 7
  %i.fq = xor i8 %i.fn, -1
  %i.fr = lshr i8 %i.fq, %i.fp
  %.fr3.i.i.i.i.i.i69 = freeze i8 %i.fr
  %i.fs = trunc i8 %.fr3.i.i.i.i.i.i69 to i1
  br i1 %i.fs, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtBT_21StatisticsAccumulator6updates0_0INtB7_5FnMutTRjEE8call_mutBT_.exit.i.i.i.i.i.i, %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.ft = load ptr, ptr %i.fa, align 8, !alias.scope !1007, !noalias !1008, !noundef !6 ; 2 uses
  %i.fu = load i64, ptr %i.es, align 8, !alias.scope !1007, !noalias !1008, !noundef !6
  %i.fv = lshr i64 %i.fu, 3                       ; 4 uses
  %i.fw = icmp ult i64 %i.ff, %i.fv
  br i1 %i.fw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fx = icmp ult i64 %i.fe, %i.fv
  br i1 %i.fx, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ff, i64 noundef %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20, !noalias !1009
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20, !noalias !1009
  unreachable

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i: ; preds = %bb.ar
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.ff
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !1009, !noundef !6
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fe
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !1009, !noundef !6 ; 2 uses
  %i.gc = sub i64 %i.fz, %i.gb
  %i.gd = call { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_5slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fb, i64 noundef %i.gb, i64 noundef %i.gc), !noalias !1008 ; 2 uses
  %i.ge = extractvalue { ptr, ptr } %i.gd, 0      ; 2 uses
  %.not.i70 = icmp eq ptr %i.ge, null
  br i1 %.not.i70, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i
  %i.gf = extractvalue { ptr, ptr } %i.gd, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1010
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gf) ]
  store ptr %i.ge, ptr %i.b, align 8, !noalias !1010
  store ptr %i.gf, ptr %i.fc, align 8, !noalias !1010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1010
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator11update_item(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.ax unwind label %bb.av, !noalias !1011

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4find5checkjQNCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1j_21StatisticsAccumulator6updates0_0E0B1j_.exit.i.i.i.i.i, %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray7as_listxECsfUv75jb5FCv_17lance_arrow_stats.exit
  store i64 -1, ptr %0, align 8, !alias.scope !1002
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.av:                                            ; preds = %bb.au
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.gh = load ptr, ptr %i.b, align 8, !alias.scope !1014, !noalias !1010, !nonnull !6, !noundef !6
  %9 = atomicrmw add ptr %i.gh, i64 -1 release, align 8, !noalias !1015
  %i.gi = icmp eq i64 %9, 1
  br i1 %i.gi, label %bb.aw, label %common.resume

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.bc, !noalias !1011

bb.ax:                                            ; preds = %bb.au
  %i.gj = load i64, ptr %i.a, align 8, !range !15, !noalias !1010, !noundef !6
  %.not4.i72 = icmp eq i64 %i.gj, -1
  br i1 %.not4.i72, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1010
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.gk = load ptr, ptr %i.b, align 8, !alias.scope !1019, !noalias !1010, !nonnull !6, !noundef !6
  %10 = atomicrmw add ptr %i.gk, i64 -1 release, align 8, !noalias !1020
  %i.gl = icmp eq i64 %10, 1
  br i1 %i.gl, label %bb.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73

bb.az:                                            ; preds = %bb.ay
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !1011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1010
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1010
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.gm = load ptr, ptr %i.b, align 8, !alias.scope !1023, !noalias !1010, !nonnull !6, !noundef !6
  %11 = atomicrmw add ptr %i.gm, i64 -1 release, align 8, !noalias !1024
  %i.gn = icmp eq i64 %11, 1
  br i1 %i.gn, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !1011
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit7.i74: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1010
  %umax.i.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.ev, i64 %i.ff)
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271.not = icmp ult i64 %i.ff, %i.ev
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i67271.not, label %.lr.ph, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i

bb.bc:                                            ; preds = %bb.aw
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !1011
  unreachable

bb.bd:                                            ; preds = %bb.e
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gq = tail call fastcc noundef i64 @_RNvNtCsfUv75jb5FCv_17lance_arrow_stats3nan10count_nans(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.gr = load i64, ptr %i.gp, align 8, !noundef !6
  %i.gs = add i64 %i.gr, %i.gq
  store i64 %i.gs, ptr %i.gp, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RNvCsfUv75jb5FCv_17lance_arrow_stats12find_min_max(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.gu = load i8, ptr %i.gt, align 8, !range !16, !noundef !6 ; 2 uses
  %i.gv = icmp eq i8 %i.gu, -1
  br i1 %i.gv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.526.0..sroa_idx, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09, i64 48, i1 false)
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 %i.gu, ptr %.sroa.7.0..sroa_idx10, align 8
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  %.sroa.8.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 1 dereferenceable(56) %.sroa.8.56..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_min(ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.i)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_RNvMCsfUv75jb5FCv_17lance_arrow_statsNtB2_21StatisticsAccumulator10update_max(ptr noalias noundef align 8 dereferenceable(184) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.k)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit

_RINvMCsfUv75jb5FCv_17lance_arrow_statsNtB3_21StatisticsAccumulator12update_itemsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1l_6filter6FilterINtNtNtB1p_3ops5range5RangejENCNvB2_6update0ENCB2W_s_0EEB3_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i73, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates0_0ENCB1M_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i53, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6updates2_0ENCB1M_s3_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsfUv75jb5FCv_17lance_arrow_stats.exit6.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_3ops5range5RangejENCNvMCsfUv75jb5FCv_17lance_arrow_statsNtB1P_21StatisticsAccumulator6update0ENCB1M_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_.exit.thread.i, %bb.bh, %.split, %bb.bf, %bb.d
  ret void

bb.bi:                                            ; preds = %bb.bg
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCskqViAy2tSOx_18lance_arrow_scalar11ArrowScalarEECsfUv75jb5FCv_17lance_arrow_stats(ptr noalias noundef align 8 dereferenceable(56) %i.k) #17
          to label %common.resume unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtCsfUv75jb5FCv_17lance_arrow_stats3nan10count_nans(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 12 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 12 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 12 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [16 x i8], align 16               ; 4 uses
  %i.m = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.n = load i8, ptr %i.m, align 8, !range !7, !noundef !6
  switch i8 %i.n, label %.loopexit [
    i8 10, label %bb.b
    i8 11, label %bb.d
    i8 12, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.o, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !8, !invariant.load !6
  %i.r = add nsw i64 %i.q, -1
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr i8, ptr %.val17, i64 32
  %.val.i.i = load ptr, ptr %i.v, align 8
  %i.w = tail call { ptr, ptr } %.val.i.i(ptr noundef nonnull %i.u), !inline_history !1025 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 8 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !6, !nonnull !6
  call void %i.aa(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noundef %i.x), !inline_history !1025
  %i.ab = load i128, ptr %i.l, align 16, !noundef !6
  %i.ac = icmp ne i128 %i.ab, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not1.i = icmp eq ptr %i.x, null
  %.not.i = or i1 %.not1.i, %i.ac
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = lshr i64 %i.ae, 1                       ; 8 uses
  %.not75 = icmp eq i64 %i.af, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types11Float16TypeECsfUv75jb5FCv_17lance_arrow_stats.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ak = getelementptr i8, ptr %i.x, i64 32      ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !alias.scope !1049, !noundef !6
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader, label %.lr.ph68.split.preheader

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader: ; preds = %.lr.ph68
  %.val22.us.pre = load ptr, ptr %i.ak, align 8   ; 2 uses
  %i.an = add nsw i64 %i.af, -1
  %i.ao = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.an) ; 2 uses
  %min.iters.check142 = icmp samesign ult i64 %i.ao, 4
  br i1 %min.iters.check142, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader156, label %vector.ph143

vector.ph143:                                     ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsfUv75jb5FCv_17lance_arrow_stats.exit.thread.us.preheader
  %i.ap = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.aq = and i64 %i.ap, 3                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = select i1 %i.ar, i64 4, i64 %i.aq
  %n.vec144 = sub i64 %i.ap, %i.as                ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 3 uses
  %vec.phi147 = phi <2 x i64> [ zeroinitializer, %vector.ph143 ], [ %i.bc, %vector.body145 ]
  %vec.phi148 = phi <2 x i64> [ zeroinitializer, %vector.ph143 ], [ %i.bd, %vector.body145 ]
  %i.at = or disjoint i64 %index146, 3
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.at, ptr %i.i, align 8
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.val22.us.pre, i64 %index146 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %wide.load149 = load <2 x i16>, ptr %i.au, align 2
  %wide.load150 = load <2 x i16>, ptr %i.av, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aw = and <2 x i16> %wide.load149, splat (i16 32767)
  %i.ax = and <2 x i16> %wide.load150, splat (i16 32767)
  %i.ay = icmp samesign ugt <2 x i16> %i.aw, splat (i16 31744)
  %i.az = icmp samesign ugt <2 x i16> %i.ax, splat (i16 31744)
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = zext <2 x i1> %i.az to <2 x i64>
  %i.bc = add <2 x i64> %vec.phi147, %i.ba        ; 2 uses
  %i.bd = add <2 x i64> %vec.phi148, %i.bb        ; 2 uses
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.be, label %middle.block152, label %vector.body145, !llvm.loop !1030

middle.block152:                                  ; preds = %vector.body145
  %bin.rdx153 = add <2 x i64> %i.bd, %i.bc
end_hunk_1
