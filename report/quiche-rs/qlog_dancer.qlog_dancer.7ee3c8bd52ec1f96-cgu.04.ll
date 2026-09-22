Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.04?download=true
inline.NumInlined: 759
inline.NumDeleted: 182
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 75
begin_hunk_0
@184 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @183, [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@185 = private unnamed_addr constant [24 x i8] c"variant index 0 <= i < 1", align 1
@186 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @185, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@187 = private unnamed_addr constant [1 x i8] c"}", align 1
@188 = private unnamed_addr constant [1 x i8] c"{", align 1
@189 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs9xKKqPmwf7Y_10serde_core2deNtNvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBM_9EventDataNtB4_11Deserialize11deserializeNtBH_6___SeedNtB4_15DeserializeSeed11deserialize9___VisitorNtB4_8Expected3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3074
@190 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs9xKKqPmwf7Y_10serde_core2deNtNvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBM_9EventDataNtB4_11Deserialize11deserializeNtBH_6___SeedNtB4_15DeserializeSeed11deserializes0_9___VisitorNtB4_8Expected3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3075
@191 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs9xKKqPmwf7Y_10serde_core2deNtNvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBM_9EventDataNtB4_11Deserialize11deserializeNtBH_6___SeedNtB4_15DeserializeSeed11deserializes1_9___VisitorNtB4_8Expected3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3076
@192 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs9xKKqPmwf7Y_10serde_core2deNtNvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBM_9EventDataNtB4_11Deserialize11deserializeNtBH_6___SeedNtB4_15DeserializeSeed11deserializes2_9___VisitorNtB4_8Expected3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3077
@193 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs9xKKqPmwf7Y_10serde_core2deNtNvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBM_9EventDataNtB4_11Deserialize11deserializeNtBH_6___SeedNtB4_15DeserializeSeed11deserializes_9___VisitorNtB4_8Expected3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3078
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00O\00\00\00/\00\00\00" }>, align 8
@195 = private unnamed_addr constant [6 x i8] c"Prefix", align 1
@196 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3079
@197 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionyENtNtB7_3fmt5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3080
@198 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRuNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3081
@199 = private unnamed_addr constant [6 x i8] c"Limits", align 1
@200 = private unnamed_addr constant [15 x i8] c"max_image_width", align 1
@201 = private unnamed_addr constant [16 x i8] c"max_image_height", align 1
@202 = private unnamed_addr constant [9 x i8] c"max_alloc", align 1
@203 = private unnamed_addr constant [15 x i8] c"_non_exhaustive", align 1
@204 = private unnamed_addr constant [14 x i8] c"DimensionError", align 1
@205 = private unnamed_addr constant [18 x i8] c"InsufficientMemory", align 1
@206 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCs7kmMwkRel8w_5image2ioNtB5_6LimitsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3082
@207 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image2io12LimitSupportNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3083
@208 = private unnamed_addr constant [11 x i8] c"Unsupported", align 1
@209 = private unnamed_addr constant [6 x i8] c"limits", align 1
@210 = private unnamed_addr constant [9 x i8] c"supported", align 1
@211 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5image11ImageFormatNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3084
@212 = private unnamed_addr constant [5 x i8] c"Exact", align 1
@213 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3085
@214 = private unnamed_addr constant [4 x i8] c"Name", align 1
@215 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3086
@216 = private unnamed_addr constant [13 x i8] c"PathExtension", align 1
@217 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@218 = private unnamed_addr constant [4 x i8] c"None", align 1
@219 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3087
@220 = private unnamed_addr constant [4 x i8] c"Some", align 1
@221 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3088
@222 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3JBf551F2Kj_4qlog6events4quic14TransportErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3089
@223 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3JBf551F2Kj_4qlog6events16ApplicationErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3090
@224 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3JBf551F2Kj_4qlog6events11CryptoErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3091
@_RNvNvXsX_NtCs3JBf551F2Kj_4qlog6eventsNtB7_16ApplicationErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES = external local_unnamed_addr global { ptr, i64 }
@_RNvNvXsX_NtCs3JBf551F2Kj_4qlog6eventsNtB7_16ApplicationErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET = external global [19 x i64]
@225 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_5Debug3fmt }>, align 8, !dbg !3092
@226 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3093
@227 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3094
@228 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3095
@229 = private unnamed_addr constant [10 x i8] c"importance", align 1
@230 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5error13DecodingErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3096
@231 = private unnamed_addr constant [8 x i8] c"Decoding", align 1
@232 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5error13EncodingErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3097
@233 = private unnamed_addr constant [8 x i8] c"Encoding", align 1
@234 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5error14ParameterErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3098
@235 = private unnamed_addr constant [9 x i8] c"Parameter", align 1
@236 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5error10LimitErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3099
@237 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5error16UnsupportedErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3100
@238 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3101
@239 = private unnamed_addr constant [7 x i8] c"IoError", align 1
@240 = private unnamed_addr constant [4 x i8] c"Core", align 1
@241 = private unnamed_addr constant [4 x i8] c"Base", align 1
@242 = private unnamed_addr constant [5 x i8] c"Extra", align 1
@243 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7kmMwkRel8w_5image5error15ImageFormatHintECsaTqK2fWTXJW_11qlog_dancer, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsH_NtCs7kmMwkRel8w_5image5errorNtB5_15ImageFormatHintNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3102
@244 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5error20UnsupportedErrorKindNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3103
@245 = private unnamed_addr constant [16 x i8] c"UnsupportedError", align 1
@246 = private unnamed_addr constant [6 x i8] c"format", align 1
@247 = private unnamed_addr constant [4 x i8] c"kind", align 1
@248 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5color17ExtendedColorTypeNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3104
@249 = private unnamed_addr constant [5 x i8] c"Color", align 1
@250 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5error15ImageFormatHintNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3105
@251 = private unnamed_addr constant [6 x i8] c"Format", align 1
@252 = private unnamed_addr constant [14 x i8] c"GenericFeature", align 1
@253 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1N_4SyncEL_EENtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3106
@254 = private unnamed_addr constant [13 x i8] c"EncodingError", align 1
@255 = private unnamed_addr constant [10 x i8] c"underlying", align 1
@256 = private constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7kmMwkRel8w_5image5error18ParameterErrorKindECsaTqK2fWTXJW_11qlog_dancer, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs7kmMwkRel8w_5image5errorNtB5_18ParameterErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8, !dbg !3107
@257 = private unnamed_addr constant [14 x i8] c"ParameterError", align 1
@258 = private unnamed_addr constant [17 x i8] c"DimensionMismatch", align 1
@259 = private unnamed_addr constant [13 x i8] c"FailedAlready", align 1
@260 = private unnamed_addr constant [7 x i8] c"Generic", align 1
@261 = private unnamed_addr constant [10 x i8] c"NoMoreData", align 1
@262 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBX_6string6StringEENtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3108
@263 = private unnamed_addr constant [13 x i8] c"DecodingError", align 1
@264 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7kmMwkRel8w_5image5error14LimitErrorKindNtB6_5Debug3fmtCsaTqK2fWTXJW_11qlog_dancer }>, align 8, !dbg !3109
@265 = private unnamed_addr constant [10 x i8] c"LimitError", align 1
@switch.table._RNvXsl_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\04\04\05", align 8
@switch.table._RNvXsl_NtCs3JBf551F2Kj_4qlog6eventsNtB5_15EventImportanceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.99 = private unnamed_addr constant [3 x ptr] [ptr @240, ptr @241, ptr @242], align 8

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMs3_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubE20perform_next_checkedNCNvMs2_B6_BY_12next_checked0TRyQB1H_EEB1L_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12227 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !12341, !DIExpression(), !12344)
    #dbg_value(ptr %0, !12345, !DIExpression(), !12352)
    #dbg_declare(ptr poison, !12342, !DIExpression(), !12353)
    #dbg_value(ptr %0, !12355, !DIExpression(), !12364)
    #dbg_value(ptr %0, !12358, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12365)
  %i.d = load ptr, ptr %0, align 8, !dbg !12508, !noundef !3132 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !12508
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12508
  %i.f = load ptr, ptr %i.e, align 8, !dbg !12508, !noundef !3132 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !12509

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !12360, !DIExpression(), !12366)
    #dbg_value(ptr %0, !12367, !DIExpression(), !12382)
    #dbg_value(ptr %0, !12361, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12383)
    #dbg_value(ptr %0, !12371, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12384)
    #dbg_value(ptr %0, !12373, !DIExpression(), !12385)
    #dbg_value(ptr %0, !12374, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12386)
    #dbg_value(ptr %0, !12376, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12387)
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.split, label %bb.d, !dbg !12509

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.f, null, !dbg !12508
  br i1 %i.h, label %bb.i, label %bb.h, !dbg !12510

.split:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12511
  %i.j = load i64, ptr %i.i, align 8, !dbg !12511, !noundef !3132
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12512
  %i.l = load i64, ptr %i.k, align 8, !dbg !12512, !noundef !3132
  %i.m = icmp eq i64 %i.j, %i.l, !dbg !12511
  br i1 %i.m, label %bb.i, label %bb.d, !dbg !12510

bb.d:                                             ; preds = %.split, %bb.b
    #dbg_value(ptr %0, !12388, !DIExpression(), !12405)
    #dbg_value(ptr %0, !12407, !DIExpression(), !12246)
    #dbg_value(ptr poison, !12416, !DIExpression(), !12246)
    #dbg_declare(ptr poison, !12418, !DIExpression(), !12247)
    #dbg_declare(ptr poison, !12417, !DIExpression(), !12248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12513, !noalias !12426
    #dbg_value(ptr poison, !12428, !DIExpression(), !12263)
    #dbg_declare(ptr poison, !12453, !DIExpression(), !12264)
    #dbg_declare(ptr %i.b, !12458, !DIExpression(), !12276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12514, !noalias !12484
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubNtB1y_4LeafENtB1y_4EdgeE7next_kvB1X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0)
          to label %.noexc.i unwind label %bb.g, !dbg !12515

.noexc.i:                                         ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !dbg !12516, !noalias !12484, !noundef !3132 ; 3 uses
  %i.o = icmp eq ptr %i.n, null, !dbg !12516
  br i1 %i.o, label %bb.e, label %bb.f, !dbg !12517, !prof !5147

bb.e:                                             ; preds = %.noexc.i
    #dbg_value(ptr null, !12485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12283)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12518, !noalias !12484
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #18
          to label %.noexc4.i unwind label %bb.g, !dbg !12519, !noalias !12426

.noexc4.i:                                        ; preds = %bb.e
  unreachable, !dbg !12519

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12520
  %.sroa.4.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !12520, !noalias !12484 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12520
  %.sroa.4.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12520, !noalias !12484 ; 2 uses
    #dbg_value(ptr %i.n, !12485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12283)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i.i, !12485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12283)
    #dbg_value(i64 %.sroa.4.sroa.4.0.copyload.i.i, !12485, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12283)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12518, !noalias !12484
    #dbg_value(ptr %i.n, !12455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12284)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i.i, !12455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12284)
    #dbg_value(i64 %.sroa.4.sroa.4.0.copyload.i.i, !12455, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12284)
    #dbg_value(ptr poison, !12446, !DIExpression(), !12263)
    #dbg_value(ptr undef, !12428, !DIExpression(), !12263)
    #dbg_value(ptr %i.n, !12491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12287)
    #dbg_value(i64 %.sroa.4.sroa.0.0.copyload.i.i, !12491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12287)
    #dbg_value(i64 %.sroa.4.sroa.4.0.copyload.i.i, !12491, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12287)
  %i.p = invoke { ptr, ptr } @_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubNtB19_14LeafOrInternalE19into_key_val_mut_atB1x_(ptr noundef nonnull %i.n, i64 noundef %.sroa.4.sroa.0.0.copyload.i.i, i64 noundef %.sroa.4.sroa.4.0.copyload.i.i)
          to label %.noexc5.i unwind label %bb.g, !dbg !12521, !noalias !12426 ; 2 uses

.noexc5.i:                                        ; preds = %bb.f
    #dbg_value(ptr poison, !12456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12288)
    #dbg_value(ptr poison, !12456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12522, !noalias !12484
  store ptr %i.n, ptr %i.a, align 8, !dbg !12522, !noalias !12484
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12522
  store i64 %.sroa.4.sroa.0.0.copyload.i.i, ptr %.sroa.51.0..sroa_idx.i.i, align 8, !dbg !12522, !noalias !12484
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12522
  store i64 %.sroa.4.sroa.4.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !12522, !noalias !12484
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubNtB1y_4LeafENtB1y_4EdgeEINtNtCskKLDkoKarTP_4core6option6OptionTRyQB1T_EENCINvMs3_NtB4_8navigateINtB47_9LeafRangeB1w_yB1T_E20perform_next_checkedNCNvMs2_B47_B4l_12next_checked0B3O_E0EB1X_.exit unwind label %bb.g, !dbg !12523, !noalias !12426

bb.g:                                             ; preds = %.noexc5.i, %bb.f, %bb.e, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !12499, !DIExpression(), !12291)
    #dbg_value(ptr poison, !12505, !DIExpression(), !12294)
  tail call void @llvm.trap(), !dbg !12524
  unreachable, !dbg !12524

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubNtB1y_4LeafENtB1y_4EdgeEINtNtCskKLDkoKarTP_4core6option6OptionTRyQB1T_EENCINvMs3_NtB4_8navigateINtB47_9LeafRangeB1w_yB1T_E20perform_next_checkedNCNvMs2_B47_B4l_12next_checked0B3O_E0EB1X_.exit: ; preds = %.noexc5.i
  %i.r = extractvalue { ptr, ptr } %i.p, 1, !dbg !12525 ; 2 uses
    #dbg_value(ptr %i.r, !12456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12288)
  %i.s = extractvalue { ptr, ptr } %i.p, 0, !dbg !12525 ; 2 uses
    #dbg_value(ptr %i.s, !12456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12288)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12523, !noalias !12484
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ], !dbg !12526
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ], !dbg !12526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !12527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12528, !noalias !12426
  br label %bb.i, !dbg !12529

bb.h:                                             ; preds = %bb.c
    #dbg_value(ptr null, !12388, !DIExpression(), !12405)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !dbg !12530
  unreachable, !dbg !12530

bb.i:                                             ; preds = %.split, %bb.c, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubNtB1y_4LeafENtB1y_4EdgeEINtNtCskKLDkoKarTP_4core6option6OptionTRyQB1T_EENCINvMs3_NtB4_8navigateINtB47_9LeafRangeB1w_yB1T_E20perform_next_checkedNCNvMs2_B47_B4l_12next_checked0B3O_E0EB1X_.exit
  %.sroa.3.0 = phi ptr [ %i.r, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubNtB1y_4LeafENtB1y_4EdgeEINtNtCskKLDkoKarTP_4core6option6OptionTRyQB1T_EENCINvMs3_NtB4_8navigateINtB47_9LeafRangeB1w_yB1T_E20perform_next_checkedNCNvMs2_B47_B4l_12next_checked0B3O_E0EB1X_.exit ], [ undef, %bb.c ], [ undef, %.split ]
  %.sroa.0.0 = phi ptr [ %i.s, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker6ValMutyNtNtCsaTqK2fWTXJW_11qlog_dancer9datastore14PacketInfoStubNtB1y_4LeafENtB1y_4EdgeEINtNtCskKLDkoKarTP_4core6option6OptionTRyQB1T_EENCINvMs3_NtB4_8navigateINtB47_9LeafRangeB1w_yB1T_E20perform_next_checkedNCNvMs2_B47_B4l_12next_checked0B3O_E0EB1X_.exit ], [ null, %bb.c ], [ null, %.split ], !dbg !12344
  %i.t = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !12531
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.3.0, 1, !dbg !12531
  ret { ptr, ptr } %i.u, !dbg !12531
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !677 {
bb.a:
    #dbg_value(ptr %0, !5155, !DIExpression(), !12538)
  %i.a = load i64, ptr %0, align 8, !dbg !12539, !range !5159, !noundef !3132
  %i.b = icmp eq i64 %i.a, -1, !dbg !12539
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !12539

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsaTqK2fWTXJW_11qlog_dancer.exit, %bb.a
  ret void, !dbg !12539

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !5161, !DIExpression(), !12533)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.d, !dbg !12540

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !5166, !DIExpression(), !12535)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.e, !dbg !12541

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12540
  unreachable, !dbg !12540

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !12540

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !5166, !DIExpression(), !12537)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !12542
  br label %bb.b, !dbg !12539
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !680 {
bb.a:
    #dbg_value(ptr %0, !5175, !DIExpression(), !12549)
  %i.a = load i64, ptr %0, align 8, !dbg !12550, !range !5159, !noundef !3132
  %i.b = icmp eq i64 %i.a, -1, !dbg !12550
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !12550

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierEECsaTqK2fWTXJW_11qlog_dancer.exit, %bb.a
  ret void, !dbg !12550

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !5180, !DIExpression(), !12544)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.d, !dbg !12551

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !5185, !DIExpression(), !12546)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierEECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.e, !dbg !12552

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12551
  unreachable, !dbg !12551

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierEECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !12551

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !5185, !DIExpression(), !12548)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !12553
  br label %bb.b, !dbg !12550
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !683 {
bb.a:
    #dbg_value(ptr %0, !5194, !DIExpression(), !12560)
  %i.a = load i64, ptr %0, align 8, !dbg !12561, !range !5159, !noundef !3132
  %i.b = icmp eq i64 %i.a, -1, !dbg !12561
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !12561

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameEECsaTqK2fWTXJW_11qlog_dancer.exit, %bb.a
  ret void, !dbg !12561

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !5199, !DIExpression(), !12555)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.d, !dbg !12562

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !5204, !DIExpression(), !12557)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameEECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.e, !dbg !12563

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12562
  unreachable, !dbg !12562

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameEECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !12562

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !5204, !DIExpression(), !12559)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !12564
  br label %bb.b, !dbg !12561
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !686 {
bb.a:
    #dbg_value(ptr %0, !5213, !DIExpression(), !12571)
  %i.a = load i64, ptr %0, align 8, !dbg !12572, !range !5159, !noundef !3132
  %i.b = icmp eq i64 %i.a, -1, !dbg !12572
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !12572

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsaTqK2fWTXJW_11qlog_dancer.exit, %bb.a
  ret void, !dbg !12572

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !5218, !DIExpression(), !12566)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.d, !dbg !12573

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !5223, !DIExpression(), !12568)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecmEECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.e, !dbg !12574

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12573
  unreachable, !dbg !12573

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecmEECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !12573

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !5223, !DIExpression(), !12570)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !12575
  br label %bb.b, !dbg !12572
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsaTqK2fWTXJW_11qlog_dancer(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !689 {
bb.a:
    #dbg_value(ptr poison, !5232, !DIExpression(), !12610)
  %i.a = icmp eq ptr %.0.val, null, !dbg !12611
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !12611

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsaTqK2fWTXJW_11qlog_dancer.exit, %bb.a
  ret void, !dbg !12611

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !5237, !DIExpression(), !12577)
    #dbg_value(ptr %.0.val, !5242, !DIExpression(), !12579)
    #dbg_value(ptr %.0.val, !5247, !DIExpression(), !12581)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i unwind label %bb.d, !dbg !12612

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.0.val, !5254, !DIExpression(), !12583)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.g unwind label %bb.e, !dbg !12613

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !12612
  unreachable, !dbg !12612

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBb_9EventDataNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_6___SeedNtB10_15DeserializeSeed11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_declare(ptr poison, !30211, !DIExpression(), !30343)
    #dbg_declare(ptr poison, !30219, !DIExpression(), !30344)
    #dbg_declare(ptr poison, !30227, !DIExpression(), !30345)
    #dbg_declare(ptr poison, !30243, !DIExpression(), !30346)
    #dbg_declare(ptr poison, !30251, !DIExpression(), !30347)
    #dbg_declare(ptr poison, !30259, !DIExpression(), !30348)
    #dbg_declare(ptr poison, !30267, !DIExpression(), !30349)
    #dbg_declare(ptr poison, !30275, !DIExpression(), !30350)
    #dbg_declare(ptr poison, !30283, !DIExpression(), !30351)
    #dbg_declare(ptr poison, !30291, !DIExpression(), !30352)
    #dbg_declare(ptr poison, !30299, !DIExpression(), !30353)
    #dbg_declare(ptr poison, !30307, !DIExpression(), !30354)
    #dbg_declare(ptr poison, !29956, !DIExpression(), !30355)
    #dbg_declare(ptr poison, !29962, !DIExpression(), !30356)
    #dbg_declare(ptr poison, !29970, !DIExpression(), !30357)
    #dbg_declare(ptr poison, !29978, !DIExpression(), !30358)
    #dbg_declare(ptr poison, !29986, !DIExpression(), !30359)
    #dbg_declare(ptr poison, !29994, !DIExpression(), !30360)
    #dbg_declare(ptr poison, !30002, !DIExpression(), !30361)
    #dbg_declare(ptr poison, !30010, !DIExpression(), !30362)
    #dbg_declare(ptr poison, !30018, !DIExpression(), !30363)
    #dbg_declare(ptr poison, !30026, !DIExpression(), !30364)
    #dbg_declare(ptr poison, !30365, !DIExpression(), !30372)
    #dbg_declare(ptr poison, !30034, !DIExpression(), !30373)
    #dbg_declare(ptr poison, !30042, !DIExpression(), !30374)
    #dbg_declare(ptr poison, !30050, !DIExpression(), !30375)
    #dbg_declare(ptr poison, !30058, !DIExpression(), !30376)
    #dbg_declare(ptr poison, !30066, !DIExpression(), !30377)
    #dbg_declare(ptr poison, !30074, !DIExpression(), !30378)
    #dbg_declare(ptr poison, !30082, !DIExpression(), !30379)
    #dbg_declare(ptr poison, !30090, !DIExpression(), !30380)
    #dbg_declare(ptr poison, !30098, !DIExpression(), !30381)
    #dbg_declare(ptr poison, !30106, !DIExpression(), !30382)
    #dbg_declare(ptr poison, !30114, !DIExpression(), !30383)
    #dbg_declare(ptr poison, !30122, !DIExpression(), !30384)
    #dbg_declare(ptr poison, !30130, !DIExpression(), !30385)
    #dbg_declare(ptr poison, !30138, !DIExpression(), !30386)
    #dbg_declare(ptr poison, !30146, !DIExpression(), !30387)
    #dbg_declare(ptr poison, !30154, !DIExpression(), !30388)
    #dbg_declare(ptr poison, !30162, !DIExpression(), !30389)
    #dbg_declare(ptr poison, !30170, !DIExpression(), !30390)
    #dbg_declare(ptr poison, !30178, !DIExpression(), !30391)
    #dbg_declare(ptr poison, !30186, !DIExpression(), !30392)
    #dbg_declare(ptr poison, !30194, !DIExpression(), !30393)
    #dbg_declare(ptr poison, !30202, !DIExpression(), !30394)
    #dbg_declare(ptr poison, !30210, !DIExpression(), !30395)
    #dbg_declare(ptr poison, !30218, !DIExpression(), !30396)
    #dbg_declare(ptr poison, !30226, !DIExpression(), !30397)
    #dbg_declare(ptr poison, !30234, !DIExpression(), !30398)
    #dbg_declare(ptr poison, !30242, !DIExpression(), !30399)
    #dbg_declare(ptr poison, !30250, !DIExpression(), !30400)
    #dbg_declare(ptr poison, !30258, !DIExpression(), !30401)
    #dbg_declare(ptr poison, !30266, !DIExpression(), !30402)
    #dbg_declare(ptr poison, !30274, !DIExpression(), !30403)
    #dbg_declare(ptr poison, !30282, !DIExpression(), !30404)
    #dbg_declare(ptr poison, !30290, !DIExpression(), !30405)
    #dbg_declare(ptr poison, !30298, !DIExpression(), !30406)
    #dbg_declare(ptr poison, !30306, !DIExpression(), !30407)
  switch i8 %1, label %default.unreachable233 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ak
    i8 36, label %bb.al
    i8 37, label %bb.am
    i8 38, label %bb.an
    i8 39, label %bb.ao
    i8 40, label %bb.ap
    i8 41, label %bb.aq
    i8 42, label %bb.ar
    i8 43, label %bb.as
    i8 44, label %bb.at
    i8 45, label %bb.au
    i8 46, label %bb.av
    i8 47, label %bb.aw
    i8 48, label %bb.ax
    i8 49, label %bb.ay
    i8 50, label %bb.az
  ], !dbg !29954

default.unreachable233:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsn_1__NtB5_15ServerListeningNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.as, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.at = load i64, ptr %i.as, align 8, !dbg !30459, !range !5323, !noundef !3132
  %i.au = icmp eq i64 %i.at, -2, !dbg !30459
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30460 ; 2 uses
  br i1 %i.au, label %bb.ba, label %bb.bb, !dbg !30461

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsp_1__NtB5_17ConnectionStartedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.ar, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.aw = load i64, ptr %i.ar, align 8, !dbg !30462, !range !5323, !noundef !3132
  %i.ax = icmp eq i64 %i.aw, -2, !dbg !30462
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30463 ; 2 uses
  br i1 %i.ax, label %bb.be, label %bb.bf, !dbg !30464

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsr_1__NtB5_16ConnectionClosedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.az = load i64, ptr %i.aq, align 8, !dbg !30465, !range !5366, !noundef !3132
  %i.ba = icmp eq i64 %i.az, 2, !dbg !30465
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30466 ; 2 uses
  br i1 %i.ba, label %bb.bh, label %bb.bi, !dbg !30467

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicst_1__NtB5_19ConnectionIdUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.bc = load i64, ptr %i.ap, align 8, !dbg !30468, !range !5323, !noundef !3132
  %i.bd = icmp eq i64 %i.bc, -2, !dbg !30468
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30469 ; 2 uses
  br i1 %i.bd, label %bb.bk, label %bb.bl, !dbg !30470

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsv_1__NtB5_14SpinBitUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.bf = load i8, ptr %i.ao, align 8, !dbg !30471, !range !6223, !noundef !3132
  %i.bg = trunc nuw i8 %i.bf to i1, !dbg !30471
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30472 ; 2 uses
  br i1 %i.bg, label %bb.bn, label %bb.bo, !dbg !30473

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsx_1__NtB5_22ConnectionStateUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.bi = load i8, ptr %i.an, align 8, !dbg !30474, !range !6223, !noundef !3132
  %i.bj = trunc nuw i8 %i.bi to i1, !dbg !30474
  br i1 %i.bj, label %bb.bq, label %bb.br, !dbg !30475

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsz_1__NtB5_13TupleAssignedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.bk = load i64, ptr %i.am, align 8, !dbg !30476, !range !5159, !noundef !3132
  %i.bl = icmp eq i64 %i.bk, -1, !dbg !30476
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30477 ; 2 uses
  br i1 %i.bl, label %bb.bt, label %bb.bu, !dbg !30478

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsB_1__NtB5_10MtuUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.bn = load i32, ptr %i.al, align 8, !dbg !30479, !range !7228, !noundef !3132
  %i.bo = icmp eq i32 %i.bn, 2, !dbg !30479
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30480 ; 2 uses
  br i1 %i.bo, label %bb.bw, label %bb.bx, !dbg !30481

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsT_1__NtB5_22QuicVersionInformationNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.bq = load i64, ptr %i.ak, align 8, !dbg !30482, !range !5323, !noundef !3132
  %i.br = icmp eq i64 %i.bq, -2, !dbg !30482
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30483 ; 2 uses
  br i1 %i.br, label %bb.bz, label %bb.ca, !dbg !30484

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quicsV_1__NtB5_15AlpnInformationNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.bt = load i64, ptr %i.aj, align 8, !dbg !30485, !range !5323, !noundef !3132
  %i.bu = icmp eq i64 %i.bt, -2, !dbg !30485
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30486 ; 2 uses
  br i1 %i.bu, label %bb.cc, label %bb.cd, !dbg !30487

bb.l:                                             ; preds = %bb.a
  %i.bw = tail call { i64, ptr } @_RINvXs3n_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs3JBf551F2Kj_4qlog6events4quic13ParametersSetENtB9_11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954 ; 2 uses
  %i.bx = extractvalue { i64, ptr } %i.bw, 0, !dbg !29954
  %i.by = extractvalue { i64, ptr } %i.bw, 1, !dbg !29954 ; 3 uses
    #dbg_value(i64 %i.bx, !30366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30408)
    #dbg_value(ptr %i.by, !30366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30408)
  %3 = trunc nuw i64 %i.bx to i1, !dbg !30488
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  br i1 %3, label %bb.cf, label %bb.cg, !dbg !30488

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics11_1__NtB5_18ParametersRestoredNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.bz = load i64, ptr %i.ai, align 8, !dbg !30489, !range !5366, !noundef !3132
  %i.ca = icmp eq i64 %i.bz, 2, !dbg !30489
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30490 ; 2 uses
  br i1 %i.ca, label %bb.ch, label %bb.ci, !dbg !30491

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1d_1__NtB5_10PacketSentNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.cc = load i64, ptr %i.ah, align 8, !dbg !30492, !range !5366, !noundef !3132
  %i.cd = icmp eq i64 %i.cc, 2, !dbg !30492
  br i1 %i.cd, label %bb.ck, label %bb.cl, !dbg !30493

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1b_1__NtB5_14PacketReceivedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.ce = load i64, ptr %i.ag, align 8, !dbg !30494, !range !5366, !noundef !3132
  %i.cf = icmp eq i64 %i.ce, 2, !dbg !30494
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30495 ; 2 uses
  br i1 %i.cf, label %bb.cn, label %bb.co, !dbg !30496

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1f_1__NtB5_13PacketDroppedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.ch = load i64, ptr %i.af, align 8, !dbg !30497, !range !7229, !noundef !3132
  %i.ci = icmp eq i64 %i.ch, -1, !dbg !30497
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30498 ; 2 uses
  br i1 %i.ci, label %bb.cq, label %bb.cr, !dbg !30499

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1h_1__NtB5_14PacketBufferedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.ck = load i64, ptr %i.ae, align 8, !dbg !30500, !range !7229, !noundef !3132
  %i.cl = icmp eq i64 %i.ck, -1, !dbg !30500
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30501 ; 2 uses
  br i1 %i.cl, label %bb.ct, label %bb.cu, !dbg !30502

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1j_1__NtB5_12PacketsAckedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.cn = load i64, ptr %i.ad, align 8, !dbg !30503, !range !5323, !noundef !3132
  %i.co = icmp eq i64 %i.cn, -2, !dbg !30503
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30504 ; 2 uses
  br i1 %i.co, label %bb.cw, label %bb.cx, !dbg !30505

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics17_1__NtB5_16UdpDatagramsSentNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.cq = load i64, ptr %i.ac, align 8, !dbg !30506, !range !5323, !noundef !3132
  %i.cr = icmp eq i64 %i.cq, -2, !dbg !30506
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30507 ; 2 uses
  br i1 %i.cr, label %bb.cz, label %bb.da, !dbg !30508

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics15_1__NtB5_20UdpDatagramsReceivedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.ct = load i64, ptr %i.ab, align 8, !dbg !30509, !range !5323, !noundef !3132
  %i.cu = icmp eq i64 %i.ct, -2, !dbg !30509
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30510 ; 2 uses
  br i1 %i.cu, label %bb.dc, label %bb.dd, !dbg !30511

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics19_1__NtB5_18UdpDatagramDroppedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.cw = load i64, ptr %i.aa, align 8, !dbg !30512, !range !7229, !noundef !3132
  %i.cx = icmp eq i64 %i.cw, -1, !dbg !30512
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30513 ; 2 uses
  br i1 %i.cx, label %bb.df, label %bb.dg, !dbg !30514

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1l_1__NtB5_18StreamStateUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 11, !dbg !30515
  %i.da = load i8, ptr %i.cz, align 1, !dbg !30515, !range !7230, !noundef !3132
  %i.db = icmp eq i8 %i.da, -1, !dbg !30515
  br i1 %i.db, label %bb.di, label %bb.dj, !dbg !30516

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1n_1__NtB5_15FramesProcessedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.dc = load i64, ptr %i.y, align 8, !dbg !30517, !range !5366, !noundef !3132
  %i.dd = icmp eq i64 %i.dc, 2, !dbg !30517
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30518 ; 2 uses
  br i1 %i.dd, label %bb.dl, label %bb.dm, !dbg !30519

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1r_1__NtB5_15StreamDataMovedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.df = load i64, ptr %i.x, align 8, !dbg !30520, !range !5366, !noundef !3132
  %i.dg = icmp eq i64 %i.df, 2, !dbg !30520
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30521 ; 2 uses
  br i1 %i.dg, label %bb.do, label %bb.dp, !dbg !30522

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1t_1__NtB5_17DatagramDataMovedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.di = load i64, ptr %i.w, align 8, !dbg !30523, !range !7229, !noundef !3132
  %i.dj = icmp eq i64 %i.di, -1, !dbg !30523
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30524 ; 2 uses
  br i1 %i.dj, label %bb.dr, label %bb.ds, !dbg !30525

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1z_1__NtB5_28ConnectionDataBlockedUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.dl = load i8, ptr %i.v, align 8, !dbg !30526, !range !6223, !noundef !3132
  %i.dm = trunc nuw i8 %i.dl to i1, !dbg !30526
  br i1 %i.dm, label %bb.du, label %bb.dv, !dbg !30527

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1B_1__NtB5_24StreamDataBlockedUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 10, !dbg !30528
  %i.do = load i8, ptr %i.dn, align 2, !dbg !30528, !range !7230, !noundef !3132
  %i.dp = icmp eq i8 %i.do, -1, !dbg !30528
  br i1 %i.dp, label %bb.dx, label %bb.dy, !dbg !30529

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1D_1__NtB5_26DatagramDataBlockedUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.dq = load i8, ptr %i.t, align 8, !dbg !30530, !range !6223, !noundef !3132
  %i.dr = trunc nuw i8 %i.dq to i1, !dbg !30530
  br i1 %i.dr, label %bb.ea, label %bb.eb, !dbg !30531

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1H_1__NtB5_21MigrationStateUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.ds = load i64, ptr %i.s, align 8, !dbg !30532, !range !5323, !noundef !3132
  %i.dt = icmp eq i64 %i.ds, -2, !dbg !30532
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30533 ; 2 uses
  br i1 %i.dt, label %bb.ed, label %bb.ee, !dbg !30534

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics2b_1__NtB5_10KeyUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.dv = load i64, ptr %i.r, align 8, !dbg !30535, !range !5366, !noundef !3132
  %i.dw = icmp eq i64 %i.dv, 2, !dbg !30535
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30536 ; 2 uses
  br i1 %i.dw, label %bb.eg, label %bb.eh, !dbg !30537

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics2d_1__NtB5_12KeyDiscardedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.dy = load i64, ptr %i.q, align 8, !dbg !30538, !range !5366, !noundef !3132
  %i.dz = icmp eq i64 %i.dy, 2, !dbg !30538
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30539 ; 2 uses
  br i1 %i.dz, label %bb.ej, label %bb.ek, !dbg !30540

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1R_1__NtB5_21RecoveryParametersSetNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.eb = load i64, ptr %i.p, align 8, !dbg !30541, !range !5366, !noundef !3132
  %i.ec = icmp eq i64 %i.eb, 2, !dbg !30541
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30542 ; 2 uses
  br i1 %i.ec, label %bb.em, label %bb.en, !dbg !30543

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1T_1__NtB5_22RecoveryMetricsUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.ee = load i64, ptr %i.o, align 8, !dbg !30544, !range !5366, !noundef !3132
  %i.ef = icmp eq i64 %i.ee, 2, !dbg !30544
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30545 ; 2 uses
  br i1 %i.ef, label %bb.ep, label %bb.eq, !dbg !30546

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1V_1__NtB5_22CongestionStateUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.eh = load i64, ptr %i.n, align 8, !dbg !30547, !range !5159, !noundef !3132
  %i.ei = icmp eq i64 %i.eh, -1, !dbg !30547
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30548 ; 2 uses
  br i1 %i.ei, label %bb.es, label %bb.et, !dbg !30549

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1X_1__NtB5_12TimerUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.ek = load i64, ptr %i.m, align 8, !dbg !30550, !range !5366, !noundef !3132
  %i.el = icmp eq i64 %i.ek, 2, !dbg !30550
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30551 ; 2 uses
  br i1 %i.el, label %bb.ev, label %bb.ew, !dbg !30552

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics1Z_1__NtB5_10PacketLostNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.en = load i64, ptr %i.l, align 8, !dbg !30553, !range !7229, !noundef !3132
  %i.eo = icmp eq i64 %i.en, -1, !dbg !30553
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30554 ; 2 uses
  br i1 %i.eo, label %bb.ey, label %bb.ez, !dbg !30555

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !29954
  call void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events4quics21_1__NtB5_19MarkedForRetransmitNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2), !dbg !29954
  %i.eq = load i64, ptr %i.k, align 8, !dbg !30556, !range !5159, !noundef !3132
  %i.er = icmp eq i64 %i.eq, -1, !dbg !30556
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !30557 ; 2 uses
  br i1 %i.er, label %bb.fb, label %bb.fc, !dbg !30558

bb.al:                                            ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RINvXs1_NvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtBb_9EventDataNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_mapINtNtNtCsbmN5fM2HLz5_5serde7private2de16FlatStructAccessNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %i.dh = load i64, ptr %i.be, align 8, !dbg !33893, !range !5366, !noundef !3132
  %i.di = icmp eq i64 %i.dh, 2, !dbg !33893
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33894 ; 2 uses
  br i1 %i.di, label %bb.cb, label %bb.cc, !dbg !33895

bb.cb:                                            ; preds = %bb.ca
  %i.dk = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !33896
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !33896, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.dl, !32601, !DIExpression(), !33683)
  store ptr %i.dl, ptr %i.dj, align 8, !dbg !33897
  br label %bb.cd, !dbg !33898

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 64, i1 false), !dbg !33899
  br label %bb.cd, !dbg !33900

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink640 = phi i64 [ -1, %bb.cb ], [ 4, %bb.cc ], !dbg !33894
  store i64 %.sink640, ptr %0, align 8, !dbg !33894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !33884
  br label %bb.l, !dbg !33884

bb.ce:                                            ; preds = %bb.ab
  %i.dm = load i64, ptr %i.bd, align 8, !dbg !33901, !range !5323, !noundef !3132
  %i.dn = icmp eq i64 %i.dm, -2, !dbg !33901
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33902 ; 2 uses
  br i1 %i.dn, label %bb.cf, label %bb.cg, !dbg !33903

bb.cf:                                            ; preds = %bb.ce
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !33904
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !33904, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.dq, !32609, !DIExpression(), !33684)
  store ptr %i.dq, ptr %i.do, align 8, !dbg !33905
  br label %bb.ch, !dbg !33906

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.do, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !33907
  br label %bb.ch, !dbg !33908

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.sink641 = phi i64 [ -1, %bb.cf ], [ 5, %bb.cg ], !dbg !33902
  store i64 %.sink641, ptr %0, align 8, !dbg !33902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !33884
  br label %bb.l, !dbg !33884

bb.ci:                                            ; preds = %bb.ac
  %i.dr = load i8, ptr %i.bc, align 8, !dbg !33909, !range !6223, !noundef !3132
  %i.ds = trunc nuw i8 %i.dr to i1, !dbg !33909
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33910 ; 2 uses
  br i1 %i.ds, label %bb.cj, label %bb.ck, !dbg !33911

bb.cj:                                            ; preds = %bb.ci
  %i.du = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !33912
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !33912, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.dv, !32617, !DIExpression(), !33685)
  store ptr %i.dv, ptr %i.dt, align 8, !dbg !33913
  br label %bb.cl, !dbg !33914

bb.ck:                                            ; preds = %bb.ci
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bc, i64 1, !dbg !33915
  %i.dx = load i8, ptr %i.dw, align 1, !dbg !33915, !range !6223, !noundef !3132
    #dbg_value(i8 %i.dx, !32616, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !33686)
  store i8 %i.dx, ptr %i.dt, align 8, !dbg !33916
  br label %bb.cl, !dbg !33917

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sink642 = phi i64 [ -1, %bb.cj ], [ 6, %bb.ck ], !dbg !33910
  store i64 %.sink642, ptr %0, align 8, !dbg !33910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !33884
  br label %bb.l, !dbg !33884

bb.cm:                                            ; preds = %bb.ad
  %i.dy = load i8, ptr %i.bb, align 8, !dbg !33918, !range !6223, !noundef !3132
  %i.dz = trunc nuw i8 %i.dy to i1, !dbg !33918
  br i1 %i.dz, label %bb.cn, label %bb.co, !dbg !33919

bb.cn:                                            ; preds = %bb.cm
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !33920
  %i.eb = load ptr, ptr %i.ea, align 8, !dbg !33920, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.eb, !32625, !DIExpression(), !33687)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33921
  store ptr %i.eb, ptr %i.ec, align 8, !dbg !33921
  br label %bb.cp, !dbg !33922

bb.co:                                            ; preds = %bb.cm
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bb, i64 1, !dbg !33923
  %i.ee = load i8, ptr %i.ed, align 1, !dbg !33923, !range !7232, !noundef !3132
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bb, i64 2, !dbg !33923
  %i.eg = load i8, ptr %i.ef, align 2, !dbg !33923, !range !7233, !noundef !3132
    #dbg_value(i8 %i.ee, !32624, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33688)
    #dbg_value(i8 %i.eg, !32624, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !33688)
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33924
  store i8 %i.ee, ptr %.sroa.4148.0..sroa_idx, align 8, !dbg !33924
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !33924
  store i8 %i.eg, ptr %.sroa.5149.0..sroa_idx, align 1, !dbg !33924
  br label %bb.cp, !dbg !33925

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sink643 = phi i64 [ -1, %bb.cn ], [ 7, %bb.co ], !dbg !33926
  store i64 %.sink643, ptr %0, align 8, !dbg !33926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !33884
  br label %bb.l, !dbg !33884

bb.cq:                                            ; preds = %bb.ae
  %i.eh = load i64, ptr %i.ba, align 8, !dbg !33927, !range !5159, !noundef !3132
  %i.ei = icmp eq i64 %i.eh, -1, !dbg !33927
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33928 ; 2 uses
  br i1 %i.ei, label %bb.cr, label %bb.cs, !dbg !33929

bb.cr:                                            ; preds = %bb.cq
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !33930
  %i.el = load ptr, ptr %i.ek, align 8, !dbg !33930, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.el, !32633, !DIExpression(), !33689)
  store ptr %i.el, ptr %i.ej, align 8, !dbg !33931
  br label %bb.ct, !dbg !33932

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ej, ptr noundef nonnull align 8 dereferenceable(184) %i.ba, i64 184, i1 false), !dbg !33933
  br label %bb.ct, !dbg !33934

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.sink644 = phi i64 [ -1, %bb.cr ], [ 8, %bb.cs ], !dbg !33928
  store i64 %.sink644, ptr %0, align 8, !dbg !33928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !33884
  br label %bb.l, !dbg !33884

bb.cu:                                            ; preds = %bb.af
  %i.em = load i32, ptr %i.az, align 8, !dbg !33935, !range !7228, !noundef !3132
  %i.en = icmp eq i32 %i.em, 2, !dbg !33935
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33936 ; 2 uses
  br i1 %i.en, label %bb.cv, label %bb.cw, !dbg !33937

bb.cv:                                            ; preds = %bb.cu
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !33938
  %i.eq = load ptr, ptr %i.ep, align 8, !dbg !33938, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.eq, !32641, !DIExpression(), !33690)
  store ptr %i.eq, ptr %i.eo, align 8, !dbg !33939
  br label %bb.cx, !dbg !33940

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !33941
  br label %bb.cx, !dbg !33942

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sink645 = phi i64 [ -1, %bb.cv ], [ 9, %bb.cw ], !dbg !33936
  store i64 %.sink645, ptr %0, align 8, !dbg !33936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !33884
  br label %bb.l, !dbg !33884

bb.cy:                                            ; preds = %bb.ag
  %i.er = load i64, ptr %i.ay, align 8, !dbg !33943, !range !5323, !noundef !3132
  %i.es = icmp eq i64 %i.er, -2, !dbg !33943
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33944 ; 2 uses
  br i1 %i.es, label %bb.cz, label %bb.da, !dbg !33945

bb.cz:                                            ; preds = %bb.cy
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !33946
  %i.ev = load ptr, ptr %i.eu, align 8, !dbg !33946, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.ev, !32649, !DIExpression(), !33691)
  store ptr %i.ev, ptr %i.et, align 8, !dbg !33947
  br label %bb.db, !dbg !33948

bb.da:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.et, ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i64 72, i1 false), !dbg !33949
  br label %bb.db, !dbg !33950

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.sink646 = phi i64 [ -1, %bb.cz ], [ 10, %bb.da ], !dbg !33944
  store i64 %.sink646, ptr %0, align 8, !dbg !33944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !33884
  br label %bb.l, !dbg !33884

bb.dc:                                            ; preds = %bb.ah
  %i.ew = load i64, ptr %i.ax, align 8, !dbg !33951, !range !5323, !noundef !3132
  %i.ex = icmp eq i64 %i.ew, -2, !dbg !33951
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33952 ; 2 uses
  br i1 %i.ex, label %bb.dd, label %bb.de, !dbg !33953

bb.dd:                                            ; preds = %bb.dc
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !33954
  %i.fa = load ptr, ptr %i.ez, align 8, !dbg !33954, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.fa, !32657, !DIExpression(), !33692)
  store ptr %i.fa, ptr %i.ey, align 8, !dbg !33955
  br label %bb.df, !dbg !33956

bb.de:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ey, ptr noundef nonnull align 8 dereferenceable(96) %i.ax, i64 96, i1 false), !dbg !33957
  br label %bb.df, !dbg !33958

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.sink647 = phi i64 [ -1, %bb.dd ], [ 11, %bb.de ], !dbg !33952
  store i64 %.sink647, ptr %0, align 8, !dbg !33952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !33884
  br label %bb.l, !dbg !33884

bb.dg:                                            ; preds = %bb.ai
  %i.fb = extractvalue { i64, ptr } %i.cw, 0, !dbg !33840
  %i.fc = extractvalue { i64, ptr } %i.cw, 1, !dbg !33840 ; 3 uses
    #dbg_value(i64 %i.fb, !33481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33693)
    #dbg_value(ptr %i.fc, !33481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33693)
  %2 = trunc nuw i64 %i.fb to i1, !dbg !33959
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  br i1 %2, label %bb.dh, label %bb.di, !dbg !33959

bb.dh:                                            ; preds = %bb.dg
    #dbg_value(ptr %i.fc, !33483, !DIExpression(), !33694)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33960
  store ptr %i.fc, ptr %i.fd, align 8, !dbg !33960
  store i64 -1, ptr %0, align 8, !dbg !33960
  br label %bb.l, !dbg !33961

bb.di:                                            ; preds = %bb.dg
    #dbg_value(ptr %i.fc, !33482, !DIExpression(), !33695)
  store i64 12, ptr %0, align 8, !dbg !33962
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33962
  store ptr %i.fc, ptr %.sroa.4164.0..sroa_idx, align 8, !dbg !33962
  br label %bb.l, !dbg !33963

bb.dj:                                            ; preds = %bb.aj
  %i.fe = load i64, ptr %i.aw, align 8, !dbg !33964, !range !5366, !noundef !3132
  %i.ff = icmp eq i64 %i.fe, 2, !dbg !33964
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33965 ; 2 uses
  br i1 %i.ff, label %bb.dk, label %bb.dl, !dbg !33966

bb.dk:                                            ; preds = %bb.dj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !33967
  %i.fi = load ptr, ptr %i.fh, align 8, !dbg !33967, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.fi, !32665, !DIExpression(), !33696)
  store ptr %i.fi, ptr %i.fg, align 8, !dbg !33968
  br label %bb.dm, !dbg !33969

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.fg, ptr noundef nonnull align 8 dereferenceable(168) %i.aw, i64 168, i1 false), !dbg !33970
  br label %bb.dm, !dbg !33971

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.sink648 = phi i64 [ -1, %bb.dk ], [ 13, %bb.dl ], !dbg !33965
  store i64 %.sink648, ptr %0, align 8, !dbg !33965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !33884
  br label %bb.l, !dbg !33884

bb.dn:                                            ; preds = %bb.ak
  %i.fj = load i64, ptr %i.av, align 8, !dbg !33972, !range !5366, !noundef !3132
  %i.fk = icmp eq i64 %i.fj, 2, !dbg !33972
  br i1 %i.fk, label %bb.do, label %bb.dp, !dbg !33973

bb.do:                                            ; preds = %bb.dn
  %i.fl = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !33974
  %i.fm = load ptr, ptr %i.fl, align 8, !dbg !33974, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.fm, !32673, !DIExpression(), !33697)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33975
  store ptr %i.fm, ptr %i.fn, align 8, !dbg !33975
  store i64 -1, ptr %0, align 8, !dbg !33975
  br label %bb.dq, !dbg !33976

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %i.av, i64 272, i1 false), !dbg !33977
  br label %bb.dq, !dbg !33978

bb.dq:                                            ; preds = %bb.dp, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !33884
  br label %bb.l, !dbg !33884

bb.dr:                                            ; preds = %bb.al
  %i.fo = load i64, ptr %i.au, align 8, !dbg !33979, !range !5366, !noundef !3132
  %i.fp = icmp eq i64 %i.fo, 2, !dbg !33979
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33980 ; 2 uses
  br i1 %i.fp, label %bb.ds, label %bb.dt, !dbg !33981

bb.ds:                                            ; preds = %bb.dr
  %i.fr = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !33982
  %i.fs = load ptr, ptr %i.fr, align 8, !dbg !33982, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.fs, !32681, !DIExpression(), !33698)
  store ptr %i.fs, ptr %i.fq, align 8, !dbg !33983
  br label %bb.du, !dbg !33984

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.fq, ptr noundef nonnull align 8 dereferenceable(256) %i.au, i64 256, i1 false), !dbg !33985
  br label %bb.du, !dbg !33986

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.sink649 = phi i64 [ -1, %bb.ds ], [ 15, %bb.dt ], !dbg !33980
  store i64 %.sink649, ptr %0, align 8, !dbg !33980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !33884
  br label %bb.l, !dbg !33884

bb.dv:                                            ; preds = %bb.am
  %i.ft = load i64, ptr %i.at, align 8, !dbg !33987, !range !7229, !noundef !3132
  %i.fu = icmp eq i64 %i.ft, -1, !dbg !33987
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33988 ; 2 uses
  br i1 %i.fu, label %bb.dw, label %bb.dx, !dbg !33989

bb.dw:                                            ; preds = %bb.dv
  %i.fw = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !33990
  %i.fx = load ptr, ptr %i.fw, align 8, !dbg !33990, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.fx, !32689, !DIExpression(), !33699)
  store ptr %i.fx, ptr %i.fv, align 8, !dbg !33991
  br label %bb.dy, !dbg !33992

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.fv, ptr noundef nonnull align 8 dereferenceable(224) %i.at, i64 224, i1 false), !dbg !33993
  br label %bb.dy, !dbg !33994

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.sink650 = phi i64 [ -1, %bb.dw ], [ 16, %bb.dx ], !dbg !33988
  store i64 %.sink650, ptr %0, align 8, !dbg !33988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !33884
  br label %bb.l, !dbg !33884

bb.dz:                                            ; preds = %bb.an
  %i.fy = load i64, ptr %i.as, align 8, !dbg !33995, !range !7229, !noundef !3132
  %i.fz = icmp eq i64 %i.fy, -1, !dbg !33995
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33996 ; 2 uses
  br i1 %i.fz, label %bb.ea, label %bb.eb, !dbg !33997

bb.ea:                                            ; preds = %bb.dz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !33998
  %i.gc = load ptr, ptr %i.gb, align 8, !dbg !33998, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.gc, !32697, !DIExpression(), !33700)
  store ptr %i.gc, ptr %i.ga, align 8, !dbg !33999
  br label %bb.ec, !dbg !34000

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ga, ptr noundef nonnull align 8 dereferenceable(200) %i.as, i64 200, i1 false), !dbg !34001
  br label %bb.ec, !dbg !34002

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.sink651 = phi i64 [ -1, %bb.ea ], [ 17, %bb.eb ], !dbg !33996
  store i64 %.sink651, ptr %0, align 8, !dbg !33996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !33884
  br label %bb.l, !dbg !33884

bb.ed:                                            ; preds = %bb.ao
  %i.gd = load i64, ptr %i.ar, align 8, !dbg !34003, !range !5323, !noundef !3132
  %i.ge = icmp eq i64 %i.gd, -2, !dbg !34003
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34004 ; 2 uses
  br i1 %i.ge, label %bb.ee, label %bb.ef, !dbg !34005

bb.ee:                                            ; preds = %bb.ed
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !34006
  %i.gh = load ptr, ptr %i.gg, align 8, !dbg !34006, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.gh, !32705, !DIExpression(), !33701)
  store ptr %i.gh, ptr %i.gf, align 8, !dbg !34007
  br label %bb.eg, !dbg !34008

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !dbg !34009
  br label %bb.eg, !dbg !34010

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sink652 = phi i64 [ -1, %bb.ee ], [ 18, %bb.ef ], !dbg !34004
  store i64 %.sink652, ptr %0, align 8, !dbg !34004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !33884
  br label %bb.l, !dbg !33884

bb.eh:                                            ; preds = %bb.ap
  %i.gi = load i64, ptr %i.aq, align 8, !dbg !34011, !range !5323, !noundef !3132
  %i.gj = icmp eq i64 %i.gi, -2, !dbg !34011
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34012 ; 2 uses
  br i1 %i.gj, label %bb.ei, label %bb.ej, !dbg !34013

bb.ei:                                            ; preds = %bb.eh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !34014
  %i.gm = load ptr, ptr %i.gl, align 8, !dbg !34014, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.gm, !32713, !DIExpression(), !33702)
  store ptr %i.gm, ptr %i.gk, align 8, !dbg !34015
  br label %bb.ek, !dbg !34016

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gk, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false), !dbg !34017
  br label %bb.ek, !dbg !34018

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.sink653 = phi i64 [ -1, %bb.ei ], [ 19, %bb.ej ], !dbg !34012
  store i64 %.sink653, ptr %0, align 8, !dbg !34012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !33884
  br label %bb.l, !dbg !33884

bb.el:                                            ; preds = %bb.aq
  %i.gn = load i64, ptr %i.ap, align 8, !dbg !34019, !range !5323, !noundef !3132
  %i.go = icmp eq i64 %i.gn, -2, !dbg !34019
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34020 ; 2 uses
  br i1 %i.go, label %bb.em, label %bb.en, !dbg !34021

bb.em:                                            ; preds = %bb.el
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !34022
  %i.gr = load ptr, ptr %i.gq, align 8, !dbg !34022, !nonnull !3132, !align !5431, !noundef !3132
    #dbg_value(ptr %i.gr, !32721, !DIExpression(), !33703)
  store ptr %i.gr, ptr %i.gp, align 8, !dbg !34023
  br label %bb.eo, !dbg !34024

bb.en:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gp, ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i64 56, i1 false), !dbg !34025
  br label %bb.eo, !dbg !34026

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.sink654 = phi i64 [ -1, %bb.em ], [ 20, %bb.en ], !dbg !34020
  store i64 %.sink654, ptr %0, align 8, !dbg !34020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !33884
  br label %bb.l, !dbg !33884

bb.ep:                                            ; preds = %bb.ar
end_hunk_2
