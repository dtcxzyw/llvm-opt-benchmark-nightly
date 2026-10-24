Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.13?download=true
inline.NumInlined: 1332
inline.NumDeleted: 801
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 42
begin_hunk_0
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c">\00\00\00\00\00\00\00\AC\00\00\00/\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c">\00\00\00\00\00\00\00\B6\00\00\00/\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c">\00\00\00\00\00\00\00\8B\00\00\005\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c">\00\00\00\00\00\00\00\95\00\00\005\00\00\00" }>, align 8
@57 = private unnamed_addr constant [44 x i8] c"Insufficient bytes for Delta encoding header", align 1
@58 = private unnamed_addr constant [59 x i8] c"Not enough bytes for all bitpacked values in delta encoding", align 1
@59 = private unnamed_addr constant [46 x i8] c"No min-delta value in delta encoding miniblock", align 1
@60 = private unnamed_addr constant [47 x i8] c"crates/polars-parquet/src/arrow/write/utils.rs\00", align 1
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c".\00\00\00\00\00\00\00&\00\00\00+\00\00\00" }>, align 8
@62 = private unnamed_addr constant [70 x i8] c"crates/polars-parquet/src/arrow/read/deserialize/fixed_size_binary.rs\00", align 1
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\9F\01\00\00C\00\00\00" }>, align 8
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\9F\01\00\00,\00\00\00" }>, align 8
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\B0\01\00\00P\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\B0\01\00\008\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\C3\01\00\00L\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\C3\01\00\004\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\D9\01\00\00P\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\D9\01\00\008\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\A5\01\00\00H\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @62, [16 x i8] c"E\00\00\00\00\00\00\00\A5\01\00\000\00\00\00" }>, align 8
@73 = private unnamed_addr constant [34 x i8] c"\12Byte Array length \C0\0C out of spec\00", align 1
@74 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@75 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@76 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEBM_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsh_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB5_12ParquetErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCscgRAwXFJnXP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCscgRAwXFJnXP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@79 = private unnamed_addr constant [37 x i8] c"assertion failed: len == bitmap.len()", align 1
@80 = private unnamed_addr constant [43 x i8] c"crates/polars-arrow/src/bitmap/iterator.rs\00", align 1
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"*\00\00\00\00\00\00\00)\00\00\00\0D\00\00\00" }>, align 8
@82 = private unnamed_addr constant [49 x i8] c"The max_value of statistics MUST be plain encoded", align 1
@83 = private unnamed_addr constant [49 x i8] c"The min_value of statistics MUST be plain encoded", align 1
@84 = private unnamed_addr constant [35 x i8] c"crates/polars-utils/src/idx_vec.rs\00", align 1
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"\22\00\00\00\00\00\00\00\8B\00\00\000\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"\22\00\00\00\00\00\00\00}\00\00\000\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"\22\00\00\00\00\00\00\00~\00\00\00\0E\00\00\00" }>, align 8
@88 = private unnamed_addr constant [36 x i8] c"assertion failed: index < self.len()", align 1
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c")\00\00\00\00\00\00\00\A6\00\00\00\09\00\00\00" }>, align 8
@90 = private unnamed_addr constant [50 x i8] c"assertion failed: bytes.len() <= u32::MAX as usize", align 1
@91 = private unnamed_addr constant [49 x i8] c"crates/polars-arrow/src/array/binview/mutable.rs\00", align 1
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @91, [16 x i8] c"0\00\00\00\00\00\00\00-\01\00\00\09\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @91, [16 x i8] c"0\00\00\00\00\00\00\00R\01\00\00J\00\00\00" }>, align 8
@94 = private unnamed_addr constant [44 x i8] c"crates/polars-arrow/src/bitmap/immutable.rs\00", align 1
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @94, [16 x i8] c"+\00\00\00\00\00\00\00\BF\00\00\00\1A\00\00\00" }>, align 8
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00\FC\02\00\00\09\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00\A6\01\00\00\14\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00\B0\01\00\002\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00\BA\01\00\00,\00\00\00" }>, align 8
@100 = private unnamed_addr constant [63 x i8] c"crates/polars-parquet/src/parquet/encoding/bitpacked/decode.rs\00", align 1
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @100, [16 x i8] c">\00\00\00\00\00\00\002\00\00\00<\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00\BB\01\00\00\1B\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00\B3\01\00\00#\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00\AF\01\00\00#\00\00\00" }>, align 8
@105 = private unnamed_addr constant [8 x i8] zeroinitializer, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\001\01\00\00\14\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00|\01\00\00\1D\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00N\01\00\00%\00\00\00" }>, align 8
@109 = private unnamed_addr constant [71 x i8] c"'Delta encoding miniblock with bitwidth \C0\15 higher than maximum \C0\05 bits\00", align 1
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\002\01\00\00\09\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\001\01\00\00\09\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"E\00\00\00\00\00\00\00$\01\00\00\09\00\00\00" }>, align 8
@113 = private unnamed_addr constant [81 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/core/src/char/methods.rs\00", align 1
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @113, [16 x i8] c"P\00\00\00\00\00\00\00\18\08\00\00\09\00\00\00" }>, align 8
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c".\00\00\00\00\00\00\00\06\01\00\002\00\00\00" }>, align 8
@116 = private unnamed_addr constant [46 x i8] c"\09Datatype \C0\16 cannot be encoded by \C0\09 encoding\00", align 1
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c".\00\00\00\00\00\00\00\9E\00\00\00\05\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c".\00\00\00\00\00\00\00\F6\00\00\00\0C\00\00\00" }>, align 8
@119 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c".\00\00\00\00\00\00\00\ED\00\00\00Y\00\00\00" }>, align 8
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c".\00\00\00\00\00\00\00\ED\00\00\00O\00\00\00" }>, align 8
@121 = private unnamed_addr constant [52 x i8] c"1Cannot represent INT32 as DECIMAL with precision \C0\00", align 1
@122 = private unnamed_addr constant [52 x i8] c"1Cannot represent INT64 as DECIMAL with precision \C0\00", align 1
@123 = private unnamed_addr constant [115 x i8] c"=Cannot represent FIXED_LEN_BYTE_ARRAY as DECIMAL with length \C0\0F and precision \C0 . The max precision can only be \C0\00", align 1
@124 = private unnamed_addr constant [75 x i8] c"DECIMAL can only annotate INT32, INT64, BYTE_ARRAY and FIXED_LEN_BYTE_ARRAY", align 1
@125 = private unnamed_addr constant [67 x i8] c"\18Invalid DECIMAL: scale (\C0$) cannot be greater than precision (\C0\01)\00", align 1
@126 = private unnamed_addr constant [50 x i8] c"/DECIMAL precision must be larger than 0; It is \C0\00", align 1
@127 = private unnamed_addr constant [41 x i8] c"Cannot use millisecond unit on INT64 type", align 1
@128 = private unnamed_addr constant [35 x i8] c"\10Cannot annotate \C0\06 from \C0\07 fields\00", align 1
@129 = private unnamed_addr constant [40 x i8] c"ENUM can only annotate BYTE_ARRAY fields", align 1
@130 = private unnamed_addr constant [27 x i8] c"\C0\18 can only annotate INT32\00", align 1
@131 = private unnamed_addr constant [27 x i8] c"\C0\18 can only annotate INT64\00", align 1
@132 = private unnamed_addr constant [39 x i8] c"\C0$ can only annotate BYTE_ARRAY fields\00", align 1
@133 = private unnamed_addr constant [51 x i8] c"INTERVAL can only annotate FIXED_LEN_BYTE_ARRAY(12)", align 1
@134 = private unnamed_addr constant [76 x i8] c"crates/polars-parquet/src/arrow/read/deserialize/binview/optional_masked.rs\00", align 1
@135 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @134, [16 x i8] c"K\00\00\00\00\00\00\00\11\00\00\00\05\00\00\00" }>, align 8
@136 = private unnamed_addr constant [71 x i8] c"\12encode_utf8: need \C0\13 bytes to encode U+\C3 \00\00i\04\00\15 but buffer has just \C0\00", align 1
@137 = private unnamed_addr constant [19 x i8] c"Thrift out of range", align 1
@138 = private unnamed_addr constant [38 x i8] c"Decimal requires a precision and scale", align 1
@139 = private unnamed_addr constant [59 x i8] c"\10Converted type \22\C0'\22 cannot be applied to a primitive type\00", align 1
@140 = private unnamed_addr constant [33 x i8] c"\1EInvalid delta encoding length \C0\00", align 1
@141 = private unnamed_addr constant [29 x i8] c"Invalid delta encoding length", align 1
@142 = private unnamed_addr constant [18 x i8] c"variant identifier", align 1
@143 = private unnamed_addr constant [43 x i8] c"tuple variant PrimitiveLogicalType::Decimal", align 1
@144 = private unnamed_addr constant [45 x i8] c"tuple variant PrimitiveConvertedType::Decimal", align 1
@145 = private unnamed_addr constant [15 x i8] c"enum Repetition", align 1
@146 = private unnamed_addr constant [16 x i8] c"enum Compression", align 1
@147 = private unnamed_addr constant [13 x i8] c"enum TimeUnit", align 1
@148 = private unnamed_addr constant [16 x i8] c"enum IntegerType", align 1
@149 = private unnamed_addr constant [25 x i8] c"enum PrimitiveLogicalType", align 1
@150 = private unnamed_addr constant [21 x i8] c"enum GroupLogicalType", align 1
@151 = private unnamed_addr constant [27 x i8] c"enum PrimitiveConvertedType", align 1
@152 = private unnamed_addr constant [23 x i8] c"enum GroupConvertedType", align 1
@153 = private unnamed_addr constant [12 x i8] c"Milliseconds", align 1
@154 = private unnamed_addr constant [12 x i8] c"Microseconds", align 1
@155 = private unnamed_addr constant [11 x i8] c"Nanoseconds", align 1
@156 = private unnamed_addr constant [41 x i8] c"struct variant PrimitiveLogicalType::Time", align 1
@157 = private unnamed_addr constant [4 x i8] c"Int8", align 1
@158 = private unnamed_addr constant [5 x i8] c"Int16", align 1
@159 = private unnamed_addr constant [5 x i8] c"Int32", align 1
@160 = private unnamed_addr constant [5 x i8] c"Int64", align 1
@161 = private unnamed_addr constant [5 x i8] c"UInt8", align 1
@162 = private unnamed_addr constant [6 x i8] c"UInt16", align 1
@163 = private unnamed_addr constant [6 x i8] c"UInt32", align 1
@164 = private unnamed_addr constant [6 x i8] c"UInt64", align 1
@165 = private unnamed_addr constant [6 x i8] c"String", align 1
@166 = private unnamed_addr constant [4 x i8] c"Enum", align 1
@167 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@168 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRjNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet }>, align 8
@169 = private unnamed_addr constant [7 x i8] c"Decimal", align 1
@170 = private unnamed_addr constant [4 x i8] c"Date", align 1
@171 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs17_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@172 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRbNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet }>, align 8
@173 = private unnamed_addr constant [4 x i8] c"Time", align 1
@174 = private unnamed_addr constant [4 x i8] c"unit", align 1
@175 = private unnamed_addr constant [18 x i8] c"is_adjusted_to_utc", align 1
@176 = private unnamed_addr constant [9 x i8] c"Timestamp", align 1
@177 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11IntegerTypeNtB6_5Debug3fmtBC_ }>, align 8
@178 = private unnamed_addr constant [7 x i8] c"Integer", align 1
@179 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@180 = private unnamed_addr constant [4 x i8] c"Json", align 1
@181 = private unnamed_addr constant [4 x i8] c"Bson", align 1
@182 = private unnamed_addr constant [4 x i8] c"Uuid", align 1
@183 = private unnamed_addr constant [7 x i8] c"Float16", align 1
@184 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRlNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet }>, align 8
@185 = private unnamed_addr constant [13 x i8] c"ConvertedType", align 1
@186 = private unnamed_addr constant [55 x i8] c"crates/polars-arrow/src/array/fixed_size_binary/mod.rs\00", align 1
@187 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @186, [16 x i8] c"6\00\00\00\00\00\00\00\89\00\00\00\09\00\00\00" }>, align 8
@188 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@189 = private unnamed_addr constant [46 x i8] c"struct variant PrimitiveLogicalType::Timestamp", align 1
@190 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet }>, align 8
@191 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@192 = private unnamed_addr constant [4 x i8] c"Utf8", align 1
@193 = private unnamed_addr constant [10 x i8] c"TimeMillis", align 1
@194 = private unnamed_addr constant [10 x i8] c"TimeMicros", align 1
@195 = private unnamed_addr constant [15 x i8] c"TimestampMillis", align 1
@196 = private unnamed_addr constant [15 x i8] c"TimestampMicros", align 1
@197 = private unnamed_addr constant [5 x i8] c"Uint8", align 1
@198 = private unnamed_addr constant [6 x i8] c"Uint16", align 1
@199 = private unnamed_addr constant [6 x i8] c"Uint32", align 1
@200 = private unnamed_addr constant [6 x i8] c"Uint64", align 1
@201 = private unnamed_addr constant [8 x i8] c"Interval", align 1
@202 = private unnamed_addr constant [39 x i8] c"BoundaryOrder Thrift value out of range", align 1
@203 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet }>, align 8
@204 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@205 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@206 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@207 = private unnamed_addr constant [6 x i8] c"Snappy", align 1
@208 = private unnamed_addr constant [6 x i8] c"Brotli", align 1
@209 = private unnamed_addr constant [4 x i8] c"Gzip", align 1
@210 = private unnamed_addr constant [3 x i8] c"Lz4", align 1
@211 = private unnamed_addr constant [4 x i8] c"Zstd", align 1
@212 = private unnamed_addr constant [5 x i8] c"Plain", align 1
@213 = private unnamed_addr constant [15 x i8] c"PlainDictionary", align 1
@214 = private unnamed_addr constant [3 x i8] c"Rle", align 1
@215 = private unnamed_addr constant [9 x i8] c"BitPacked", align 1
@216 = private unnamed_addr constant [17 x i8] c"DeltaBinaryPacked", align 1
@217 = private unnamed_addr constant [20 x i8] c"DeltaLengthByteArray", align 1
@218 = private unnamed_addr constant [14 x i8] c"DeltaByteArray", align 1
@219 = private unnamed_addr constant [13 x i8] c"RleDictionary", align 1
@220 = private unnamed_addr constant [15 x i8] c"ByteStreamSplit", align 1
@221 = private unnamed_addr constant [30 x i8] c"LogicalType value out of range", align 1
@222 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-8.0.3/src/enc/prior_eval.rs\00", align 1
@223 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @222, [16 x i8] c"g\00\00\00\00\00\00\001\03\00\00\13\00\00\00" }>, align 8
@224 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet }>, align 8
@225 = private unnamed_addr constant [9 x i8] c"OutOfSpec", align 1
@226 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB5_7FeatureNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@227 = private unnamed_addr constant [16 x i8] c"FeatureNotActive", align 1
@228 = private unnamed_addr constant [19 x i8] c"FeatureNotSupported", align 1
@229 = private unnamed_addr constant [16 x i8] c"InvalidParameter", align 1
@230 = private unnamed_addr constant [17 x i8] c"WouldOverAllocate", align 1
@231 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"\22\00\00\00\00\00\00\00|\01\00\00H\00\00\00" }>, align 8
@232 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"\22\00\00\00\00\00\00\00}\01\00\00*\00\00\00" }>, align 8
@233 = private unnamed_addr constant [2 x i8] c"()", align 1
@switch.table._RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write7binview5basic13array_to_page = private unnamed_addr constant [9 x i8] c"\00\02\03\04\05\06\07\08\09", align 4
@switch.table._RNvXs17_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\0C\0C\0B", align 8
@switch.table._RNvXs17_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB6_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.283 = private unnamed_addr constant [3 x ptr] [ptr @153, ptr @154, ptr @155], align 8
@switch.table._RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11IntegerTypeNtB6_5Debug3fmtBC_ = private unnamed_addr constant [8 x i8] c"\04\05\05\05\05\06\06\06", align 8
@switch.table._RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11IntegerTypeNtB6_5Debug3fmtBC_.284 = private unnamed_addr constant [8 x ptr] [ptr @157, ptr @158, ptr @159, ptr @160, ptr @161, ptr @162, ptr @163, ptr @164], align 8
@switch.table._RNvXs6_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_8EncodingINtNtCscgRAwXFJnXP_4core7convert7TryFromNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8EncodingE8try_from = private unnamed_addr constant [10 x i8] [i8 0, i8 poison, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8], align 1
@switch.table._RNvXs9_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB5_7FeatureNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\06\06\04\03\04", align 8
@switch.table._RNvXs9_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB5_7FeatureNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.286 = private unnamed_addr constant [5 x ptr] [ptr @207, ptr @208, ptr @209, ptr @210, ptr @211], align 8
@switch.table._RNvXsQ_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_8EncodingNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [9 x i8] c"\05\0F\03\09\11\14\0E\0D\0F", align 8
@switch.table._RNvXsQ_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_8EncodingNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.287 = private unnamed_addr constant [9 x ptr] [ptr @212, ptr @213, ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE15extend_constantRAhj0_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(160) %0, i64 noundef %1, ptr noalias noundef readonly captures(address_is_null) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1205 {
bb.a:
  %.sroa.5 = alloca [16 x i8], align 8            ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %.not14 = icmp eq ptr %2, null, !dbg !1229      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !641 ; 2 uses
  %.not = icmp eq i64 %i.d, -9223372036854775808
  %or.cond = select i1 %.not14, i1 %.not, i1 false, !dbg !1230
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !1230

bb.b:                                             ; preds = %bb.c, %bb.a
  %3 = phi i64 [ %.pre, %bb.c ], [ %i.d, %bb.a ], !dbg !1231
  %.not13 = icmp eq i64 %3, -9223372036854775808, !dbg !1231
  %i.e = icmp eq i64 %1, 0                        ; 2 uses
  %or.cond18 = or i1 %i.e, %.not13, !dbg !1232
  br i1 %or.cond18, label %bb.d, label %bb.e, !dbg !1232

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13init_validityCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext false), !dbg !1233
  %.pre = load i64, ptr %i.c, align 8, !dbg !1231, !range !641
  br label %bb.b, !dbg !1233

bb.d:                                             ; preds = %bb.b
  br i1 %.not14, label %bb.g, label %bb.f, !dbg !1234

bb.e:                                             ; preds = %bb.b
  br i1 %.not14, label %.thread, label %.thread20, !dbg !1235

.thread:                                          ; preds = %bb.e
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap12extend_unset(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %1), !dbg !1236
  br label %bb.g, !dbg !1234

.thread20:                                        ; preds = %bb.e
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %1), !dbg !1237
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 0), !dbg !1238
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !1225
  br label %bb.h, !dbg !1239

bb.f:                                             ; preds = %bb.d
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef 0), !dbg !1238
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !1225
  br i1 %i.e, label %bb.i, label %bb.h, !dbg !1239

bb.g:                                             ; preds = %.thread, %bb.i, %bb.d
  ret void, !dbg !1240

bb.h:                                             ; preds = %.thread20, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !1241
  br label %bb.i, !dbg !1242

bb.i:                                             ; preds = %bb.f, %bb.h
  store i64 %1, ptr %i.a, align 8, !dbg !1243
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false), !dbg !1243
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !1244
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNBG_EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a), !dbg !1245
  %i.f = load i32, ptr %i.b, align 4, !dbg !1246, !noundef !634
  %i.g = zext i32 %i.f to i64, !dbg !1246
  %i.h = mul i64 %1, %i.g, !dbg !1246
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !1247 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !1247, !noundef !634
  %i.k = add i64 %i.h, %i.j, !dbg !1247
  store i64 %i.k, ptr %i.i, align 8, !dbg !1247
  br label %bb.g, !dbg !1248
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE15extend_constantRB1u_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(160) %0, i64 noundef %1, ptr noalias noundef readonly captures(address_is_null) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1249 {
bb.a:
  %.sroa.512 = alloca [16 x i8], align 8          ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %.not19 = icmp eq ptr %2, null, !dbg !1273      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !641 ; 2 uses
  %.not = icmp eq i64 %i.d, -9223372036854775808
  %or.cond = select i1 %.not19, i1 %.not, i1 false, !dbg !1274
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !1274

bb.b:                                             ; preds = %bb.c, %bb.a
  %4 = phi i64 [ %.pre, %bb.c ], [ %i.d, %bb.a ], !dbg !1275
  %.not18 = icmp eq i64 %4, -9223372036854775808, !dbg !1275
  %i.e = icmp eq i64 %1, 0                        ; 2 uses
  %or.cond23 = or i1 %i.e, %.not18, !dbg !1276
  br i1 %or.cond23, label %bb.d, label %bb.e, !dbg !1276

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13init_validityCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext false), !dbg !1277
  %.pre = load i64, ptr %i.c, align 8, !dbg !1275, !range !641
  br label %bb.b, !dbg !1277

bb.d:                                             ; preds = %bb.b
  br i1 %.not19, label %bb.g, label %bb.f, !dbg !1278

bb.e:                                             ; preds = %bb.b
  br i1 %.not19, label %.thread, label %.thread27, !dbg !1279

.thread:                                          ; preds = %bb.e
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap12extend_unset(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %1), !dbg !1280
  br label %bb.g, !dbg !1278

.thread27:                                        ; preds = %bb.e
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %1), !dbg !1281
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !1282
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512), !dbg !1269
  br label %bb.h, !dbg !1283

bb.f:                                             ; preds = %bb.d
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !1282
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512), !dbg !1269
  br i1 %i.e, label %bb.i, label %bb.h, !dbg !1283

bb.g:                                             ; preds = %.thread, %bb.i, %bb.d
  ret void, !dbg !1284

bb.h:                                             ; preds = %.thread27, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !1285
  br label %bb.i, !dbg !1286

bb.i:                                             ; preds = %bb.f, %bb.h
  store i64 %1, ptr %i.a, align 8, !dbg !1287
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512, i64 16, i1 false), !dbg !1287
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512), !dbg !1288
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNBG_EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a), !dbg !1289
  %i.f = load i32, ptr %i.b, align 4, !dbg !1290, !noundef !634
  %i.g = zext i32 %i.f to i64, !dbg !1290
  %i.h = mul i64 %1, %i.g, !dbg !1290
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !1291 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !1291, !noundef !634
  %i.k = add i64 %i.h, %i.j, !dbg !1291
  store i64 %i.k, ptr %i.i, align 8, !dbg !1291
  br label %bb.g, !dbg !1292
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoNtB5_11SumGathererEBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(648) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2, i64 noundef %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1293 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 608, !dbg !1480
  %.val = load i64, ptr %i.g, align 8, !dbg !1480, !noundef !634 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 632, !dbg !1480 ; 4 uses
  %.val35 = load i64, ptr %i.h, align 8, !dbg !1480, !noundef !634
  %i.i = add i64 %.val35, %.val, !dbg !1481
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %3), !dbg !1482 ; 4 uses
  %i.j = icmp eq i64 %.sroa.0.0.i, 0, !dbg !1483
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !1483

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !1484
  br label %bb.d, !dbg !1485

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 624, !dbg !1486 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 616, !dbg !1487 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !1487, !noundef !634 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !1486
  br i1 %i.n, label %bb.f, label %bb.e, !dbg !1486

bb.d:                                             ; preds = %bb.z, %bb.aa, %bb.i, %bb.u, %bb.w, %bb.y, %bb.x, %bb.b
  ret void, !dbg !1488

bb.e:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.k, align 8, !dbg !1486, !noundef !634
  %i.p = udiv i64 %i.o, %i.m, !dbg !1486          ; 2 uses
  %.not = icmp ugt i64 %.sroa.0.0.i, %.val, !dbg !1489
  br i1 %.not, label %bb.g, label %bb.h, !dbg !1489

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !dbg !1486
  unreachable, !dbg !1486

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1458
  call fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoNtB5_11SumGathererEBd_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef align 8 dereferenceable(648) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i64 noundef %.val, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !1490
  %i.q = load i64, ptr %i.e, align 8, !dbg !1491, !range !671, !noundef !634
  %.not30 = icmp eq i64 %i.q, -9223372036854775803, !dbg !1491
  br i1 %.not30, label %bb.j, label %bb.i, !dbg !1492

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1459
  call fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoNtB5_11SumGathererEBd_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef align 8 dereferenceable(648) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i64 noundef %.sroa.0.0.i, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !1493
  %i.r = load i64, ptr %i.f, align 8, !dbg !1494, !range !671, !noundef !634
  %.not34 = icmp eq i64 %i.r, -9223372036854775803, !dbg !1494
  br i1 %.not34, label %bb.aa, label %bb.z, !dbg !1495

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !1496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1497
  br label %bb.d, !dbg !1498

bb.j:                                             ; preds = %bb.g
  %i.s = sub nuw i64 %.sroa.0.0.i, %.val, !dbg !1499 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1497
  %i.t = load i64, ptr %i.h, align 8, !dbg !1500, !noundef !634 ; 2 uses
  %.sroa.0.0.i3660 = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.s), !dbg !1501
  %i.u = load i64, ptr %i.k, align 8, !dbg !1502, !noundef !634 ; 2 uses
  %.not3161 = icmp ult i64 %.sroa.0.0.i3660, %i.u, !dbg !1503
  br i1 %.not3161, label %._crit_edge, label %.lr.ph, !dbg !1503

.lr.ph:                                           ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.pre = load ptr, ptr %1, align 8, !dbg !1504
  %.pre74 = load i64, ptr %i.v, align 8, !dbg !1504
  br label %bb.k, !dbg !1503

._crit_edge:                                      ; preds = %.loopexit, %bb.j
  %.sroa.0.0.lcssa = phi i64 [ %i.s, %bb.j ], [ %i.ci, %.loopexit ], !dbg !1505 ; 2 uses
  %i.x = icmp eq i64 %.sroa.0.0.lcssa, 0, !dbg !1506
  br i1 %i.x, label %bb.u, label %bb.v, !dbg !1506

bb.k:                                             ; preds = %.lr.ph, %.loopexit
  %i.y = phi i64 [ %i.t, %.lr.ph ], [ %i.cj, %.loopexit ]
  %i.z = phi i64 [ %i.u, %.lr.ph ], [ %i.ch, %.loopexit ]
  %i.aa = phi i64 [ %.pre74, %.lr.ph ], [ %.sroa.12.0.lcssa.i, %.loopexit ], !dbg !1504 ; 6 uses
  %i.ab = phi ptr [ %.pre, %.lr.ph ], [ %.sroa.0.0.lcssa.i, %.loopexit ], !dbg !1504 ; 3 uses
  %.sroa.0.062 = phi i64 [ %i.s, %.lr.ph ], [ %i.ci, %.loopexit ]
  %i.ac = load i64, ptr %i.l, align 8, !dbg !1507, !noundef !634 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461), !dbg !1477
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa, !dbg !1508
  %i.ae = icmp samesign eq i64 %i.aa, 0, !dbg !1509
  br i1 %i.ae, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i, label %.lr.ph.i.i.i, !dbg !1510

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 0, %bb.k ]
  %.sroa.02.010.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %.sroa.06.08.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.ab, %bb.k ] ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.04.09.i.i.i, 1, !dbg !1511 ; 3 uses
  %i.ag = load i8, ptr %.sroa.06.08.i.i.i, align 1, !dbg !1512, !alias.scope !1462, !noundef !634 ; 2 uses
  %i.ah = and i8 %i.ag, 127, !dbg !1513
  %i.ai = zext nneg i8 %i.ah to i64, !dbg !1514
  %i.aj = and i32 %.sroa.02.010.i.i.i, 63, !dbg !1515
  %i.ak = zext nneg i32 %i.aj to i64, !dbg !1515
  %i.al = shl i64 %i.ai, %i.ak, !dbg !1515
  %i.am = or i64 %i.al, %.sroa.0.011.i.i.i, !dbg !1516 ; 3 uses
  %i.an = icmp sgt i8 %i.ag, -1, !dbg !1517
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 1 ; 2 uses
  %i.ap = add i32 %.sroa.02.010.i.i.i, 7
  %i.aq = icmp eq ptr %i.ao, %i.ad
  %or.cond.i.i.i = select i1 %i.an, i1 true, i1 %i.aq, !dbg !1517
  br i1 %or.cond.i.i.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i, label %.lr.ph.i.i.i, !dbg !1517

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ar = lshr i64 %i.am, 1, !dbg !1518
  %i.as = and i64 %i.am, 1, !dbg !1519
  %i.at = sub nsw i64 0, %i.as, !dbg !1520
  %i.au = xor i64 %i.ar, %i.at, !dbg !1518
  %.not180.i = icmp samesign ult i64 %.sroa.04.09.i.i.i, %i.aa, !dbg !1521
  br i1 %.not180.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i, label %bb.l, !dbg !1521, !prof !710

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i, %bb.k
  %i.av = phi i64 [ %i.au, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i ], [ 0, %bb.k ]
  %.sroa.04.1.i.i176.i = phi i64 [ %i.af, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i ], [ 0, %bb.k ] ; 2 uses
  %i.aw = sub nuw nsw i64 %i.aa, %.sroa.04.1.i.i176.i, !dbg !1522 ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %i.aw, !dbg !1523
  br i1 %.not.i, label %bb.m, label %bb.o, !dbg !1523

bb.l:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !dbg !1524, !noalias !1463
  unreachable, !dbg !1524

bb.m:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1525, !noalias !1464
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 48, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !1525, !noalias !1464
  %i.ax = load i64, ptr %i.b, align 8, !dbg !1525, !range !734, !noalias !1464, !noundef !634
  %i.ay = trunc nuw i64 %i.ax to i1, !dbg !1526
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1527
  %i.ba = load i64, ptr %i.az, align 8, !dbg !1527, !range !641, !noalias !1464, !noundef !634 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1527 ; 2 uses
  br i1 %i.ay, label %bb.n, label %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_.exit.i, !dbg !1526, !prof !735

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !1528, !noalias !1464
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ba, i64 %i.bc) #30, !dbg !1529, !noalias !1464
  unreachable, !dbg !1529

_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_.exit.i: ; preds = %bb.m
  %i.bd = load ptr, ptr %i.bb, align 8, !dbg !1530, !noalias !1464, !nonnull !634, !noundef !634 ; 2 uses
  %i.be = icmp samesign ugt i64 %i.ba, 47, !dbg !1531
  tail call void @llvm.assume(i1 %i.be), !dbg !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1533, !noalias !1464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bd, ptr noundef nonnull align 1 dereferenceable(48) @45, i64 48, i1 false), !dbg !1534, !noalias !1464
  %i.bf = ptrtoint ptr %i.bd to i64, !dbg !1535
  br label %bb.y, !dbg !1536

bb.o:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.1.i.i176.i, !dbg !1537 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ac, !dbg !1538 ; 3 uses
  %i.bi = sub nuw nsw i64 %i.aw, %i.ac, !dbg !1539 ; 2 uses
  %i.bj = icmp samesign eq i64 %i.ac, 0, !dbg !1540
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i, !dbg !1541

.lr.ph.i:                                         ; preds = %bb.o, %bb.t
  %.sroa.0.0166.i = phi ptr [ %i.cc, %bb.t ], [ %i.bh, %bb.o ] ; 2 uses
  %.sroa.12.0165.i = phi i64 [ %i.cb, %bb.t ], [ %i.bi, %bb.o ] ; 2 uses
  %.sroa.033.0164.i = phi ptr [ %i.bk, %bb.t ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.033.0164.i, i64 1, !dbg !1542 ; 2 uses
  %i.bl = load i8, ptr %.sroa.033.0164.i, align 1, !dbg !1543, !alias.scope !1461, !noundef !634 ; 2 uses
  %i.bm = zext i8 %i.bl to i64, !dbg !1544
  %i.bn = mul i64 %i.p, %i.bm, !dbg !1545         ; 2 uses
  %i.bo = lshr i64 %i.bn, 3, !dbg !1546
  %i.bp = and i64 %i.bn, 7, !dbg !1547
  %.not150.i = icmp ne i64 %i.bp, 0, !dbg !1548
  %i.bq = zext i1 %.not150.i to i64, !dbg !1548
  %.sroa.057.0.i = add nuw nsw i64 %i.bo, %i.bq, !dbg !1548 ; 4 uses
  %.not151.i = icmp ugt i64 %.sroa.057.0.i, %.sroa.12.0165.i, !dbg !1549
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20254 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !20254, !alias.scope !20226, !noundef !634 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1, !dbg !20255
  tail call void @llvm.assume(i1 %i.i), !dbg !20256
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20257 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !20257, !alias.scope !20226, !nonnull !634, !noundef !634
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h, !dbg !20258
  store i32 0, ptr %i.l, align 1, !dbg !20259
  %.pre.i = load i64, ptr %i.g, align 8, !dbg !20260, !alias.scope !20226 ; 7 uses
  %i.m = add nsw i64 %.pre.i, 4, !dbg !20260      ; 2 uses
  store i64 %i.m, ptr %i.g, align 8, !dbg !20260, !alias.scope !20226
  %.not = icmp eq ptr %3, null, !dbg !20261
  br i1 %.not, label %bb.h, label %bb.g, !dbg !20262

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20263
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull align 8 %3), !dbg !20264
  %i.n = call noundef ptr @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoder6encodebINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.f, i32 noundef 1), !dbg !20227 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20265
  %.not18 = icmp eq ptr %i.n, null, !dbg !20266
  br i1 %.not18, label %bb.j, label %bb.l, !dbg !20267

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %4, 1, !dbg !20268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20269, !noalias !20228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.d, i8 0, i64 10, i1 false), !dbg !20270, !noalias !20228
  %i.p = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.o, ptr noalias noundef nonnull %i.d, i64 noundef 10), !dbg !20271, !noalias !20228 ; 3 uses
  %i.q = icmp ult i64 %i.p, 11
  br i1 %i.q, label %_RINvXs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoderbINtB5_7EncoderbE17run_length_encodeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEBd_.exit, label %bb.i, !dbg !20272, !prof !777

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.p, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #29, !dbg !20273, !noalias !20228
  unreachable, !dbg !20273

_RINvXs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoderbINtB5_7EncoderbE17run_length_encodeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEBd_.exit: ; preds = %bb.h
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, 129) %i.p), !dbg !20274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20275, !noalias !20228
  store i8 1, ptr %i.c, align 1, !dbg !20276, !noalias !20228
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1), !dbg !20277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20278, !noalias !20228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20279, !noalias !20228
  br label %bb.j, !dbg !20280

bb.j:                                             ; preds = %bb.g, %_RINvXs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoderbINtB5_7EncoderbE17run_length_encodeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEBd_.exit
  %i.r = load i64, ptr %i.g, align 8, !dbg !20281, !noundef !634 ; 4 uses
  %i.s = icmp sgt i64 %i.r, -1, !dbg !20282
  call void @llvm.assume(i1 %i.s), !dbg !20283
  %i.t = sub nsw i64 %i.r, %i.m, !dbg !20284      ; 4 uses
  %.sroa.4.0.extract.shift27 = lshr i64 %i.t, 8, !dbg !20285
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift27 to i8, !dbg !20285
  %.sroa.5.0.extract.shift28 = lshr i64 %i.t, 16, !dbg !20285
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift28 to i8, !dbg !20285
  %.sroa.6.0.extract.shift29 = lshr i64 %i.t, 24, !dbg !20285
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift29 to i8, !dbg !20285
  %i.u = icmp ult i64 %.pre.i, %i.r, !dbg !20286
  br i1 %i.u, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.i, label %bb.k, !dbg !20286

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.2.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.1.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.i, %bb.j
  %.lcssa10.i = phi i64 [ %.pre.i, %bb.j ], [ %i.x, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.i ], [ %i.ac, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.1.i ], [ %i.ah, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.2.i ], !dbg !20287
  %.lcssa.i = phi i64 [ %i.r, %bb.j ], [ %i.y, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.i ], [ %i.ad, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.1.i ], [ %i.ai, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.2.i ], !dbg !20288
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa10.i, i64 noundef %.lcssa.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #29, !dbg !20286, !noalias !20234
  unreachable, !dbg !20286

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.i: ; preds = %bb.j
  %.sroa.0.0.extract.trunc = trunc i64 %i.t to i8, !dbg !20285
  %i.v = load ptr, ptr %i.j, align 8, !dbg !20289, !noalias !20234, !nonnull !634, !noundef !634
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.pre.i, !dbg !20290
  store i8 %.sroa.0.0.extract.trunc, ptr %i.w, align 1, !dbg !20291, !noalias !20234
  %i.x = add nuw nsw i64 %.pre.i, 1, !dbg !20287  ; 3 uses
  %i.y = load i64, ptr %i.g, align 8, !dbg !20288, !noalias !20235, !noundef !634 ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y, !dbg !20286
  br i1 %i.z, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.1.i, label %bb.k, !dbg !20286

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.1.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !dbg !20289, !noalias !20235, !nonnull !634, !noundef !634
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !20290
  store i8 %.sroa.4.0.extract.trunc, ptr %i.ab, align 1, !dbg !20291, !noalias !20235
  %i.ac = add nuw i64 %.pre.i, 2, !dbg !20287     ; 3 uses
  %i.ad = load i64, ptr %i.g, align 8, !dbg !20288, !noalias !20236, !noundef !634 ; 2 uses
  %i.ae = icmp ult i64 %i.ac, %i.ad, !dbg !20286
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.2.i, label %bb.k, !dbg !20286

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.2.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.1.i
  %i.af = load ptr, ptr %i.j, align 8, !dbg !20289, !noalias !20236, !nonnull !634, !noundef !634
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac, !dbg !20290
  store i8 %.sroa.5.0.extract.trunc, ptr %i.ag, align 1, !dbg !20291, !noalias !20236
  %i.ah = add nuw i64 %.pre.i, 3, !dbg !20287     ; 3 uses
  %i.ai = load i64, ptr %i.g, align 8, !dbg !20288, !noalias !20237, !noundef !634 ; 2 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai, !dbg !20286
  br i1 %i.aj, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0EB25_.exit, label %bb.k, !dbg !20286

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0EB25_.exit: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0B1q_.exit.2.i
  %i.ak = load ptr, ptr %i.j, align 8, !dbg !20289, !noalias !20237, !nonnull !634, !noundef !634
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah, !dbg !20290
  store i8 %.sroa.6.0.extract.trunc, ptr %i.al, align 1, !dbg !20291, !noalias !20237
  br label %bb.m, !dbg !20292

bb.l:                                             ; preds = %bb.g
  call void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %i.n), !dbg !20293
  br label %bb.d, !dbg !20294

bb.m:                                             ; preds = %bb.n, %_RINvXs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoderbINtB5_7EncoderbE17run_length_encodeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEBd_.exit21, %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16write_def_levels0E0EB25_.exit
  store i64 18, ptr %0, align 8, !dbg !20295
  br label %bb.d, !dbg !20248

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !20296
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 %3), !dbg !20297
  %i.am = call noundef ptr @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoder6encodebINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.e, i32 noundef 1), !dbg !20241 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20298
  %.not20 = icmp eq ptr %i.am, null, !dbg !20299
  br i1 %.not20, label %bb.m, label %bb.q, !dbg !20300

bb.o:                                             ; preds = %bb.e
  %i.an = shl i64 %4, 1, !dbg !20301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20302, !noalias !20242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, i8 0, i64 10, i1 false), !dbg !20303, !noalias !20242
  %i.ao = call noundef i64 @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286encode(i64 noundef %i.an, ptr noalias noundef nonnull %i.b, i64 noundef 10), !dbg !20304, !noalias !20242 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 11
  br i1 %i.ap, label %_RINvXs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoderbINtB5_7EncoderbE17run_length_encodeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEBd_.exit21, label %bb.p, !dbg !20305, !prof !777

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ao, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #29, !dbg !20306, !noalias !20242
  unreachable, !dbg !20306

_RINvXs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoderbINtB5_7EncoderbE17run_length_encodeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEBd_.exit21: ; preds = %bb.o
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, 129) %i.ao), !dbg !20307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20308, !noalias !20242
  store i8 1, ptr %i.a, align 1, !dbg !20309, !noalias !20242
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !dbg !20310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20311, !noalias !20242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20312, !noalias !20242
  br label %bb.m, !dbg !20313

bb.q:                                             ; preds = %bb.n
  call void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %i.am), !dbg !20314
  br label %bb.d, !dbg !20315
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils36truncate_max_binary_statistics_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20316 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20609 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !20609, !noundef !634 ; 5 uses
  %i.k = icmp sgt i64 %i.j, -1, !dbg !20610
  tail call void @llvm.assume(i1 %i.k), !dbg !20611
  %.not = icmp ugt i64 %i.j, %2, !dbg !20612
  br i1 %.not, label %bb.b, label %bb.c, !dbg !20612

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.d, label %bb.g, !dbg !20613

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20614
  br label %bb.as, !dbg !20615

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20616 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !20616, !nonnull !634, !noundef !634 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20617, !noalias !20536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20617, !noalias !20536
  store ptr %i.m, ptr %i.c, align 8, !dbg !20618, !noalias !20536
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20618
  store i64 %2, ptr %i.n, align 8, !dbg !20618, !noalias !20536
  invoke void @_RNvXs2_NtNtCscgRAwXFJnXP_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc22 unwind label %bb.f, !dbg !20619

.noexc22:                                         ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !dbg !20620, !noalias !20536, !noundef !634
  %.not10.i = icmp eq ptr %i.o, null, !dbg !20620
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !20621
  %i.q = load i64, ptr %i.p, align 8, !dbg !20621, !noalias !20536 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20622, !noalias !20536
  %.not7.i16.i = icmp eq i64 %i.q, 0, !dbg !20623
  %i.r = select i1 %.not10.i, i1 true, i1 %.not7.i16.i, !dbg !20623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20624, !noalias !20536
  br i1 %i.r, label %bb.e, label %bb.p, !dbg !20625

bb.e:                                             ; preds = %.noexc22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20626, !noalias !20536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20626, !noalias !20536
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.j, i64 4), !dbg !20627
  store ptr %i.m, ptr %i.a, align 8, !dbg !20628, !noalias !20536
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20628
  store i64 %.sroa.0.0.i.i, ptr %i.s, align 8, !dbg !20628, !noalias !20536
  invoke void @_RNvXs2_NtNtCscgRAwXFJnXP_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc23 unwind label %bb.f, !dbg !20629

.noexc23:                                         ; preds = %bb.e
  %i.t = load ptr, ptr %i.b, align 8, !dbg !20630, !noalias !20536, !noundef !634
  %.not13.i = icmp eq ptr %i.t, null, !dbg !20630 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20631
  %i.v = load i64, ptr %i.u, align 8, !dbg !20631, !noalias !20536
  %.sroa.57.0.i = select i1 %.not13.i, i64 undef, i64 %i.v, !dbg !20631 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20632, !noalias !20536
  %i.w = icmp eq i64 %.sroa.57.0.i, 0, !dbg !20633
  %i.x = icmp uge i64 %.sroa.57.0.i, %i.j, !dbg !20633
  %.sroa.0.0.i.not.i.i = or i1 %i.w, %i.x, !dbg !20633
  %i.y = select i1 %.not13.i, i1 true, i1 %.sroa.0.0.i.not.i.i, !dbg !20633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20634, !noalias !20536
  br i1 %i.y, label %.loopexit, label %bb.p, !dbg !20635

bb.f:                                             ; preds = %bb.ap, %bb.ao, %bb.e, %bb.d, %bb.t, %bb.r, %bb.q, %bb.l, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %1) #31
          to label %bb.au unwind label %bb.at, !dbg !20615

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !20636
  %i.aa = add nsw i64 %i.j, -1, !dbg !20637
  store i64 1, ptr %i.g, align 8, !dbg !20638, !alias.scope !20537
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !20638
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !20638, !alias.scope !20537
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !20638
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !20638, !alias.scope !20537
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !20638
  store i64 1, ptr %i.ab, align 8, !dbg !20638, !alias.scope !20537
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !20638
  store i64 %2, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !20638, !alias.scope !20537
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !20638
  store i64 %i.aa, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !20638, !alias.scope !20537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20639
  invoke void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3rev3RevINtNtNtBb_3ops5range5RangejEEB1g_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1O_8find_map5checkjTjhENCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils36truncate_max_binary_statistics_values_0E0INtNtB1l_12control_flow11ControlFlowB2X_EEB3b_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.h unwind label %bb.f, !dbg !20640

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.f, align 8, !dbg !20641, !range !734, !noundef !634
  %i.ad = trunc nuw i64 %i.ac to i1, !dbg !20642
  br i1 %i.ad, label %bb.i, label %bb.j, !dbg !20642

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !20643
  %i.af = load i64, ptr %i.ae, align 8, !dbg !20643, !noundef !634 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !20643
  %i.ah = load i8, ptr %i.ag, align 8, !dbg !20643, !noundef !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20644
  %i.ai = load i64, ptr %i.i, align 8, !dbg !20645, !noundef !634 ; 2 uses
  %i.aj = icmp ult i64 %i.af, %i.ai, !dbg !20646
  br i1 %i.aj, label %bb.k, label %bb.l, !dbg !20646

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20647
  br label %.loopexit, !dbg !20648

.loopexit:                                        ; preds = %bb.v, %.noexc23, %bb.ar, %bb.aq, %bb.o, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20649
  br label %bb.as, !dbg !20615

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20650
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !20650, !nonnull !634, !noundef !634
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af, !dbg !20651
  store i8 %i.ah, ptr %i.am, align 1, !dbg !20652
  %i.an = load i64, ptr %i.i, align 8, !dbg !20653, !noundef !634
  %.not35 = icmp ult i64 %i.af, %i.an, !dbg !20654
  br i1 %.not35, label %bb.n, label %bb.o, !dbg !20654

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #30
          to label %bb.m unwind label %bb.f, !dbg !20646

bb.m:                                             ; preds = %bb.q, %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ao = add nuw i64 %i.af, 1, !dbg !20655
  store i64 %i.ao, ptr %i.i, align 8, !dbg !20656
  br label %bb.o, !dbg !20657

bb.o:                                             ; preds = %bb.k, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20647
  br label %.loopexit, !dbg !20648

bb.p:                                             ; preds = %.noexc23, %.noexc22
  %.sroa.6.0.i.ph = phi i64 [ %i.q, %.noexc22 ], [ %.sroa.57.0.i, %.noexc23 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20658
  %i.ap = load i64, ptr %i.i, align 8, !dbg !20659, !noundef !634
  %.not21 = icmp ugt i64 %.sroa.6.0.i.ph, %i.ap
  br i1 %.not21, label %bb.q, label %bb.r, !dbg !20660, !prof !755

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #30
          to label %bb.m unwind label %bb.f, !dbg !20661

bb.r:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.l, align 8, !dbg !20662, !nonnull !634, !noundef !634
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts13from_utf8_mut(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull %i.aq, i64 noundef %.sroa.6.0.i.ph)
          to label %bb.s unwind label %bb.f, !dbg !20658

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !20574), !dbg !20663
  %i.ar = load i64, ptr %i.h, align 8, !dbg !20664, !range !734, !alias.scope !20574, !noundef !634
  %i.as = trunc nuw i64 %i.ar to i1, !dbg !20665
  br i1 %i.as, label %bb.t, label %bb.u, !dbg !20665, !prof !735

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !20666, !noalias !20574
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !20666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !20666
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #30
          to label %.noexc unwind label %bb.f, !dbg !20667

.noexc:                                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !20668
  %i.av = load ptr, ptr %i.au, align 8, !dbg !20668, !alias.scope !20574, !nonnull !634, !noundef !634 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !20668
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !20668, !alias.scope !20574, !noundef !634 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20669
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax, !dbg !20670
  br label %bb.v, !dbg !20671

bb.v:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, %bb.u
  %i.az = phi ptr [ %i.ck, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i ], [ %i.ay, %bb.u ] ; 5 uses
  %i.ba = icmp eq ptr %i.av, %i.az, !dbg !20672
  br i1 %i.ba, label %.loopexit, label %bb.w, !dbg !20673

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -1, !dbg !20674 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !20675, !alias.scope !20586, !noalias !20587, !noundef !634 ; 3 uses
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !20675
  br i1 %i.bd, label %bb.x, label %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit17.i.i.i.i, !dbg !20675

_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit17.i.i.i.i: ; preds = %bb.w
  %i.be = icmp ne ptr %i.av, %i.bb, !dbg !20676
  call void @llvm.assume(i1 %i.be), !dbg !20677
  %i.bf = getelementptr inbounds i8, ptr %i.az, i64 -2, !dbg !20678 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !dbg !20679, !alias.scope !20586, !noalias !20587, !noundef !634 ; 3 uses
  %i.bh = and i8 %i.bg, 31, !dbg !20680
  %i.bi = zext nneg i8 %i.bh to i32, !dbg !20680
  %i.bj = icmp slt i8 %i.bg, -64, !dbg !20681
  br i1 %i.bj, label %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit19.i.i.i.i, label %bb.y, !dbg !20682

bb.x:                                             ; preds = %bb.w
  %i.bk = zext nneg i8 %i.bc to i32, !dbg !20683
  br label %bb.aa, !dbg !20684

_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit19.i.i.i.i: ; preds = %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit17.i.i.i.i
  %i.bl = icmp ne ptr %i.av, %i.bf, !dbg !20685
  call void @llvm.assume(i1 %i.bl), !dbg !20686
  %i.bm = getelementptr inbounds i8, ptr %i.az, i64 -3, !dbg !20687 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !20688, !alias.scope !20586, !noalias !20587, !noundef !634 ; 3 uses
  %i.bo = and i8 %i.bn, 15, !dbg !20689
  %i.bp = zext nneg i8 %i.bo to i32, !dbg !20689
  %i.bq = icmp slt i8 %i.bn, -64, !dbg !20690
  br i1 %i.bq, label %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit21.i.i.i.i, label %bb.z, !dbg !20691

bb.y:                                             ; preds = %bb.z, %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit17.i.i.i.i
  %i.br = phi ptr [ %i.cf, %bb.z ], [ %i.bf, %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit17.i.i.i.i ]
  %.sroa.010.0.i.i.i.i = phi i32 [ %i.cj, %bb.z ], [ %i.bi, %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit17.i.i.i.i ], !dbg !20692
  %i.bs = shl nuw nsw i32 %.sroa.010.0.i.i.i.i, 6, !dbg !20693
  %i.bt = and i8 %i.bc, 63, !dbg !20694
  %i.bu = zext nneg i8 %i.bt to i32, !dbg !20694
  %i.bv = or disjoint i32 %i.bs, %i.bu, !dbg !20693
  br label %bb.aa, !dbg !20695

_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit21.i.i.i.i: ; preds = %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit19.i.i.i.i
  %i.bw = icmp ne ptr %i.av, %i.bm, !dbg !20696
  call void @llvm.assume(i1 %i.bw), !dbg !20697
  %i.bx = getelementptr inbounds i8, ptr %i.az, i64 -4, !dbg !20698 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !dbg !20699, !alias.scope !20586, !noalias !20587, !noundef !634
  %i.bz = and i8 %i.by, 7, !dbg !20700
  %i.ca = zext nneg i8 %i.bz to i32, !dbg !20700
  %i.cb = shl nuw nsw i32 %i.ca, 6, !dbg !20701
  %i.cc = and i8 %i.bn, 63, !dbg !20702
  %i.cd = zext nneg i8 %i.cc to i32, !dbg !20702
  %i.ce = or disjoint i32 %i.cb, %i.cd, !dbg !20701
  br label %bb.z, !dbg !20703

bb.z:                                             ; preds = %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit21.i.i.i.i, %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit19.i.i.i.i
  %i.cf = phi ptr [ %i.bx, %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit21.i.i.i.i ], [ %i.bm, %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit19.i.i.i.i ]
  %.sroa.010.1.i.i.i.i = phi i32 [ %i.ce, %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit21.i.i.i.i ], [ %i.bp, %_RNvXs2K_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsfISxE4fmY1Y_14polars_parquet.exit19.i.i.i.i ], !dbg !20704
  %i.cg = shl nuw nsw i32 %.sroa.010.1.i.i.i.i, 6, !dbg !20705
  %i.ch = and i8 %i.bg, 63, !dbg !20706
  %i.ci = zext nneg i8 %i.ch to i32, !dbg !20706
  %i.cj = or disjoint i32 %i.cg, %i.ci, !dbg !20705
  br label %bb.y, !dbg !20707

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.ck = phi ptr [ %i.bb, %bb.x ], [ %i.br, %bb.y ], !dbg !20708 ; 2 uses
  %.sroa.4.1.i.ph.i.i.i = phi i32 [ %i.bk, %bb.x ], [ %i.bv, %bb.y ] ; 8 uses
  %i.cl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 1114112, !dbg !20709
  call void @llvm.assume(i1 %i.cl), !dbg !20709
  %i.cm = add nuw nsw i32 %.sroa.4.1.i.ph.i.i.i, 1, !dbg !20710 ; 2 uses
  %i.cn = xor i32 %i.cm, 55296, !dbg !20711
  %i.co = add nsw i32 %i.cn, -1114112, !dbg !20711
  %i.cp = icmp ult i32 %i.co, -1112064, !dbg !20711
  br i1 %i.cp, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, label %bb.ab, !dbg !20712

bb.ab:                                            ; preds = %bb.aa
  %i.cq = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 127, !dbg !20713
  br i1 %i.cq, label %select.unfold.i.i, label %bb.ac, !dbg !20713

bb.ac:                                            ; preds = %bb.ab
  %i.cr = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 2047, !dbg !20714
  br i1 %i.cr, label %bb.ad, label %bb.ae, !dbg !20714

bb.ad:                                            ; preds = %bb.ac
  %i.cs = icmp eq i32 %.sroa.4.1.i.ph.i.i.i, 127, !dbg !20715
  %spec.select.i.i.i.i = select i1 %i.cs, i64 1, i64 2, !dbg !20715
  br label %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i, !dbg !20715

bb.ae:                                            ; preds = %bb.ac
  %i.ct = icmp eq i32 %.sroa.4.1.i.ph.i.i.i, 2047, !dbg !20716
  br i1 %i.ct, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, label %bb.af, !dbg !20716

bb.af:                                            ; preds = %bb.ae
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 65535, !dbg !20717
  %..i.i.i.i.i.i = select i1 %i.cu, i64 3, i64 4, !dbg !20718
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 65536, !dbg !20719
  %.3.i.i.i.i.i.i = select i1 %i.cv, i64 3, i64 4, !dbg !20720
  br label %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i, !dbg !20720

_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ad
  %.sroa.0.0.i.i3.i.i.i.i = phi i64 [ 2, %bb.ad ], [ %..i.i.i.i.i.i, %bb.af ]
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.ad ], [ %.3.i.i.i.i.i.i, %bb.af ], !dbg !20720
  %i.cw = icmp eq i64 %.sroa.0.0.i.i3.i.i.i.i, %.sroa.01.0.i.i.i.i.i.i, !dbg !20721
  br i1 %i.cw, label %select.unfold.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, !dbg !20722

select.unfold.i.i:                                ; preds = %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i, %bb.ab
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, !dbg !20722

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i: ; preds = %select.unfold.i.i, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i, %bb.ae, %bb.aa
  %.sroa.02.0.i.i.i.i.i = phi i32 [ 1114112, %bb.aa ], [ 1114112, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i ], [ %i.cm, %select.unfold.i.i ], [ 1114112, %bb.ae ], !dbg !20723 ; 10 uses
  %.not.i.i.i = icmp eq i32 %.sroa.02.0.i.i.i.i.i, 1114112, !dbg !20724
  br i1 %.not.i.i.i, label %bb.v, label %bb.ag, !dbg !20725

bb.ag:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i
  %i.cx = ptrtoint ptr %i.ck to i64
  %i.cy = ptrtoint ptr %i.av to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp ugt i64 %i.cz, %i.ax, !dbg !20726
  br i1 %i.da, label %bb.ap, label %bb.ah, !dbg !20726, !prof !735

bb.ah:                                            ; preds = %bb.ag
  %i.db = sub nuw i64 %i.ax, %i.cz, !dbg !20727   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cz, !dbg !20728 ; 10 uses
  %i.dd = icmp samesign ult i32 %.sroa.02.0.i.i.i.i.i, 128, !dbg !20729
  br i1 %i.dd, label %.thread.i.i, label %bb.ai, !dbg !20729

bb.ai:                                            ; preds = %bb.ah
  %i.de = icmp samesign ult i32 %.sroa.02.0.i.i.i.i.i, 2048, !dbg !20730 ; 2 uses
  %i.df = icmp samesign ult i32 %.sroa.02.0.i.i.i.i.i, 65536, !dbg !20730 ; 2 uses
  %..i.i = select i1 %i.df, i64 3, i64 4, !dbg !20730
  %.sroa.0.0.i12.i = select i1 %i.de, i64 2, i64 %..i.i, !dbg !20730 ; 2 uses
  %i.dg = icmp samesign ult i64 %i.db, %.sroa.0.0.i12.i, !dbg !20731
  br i1 %i.dg, label %bb.ao, label %bb.aj, !dbg !20731

.thread.i.i:                                      ; preds = %bb.ah
  %i.dh = icmp eq i64 %i.ax, %i.cz, !dbg !20731
  br i1 %i.dh, label %bb.ao, label %.thread7.i.i, !dbg !20731

bb.aj:                                            ; preds = %bb.ai
  %i.di = trunc i32 %.sroa.02.0.i.i.i.i.i to i8, !dbg !20732
  %i.dj = and i8 %i.di, 63, !dbg !20732
  %i.dk = or disjoint i8 %i.dj, -128, !dbg !20732 ; 3 uses
  %i.dl = lshr i32 %.sroa.02.0.i.i.i.i.i, 6, !dbg !20733
  %i.dm = trunc i32 %i.dl to i8, !dbg !20734      ; 2 uses
  %i.dn = and i8 %i.dm, 63, !dbg !20734
  %i.do = or disjoint i8 %i.dn, -128, !dbg !20734 ; 2 uses
  %i.dp = lshr i32 %.sroa.02.0.i.i.i.i.i, 12, !dbg !20735
  %i.dq = trunc i32 %i.dp to i8, !dbg !20736      ; 2 uses
  %i.dr = and i8 %i.dq, 63, !dbg !20736
  %i.ds = or disjoint i8 %i.dr, -128, !dbg !20736
  %i.dt = lshr i32 %.sroa.02.0.i.i.i.i.i, 18, !dbg !20737
  %i.du = trunc nuw nsw i32 %i.dt to i8, !dbg !20738
  %i.dv = or disjoint i8 %i.du, -16, !dbg !20738
  br i1 %i.de, label %bb.ak, label %bb.al, !dbg !20739

.thread7.i.i:                                     ; preds = %.thread.i.i
  %i.dw = trunc nuw nsw i32 %.sroa.02.0.i.i.i.i.i to i8, !dbg !20740
  store i8 %i.dw, ptr %i.dc, align 1, !dbg !20740, !alias.scope !20603
  br label %bb.aq, !dbg !20741

bb.ak:                                            ; preds = %bb.aj
  %i.dx = or disjoint i8 %i.dm, -64, !dbg !20742
  store i8 %i.dx, ptr %i.dc, align 1, !dbg !20742, !alias.scope !20603
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 1, !dbg !20743
  store i8 %i.dk, ptr %i.dy, align 1, !dbg !20744, !alias.scope !20603
  br label %bb.aq, !dbg !20745

bb.al:                                            ; preds = %bb.aj
  br i1 %i.df, label %bb.am, label %bb.an, !dbg !20746

bb.am:                                            ; preds = %bb.al
  %i.dz = or disjoint i8 %i.dq, -32, !dbg !20747
  store i8 %i.dz, ptr %i.dc, align 1, !dbg !20747, !alias.scope !20603
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 1, !dbg !20748
  store i8 %i.do, ptr %i.ea, align 1, !dbg !20749, !alias.scope !20603
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 2, !dbg !20750
  store i8 %i.dk, ptr %i.eb, align 1, !dbg !20751, !alias.scope !20603
  br label %bb.aq, !dbg !20745

bb.an:                                            ; preds = %bb.al
  store i8 %i.dv, ptr %i.dc, align 1, !dbg !20752, !alias.scope !20603
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 1, !dbg !20753
  store i8 %i.ds, ptr %i.ec, align 1, !dbg !20754, !alias.scope !20603
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 2, !dbg !20755
  store i8 %i.do, ptr %i.ed, align 1, !dbg !20756, !alias.scope !20603
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 3, !dbg !20757
  store i8 %i.dk, ptr %i.ee, align 1, !dbg !20758, !alias.scope !20603
  br label %bb.aq, !dbg !20759

bb.ao:                                            ; preds = %.thread.i.i, %bb.ai
  %.sroa.0.06.i.i = phi i64 [ 1, %.thread.i.i ], [ %.sroa.0.0.i12.i, %bb.ai ]
  invoke fastcc void @_RNvNvNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw8do_panic7runtime(i32 noundef range(i32 1, 1114112) %.sroa.02.0.i.i.i.i.i, i64 noundef %.sroa.0.06.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.db) #35
          to label %.noexc25 unwind label %bb.f, !dbg !20760

.noexc25:                                         ; preds = %bb.ao
  unreachable, !dbg !20760

bb.ap:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.ax, i64 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc26 unwind label %bb.f, !dbg !20761

.noexc26:                                         ; preds = %bb.ap
  unreachable, !dbg !20761

bb.aq:                                            ; preds = %.thread7.i.i, %bb.ak, %bb.am, %bb.an
  %.sroa.0.059.i.i = phi i64 [ 1, %.thread7.i.i ], [ 2, %bb.ak ], [ 3, %bb.am ], [ 4, %bb.an ]
  %i.ef = add i64 %.sroa.0.059.i.i, %i.cz, !dbg !20762 ; 2 uses
  %i.eg = load i64, ptr %i.i, align 8, !dbg !20763, !noundef !634
  %i.eh = icmp ugt i64 %i.ef, %i.eg, !dbg !20764
  br i1 %i.eh, label %.loopexit, label %bb.ar, !dbg !20764

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.ef, ptr %i.i, align 8, !dbg !20765
  br label %.loopexit, !dbg !20766

bb.as:                                            ; preds = %.loopexit, %bb.c
  ret void, !dbg !20767

bb.at:                                            ; preds = %bb.f
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !20768
  unreachable, !dbg !20768

bb.au:                                            ; preds = %bb.f
  resume { ptr, i32 } %i.z, !dbg !20768
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils36truncate_min_binary_statistics_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20769 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20800 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !20800, !noundef !634 ; 5 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !20801
  tail call void @llvm.assume(i1 %i.g), !dbg !20802
  %.not = icmp ugt i64 %i.f, %2, !dbg !20803
  br i1 %.not, label %bb.b, label %bb.c, !dbg !20803

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.d, label %.sink.split, !dbg !20804

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20805
  br label %bb.i, !dbg !20806

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20807
  %i.i = load ptr, ptr %i.h, align 8, !dbg !20807, !nonnull !634, !noundef !634 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20808, !noalias !20797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20808, !noalias !20797
  store ptr %i.i, ptr %i.c, align 8, !dbg !20809, !noalias !20797
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20809
  store i64 %2, ptr %i.j, align 8, !dbg !20809, !noalias !20797
  invoke void @_RNvXs2_NtNtCscgRAwXFJnXP_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.g, !dbg !20810

.noexc:                                           ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !dbg !20811, !noalias !20797, !noundef !634
  %.not10.i = icmp eq ptr %i.k, null, !dbg !20811
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !20812
  %i.m = load i64, ptr %i.l, align 8, !dbg !20812, !noalias !20797 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20813, !noalias !20797
  %.not7.i16.i = icmp eq i64 %i.m, 0, !dbg !20814
  %i.n = select i1 %.not10.i, i1 true, i1 %.not7.i16.i, !dbg !20814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20815, !noalias !20797
  br i1 %i.n, label %bb.e, label %bb.h, !dbg !20816

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20817, !noalias !20797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20817, !noalias !20797
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.f, i64 4), !dbg !20818
  store ptr %i.i, ptr %i.a, align 8, !dbg !20819, !noalias !20797
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20819
  store i64 %.sroa.0.0.i.i, ptr %i.o, align 8, !dbg !20819, !noalias !20797
  invoke void @_RNvXs2_NtNtCscgRAwXFJnXP_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc8 unwind label %bb.g, !dbg !20820

.noexc8:                                          ; preds = %bb.e
  %i.p = load ptr, ptr %i.b, align 8, !dbg !20821, !noalias !20797, !noundef !634
  %.not13.i = icmp eq ptr %i.p, null, !dbg !20821 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20822
  %i.r = load i64, ptr %i.q, align 8, !dbg !20822, !noalias !20797
  %.sroa.57.0.i = select i1 %.not13.i, i64 undef, i64 %i.r, !dbg !20822 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20823, !noalias !20797
  %i.s = icmp eq i64 %.sroa.57.0.i, 0, !dbg !20824
  %i.t = icmp uge i64 %.sroa.57.0.i, %i.f, !dbg !20824
  %.sroa.0.0.i.not.i.i = or i1 %i.s, %i.t, !dbg !20824
  %i.u = select i1 %.not13.i, i1 true, i1 %.sroa.0.0.i.not.i.i, !dbg !20824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20825, !noalias !20797
  br i1 %i.u, label %bb.f, label %bb.h, !dbg !20826

.sink.split:                                      ; preds = %bb.b, %bb.h
  %.sroa.6.0.i.ph.sink = phi i64 [ %.sroa.6.0.i.ph, %bb.h ], [ %2, %bb.b ]
  store i64 %.sroa.6.0.i.ph.sink, ptr %i.e, align 8, !dbg !20827
  br label %bb.f, !dbg !20828

bb.f:                                             ; preds = %.sink.split, %.noexc8, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20828
  br label %bb.i, !dbg !20806

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %1) #31
          to label %bb.k unwind label %bb.j, !dbg !20806

bb.h:                                             ; preds = %.noexc8, %.noexc
  %.sroa.6.0.i.ph = phi i64 [ %i.m, %.noexc ], [ %.sroa.57.0.i, %.noexc8 ] ; 2 uses
  %i.w = icmp ugt i64 %.sroa.6.0.i.ph, %i.f, !dbg !20829
  br i1 %i.w, label %bb.f, label %.sink.split, !dbg !20829

bb.i:                                             ; preds = %bb.f, %bb.c
  ret void, !dbg !20830

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !20831
  unreachable, !dbg !20831

bb.k:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.v, !dbg !20831
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested17write_rep_and_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20832 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21088), !dbg !21130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21131
  %i.f = icmp eq i64 %3, 0, !dbg !21131
  br i1 %i.f, label %.thread, label %.preheader.i.i.preheader, !dbg !21132

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !21133
  %i.g = icmp eq i64 %3, 1, !dbg !21133
  br i1 %i.g, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new, !dbg !21133

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %3, 144115188075855870, !dbg !21133
  br label %.preheader.i.i, !dbg !21133

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21134
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !21135 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !21135, !noundef !634 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !21136
  tail call void @llvm.assume(i1 %i.j), !dbg !21137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21138
  br label %bb.u, !dbg !21139

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.p, %.preheader.i.i ], !dbg !21140 ; 3 uses
  %.sroa.02.0.i.i.i = phi i16 [ 0, %.preheader.i.i.preheader.new ], [ %i.o, %.preheader.i.i ], !dbg !21141
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.sroa.04.0.i.i.i, !dbg !21142
  %.val.i.i.i = load i64, ptr %i.k, align 8, !dbg !21143, !range !21090, !noalias !21091, !noundef !634
  %.off.i.i.i.i.i = add nsw i64 %.val.i.i.i, -1, !dbg !21144
  %switch.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3, !dbg !21144
  %..i.i.i.i.i = zext i1 %switch.i.i.i.i.i to i16, !dbg !21145
  %i.l = add i16 %.sroa.02.0.i.i.i, %..i.i.i.i.i, !dbg !21146
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.sroa.04.0.i.i.i, !dbg !21142
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72, !dbg !21142
  %.val.i.i.i.1 = load i64, ptr %i.n, align 8, !dbg !21143, !range !21090, !noalias !21091, !noundef !634
  %.off.i.i.i.i.i.1 = add nsw i64 %.val.i.i.i.1, -1, !dbg !21144
  %switch.i.i.i.i.i.1 = icmp ult i64 %.off.i.i.i.i.i.1, 3, !dbg !21144
  %..i.i.i.i.i.1 = zext i1 %switch.i.i.i.i.i.1 to i16, !dbg !21145
  %i.o = add i16 %i.l, %..i.i.i.i.i.1, !dbg !21146 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.04.0.i.i.i, 2, !dbg !21147 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !21133 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !21133
  br i1 %niter.ncmp.1, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa, label %.preheader.i.i, !dbg !21133

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21133
  br i1 %lcmp.mod.not, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i, label %.preheader.i.i.epil.preheader, !dbg !21133

.preheader.i.i.epil.preheader:                    ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa, %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.p, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i16 [ 0, %.preheader.i.i.preheader ], [ %i.o, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa ]
  %lcmp.mod64 = trunc i64 %3 to i1, !dbg !21133
  tail call void @llvm.assume(i1 %lcmp.mod64), !dbg !21133
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.sroa.04.0.i.i.i.epil.init, !dbg !21142
  %.val.i.i.i.epil = load i64, ptr %i.q, align 8, !dbg !21143, !range !21090, !noalias !21091, !noundef !634
  %.off.i.i.i.i.i.epil = add nsw i64 %.val.i.i.i.epil, -1, !dbg !21144
  %switch.i.i.i.i.i.epil = icmp ult i64 %.off.i.i.i.i.i.epil, 3, !dbg !21144
  %..i.i.i.i.i.epil = zext i1 %switch.i.i.i.i.i.epil to i16, !dbg !21145
  %i.r = add i16 %.sroa.02.0.i.i.i.epil.init, %..i.i.i.i.i.epil, !dbg !21146
  br label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i, !dbg !21148

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa, %.preheader.i.i.epil.preheader
  %.lcssa62 = phi i16 [ %i.o, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa ], [ %i.r, %.preheader.i.i.epil.preheader ], !dbg !21146 ; 2 uses
  %i.s = icmp eq i16 %.lcssa62, 0, !dbg !21148
  br i1 %i.s, label %bb.i, label %bb.b, !dbg !21148

bb.b:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i
  %i.t = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 range(i16 1, 0) %.lcssa62, i1 true), !dbg !21149
  %narrow.i.i = sub nuw nsw i16 16, %i.t, !dbg !21150
  %i.u = zext nneg i16 %narrow.i.i to i32, !dbg !21150 ; 2 uses
  store i32 %i.u, ptr %i.e, align 4, !dbg !21151, !noalias !21091
  call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremelNtB4_18BufferedDremelIter3new(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3), !dbg !21152, !noalias !21091
  br i1 %1, label %bb.c, label %bb.d, !dbg !21153

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoder6encodemINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapNtNtNtNtNtBa_5arrow5write6nested6dremel18BufferedDremelIterNCNvB2O_16write_rep_levels0EEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, i32 noundef %i.u), !dbg !21154
  br label %bb.i, !dbg !21155

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21156, !noalias !21091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !21156, !noalias !21091
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !21156
  store ptr %i.e, ptr %i.v, align 8, !dbg !21156, !noalias !21091
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 4)
          to label %bb.e unwind label %bb.f, !dbg !21157, !noalias !21098

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !21158 ; 7 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !21158, !alias.scope !21099, !noundef !634 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !21159
  call void @llvm.assume(i1 %i.y), !dbg !21160
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !21161 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !21161, !alias.scope !21099, !nonnull !634, !noundef !634
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !21162
  store i32 0, ptr %i.ab, align 1, !dbg !21163, !noalias !21098
  %.pre.i.i.i = load i64, ptr %i.w, align 8, !dbg !21164, !alias.scope !21099 ; 7 uses
  %i.ac = add nsw i64 %.pre.i.i.i, 4, !dbg !21164 ; 2 uses
  store i64 %i.ac, ptr %i.w, align 8, !dbg !21164, !alias.scope !21099
  %i.ad = load i32, ptr %i.e, align 4, !dbg !21165, !noalias !21100, !noundef !634
  call fastcc void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoder6encodemINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapNtNtNtNtNtBa_5arrow5write6nested6dremel18BufferedDremelIterNCNvB2O_16write_rep_levels0EEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.c, i32 noundef %i.ad), !dbg !21166
  %i.ae = load i64, ptr %i.w, align 8, !dbg !21167, !alias.scope !21102, !noundef !634 ; 4 uses
  %i.af = icmp sgt i64 %i.ae, -1, !dbg !21168
  call void @llvm.assume(i1 %i.af), !dbg !21169
  %i.ag = sub nsw i64 %i.ae, %i.ac, !dbg !21170   ; 4 uses
  %.sroa.417.0.extract.shift28.i.i = lshr i64 %i.ag, 8, !dbg !21171
  %.sroa.417.0.extract.trunc.i.i = trunc i64 %.sroa.417.0.extract.shift28.i.i to i8, !dbg !21171
  %.sroa.518.0.extract.shift29.i.i = lshr i64 %i.ag, 16, !dbg !21171
  %.sroa.518.0.extract.trunc.i.i = trunc i64 %.sroa.518.0.extract.shift29.i.i to i8, !dbg !21171
  %i.ah = icmp ult i64 %.pre.i.i.i, %i.ae, !dbg !21172
  br i1 %i.ah, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i, label %.noexc.i.i, !dbg !21172

.noexc.i.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i, %bb.e
  %.lcssa10.i.i.i = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.ak, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i ], [ %i.ap, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i ], [ %i.au, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i ], !dbg !21173
  %.lcssa.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.al, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i ], [ %i.aq, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i ], [ %i.av, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i ], !dbg !21174
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa10.i.i.i, i64 noundef %.lcssa.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #29, !dbg !21172, !noalias !21098
  unreachable, !dbg !21172

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i: ; preds = %bb.e
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ag to i8, !dbg !21171
  %i.ai = load ptr, ptr %i.z, align 8, !dbg !21175, !alias.scope !21102, !noalias !21104, !nonnull !634, !noundef !634
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.pre.i.i.i, !dbg !21176
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %i.aj, align 1, !dbg !21177, !noalias !21105
  %i.ak = add nuw nsw i64 %.pre.i.i.i, 1, !dbg !21173 ; 3 uses
  %i.al = load i64, ptr %i.w, align 8, !dbg !21174, !alias.scope !21102, !noalias !21106, !noundef !634 ; 2 uses
  %i.am = icmp ult i64 %i.ak, %i.al, !dbg !21172
  br i1 %i.am, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i, label %.noexc.i.i, !dbg !21172

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i
  %i.an = load ptr, ptr %i.z, align 8, !dbg !21175, !alias.scope !21102, !noalias !21106, !nonnull !634, !noundef !634
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak, !dbg !21176
  store i8 %.sroa.417.0.extract.trunc.i.i, ptr %i.ao, align 1, !dbg !21177, !noalias !21107
  %i.ap = add nuw i64 %.pre.i.i.i, 2, !dbg !21173 ; 3 uses
  %i.aq = load i64, ptr %i.w, align 8, !dbg !21174, !alias.scope !21102, !noalias !21108, !noundef !634 ; 2 uses
  %i.ar = icmp ult i64 %i.ap, %i.aq, !dbg !21172
  br i1 %i.ar, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i, label %.noexc.i.i, !dbg !21172

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i
  %i.as = load ptr, ptr %i.z, align 8, !dbg !21175, !alias.scope !21102, !noalias !21108, !nonnull !634, !noundef !634
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap, !dbg !21176
  store i8 %.sroa.518.0.extract.trunc.i.i, ptr %i.at, align 1, !dbg !21177, !noalias !21109
  %i.au = add nuw i64 %.pre.i.i.i, 3, !dbg !21173 ; 3 uses
  %i.av = load i64, ptr %i.w, align 8, !dbg !21174, !alias.scope !21102, !noalias !21110, !noundef !634 ; 2 uses
  %i.aw = icmp ult i64 %i.au, %i.av, !dbg !21172
  br i1 %i.aw, label %bb.h, label %.noexc.i.i, !dbg !21172

common.resume:                                    ; preds = %bb.s, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.f ], [ %lpad.thr_comm.split-lp.i.i6, %bb.s ]
  resume { ptr, i32 } %common.resume.op, !dbg !21178

bb.f:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested16write_rep_levelss_0EBQ_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #31
          to label %common.resume unwind label %bb.g, !dbg !21179, !noalias !21111

bb.g:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !21180, !noalias !21111
  unreachable, !dbg !21180

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i
  %.sroa.619.0.extract.shift30.i.i = lshr i64 %i.ag, 24, !dbg !21171
  %.sroa.619.0.extract.trunc.i.i = trunc i64 %.sroa.619.0.extract.shift30.i.i to i8, !dbg !21171
  %i.ay = load ptr, ptr %i.z, align 8, !dbg !21175, !alias.scope !21102, !noalias !21110, !nonnull !634, !noundef !634
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.au, !dbg !21176
  store i8 %.sroa.619.0.extract.trunc.i.i, ptr %i.az, align 1, !dbg !21177, !noalias !21112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21181, !noalias !21091
  br label %bb.i, !dbg !21182

bb.i:                                             ; preds = %bb.h, %bb.c, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21134
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v32i64
!1031 = !DINamespace(name: "fixed_len_binary", scope: !1030)
!1032 = !DINamespace(name: "FixedLenStatistics", scope: !1031)
!1033 = !DINamespace(name: "{impl#6}", scope: !639)
!1034 = !DIFile(filename: "library/core/src/intrinsics/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c63bdff6283ee446a2fd675d4e76397e")
!1035 = !DINamespace(name: "intrinsics", scope: !638)
!1036 = !{i32 1, i32 0}
!1037 = !DINamespace(name: "{impl#10}", scope: !654)
!1038 = !DIFile(filename: "crates/polars-arrow/src/array/binview/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "d9f320e3bbe005c9a0c8b306ca5bfda9")
!1039 = !DINamespace(name: "{impl#9}", scope: !631)
!1040 = !DINamespace(name: "BinaryViewArrayGeneric", scope: !631)
!1041 = !DINamespace(name: "{impl#12}", scope: !876)
!1042 = !DINamespace(name: "{impl#59}", scope: !760)
!1043 = !DINamespace(name: "{impl#4}", scope: !655)
!1044 = !DIFile(filename: "crates/polars-arrow/src/array/binview/view.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "7eba05bbfa5f39982609718ecb998696")
!1045 = !DINamespace(name: "view", scope: !631)
!1046 = !DINamespace(name: "View", scope: !1045)
!1047 = !DINamespace(name: "{impl#2}", scope: !745)
!1048 = !DIFile(filename: "crates/polars-arrow/src/array/fixed_size_binary/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "711168d2f251727c208fc9093f58f869")
!1049 = !DINamespace(name: "fixed_size_binary", scope: !630)
!1050 = !DINamespace(name: "FixedSizeBinaryArray", scope: !1049)
!1051 = !DINamespace(name: "{impl#90}", scope: !681)
!1052 = !DINamespace(name: "next", scope: !1051)
!1053 = !{i8 0, i8 3}
!1054 = !DINamespace(name: "next", scope: !898)
!1055 = !DIFile(filename: "crates/polars-compute/src/min_max/scalar.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "5ffc8d7a3087e2123176ac37e048e59f")
!1056 = !DINamespace(name: "polars_compute", scope: null)
!1057 = !DINamespace(name: "min_max", scope: !1056)
!1058 = !DINamespace(name: "scalar", scope: !1057)
!1059 = !DIFile(filename: "library/core/src/tuple.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "597852f4d253019c31fb70c66f599309")
!1060 = !DINamespace(name: "tuple", scope: !638)
!1061 = !DINamespace(name: "{impl#15}", scope: !1060)
!1062 = !DIFile(filename: "src/int/cmp.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/ethnum-1.5.3", checksumkind: CSK_MD5, checksum: "a28eabb651fe2ca50e55bdb725d35cb4")
!1063 = !DINamespace(name: "ethnum", scope: null)
!1064 = !DINamespace(name: "int", scope: !1063)
!1065 = !DINamespace(name: "cmp", scope: !1064)
!1066 = !DINamespace(name: "{impl#0}", scope: !1065)
!1067 = !DINamespace(name: "{impl#76}", scope: !920)
!1068 = !DIFile(filename: "crates/polars-parquet/src/parquet/parquet_bridge.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "cf7537be2961a7f085a1f7cd7c1f47e0")
!1069 = !DINamespace(name: "parquet_bridge", scope: !661)
!1070 = !DINamespace(name: "{impl#9}", scope: !1069)
!1071 = !{i8 0, i8 8}
!1072 = !DINamespace(name: "PartialEq", scope: !668)
!1073 = !DINamespace(name: "{impl#41}", scope: !1069)
!1074 = !DILexicalBlockFile(scope: !514, file: !728, discriminator: 2)
!1075 = !DILexicalBlockFile(scope: !521, file: !970, discriminator: 0)
!1076 = !DILexicalBlockFile(scope: !520, file: !970, discriminator: 6)
!1077 = !DIFile(filename: "crates/polars-error/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "49971f08fd25b94414fd1245099a73ea")
!1078 = !DINamespace(name: "polars_error", scope: null)
!1079 = !DINamespace(name: "__private", scope: !1078)
!1080 = !DILexicalBlockFile(scope: !520, file: !970, discriminator: 10)
!1081 = !DINamespace(name: "{impl#22}", scope: !654)
!1082 = !DINamespace(name: "{impl#15}", scope: !654)
!1083 = !DIFile(filename: "library/core/src/str/lossy.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "37b4b6edef6dc070abfc74e2f8aca572")
!1084 = !DINamespace(name: "str", scope: !638)
!1085 = !DINamespace(name: "lossy", scope: !1084)
!1086 = !DINamespace(name: "{impl#0}", scope: !1085)
!1087 = !DINamespace(name: "char", scope: !638)
!1088 = !DINamespace(name: "methods", scope: !1087)
!1089 = !DIFile(filename: "library/core/src/panic.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "5ea139883c81a8074ac3b0ff123e16cc")
!1090 = !DINamespace(name: "encode_utf8_raw", scope: !1088)
!1091 = !DIFile(filename: "crates/polars-parquet/src/arrow/write/binview/basic.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "4c8c99003745cca721a4b257582ec323")
!1092 = !DINamespace(name: "binview", scope: !856)
!1093 = !DINamespace(name: "basic", scope: !1092)
!1094 = !DINamespace(name: "NonNullValuesIter", scope: !935)
!1095 = !DIFile(filename: "crates/polars-arrow/src/array/binview/iterator.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "b41aa188021c4df30b05aaa4df698a7f")
!1096 = !DINamespace(name: "iterator", scope: !631)
!1097 = !DINamespace(name: "{impl#0}", scope: !1096)
!1098 = !DIFile(filename: "crates/polars-arrow/src/bitmap/iterator.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "bd5671154f88d2269f98ec7591d99160")
!1099 = !DINamespace(name: "iterator", scope: !643)
!1100 = !DINamespace(name: "TrueIdxIter", scope: !1099)
!1101 = !DILexicalBlockFile(scope: !552, file: !874, discriminator: 2)
!1102 = !DINamespace(name: "{impl#14}", scope: !876)
!1103 = !DILexicalBlockFile(scope: !569, file: !683, discriminator: 2)
!1104 = !DINamespace(name: "ArrayValuesIter", scope: !935)
!1105 = !DINamespace(name: "{impl#2}", scope: !935)
!1106 = !DINamespace(name: "read", scope: !855)
!1107 = !{i64 0, i64 19}
!1108 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "f3db9a3cc7432998c9a8567b9d88cfb3")
!1109 = !DINamespace(name: "{impl#1}", scope: !826)
!1110 = !DIFile(filename: "crates/polars-utils/src/pl_str.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "a3712769674cc97eef236c6e73878c1e")
!1111 = !DINamespace(name: "pl_str", scope: !1018)
!1112 = !DINamespace(name: "{impl#29}", scope: !1111)
!1113 = !DIFile(filename: "crates/polars-parquet/src/parquet/schema/types/basic_type.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "9209f32daf79991e28baa4b0e79cd30b")
!1114 = !DINamespace(name: "schema", scope: !661)
!1115 = !DINamespace(name: "types", scope: !1114)
!1116 = !DINamespace(name: "basic_type", scope: !1115)
!1117 = !DINamespace(name: "{impl#0}", scope: !1116)
!1118 = !DIFile(filename: "crates/polars-parquet/src/parquet/schema/types/parquet_type.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "91e4e89068b7a7a48db9662c780c4156")
!1119 = !DINamespace(name: "parquet_type", scope: !1115)
!1120 = !DINamespace(name: "{impl#4}", scope: !1119)
!1121 = !DINamespace(name: "{impl#3}", scope: !827)
!1122 = !DINamespace(name: "{impl#28}", scope: !1069)
!1123 = !DIFile(filename: "crates/polars-parquet/src/parquet/schema/types/physical_type.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "46a9494957c7be7197f99bd17c7461f3")
!1124 = !DINamespace(name: "physical_type", scope: !1115)
!1125 = !DINamespace(name: "{impl#3}", scope: !1124)
!1126 = !{i64 0, i64 20}
!1127 = !DIFile(filename: "crates/polars-parquet/src/parquet/schema/types/spec.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "10f0945d6fae91bfcdad0807b14acc90")
!1128 = !DINamespace(name: "spec", scope: !1115)
!1129 = !{i64 0, i64 8}
!1130 = !{i8 0, i8 12}
!1131 = !DINamespace(name: "deserialize", scope: !1106)
!1132 = !DINamespace(name: "binview", scope: !1131)
!1133 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/binview/required_masked.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "a7da15c22cd48f2c4c3197c6ab2eaca4")
!1134 = !DINamespace(name: "required_masked", scope: !1132)
!1135 = !DIFile(filename: "crates/polars-parquet/src/parquet/schema/types/converted_type.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "dd54af88868bc9573bfa6ba585f60b69")
!1136 = !DINamespace(name: "converted_type", scope: !1115)
!1137 = !DINamespace(name: "{impl#25}", scope: !994)
!1138 = !DINamespace(name: "select_unpredictable", scope: !737)
!1139 = !DINamespace(name: "{impl#0}", scope: !1138)
!1140 = !DINamespace(name: "_", scope: !1069)
!1141 = !DINamespace(name: "{impl#0}", scope: !1140)
!1142 = !DINamespace(name: "deserialize", scope: !1141)
!1143 = !DINamespace(name: "{impl#0}", scope: !1142)
!1144 = !DINamespace(name: "_", scope: !1136)
!1145 = !DINamespace(name: "{impl#0}", scope: !1144)
!1146 = !DINamespace(name: "deserialize", scope: !1145)
!1147 = !DINamespace(name: "{impl#0}", scope: !1146)
!1148 = !DINamespace(name: "{impl#2}", scope: !1142)
!1149 = !DINamespace(name: "visit_enum", scope: !1148)
!1150 = !DINamespace(name: "{impl#2}", scope: !1146)
!1151 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "6f02df1239ccca7a65adaa40e169af60")
!1152 = !DINamespace(name: "fmt", scope: !638)
!1153 = !DINamespace(name: "{impl#80}", scope: !1152)
!1154 = !DINamespace(name: "CompactString", scope: !826)
!1155 = !DINamespace(name: "PlSmallStr", scope: !1111)
!1156 = !DIFile(filename: "library/core/src/str/error.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "2dabe4a3dcb004711b22087b567c3c72")
!1157 = !DINamespace(name: "error", scope: !1084)
!1158 = !DINamespace(name: "{impl#11}", scope: !1157)
!1159 = !{i8 0, i8 9}
!1160 = !DINamespace(name: "{impl#54}", scope: !1069)
!1161 = !DINamespace(name: "{impl#29}", scope: !1152)
!1162 = !DINamespace(name: "Formatter", scope: !1152)
!1163 = !DIFile(filename: "library/core/src/fmt/num.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f6b2e2268fd0327649658dbf44a6effb")
!1164 = !DINamespace(name: "num", scope: !1152)
!1165 = !DINamespace(name: "{impl#63}", scope: !1164)
!1166 = !{i64 4}
!1167 = !{i64 16}
!1168 = !DINamespace(name: "{impl#82}", scope: !1152)
!1169 = !DINamespace(name: "{impl#5}", scope: !974)
!1170 = !DINamespace(name: "{impl#3}", scope: !884)
!1171 = !DINamespace(name: "{impl#20}", scope: !884)
!1172 = !DINamespace(name: "{impl#11}", scope: !881)
!1173 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/fixed_size_binary.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "7d48d0017c54facc53dbae2ece86e074")
!1174 = !DINamespace(name: "fixed_size_binary", scope: !1131)
!1175 = !DINamespace(name: "decode_fsb_dict", scope: !1174)
!1176 = !DIFile(filename: "library/core/src/clone.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7fc12b7131f6f7978a090b774f66c5eb")
!1177 = !DINamespace(name: "clone", scope: !638)
!1178 = !DINamespace(name: "impls", scope: !1177)
!1179 = !DINamespace(name: "{impl#11}", scope: !1178)
!1180 = !DIFile(filename: "library/alloc/src/vec/into_iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "67afe9548c17103ef643b1b8003217a3")
!1181 = !DINamespace(name: "into_iter", scope: !654)
!1182 = !DINamespace(name: "{impl#6}", scope: !1181)
!1183 = !DIFile(filename: "library/alloc/src/collections/btree/dedup_sorted_iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f2d9e925623b5dab8008f7f2e2e8602b")
!1184 = !DINamespace(name: "collections", scope: !653)
!1185 = !DINamespace(name: "btree", scope: !1184)
!1186 = !DINamespace(name: "dedup_sorted_iter", scope: !1185)
!1187 = !DINamespace(name: "{impl#1}", scope: !1186)
!1188 = !DIFile(filename: "library/core/src/iter/adapters/peekable.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "cb316e972c119b8727d765ade81ede6d")
!1189 = !DINamespace(name: "peekable", scope: !796)
!1190 = !DINamespace(name: "{impl#1}", scope: !1189)
!1191 = !DINamespace(name: "Peekable", scope: !1189)
!1192 = !DINamespace(name: "{impl#5}", scope: !1189)
!1193 = !DINamespace(name: "peek", scope: !1192)
!1194 = !DINamespace(name: "{impl#23}", scope: !1111)
!1195 = !DINamespace(name: "{impl#2}", scope: !1111)
!1196 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84ef1ad06348bcbccb4880198773df8b")
!1197 = !DINamespace(name: "cmp", scope: !680)
!1198 = !DINamespace(name: "{impl#0}", scope: !1197)
!1199 = !DILexicalBlockFile(scope: !616, file: !667, discriminator: 2)
!1200 = !DIFile(filename: "library/core/src/str/traits.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "ceefce93fff2781d56cedc7cc19e92ed")
!1201 = !DINamespace(name: "traits", scope: !1084)
!1202 = !DINamespace(name: "{impl#1}", scope: !1201)
!1203 = !DINamespace(name: "{impl#5}", scope: !1197)
!1204 = !{i8 0, i8 14}
!1205 = distinct !DISubprogram(name: "extend_constant<[u8], &[u8; 0]>", linkageName: "_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE15extend_constantRAhj0_ECsfISxE4fmY1Y_14polars_parquet", scope: !633, file: !628, line: 355, type: !635, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1206 = distinct !DISubprogram(name: "is_some<&[u8; 0]>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRAhj0_E7is_someCsfISxE4fmY1Y_14polars_parquet", scope: !640, file: !636, line: 635, type: !635, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1207 = distinct !DILexicalBlock(scope: !1206, file: !637, line: 429, column: 9)
!1208 = distinct !DISubprogram(name: "is_none<&[u8; 0]>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRAhj0_E7is_noneCsfISxE4fmY1Y_14polars_parquet", scope: !640, file: !636, line: 684, type: !635, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !628, line: 360, column: 52)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !628, line: 367, column: 36)
!1211 = distinct !DISubprogram(name: "extend_constant", linkageName: "_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap15extend_constant", scope: !645, file: !642, line: 234, type: !635, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1212 = distinct !DISubprogram(name: "repeat_n<polars_arrow::array::binview::view::View>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n8repeat_nNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewECsfISxE4fmY1Y_14polars_parquet", scope: !649, file: !646, line: 59, type: !635, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !628, line: 368, column: 13)
!1214 = distinct !DISubprogram(name: "branch<core::num::nonzero::NonZero<usize>>", linkageName: "_RNvXsJ_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCsfISxE4fmY1Y_14polars_parquet", scope: !650, file: !636, line: 2777, type: !635, scopeLine: 2777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1215 = distinct !DISubprogram(name: "new<polars_arrow::array::binview::view::View>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE3newCsfISxE4fmY1Y_14polars_parquet", scope: !651, file: !646, line: 70, type: !635, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1216 = distinct !DILexicalBlock(scope: !1215, file: !646, line: 71, column: 9)
!1217 = distinct !DISubprogram(name: "spec_extend<polars_arrow::array::binview::view::View, core::iter::sources::repeat_n::RepeatN<polars_arrow::array::binview::view::View>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNBT_EE11spec_extendCsfISxE4fmY1Y_14polars_parquet", scope: !656, file: !652, line: 26, type: !635, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1218 = distinct !DISubprogram(name: "extend<polars_arrow::array::binview::view::View, alloc::alloc::Global, core::iter::sources::repeat_n::RepeatN<polars_arrow::array::binview::view::View>>", linkageName: "_RINvXsi_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBG_E6extendINtNtNtB1M_7sources8repeat_n7RepeatNBG_EECsfISxE4fmY1Y_14polars_parquet", scope: !658, file: !657, line: 3959, type: !635, scopeLine: 3959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1219 = !DILexicalBlockFile(scope: !1207, file: !636, discriminator: 0)
!1220 = !DILocation(line: 356, column: 18, scope: !1205)
!1221 = !DILocation(line: 685, column: 15, scope: !1208, inlinedAt: !1220)
!1222 = !DILocation(line: 361, column: 22, scope: !1209)
!1223 = !DILocation(line: 369, column: 31, scope: !1213)
!1224 = !DILexicalBlockFile(scope: !1215, file: !646, discriminator: 2)
!1225 = !DILocation(line: 60, column: 22, scope: !1212, inlinedAt: !1223)
!1226 = !DILocation(line: 71, column: 21, scope: !1224, inlinedAt: !1225)
!1227 = !DILocation(line: 369, column: 24, scope: !1213)
!1228 = !DILocation(line: 3960, column: 9, scope: !1218, inlinedAt: !1227)
!1229 = !DILocation(line: 636, column: 18, scope: !1219, inlinedAt: !1221)
!1230 = !DILocation(line: 356, column: 12, scope: !1205)
!1231 = !DILocation(line: 360, column: 33, scope: !1209)
!1232 = !DILocation(line: 360, column: 16, scope: !1209)
!1233 = !DILocation(line: 357, column: 18, scope: !1205)
!1234 = !DILocation(line: 367, column: 16, scope: !1210)
!1235 = !DILocation(line: 239, column: 12, scope: !1211, inlinedAt: !1222)
!1236 = !DILocation(line: 242, column: 18, scope: !1211, inlinedAt: !1222)
!1237 = !DILocation(line: 240, column: 18, scope: !1211, inlinedAt: !1222)
!1238 = !DILocation(line: 368, column: 29, scope: !1210)
!1239 = !DILocation(line: 2778, column: 9, scope: !1214, inlinedAt: !1226)
!1240 = !DILocation(line: 372, column: 6, scope: !1205)
!1241 = !DILocation(line: 72, column: 14, scope: !1216, inlinedAt: !1225)
!1242 = !DILocation(line: 73, column: 5, scope: !1215, inlinedAt: !1225)
!1243 = !DILocation(line: 60, column: 5, scope: !1212, inlinedAt: !1223)
!1244 = !DILocation(line: 60, column: 56, scope: !1212, inlinedAt: !1223)
!1245 = !DILocation(line: 27, column: 14, scope: !1217, inlinedAt: !1228)
!1246 = !DILocation(line: 370, column: 37, scope: !1213)
!1247 = !DILocation(line: 370, column: 13, scope: !1213)
!1248 = !DILocation(line: 367, column: 9, scope: !1205)
!1249 = distinct !DISubprogram(name: "extend_constant<[u8], &[u8]>", linkageName: "_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE15extend_constantRB1u_ECsfISxE4fmY1Y_14polars_parquet", scope: !633, file: !628, line: 355, type: !635, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1250 = distinct !DISubprogram(name: "is_some<&[u8]>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRShE7is_someCsfISxE4fmY1Y_14polars_parquet", scope: !640, file: !636, line: 635, type: !635, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1251 = distinct !DILexicalBlock(scope: !1250, file: !637, line: 429, column: 9)
!1252 = distinct !DISubprogram(name: "is_none<&[u8]>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRShE7is_noneCsfISxE4fmY1Y_14polars_parquet", scope: !640, file: !636, line: 684, type: !635, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !628, line: 360, column: 52)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !628, line: 367, column: 36)
!1255 = distinct !DISubprogram(name: "extend_constant", linkageName: "_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap15extend_constant", scope: !645, file: !642, line: 234, type: !635, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1256 = distinct !DISubprogram(name: "repeat_n<polars_arrow::array::binview::view::View>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n8repeat_nNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewECsfISxE4fmY1Y_14polars_parquet", scope: !649, file: !646, line: 59, type: !635, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !628, line: 368, column: 13)
!1258 = distinct !DISubprogram(name: "branch<core::num::nonzero::NonZero<usize>>", linkageName: "_RNvXsJ_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtNtB7_3num7nonzero7NonZerojEENtNtNtB7_3ops9try_trait3Try6branchCsfISxE4fmY1Y_14polars_parquet", scope: !650, file: !636, line: 2777, type: !635, scopeLine: 2777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1259 = distinct !DISubprogram(name: "new<polars_arrow::array::binview::view::View>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE3newCsfISxE4fmY1Y_14polars_parquet", scope: !651, file: !646, line: 70, type: !635, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1260 = distinct !DILexicalBlock(scope: !1259, file: !646, line: 71, column: 9)
!1261 = distinct !DISubprogram(name: "spec_extend<polars_arrow::array::binview::view::View, core::iter::sources::repeat_n::RepeatN<polars_arrow::array::binview::view::View>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNBT_EE11spec_extendCsfISxE4fmY1Y_14polars_parquet", scope: !656, file: !652, line: 26, type: !635, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1262 = distinct !DISubprogram(name: "extend<polars_arrow::array::binview::view::View, alloc::alloc::Global, core::iter::sources::repeat_n::RepeatN<polars_arrow::array::binview::view::View>>", linkageName: "_RINvXsi_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBG_E6extendINtNtNtB1M_7sources8repeat_n7RepeatNBG_EECsfISxE4fmY1Y_14polars_parquet", scope: !658, file: !657, line: 3959, type: !635, scopeLine: 3959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1263 = !DILexicalBlockFile(scope: !1251, file: !636, discriminator: 0)
!1264 = !DILocation(line: 356, column: 18, scope: !1249)
!1265 = !DILocation(line: 685, column: 15, scope: !1252, inlinedAt: !1264)
!1266 = !DILocation(line: 361, column: 22, scope: !1253)
!1267 = !DILocation(line: 369, column: 31, scope: !1257)
!1268 = !DILexicalBlockFile(scope: !1259, file: !646, discriminator: 2)
!1269 = !DILocation(line: 60, column: 22, scope: !1256, inlinedAt: !1267)
!1270 = !DILocation(line: 71, column: 21, scope: !1268, inlinedAt: !1269)
!1271 = !DILocation(line: 369, column: 24, scope: !1257)
!1272 = !DILocation(line: 3960, column: 9, scope: !1262, inlinedAt: !1271)
!1273 = !DILocation(line: 636, column: 18, scope: !1263, inlinedAt: !1265)
!1274 = !DILocation(line: 356, column: 12, scope: !1249)
!1275 = !DILocation(line: 360, column: 33, scope: !1253)
!1276 = !DILocation(line: 360, column: 16, scope: !1253)
!1277 = !DILocation(line: 357, column: 18, scope: !1249)
!1278 = !DILocation(line: 367, column: 16, scope: !1254)
!1279 = !DILocation(line: 239, column: 12, scope: !1255, inlinedAt: !1266)
!1280 = !DILocation(line: 242, column: 18, scope: !1255, inlinedAt: !1266)
!1281 = !DILocation(line: 240, column: 18, scope: !1255, inlinedAt: !1266)
!1282 = !DILocation(line: 368, column: 29, scope: !1254)
!1283 = !DILocation(line: 2778, column: 9, scope: !1258, inlinedAt: !1270)
!1284 = !DILocation(line: 372, column: 6, scope: !1249)
!1285 = !DILocation(line: 72, column: 14, scope: !1260, inlinedAt: !1269)
!1286 = !DILocation(line: 73, column: 5, scope: !1259, inlinedAt: !1269)
!1287 = !DILocation(line: 60, column: 5, scope: !1256, inlinedAt: !1267)
!1288 = !DILocation(line: 60, column: 56, scope: !1256, inlinedAt: !1267)
!1289 = !DILocation(line: 27, column: 14, scope: !1261, inlinedAt: !1272)
!1290 = !DILocation(line: 370, column: 37, scope: !1257)
!1291 = !DILocation(line: 370, column: 13, scope: !1257)
!1292 = !DILocation(line: 367, column: 9, scope: !1249)
!1293 = distinct !DISubprogram(name: "gather_n_into<polars_parquet::parquet::encoding::delta_bitpacked::decoder::SumGatherer>", linkageName: "_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoNtB5_11SumGathererEBd_", scope: !665, file: !659, line: 671, type: !635, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1294 = distinct !DILocation(line: 677, column: 32, scope: !1293)
!1295 = distinct !DILocation(line: 677, column: 13, scope: !1293)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !659, line: 683, column: 9)
!1297 = distinct !DILexicalBlock(scope: !1296, file: !659, line: 685, column: 9)
!1298 = distinct !DISubprogram(name: "branch<(), polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBR_", scope: !674, file: !672, line: 2172, type: !635, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1299 = distinct !DILocation(line: 696, column: 15, scope: !1297)
!1300 = distinct !{!1300, i1 true, !"_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_"}
!1301 = distinct !{!1301, !1300, !"_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_: argument 2"}
!1302 = distinct !DISubprogram(name: "gather_block<polars_parquet::parquet::encoding::delta_bitpacked::decoder::SumGatherer>", linkageName: "_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_", scope: !664, file: !659, line: 246, type: !635, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1303 = distinct !DILocation(line: 697, column: 27, scope: !1297)
!1304 = distinct !DILocation(line: 254, column: 33, scope: !1302, inlinedAt: !1303)
!1305 = distinct !DILocation(line: 4, column: 25, scope: !13, inlinedAt: !1304)
!1306 = distinct !DILocation(line: 42, column: 17, scope: !12, inlinedAt: !1305)
!1307 = distinct !DILocation(line: 26, column: 14, scope: !8, inlinedAt: !1306)
!1308 = distinct !DILocation(line: 1041, column: 9, scope: !7, inlinedAt: !1307)
!1309 = distinct !DILocation(line: 102, column: 78, scope: !6, inlinedAt: !1308)
!1310 = distinct !DILocation(line: 42, column: 17, scope: !695, inlinedAt: !1305)
!1311 = distinct !DILocation(line: 180, column: 28, scope: !17, inlinedAt: !1310)
!1312 = distinct !{!1312, i1 true, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode"}
!1313 = distinct !{!1313, !1312, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode: argument 0"}
!1314 = distinct !{!1314, i1 true, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode"}
!1315 = distinct !{!1315, !1314, !"_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode: argument 0"}
!1316 = distinct !DILocation(line: 48, column: 29, scope: !19, inlinedAt: !1305)
!1317 = distinct !DILocation(line: 28, column: 17, scope: !20, inlinedAt: !1316)
!1318 = distinct !DILocation(line: 48, column: 19, scope: !19, inlinedAt: !1305)
!1319 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !708, file: !706, line: 567, type: !635, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1320 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !709, file: !706, line: 18, type: !635, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1321 = distinct !DILexicalBlock(scope: !1302, file: !659, line: 254, column: 5)
!1322 = distinct !DILocation(line: 255, column: 21, scope: !1321, inlinedAt: !1303)
!1323 = distinct !DILocation(line: 19, column: 15, scope: !1320, inlinedAt: !1322)
!1324 = distinct !DISubprogram(name: "split_at_checked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16split_at_checkedCsfISxE4fmY1Y_14polars_parquet", scope: !684, file: !683, line: 2153, type: !635, scopeLine: 2153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !659, line: 256, column: 5)
!1326 = distinct !DILocation(line: 258, column: 10, scope: !1325, inlinedAt: !1303)
!1327 = distinct !{!1327, !1300, !"_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_: argument 4"}
!1328 = distinct !{!1328, !1300, !"_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_: argument 3"}
!1329 = distinct !{!1329, !1300, !"_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_: argument 1"}
!1330 = distinct !{!1330, !1300, !"_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_: argument 0"}
!1331 = distinct !{!1331, i1 true, !"_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_"}
!1332 = distinct !{!1332, !1331, !"_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_: argument 0"}
!1333 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !713, file: !711, line: 433, type: !635, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1334 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !714, file: !711, line: 175, type: !635, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1335 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !715, file: !657, line: 976, type: !635, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1336 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !720, file: !716, line: 446, type: !635, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1337 = distinct !DILexicalBlock(scope: !1336, file: !716, line: 447, column: 17)
!1338 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !718, file: !716, line: 396, type: !635, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1339 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCsfISxE4fmY1Y_14polars_parquet", scope: !718, file: !716, line: 372, type: !635, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1340 = distinct !DISubprogram(name: "to_owned<u8>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCsfISxE4fmY1Y_14polars_parquet", scope: !721, file: !716, line: 841, type: !635, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1341 = distinct !DISubprogram(name: "to_owned", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned", scope: !724, file: !722, line: 210, type: !635, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1342 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsK_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !727, file: !725, line: 3113, type: !635, scopeLine: 3113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1343 = distinct !DISubprogram(name: "into<&str, alloc::string::String>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCsfISxE4fmY1Y_14polars_parquet", scope: !729, file: !728, line: 777, type: !635, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1344 = distinct !DISubprogram(name: "oos<&str>", linkageName: "_RINvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB3_12ParquetError3oosReEB7_", scope: !732, file: !730, line: 38, type: !635, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1345 = distinct !DISubprogram(name: "{closure#0}<polars_parquet::parquet::encoding::delta_bitpacked::decoder::SumGatherer>", linkageName: "_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_", scope: !733, file: !659, line: 259, type: !635, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1346 = distinct !DISubprogram(name: "ok_or_else<(&[u8], &[u8]), polars_parquet::parquet::error::ParquetError, polars_parquet::parquet::encoding::delta_bitpacked::decoder::gather_block::{closure_env#0}<polars_parquet::parquet::encoding::delta_bitpacked::decoder::SumGatherer>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionTRShBJ_EE10ok_or_elseNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorNCINvNtNtNtB17_8encoding15delta_bitpacked7decoder12gather_blockNtB2a_11SumGathererE0EB19_", scope: !640, file: !636, line: 1363, type: !635, scopeLine: 1363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1347 = distinct !DILocation(line: 259, column: 10, scope: !1325, inlinedAt: !1303)
!1348 = distinct !DILocation(line: 1369, column: 25, scope: !1346, inlinedAt: !1347)
!1349 = distinct !DILocation(line: 259, column: 24, scope: !1345, inlinedAt: !1348)
!1350 = distinct !DILocation(line: 39, column: 33, scope: !1344, inlinedAt: !1349)
!1351 = distinct !DILocation(line: 778, column: 9, scope: !1343, inlinedAt: !1350)
!1352 = distinct !DILocation(line: 3114, column: 11, scope: !1342, inlinedAt: !1351)
!1353 = distinct !DILocation(line: 211, column: 62, scope: !1341, inlinedAt: !1352)
!1354 = distinct !DILocation(line: 842, column: 14, scope: !1340, inlinedAt: !1353)
!1355 = distinct !DILocation(line: 376, column: 14, scope: !1339, inlinedAt: !1354)
!1356 = distinct !DILocation(line: 400, column: 16, scope: !1338, inlinedAt: !1355)
!1357 = distinct !DILocation(line: 448, column: 29, scope: !1337, inlinedAt: !1356)
!1358 = distinct !DILocation(line: 977, column: 20, scope: !1335, inlinedAt: !1357)
!1359 = distinct !DILocation(line: 177, column: 20, scope: !1334, inlinedAt: !1358)
!1360 = distinct !DILexicalBlock(scope: !1333, file: !711, line: 442, column: 13)
!1361 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCsfISxE4fmY1Y_14polars_parquet", scope: !713, file: !711, line: 766, type: !635, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1362 = distinct !DILexicalBlock(scope: !1333, file: !711, line: 435, column: 13)
!1363 = distinct !DILocation(line: 438, column: 50, scope: !1362, inlinedAt: !1359)
!1364 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !737, file: !736, line: 202, type: !635, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1365 = distinct !DILocation(line: 438, column: 21, scope: !1362, inlinedAt: !1359)
!1366 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECsfISxE4fmY1Y_14polars_parquet", scope: !676, file: !738, line: 531, type: !635, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1367 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCsfISxE4fmY1Y_14polars_parquet", scope: !741, file: !739, line: 1247, type: !635, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1368 = distinct !DILexicalBlock(scope: !1337, file: !716, line: 448, column: 17)
!1369 = distinct !DILocation(line: 454, column: 36, scope: !1368, inlinedAt: !1356)
!1370 = distinct !DILocation(line: 1252, column: 18, scope: !1367, inlinedAt: !1369)
!1371 = distinct !DISubprogram(name: "from_residual<&[u8], polars_parquet::parquet::error::ParquetError, polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultRShNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBN_EE13from_residualBT_", scope: !742, file: !672, line: 2187, type: !635, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1372 = distinct !DILexicalBlock(scope: !1371, file: !672, line: 2189, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1325, file: !659, line: 259, column: 94)
!1374 = distinct !DILexicalBlock(scope: !1373, file: !659, line: 259, column: 94)
!1375 = distinct !DILocation(line: 257, column: 27, scope: !1465, inlinedAt: !1303)
!1376 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !707, file: !706, line: 82, type: !635, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1377 = distinct !DILexicalBlock(scope: !1376, file: !706, line: 87, column: 5)
!1378 = distinct !DILexicalBlock(scope: !1319, file: !706, line: 573, column: 13)
!1379 = distinct !DILocation(line: 574, column: 15, scope: !1378, inlinedAt: !1323)
!1380 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCsfISxE4fmY1Y_14polars_parquet", scope: !741, file: !739, line: 829, type: !635, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1381 = distinct !DISubprogram(name: "split_at_unchecked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh18split_at_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !684, file: !683, line: 2038, type: !635, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1382 = distinct !DILexicalBlock(scope: !1381, file: !683, line: 2043, column: 9)
!1383 = distinct !DILexicalBlock(scope: !1382, file: !683, line: 2044, column: 9)
!1384 = distinct !DILocation(line: 2157, column: 32, scope: !1324, inlinedAt: !1326)
!1385 = distinct !DILocation(line: 2053, column: 64, scope: !1383, inlinedAt: !1384)
!1386 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet", scope: !692, file: !690, line: 1716, type: !635, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1387 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !694, file: !693, line: 157, type: !635, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1388 = distinct !DILexicalBlock(scope: !1387, file: !693, line: 161, column: 17)
!1389 = distinct !DILexicalBlock(scope: !1388, file: !693, line: 162, column: 17)
!1390 = distinct !DILexicalBlock(scope: !1325, file: !659, line: 262, column: 5)
!1391 = distinct !DILocation(line: 262, column: 22, scope: !1467, inlinedAt: !1303)
!1392 = distinct !DILocation(line: 180, column: 28, scope: !1389, inlinedAt: !1391)
!1393 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE3addCsfISxE4fmY1Y_14polars_parquet", scope: !743, file: !690, line: 651, type: !635, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1394 = distinct !DILocation(line: 185, column: 40, scope: !1389, inlinedAt: !1391)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !659, line: 262, column: 5)
!1396 = distinct !DILexicalBlock(scope: !1395, file: !659, line: 263, column: 9)
!1397 = distinct !DISubprogram(name: "div_ceil", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj8div_ceil", scope: !746, file: !744, line: 3711, type: !635, scopeLine: 3711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1398 = distinct !DILocation(line: 265, column: 74, scope: !1396, inlinedAt: !1303)
!1399 = distinct !DILexicalBlock(scope: !1397, file: !744, line: 3712, column: 13)
!1400 = distinct !DILexicalBlock(scope: !1399, file: !744, line: 3713, column: 13)
!1401 = distinct !DILocation(line: 265, column: 14, scope: !1396, inlinedAt: !1303)
!1402 = distinct !{!1402, i1 true, !"_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererEs_0Bc_"}
!1403 = distinct !{!1403, !1402, !"_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererEs_0Bc_: argument 0"}
!1404 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !713, file: !711, line: 433, type: !635, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1405 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !714, file: !711, line: 175, type: !635, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1406 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !715, file: !657, line: 976, type: !635, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1407 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !720, file: !716, line: 446, type: !635, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1408 = distinct !DILexicalBlock(scope: !1407, file: !716, line: 447, column: 17)
!1409 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !718, file: !716, line: 396, type: !635, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1410 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCsfISxE4fmY1Y_14polars_parquet", scope: !718, file: !716, line: 372, type: !635, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1411 = distinct !DISubprogram(name: "to_owned<u8>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCsfISxE4fmY1Y_14polars_parquet", scope: !721, file: !716, line: 841, type: !635, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1412 = distinct !DISubprogram(name: "to_owned", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned", scope: !724, file: !722, line: 210, type: !635, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1413 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsK_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !727, file: !725, line: 3113, type: !635, scopeLine: 3113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1414 = distinct !DISubprogram(name: "into<&str, alloc::string::String>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCsfISxE4fmY1Y_14polars_parquet", scope: !729, file: !728, line: 777, type: !635, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1415 = distinct !DISubprogram(name: "oos<&str>", linkageName: "_RINvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB3_12ParquetError3oosReEB7_", scope: !732, file: !730, line: 38, type: !635, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1416 = distinct !DISubprogram(name: "{closure#1}<polars_parquet::parquet::encoding::delta_bitpacked::decoder::SumGatherer>", linkageName: "_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererEs_0Bc_", scope: !733, file: !659, line: 266, type: !635, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1417 = distinct !DISubprogram(name: "ok_or_else<(&[u8], &[u8]), polars_parquet::parquet::error::ParquetError, polars_parquet::parquet::encoding::delta_bitpacked::decoder::gather_block::{closure_env#1}<polars_parquet::parquet::encoding::delta_bitpacked::decoder::SumGatherer>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionTRShBJ_EE10ok_or_elseNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorNCINvNtNtNtB17_8encoding15delta_bitpacked7decoder12gather_blockNtB2a_11SumGathererEs_0EB19_", scope: !640, file: !636, line: 1363, type: !635, scopeLine: 1363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1418 = distinct !DILocation(line: 266, column: 14, scope: !1396, inlinedAt: !1303)
!1419 = distinct !DILocation(line: 1369, column: 25, scope: !1417, inlinedAt: !1418)
!1420 = distinct !DILocation(line: 266, column: 28, scope: !1416, inlinedAt: !1419)
!1421 = distinct !DILocation(line: 39, column: 33, scope: !1415, inlinedAt: !1420)
!1422 = distinct !DILocation(line: 778, column: 9, scope: !1414, inlinedAt: !1421)
!1423 = distinct !DILocation(line: 3114, column: 11, scope: !1413, inlinedAt: !1422)
!1424 = distinct !DILocation(line: 211, column: 62, scope: !1412, inlinedAt: !1423)
!1425 = distinct !DILocation(line: 842, column: 14, scope: !1411, inlinedAt: !1424)
!1426 = distinct !DILocation(line: 376, column: 14, scope: !1410, inlinedAt: !1425)
!1427 = distinct !DILocation(line: 400, column: 16, scope: !1409, inlinedAt: !1426)
!1428 = distinct !DILocation(line: 448, column: 29, scope: !1408, inlinedAt: !1427)
!1429 = distinct !DILocation(line: 977, column: 20, scope: !1406, inlinedAt: !1428)
!1430 = distinct !DILocation(line: 177, column: 20, scope: !1405, inlinedAt: !1429)
!1431 = distinct !DILexicalBlock(scope: !1404, file: !711, line: 442, column: 13)
!1432 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCsfISxE4fmY1Y_14polars_parquet", scope: !713, file: !711, line: 766, type: !635, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1433 = distinct !DILexicalBlock(scope: !1404, file: !711, line: 435, column: 13)
!1434 = distinct !DILocation(line: 438, column: 50, scope: !1433, inlinedAt: !1430)
!1435 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !737, file: !736, line: 202, type: !635, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1436 = distinct !DILocation(line: 438, column: 21, scope: !1433, inlinedAt: !1430)
!1437 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECsfISxE4fmY1Y_14polars_parquet", scope: !676, file: !738, line: 531, type: !635, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1438 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCsfISxE4fmY1Y_14polars_parquet", scope: !741, file: !739, line: 1247, type: !635, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1439 = distinct !DILexicalBlock(scope: !1408, file: !716, line: 448, column: 17)
!1440 = distinct !DILocation(line: 454, column: 36, scope: !1439, inlinedAt: !1427)
!1441 = distinct !DILocation(line: 1252, column: 18, scope: !1438, inlinedAt: !1440)
!1442 = distinct !DILexicalBlock(scope: !1371, file: !672, line: 2189, column: 13)
!1443 = distinct !DILexicalBlock(scope: !1396, file: !659, line: 266, column: 98)
!1444 = distinct !DILexicalBlock(scope: !1443, file: !659, line: 266, column: 98)
!1445 = distinct !DILocation(line: 264, column: 31, scope: !1470, inlinedAt: !1303)
!1446 = distinct !DISubprogram(name: "branch<(), polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBR_", scope: !674, file: !672, line: 2172, type: !635, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1447 = distinct !DILocation(line: 267, column: 9, scope: !1396, inlinedAt: !1303)
!1448 = distinct !DILexicalBlock(scope: !1381, file: !683, line: 2043, column: 9)
!1449 = distinct !DILexicalBlock(scope: !1448, file: !683, line: 2044, column: 9)
!1450 = distinct !DILocation(line: 2157, column: 32, scope: !1474, inlinedAt: !1401)
!1451 = distinct !DILocation(line: 2053, column: 64, scope: !1475, inlinedAt: !1450)
!1452 = distinct !DISubprogram(name: "branch<&[u8], polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultRShNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBT_", scope: !674, file: !672, line: 2172, type: !635, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1453 = distinct !DISubprogram(name: "from_residual<(), polars_parquet::parquet::error::ParquetError, polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualBR_", scope: !742, file: !672, line: 2187, type: !635, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !634)
!1454 = distinct !DILexicalBlock(scope: !1453, file: !672, line: 2189, column: 13)
!1455 = distinct !DILexicalBlock(scope: !1297, file: !659, line: 704, column: 14)
!1456 = distinct !DILexicalBlock(scope: !1455, file: !659, line: 704, column: 14)
!1457 = !DILexicalBlockFile(scope: !1293, file: !670, discriminator: 0)
!1458 = !DILocation(line: 693, column: 9, scope: !1297)
!1459 = !DILocation(line: 687, column: 13, scope: !1297)
!1460 = !DILexicalBlockFile(scope: !1297, file: !670, discriminator: 0)
!1461 = !{!1301}
!1462 = !{!1315, !1313, !1301}
!1463 = !{!1330, !1329, !1301, !1328, !1327}
!1464 = !{!1332, !1330, !1329, !1301, !1328, !1327}
!1465 = !DILexicalBlockFile(scope: !1374, file: !659, discriminator: 2)
!1466 = !DILexicalBlockFile(scope: !1325, file: !670, discriminator: 0)
!1467 = !DILexicalBlockFile(scope: !1390, file: !659, discriminator: 2)
!1468 = !{!1403, !1330, !1329, !1301, !1328, !1327}
!1469 = !{!1403, !1330, !1329, !1328, !1327}
!1470 = !DILexicalBlockFile(scope: !1444, file: !659, discriminator: 2)
!1471 = !DILexicalBlockFile(scope: !1396, file: !670, discriminator: 0)
!1472 = !{!1330}
!1473 = !{!1329, !1301, !1328, !1327}
!1474 = !DILexicalBlockFile(scope: !1324, file: !683, discriminator: 2)
!1475 = !DILexicalBlockFile(scope: !1449, file: !683, discriminator: 2)
!1476 = !DILocation(line: 714, column: 9, scope: !1297)
!1477 = !DILocation(line: 697, column: 27, scope: !1297)
end_hunk_2
