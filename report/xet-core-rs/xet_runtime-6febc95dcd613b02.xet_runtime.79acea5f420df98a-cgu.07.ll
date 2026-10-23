Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.07?download=true
inline.NumInlined: 188
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@_RNvNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB8_13OptionPrinter9warn_none10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\03\00\00\00\00\00\00\00\01\00\00\00\AC\00\00\00", ptr @45, [8 x i8] c".\00\00\00\00\00\00\00", ptr @25, [8 x i8] c"\1A\00\00\00\00\00\00\00", ptr @27, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @_RNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB6_13OptionPrinter9warn_none10___CALLSITE, ptr @12, ptr @25, [8 x i8] c"\1A\00\00\00\00\00\00\00", ptr @28, [9 x i8] c"$\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@_RNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB4_12ErrorPrinter10info_error10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB6_12ErrorPrinter10info_error10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB4_12ErrorPrinter10warn_error10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB6_12ErrorPrinter10warn_error10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB4_12ErrorPrinter11debug_error10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB6_12ErrorPrinter11debug_error10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB4_12ErrorPrinter12log_error_fn10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB6_12ErrorPrinter12log_error_fn10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB4_12ErrorPrinter13info_error_fn10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB6_12ErrorPrinter13info_error_fn10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB4_12ErrorPrinter13warn_error_fn10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB6_12ErrorPrinter13warn_error_fn10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB4_12ErrorPrinter14debug_error_fn10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB6_12ErrorPrinter14debug_error_fn10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB4_12ErrorPrinter9log_error10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXNtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6result6ResultppENtB6_12ErrorPrinter9log_error10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs7_NtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB7_10ConfigEnumNtNtB9_19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs7_NtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB9_10ConfigEnumNtNtBb_19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs7_NtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB7_10ConfigEnumNtNtB9_19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs7_NtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB9_10ConfigEnumNtNtBb_19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs7_NtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB7_10ConfigEnumNtNtB9_19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs7_NtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB9_10ConfigEnumNtNtBb_19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs7_NtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB7_10ConfigEnumNtNtB9_19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs7_NtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enumNtB9_10ConfigEnumNtNtBb_19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB6_13OptionPrinter10debug_none10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB8_13OptionPrinter10debug_none10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB6_13OptionPrinter10error_none10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB8_13OptionPrinter10error_none10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB6_13OptionPrinter9info_none10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB8_13OptionPrinter9info_none10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB6_13OptionPrinter9warn_none10___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs_NtCsarFSTFZzLuM_11xet_runtime13error_printerINtNtCskKLDkoKarTP_4core6option6OptionpENtB8_13OptionPrinter9warn_none10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@46 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@47 = private unnamed_addr constant [87 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sys/sync/once/futex.rs\00", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@49 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@50 = private unnamed_addr constant [28 x i8] c"\17Unknown config field: '\C0\01'\00", align 1
@51 = private unnamed_addr constant [28 x i8] c"\17Unknown config group: '\C0\01'\00", align 1
@52 = private unnamed_addr constant [57 x i8] c"\15Invalid config path '\C0 ': expected 'group.field' format\00", align 1
@53 = private unnamed_addr constant [43 x i8] c"\17Failed to parse value '\C0\0D' for field '\C0\01'\00", align 1
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@55 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime }>, align 8
@56 = private unnamed_addr constant [6 x i8] c"Layout", align 1
@57 = private unnamed_addr constant [4 x i8] c"size", align 1
@58 = private unnamed_addr constant [5 x i8] c"align", align 1
@59 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@60 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @59, [24 x i8] zeroinitializer }>, align 8
@_RNvNvXs5_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB7_9DataInnerNtNtCskKLDkoKarTP_4core7default7Default7default13NULL_METADATA = external global { i64, { i32, [1 x i32] }, { ptr, i64 }, { ptr, i64 }, { { ptr, i64 }, { { ptr, ptr } } }, { ptr, [1 x i64] }, { ptr, [1 x i64] }, i8, [7 x i8] }
@_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@61 = private unnamed_addr constant [27 x i8] c"\08Config: \C0\03 = \C0\0A (default)\00", align 1
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs94TQx44N27d_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@63 = private unnamed_addr constant [96 x i8] c"\15Configuration value \22\C0\06\22 for \C0! is not valid. Valid values are: \C0\18. Reverting to default \22\C0\02\22.\00", align 1
@64 = private unnamed_addr constant [48 x i8] c"\08Config: \C0\03 = \C0\1F (default due to invalid value)\00", align 1
@65 = private unnamed_addr constant [28 x i8] c"\08Config: \C0\03 = \C0\0B (user set)\00", align 1
@66 = private unnamed_addr constant [4 x i8] c"\C0\01s\00", align 1
@67 = private unnamed_addr constant [5 x i8] c"\C0\02ns\00", align 1
@68 = private unnamed_addr constant [5 x i8] c"\C0\02us\00", align 1
@69 = private unnamed_addr constant [5 x i8] c"\C0\02ms\00", align 1
@70 = private unnamed_addr constant [65 x i8] c":internal error: entered unreachable code: weird lifecycle \C1 \00\80`\00", align 1
@71 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sharded-slab-0.1.7/src/page/slot.rs\00", align 1
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @71, [16 x i8] c"h\00\00\00\00\00\00\00\94\02\00\00\18\00\00\00" }>, align 8
@73 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@74 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@75 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@76 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@77 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@78 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@79 = private unnamed_addr constant [2 x i8] c"()", align 1
@80 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2183554385892681230 to ptr), ptr inttoptr (i64 -7813891047107712238 to ptr) }>, align 8
@81 = private unnamed_addr constant [89 x i8] c"\14Configuration value \C0\05 for \C0: cannot be parsed into correct type; reverting to default.\00", align 1
@82 = private unnamed_addr constant [46 x i8] c"\08Config: \C0\03 = \C0\1D (default due to parse error)\00", align 1
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_5Debug3fmt }>, align 8
@84 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtNtCskKLDkoKarTP_4core3fmt3numxNtB7_5Debug3fmt }>, align 8
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt }>, align 8
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt }>, align 8
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsS_NtNtCskKLDkoKarTP_4core3fmt3numnNtB7_5Debug3fmt }>, align 8
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00", ptr @_RNvXsY_NtNtCskKLDkoKarTP_4core3fmt3numoNtB7_5Debug3fmt }>, align 8
@89 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs94TQx44N27d_12tracing_core5fieldNtB2_8HexBytesNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime.12 = private unnamed_addr constant [6 x ptr] [ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB1c_6WorkerNtNtB1e_7rolling19RollingFileAppenderE13worker_thread0uECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !4, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !6, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB10_6WorkerNtNtB12_7rolling19RollingFileAppenderE13worker_thread0uECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %2)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !5
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNvMs4_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtB1f_13SystemMonitor5starts_0INtNtCskKLDkoKarTP_4core6result6ResultuNtB1f_18SystemMonitorErrorEEB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(960) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !4, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !6, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtB13_13SystemMonitor5starts_0INtNtCskKLDkoKarTP_4core6result6ResultuNtB13_18SystemMonitorErrorEEB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(960) %2)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !5
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init36run_log_directory_cleanup_background0uEB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !4, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !6, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init36run_log_directory_cleanup_background0uEB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %2)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !5
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB6_4SlotNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtBa_3cfg13DefaultConfigE12release_withNtB8_5LocalNCINvMs2_B6_BM_13clear_storageB2H_E0bECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = lshr i64 %i.b, 51
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %.lr.ph22, label %.loopexit

.lr.ph22:                                         ; preds = %bb.a
  %.cmp = icmp ult i64 %1, 8190
  %.v = select i1 %.cmp, i64 1, i64 -8190
  %i.e = add i64 %1, %.v
  %i.f = shl nuw i64 %i.e, 51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit
  %.sroa.02.019 = phi i1 [ false, %.lr.ph22 ], [ %.sroa.02.1, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit ]
  %.sroa.06.018 = phi i64 [ %i.b, %.lr.ph22 ], [ %.sroa.06.1, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %.sroa.0.017 = phi i64 [ 0, %.lr.ph22 ], [ %.sroa.0.1, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %i.g = and i64 %.sroa.06.018, 2251799813685247
  %i.h = or disjoint i64 %i.g, %i.f
  %i.i = cmpxchg ptr %i.a, i64 %.sroa.06.018, i64 %i.h acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit

.loopexit:                                        ; preds = %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit, %bb.a, %bb.d
  %or.cond.not15 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit ]
  ret i1 %or.cond.not15

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.k, 2251799813685244
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs6_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCskeoOuuhwsQF_12sharded_slab5clear5Clear5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %0)
  %i.n = load i64, ptr %3, align 8, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.n, ptr %i.o, align 8
  store i64 %2, ptr %3, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.p = trunc i64 %.sroa.0.017 to i32
  %i.q = and i32 %i.p, 31                         ; 2 uses
  %.not.a = icmp eq i32 %i.q, 31
  br i1 %.not.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = freeze i32 %i.r                          ; 3 uses
  %i.t = add i32 %i.s, -1
  %xtraiter = and i32 %i.s, 7                     ; 3 uses
  %i.u = icmp ult i32 %i.t, 7
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.s, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !20

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %i.v = icmp ugt i64 %.sroa.0.017, 7
  br i1 %i.v, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  tail call void @llvm.x86.sse2.pause(), !noalias !21
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.w = add nuw nsw i64 %.sroa.0.017, 1
  br label %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !21
  br label %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit

_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit: ; preds = %bb.g, %bb.f, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.017, %bb.g ], [ %i.w, %bb.f ]
  %.sroa.06.1 = phi i64 [ %i.k, %bb.b ], [ %.sroa.06.018, %bb.g ], [ %.sroa.06.018, %bb.f ] ; 2 uses
  %.sroa.02.1 = phi i1 [ %.sroa.02.019, %bb.b ], [ true, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.x = lshr i64 %.sroa.06.1, 51
  %i.y = icmp eq i64 %1, %i.x
  %or.cond.not = or i1 %.sroa.02.1, %i.y
  br i1 %or.cond.not, label %bb.b, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB6_4SlotNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerNtNtBa_3cfg13DefaultConfigE12release_withNtNtB8_5stack13TransferStackNCINvMs2_B6_BM_13clear_storageB2H_E0bECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = lshr i64 %i.b, 51
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %.lr.ph22, label %.loopexit

.lr.ph22:                                         ; preds = %bb.a
  %.cmp = icmp ult i64 %1, 8190
  %.v = select i1 %.cmp, i64 1, i64 -8190
  %i.e = add i64 %1, %.v
  %i.f = shl nuw i64 %i.e, 51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit
  %.sroa.02.019 = phi i1 [ false, %.lr.ph22 ], [ %.sroa.02.1, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit ]
  %.sroa.06.018 = phi i64 [ %i.b, %.lr.ph22 ], [ %.sroa.06.1, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %.sroa.0.017 = phi i64 [ 0, %.lr.ph22 ], [ %.sroa.0.1, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit ] ; 4 uses
  %i.g = and i64 %.sroa.06.018, 2251799813685247
  %i.h = or disjoint i64 %i.g, %i.f
  %i.i = cmpxchg ptr %i.a, i64 %.sroa.06.018, i64 %i.h acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit

.loopexit:                                        ; preds = %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit, %bb.a, %bb.d
  %or.cond.not15 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit ]
  ret i1 %or.cond.not15

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.k, 2251799813685244
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs6_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCskeoOuuhwsQF_12sharded_slab5clear5Clear5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %0)
  tail call void @_RINvXs_NtNtCskeoOuuhwsQF_12sharded_slab4page5stackNtB5_13TransferStackINtB7_8FreeListNtNtB9_3cfg13DefaultConfigE4pushNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7sharded9DataInnerECsarFSTFZzLuM_11xet_runtime(ptr noundef nonnull align 8 %3, i64 noundef %2, ptr noundef nonnull align 8 %0)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = trunc i64 %.sroa.0.017 to i32
  %i.o = and i32 %i.n, 31                         ; 2 uses
  %.not.a = icmp eq i32 %i.o, 31
  br i1 %.not.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.p = shl nuw nsw i32 1, %i.o
  %i.q = freeze i32 %i.p                          ; 3 uses
  %i.r = add i32 %i.q, -1
  %xtraiter = and i32 %i.q, 7                     ; 3 uses
  %i.s = icmp ult i32 %i.r, 7
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.q, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !24

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %i.t = icmp ugt i64 %.sroa.0.017, 7
  br i1 %i.t, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  tail call void @llvm.x86.sse2.pause(), !noalias !25
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.u = add nuw nsw i64 %.sroa.0.017, 1
  br label %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !25
  br label %_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit

_RNvNtNtCskeoOuuhwsQF_12sharded_slab4page4slot19exponential_backoff.exit: ; preds = %bb.g, %bb.f, %bb.b
  %.sroa.0.1 = phi i64 [ 0, %bb.b ], [ %.sroa.0.017, %bb.g ], [ %i.u, %bb.f ]
  %.sroa.06.1 = phi i64 [ %i.k, %bb.b ], [ %.sroa.06.018, %bb.g ], [ %.sroa.06.018, %bb.f ] ; 2 uses
  %.sroa.02.1 = phi i1 [ %.sroa.02.019, %bb.b ], [ true, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.v = lshr i64 %.sroa.06.1, 51
  %i.w = icmp eq i64 %1, %i.v
  %or.cond.not = or i1 %.sroa.02.1, %i.w
  br i1 %or.cond.not, label %bb.b, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.h, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8, !range !8, !alias.scope !28, !noundef !5
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsarFSTFZzLuM_11xet_runtime.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split: ; preds = %bb.f, %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsarFSTFZzLuM_11xet_runtime.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsarFSTFZzLuM_11xet_runtime.exit.sink.split, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str8RawOsStrEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str11RawOsStringECsarFSTFZzLuM_11xet_runtime.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str11RawOsStringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscpXoUs9mfvj_12os_str_bytes7raw_str11RawOsStringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils11config_enum10ConfigEnumEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8mtlrHyd7Y_11shellexpand4path5funcs18tilde_with_contextNtNtCsG258MDvU3F_3std4path4PathNtB13_7PathBufNvB2_8home_dirECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RNvYbNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_valueB9_:bb.a
  %i.bt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bt, label %bb.ae [
    i8 0, label %bb.ai
    i8 1, label %bb.af
    i8 2, label %bb.af
  ], !prof !14

bb.ae:                                            ; preds = %bb.ad
  %i.bu = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE)
          to label %bb.ag unwind label %bb.ab     ; 2 uses

bb.af:                                            ; preds = %bb.ad, %bb.ad, %bb.ag
  %.sroa.09.0 = phi i8 [ %i.bu, %bb.ag ], [ %i.bt, %bb.ad ], [ %i.bt, %bb.ad ]
  %i.bv = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5
  %i.bw = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bv, i8 noundef %.sroa.09.0)
          to label %bb.ah unwind label %bb.ab

bb.ag:                                            ; preds = %bb.ae
  %i.bx = icmp eq i8 %i.bu, 0
  br i1 %i.bx, label %bb.ai, label %bb.af

bb.ah:                                            ; preds = %bb.af
  br i1 %i.bw, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ad, %bb.ac, %bb.am, %bb.ah
  %i.by = phi i8 [ %i.ab, %bb.ag ], [ %i.ab, %bb.ad ], [ %i.ab, %bb.ac ], [ %.pre, %bb.am ], [ %i.ab, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit102 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit102: ; preds = %bb.ai
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.h

bb.al:                                            ; preds = %bb.ah
  %i.cb = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.450.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.cd, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  store ptr @65, ptr %i.o, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.ce, align 8
  store ptr %i.o, ptr %i.p, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @62, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.011.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %.sroa.011.sroa.4.0..sroa_idx, align 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.011.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.am unwind label %bb.ab

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.pre = load i8, ptr %i.q, align 1, !range !6
  br label %bb.ai

bb.an:                                            ; preds = %bb.ab
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvYdNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_valueB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 14 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  store ptr %0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %1, ptr %i.v, align 8
  store double %3, ptr %i.t, align 8
  %i.w = load i64, ptr %2, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.w, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  invoke void @_RNvXs2_NtNtCskKLDkoKarTP_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa) #26
          to label %bb.i unwind label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.ab = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ac = icmp ult i64 %i.ab, 2
  br i1 %i.ac, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ad = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ad, label %bb.e [
    i8 0, label %bb.h
    i8 1, label %bb.f
    i8 2, label %bb.f
  ], !prof !14

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE) #26 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.e
  %.sroa.038.0 = phi i8 [ %i.ae, %bb.e ], [ %i.ad, %bb.d ], [ %i.ad, %bb.d ]
  %i.ag = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5
  %i.ah = tail call noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, i8 noundef %.sroa.038.0)
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values1_10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.u, ptr %i.f, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.487.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.t, ptr %i.ak, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_5Debug3fmt, ptr %.sroa.491.0..sroa_idx, align 8
  store ptr @61, ptr %i.g, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.al, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @62, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aj, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.pre107 = load double, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit
  %.sroa.0.0 = phi double [ %i.bz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit106 ], [ %i.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit ], [ %3, %bb.e ], [ %3, %bb.d ], [ %3, %bb.c ], [ %.pre107, %bb.g ], [ %3, %bb.f ]
  ret double %.sroa.0.0

bb.i:                                             ; preds = %bb.b
  %i.an = load i8, ptr %i.a, align 8, !range !6, !noalias !104, !noundef !5
  %4 = trunc nuw i8 %i.an to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !noalias !104 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  br i1 %4, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  %i.aq = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ar = icmp ult i64 %i.aq, 4
  br i1 %i.ar, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.as = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.as, label %bb.l [
    i8 0, label %bb.r
    i8 1, label %bb.m
    i8 2, label %bb.m
  ], !prof !14

bb.l:                                             ; preds = %bb.k
  %i.at = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE)
          to label %bb.n unwind label %bb.ac      ; 2 uses

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.n
  %.sroa.018.0 = phi i8 [ %i.at, %bb.n ], [ %i.as, %bb.k ], [ %i.as, %bb.k ]
  %i.au = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5
  %i.av = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.au, i8 noundef %.sroa.018.0)
          to label %bb.o unwind label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.aw = icmp eq i8 %i.at, 0
  br i1 %i.aw, label %bb.r, label %bb.m

bb.o:                                             ; preds = %bb.m
  br i1 %i.av, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values_10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.s, ptr %i.l, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.u, ptr %i.az, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.466.0..sroa_idx, align 8
  store ptr @81, ptr %i.m, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.ba, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @62, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ay, ptr %.sroa.421.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.k, %bb.j, %bb.q, %bb.o
  %i.bc = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bd = icmp ult i64 %i.bc, 3
  br i1 %i.bd, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.be = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.be, label %bb.t [
    i8 0, label %bb.x
    i8 1, label %bb.u
    i8 2, label %bb.u
  ], !prof !14

bb.t:                                             ; preds = %bb.s
  %i.bf = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE)
          to label %bb.v unwind label %bb.ac      ; 2 uses

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.v
  %.sroa.028.0 = phi i8 [ %i.bf, %bb.v ], [ %i.be, %bb.s ], [ %i.be, %bb.s ]
  %i.bg = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5
  %i.bh = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg, i8 noundef %.sroa.028.0)
          to label %bb.w unwind label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.bi = icmp eq i8 %i.bf, 0
  br i1 %i.bi, label %bb.x, label %bb.u

bb.w:                                             ; preds = %bb.u
  br i1 %i.bh, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.s, %bb.r, %bb.ab, %bb.w
  %i.bj = load double, ptr %i.t, align 8, !noundef !5
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.ak, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.ak ], [ %i.bk, %bb.y ], [ %i.br, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.h

bb.aa:                                            ; preds = %bb.w
  %i.bm = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_values0_10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.u, ptr %i.i, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsarFSTFZzLuM_11xet_runtime, ptr %.sroa.475.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.t, ptr %i.bo, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_5Debug3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  store ptr @82, ptr %i.j, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.bp, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @62, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.030.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %.sroa.030.sroa.4.0..sroa_idx, align 8
  %.sroa.030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.030.sroa.5.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bn, ptr %.sroa.431.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.ac:                                            ; preds = %bb.b, %bb.l, %bb.m, %bb.p, %bb.t, %bb.u, %bb.aa, %bb.am, %bb.ag, %bb.af
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #22
          to label %common.resume unwind label %bb.ao

bb.ad:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store double %i.ap, ptr %i.r, align 8
  %i.bs = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bt = icmp ult i64 %i.bs, 3
  br i1 %i.bt, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bu, label %bb.af [
    i8 0, label %bb.aj
    i8 1, label %bb.ag
    i8 2, label %bb.ag
  ], !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.bv = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE)
          to label %bb.ah unwind label %bb.ac     ; 2 uses

bb.ag:                                            ; preds = %bb.ae, %bb.ae, %bb.ah
  %.sroa.09.0 = phi i8 [ %i.bv, %bb.ah ], [ %i.bu, %bb.ae ], [ %i.bu, %bb.ae ]
  %i.bw = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime5utils19configuration_utils19ParsableConfigValue18parse_config_value10___CALLSITE, align 8, !nonnull !5, !align !11, !noundef !5
  %i.bx = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bw, i8 noundef %.sroa.09.0)
          to label %bb.ai unwind label %bb.ac

bb.ah:                                            ; preds = %bb.af
  %i.by = icmp eq i8 %i.bv, 0
  br i1 %i.by, label %bb.aj, label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.bx, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ae, %bb.ad, %bb.an, %bb.ai
end_hunk_1
