Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.07?download=true
inline.NumInlined: 2048
inline.NumDeleted: 828
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
@223 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslpwjCj2YNBy_9polars_io, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@224 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCscgRAwXFJnXP_4core3fmtbNtB5_5Debug3fmt }>, align 8
@225 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBX_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB28_EEENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@226 = private unnamed_addr constant [5 x i8] c"Field", align 1
@227 = private unnamed_addr constant [4 x i8] c"name", align 1
@228 = private unnamed_addr constant [5 x i8] c"dtype", align 1
@229 = private unnamed_addr constant [11 x i8] c"is_nullable", align 1
@230 = private unnamed_addr constant [8 x i8] c"metadata", align 1
@231 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"Z\00\00\00\00\00\00\002\01\00\00.\00\00\00" }>, align 8
@232 = private unnamed_addr constant [20 x i8] c"struct PlIpcMetadata", align 1
@233 = private unnamed_addr constant [22 x i8] c"struct CsvParseOptions", align 1
@234 = private unnamed_addr constant [16 x i8] c"enum CsvEncoding", align 1
@235 = private unnamed_addr constant [18 x i8] c"enum CommentPrefix", align 1
@236 = private unnamed_addr constant [15 x i8] c"enum NullValues", align 1
@237 = private unnamed_addr constant [21 x i8] c"struct CsvReadOptions", align 1
@238 = private unnamed_addr constant [29 x i8] c"enum PythonCredentialProvider", align 1
@239 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgZ49sUHp3tW_5alloc6string6StringNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@PyExc_ValueError = external local_unnamed_addr global ptr
@240 = private unnamed_addr constant [4 x i8] c"Null", align 1
@241 = private unnamed_addr constant [7 x i8] c"Boolean", align 1
@242 = private unnamed_addr constant [4 x i8] c"Int8", align 1
@243 = private unnamed_addr constant [5 x i8] c"Int16", align 1
@244 = private unnamed_addr constant [5 x i8] c"Int32", align 1
@245 = private unnamed_addr constant [5 x i8] c"Int64", align 1
@246 = private unnamed_addr constant [6 x i8] c"Int128", align 1
@247 = private unnamed_addr constant [5 x i8] c"UInt8", align 1
@248 = private unnamed_addr constant [6 x i8] c"UInt16", align 1
@249 = private unnamed_addr constant [6 x i8] c"UInt32", align 1
@250 = private unnamed_addr constant [6 x i8] c"UInt64", align 1
@251 = private unnamed_addr constant [7 x i8] c"UInt128", align 1
@252 = private unnamed_addr constant [7 x i8] c"Float16", align 1
@253 = private unnamed_addr constant [7 x i8] c"Float32", align 1
@254 = private unnamed_addr constant [7 x i8] c"Float64", align 1
@255 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXst_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@256 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@257 = private unnamed_addr constant [9 x i8] c"Timestamp", align 1
@258 = private unnamed_addr constant [6 x i8] c"Date32", align 1
@259 = private unnamed_addr constant [6 x i8] c"Date64", align 1
@260 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8774dFTUdNv_12polars_arrow9datatypes8TimeUnitNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@261 = private unnamed_addr constant [6 x i8] c"Time32", align 1
@262 = private unnamed_addr constant [6 x i8] c"Time64", align 1
@263 = private unnamed_addr constant [8 x i8] c"Duration", align 1
@264 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8774dFTUdNv_12polars_arrow9datatypes12IntervalUnitNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@265 = private unnamed_addr constant [8 x i8] c"Interval", align 1
@266 = private unnamed_addr constant [6 x i8] c"Binary", align 1
@267 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRjNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@268 = private unnamed_addr constant [15 x i8] c"FixedSizeBinary", align 1
@269 = private unnamed_addr constant [11 x i8] c"LargeBinary", align 1
@270 = private unnamed_addr constant [4 x i8] c"Utf8", align 1
@271 = private unnamed_addr constant [9 x i8] c"LargeUtf8", align 1
@272 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@273 = private unnamed_addr constant [4 x i8] c"List", align 1
@274 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECslpwjCj2YNBy_9polars_io, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@275 = private unnamed_addr constant [13 x i8] c"FixedSizeList", align 1
@276 = private unnamed_addr constant [9 x i8] c"LargeList", align 1
@277 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@278 = private unnamed_addr constant [6 x i8] c"Struct", align 1
@279 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRbNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@280 = private unnamed_addr constant [3 x i8] c"Map", align 1
@281 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCs8774dFTUdNv_12polars_arrow9datatypes13physical_typeNtB5_11IntegerTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@282 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeEECslpwjCj2YNBy_9polars_io, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@283 = private unnamed_addr constant [10 x i8] c"Dictionary", align 1
@284 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@285 = private unnamed_addr constant [7 x i8] c"Decimal", align 1
@286 = private unnamed_addr constant [9 x i8] c"Decimal32", align 1
@287 = private unnamed_addr constant [9 x i8] c"Decimal64", align 1
@288 = private unnamed_addr constant [10 x i8] c"Decimal256", align 1
@289 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@290 = private unnamed_addr constant [9 x i8] c"Extension", align 1
@291 = private unnamed_addr constant [10 x i8] c"BinaryView", align 1
@292 = private unnamed_addr constant [8 x i8] c"Utf8View", align 1
@293 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@294 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@295 = private unnamed_addr constant [5 x i8] c"Union", align 1
@296 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylEECslpwjCj2YNBy_9polars_io, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCscgRAwXFJnXP_4core3anyINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB2_3Any7type_idCslpwjCj2YNBy_9polars_io }>, align 8
@297 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylEECslpwjCj2YNBy_9polars_io, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXCsLMQD3BJNpw_9dyn_cloneINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB2_8DynClone11___clone_boxCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array6as_anyCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array10as_any_mutCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array3lenCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB7_5Array8is_emptyCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array5dtypeCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array9dtype_mutCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array8validityCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB7_5Array10null_countCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB7_5Array9has_nullsCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB7_5Array7is_nullCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB7_5Array17is_null_uncheckedCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB7_5Array8is_validCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array14split_at_boxedCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array24split_at_boxed_uncheckedCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array5sliceCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array15slice_uncheckedCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB7_5Array6slicedCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArraylENtB7_5Array16sliced_uncheckedCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array13with_validityCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArraylENtB7_5Array8to_boxedCslpwjCj2YNBy_9polars_io }>, align 8
@298 = private unnamed_addr constant [42 x i8] c"assertion failed: self.check_bound(offset)", align 1
@299 = private unnamed_addr constant [37 x i8] c"crates/polars-arrow/src/array/mod.rs\00", align 1
@300 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @299, [16 x i8] c"$\00\00\00\00\00\00\00&\00\00\00\09\00\00\00" }>, align 8
@301 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEECslpwjCj2YNBy_9polars_io, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCscgRAwXFJnXP_4core3anyINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB2_3Any7type_idCslpwjCj2YNBy_9polars_io }>, align 8
@302 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxEECslpwjCj2YNBy_9polars_io, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXCsLMQD3BJNpw_9dyn_cloneINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB2_8DynClone11___clone_boxCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array6as_anyCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array10as_any_mutCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array3lenCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB7_5Array8is_emptyCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array5dtypeCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array9dtype_mutCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array8validityCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB7_5Array10null_countCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB7_5Array9has_nullsCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB7_5Array7is_nullCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB7_5Array17is_null_uncheckedCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB7_5Array8is_validCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array14split_at_boxedCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array24split_at_boxed_uncheckedCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array5sliceCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array15slice_uncheckedCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB7_5Array6slicedCslpwjCj2YNBy_9polars_io, ptr @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array4list9ListArrayxENtB7_5Array16sliced_uncheckedCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array13with_validityCslpwjCj2YNBy_9polars_io, ptr @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array4listINtB5_9ListArrayxENtB7_5Array8to_boxedCslpwjCj2YNBy_9polars_io }>, align 8
@303 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@304 = private unnamed_addr constant [16 x i8] c"StripPrefixError", align 1
@PyByteArray_Type = external global { {}, {} }
@305 = private unnamed_addr constant [48 x i8] c"\DDP|\C9\B7)\AC\C0\17\09G\B5\B5\D5\84?\1B\FBy\89\D9\D5\16\92\AC\B5\DF\98\A6\0B1\D1\B7\DF\1A\D0\DBr\FD/\96~&j\ED\AF\E1\B8", align 8
@306 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@307 = private unnamed_addr constant [7 x i8] c"Builder", align 1
@308 = private unnamed_addr constant [8 x i8] c"Provider", align 1
@309 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@310 = private unnamed_addr constant [82 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/std/src/sync/once_lock.rs\00", align 1
@311 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @310, [16 x i8] c"Q\00\00\00\00\00\00\00\96\02\00\00\17\00\00\00" }>, align 8
@312 = private unnamed_addr constant [12 x i8] c"EmptySegment", align 1
@313 = private unnamed_addr constant [4 x i8] c"path", align 1
@314 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@315 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@316 = private unnamed_addr constant [10 x i8] c"BadSegment", align 1
@317 = private unnamed_addr constant [6 x i8] c"source", align 1
@318 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECslpwjCj2YNBy_9polars_io, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsG_NtCsh8eZTKRCwoO_3std4pathNtB5_7PathBufNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt }>, align 8
@319 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@320 = private unnamed_addr constant [12 x i8] c"Canonicalize", align 1
@321 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsh8eZTKRCwoO_3std4path7PathBufNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@322 = private unnamed_addr constant [11 x i8] c"InvalidPath", align 1
@323 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@324 = private unnamed_addr constant [10 x i8] c"NonUnicode", align 1
@325 = private unnamed_addr constant [14 x i8] c"PrefixMismatch", align 1
@326 = private unnamed_addr constant [6 x i8] c"prefix", align 1
@327 = private unnamed_addr constant [11 x i8] c"InvalidPart", align 1
@328 = private unnamed_addr constant [7 x i8] c"segment", align 1
@329 = private unnamed_addr constant [7 x i8] c"illegal", align 1
@330 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartECslpwjCj2YNBy_9polars_io, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs8RKTHBS4OBx_12object_store4path5partsNtB5_11InvalidPartNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt }>, align 8
@331 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartECslpwjCj2YNBy_9polars_io, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCs8RKTHBS4OBx_12object_store4path5partsNtB5_11InvalidPartNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr @_RNvXs9_NtNtCs8RKTHBS4OBx_12object_store4path5partsNtB5_11InvalidPartNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr @330, ptr @_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error6sourceCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error5causeCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io }>, align 8
@332 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt }>, align 8
@333 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsh8eZTKRCwoO_3std2io5errorNtB2_5ErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr @332, ptr @_RNvXs8_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core5error5Error6source, ptr @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io, ptr @_RNvXs8_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core5error5Error5cause, ptr @_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io }>, align 8
@334 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCscgRAwXFJnXP_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt }>, align 8
@335 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCscgRAwXFJnXP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt, ptr @_RNvXs_NtNtCscgRAwXFJnXP_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt, ptr @334, ptr @_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCslpwjCj2YNBy_9polars_io, ptr @_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCslpwjCj2YNBy_9polars_io }>, align 8
@336 = private unnamed_addr constant [4 x i8] c"None", align 1
@337 = private unnamed_addr constant [7 x i8] c"Columns", align 1
@338 = private unnamed_addr constant [9 x i8] c"RowGroups", align 1
@339 = private unnamed_addr constant [11 x i8] c"Prefiltered", align 1
@340 = private unnamed_addr constant [4 x i8] c"Auto", align 1
@341 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@342 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@343 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@344 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@345 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCslpwjCj2YNBy_9polars_io }>, align 8
@346 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@347 = private unnamed_addr constant [76 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/alloc/src/string.rs\00", align 1
@348 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @347, [16 x i8] c"K\00\00\00\00\00\00\00d\0B\00\00\0E\00\00\00" }>, align 8
@349 = private unnamed_addr constant [2 x i8] c"Py", align 1
@350 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCscgRAwXFJnXP_4core3fmtONtNtCsfueLBegRnmY_8pyo3_ffi6object8PyObjectNtB5_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@351 = private unnamed_addr constant [5 x i8] c"Error", align 1
@352 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsh8eZTKRCwoO_3std3sys2fs4unix15FilePermissionsNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io }>, align 8
@353 = private unnamed_addr constant [11 x i8] c"Permissions", align 1
@354 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBN_24PythonCredentialProviderNtBP_22IntoCredentialProvider17into_aws_provider0EBT_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBb_24PythonCredentialProviderNtBd_22IntoCredentialProvider17into_aws_provider0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_once6vtableBh_, ptr @_RNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProviderNtB8_22IntoCredentialProvider17into_aws_provider0Bc_, ptr @_RNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProviderNtB8_22IntoCredentialProvider17into_aws_provider0Bc_ }>, align 8
@355 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBN_24PythonCredentialProviderNtBP_22IntoCredentialProvider17into_gcp_provider0EBT_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBb_24PythonCredentialProviderNtBd_22IntoCredentialProvider17into_gcp_provider0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_once6vtableBh_, ptr @_RNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProviderNtB8_22IntoCredentialProvider17into_gcp_provider0Bc_, ptr @_RNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProviderNtB8_22IntoCredentialProvider17into_gcp_provider0Bc_ }>, align 8
@356 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBN_24PythonCredentialProviderNtBP_22IntoCredentialProvider19into_azure_provider0EBT_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtBb_24PythonCredentialProviderNtBd_22IntoCredentialProvider19into_azure_provider0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_once6vtableBh_, ptr @_RNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProviderNtB8_22IntoCredentialProvider19into_azure_provider0Bc_, ptr @_RNCNvXs_NtNtNtCslpwjCj2YNBy_9polars_io5cloud19credential_provider11python_implNtB6_24PythonCredentialProviderNtB8_22IntoCredentialProvider19into_azure_provider0Bc_ }>, align 8
@PyDict_Type = external global { {}, {} }
@PyUnicode_Type = external global { {}, {} }
@PyTuple_Type = external global { {}, {} }
@357 = private unnamed_addr constant [34 x i8] c"number of read bytes exceeds limit", align 1
@358 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"I\00\00\00\00\00\00\00\0E\0C\00\00\09\00\00\00" }>, align 8
@PyBytes_Type = external global { {}, {} }
@359 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"_\00\00\00\00\00\00\00\A1\00\00\00$\00\00\00" }>, align 8
@360 = private unnamed_addr constant [6 x i8] c"Second", align 1
@361 = private unnamed_addr constant [11 x i8] c"Millisecond", align 1
@362 = private unnamed_addr constant [11 x i8] c"Microsecond", align 1
@363 = private unnamed_addr constant [10 x i8] c"Nanosecond", align 1
@364 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @61, [16 x i8] c"O\00\00\00\00\00\00\00i\04\00\00$\00\00\00" }>, align 8
@365 = private unnamed_addr constant <{ [1 x i8], [31 x i8] }> <{ [1 x i8] zeroinitializer, [31 x i8] undef }>, align 8
@366 = private unnamed_addr constant [32 x i8] c"assertion failed: i < self.len()", align 1
@367 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @299, [16 x i8] c"$\00\00\00\00\00\00\00\80\00\00\00\09\00\00\00" }>, align 8
@368 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@369 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -384319424117715423 to ptr), ptr inttoptr (i64 -5148069140377304046 to ptr) }>, align 8
@370 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1359828521786406143 to ptr), ptr inttoptr (i64 4513831374841503833 to ptr) }>, align 8
@371 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -872354419748726492 to ptr), ptr inttoptr (i64 6538350792433600010 to ptr) }>, align 8
@372 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -604323603932567398 to ptr), ptr inttoptr (i64 5344794030256500925 to ptr) }>, align 8
@switch.table._RNvXs7_NtNtCs8774dFTUdNv_12polars_arrow9datatypes13physical_typeNtB5_11IntegerTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\04\05\05\05\06\05\06\06\06\07", align 8
@switch.table._RNvXs7_NtNtCs8774dFTUdNv_12polars_arrow9datatypes13physical_typeNtB5_11IntegerTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.337 = private unnamed_addr constant [10 x ptr] [ptr @242, ptr @243, ptr @244, ptr @245, ptr @246, ptr @247, ptr @248, ptr @249, ptr @250, ptr @251], align 8
@switch.table._RNvXs8_NtNtNtCslpwjCj2YNBy_9polars_io7parquet4read7optionsNtB5_16ParallelStrategyNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\04\07\09\0B\04", align 8
@switch.table._RNvXs8_NtNtNtCslpwjCj2YNBy_9polars_io7parquet4read7optionsNtB5_16ParallelStrategyNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.338 = private unnamed_addr constant [5 x ptr] [ptr @336, ptr @337, ptr @338, ptr @339, ptr @340], align 8
@switch.table._RNvXst_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\06\0B\0B\0A", align 8
@switch.table._RNvXst_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.339 = private unnamed_addr constant [4 x ptr] [ptr @360, ptr @361, ptr @362, ptr @363], align 8
@switch.table._RNvYNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceB8_ = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs8RKTHBS4OBx_12object_store4pathNtB3_4Path5parseReECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1871 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [104 x i8], align 8               ; 13 uses
  %i.f = alloca [48 x i8], align 8                ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 18 uses
  %i.h = tail call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !2198 ; 2 uses
  %i.i = sext i1 %i.h to i64, !dbg !2199
  %.sroa.7.0 = add i64 %2, %i.i, !dbg !2199       ; 3 uses
  %.sroa.0.0.idx = zext i1 %i.h to i64, !dbg !2199
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx, !dbg !2199 ; 3 uses
  %i.j = icmp eq i64 %.sroa.7.0, 0, !dbg !2200
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !2200

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2201
  store i64 0, ptr %i.k, align 8, !dbg !2201
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2201
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.434.0..sroa_idx, align 8, !dbg !2201
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2201
  store i64 0, ptr %.sroa.535.0..sroa_idx, align 8, !dbg !2201
  store i64 -9223372036854775802, ptr %0, align 8, !dbg !2201
  br label %bb.bj, !dbg !2202

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh9ends_withCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !2203
  %i.m = sext i1 %i.l to i64, !dbg !2204
  %.sroa.7.1 = add i64 %.sroa.7.0, %i.m, !dbg !2204 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2205
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !2206
  %.sroa.036.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !dbg !2207
  %.sroa.036.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2207
  %.sroa.036.sroa.4.0.copyload = load i64, ptr %.sroa.036.sroa.4.0..sroa_idx, align 8, !dbg !2207 ; 29 uses
  %.sroa.036.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !2207
  %.sroa.036.sroa.6.0.copyload = load i64, ptr %.sroa.036.sroa.6.0..sroa_idx, align 8, !dbg !2207 ; 6 uses
  %.sroa.036.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !2207
  %.sroa.036.sroa.7.0.copyload = load i64, ptr %.sroa.036.sroa.7.0..sroa_idx, align 8, !dbg !2207 ; 2 uses
  %.sroa.036.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !2207
  %.sroa.036.sroa.8.0.copyload = load i64, ptr %.sroa.036.sroa.8.0..sroa_idx, align 8, !dbg !2207
  %.sroa.036.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2207
  %.sroa.036.sroa.10.0.copyload = load i64, ptr %.sroa.036.sroa.10.0..sroa_idx, align 8, !dbg !2207
  %.sroa.036.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72, !dbg !2207
  %.sroa.036.sroa.12.0.copyload = load ptr, ptr %.sroa.036.sroa.12.0..sroa_idx, align 8, !dbg !2207, !nonnull !1049, !noundef !1049 ; 18 uses
  %.sroa.036.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80, !dbg !2207
  %.sroa.036.sroa.13.0.copyload = load i64, ptr %.sroa.036.sroa.13.0..sroa_idx, align 8, !dbg !2207 ; 57 uses
  %.sroa.036.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88, !dbg !2207
  %.sroa.036.sroa.14.0.copyload = load ptr, ptr %.sroa.036.sroa.14.0..sroa_idx, align 8, !dbg !2207 ; 5 uses
  %.sroa.036.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96, !dbg !2207
  %.sroa.036.sroa.15.0.copyload = load i64, ptr %.sroa.036.sroa.15.0..sroa_idx, align 8, !dbg !2207 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2208
  %i.n = trunc nuw i64 %.sroa.036.sroa.0.0.copyload to i1
  %i.o = add nsw i64 %.sroa.036.sroa.15.0.copyload, -1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  br i1 %i.n, label %.split.us, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.c
  %i.q = and i64 %.sroa.036.sroa.6.0.copyload, 65536, !dbg !2209
  %.sroa.999.sroa.10116.0.extract.trunc.not = icmp eq i64 %i.q, 0, !dbg !2209
  %.sroa.999.sroa.0.0.extract.trunc = trunc i64 %.sroa.036.sroa.6.0.copyload to i1, !dbg !2209
  br i1 %.sroa.999.sroa.10116.0.extract.trunc.not, label %.lr.ph.i.i.peel, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2210

.lr.ph.i.i.peel:                                  ; preds = %.preheader.i.i.preheader
  %i.r = trunc i64 %.sroa.036.sroa.6.0.copyload to i1, !dbg !2211 ; 2 uses
  %i.s = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0, !dbg !2212
  br i1 %i.s, label %bb.f, label %bb.d, !dbg !2212

bb.d:                                             ; preds = %.lr.ph.i.i.peel
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload, !dbg !2213
  br i1 %.not.i.i.i.peel.i.peel, label %bb.e, label %.split.i.i.i.peel.i.peel, !dbg !2213

.split.i.i.i.peel.i.peel:                         ; preds = %bb.d
  %i.t = icmp eq i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload, !dbg !2214
  br i1 %i.t, label %bb.f, label %.loopexit.i, !dbg !2215

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.036.sroa.4.0.copyload, !dbg !2216
  %i.v = load i8, ptr %i.u, align 1, !dbg !2216, !alias.scope !2124, !noalias !2125, !noundef !1049
  %i.w = icmp sgt i8 %i.v, -65, !dbg !2217
  br i1 %i.w, label %bb.f, label %.loopexit.i, !dbg !2215

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel.i.peel, %.lr.ph.i.i.peel
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.036.sroa.4.0.copyload, !dbg !2218 ; 4 uses
  %i.y = icmp samesign eq i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload, !dbg !2219
  br i1 %i.y, label %.loopexit19.i.peel, label %bb.g, !dbg !2220

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.x, align 1, !dbg !2221, !noalias !2127, !noundef !1049 ; 5 uses
  %i.aa = icmp sgt i8 %i.z, -1, !dbg !2222
  br i1 %i.aa, label %bb.h, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel, !dbg !2222

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1, !dbg !2223
  %i.ac = and i8 %i.z, 31, !dbg !2224
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !2224   ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 1, !dbg !2225
  %i.af = icmp samesign ne i64 %i.ae, %.sroa.036.sroa.13.0.copyload, !dbg !2225
  tail call void @llvm.assume(i1 %i.af), !dbg !2226
  %i.ag = load i8, ptr %i.ab, align 1, !dbg !2227, !noalias !2127, !noundef !1049
  %i.ah = shl nuw nsw i32 %i.ad, 6, !dbg !2228
  %i.ai = and i8 %i.ag, 63, !dbg !2229
  %i.aj = zext nneg i8 %i.ai to i32, !dbg !2229   ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj, !dbg !2228
  %i.al = icmp samesign ugt i8 %i.z, -33, !dbg !2230
  br i1 %i.al, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel, label %bb.i, !dbg !2230

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2, !dbg !2231
  %i.an = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 2, !dbg !2232
  %i.ao = icmp samesign ne i64 %i.an, %.sroa.036.sroa.13.0.copyload, !dbg !2232
  tail call void @llvm.assume(i1 %i.ao), !dbg !2233
  %i.ap = load i8, ptr %i.am, align 1, !dbg !2234, !noalias !2127, !noundef !1049
  %i.aq = shl nuw nsw i32 %i.aj, 6, !dbg !2235
  %i.ar = and i8 %i.ap, 63, !dbg !2236
  %i.as = zext nneg i8 %i.ar to i32, !dbg !2236
  %i.at = or disjoint i32 %i.aq, %i.as, !dbg !2235 ; 2 uses
  %i.au = shl nuw nsw i32 %i.ad, 12, !dbg !2237
  %i.av = or disjoint i32 %i.at, %i.au, !dbg !2238
  %i.aw = icmp samesign ugt i8 %i.z, -17, !dbg !2239
  br i1 %i.aw, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i.peel, label %bb.i, !dbg !2239

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 3, !dbg !2240
  %i.ay = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 3, !dbg !2241
  %i.az = icmp samesign ne i64 %i.ay, %.sroa.036.sroa.13.0.copyload, !dbg !2241
  tail call void @llvm.assume(i1 %i.az), !dbg !2242
  %i.ba = load i8, ptr %i.ax, align 1, !dbg !2243, !noalias !2127, !noundef !1049
  %i.bb = shl nuw nsw i32 %i.ad, 18, !dbg !2244
  %i.bc = and i32 %i.bb, 1835008, !dbg !2244
  %i.bd = shl nuw nsw i32 %i.at, 6, !dbg !2245
  %i.be = and i8 %i.ba, 63, !dbg !2246
  %i.bf = zext nneg i8 %i.be to i32, !dbg !2246
  %i.bg = or disjoint i32 %i.bd, %i.bf, !dbg !2245
  %i.bh = or disjoint i32 %i.bg, %i.bc, !dbg !2247
  br label %bb.i, !dbg !2248

bb.h:                                             ; preds = %bb.g
  %i.bi = zext nneg i8 %i.z to i32, !dbg !2249
  br label %bb.i, !dbg !2250

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.av, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel ], [ %i.bh, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i.peel ], [ %i.ak, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel ], [ %i.bi, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112, !dbg !2251
  tail call void @llvm.assume(i1 %i.bj), !dbg !2251
  br i1 %i.r, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, label %bb.j, !dbg !2252

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128, !dbg !2253
  br i1 %i.bk, label %bb.m, label %bb.k, !dbg !2253

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048, !dbg !2254
  br i1 %i.bl, label %bb.m, label %bb.l, !dbg !2254

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536, !dbg !2255
  %..i.i.peel.i.peel = select i1 %i.bm, i64 3, i64 4, !dbg !2256
  br label %bb.m, !dbg !2256

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel.i.peel, %bb.l ], [ 1, %bb.j ], !dbg !2256
  %i.bn = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.036.sroa.4.0.copyload, !dbg !2257 ; 23 uses
  %i.bo = icmp eq i64 %i.bn, 0, !dbg !2212
  br i1 %i.bo, label %bb.p, label %bb.n, !dbg !2212

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.peel = icmp ult i64 %i.bn, %.sroa.036.sroa.13.0.copyload, !dbg !2213
  br i1 %.not.i.i.i.i.peel, label %bb.o, label %.split.i.i.i.i.peel, !dbg !2213

.split.i.i.i.i.peel:                              ; preds = %bb.n
  %i.bp = icmp eq i64 %i.bn, %.sroa.036.sroa.13.0.copyload, !dbg !2214
  br i1 %i.bp, label %bb.p, label %.loopexit.i, !dbg !2215

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.bn, !dbg !2216
  %i.br = load i8, ptr %i.bq, align 1, !dbg !2216, !alias.scope !2124, !noalias !2128, !noundef !1049
  %i.bs = icmp sgt i8 %i.br, -65, !dbg !2217
  br i1 %i.bs, label %bb.p, label %.loopexit.i, !dbg !2215

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.peel, %bb.m
  %i.bt = icmp samesign eq i64 %i.bn, %.sroa.036.sroa.13.0.copyload, !dbg !2219
  br i1 %i.bt, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, label %bb.q, !dbg !2220

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.bn, !dbg !2218
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !2221, !noalias !2129, !noundef !1049 ; 3 uses
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !2222
  br i1 %i.bw, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel, !dbg !2222

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel: ; preds = %bb.q
  %i.bx = add nuw nsw i64 %i.bn, 1, !dbg !2225
  %i.by = icmp samesign ne i64 %i.bx, %.sroa.036.sroa.13.0.copyload, !dbg !2225
  tail call void @llvm.assume(i1 %i.by), !dbg !2226
  %i.bz = icmp samesign ugt i8 %i.bv, -33, !dbg !2230
  br i1 %i.bz, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2230

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel
  %i.ca = add nuw nsw i64 %i.bn, 2, !dbg !2232
  %i.cb = icmp samesign ne i64 %i.ca, %.sroa.036.sroa.13.0.copyload, !dbg !2232
  tail call void @llvm.assume(i1 %i.cb), !dbg !2233
  %i.cc = icmp samesign ugt i8 %i.bv, -17, !dbg !2239
  br i1 %i.cc, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2239

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel
  %i.cd = add nuw nsw i64 %i.bn, 3, !dbg !2241
  %i.ce = icmp samesign ne i64 %i.cd, %.sroa.036.sroa.13.0.copyload, !dbg !2241
  tail call void @llvm.assume(i1 %i.ce), !dbg !2242
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2248

.loopexit19.i.peel:                               ; preds = %bb.f
  br i1 %i.r, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, label %bb.r, !dbg !2252

bb.r:                                             ; preds = %.loopexit19.i.peel
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2258

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel: ; preds = %bb.r, %.loopexit19.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel, %bb.q, %bb.p, %bb.i, %.preheader.i.i.preheader
  %.sroa.999.sroa.0.4.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ false, %bb.p ], [ %.sroa.999.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ], !dbg !2209
  %.sroa.51.2.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ false, %bb.p ], [ true, %.preheader.i.i.preheader ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ], !dbg !2209
  %.sroa.41.2.peel = phi i64 [ 0, %bb.r ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.i ], [ %.sroa.036.sroa.13.0.copyload, %bb.p ], [ 0, %.preheader.i.i.preheader ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ], !dbg !2209
  %.sroa.5.5.peel = phi i64 [ %.sroa.036.sroa.13.0.copyload, %bb.r ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.i ], [ %.sroa.036.sroa.13.0.copyload, %bb.p ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ], !dbg !2209
  %.sroa.7.1.pn.peel = phi i64 [ %.sroa.7.1, %bb.r ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.i ], [ %.sroa.036.sroa.13.0.copyload, %bb.p ], [ %.sroa.7.1, %.preheader.i.i.preheader ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ] ; 2 uses
  %i.cf = icmp eq i64 %.sroa.7.1.pn.peel, 0, !dbg !2259
  br i1 %i.cf, label %.split249.us, label %bb.s, !dbg !2259

bb.s:                                             ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2260
  call void @_RNvMNtNtCs8RKTHBS4OBx_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload, i64 noundef %.sroa.7.1.pn.peel), !dbg !2260
  %i.cg = load i64, ptr %i.f, align 8, !dbg !2261, !range !1096, !noundef !1049
  %.not77.peel = icmp eq i64 %i.cg, -9223372036854775808, !dbg !2261
  br i1 %.not77.peel, label %bb.t, label %.split251.us, !dbg !2262

bb.t:                                             ; preds = %bb.s
  %.sroa.0136.0.copyload.peel = load ptr, ptr %i.p, align 8, !dbg !2263 ; 2 uses
  %i.ch = load <2 x i64>, ptr %.sroa.5137.0..sroa_idx, align 8, !dbg !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2264
  store ptr %.sroa.0136.0.copyload.peel, ptr %i.g, align 8, !dbg !2265
  store <2 x i64> %i.ch, ptr %.sroa.4148.0..sroa_idx, align 8, !dbg !2265
  %i.ci = icmp eq ptr %.sroa.0136.0.copyload.peel, inttoptr (i64 -9223372036854775808 to ptr), !dbg !2266
  br i1 %i.ci, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel, label %bb.u, !dbg !2266

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.peel unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2267

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.peel: ; preds = %bb.u
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !2268
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2266

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.peel, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2269
  br i1 %.sroa.51.2.peel, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread, label %.preheader.i.i, !dbg !2270

.split.us:                                        ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.sroa.14.0.copyload) ]
  %i.cj = sub i64 %.sroa.036.sroa.15.0.copyload, %.sroa.036.sroa.6.0.copyload
  %umax49.i88.us = tail call i64 @llvm.umax.i64(i64 %.sroa.036.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload)
  %i.ck = add i64 %.sroa.036.sroa.4.0.copyload, -1, !dbg !2270 ; 2 uses
  %.first_iter = icmp ult i64 %i.ck, %.sroa.036.sroa.15.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %.not181.us = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0
  %invariant.op = sub i64 1, %.sroa.036.sroa.4.0.copyload
  %exitcond.not.i90.us375.not = icmp ult i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.15.0.copyload
  %invariant.op459 = sub i64 1, %.sroa.036.sroa.4.0.copyload
  %.not181.us378 = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0
  br label %bb.v, !dbg !2270

bb.v:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us, %.split.us
  %.sroa.19.0226.us = phi i64 [ %.sroa.036.sroa.8.0.copyload, %.split.us ], [ %.sroa.19.2.us, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us ] ; 3 uses
  %.sroa.31103.0225.us = phi i64 [ %.sroa.036.sroa.10.0.copyload, %.split.us ], [ %.sroa.31103.2.us, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us ] ; 3 uses
  %.sroa.41.0224.us = phi i64 [ 0, %.split.us ], [ %.sroa.41.2.us, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us ] ; 7 uses
  %i.cl = icmp eq i64 %.sroa.31103.0225.us, -1, !dbg !2271
  %i.cm = add i64 %.sroa.19.0226.us, %i.o, !dbg !2272 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %.sroa.036.sroa.13.0.copyload, !dbg !2273 ; 2 uses
  br i1 %i.cl, label %bb.af, label %bb.w, !dbg !2271

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2135), !dbg !2274
  call void @llvm.experimental.noalias.scope.decl(metadata !2136), !dbg !2274
  br i1 %i.cn, label %.lr.ph.i.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2275

.lr.ph.i.us:                                      ; preds = %bb.w, %.sink.split.i80.us
  %i.co = phi i64 [ %.sink.i.us, %.sink.split.i80.us ], [ %.sroa.31103.0225.us, %bb.w ] ; 3 uses
  %i.cp = phi i64 [ %i.ds, %.sink.split.i80.us ], [ %i.cm, %bb.w ]
  %i.cq = phi i64 [ %.ph71.i.us, %.sink.split.i80.us ], [ %.sroa.19.0226.us, %bb.w ] ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.cp, !dbg !2276
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !2277, !alias.scope !2135, !noundef !1049
  %i.ct = and i8 %i.cs, 63, !dbg !2278
  %i.cu = zext nneg i8 %i.ct to i64, !dbg !2279
  %i.cv = shl nuw i64 1, %i.cu, !dbg !2280
  %i.cw = and i64 %i.cv, %.sroa.036.sroa.7.0.copyload, !dbg !2280
  %i.cx = icmp eq i64 %i.cw, 0, !dbg !2280
  br i1 %i.cx, label %bb.ae, label %bb.x, !dbg !2280

bb.x:                                             ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.co, i64 %.sroa.036.sroa.4.0.copyload), !dbg !2281 ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload), !dbg !2282
  %exitcond.not.i.us370.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.036.sroa.15.0.copyload, !dbg !2283
  br i1 %exitcond.not.i.us370.not, label %.lr.ph, label %.preheader182.us.preheader, !dbg !2284

bb.y:                                             ; preds = %bb.z
  %i.cy = add nuw i64 %.sroa.02.0.i.us371, 1, !dbg !2285 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cy, %umax49.i.us, !dbg !2283
  br i1 %exitcond.not.i.us, label %.preheader182.us.preheader, label %.lr.ph, !dbg !2284

.preheader182.us.preheader:                       ; preds = %bb.y, %bb.x
  %i.cz = icmp ult i64 %i.co, %.sroa.036.sroa.4.0.copyload, !dbg !2286
  br i1 %i.cz, label %.lr.ph373, label %.preheader182.us.preheader._crit_edge, !dbg !2287

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %.sroa.02.0.i.us371 = phi i64 [ %i.cy, %bb.y ], [ %.sroa.0.0.i.i.us, %bb.x ] ; 4 uses
  %i.da = add i64 %.sroa.02.0.i.us371, %i.cq, !dbg !2288 ; 2 uses
  %i.db = icmp ult i64 %i.da, %.sroa.036.sroa.13.0.copyload, !dbg !2289
  br i1 %i.db, label %bb.z, label %.split230.us, !dbg !2289

bb.z:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %.sroa.02.0.i.us371, !dbg !2290
  %i.dd = load i8, ptr %i.dc, align 1, !dbg !2290, !alias.scope !2136, !noundef !1049
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.da, !dbg !2289
  %i.df = load i8, ptr %i.de, align 1, !dbg !2289, !alias.scope !2135, !noundef !1049
  %.not21.i.us = icmp eq i8 %i.dd, %i.df, !dbg !2290
  br i1 %.not21.i.us, label %bb.y, label %bb.aa, !dbg !2290

bb.aa:                                            ; preds = %bb.z
  %.reass.reass = add i64 %i.cq, %invariant.op
  %i.dg = add i64 %.reass.reass, %.sroa.02.0.i.us371, !dbg !2291
  br label %.sink.split.i80.us, !dbg !2292

.preheader182.us:                                 ; preds = %bb.ac
  %i.dh = icmp ult i64 %i.co, %i.di, !dbg !2286
  br i1 %i.dh, label %.lr.ph373, label %.preheader182.us.preheader._crit_edge, !dbg !2287

.lr.ph373:                                        ; preds = %.preheader182.us.preheader, %.preheader182.us
  %.sroa.2.0.i.us372 = phi i64 [ %i.di, %.preheader182.us ], [ %.sroa.036.sroa.4.0.copyload, %.preheader182.us.preheader ]
  %i.di = add i64 %.sroa.2.0.i.us372, -1, !dbg !2293 ; 6 uses
  %i.dj = icmp ult i64 %i.di, %.sroa.036.sroa.15.0.copyload, !dbg !2294
  br i1 %i.dj, label %bb.ab, label %.split233.us, !dbg !2294

bb.ab:                                            ; preds = %.lr.ph373
  %i.dk = add i64 %i.di, %i.cq, !dbg !2295        ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %.sroa.036.sroa.13.0.copyload, !dbg !2296
  br i1 %i.dl, label %bb.ac, label %.split236.us, !dbg !2296

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %i.di, !dbg !2294
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !2294, !alias.scope !2136, !noundef !1049
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.dk, !dbg !2296
  %i.dp = load i8, ptr %i.do, align 1, !dbg !2296, !alias.scope !2135, !noundef !1049
  %.not.i81.us = icmp eq i8 %i.dn, %i.dp, !dbg !2294
  br i1 %.not.i81.us, label %.preheader182.us, label %bb.ad, !dbg !2294

bb.ad:                                            ; preds = %bb.ac
  %i.dq = add i64 %i.cq, %.sroa.036.sroa.6.0.copyload, !dbg !2297
  br label %.sink.split.i80.us, !dbg !2298

bb.ae:                                            ; preds = %.lr.ph.i.us
  %i.dr = add i64 %i.cq, %.sroa.036.sroa.15.0.copyload, !dbg !2299
  br label %.sink.split.i80.us, !dbg !2300

.sink.split.i80.us:                               ; preds = %bb.ae, %bb.ad, %bb.aa
  %.sink.i.us = phi i64 [ %i.cj, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.ae ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.dq, %bb.ad ], [ %i.dg, %bb.aa ], [ %i.dr, %bb.ae ] ; 2 uses
  %i.ds = add i64 %.ph71.i.us, %i.o, !dbg !2301   ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.sroa.036.sroa.13.0.copyload, !dbg !2275
  br i1 %i.dt, label %.lr.ph.i.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2275

.preheader182.us.preheader._crit_edge:            ; preds = %.preheader182.us.preheader, %.preheader182.us
  %i.du = add i64 %i.cq, %.sroa.036.sroa.15.0.copyload, !dbg !2302 ; 2 uses
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2303

bb.af:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2144), !dbg !2304
  call void @llvm.experimental.noalias.scope.decl(metadata !2145), !dbg !2304
  br i1 %i.cn, label %.lr.ph.i85.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2305

.lr.ph.i85.us:                                    ; preds = %bb.af, %bb.am
  %i.dv = phi i64 [ %i.eu, %bb.am ], [ %i.cm, %bb.af ]
  %i.dw = phi i64 [ %i.et, %bb.am ], [ %.sroa.19.0226.us, %bb.af ] ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.dv, !dbg !2306
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !2307, !alias.scope !2144, !noundef !1049
  %i.dz = and i8 %i.dy, 63, !dbg !2308
  %i.ea = zext nneg i8 %i.dz to i64, !dbg !2309
  %i.eb = shl nuw i64 1, %i.ea, !dbg !2310
  %i.ec = and i64 %i.eb, %.sroa.036.sroa.7.0.copyload, !dbg !2310
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !2310
  br i1 %i.ed, label %bb.al, label %.preheader.preheader, !dbg !2310

.preheader.preheader:                             ; preds = %.lr.ph.i85.us
  br i1 %exitcond.not.i90.us375.not, label %bb.ai, label %.preheader.us.preheader, !dbg !2311

.preheader:                                       ; preds = %bb.aj
  %i.ee = add nuw i64 %.sroa.02.0.i89.us379, 1, !dbg !2312 ; 2 uses
  %exitcond.not.i90.us = icmp eq i64 %i.ee, %umax49.i88.us, !dbg !2313
  br i1 %exitcond.not.i90.us, label %.preheader.us.preheader, label %bb.ai, !dbg !2311

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.first_iter.fr, label %.preheader.us.us.preheader, label %.lr.ph380.a

.preheader.us.us.preheader:                       ; preds = %.preheader.us.preheader
  br i1 %.not181.us378, label %.preheader.us.preheader._crit_edge, label %.lr.ph377, !dbg !2314

.preheader.us.preheader.a:                        ; preds = %bb.ag
  %.not181.us.us = icmp eq i64 %3, 0, !dbg !2315
  br i1 %.not181.us.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph377, !dbg !2314

.lr.ph377:                                        ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a
  %.sroa.02.0.i89.us376 = phi i64 [ %3, %.preheader.us.preheader.a ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.us.us.preheader ]
  %3 = add i64 %.sroa.02.0.i89.us376, -1, !dbg !2316 ; 4 uses
  %i.ef = add i64 %3, %i.dw, !dbg !2317           ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.036.sroa.13.0.copyload, !dbg !2318
  br i1 %i.eg, label %bb.ag, label %bb.ah, !dbg !2318

bb.ag:                                            ; preds = %.lr.ph377
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %3, !dbg !2319
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !2319, !alias.scope !2145, !noundef !1049
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.ef, !dbg !2318
  %i.ek = load i8, ptr %i.ej, align 1, !dbg !2318, !alias.scope !2144, !noundef !1049
  %.not21.i92.us.a = icmp eq i8 %i.ei, %i.ek, !dbg !2319
  br i1 %.not21.i92.us.a, label %.preheader.us.preheader.a, label %.preheader.us, !dbg !2319

bb.ah:                                            ; preds = %.lr.ph377
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ef, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #35, !dbg !2318, !noalias !2146
  unreachable, !dbg !2318

.preheader.us:                                    ; preds = %bb.ag
  %4 = add i64 %.sroa.036.sroa.6.0.copyload, %i.dw, !dbg !2320
  br label %bb.am, !dbg !2321

.lr.ph380.a:                                      ; preds = %.preheader.us.preheader
  br i1 %.not181.us, label %.preheader.us.preheader._crit_edge, label %.split243.us, !dbg !2314

bb.ai:                                            ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i89.us379 = phi i64 [ %i.ee, %.preheader ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.el = add i64 %.sroa.02.0.i89.us379, %i.dw, !dbg !2322 ; 2 uses
  %i.em = icmp ult i64 %i.el, %.sroa.036.sroa.13.0.copyload, !dbg !2323
  br i1 %i.em, label %bb.aj, label %.split239.us, !dbg !2323

bb.aj:                                            ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %.sroa.02.0.i89.us379, !dbg !2324
  %i.eo = load i8, ptr %i.en, align 1, !dbg !2324, !alias.scope !2145, !noundef !1049
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.el, !dbg !2323
  %i.eq = load i8, ptr %i.ep, align 1, !dbg !2323, !alias.scope !2144, !noundef !1049
  %.not.i94.us = icmp eq i8 %i.eo, %i.eq, !dbg !2324
  br i1 %.not.i94.us, label %.preheader, label %bb.ak, !dbg !2324

bb.ak:                                            ; preds = %bb.aj
  %.reass343.reass = add i64 %i.dw, %invariant.op459
  %i.er = add i64 %.reass343.reass, %.sroa.02.0.i89.us379, !dbg !2325
  br label %bb.am, !dbg !2326

.split243.us:                                     ; preds = %.lr.ph380.a
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ck, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #35, !dbg !2319, !noalias !2146
  unreachable, !dbg !2319

bb.al:                                            ; preds = %.lr.ph.i85.us
  %i.es = add i64 %i.dw, %.sroa.036.sroa.15.0.copyload, !dbg !2327
  br label %bb.am, !dbg !2328

bb.am:                                            ; preds = %bb.al, %.preheader.us, %bb.ak
  %i.et = phi i64 [ %i.er, %bb.ak ], [ %i.es, %bb.al ], [ %4, %.preheader.us ] ; 2 uses
  %i.eu = add i64 %i.et, %i.o, !dbg !2329         ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %.sroa.036.sroa.13.0.copyload, !dbg !2305
  br i1 %i.ev, label %.lr.ph.i85.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2305

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a, %.lr.ph380.a
  %i.ew = add i64 %i.dw, %.sroa.036.sroa.15.0.copyload, !dbg !2330 ; 2 uses
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2331

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us: ; preds = %.sink.split.i80.us, %bb.am, %.preheader.us.preheader._crit_edge, %bb.af, %.preheader182.us.preheader._crit_edge, %bb.w
  %.sroa.51.2.us = phi i1 [ false, %.preheader182.us.preheader._crit_edge ], [ true, %bb.w ], [ true, %bb.am ], [ true, %bb.af ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %.sink.split.i80.us ], !dbg !2209
  %.sroa.41.2.us = phi i64 [ %i.du, %.preheader182.us.preheader._crit_edge ], [ %.sroa.41.0224.us, %bb.w ], [ %.sroa.41.0224.us, %bb.am ], [ %.sroa.41.0224.us, %bb.af ], [ %i.ew, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0224.us, %.sink.split.i80.us ], !dbg !2209
  %.sroa.31103.2.us = phi i64 [ 0, %.preheader182.us.preheader._crit_edge ], [ %.sroa.31103.0225.us, %bb.w ], [ -1, %bb.am ], [ -1, %bb.af ], [ -1, %.preheader.us.preheader._crit_edge ], [ %.sink.i.us, %.sink.split.i80.us ], !dbg !2209
  %.sroa.19.2.us = phi i64 [ %i.du, %.preheader182.us.preheader._crit_edge ], [ %.sroa.036.sroa.13.0.copyload, %bb.w ], [ %.sroa.036.sroa.13.0.copyload, %bb.am ], [ %.sroa.036.sroa.13.0.copyload, %bb.af ], [ %i.ew, %.preheader.us.preheader._crit_edge ], [ %.sroa.036.sroa.13.0.copyload, %.sink.split.i80.us ], !dbg !2209
  %.sroa.7.1.pn.us = phi i64 [ %i.cq, %.preheader182.us.preheader._crit_edge ], [ %.sroa.7.1, %bb.w ], [ %.sroa.7.1, %bb.am ], [ %.sroa.7.1, %bb.af ], [ %i.dw, %.preheader.us.preheader._crit_edge ], [ %.sroa.7.1, %.sink.split.i80.us ] ; 2 uses
  %i.ex = icmp eq i64 %.sroa.7.1.pn.us, %.sroa.41.0224.us, !dbg !2259
  br i1 %i.ex, label %.split249.us, label %bb.an, !dbg !2259

bb.an:                                            ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us
  %.sroa.4.1.i.us = sub nuw i64 %.sroa.7.1.pn.us, %.sroa.41.0224.us, !dbg !2332
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.41.0224.us, !dbg !2332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2260
  call void @_RNvMNtNtCs8RKTHBS4OBx_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us), !dbg !2260
  %i.ey = load i64, ptr %i.f, align 8, !dbg !2261, !range !1096, !noundef !1049
  %.not77.us = icmp eq i64 %i.ey, -9223372036854775808, !dbg !2261
  br i1 %.not77.us, label %bb.ao, label %.split251.us, !dbg !2262

bb.ao:                                            ; preds = %bb.an
  %.sroa.0136.0.copyload.us = load ptr, ptr %i.p, align 8, !dbg !2263 ; 2 uses
  %i.ez = load <2 x i64>, ptr %.sroa.5137.0..sroa_idx, align 8, !dbg !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2264
  store ptr %.sroa.0136.0.copyload.us, ptr %i.g, align 8, !dbg !2265
  store <2 x i64> %i.ez, ptr %.sroa.4148.0..sroa_idx, align 8, !dbg !2265
  %i.fa = icmp eq ptr %.sroa.0136.0.copyload.us, inttoptr (i64 -9223372036854775808 to ptr), !dbg !2266
  br i1 %i.fa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us, label %bb.ap, !dbg !2266

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.us unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2267

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.us: ; preds = %bb.ap
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !2268
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us, !dbg !2266

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.us, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2269
  br i1 %.sroa.51.2.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread, label %bb.v, !dbg !2270

.preheader.i.i:                                   ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit
  %.sroa.5.0227 = phi i64 [ %.sroa.5.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.5.5.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel ] ; 15 uses
  %.sroa.41.0224 = phi i64 [ %.sroa.41.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.41.2.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel ] ; 4 uses
  %.sroa.999.sroa.0.0222 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.999.sroa.0.4.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel ] ; 2 uses
  %i.fb = icmp eq i64 %.sroa.5.0227, 0, !dbg !2212
  br i1 %i.fb, label %bb.as, label %bb.aq, !dbg !2212

bb.aq:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0227, %.sroa.036.sroa.13.0.copyload, !dbg !2213
  br i1 %.not.i.i.i.peel.i, label %bb.ar, label %.split.i.i.i.peel.i, !dbg !2213

.split.i.i.i.peel.i:                              ; preds = %bb.aq
  %i.fc = icmp eq i64 %.sroa.5.0227, %.sroa.036.sroa.13.0.copyload, !dbg !2214
  br i1 %i.fc, label %bb.as, label %.loopexit.i, !dbg !2215

bb.ar:                                            ; preds = %bb.aq
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.5.0227, !dbg !2216
  %i.fe = load i8, ptr %i.fd, align 1, !dbg !2216, !alias.scope !2124, !noalias !2125, !noundef !1049
  %i.ff = icmp sgt i8 %i.fe, -65, !dbg !2217
  br i1 %i.ff, label %bb.as, label %.loopexit.i, !dbg !2215

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.5.0227, !dbg !2218 ; 4 uses
  %i.fh = icmp samesign eq i64 %.sroa.5.0227, %.sroa.036.sroa.13.0.copyload, !dbg !2219
  br i1 %i.fh, label %.loopexit19.i, label %bb.at, !dbg !2220

bb.at:                                            ; preds = %bb.as
  %i.fi = load i8, ptr %i.fg, align 1, !dbg !2221, !noalias !2127, !noundef !1049 ; 5 uses
  %i.fj = icmp sgt i8 %i.fi, -1, !dbg !2222
  br i1 %i.fj, label %bb.au, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i, !dbg !2222

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i: ; preds = %bb.at
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 1, !dbg !2223
  %i.fl = and i8 %i.fi, 31, !dbg !2224
  %i.fm = zext nneg i8 %i.fl to i32, !dbg !2224   ; 3 uses
  %i.fn = add nuw nsw i64 %.sroa.5.0227, 1, !dbg !2225
  %i.fo = icmp samesign ne i64 %i.fn, %.sroa.036.sroa.13.0.copyload, !dbg !2225
  call void @llvm.assume(i1 %i.fo), !dbg !2226
  %i.fp = load i8, ptr %i.fk, align 1, !dbg !2227, !noalias !2127, !noundef !1049
  %i.fq = shl nuw nsw i32 %i.fm, 6, !dbg !2228
  %i.fr = and i8 %i.fp, 63, !dbg !2229
  %i.fs = zext nneg i8 %i.fr to i32, !dbg !2229   ; 2 uses
  %i.ft = or disjoint i32 %i.fq, %i.fs, !dbg !2228
  %i.fu = icmp samesign ugt i8 %i.fi, -33, !dbg !2230
  br i1 %i.fu, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i, label %bb.av, !dbg !2230

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 2, !dbg !2231
  %i.fw = add nuw nsw i64 %.sroa.5.0227, 2, !dbg !2232
  %i.fx = icmp samesign ne i64 %i.fw, %.sroa.036.sroa.13.0.copyload, !dbg !2232
  call void @llvm.assume(i1 %i.fx), !dbg !2233
  %i.fy = load i8, ptr %i.fv, align 1, !dbg !2234, !noalias !2127, !noundef !1049
  %i.fz = shl nuw nsw i32 %i.fs, 6, !dbg !2235
  %i.ga = and i8 %i.fy, 63, !dbg !2236
  %i.gb = zext nneg i8 %i.ga to i32, !dbg !2236
  %i.gc = or disjoint i32 %i.fz, %i.gb, !dbg !2235 ; 2 uses
  %i.gd = shl nuw nsw i32 %i.fm, 12, !dbg !2237
  %i.ge = or disjoint i32 %i.gc, %i.gd, !dbg !2238
  %i.gf = icmp samesign ugt i8 %i.fi, -17, !dbg !2239
  br i1 %i.gf, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i, label %bb.av, !dbg !2239

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fg, i64 3, !dbg !2240
  %i.gh = add nuw nsw i64 %.sroa.5.0227, 3, !dbg !2241
  %i.gi = icmp samesign ne i64 %i.gh, %.sroa.036.sroa.13.0.copyload, !dbg !2241
  call void @llvm.assume(i1 %i.gi), !dbg !2242
  %i.gj = load i8, ptr %i.gg, align 1, !dbg !2243, !noalias !2127, !noundef !1049
  %i.gk = shl nuw nsw i32 %i.fm, 18, !dbg !2244
  %i.gl = and i32 %i.gk, 1835008, !dbg !2244
  %i.gm = shl nuw nsw i32 %i.gc, 6, !dbg !2245
  %i.gn = and i8 %i.gj, 63, !dbg !2246
  %i.go = zext nneg i8 %i.gn to i32, !dbg !2246
  %i.gp = or disjoint i32 %i.gm, %i.go, !dbg !2245
  %i.gq = or disjoint i32 %i.gp, %i.gl, !dbg !2247
  br label %bb.av, !dbg !2248

bb.au:                                            ; preds = %bb.at
  %i.gr = zext nneg i8 %i.fi to i32, !dbg !2249
  br label %bb.av, !dbg !2250

bb.av:                                            ; preds = %bb.au, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ge, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i ], [ %i.gq, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i ], [ %i.ft, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i ], [ %i.gr, %bb.au ] ; 4 uses
  %i.gs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112, !dbg !2251
  call void @llvm.assume(i1 %i.gs), !dbg !2251
  br i1 %.sroa.999.sroa.0.0222, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, label %bb.aw, !dbg !2252

bb.aw:                                            ; preds = %bb.av
  %i.gt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128, !dbg !2253
  br i1 %i.gt, label %bb.az, label %bb.ax, !dbg !2253

bb.ax:                                            ; preds = %bb.aw
  %i.gu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048, !dbg !2254
  br i1 %i.gu, label %bb.az, label %bb.ay, !dbg !2254

bb.ay:                                            ; preds = %bb.ax
  %i.gv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536, !dbg !2255
  %..i.i.peel.i = select i1 %i.gv, i64 3, i64 4, !dbg !2256
  br label %bb.az, !dbg !2256

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.ax ], [ %..i.i.peel.i, %bb.ay ], [ 1, %bb.aw ], !dbg !2256
  %i.gw = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0227, !dbg !2257 ; 23 uses
  %i.gx = icmp eq i64 %i.gw, 0, !dbg !2212
  br i1 %i.gx, label %bb.bc, label %bb.ba, !dbg !2212

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i = icmp ult i64 %i.gw, %.sroa.036.sroa.13.0.copyload, !dbg !2213
  br i1 %.not.i.i.i.i, label %bb.bb, label %.split.i.i.i.i, !dbg !2213

.split.i.i.i.i:                                   ; preds = %bb.ba
  %i.gy = icmp eq i64 %i.gw, %.sroa.036.sroa.13.0.copyload, !dbg !2214
  br i1 %i.gy, label %bb.bc, label %.loopexit.i, !dbg !2215

bb.bb:                                            ; preds = %bb.ba
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.gw, !dbg !2216
  %i.ha = load i8, ptr %i.gz, align 1, !dbg !2216, !alias.scope !2124, !noalias !2128, !noundef !1049
  %i.hb = icmp sgt i8 %i.ha, -65, !dbg !2217
  br i1 %i.hb, label %bb.bc, label %.loopexit.i, !dbg !2215

bb.bc:                                            ; preds = %bb.bb, %.split.i.i.i.i, %bb.az
  %i.hc = icmp samesign eq i64 %i.gw, %.sroa.036.sroa.13.0.copyload, !dbg !2219
  br i1 %i.hc, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, label %bb.bd, !dbg !2220

bb.bd:                                            ; preds = %bb.bc
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.gw, !dbg !2218
  %i.he = load i8, ptr %i.hd, align 1, !dbg !2221, !noalias !2129, !noundef !1049 ; 3 uses
  %i.hf = icmp sgt i8 %i.he, -1, !dbg !2222
  br i1 %i.hf, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i, !dbg !2222

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i: ; preds = %bb.bd
  %i.hg = add nuw nsw i64 %i.gw, 1, !dbg !2225
  %i.hh = icmp samesign ne i64 %i.hg, %.sroa.036.sroa.13.0.copyload, !dbg !2225
  call void @llvm.assume(i1 %i.hh), !dbg !2226
  %i.hi = icmp samesign ugt i8 %i.he, -33, !dbg !2230
  br i1 %i.hi, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, !dbg !2230

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i
  %i.hj = add nuw nsw i64 %i.gw, 2, !dbg !2232
  %i.hk = icmp samesign ne i64 %i.hj, %.sroa.036.sroa.13.0.copyload, !dbg !2232
  call void @llvm.assume(i1 %i.hk), !dbg !2233
  %i.hl = icmp samesign ugt i8 %i.he, -17, !dbg !2239
  br i1 %i.hl, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, !dbg !2239

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i
  %i.hm = add nuw nsw i64 %i.gw, 3, !dbg !2241
  %i.hn = icmp samesign ne i64 %i.hm, %.sroa.036.sroa.13.0.copyload, !dbg !2241
  call void @llvm.assume(i1 %i.hn), !dbg !2242
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, !dbg !2248

.loopexit.i:                                      ; preds = %bb.bb, %.split.i.i.i.i, %bb.ar, %.split.i.i.i.peel.i, %bb.o, %.split.i.i.i.i.peel, %bb.e, %.split.i.i.i.peel.i.peel
  %.lcssa12.i = phi i64 [ %.sroa.036.sroa.4.0.copyload, %.split.i.i.i.peel.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.e ], [ %i.bn, %.split.i.i.i.i.peel ], [ %i.bn, %bb.o ], [ %i.gw, %bb.bb ], [ %i.gw, %.split.i.i.i.i ], [ %.sroa.5.0227, %bb.ar ], [ %.sroa.5.0227, %.split.i.i.i.peel.i ]
  call void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload, i64 noundef %.sroa.036.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #35, !dbg !2333, !noalias !2128
  unreachable, !dbg !2333

.loopexit19.i:                                    ; preds = %bb.as
  br i1 %.sroa.999.sroa.0.0222, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, label %bb.be, !dbg !2252

.split239.us:                                     ; preds = %bb.ai
  %i.ho = add i64 %i.dw, %.sroa.036.sroa.4.0.copyload, !dbg !2334
  %umax.i91 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, i64 %i.ho), !dbg !2334
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i91, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #35, !dbg !2323, !noalias !2146
  unreachable, !dbg !2323

.split233.us:                                     ; preds = %.lr.ph373
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.di, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #35, !dbg !2294, !noalias !2147
  unreachable, !dbg !2294

.split236.us:                                     ; preds = %bb.ab
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #35, !dbg !2296, !noalias !2147
  unreachable, !dbg !2296

.split230.us:                                     ; preds = %.lr.ph
  %i.hp = add i64 %i.cq, %.sroa.0.0.i.i.us, !dbg !2282
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, i64 %i.hp), !dbg !2282
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #35, !dbg !2289, !noalias !2147
  unreachable, !dbg !2289

bb.be:                                            ; preds = %.loopexit19.i
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, !dbg !2258

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i, %bb.bd, %bb.bc, %bb.av, %.loopexit19.i, %bb.be
  %.sroa.51.2 = phi i1 [ true, %bb.be ], [ false, %.loopexit19.i ], [ false, %bb.av ], [ false, %bb.bc ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i ], [ false, %bb.bd ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i ], !dbg !2209
  %.sroa.41.2 = phi i64 [ %.sroa.41.0224, %bb.be ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %.sroa.036.sroa.13.0.copyload, %bb.bc ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i ], [ %i.gw, %bb.bd ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i ], !dbg !2209
  %.sroa.5.5 = phi i64 [ %.sroa.036.sroa.13.0.copyload, %bb.be ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %.sroa.036.sroa.13.0.copyload, %bb.bc ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i ], [ %i.gw, %bb.bd ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i ], !dbg !2209
  %.sroa.7.1.pn = phi i64 [ %.sroa.7.1, %bb.be ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %.sroa.036.sroa.13.0.copyload, %bb.bc ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i ], [ %i.gw, %bb.bd ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i ], [ %i.gw, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i ] ; 2 uses
  %i.hq = icmp eq i64 %.sroa.7.1.pn, %.sroa.41.0224, !dbg !2259
  br i1 %i.hq, label %.split249.us, label %bb.bk, !dbg !2259

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2335
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.7.1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2335
  %i.hr = load i64, ptr %i.d, align 8, !dbg !2335, !range !1141, !noundef !1049
  %i.hs = trunc nuw i64 %i.hr to i1, !dbg !2336
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2337
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !2337, !range !1096, !noundef !1049 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2337 ; 2 uses
  br i1 %i.hs, label %bb.bf, label %bb.bg, !dbg !2336, !prof !1142

bb.bf:                                            ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread
  %i.hw = load i64, ptr %i.hv, align 8, !dbg !2338
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.hu, i64 %i.hw) #36, !dbg !2339
  unreachable

bb.bg:                                            ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread
  %i.hx = load ptr, ptr %i.hv, align 8, !dbg !2340, !nonnull !1049, !noundef !1049 ; 2 uses
  %i.hy = icmp ule i64 %.sroa.7.1, %i.hu, !dbg !2341
  call void @llvm.assume(i1 %i.hy), !dbg !2342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2343
  %.not76 = icmp eq i64 %.sroa.7.1, 0, !dbg !2344
  br i1 %.not76, label %bb.bh, label %bb.bi, !dbg !2344

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2345
  store i64 %i.hu, ptr %i.hz, align 8, !dbg !2345
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2345
  store ptr %i.hx, ptr %.sroa.455.0..sroa_idx, align 8, !dbg !2345
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2345
  store i64 %.sroa.7.1, ptr %.sroa.556.0..sroa_idx, align 8, !dbg !2345
  store i64 -9223372036854775802, ptr %0, align 8, !dbg !2345
  br label %bb.bj, !dbg !2346

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hx, ptr nonnull align 1 %.sroa.0.0, i64 %.sroa.7.1, i1 false), !dbg !2347
  br label %bb.bh, !dbg !2348

bb.bj:                                            ; preds = %bb.bn, %_RNCINvMNtCs8RKTHBS4OBx_12object_store4pathNtB5_4Path5parseReE0CslpwjCj2YNBy_9polars_io.exit, %bb.b, %bb.bh
  ret void, !dbg !2349

.split249.us:                                     ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2350
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2350
  %i.ia = load i64, ptr %i.c, align 8, !dbg !2350, !range !1141, !noundef !1049
  %i.ib = trunc nuw i64 %i.ia to i1, !dbg !2351
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2352
  %i.id = load i64, ptr %i.ic, align 8, !dbg !2352, !range !1096, !noundef !1049 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2352 ; 2 uses
  br i1 %i.ib, label %bb.bl, label %bb.bm, !dbg !2351, !prof !1142

bb.bk:                                            ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit
  %.sroa.4.1.i = sub nuw i64 %.sroa.7.1.pn, %.sroa.41.0224, !dbg !2332
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.41.0224, !dbg !2332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2260
  call void @_RNvMNtNtCs8RKTHBS4OBx_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i), !dbg !2260
  %i.if = load i64, ptr %i.f, align 8, !dbg !2261, !range !1096, !noundef !1049
  %.not77 = icmp eq i64 %i.if, -9223372036854775808, !dbg !2261
  br i1 %.not77, label %bb.bw, label %.split251.us, !dbg !2262

bb.bl:                                            ; preds = %.split249.us
  %i.ig = load i64, ptr %i.ie, align 8, !dbg !2353
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.id, i64 %i.ig) #36, !dbg !2354
  unreachable

bb.bm:                                            ; preds = %.split249.us
  %i.ih = load ptr, ptr %i.ie, align 8, !dbg !2355, !nonnull !1049, !noundef !1049 ; 2 uses
  %i.ii = icmp ule i64 %2, %i.id, !dbg !2356
  call void @llvm.assume(i1 %i.ii), !dbg !2357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2358
  %.not78 = icmp eq i64 %2, 0, !dbg !2359
  br i1 %.not78, label %bb.bn, label %bb.bo, !dbg !2359

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !2360
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2360
  store i64 %i.id, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !2360
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2360
  store ptr %i.ih, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8, !dbg !2360
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2360
  store i64 %2, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8, !dbg !2360
  br label %bb.bj, !dbg !2361

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull align 1 %1, i64 %2, i1 false), !dbg !2362
  br label %bb.bn, !dbg !2363

.split251.us:                                     ; preds = %bb.s, %bb.bk, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !2365
  call void @llvm.experimental.noalias.scope.decl(metadata !2189), !dbg !2364
  call void @llvm.experimental.noalias.scope.decl(metadata !2190), !dbg !2364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2366, !noalias !2191
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bq unwind label %bb.bp, !dbg !2366, !noalias !2191

bb.bp:                                            ; preds = %bb.br, %.split251.us
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #37
          to label %common.resume unwind label %bb.bv, !dbg !2367, !noalias !2194

bb.bq:                                            ; preds = %.split251.us
  %i.ik = load i64, ptr %i.a, align 8, !dbg !2366, !range !1141, !noalias !2191, !noundef !1049
  %i.il = trunc nuw i64 %i.ik to i1, !dbg !2368
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2369
  %i.in = load i64, ptr %i.im, align 8, !dbg !2369, !range !1096, !noalias !2191, !noundef !1049 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2369 ; 2 uses
  br i1 %i.il, label %bb.br, label %bb.bs, !dbg !2368, !prof !1142

bb.br:                                            ; preds = %bb.bq
  %i.ip = load i64, ptr %i.io, align 8, !dbg !2370, !noalias !2191
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.in, i64 %i.ip) #36
          to label %bb.bu unwind label %bb.bp, !dbg !2371, !noalias !2191

bb.bs:                                            ; preds = %bb.bq
  %i.iq = load ptr, ptr %i.io, align 8, !dbg !2372, !noalias !2191, !nonnull !1049, !noundef !1049 ; 2 uses
  %i.ir = icmp ule i64 %2, %i.in, !dbg !2373
  call void @llvm.assume(i1 %i.ir), !dbg !2374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2375, !noalias !2191
  %.not.i = icmp eq i64 %2, 0, !dbg !2376
  br i1 %.not.i, label %_RNCINvMNtCs8RKTHBS4OBx_12object_store4pathNtB5_4Path5parseReE0CslpwjCj2YNBy_9polars_io.exit, label %bb.bt, !dbg !2376

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !2377, !noalias !2195
  br label %_RNCINvMNtCs8RKTHBS4OBx_12object_store4pathNtB5_4Path5parseReE0CslpwjCj2YNBy_9polars_io.exit, !dbg !2378

bb.bu:                                            ; preds = %bb.br
  unreachable

bb.bv:                                            ; preds = %bb.bp
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !2379, !noalias !2194
  unreachable, !dbg !2379

common.resume:                                    ; preds = %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %i.ij, %bb.bp ], [ %lpad.loopexit.split-lp424, %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op, !dbg !2380

_RNCINvMNtCs8RKTHBS4OBx_12object_store4pathNtB5_4Path5parseReE0CslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.bs, %bb.bt
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !dbg !2381, !alias.scope !2195
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !2381
  %.sroa.371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.371.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.it, i64 40, i1 false), !dbg !2381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2264
  store i64 %i.in, ptr %0, align 8, !dbg !2382
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2382
  store ptr %i.iq, ptr %.sroa.270.0..sroa_idx, align 8, !dbg !2382
  %.sroa.270.sroa.2.0..sroa.270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2382
  store i64 %2, ptr %.sroa.270.sroa.2.0..sroa.270.0..sroa_idx.sroa_idx, align 8, !dbg !2382
  %.sroa.270.sroa.3.0..sroa.270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2382
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.270.sroa.3.0..sroa.270.0..sroa_idx.sroa_idx, align 8, !dbg !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2269
  br label %bb.bj, !dbg !2361

bb.bw:                                            ; preds = %bb.bk
  %.sroa.0136.0.copyload = load ptr, ptr %i.p, align 8, !dbg !2263 ; 2 uses
  %i.iu = load <2 x i64>, ptr %.sroa.5137.0..sroa_idx, align 8, !dbg !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2264
  store ptr %.sroa.0136.0.copyload, ptr %i.g, align 8, !dbg !2265
  store <2 x i64> %i.iu, ptr %.sroa.4148.0..sroa_idx, align 8, !dbg !2265
  %i.iv = icmp eq ptr %.sroa.0136.0.copyload, inttoptr (i64 -9223372036854775808 to ptr), !dbg !2266
  br i1 %i.iv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit, label %bb.bx, !dbg !2266

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2267

.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %bb.bx, %bb.u
  %lpad.loopexit.split-lp424 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
end_hunk_0
begin_hunk_1_@llvm.umin.i8
!2115 = !DILexicalBlockFile(scope: !1876, file: !1058, discriminator: 0)
!2116 = !DILocation(line: 186, column: 33, scope: !1876)
!2117 = !DILocation(line: 2471, column: 16, scope: !1878, inlinedAt: !2116)
!2118 = !DILocation(line: 1041, column: 17, scope: !1879, inlinedAt: !2117)
!2119 = !DILocation(line: 188, column: 33, scope: !1881)
!2120 = !DILocation(line: 1655, column: 26, scope: !1880, inlinedAt: !2119)
!2121 = !DINamespace(name: "{impl#33}", scope: !1054)
!2122 = !DILexicalBlockFile(scope: !1889, file: !1046, discriminator: 2)
!2123 = !DILocation(line: 188, column: 24, scope: !2122)
!2124 = !{!1905}
!2125 = !{!1914, !1912, !1910, !1909, !1907}
!2126 = !DIFile(filename: "library/core/src/num/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "2e8f934969debccc4094e90ba6a480f5")
!2127 = !{!1932, !1914, !1912, !1910, !1909, !1907}
!2128 = !{!1914, !1960, !1910, !1909, !1907}
!2129 = !{!1932, !1914, !1960, !1910, !1909, !1907}
!2130 = !DILocation(line: 193, column: 38, scope: !1963)
!2131 = !DINamespace(name: "TwoWaySearcher", scope: !1054)
!2132 = !DILocation(line: 0, scope: !1974, inlinedAt: !1891)
!2133 = !DILocation(line: 1472, column: 44, scope: !1977, inlinedAt: !2132)
!2134 = !DILocation(line: 576, column: 15, scope: !1979, inlinedAt: !2133)
!2135 = !{!1981}
!2136 = !{!1982}
!2137 = !DILexicalBlockFile(scope: !1990, file: !1051, discriminator: 2)
!2138 = !DINamespace(name: "{impl#7}", scope: !1112)
!2139 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c0b51c2e2801a373cd0b2d2d78a81982")
!2140 = !DINamespace(name: "rev", scope: !1118)
!2141 = !DINamespace(name: "{impl#1}", scope: !2140)
!2142 = !DILexicalBlockFile(scope: !2006, file: !1051, discriminator: 2)
!2143 = !DILexicalBlockFile(scope: !1987, file: !1058, discriminator: 0)
!2144 = !{!2019}
!2145 = !{!2020}
!2146 = !{!2037, !2036, !2019, !2020}
!2147 = !{!2039, !2038, !1981, !1982}
!2148 = !DILocation(line: 200, column: 27, scope: !1881)
!2149 = !DILocation(line: 2894, column: 9, scope: !2041, inlinedAt: !2148)
!2150 = !DILocation(line: 3045, column: 21, scope: !2043, inlinedAt: !2149)
!2151 = !DILocation(line: 3114, column: 11, scope: !2044, inlinedAt: !2150)
!2152 = !DILocation(line: 211, column: 62, scope: !2045, inlinedAt: !2151)
!2153 = !DILocation(line: 842, column: 14, scope: !2046, inlinedAt: !2152)
!2154 = !DILocation(line: 376, column: 14, scope: !2047, inlinedAt: !2153)
!2155 = !DILocation(line: 400, column: 16, scope: !2048, inlinedAt: !2154)
!2156 = !DILocation(line: 448, column: 29, scope: !2050, inlinedAt: !2155)
!2157 = !DILocation(line: 977, column: 20, scope: !2051, inlinedAt: !2156)
!2158 = !DILocation(line: 177, column: 20, scope: !2052, inlinedAt: !2157)
!2159 = !DILocation(line: 438, column: 50, scope: !2055, inlinedAt: !2158)
!2160 = !DILocation(line: 438, column: 21, scope: !2055, inlinedAt: !2158)
!2161 = !DILocation(line: 454, column: 36, scope: !2057, inlinedAt: !2155)
!2162 = !DILocation(line: 1252, column: 18, scope: !2059, inlinedAt: !2161)
!2163 = !DILexicalBlockFile(scope: !2052, file: !1119, discriminator: 2)
!2164 = !DILexicalBlockFile(scope: !2051, file: !1137, discriminator: 2)
!2165 = !DILexicalBlockFile(scope: !2061, file: !1131, discriminator: 2)
!2166 = !DILexicalBlockFile(scope: !2048, file: !1131, discriminator: 2)
!2167 = !DILexicalBlockFile(scope: !2047, file: !1131, discriminator: 2)
!2168 = !DILexicalBlockFile(scope: !2046, file: !1131, discriminator: 2)
!2169 = !DILexicalBlockFile(scope: !2045, file: !1128, discriminator: 2)
!2170 = !DILexicalBlockFile(scope: !2044, file: !1123, discriminator: 2)
!2171 = !DILocation(line: 190, column: 61, scope: !1963)
!2172 = !DILocation(line: 778, column: 9, scope: !2060, inlinedAt: !2171)
!2173 = !DILocation(line: 3114, column: 11, scope: !2170, inlinedAt: !2172)
!2174 = !DILocation(line: 211, column: 62, scope: !2169, inlinedAt: !2173)
!2175 = !DILocation(line: 842, column: 14, scope: !2168, inlinedAt: !2174)
!2176 = !DILocation(line: 376, column: 14, scope: !2167, inlinedAt: !2175)
!2177 = !DILocation(line: 400, column: 16, scope: !2166, inlinedAt: !2176)
!2178 = !DILocation(line: 448, column: 29, scope: !2165, inlinedAt: !2177)
!2179 = !DILocation(line: 977, column: 20, scope: !2164, inlinedAt: !2178)
!2180 = !DILocation(line: 177, column: 20, scope: !2163, inlinedAt: !2179)
!2181 = !DILexicalBlockFile(scope: !2063, file: !1119, discriminator: 2)
!2182 = !DILocation(line: 438, column: 50, scope: !2181, inlinedAt: !2180)
!2183 = !DILocation(line: 438, column: 21, scope: !2181, inlinedAt: !2180)
!2184 = !DILexicalBlockFile(scope: !1963, file: !1058, discriminator: 0)
!2185 = !DILexicalBlockFile(scope: !2059, file: !1069, discriminator: 2)
!2186 = !DILexicalBlockFile(scope: !2064, file: !1131, discriminator: 2)
!2187 = !DILocation(line: 454, column: 36, scope: !2186, inlinedAt: !2177)
!2188 = !DILocation(line: 1252, column: 18, scope: !2185, inlinedAt: !2187)
!2189 = !{!2067}
!2190 = !{!2068}
!2191 = !{!2067, !2069, !2068}
!2192 = !DINamespace(name: "{impl#0}", scope: !1048)
!2193 = !DINamespace(name: "parse", scope: !2192)
!2194 = !{!2067, !2069}
!2195 = !{!2067, !2068}
!2196 = !DILexicalBlockFile(scope: !2108, file: !1046, discriminator: 2)
!2197 = !DILocation(line: 193, column: 13, scope: !2196)
!2198 = !DILocation(line: 982, column: 29, scope: !1872, inlinedAt: !2114)
!2199 = !DILocation(line: 1018, column: 12, scope: !1875, inlinedAt: !2113)
!2200 = !DILocation(line: 182, column: 12, scope: !1876)
!2201 = !DILocation(line: 183, column: 20, scope: !1876)
!2202 = !DILocation(line: 0, scope: !2115)
!2203 = !DILocation(line: 1032, column: 29, scope: !1877, inlinedAt: !2118)
!2204 = !DILocation(line: 1041, column: 12, scope: !1879, inlinedAt: !2117)
!2205 = !DILocation(line: 1655, column: 22, scope: !1880, inlinedAt: !2119)
!2206 = !DILocation(line: 976, column: 9, scope: !1882, inlinedAt: !2120)
!2207 = !DILocation(line: 1652, column: 15, scope: !1880, inlinedAt: !2119)
!2208 = !DILocation(line: 1658, column: 9, scope: !1880, inlinedAt: !2119)
!2209 = !DILocation(line: 188, column: 24, scope: !1881)
!2210 = !DILocation(line: 1122, column: 20, scope: !1884, inlinedAt: !1892)
!2211 = !DILocation(line: 1126, column: 32, scope: !1884, inlinedAt: !1892)
!2212 = !DILocation(line: 378, column: 12, scope: !1893, inlinedAt: !1903)
!2213 = !DILocation(line: 382, column: 12, scope: !1893, inlinedAt: !1903)
!2214 = !DILocation(line: 392, column: 13, scope: !1893, inlinedAt: !1903)
!2215 = !DILocation(line: 508, column: 12, scope: !1894, inlinedAt: !1902)
!2216 = !DILocation(line: 394, column: 13, scope: !1893, inlinedAt: !1903)
!2217 = !DILocation(line: 1178, column: 9, scope: !1915, inlinedAt: !1916)
!2218 = !DILocation(line: 863, column: 18, scope: !1917, inlinedAt: !1925)
!2219 = !DILocation(line: 1717, column: 9, scope: !1, inlinedAt: !1930)
!2220 = !DILocation(line: 180, column: 28, scope: !4, inlinedAt: !1929)
!2221 = !DILocation(line: 37, column: 13, scope: !5, inlinedAt: !1928)
!2222 = !DILocation(line: 38, column: 8, scope: !6, inlinedAt: !1928)
!2223 = !DILocation(line: 659, column: 28, scope: !7, inlinedAt: !1933)
!2224 = !DILocation(line: 11, column: 5, scope: !8, inlinedAt: !1934)
!2225 = !DILocation(line: 1717, column: 9, scope: !1, inlinedAt: !1936)
!2226 = !DILocation(line: 180, column: 28, scope: !4, inlinedAt: !1935)
!2227 = !DILocation(line: 48, column: 22, scope: !9, inlinedAt: !1928)
!2228 = !DILocation(line: 17, column: 5, scope: !10, inlinedAt: !1937)
!2229 = !DILocation(line: 17, column: 17, scope: !10, inlinedAt: !1937)
!2230 = !DILocation(line: 50, column: 8, scope: !12, inlinedAt: !1928)
!2231 = !DILocation(line: 659, column: 28, scope: !7, inlinedAt: !1938)
!2232 = !DILocation(line: 1717, column: 9, scope: !1, inlinedAt: !1940)
!2233 = !DILocation(line: 180, column: 28, scope: !4, inlinedAt: !1939)
!2234 = !DILocation(line: 55, column: 26, scope: !12, inlinedAt: !1928)
!2235 = !DILocation(line: 17, column: 5, scope: !10, inlinedAt: !1941)
!2236 = !DILocation(line: 17, column: 17, scope: !10, inlinedAt: !1941)
!2237 = !DILocation(line: 57, column: 14, scope: !14, inlinedAt: !1928)
!2238 = !DILocation(line: 57, column: 9, scope: !14, inlinedAt: !1928)
!2239 = !DILocation(line: 58, column: 12, scope: !14, inlinedAt: !1928)
!2240 = !DILocation(line: 659, column: 28, scope: !7, inlinedAt: !1942)
!2241 = !DILocation(line: 1717, column: 9, scope: !1, inlinedAt: !1944)
!2242 = !DILocation(line: 180, column: 28, scope: !4, inlinedAt: !1943)
!2243 = !DILocation(line: 63, column: 30, scope: !14, inlinedAt: !1928)
!2244 = !DILocation(line: 64, column: 18, scope: !15, inlinedAt: !1928)
!2245 = !DILocation(line: 17, column: 5, scope: !10, inlinedAt: !1945)
!2246 = !DILocation(line: 17, column: 17, scope: !10, inlinedAt: !1945)
!2247 = !DILocation(line: 64, column: 13, scope: !15, inlinedAt: !1928)
!2248 = !DILocation(line: 58, column: 9, scope: !14, inlinedAt: !1928)
!2249 = !DILocation(line: 39, column: 21, scope: !6, inlinedAt: !1928)
!2250 = !DILocation(line: 0, scope: !1085, inlinedAt: !1928)
!2251 = !DILocation(line: 34, column: 9, scope: !1946, inlinedAt: !1954)
!2252 = !DILocation(line: 1130, column: 26, scope: !1899, inlinedAt: !1892)
!2253 = !DILocation(line: 2040, column: 9, scope: !1955, inlinedAt: !1959)
!2254 = !DILocation(line: 2041, column: 9, scope: !1955, inlinedAt: !1959)
!2255 = !DILocation(line: 2042, column: 9, scope: !1955, inlinedAt: !1959)
!2256 = !DILocation(line: 0, scope: !1955, inlinedAt: !1959)
!2257 = !DILocation(line: 1136, column: 25, scope: !1957, inlinedAt: !1892)
!2258 = !DILocation(line: 654, column: 6, scope: !1961, inlinedAt: !1962)
!2259 = !DILocation(line: 189, column: 16, scope: !1963)
!2260 = !DILocation(line: 193, column: 13, scope: !1963)
!2261 = !DILocation(line: 966, column: 15, scope: !1964, inlinedAt: !2130)
!2262 = !DILocation(line: 966, column: 9, scope: !1964, inlinedAt: !2130)
!2263 = !DILocation(line: 967, column: 16, scope: !1964, inlinedAt: !2130)
!2264 = !DILocation(line: 196, column: 14, scope: !1963)
!2265 = !DILocation(line: 193, column: 13, scope: !1966)
!2266 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !1969)
!2267 = !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !1971)
!2268 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !1972)
!2269 = !DILocation(line: 196, column: 16, scope: !1963)
!2270 = !DILocation(line: 658, column: 12, scope: !1886, inlinedAt: !1890)
!2271 = !DILocation(line: 1184, column: 20, scope: !1974, inlinedAt: !1891)
!2272 = !DILocation(line: 1472, column: 48, scope: !1977, inlinedAt: !2132)
!2273 = !DILocation(line: 219, column: 12, scope: !1978, inlinedAt: !2134)
!2274 = !DILocation(line: 1191, column: 30, scope: !1974, inlinedAt: !1891)
!2275 = !DILocation(line: 219, column: 12, scope: !1978, inlinedAt: !1985)
!2276 = !DILocation(line: 221, column: 27, scope: !1978, inlinedAt: !1985)
!2277 = !DILocation(line: 1473, column: 23, scope: !1977, inlinedAt: !1983)
!2278 = !DILocation(line: 1452, column: 27, scope: !1986, inlinedAt: !1988)
!2279 = !DILocation(line: 1452, column: 26, scope: !1986, inlinedAt: !1988)
!2280 = !DILocation(line: 1485, column: 17, scope: !1987, inlinedAt: !1983)
!2281 = !DILocation(line: 1495, column: 20, scope: !1987, inlinedAt: !1983)
!2282 = !DILocation(line: 1496, column: 13, scope: !1990, inlinedAt: !1983)
!2283 = !DILocation(line: 1917, column: 50, scope: !1991, inlinedAt: !1996)
!2284 = !DILocation(line: 781, column: 12, scope: !1992, inlinedAt: !1995)
!2285 = !DILocation(line: 898, column: 17, scope: !1997, inlinedAt: !2001)
!2286 = !DILocation(line: 1917, column: 50, scope: !1991, inlinedAt: !2010)
!2287 = !DILocation(line: 823, column: 12, scope: !2002, inlinedAt: !2009)
!2288 = !DILocation(line: 1497, column: 42, scope: !2011, inlinedAt: !1983)
!2289 = !DILocation(line: 1497, column: 33, scope: !2011, inlinedAt: !1983)
!2290 = !DILocation(line: 1497, column: 20, scope: !2011, inlinedAt: !1983)
!2291 = !DILocation(line: 1498, column: 21, scope: !2011, inlinedAt: !1983)
!2292 = !DILocation(line: 1499, column: 25, scope: !2011, inlinedAt: !1983)
!2293 = !DILocation(line: 1077, column: 17, scope: !2012, inlinedAt: !2015)
!2294 = !DILocation(line: 1509, column: 20, scope: !2016, inlinedAt: !1983)
!2295 = !DILocation(line: 1509, column: 42, scope: !2016, inlinedAt: !1983)
!2296 = !DILocation(line: 1509, column: 33, scope: !2016, inlinedAt: !1983)
!2297 = !DILocation(line: 1510, column: 21, scope: !2016, inlinedAt: !1983)
!2298 = !DILocation(line: 1511, column: 25, scope: !2016, inlinedAt: !1983)
!2299 = !DILocation(line: 1486, column: 17, scope: !1987, inlinedAt: !1983)
!2300 = !DILocation(line: 1487, column: 21, scope: !1987, inlinedAt: !1983)
!2301 = !DILocation(line: 1472, column: 48, scope: !1977, inlinedAt: !1983)
!2302 = !DILocation(line: 1522, column: 13, scope: !2017, inlinedAt: !1983)
!2303 = !DILocation(line: 0, scope: !2143, inlinedAt: !1983)
!2304 = !DILocation(line: 1185, column: 30, scope: !1974, inlinedAt: !1891)
!2305 = !DILocation(line: 219, column: 12, scope: !1978, inlinedAt: !2023)
!2306 = !DILocation(line: 221, column: 27, scope: !1978, inlinedAt: !2023)
!2307 = !DILocation(line: 1473, column: 23, scope: !1977, inlinedAt: !2021)
!2308 = !DILocation(line: 1452, column: 27, scope: !1986, inlinedAt: !2024)
!2309 = !DILocation(line: 1452, column: 26, scope: !1986, inlinedAt: !2024)
!2310 = !DILocation(line: 1485, column: 17, scope: !1987, inlinedAt: !2021)
!2311 = !DILocation(line: 781, column: 12, scope: !1992, inlinedAt: !2026)
!2312 = !DILocation(line: 898, column: 17, scope: !1997, inlinedAt: !2028)
!2313 = !DILocation(line: 1917, column: 50, scope: !1991, inlinedAt: !2029)
!2314 = !DILocation(line: 823, column: 12, scope: !2002, inlinedAt: !2032)
!2315 = !DILocation(line: 1917, column: 50, scope: !1991, inlinedAt: !2033)
!2316 = !DILocation(line: 1077, column: 17, scope: !2012, inlinedAt: !2035)
!2317 = !DILocation(line: 1509, column: 42, scope: !2016, inlinedAt: !2021)
!2318 = !DILocation(line: 1509, column: 33, scope: !2016, inlinedAt: !2021)
!2319 = !DILocation(line: 1509, column: 20, scope: !2016, inlinedAt: !2021)
!2320 = !DILocation(line: 1510, column: 21, scope: !2016, inlinedAt: !2021)
!2321 = !DILocation(line: 1511, column: 25, scope: !2016, inlinedAt: !2021)
!2322 = !DILocation(line: 1497, column: 42, scope: !2011, inlinedAt: !2021)
!2323 = !DILocation(line: 1497, column: 33, scope: !2011, inlinedAt: !2021)
!2324 = !DILocation(line: 1497, column: 20, scope: !2011, inlinedAt: !2021)
!2325 = !DILocation(line: 1498, column: 21, scope: !2011, inlinedAt: !2021)
!2326 = !DILocation(line: 1499, column: 25, scope: !2011, inlinedAt: !2021)
!2327 = !DILocation(line: 1486, column: 17, scope: !1987, inlinedAt: !2021)
!2328 = !DILocation(line: 1487, column: 21, scope: !1987, inlinedAt: !2021)
!2329 = !DILocation(line: 1472, column: 48, scope: !1977, inlinedAt: !2021)
!2330 = !DILocation(line: 1522, column: 13, scope: !2017, inlinedAt: !2021)
!2331 = !DILocation(line: 0, scope: !2143, inlinedAt: !2021)
!2332 = !DILocation(line: 0, scope: !1887, inlinedAt: !1890)
!2333 = !DILocation(line: 543, column: 21, scope: !1896, inlinedAt: !1901)
!2334 = !DILocation(line: 1496, column: 13, scope: !1990, inlinedAt: !2021)
!2335 = !DILocation(line: 434, column: 15, scope: !2040, inlinedAt: !2158)
!2336 = !DILocation(line: 434, column: 9, scope: !2040, inlinedAt: !2158)
!2337 = !DILocation(line: 0, scope: !2040, inlinedAt: !2158)
!2338 = !DILocation(line: 442, column: 17, scope: !2040, inlinedAt: !2158)
!2339 = !DILocation(line: 442, column: 25, scope: !2053, inlinedAt: !2158)
!2340 = !DILocation(line: 435, column: 16, scope: !2040, inlinedAt: !2158)
!2341 = !DILocation(line: 767, column: 9, scope: !2054, inlinedAt: !2159)
!2342 = !DILocation(line: 210, column: 9, scope: !2056, inlinedAt: !2160)
!2343 = !DILocation(line: 443, column: 9, scope: !2040, inlinedAt: !2158)
!2344 = !DILocation(line: 452, column: 20, scope: !2057, inlinedAt: !2155)
!2345 = !DILocation(line: 199, column: 9, scope: !1881)
!2346 = !DILocation(line: 202, column: 5, scope: !1871)
!2347 = !DILocation(line: 552, column: 14, scope: !2058, inlinedAt: !2162)
!2348 = !DILocation(line: 452, column: 17, scope: !2057, inlinedAt: !2155)
!2349 = !DILocation(line: 202, column: 6, scope: !1871)
!2350 = !DILocation(line: 434, column: 15, scope: !2040, inlinedAt: !2180)
!2351 = !DILocation(line: 434, column: 9, scope: !2040, inlinedAt: !2180)
!2352 = !DILocation(line: 0, scope: !2040, inlinedAt: !2180)
!2353 = !DILocation(line: 442, column: 17, scope: !2040, inlinedAt: !2180)
!2354 = !DILocation(line: 442, column: 25, scope: !2062, inlinedAt: !2180)
!2355 = !DILocation(line: 435, column: 16, scope: !2040, inlinedAt: !2180)
!2356 = !DILocation(line: 767, column: 9, scope: !2054, inlinedAt: !2182)
!2357 = !DILocation(line: 210, column: 9, scope: !2056, inlinedAt: !2183)
!2358 = !DILocation(line: 443, column: 9, scope: !2040, inlinedAt: !2180)
!2359 = !DILocation(line: 452, column: 20, scope: !2064, inlinedAt: !2177)
!2360 = !DILocation(line: 190, column: 24, scope: !1963)
!2361 = !DILocation(line: 0, scope: !2184)
!2362 = !DILocation(line: 552, column: 14, scope: !2058, inlinedAt: !2188)
!2363 = !DILocation(line: 452, column: 17, scope: !2064, inlinedAt: !2177)
!2364 = !DILocation(line: 968, column: 27, scope: !2065, inlinedAt: !2130)
!2365 = !DILocation(line: 968, column: 17, scope: !1964, inlinedAt: !2130)
!2366 = !DILocation(line: 434, column: 15, scope: !2070, inlinedAt: !2092)
!2367 = !DILocation(line: 196, column: 13, scope: !2081, inlinedAt: !2082)
!2368 = !DILocation(line: 434, column: 9, scope: !2070, inlinedAt: !2092)
!2369 = !DILocation(line: 0, scope: !2070, inlinedAt: !2092)
!2370 = !DILocation(line: 442, column: 17, scope: !2070, inlinedAt: !2092)
!2371 = !DILocation(line: 442, column: 25, scope: !2093, inlinedAt: !2092)
!2372 = !DILocation(line: 435, column: 16, scope: !2070, inlinedAt: !2092)
!2373 = !DILocation(line: 767, column: 9, scope: !2094, inlinedAt: !2096)
!2374 = !DILocation(line: 210, column: 9, scope: !2097, inlinedAt: !2098)
!2375 = !DILocation(line: 443, column: 9, scope: !2070, inlinedAt: !2092)
!2376 = !DILocation(line: 452, column: 20, scope: !2099, inlinedAt: !2089)
!2377 = !DILocation(line: 552, column: 14, scope: !2100, inlinedAt: !2103)
!2378 = !DILocation(line: 452, column: 17, scope: !2099, inlinedAt: !2089)
!2379 = !DILocation(line: 193, column: 46, scope: !2081, inlinedAt: !2082)
!2380 = !DILocation(line: 0, scope: !1963)
!2381 = !DILocation(line: 195, column: 37, scope: !2104, inlinedAt: !2082)
!2382 = !DILocation(line: 2189, column: 23, scope: !2106, inlinedAt: !2197)
!2383 = !DILocation(line: 968, column: 31, scope: !2065, inlinedAt: !2130)
!2384 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !2109)
!2385 = distinct !DISubprogram(name: "trim_matches<fn(char) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslpwjCj2YNBy_9polars_io", scope: !1057, file: !1056, line: 2358, type: !1050, scopeLine: 2358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2386 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCslpwjCj2YNBy_9polars_io", scope: !1152, file: !1150, line: 927, type: !1050, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2387 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterhE3newCslpwjCj2YNBy_9polars_io", scope: !1154, file: !1153, line: 96, type: !1050, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2388 = distinct !DILexicalBlock(scope: !2387, file: !1153, line: 97, column: 9)
!2389 = distinct !DILexicalBlock(scope: !2388, file: !1153, line: 98, column: 9)
!2390 = distinct !DISubprogram(name: "iter<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh4iterCslpwjCj2YNBy_9polars_io", scope: !1105, file: !1104, line: 1040, type: !1050, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2391 = distinct !DISubprogram(name: "chars", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3stre5chars", scope: !1057, file: !1056, line: 1062, type: !1050, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2392 = distinct !DISubprogram(name: "char_indices", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3stre12char_indices", scope: !1057, file: !1056, line: 1119, type: !1050, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2393 = distinct !DISubprogram(name: "into_searcher<fn(char) -> bool>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCslpwjCj2YNBy_9polars_io", scope: !2558, file: !1051, line: 677, type: !1050, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2394 = distinct !DISubprogram(name: "into_searcher<fn(char) -> bool>", linkageName: "_RNvXsr_NtNtCscgRAwXFJnXP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_7Pattern13into_searcherCslpwjCj2YNBy_9polars_io", scope: !2559, file: !1051, line: 736, type: !1050, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2395 = distinct !DILexicalBlock(scope: !2385, file: !1056, line: 2362, column: 9)
!2396 = distinct !DILexicalBlock(scope: !2395, file: !1056, line: 2363, column: 9)
!2397 = distinct !DILocation(line: 2364, column: 31, scope: !2396)
!2398 = distinct !DILocation(line: 737, column: 35, scope: !2394, inlinedAt: !2397)
!2399 = distinct !DILocation(line: 678, column: 81, scope: !2393, inlinedAt: !2398)
!2400 = distinct !DILocation(line: 1120, column: 51, scope: !2392, inlinedAt: !2399)
!2401 = distinct !DILocation(line: 1063, column: 39, scope: !2391, inlinedAt: !2400)
!2402 = distinct !DILocation(line: 1041, column: 9, scope: !2390, inlinedAt: !2401)
!2403 = distinct !DILocation(line: 102, column: 78, scope: !2389, inlinedAt: !2402)
!2404 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !1083, file: !1059, line: 39, type: !1050, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2405 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next", scope: !2560, file: !1059, line: 182, type: !1050, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2406 = distinct !DILexicalBlock(scope: !2405, file: !1059, line: 183, column: 9)
!2407 = distinct !DISubprogram(name: "next<fn(char) -> bool>", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslpwjCj2YNBy_9polars_io", scope: !2561, file: !1051, line: 689, type: !1050, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2408 = distinct !DILexicalBlock(scope: !2407, file: !1051, line: 690, column: 9)
!2409 = distinct !DILexicalBlock(scope: !2408, file: !1051, line: 693, column: 9)
!2410 = distinct !DILexicalBlock(scope: !2409, file: !1051, line: 694, column: 40)
!2411 = distinct !DISubprogram(name: "next_reject<core::str::pattern::MultiCharEqSearcher<fn(char) -> bool>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io", scope: !1155, file: !1051, line: 263, type: !1050, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2412 = distinct !DISubprogram(name: "next_reject<fn(char) -> bool>", linkageName: "_RNvXso_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io", scope: !2562, file: !1051, line: 788, type: !1050, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2413 = distinct !DILexicalBlock(scope: !2396, file: !1056, line: 2364, column: 9)
!2414 = distinct !DILexicalBlock(scope: !2413, file: !1056, line: 2365, column: 53)
!2415 = distinct !DILocation(line: 2365, column: 39, scope: !2414)
!2416 = distinct !DILocation(line: 789, column: 20, scope: !2412, inlinedAt: !2415)
!2417 = distinct !DILocation(line: 265, column: 24, scope: !2411, inlinedAt: !2416)
!2418 = distinct !DILocation(line: 694, column: 33, scope: !2410, inlinedAt: !2417)
!2419 = distinct !DILocation(line: 184, column: 25, scope: !2406, inlinedAt: !2418)
!2420 = distinct !DILocation(line: 42, column: 18, scope: !2404, inlinedAt: !2419)
!2421 = distinct !DILocation(line: 37, column: 20, scope: !5, inlinedAt: !2420)
!2422 = distinct !DILocation(line: 180, column: 28, scope: !4, inlinedAt: !2421)
!2423 = distinct !DILocation(line: 693, column: 35, scope: !2408, inlinedAt: !2417)
!2424 = distinct !DILocation(line: 57, column: 30, scope: !26, inlinedAt: !2423)
!2425 = distinct !DILocation(line: 953, column: 32, scope: !23, inlinedAt: !2424)
!2426 = distinct !DILocation(line: 887, column: 37, scope: !22, inlinedAt: !2425)
!2427 = distinct !DILocation(line: 185, column: 40, scope: !4, inlinedAt: !2421)
!2428 = distinct !{!2428, i1 true, !"_RNvXso_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io"}
!2429 = distinct !{!2429, !2428, !"_RNvXso_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io: argument 1"}
!2430 = distinct !{!2430, !2428, !"_RNvXso_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io: argument 0"}
!2431 = distinct !{!2431, i1 true, !"_RNvYINtNtNtCscgRAwXFJnXP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io"}
!2432 = distinct !{!2432, !2431, !"_RNvYINtNtNtCscgRAwXFJnXP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io: argument 1"}
!2433 = distinct !{!2433, !2431, !"_RNvYINtNtNtCscgRAwXFJnXP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io: argument 0"}
!2434 = distinct !{!2434, i1 true, !"_RNvXs8_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslpwjCj2YNBy_9polars_io"}
!2435 = distinct !{!2435, !2434, !"_RNvXs8_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslpwjCj2YNBy_9polars_io: argument 1"}
!2436 = distinct !{!2436, !2434, !"_RNvXs8_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCslpwjCj2YNBy_9polars_io: argument 0"}
!2437 = distinct !{!2437, i1 true, !"_RNvXs3_NtNtCscgRAwXFJnXP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2438 = distinct !{!2438, !2437, !"_RNvXs3_NtNtCscgRAwXFJnXP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2439 = distinct !{!2439, i1 true, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslpwjCj2YNBy_9polars_io"}
!2440 = distinct !{!2440, !2439, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslpwjCj2YNBy_9polars_io: argument 0"}
!2441 = distinct !DILocation(line: 45, column: 16, scope: !6, inlinedAt: !2420)
!2442 = distinct !DILocation(line: 48, column: 29, scope: !9, inlinedAt: !2420)
!2443 = distinct !DILocation(line: 180, column: 28, scope: !4, inlinedAt: !2442)
!2444 = distinct !DILocation(line: 185, column: 40, scope: !4, inlinedAt: !2442)
!2445 = distinct !DILocation(line: 49, column: 18, scope: !11, inlinedAt: !2420)
!2446 = distinct !DILocation(line: 55, column: 33, scope: !12, inlinedAt: !2420)
!2447 = distinct !DILocation(line: 180, column: 28, scope: !4, inlinedAt: !2446)
!2448 = distinct !DILocation(line: 185, column: 40, scope: !4, inlinedAt: !2446)
!2449 = distinct !DILocation(line: 56, column: 19, scope: !13, inlinedAt: !2420)
!2450 = distinct !DILocation(line: 63, column: 37, scope: !14, inlinedAt: !2420)
!2451 = distinct !DILocation(line: 180, column: 28, scope: !4, inlinedAt: !2450)
!2452 = distinct !DILocation(line: 185, column: 40, scope: !4, inlinedAt: !2450)
!2453 = distinct !DILocation(line: 64, column: 37, scope: !15, inlinedAt: !2420)
!2454 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7convert18from_u32_unchecked", scope: !1088, file: !1086, line: 26, type: !1050, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2455 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc18from_u32_unchecked", scope: !1091, file: !1089, line: 237, type: !1050, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2456 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0CslpwjCj2YNBy_9polars_io", scope: !1092, file: !1059, line: 42, type: !1050, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2457 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECslpwjCj2YNBy_9polars_io", scope: !1095, file: !1093, line: 1160, type: !1050, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2458 = distinct !DILexicalBlock(scope: !2457, file: !1093, line: 1165, column: 13)
!2459 = distinct !DILocation(line: 42, column: 50, scope: !2404, inlinedAt: !2419)
!2460 = distinct !DILocation(line: 1165, column: 29, scope: !2458, inlinedAt: !2459)
!2461 = distinct !DILocation(line: 42, column: 59, scope: !2456, inlinedAt: !2460)
!2462 = distinct !DILocation(line: 239, column: 18, scope: !2455, inlinedAt: !2461)
!2463 = distinct !DILexicalBlock(scope: !2406, file: !1059, line: 186, column: 13)
!2464 = distinct !DILexicalBlock(scope: !2463, file: !1059, line: 187, column: 17)
!2465 = distinct !DILocation(line: 188, column: 42, scope: !2464, inlinedAt: !2418)
!2466 = distinct !DILocation(line: 57, column: 30, scope: !26, inlinedAt: !2465)
!2467 = distinct !DILocation(line: 953, column: 32, scope: !23, inlinedAt: !2466)
!2468 = distinct !DILocation(line: 887, column: 37, scope: !22, inlinedAt: !2467)
!2469 = distinct !DILexicalBlock(scope: !2464, file: !1059, line: 188, column: 17)
!2470 = distinct !DISubprogram(name: "matches<fn(char) -> bool>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCslpwjCj2YNBy_9polars_io", scope: !2565, file: !1051, line: 638, type: !1161, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2471 = distinct !DILexicalBlock(scope: !2410, file: !1051, line: 695, column: 13)
!2472 = distinct !DILexicalBlock(scope: !2471, file: !1051, line: 696, column: 13)
!2473 = distinct !DILocation(line: 697, column: 29, scope: !2472, inlinedAt: !2417)
!2474 = distinct !DILocation(line: 639, column: 9, scope: !2470, inlinedAt: !2473)
!2475 = distinct !DILocation(line: 166, column: 5, scope: !28, inlinedAt: !2474)
!2476 = distinct !DILocation(line: 998, column: 18, scope: !27, inlinedAt: !2475)
!2477 = distinct !DISubprogram(name: "next_back", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back", scope: !1167, file: !1059, line: 125, type: !1050, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2478 = distinct !DISubprogram(name: "next_back", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back", scope: !2567, file: !1059, line: 215, type: !1050, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2479 = distinct !DISubprogram(name: "next_back<fn(char) -> bool>", linkageName: "_RNvXs9_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCslpwjCj2YNBy_9polars_io", scope: !2568, file: !1051, line: 709, type: !1050, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2480 = distinct !DILexicalBlock(scope: !2479, file: !1051, line: 710, column: 9)
!2481 = distinct !DILexicalBlock(scope: !2480, file: !1051, line: 713, column: 9)
!2482 = distinct !DILexicalBlock(scope: !2481, file: !1051, line: 714, column: 45)
!2483 = distinct !DISubprogram(name: "next_reject_back<core::str::pattern::MultiCharEqSearcher<fn(char) -> bool>>", linkageName: "_RNvYINtNtNtCscgRAwXFJnXP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCslpwjCj2YNBy_9polars_io", scope: !1168, file: !1051, line: 328, type: !1050, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2484 = distinct !DISubprogram(name: "next_reject_back<fn(char) -> bool>", linkageName: "_RNvXsp_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCslpwjCj2YNBy_9polars_io", scope: !2569, file: !1051, line: 802, type: !1050, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!2485 = distinct !DILexicalBlock(scope: !2413, file: !1056, line: 2370, column: 58)
!2486 = distinct !DILocation(line: 2370, column: 39, scope: !2485)
!2487 = distinct !DILocation(line: 803, column: 20, scope: !2484, inlinedAt: !2486)
!2488 = distinct !DILocation(line: 330, column: 24, scope: !2483, inlinedAt: !2487)
!2489 = distinct !DILocation(line: 714, column: 33, scope: !2482, inlinedAt: !2488)
!2490 = distinct !DILocation(line: 216, column: 19, scope: !2478, inlinedAt: !2489)
!2491 = distinct !DILocation(line: 128, column: 18, scope: !2477, inlinedAt: !2490)
!2492 = distinct !DILocation(line: 83, column: 26, scope: !34, inlinedAt: !2491)
!2493 = distinct !DILocation(line: 44, column: 20, scope: !33, inlinedAt: !2492)
!2494 = distinct !DILocation(line: 447, column: 35, scope: !31, inlinedAt: !2492)
!2495 = distinct !DILocation(line: 84, column: 31, scope: !40, inlinedAt: !2494)
!2496 = distinct !DILocation(line: 132, column: 36, scope: !39, inlinedAt: !2495)
!2497 = distinct !DILocation(line: 739, column: 27, scope: !36, inlinedAt: !2496)
!2498 = distinct !{!2498, i1 true, !"_RNvXsp_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCslpwjCj2YNBy_9polars_io"}
!2499 = distinct !{!2499, !2498, !"_RNvXsp_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCslpwjCj2YNBy_9polars_io: argument 1"}
!2500 = distinct !{!2500, !2498, !"_RNvXsp_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCslpwjCj2YNBy_9polars_io: argument 0"}
!2501 = distinct !{!2501, i1 true, !"_RNvYINtNtNtCscgRAwXFJnXP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCslpwjCj2YNBy_9polars_io"}
!2502 = distinct !{!2502, !2501, !"_RNvYINtNtNtCscgRAwXFJnXP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCslpwjCj2YNBy_9polars_io: argument 1"}
!2503 = distinct !{!2503, !2501, !"_RNvYINtNtNtCscgRAwXFJnXP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCslpwjCj2YNBy_9polars_io: argument 0"}
!2504 = distinct !{!2504, i1 true, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCslpwjCj2YNBy_9polars_io"}
!2505 = distinct !{!2505, !2504, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCslpwjCj2YNBy_9polars_io: argument 1"}
!2506 = distinct !{!2506, !2504, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCslpwjCj2YNBy_9polars_io: argument 0"}
!2507 = distinct !{!2507, i1 true, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!2508 = distinct !{!2508, !2507, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!2509 = distinct !{!2509, i1 true, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECslpwjCj2YNBy_9polars_io"}
!2510 = distinct !{!2510, !2509, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECslpwjCj2YNBy_9polars_io: argument 0"}
!2511 = distinct !DILocation(line: 93, column: 29, scope: !42, inlinedAt: !2491)
!2512 = distinct !DILocation(line: 44, column: 20, scope: !33, inlinedAt: !2511)
!2513 = distinct !DILocation(line: 447, column: 35, scope: !31, inlinedAt: !2511)
!2514 = distinct !DILocation(line: 84, column: 31, scope: !40, inlinedAt: !2513)
!2515 = distinct !DILocation(line: 132, column: 36, scope: !39, inlinedAt: !2514)
!2516 = distinct !DILocation(line: 739, column: 27, scope: !36, inlinedAt: !2515)
!2517 = distinct !DILocation(line: 94, column: 10, scope: !44, inlinedAt: !2491)
!2518 = distinct !DILocation(line: 95, column: 8, scope: !44, inlinedAt: !2491)
!2519 = distinct !DILocation(line: 98, column: 33, scope: !44, inlinedAt: !2491)
!2520 = distinct !DILocation(line: 44, column: 20, scope: !33, inlinedAt: !2519)
!2521 = distinct !DILocation(line: 447, column: 35, scope: !31, inlinedAt: !2519)
!2522 = distinct !DILocation(line: 84, column: 31, scope: !40, inlinedAt: !2521)
!2523 = distinct !DILocation(line: 132, column: 36, scope: !39, inlinedAt: !2522)
!2524 = distinct !DILocation(line: 739, column: 27, scope: !36, inlinedAt: !2523)
!2525 = distinct !DILocation(line: 99, column: 14, scope: !47, inlinedAt: !2491)
!2526 = distinct !DILocation(line: 100, column: 12, scope: !47, inlinedAt: !2491)
end_hunk_1
