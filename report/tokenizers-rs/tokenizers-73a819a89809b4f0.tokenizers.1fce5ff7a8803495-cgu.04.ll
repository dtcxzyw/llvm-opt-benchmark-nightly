Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.04?download=true
inline.NumInlined: 1221
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
@51 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @50, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsboAIIHEtPkY_10serde_core2deReNtB5_8Expected3fmt }>, align 8
@53 = private unnamed_addr constant [9 x i8] c"direction", align 1
@54 = private unnamed_addr constant [10 x i8] c"max_length", align 1
@55 = private unnamed_addr constant [8 x i8] c"strategy", align 1
@56 = private unnamed_addr constant [6 x i8] c"stride", align 1
@57 = private unnamed_addr constant [18 x i8] c"pad_to_multiple_of", align 1
@58 = private unnamed_addr constant [6 x i8] c"pad_id", align 1
@59 = private unnamed_addr constant [11 x i8] c"pad_type_id", align 1
@60 = private unnamed_addr constant [9 x i8] c"pad_token", align 1
@61 = private unnamed_addr constant [2 x i8] c"id", align 1
@62 = private unnamed_addr constant [25 x i8] c"variant index 0 <= i < 14", align 1
@63 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @62, [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@64 = private unnamed_addr constant [45 x i8] c"struct PrecompiledDeserializer with 1 element", align 1
@65 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @64, [8 x i8] c"-\00\00\00\00\00\00\00" }>, align 8
@66 = private unnamed_addr constant [39 x i8] c"struct TruncationParams with 4 elements", align 1
@67 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @66, [8 x i8] c"'\00\00\00\00\00\00\00" }>, align 8
@68 = private unnamed_addr constant [36 x i8] c"struct PaddingParams with 6 elements", align 1
@69 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @68, [8 x i8] c"$\00\00\00\00\00\00\00" }>, align 8
@70 = private unnamed_addr constant [10 x i8] c"AddedToken", align 1
@71 = private unnamed_addr constant [7 x i8] c"content", align 1
@72 = private unnamed_addr constant [11 x i8] c"single_word", align 1
@73 = private unnamed_addr constant [6 x i8] c"lstrip", align 1
@74 = private unnamed_addr constant [6 x i8] c"rstrip", align 1
@75 = private unnamed_addr constant [10 x i8] c"normalized", align 1
@76 = private unnamed_addr constant [7 x i8] c"special", align 1
@77 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @71, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @72, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @73, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@78 = private unnamed_addr constant [13 x i8] c"string or map", align 1
@79 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @78, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtBG_16AddedTokenWithIdNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_ }>, align 8
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deINtNvXsh_NtB4_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtB4_8Expected3fmtB2e_ }>, align 8
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNtB4_5impls10StrVisitorNtB4_8Expected3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@84 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations3_1__NtBG_18TruncationStrategyNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_ }>, align 8
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations_1__NtBG_19TruncationDirectionNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_ }>, align 8
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtBG_15PaddingStrategyNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_ }>, align 8
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtBG_16PaddingDirectionNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_ }>, align 8
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNtB4_5impls11UnitVisitorNtB4_8Expected3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@89 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deINtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13serialization16TokenizerVisitorNtNtBG_6models12ModelWrapperNtNtBG_11normalizers17NormalizerWrapperNtNtBG_14pre_tokenizers19PreTokenizerWrapperNtNtBG_10processors20PostProcessorWrapperNtNtBG_8decoders14DecoderWrapperENtB4_8Expected3fmtBG_ }>, align 8
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBG_23PrecompiledDeserializerNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBG_16TruncationParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_ }>, align 8
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtBG_13PaddingParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_ }>, align 8
@93 = private unnamed_addr constant [22 x i8] c"BertPreTokenizerHelper", align 1
@94 = private unnamed_addr constant [18 x i8] c"StripAccentsHelper", align 1
@95 = private unnamed_addr constant [1 x i8] c"[", align 1
@96 = private unnamed_addr constant [2 x i8] c",\0A", align 1
@97 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@98 = private unnamed_addr constant [2 x i8] c": ", align 1
@99 = private unnamed_addr constant [1 x i8] c"]", align 1
@100 = private unnamed_addr constant [15 x i8] c"newtype variant", align 1
@101 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @100, [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8
@102 = private unnamed_addr constant [1 x i8] c"\22", align 1
@103 = private unnamed_addr constant [5 x i8] c"false", align 1
@104 = private unnamed_addr constant [4 x i8] c"true", align 1
@105 = private unnamed_addr constant [4 x i8] c"null", align 1
@_RNvNvNtNtCs5PtHgSLqj5O_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS = external local_unnamed_addr global [16 x i8]
@106 = private unnamed_addr constant [1 x i8] c"}", align 1
@107 = private unnamed_addr constant [1 x i8] c"{", align 1
@108 = private unnamed_addr constant [1 x i8] c",", align 1
@109 = private unnamed_addr constant [1 x i8] c":", align 1
@110 = private unnamed_addr constant [14 x i8] c"Model missing.", align 1
@111 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@112 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@113 = private unnamed_addr constant [27 x i8] c"src/processors/sequence.rs\00", align 1
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @113, [16 x i8] c"\1A\00\00\00\00\00\00\00\1A\00\00\00\18\00\00\00" }>, align 8
@_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE = external global { { { { ptr } } }, {} }
@_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS = external global { { { { ptr } } }, {} }
@115 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/de.rs\00", align 1
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"a\00\00\00\00\00\00\00\A2\04\00\00\22\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"a\00\00\00\00\00\00\00\98\04\00\00&\00\00\00" }>, align 8
@_RNvNtCs5PtHgSLqj5O_10serde_json2de5POW10 = external local_unnamed_addr global [309 x double]
@118 = private unnamed_addr constant [47 x i8] c"assertion failed: vec.capacity() - start >= len", align 1
@119 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-1.12.0/src/vec.rs\00", align 1
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @119, [16 x i8] c"\\\00\00\00\00\00\00\00\CE\00\00\00\09\00\00\00" }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorEEB1d_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtBK_ }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorEEB1d_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBK_, ptr @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtBK_, ptr @121, ptr @_RNvXsK_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorENtNtCs4NRVxsYgnAr_4core5error5Error6sourceBK_, ptr @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idBE_, ptr @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionBE_, ptr @_RNvXsK_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeBK_, ptr @_RNvXsK_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer12BuilderErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideBK_ }>, align 8
@_RNvNtCsab9OZFjq7dt_18unicode_categories6tables16PUNCTUATION_DASH = external local_unnamed_addr global { ptr, i64 }
@_RNvNtCsab9OZFjq7dt_18unicode_categories6tables16PUNCTUATION_OPEN = external local_unnamed_addr global { ptr, i64 }
@_RNvNtCsab9OZFjq7dt_18unicode_categories6tables17PUNCTUATION_CLOSE = external local_unnamed_addr global { ptr, i64 }
@_RNvNtCsab9OZFjq7dt_18unicode_categories6tables17PUNCTUATION_OTHER = external local_unnamed_addr global { ptr, i64 }
@_RNvNtCsab9OZFjq7dt_18unicode_categories6tables21PUNCTUATION_CONNECTOR = external local_unnamed_addr global { ptr, i64 }
@_RNvNtCsab9OZFjq7dt_18unicode_categories6tables23PUNCTUATION_FINAL_QUOTE = external local_unnamed_addr global { ptr, i64 }
@_RNvNtCsab9OZFjq7dt_18unicode_categories6tables25PUNCTUATION_INITIAL_QUOTE = external local_unnamed_addr global { ptr, i64 }
@123 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@124 = private unnamed_addr constant [22 x i8] c"tuple struct Tokenizer", align 1
@125 = private unnamed_addr constant [18 x i8] c"variant identifier", align 1
@126 = private unnamed_addr constant [15 x i8] c"struct Sequence", align 1
@127 = private unnamed_addr constant [13 x i8] c"struct Digits", align 1
@128 = private unnamed_addr constant [17 x i8] c"enum SequenceType", align 1
@129 = private unnamed_addr constant [27 x i8] c"struct SequenceDeserializer", align 1
@130 = private unnamed_addr constant [12 x i8] c"struct Strip", align 1
@131 = private unnamed_addr constant [21 x i8] c"enum StripAccentsType", align 1
@132 = private unnamed_addr constant [25 x i8] c"struct StripAccentsHelper", align 1
@133 = private unnamed_addr constant [29 x i8] c"struct BertPreTokenizerHelper", align 1
@134 = private unnamed_addr constant [25 x i8] c"enum BertPreTokenizerType", align 1
@135 = private unnamed_addr constant [15 x i8] c"enum DigitsType", align 1
@136 = private unnamed_addr constant [25 x i8] c"struct DigitsDeserializer", align 1
@137 = private unnamed_addr constant [11 x i8] c"struct Fuse", align 1
@138 = private unnamed_addr constant [13 x i8] c"struct Tagged", align 1
@139 = private unnamed_addr constant [13 x i8] c"enum EnumType", align 1
@140 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@141 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @140, [24 x i8] zeroinitializer }>, align 8
@142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @119, [16 x i8] c"\\\00\00\00\00\00\00\00\E6\00\00\00#\00\00\00" }>, align 8
@143 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@144 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@145 = private unnamed_addr constant [12 x i8] c"BuilderError", align 1
@146 = private unnamed_addr constant [108 x i8] c"<Invalid prefix encountered while decoding stream. Token ID: \C0\14, Expected prefix: '\C0\13', Actual string: '\C0\01'\00", align 1
@147 = private unnamed_addr constant [25 x i8] c"SecondSequenceNotProvided", align 1
@148 = private unnamed_addr constant [16 x i8] c"SequenceTooShort", align 1
@149 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@150 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs3_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @149, ptr @_RNvXs2_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2JiOgHzbbc7_10tokenizers }>, align 8
@151 = private unnamed_addr constant [45 x i8] c"encodings vector length must be either 1 or 2", align 1
@152 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@153 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8575177416190463413 to ptr), ptr inttoptr (i64 3066942102136528901 to ptr) }>, align 8
@154 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@155 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @154, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@156 = private unnamed_addr constant [74 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/std/src/io/mod.rs\00", align 1
@157 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @156, [16 x i8] c"I\00\00\00\00\00\00\00H\07\00\00$\00\00\00" }>, align 8
@158 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5049808798962425253 to ptr), ptr inttoptr (i64 6049897488304498251 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs2JiOgHzbbc7_10tokenizers5utils4iterINtB3_11ResultShuntINtNtCs2AWtUsOyxgP_3std2io5LinesINtNtNtB14_8buffered9bufreader9BufReaderNtNtB16_2fs4FileEENtNtB14_5error5ErrorE7processNCNvMs5_NtNtNtB7_6models3bpe5modelNtB34_3BPE9read_file0INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB4w_6string6StringB4Y_EEINtNtB4w_5boxed3BoxDNtNtB3U_5error5ErrorNtNtB3U_6marker4SendNtB66_4SyncEL_EEEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapQINtNtNtB8_5utils4iter11ResultShuntINtNtCs2AWtUsOyxgP_3std2io5LinesINtNtNtB1S_8buffered9bufreader9BufReaderNtNtB1U_2fs4FileEENtNtB1S_5error5ErrorEEB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
          to label %_RNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7_3BPE9read_file0Bd_.exit unwind label %bb.q

.body:                                            ; preds = %bb.d, %bb.j, %bb.k, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.i, %bb.d ], [ %i.s, %bb.k ], [ %i.s, %bb.j ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2AWtUsOyxgP_3std2io5LinesINtNtNtBE_8buffered9bufreader9BufReaderNtNtBG_2fs4FileEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 dereferenceable(48) %i.e) #24, !noalias !51
  br label %bb.p

_RNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7_3BPE9read_file0Bd_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !52, !noalias !54, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.l, label %bb.b

bb.b:                                             ; preds = %_RNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7_3BPE9read_file0Bd_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !51, !noalias !55
  store i64 -2, ptr %0, align 8, !alias.scope !51, !noalias !55
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.h = load i64, ptr %i.b, align 8, !range !4, !alias.scope !57, !noalias !58, !noundef !3
  %.not.i.i = icmp eq i64 %i.h, -1
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.d, !noalias !58

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.e, !noalias !58

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringB1u_EEINtNtB12_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.n, !noalias !58

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !57, !noalias !58 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !57, !noalias !58, !nonnull !3, !align !5, !noundef !3 ; 5 uses
  %i.m = load ptr, ptr %.val1.i.i, align 8, !invariant.load !3, !noalias !59 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j, !noalias !59

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !3, !noalias !59 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringB1u_EEINtNtB12_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !3, !noalias !59
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #26, !noalias !59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringB1u_EEINtNtB12_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers.exit.i

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !6, !invariant.load !3, !noalias !59 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !7, !invariant.load !3, !noalias !59
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #26, !noalias !59
  br label %.body

bb.l:                                             ; preds = %_RNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7_3BPE9read_file0Bd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !alias.scope !54, !noalias !52
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringB1u_EEINtNtB12_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringB1u_EEINtNtB12_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.l, %bb.i, %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !62, !noalias !54, !noundef !3 ; 2 uses
  %i.z = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.z, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringB1u_EEINtNtB12_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !62, !noalias !54, !nonnull !3, !noundef !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #26, !noalias !63
  br label %bb.o

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringB1u_EEINtNtB12_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2B_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.val2.i.i.i = load i32, ptr %i.ac, align 8, !range !8, !alias.scope !62, !noalias !54, !noundef !3
  %i.ad = call noundef i32 @close(i32 noundef %.val2.i.i.i) #26, !noalias !63 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.p:                                             ; preds = %.body, %bb.q
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %eh.lpad-body.i, %.body ]
  resume { ptr, i32 } %eh.lpad-body4

bb.q:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2JiOgHzbbc7_10tokenizers5utils4iter11ResultShuntINtNtCs2AWtUsOyxgP_3std2io5LinesINtNtNtB1z_8buffered9bufreader9BufReaderNtNtB1B_2fs4FileEENtNtB1z_5error5ErrorEEBI_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #24
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB5_11SequenceDef11deserializeINtNtNtCsctIyQp3ax5j_5serde7private2de19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs6_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB2Z_11SequenceDef11deserialize9___VisitorEB33_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @2, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File4openReECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 4
  call void @_RNvMsj_NtCs2AWtUsOyxgP_3std2fsNtB5_11OpenOptions5__open(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File6createRNtNtB8_4path7PathBufECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 4
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !3
  call void @_RNvMsj_NtCs2AWtUsOyxgP_3std2fsNtB5_11OpenOptions5__open(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2fs5writeRNtNtB4_4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.d, align 8, !noundef !3
  %i.e = invoke noundef ptr @_RNvNvNtCs2AWtUsOyxgP_3std2fs5write5inner(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #24
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret ptr %i.e

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7oYvdc6j6uT_9daachorse8bytewise22DoubleArrayAhoCorasickmEECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val2.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !253, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !253, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i, i64 noundef 1) #26, !noalias !253
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !253, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #26
  resume { ptr, i32 } %i.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #26
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorCodeECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !3
  switch i64 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef range(i64 1, 0) %.val2, i64 noundef 1) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs2JiOgHzbbc7_10tokenizers.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !19, !noundef !3
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.c
  ], !prof !20

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !3, !align !5, !noundef !3 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #26
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template8TemplateEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB1d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB1k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB1k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB1d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace7ReplaceEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !256, !noundef !3
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.e, %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace14ReplacePatternEBH_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.d, %bb.c ], [ %i.f, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #24
          to label %.body2 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace14ReplacePatternEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace14ReplacePatternEBH_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body2 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replace14ReplacePatternEBH_.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.k

.body2:                                           ; preds = %bb.k, %bb.i, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.k ], [ %i.k, %bb.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs5_CsaiktC1pStS5_4onigNtB5_5RegexNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexEBH_.exit unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXs5_CsaiktC1pStS5_4onigNtB5_5RegexNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
  ret void

bb.l:                                             ; preds = %.body2, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexEBH_.exit: ; preds = %.body2
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary15AddedVocabularyEBH_(ptr noalias noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit8 unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit8: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit9 unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEEB1p_.exit8
  %i.i = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECs2JiOgHzbbc7_10tokenizers:bb.a
  br i1 %.not.i32, label %bb.u, label %bb.aa, !prof !29

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662), !noalias !609
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !663, !noundef !3
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !664, !noalias !660
  %.not.i32.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i32.1, label %bb.w, label %bb.aa, !prof !29

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !609
  %exitcond.not.i.2 = icmp eq i64 %i.bs, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !667, !noundef !3
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !668, !noalias !660
  %.not.i32.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i32.2, label %bb.y, label %bb.aa, !prof !29

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670), !noalias !609
  %exitcond.not.i.3 = icmp eq i64 %i.bv, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !671, !noundef !3
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !672, !noalias !660
  %.not.i32.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i32.3, label %.thread, label %bb.aa, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !673
  store i64 5, ptr %i.j, align 8, !noalias !673
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !673
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !673
  store i64 9, ptr %i.i, align 8, !noalias !673
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !673
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !675, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !619
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !609, !inline_history !503
  %i.cc = load i64, ptr %i.z, align 8, !range !13, !noalias !619, !noundef !3 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !676, !noalias !609
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !610, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !619
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !609, !inline_history !503
  %i.ch = load i64, ptr %i.x, align 8, !range !10, !noalias !619, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !619 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !610, !noalias !609, !noundef !3
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !alias.scope !610, !noalias !609
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ay, label %bb.az, !prof !23

bb.ae:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !610, !noalias !609, !noundef !3
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !alias.scope !610, !noalias !609
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.ca, label %bb.cb, !prof !23

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i47
  %.sroa.0.1.i46.ph = phi ptr [ %i.ay, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i47 ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i46.ph, ptr %i.ct, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  br label %bb.ah

bb.ag:                                            ; preds = %.thread98, %.thread95
  %.sroa.24138.0 = phi i64 [ %.sroa.24138.4, %.thread98 ], [ %.sroa.24138.3, %.thread95 ] ; 2 uses
  %.sroa.22.0 = phi i8 [ %.sroa.22.2, %.thread98 ], [ %.sroa.22.1, %.thread95 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4, %.thread98 ], [ %.sroa.0.3, %.thread95 ] ; 2 uses
  %i.cu = phi <2 x i64> [ %i.go, %.thread98 ], [ %i.fs, %.thread95 ]
  %i.cv = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.cv, label %._crit_edge, label %.thread, !prof !677

._crit_edge:                                      ; preds = %bb.ag
  %i.cw = inttoptr i64 %.sroa.24138.0 to ptr
  br label %bb.co

bb.ah:                                            ; preds = %bb.cp, %bb.ca, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i39
  %.sroa.0.1.i38.ph = phi ptr [ %i.bk, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i39 ], [ %i.bl, %bb.r ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i38.ph, ptr %i.cx, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.bz, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ca, %bb.aa ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cy, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.cz = load ptr, ptr %i.ce, align 8, !noalias !619, !nonnull !3, !align !5, !noundef !3
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !619
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.ce, align 8, !noalias !619 ; 3 uses
  %i.db = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.4.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cc, label %default.unreachable186 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29
    i64 2, label %bb.ap
  ]

default.unreachable186:                           ; preds = %bb.cq, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dc = bitcast i64 %.sroa.4.0.copyload to double
  %i.dd = tail call double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp ueq double %i.dd, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !678
  br i1 %i.de, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.sroa.4.0.copyload10.i.i23 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i22, align 8, !alias.scope !679, !noalias !680
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.df = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i24, align 8, !alias.scope !679, !noalias !680
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.k, align 8, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681), !noalias !609
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k), !noalias !682
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14

_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i16 = phi i64 [ %.sroa.5.sroa.4.0.copyload10.i.i23, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i18 = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dg = phi <2 x i64> [ %i.df, %bb.an ], [ %i.db, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !678
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i9 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29

_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29: ; preds = %bb.al, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14, %bb.ap
  %.sroa.24138.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i16, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14 ], [ %.lobit.i.i9, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i18, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14 ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dh = phi <2 x i64> [ %i.dg, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14 ], [ %i.db, %bb.ap ], [ %i.db, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !619
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.di, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !619
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !619 ; 8 uses
  %i.dj = trunc nuw i64 %i.ch to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  br i1 %i.dj, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !683
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !683
  %i.dk = load i64, ptr %i.b, align 8, !range !21, !noalias !683, !noundef !3
  %i.dl = trunc nuw i64 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !22, !noalias !683, !noundef !3 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dl, label %bb.at, label %bb.au, !prof !23

bb.at:                                            ; preds = %bb.as
  %i.dp = load i64, ptr %i.do, align 8, !noalias !683
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dn, i64 %i.dp) #27, !noalias !683
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dq = load ptr, ptr %i.do, align 8, !noalias !683, !nonnull !3, !noundef !3 ; 2 uses
  %i.dr = icmp ule i64 %.sroa.4.0.copyload.i, %i.dn
  call void @llvm.assume(i1 %i.dr), !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !683
  %.not.i129 = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i129, label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !684
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !684
  %i.ds = load i64, ptr %i.a, align 8, !range !21, !noalias !684, !noundef !3
  %i.dt = trunc nuw i64 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !22, !noalias !684, !noundef !3 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dt, label %bb.aw, label %bb.ax, !prof !23

bb.aw:                                            ; preds = %bb.av
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !684
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dx) #27, !noalias !684
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.dy = load ptr, ptr %i.dw, align 8, !noalias !684, !nonnull !3, !noundef !3 ; 2 uses
  %i.dz = icmp ule i64 %.sroa.4.0.copyload.i, %i.dv
  call void @llvm.assume(i1 %i.dz), !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !684
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.sink.split

_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink190 = phi ptr [ %i.dq, %bb.au ], [ %i.dy, %bb.ax ] ; 2 uses
  %.sroa.24138.2.ph = phi i64 [ %i.dn, %bb.au ], [ %i.dv, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink190, ptr nonnull readonly align 1 %i.ck, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !609
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.sink.split, %bb.ax, %bb.au
  %.sroa.37.2.in = phi ptr [ %i.dy, %bb.ax ], [ %i.dq, %bb.au ], [ %.sink190, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.sink.split ]
  %.sroa.24138.2 = phi i64 [ %i.dv, %bb.ax ], [ %i.dn, %bb.au ], [ %.sroa.24138.2.ph, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.sink.split ]
  %.sroa.37.2 = ptrtoint ptr %.sroa.37.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !619
  %i.ea = insertelement <2 x i64> poison, i64 %.sroa.37.2, i64 0
  %i.eb = insertelement <2 x i64> %i.ea, i64 %.sroa.4.0.copyload.i, i64 1
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !619
  store i64 24, ptr %i.w, align 8, !noalias !619
  %i.ec = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w), !noalias !609, !inline_history !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !619
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.ee = add i64 %i.ah, 1
  store i64 %i.ee, ptr %i.ab, align 8, !alias.scope !685, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !686
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 1, ptr %i.ef, align 8, !noalias !686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !686
  store i64 0, ptr %i.m, align 8, !noalias !686
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.eg, align 8, !noalias !686
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.eh, align 8, !noalias !686
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !688
  invoke fastcc void @_RINvNvXs7_NtCs5PtHgSLqj5O_10serde_json2deINtB8_9SeqAccesspENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc unwind label %bb.bf, !inline_history !581

.noexc:                                           ; preds = %bb.ba
  %i.ej = load i8, ptr %i.d, align 8, !range !24, !noalias !688, !noundef !3
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !noalias !688, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !688
  br label %bb.bg

bb.bc:                                            ; preds = %.noexc
  %i.en = load i8, ptr %i.ei, align 1, !range !24, !noalias !688, !noundef !3
  %i.eo = trunc nuw i8 %i.en to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !688
  br i1 %i.eo, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !688
  %i.ep = load ptr, ptr %i.n, align 8, !alias.scope !687, !noalias !689, !nonnull !3, !align !5, !noundef !3
  invoke fastcc void @_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ep)
          to label %.noexc51 unwind label %bb.bf, !inline_history !581

.noexc51:                                         ; preds = %bb.bd
  %i.eq = load i8, ptr %i.c, align 8, !range !15, !noalias !688, !noundef !3 ; 2 uses
  %i.er = icmp eq i8 %i.eq, -1
  br i1 %i.er, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.noexc51
  %i.es = load ptr, ptr %.sroa.569.0..sroa_idx, align 8, !noalias !688, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !688
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bl, %bb.bf
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.et, %bb.bf ], [ %i.ez, %bb.bl ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.m) #24
          to label %common.resume unwind label %bb.bo, !noalias !690, !inline_history !582

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %.sroa.10.0.ph = phi ptr [ %i.es, %bb.be ], [ %i.em, %bb.bb ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bh, !noalias !690, !inline_history !582

bb.bh:                                            ; preds = %bb.bg
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.bi, !noalias !690, !inline_history !582

bb.bi:                                            ; preds = %bb.bh
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !690, !inline_history !582
  unreachable

common.resume.sink.split:                         ; preds = %bb.bz, %bb.cl
  %.sink = phi ptr [ %i.ge, %bb.cl ], [ %i.fh, %bb.bz ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.gu, %bb.cl ], [ %i.fy, %bb.bz ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 40, i64 noundef 8) #26, !noalias !609
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.bp, %bb.cc, %.body.i, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.eu, %bb.bh ], [ %i.gf, %bb.cc ], [ %i.fi, %bb.bp ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bg
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !690, !inline_history !582
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECs2JiOgHzbbc7_10tokenizers.exit

bb.bj:                                            ; preds = %.noexc51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.468.0..sroa_idx, i64 7, i1 false)
  %.sroa.569.0.copyload = load ptr, ptr %.sroa.569.0..sroa_idx, align 8, !noalias !688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.670.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !688
  store i8 %i.eq, ptr %i.l, align 8, !noalias !686
  store ptr %.sroa.569.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !686
  %i.ew = load i64, ptr %i.eh, align 8, !alias.scope !691, !noalias !692, !noundef !3 ; 3 uses
  %i.ex = load i64, ptr %i.m, align 8, !range !6, !alias.scope !691, !noalias !692, !noundef !3
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.bk, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bl, !noalias !693, !inline_history !582

bb.bl:                                            ; preds = %bb.bk
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l) #24
          to label %.body.i unwind label %bb.bm, !noalias !690, !inline_history !582

bb.bm:                                            ; preds = %bb.bl
end_hunk_2
begin_hunk_3_@_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECs2JiOgHzbbc7_10tokenizers:bb.a
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.cq, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.cu
  %.sroa.24138.5 = phi i64 [ %.sroa.5.sroa.4.0.i.i, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.lobit.i.i, %bb.cu ], [ 0, %bb.cq ]
  %.sroa.0.5 = phi i8 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 2, %bb.cu ], [ 2, %bb.cq ]
  %i.hk = phi <2 x i64> [ %i.hj, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.he, %bb.cu ], [ %i.he, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !619
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.24138.6 = phi i64 [ %.sroa.24138.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.24138.2, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.24138.1, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29 ], [ %.sroa.24138.5, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit ]
  %.sroa.22.3 = phi i8 [ %.sroa.22.0, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ undef, %bb.j ], [ undef, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ undef, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29 ], [ undef, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit ]
  %.sroa.0.6 = phi i8 [ %.sroa.0.0, %bb.ag ], [ 1, %bb.q ], [ 1, %bb.z ], [ 0, %bb.j ], [ 3, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.0.1, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29 ], [ %.sroa.0.5, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit ]
  %i.hl = phi <2 x i64> [ %i.cu, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %i.eb, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.dh, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29 ], [ %i.hk, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit ]
  store i8 %.sroa.0.6, ptr %0, align 8, !noalias !610
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.22.3, ptr %.sroa.22.0..sroa_idx, align 1, !noalias !610
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24, i64 6, i1 false), !noalias !610
  %.sroa.24138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.24138.6, ptr %.sroa.24138.0..sroa_idx, align 8, !noalias !610
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.hl, ptr %.sroa.37.0..sroa_idx, align 8, !noalias !610
  br label %bb.cv

bb.cv:                                            ; preds = %.thread, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit, %bb.ah, %bb.cv
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value3serNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 15 uses
  %i.b = load i8, ptr %0, align 8, !range !19, !noundef !3
  switch i8 %i.b, label %default.unreachable104 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable104:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !24, !noundef !3
  %i.e = trunc nuw i8 %i.d to i1
  %.val42 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.e, label %.split.i.i, label %.split2.i.i

.split2.i.i:                                      ; preds = %bb.c
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val42, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

.split.i.i:                                       ; preds = %bb.c
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val42, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef align 8 ptr @_RINvXs4_NtCs5PtHgSLqj5O_10serde_json6numberNtB6_6NumberNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %1)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !3
  %.val43 = load ptr, ptr %1, align 8, !nonnull !3, !align !5, !noundef !3
  tail call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val43, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !748, !noalias !749, !nonnull !3, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10.i = load i64, ptr %i.m, align 8, !alias.scope !748, !noalias !749, !noundef !3 ; 3 uses
  %.idx = shl nuw nsw i64 %.val10.i, 5
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %.val.i47 = load ptr, ptr %1, align 8, !alias.scope !750, !noalias !751, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i47, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !752
  %.not106 = icmp eq i64 %.val10.i, 0
  br i1 %.not106, label %.loopexit97.thread, label %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.peel

.loopexit97.thread:                               ; preds = %bb.f
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i47, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !752
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.peel: ; preds = %bb.f
  %i.o = tail call fastcc noundef align 8 ptr @_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value3serNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %1), !noalias !753, !inline_history !730 ; 2 uses
  %.not.i.i54.peel = icmp eq ptr %i.o, null
  br i1 %.not.i.i54.peel, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.preheader, label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.preheader: ; preds = %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.peel
  %i.p = icmp eq i64 %.val10.i, 1
  %.val13.i114 = load ptr, ptr %1, align 8, !noalias !748, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.p, label %.loopexit97, label %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.lr.ph

_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.lr.ph: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.preheader
  %.sroa.063.0113 = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  br label %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %.sroa.063.0 = getelementptr inbounds nuw i8, ptr %.sroa.063.0115, i64 32 ; 2 uses
  %i.q = icmp eq ptr %.sroa.063.0, %i.n
  %.val13.i = load ptr, ptr %1, align 8, !noalias !748, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.q, label %.loopexit97, label %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i, !llvm.loop !731

_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.lr.ph, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit
  %.val13.i116 = phi ptr [ %.val13.i114, %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.lr.ph ], [ %.val13.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit ]
  %.sroa.063.0115 = phi ptr [ %.sroa.063.0113, %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.lr.ph ], [ %.sroa.063.0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit ] ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val13.i116, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !754, !inline_history !732
  %i.r = tail call fastcc noundef align 8 ptr @_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value3serNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.063.0115, ptr noalias noundef nonnull align 8 dereferenceable(8) %1), !noalias !753, !inline_history !730 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.r, null
  br i1 %.not.i.i54, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit, label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit, !llvm.loop !731

.loopexit97:                                      ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.preheader
  %.val13.i.lcssa = phi ptr [ %.val13.i114, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.preheader ], [ %.val13.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs5PtHgSLqj5O_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3h_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val13.i.lcssa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !748
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %.val.i45 = load ptr, ptr %1, align 8, !alias.scope !755, !noalias !756, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i45, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !757
  %.not105 = icmp eq i64 %i.t, 0                  ; 3 uses
  br i1 %.not105, label %bb.h, label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_mapCs2JiOgHzbbc7_10tokenizers.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i45, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !757
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_mapCs2JiOgHzbbc7_10tokenizers.exit

_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.peel, %.loopexit97.thread, %bb.k, %.loopexit, %.loopexit97, %.split.i.i, %.split2.i.i, %.loopexit95, %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %.loopexit97 ], [ %i.g, %bb.d ], [ null, %bb.e ], [ null, %.split.i.i ], [ %.lcssa93, %.loopexit95 ], [ null, %.split2.i.i ], [ null, %bb.k ], [ null, %.loopexit97.thread ], [ null, %.loopexit ], [ %i.o, %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.peel ], [ %i.r, %_RINvYNtNtCs5PtHgSLqj5O_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i ]
  ret ptr %.sroa.0.0

_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_mapCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noundef !3 ; 3 uses
  %.not = icmp ne ptr %i.v, null                  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %.sroa.07.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.x, i64 undef ; 2 uses
  %.sroa.07.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.t, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.07.sroa.0.0, ptr %i.a, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.v, ptr %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.07.sroa.0.0, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8
  %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.v, ptr %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.59.0..sroa_idx, align 8
  %i.y = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 3 uses
  %.not40.peel = icmp eq ptr %i.z, null
  br i1 %.not40.peel, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_mapCs2JiOgHzbbc7_10tokenizers.exit
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val.i46.peel = load ptr, ptr %i.ab, align 8, !alias.scope !758, !noalias !759 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %.val3.i.peel = load i64, ptr %i.ac, align 8, !alias.scope !758, !noalias !759
  br i1 %.not105, label %bb.j, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.peel

bb.j:                                             ; preds = %bb.i
  %.val.i52.peel = load ptr, ptr %1, align 8, !noalias !760, !nonnull !3, !noundef !3
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i52.peel, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !760
  br label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.peel

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.peel: ; preds = %bb.j, %bb.i
  %.val10.i53.peel = load ptr, ptr %1, align 8, !noalias !760, !nonnull !3, !align !5, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i46.peel) ], !noalias !761
  call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val10.i53.peel, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i46.peel, i64 noundef %.val3.i.peel)
  %.val.i49.peel = load ptr, ptr %1, align 8, !noalias !762, !nonnull !3, !align !5, !noundef !3
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i49.peel, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !762, !inline_history !745
  %i.ad = call fastcc noundef align 8 ptr @_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value3serNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa, ptr noalias noundef align 8 dereferenceable(8) %1), !noalias !763, !inline_history !745 ; 2 uses
  %.not.i50.peel = icmp eq ptr %i.ad, null
  br i1 %.not.i50.peel, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs2JiOgHzbbc7_10tokenizers.exit, label %.loopexit95

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.peel, %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %i.ae = call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 3 uses
  %.not40 = icmp eq ptr %i.af, null
  br i1 %.not40, label %.loopexit.thread, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit

.loopexit.thread:                                 ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs2JiOgHzbbc7_10tokenizers.exit
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.val.i46 = load ptr, ptr %i.ah, align 8, !alias.scope !764, !noalias !759 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %.val3.i = load i64, ptr %i.ai, align 8, !alias.scope !764, !noalias !759
  %.val.i52 = load ptr, ptr %1, align 8, !noalias !765, !nonnull !3, !noundef !3
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i52, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !765
  %.val10.i53 = load ptr, ptr %1, align 8, !noalias !765, !nonnull !3, !align !5, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i46) ], !noalias !766
  call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val10.i53, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i46, i64 noundef %.val3.i)
  %.val.i49 = load ptr, ptr %1, align 8, !noalias !767, !nonnull !3, !align !5, !noundef !3
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i49, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !767, !inline_history !745
  %i.aj = call fastcc noundef align 8 ptr @_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value3serNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias noundef align 8 dereferenceable(8) %1), !noalias !768, !inline_history !745 ; 2 uses
  %.not.i50 = icmp eq ptr %i.aj, null
  br i1 %.not.i50, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueECs2JiOgHzbbc7_10tokenizers.exit, label %.loopexit95, !llvm.loop !747

.loopexit:                                        ; preds = %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_mapCs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not105, label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.thread, %.loopexit
  %.val44 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val44, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit

.loopexit95:                                      ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.peel
  %.lcssa93 = phi ptr [ %i.ad, %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.peel ], [ %i.aj, %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECs2JiOgHzbbc7_10tokenizers.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer14serialize_boolCs2JiOgHzbbc7_10tokenizers.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs2JiOgHzbbc7_10tokenizers10processorss_1__NtB5_20PostProcessorWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [128 x i8], align 8               ; 11 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 9 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [128 x i8], align 8               ; 8 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [128 x i8], align 8               ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXsr_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtB6_14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
  %i.m = load i8, ptr %i.k, align 8, !range !11, !noundef !3 ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx, i64 7, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.511.0.copyload = load ptr, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 %i.m, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.511.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors7robertas_1__NtB5_17RobertaProcessingNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.v, %bb.y, %bb.x, %bb.u, %bb.q, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.l) #24
          to label %bb.ac unwind label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.i, align 8, !range !4, !noundef !3
  %i.t = icmp eq i64 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  store i64 -9223372036854775808, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.w, %bb.t, %bb.o, %bb.k, %bb.f
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.l)
  br label %bb.aa

bb.h:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !align !5, !noundef !3
  store ptr %i.w, ptr %i.u, align 8
  store i64 -1, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB11_(ptr noalias noundef align 8 dereferenceable(128) %i.j)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors4berts_1__NtB5_14BertProcessingNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.g, align 8, !range !4, !noundef !3
  %i.y = icmp eq i64 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  store i64 -9223372036854775807, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.g

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !3, !align !5, !noundef !3
  store ptr %i.ab, ptr %i.z, align 8
  store i64 -1, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB11_(ptr noalias noundef align 8 dereferenceable(128) %i.h)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels_1__NtB5_9ByteLevelNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.n unwind label %bb.d

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.e, align 8, !range !24, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.ae, i64 3, i1 false)
  store i64 -9223372036854775806, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.p:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !3, !align !5, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store i64 -1, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB11_(ptr noalias noundef align 8 dereferenceable(128) %i.f)
          to label %bb.q unwind label %bb.d

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates9_1__NtB5_18TemplateProcessingNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.r unwind label %bb.d

bb.r:                                             ; preds = %bb.q
  %i.ai = load i64, ptr %i.c, align 8, !range !4, !noundef !3
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %.thread39, label %bb.s

.thread39:                                        ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !3, !align !5, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store i64 -1, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  %.pr = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.an = icmp eq i64 %.pr, -1
  br i1 %i.an, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.u:                                             ; preds = %.thread39, %bb.s
end_hunk_3
begin_hunk_4_@_RINvXs3_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBY_8plumbing6bridge8CallbackNtNtBY_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB2q_16AddedTokenWithIdNtB1j_11Deserialize11deserialize9___VisitorEB2u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.3.i = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.986.i = alloca [7 x i8], align 1         ; 6 uses
  %.sroa.14.i = alloca [16 x i8], align 8         ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 13 uses
  %.sroa.18 = alloca [16 x i8], align 8           ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1177, !noalias !1178, !noundef !3 ; 2 uses
  %.promoted.i = load i64, ptr %i.u, align 8, !alias.scope !1176, !noalias !1179 ; 2 uses
  %i.x = icmp ult i64 %.promoted.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1177, !noalias !1178, !nonnull !3, !noundef !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aa = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ad, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !1182, !noundef !3
  switch i8 %i.ac, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !35

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ad = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ad, ptr %i.u, align 8, !alias.scope !1183, !noalias !1179
  %exitcond.not.i = icmp eq i64 %i.ad, %i.w
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 5, ptr %i.t, align 8
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bm

bb.d:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 8, !noundef !3
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.ag, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g, !prof !23

bb.e:                                             ; preds = %bb.b
  %i.ak = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80)
  br label %bb.bk

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 24, ptr %i.s, align 8
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bm

bb.g:                                             ; preds = %bb.d
  %i.an = add i64 %i.aa, 1
  store i64 %i.an, ptr %i.u, align 8, !alias.scope !1184
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %1, ptr %i.p, align 8, !noalias !1185
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 1, ptr %i.ao, align 8, !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1185
  store i64 0, ptr %i.o, align 8, !noalias !1185
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8, !noalias !1185
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 0, ptr %i.aq, align 8, !noalias !1185
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.986.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.665.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 33
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.838.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br label %.outer

.outer:                                           ; preds = %bb.ac, %bb.g
  %.sroa.412.0.i.ph = phi i32 [ %i.cs, %bb.ac ], [ undef, %bb.g ]
  %.not72.i = phi i1 [ false, %bb.ac ], [ true, %bb.g ]
  %.sroa.010.0.i.ph = phi i1 [ true, %bb.ac ], [ false, %bb.g ]
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.986.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1188
  invoke fastcc void @_RINvNvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB8_9MapAccesspENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !1189

.noexc.i:                                         ; preds = %bb.h
  %i.av = load i8, ptr %i.h, align 8, !range !24, !noalias !1188, !noundef !3
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1188, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1188
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread.i

bb.j:                                             ; preds = %.noexc.i
  %i.az = load i8, ptr %i.ar, align 1, !range !24, !noalias !1188, !noundef !3
  %i.ba = trunc nuw i8 %i.az to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1188
  br i1 %i.ba, label %bb.k, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i.thread

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.986.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  br i1 %.sroa.010.0.i.ph, label %bb.ap, label %bb.al

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1188
  %i.bb = load ptr, ptr %i.p, align 8, !alias.scope !1190, !noalias !1191, !nonnull !3, !align !5, !noundef !3 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 8 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !1200, !noalias !1201, !noundef !3
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !alias.scope !1200, !noalias !1201
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %i.bg, align 8, !alias.scope !1202, !noalias !1201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1203
  invoke void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bb)
          to label %.noexc76.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !1189

.noexc76.i:                                       ; preds = %bb.k
  %i.bh = load i64, ptr %i.f, align 8, !range !10, !noalias !1203, !noundef !3 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 2
  %i.bj = load ptr, ptr %i.as, align 8, !noalias !1203 ; 6 uses
  br i1 %i.bi, label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.thread4.i.i.i, label %bb.l

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.thread4.i.i.i: ; preds = %.noexc76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1203
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i

bb.l:                                             ; preds = %.noexc76.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1203 ; 3 uses
  %i.bk = trunc nuw i64 %i.bh to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  br i1 %i.bk, label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.bl = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 2
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = load i16, ptr %i.bj, align 1
  %i.bn = icmp ne i16 %i.bm, 25705
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i8 13, ptr %i.g, align 8, !alias.scope !1205, !noalias !1206
  store ptr %i.bj, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1205, !noalias !1206
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !1205, !noalias !1206
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i

bb.p:                                             ; preds = %bb.n
  %.sroa.10.0.copyload.pre.pre.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1207
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i: ; preds = %bb.p, %bb.o
  %.sroa.10.0.copyload.pre.i = phi ptr [ %.sroa.10.0.copyload.pre.pre.i, %bb.p ], [ %i.bj, %bb.o ]
  %.sroa.0.0.copyload.pr.i = phi i8 [ -1, %bb.p ], [ 13, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1188
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.i.i.i: ; preds = %bb.l
  invoke void @_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB8_16AddedTokenWithIdNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1z_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc77.i unwind label %.loopexit.loopexit.i.loopexit, !noalias !1189

.noexc77.i:                                       ; preds = %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.i.i.i
  %.pr.i.i.i = load i8, ptr %i.g, align 8, !noalias !1207 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1203
  %i.bq = icmp eq i8 %.pr.i.i.i, -2
  %.sroa.10.0.copyload.pre181.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1207 ; 3 uses
  br i1 %i.bq, label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i: ; preds = %.noexc77.i, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.thread4.i.i.i
  %i.br = phi ptr [ %i.bj, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.thread4.i.i.i ], [ %.sroa.10.0.copyload.pre181.i, %.noexc77.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1188
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread.i

.body.i:                                          ; preds = %.loopexit.loopexit.i.loopexit, %.loopexit.loopexit.i.loopexit.split-lp, %bb.ag, %bb.ad, %.loopexit.split-lp.i, %.loopexit.loopexit.split-lp.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi100.i, %bb.ad ], [ %i.cy, %bb.ag ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp193.i, %.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1u_EEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.o) #24
          to label %common.resume unwind label %bb.ak, !noalias !1189

.loopexit.loopexit.i.loopexit:                    ; preds = %bb.h, %bb.k, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.loopexit.i.loopexit.split-lp:           ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.aa, %.loopexit.i.i.i.i
  %lpad.loopexit.split-lp193.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ap, %bb.al, %.loopexit101.i, %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i: ; preds = %.noexc77.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.986.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.986.0..sroa_idx.i, i64 7, i1 false), !noalias !1207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1188
  %i.bs = icmp eq i8 %.pr.i.i.i, -3
  br i1 %i.bs, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread.i, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread.i: ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i, %bb.i
  %.sroa.10.089.i = phi ptr [ %i.ay, %bb.i ], [ %i.br, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB1q_16AddedTokenWithIdNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB49_4read7StrReadEEB1u_.exit._crit_edge.i.i.i ], [ %.sroa.10.0.copyload.pre181.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.986.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  br label %bb.av

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i: ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i
  %.sroa.0.094.i = phi i8 [ %.pr.i.i.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i ], [ %.sroa.0.0.copyload.pr.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i ] ; 2 uses
  %.sroa.10.093.i = phi ptr [ %.sroa.10.0.copyload.pre181.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.i ], [ %.sroa.10.0.copyload.pre.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread189.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.986.i, i64 7, i1 false), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, i64 16, i1 false), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.986.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %cond = icmp eq i8 %.sroa.0.094.i, -1
  br i1 %cond, label %bb.v, label %bb.q

bb.q:                                             ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.519.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, i64 7, i1 false), !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.721.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1185
  store i8 %.sroa.0.094.i, ptr %i.l, align 8, !noalias !1185
  store ptr %.sroa.10.093.i, ptr %.sroa.620.0..sroa_idx.i, align 8, !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1185
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1210, !noalias !1211, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !1212, !noalias !1213 ; 2 uses
  %i.bv = icmp ult i64 %.promoted.i.i.i.i, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.bw = load ptr, ptr %i.bc, align 8, !alias.scope !1210, !noalias !1211, !nonnull !3, !noundef !3
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.bx = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.s ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !1216, !noundef !3
  switch i8 %i.bz, label %bb.t [
    i8 32, label %bb.s
    i8 10, label %bb.s
    i8 9, label %bb.s
    i8 13, label %bb.s
    i8 58, label %bb.u
  ], !prof !35

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.ca = add i64 %i.bx, 1                        ; 3 uses
  store i64 %i.ca, ptr %i.bd, align 8, !alias.scope !1217, !noalias !1213
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ca, %i.bu
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.r

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1218
  store i64 3, ptr %i.d, align 8, !noalias !1218
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc78.i unwind label %.loopexit.split-lp97.i, !noalias !1189

.noexc78.i:                                       ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1218
  br label %.loopexit101.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1218
  store i64 6, ptr %i.e, align 8, !noalias !1218
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc79.i unwind label %.loopexit.split-lp97.i, !noalias !1189

.noexc79.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1218
  br label %.loopexit101.i

bb.u:                                             ; preds = %bb.r
  %i.cd = add i64 %i.bx, 1
  store i64 %i.cd, ptr %i.bd, align 8, !alias.scope !1219, !noalias !1220
  invoke void @_RINvXsi_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentNtB6_14ContentVisitorNtNtCsboAIIHEtPkY_10serde_core2de15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bb)
          to label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit96.i, !noalias !1189

bb.v:                                             ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys1_1__NtB23_16AddedTokenWithIdNtB18_11Deserialize11deserialize7___FieldEB27_.exit.thread90.i
  br i1 %.not72.i, label %bb.x, label %bb.w, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 2)
          to label %bb.av unwind label %.loopexit.split-lp.i, !noalias !1189

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1185
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !1223, !noalias !1224, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !1225, !noalias !1226 ; 2 uses
  %i.ch = icmp ult i64 %.promoted.i.i.i.i.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.x
  %i.ci = load ptr, ptr %i.bc, align 8, !alias.scope !1223, !noalias !1224, !nonnull !3, !noundef !3
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %i.cj = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cm, %bb.z ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !1229, !noundef !3
  switch i8 %i.cl, label %bb.aa [
    i8 32, label %bb.z
    i8 10, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 58, label %bb.ab
  ], !prof !35

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y
  %i.cm = add i64 %i.cj, 1                        ; 3 uses
  store i64 %i.cm, ptr %i.bd, align 8, !alias.scope !1230, !noalias !1226
end_hunk_4
begin_hunk_5_@_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1j_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1j_11Deserialize11deserialize10VecVisitorNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB40_:bb.a
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ab, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = load i64, ptr %i.c, align 8, !range !4, !noundef !3 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.u, label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !3, !align !5, !noundef !3
  %.not51 = icmp eq ptr %i.ab, null
  br i1 %.not51, label %.thread, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread45 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.m

.thread45:                                        ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %i.al = load i64, ptr %i.ab, align 8, !range !12, !alias.scope !1273, !noalias !1274, !noundef !3
  switch i64 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.p
    i64 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !1273, !noalias !1274, !noundef !3 ; 2 uses
  %i.an = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !1273, !noalias !1274, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #26, !noalias !1275
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.r:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !1273, !noalias !1274, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.s, !noalias !1274

common.resume:                                    ; preds = %bb.h, %bb.l, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.ac, %bb.h ], [ %i.ai, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 40, i64 noundef 8) #26, !noalias !1274
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 40, i64 noundef 8) #26, !noalias !1274
  br label %.thread

bb.t:                                             ; preds = %.thread45, %.thread, %bb.e
  %.sroa.8.1 = phi ptr [ %i.ab, %.thread45 ], [ %i.v, %bb.e ], [ %i.ah, %.thread ]
  %i.ar = call noundef nonnull align 8 ptr @_RINvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.8.1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ae, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_strNtNtB1j_5impls10StrVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1290, !noalias !1291, !noundef !3 ; 2 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !1289, !noalias !1292 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1290, !noalias !1291, !nonnull !3, !noundef !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !1295, !noundef !3 ; 2 uses
  switch i8 %i.m, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !1296, !noalias !1292
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !25

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.r = add i64 %i.k, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !1297
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.t = load i64, ptr %i.b, align 8, !range !10, !noundef !3 ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.z = trunc nuw i64 %i.t to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  br i1 %i.z, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @_RINvYNtNtNtCsboAIIHEtPkY_10serde_core2de5impls10StrVisitorNtB7_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload)
  %.pr = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = icmp eq ptr %.pr, null
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.aa, label %._crit_edge14, label %._crit_edge, !prof !1298

._crit_edge14:                                    ; preds = %bb.h
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 8
  br label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %.phi.trans.insert15, align 8
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge14, %bb.e
  %i.ab = phi ptr [ %.pre16, %._crit_edge14 ], [ %i.x, %bb.e ]
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge, %.thread
  %i.ae = phi i64 [ %.sroa.4.0.copyload, %.thread ], [ %.pre, %._crit_edge ]
  %i.af = phi ptr [ %i.w, %.thread ], [ %.pr, %._crit_edge ]
  store ptr %i.af, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.ag, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_u64NtNvXs1a_NtB1j_5implsjNtB1j_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1320, !noalias !1321, !noundef !3 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !1322, !noalias !1323 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1320, !noalias !1321, !nonnull !3, !noundef !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.m = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !1326, !noundef !3 ; 2 uses
  switch i8 %i.o, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1327, !noalias !1323
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1318
  store i64 5, ptr %i.f, align 8, !noalias !1318
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1318
  br label %_RINvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB6_12DeserializerNtNtB8_4read7StrReadE18deserialize_numberNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1L_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add i64 %i.m, 1
  store i64 %i.r, ptr %i.g, align 8, !alias.scope !1328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1318
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.s = load i64, ptr %i.e, align 8, !range !13, !noalias !1318, !noundef !3 ; 2 uses
  %i.t = icmp eq i64 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.v = add i8 %i.o, -48
  %or.cond.i = icmp ult i8 %i.v, 10
  br i1 %or.cond.i, label %bb.o, label %bb.n, !prof !28

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.u, align 8, !noalias !1318, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1318
  br label %_RINvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB6_12DeserializerNtNtB8_4read7StrReadE18deserialize_numberNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1L_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !1318 ; 5 uses
  switch i64 %i.s, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.r, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.x = bitcast i64 %.sroa.2.0.copyload.i to double
  %i.y = tail call { i64, ptr } @_RINvYNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(double noundef %i.x), !noalias !1329
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i

bb.i:                                             ; preds = %bb.g
  %i.z = inttoptr i64 %.sroa.2.0.copyload.i to ptr
  %i.aa = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.z, 1
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i

bb.j:                                             ; preds = %bb.g
  %i.ab = icmp sgt i64 %.sroa.2.0.copyload.i, -1
  br i1 %i.ab, label %bb.l, label %bb.k, !prof !25

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1330
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.ac, align 8, !noalias !1330
  store i8 2, ptr %i.c, align 8, !noalias !1330
  %i.ad = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !1329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1330
  br label %_RINvXNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ae = inttoptr i64 %.sroa.2.0.copyload.i to ptr
  br label %_RINvXNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i

_RINvXNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.3.0.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ad, %bb.k ]
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.3.0.i.i.i, 1
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i

_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvXNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.i, %bb.h
  %.merged.i.i = phi { i64, ptr } [ %i.y, %bb.h ], [ %i.aa, %bb.i ], [ %i.ag, %_RINvXNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1318
  br label %bb.m

bb.m:                                             ; preds = %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit14.i, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i
  %.pn.i = phi { i64, ptr } [ %.merged.i.i, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.merged.i12.i, %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit14.i ] ; 2 uses
  %.sroa.74.0.in.i = extractvalue { i64, ptr } %.pn.i, 1 ; 2 uses
  %.sroa.03.0.i = extractvalue { i64, ptr } %.pn.i, 0
  %i.ah = trunc nuw i64 %.sroa.03.0.i to i1
  br i1 %i.ah, label %bb.p, label %_RINvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB6_12DeserializerNtNtB8_4read7StrReadE18deserialize_numberNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1L_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit, !prof !23

bb.n:                                             ; preds = %bb.e
  %i.ai = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
  br label %bb.p

bb.o:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1318
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.aj = load i64, ptr %i.d, align 8, !range !13, !noalias !1318, !noundef !3 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.ak, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.74.1.i = phi ptr [ %.sroa.74.0.in.i, %bb.m ], [ %i.ai, %bb.n ]
  %i.am = call noundef nonnull align 8 ptr @_RINvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.74.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RINvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB6_12DeserializerNtNtB8_4read7StrReadE18deserialize_numberNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1L_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.q:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.al, align 8, !noalias !1318, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1318
  br label %_RINvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB6_12DeserializerNtNtB8_4read7StrReadE18deserialize_numberNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtB1L_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.r:                                             ; preds = %bb.o
  %.sroa.219.0.copyload.i = load i64, ptr %i.al, align 8, !noalias !1318 ; 5 uses
  switch i64 %i.aj, label %default.unreachable [
    i64 0, label %bb.s
    i64 1, label %bb.t
end_hunk_5
begin_hunk_6_@_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB2t_23PrecompiledDeserializerNtB1j_11Deserialize11deserialize9___VisitorECs2JiOgHzbbc7_10tokenizers:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.053.0, ptr %i.o, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.654.0, ptr %.sroa.654.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.bf = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %1)
          to label %bb.q unwind label %bb.p       ; 10 uses

bb.o:                                             ; preds = %bb.ad, %bb.g
  %.sink = phi ptr [ %i.bx, %bb.ad ], [ %i.an, %bb.g ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bv

bb.p:                                             ; preds = %_RINvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBb_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB2W_4read7StrReadEECs2JiOgHzbbc7_10tokenizers.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.o) #24
          to label %common.resume unwind label %bb.w

bb.q:                                             ; preds = %_RINvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBb_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB2W_4read7StrReadEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.bf, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bj = load i64, ptr %i.p, align 8, !range !4, !noundef !3 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not38 = icmp eq ptr %i.bf, null
  br i1 %.not38, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %.not168 = icmp eq ptr %i.bf, null
  br i1 %.not168, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.x

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.t
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread

bb.w:                                             ; preds = %bb.bh, %bb.p
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %bb.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.09.0131 = phi i64 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.bj, %bb.s ]
  %.sroa.10.0130 = phi ptr [ %i.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.4.0.copyload, %bb.s ]
  %.sroa.14.0129 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.5.0.copyload, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ac

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.bq = load i64, ptr %i.bf, align 8, !range !12, !alias.scope !1463, !noalias !1464, !noundef !3
  switch i64 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.y
    i64 1, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !1463, !noalias !1464, !noundef !3 ; 2 uses
  %i.bs = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !1463, !noalias !1464, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #26, !noalias !1465
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.aa:                                            ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !1463, !noalias !1464, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ab, !noalias !1464

common.resume.sink.split:                         ; preds = %bb.ab, %bb.bs
  %.sink166 = phi ptr [ %i.ee, %bb.bs ], [ %i.bf, %bb.ab ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.es, %bb.bs ], [ %i.bv, %bb.ab ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink166, i64 noundef 40, i64 noundef 8) #26, !noalias !3
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.bm, %bb.u, %bb.bh, %bb.p, %bb.al, %bb.bd, %bb.bf
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %.pn.i, %bb.al ], [ %i.el, %bb.bm ], [ %i.dz, %bb.bd ], [ %.pn.i, %bb.bf ], [ %i.ef, %bb.bh ], [ %i.bn, %bb.u ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef 40, i64 noundef 8) #26, !noalias !1464
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit46.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread
  %.sroa.14.1 = phi i64 [ %.sroa.14.0129, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread ], [ %.sroa.14.2137, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit46.thread ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0130, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread ], [ %.sroa.10.2138, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit46.thread ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.0131, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit.thread ], [ %.sroa.09.2139, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsblNeYnuIT2i_15spm_precompiled23PrecompiledDeserializerECs2JiOgHzbbc7_10tokenizers.exit46.thread ] ; 2 uses
  %i.bw = icmp eq i64 %.sroa.09.1, -1
  br i1 %i.bw, label %bb.bt, label %bb.bu, !prof !23

bb.ad:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 24, ptr %i.n, align 8
  %i.bx = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.o

bb.ae:                                            ; preds = %bb.f
  %i.by = add i64 %i.y, 1
  store i64 %i.by, ptr %i.s, align 8, !alias.scope !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !1467
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.bz, align 8, !noalias !1467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1467
  store i64 -1, ptr %i.g, align 8, !noalias !1467
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.af

bb.af:                                            ; preds = %.backedge, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1470
  invoke fastcc void @_RINvNvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB8_9MapAccesspENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc.i unwind label %.loopexit.i40, !noalias !1471

.noexc.i:                                         ; preds = %bb.af
  %i.cc = load i8, ptr %i.e, align 8, !range !24, !noalias !1470, !noundef !3
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.noexc.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !1470, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1470
  br label %.loopexit40.i

bb.ah:                                            ; preds = %.noexc.i
  %i.cg = load i8, ptr %i.ca, align 1, !range !24, !noalias !1470, !noundef !3
  %i.ch = trunc nuw i8 %i.cg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1470
  br i1 %i.ch, label %bb.ai, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.thread33.i

bb.ai:                                            ; preds = %bb.ah
  %i.ci = load ptr, ptr %i.h, align 8, !alias.scope !1472, !noalias !1473, !nonnull !3, !align !5, !noundef !3 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 5 uses
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !1478, !noalias !1479, !noundef !3
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ck, align 8, !alias.scope !1478, !noalias !1479
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 0, ptr %i.cn, align 8, !alias.scope !1480, !noalias !1479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1481
  invoke void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ci)
          to label %.noexc23.i unwind label %.loopexit.i40, !noalias !1471

.noexc23.i:                                       ; preds = %bb.ai
  %i.co = load i64, ptr %i.d, align 8, !range !10, !noalias !1481, !noundef !3
  %i.cp = icmp eq i64 %i.co, 2
  %i.cq = load ptr, ptr %i.cb, align 8, !noalias !1481 ; 5 uses
  br i1 %i.cp, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc23.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  %i.cr = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 20
  br i1 %i.cr, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.i, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.thread37.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.thread37.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1481
  br label %bb.am

bb.ak:                                            ; preds = %.noexc23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br label %.loopexit40.i

bb.al:                                            ; preds = %.body.i, %.loopexit.split-lp.i, %.loopexit.i40
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.i, %.loopexit.i40 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.cs = load i64, ptr %i.g, align 8, !range !4, !noalias !1467, !noundef !3
  %.not17.i = icmp eq i64 %i.cs, -1
  br i1 %.not17.i, label %common.resume, label %bb.bf

.loopexit.i40:                                    ; preds = %bb.at, %bb.am, %bb.ai, %bb.af
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp.i:                             ; preds = %bb.bb, %bb.as, %.loopexit.i.i.i.i, %bb.ao
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.aj
  %i.ct = load i128, ptr %i.cq, align 1
  %i.cu = xor i128 %i.ct, 152037761558467603950745042428551852656
  %i.cv = getelementptr i8, ptr %i.cq, i64 16
  %i.cw = load i32, ptr %i.cv, align 1
  %i.cx = zext i32 %i.cw to i128
  %i.cy = xor i128 %i.cx, 1885433203
  %i.cz = or i128 %i.cu, %i.cy
  %i.da = icmp ne i128 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %.not.i = icmp eq i32 %i.db, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1481
  br i1 %.not.i, label %bb.an, label %bb.am

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.thread33.i: ; preds = %bb.ah
  %i.dc = load i64, ptr %i.g, align 8, !range !4, !noalias !1467, !noundef !3 ; 2 uses
  %.not14.i = icmp eq i64 %i.dc, -1
  br i1 %.not14.i, label %bb.bb, label %bb.ba, !prof !23

bb.am:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.thread37.i
  %i.dd = invoke fastcc noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers(ptr nonnull %i.ci)
          to label %bb.az unwind label %.loopexit.i40, !noalias !1471 ; 2 uses

bb.an:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.de = load i64, ptr %i.g, align 8, !range !4, !noalias !1467, !noundef !3
  %.not15.i = icmp eq i64 %i.de, -1
  br i1 %.not15.i, label %bb.ap, label %bb.ao, !prof !25

bb.ao:                                            ; preds = %bb.an
  %i.df = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 20)
          to label %.loopexit40.i unwind label %.loopexit.split-lp.i, !noalias !1471

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !1484, !noalias !1485, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !1486, !noalias !1487 ; 2 uses
  %i.di = icmp ult i64 %.promoted.i.i.i.i.i, %i.dh
  br i1 %i.di, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ap
  %i.dj = load ptr, ptr %i.cj, align 8, !alias.scope !1484, !noalias !1485, !nonnull !3, !noundef !3
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i
  %i.dk = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dn, %bb.ar ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !1490, !noundef !3
  switch i8 %i.dm, label %bb.as [
    i8 32, label %bb.ar
    i8 10, label %bb.ar
    i8 9, label %bb.ar
    i8 13, label %bb.ar
    i8 58, label %bb.at
  ], !prof !35

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.aq
  %i.dn = add i64 %i.dk, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.ck, align 8, !alias.scope !1491, !noalias !1487
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dn, %i.dh
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.aq

.loopexit.i.i.i.i:                                ; preds = %bb.ap, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1492
  store i64 3, ptr %i.b, align 8, !noalias !1492
  %i.do = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc24.i unwind label %.loopexit.split-lp.i, !noalias !1471

.noexc24.i:                                       ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1492
  br label %.loopexit40.i

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1492
  store i64 6, ptr %i.c, align 8, !noalias !1492
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !1471

.noexc25.i:                                       ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1492
  br label %.loopexit40.i

bb.at:                                            ; preds = %bb.aq
  %i.dq = add i64 %i.dk, 1
  store i64 %i.dq, ptr %i.ck, align 8, !alias.scope !1493, !noalias !1494
  invoke void @_RINvXNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBe_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1l_7Visitor9visit_mapNtB3_17___DeserializeWithB1j_11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3G_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ci)
          to label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB2c_23PrecompiledDeserializerNtB18_11Deserialize11deserializeNtB27_9___VisitorNtB18_7Visitor9visit_map17___DeserializeWithECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.i40, !noalias !1471

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB2c_23PrecompiledDeserializerNtB18_11Deserialize11deserializeNtB27_9___VisitorNtB18_7Visitor9visit_map17___DeserializeWithECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.at
  %.pr.i = load i64, ptr %i.f, align 8, !noalias !1467
  %i.dr = icmp eq i64 %.pr.i, -1
  br i1 %i.dr, label %.loopexit40.loopexit.i, label %bb.au

.loopexit40.loopexit.i:                           ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB2c_23PrecompiledDeserializerNtB18_11Deserialize11deserializeNtB27_9___VisitorNtB18_7Visitor9visit_map17___DeserializeWithECs2JiOgHzbbc7_10tokenizers.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !1467
  br label %.loopexit40.i

bb.au:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB2c_23PrecompiledDeserializerNtB18_11Deserialize11deserializeNtB27_9___VisitorNtB18_7Visitor9visit_map17___DeserializeWithECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ds = load i64, ptr %i.g, align 8, !range !4, !alias.scope !1495, !noalias !1467, !noundef !3
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.aw, !noalias !1471

bb.aw:                                            ; preds = %bb.av
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.ax, !noalias !1471

bb.ax:                                            ; preds = %bb.aw
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1471
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ay, !noalias !1471

bb.ay:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ay, %bb.aw
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dw, %bb.ay ], [ %i.du, %bb.aw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1467
  br label %bb.al

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1467
  br label %.backedge

bb.az:                                            ; preds = %bb.am
  %.not18.i = icmp eq ptr %i.dd, null
  br i1 %.not18.i, label %.backedge, label %.loopexit40.i

.backedge:                                        ; preds = %bb.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers.exit.i
  br label %bb.af

bb.ba:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.thread33.i
  %.sroa.657.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.657.0.copyload59 = load ptr, ptr %.sroa.657.0..sroa_idx58, align 8, !noalias !1496
  %.sroa.7.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7.0.copyload61 = load i64, ptr %.sroa.7.0..sroa_idx60, align 8, !noalias !1496
  br label %_RINvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBb_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB2W_4read7StrReadEECs2JiOgHzbbc7_10tokenizers.exit

bb.bb:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtB23_23PrecompiledDeserializerNtB18_11Deserialize11deserialize7___FieldECs2JiOgHzbbc7_10tokenizers.exit.thread33.i
  %i.dx = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 20)
          to label %.loopexit40.i unwind label %.loopexit.split-lp.i, !noalias !1471

.loopexit40.i:                                    ; preds = %bb.az, %bb.bb, %.loopexit40.loopexit.i, %.noexc25.i, %.noexc24.i, %bb.ao, %bb.ak, %bb.ag
  %.sroa.1128.0.ph.sink.i = phi ptr [ %i.dx, %bb.bb ], [ %i.dp, %.noexc25.i ], [ %i.df, %bb.ao ], [ %i.cf, %bb.ag ], [ %i.cq, %bb.ak ], [ %.pre.i, %.loopexit40.loopexit.i ], [ %i.do, %.noexc24.i ], [ %i.dd, %bb.az ] ; 2 uses
  %i.dy = load i64, ptr %i.g, align 8, !range !4, !noalias !1467, !noundef !3
  %.not19.i = icmp eq i64 %i.dy, -1
  br i1 %.not19.i, label %_RINvXs0_NvXNvCsblNeYnuIT2i_15spm_precompileds0_1__NtBb_23PrecompiledDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB2W_4read7StrReadEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.bc

bb.bc:                                            ; preds = %.loopexit40.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i41 unwind label %bb.bd, !noalias !1471

bb.bd:                                            ; preds = %bb.bc
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.be, !noalias !1471

bb.be:                                            ; preds = %bb.bd
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1471
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i41: ; preds = %bb.bc
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !1471
end_hunk_6
begin_hunk_7_@_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtB2t_16TruncationParamsNtB1j_11Deserialize11deserialize9___VisitorEB2x_:bb.a
_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.o
  %i.cj = call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef 1, ptr noundef nonnull @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52), !noalias !1682
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit

bb.v:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !range !37, !noalias !1677, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1677
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1685
  call fastcc void @_RINvNvXs7_NtCs5PtHgSLqj5O_10serde_json2deINtB8_9SeqAccesspENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v), !noalias !1686
  %i.cm = load i8, ptr %i.p, align 8, !range !24, !noalias !1685, !noundef !3
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1685, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1685
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit

bb.x:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !range !24, !noalias !1685, !noundef !3
  %i.cs = trunc nuw i8 %i.cr to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1685
  br i1 %i.cs, label %bb.y, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit27.i

bb.y:                                             ; preds = %bb.x
  %i.ct = load ptr, ptr %i.v, align 8, !alias.scope !1687, !noalias !1688, !nonnull !3, !align !5, !noundef !3
  %i.cu = call { i64, ptr } @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_u64NtNvXs1a_NtB1j_5implsjNtB1j_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ct), !noalias !1689 ; 2 uses
  %i.cv = extractvalue { i64, ptr } %i.cu, 0
  %i.cw = extractvalue { i64, ptr } %i.cu, 1      ; 2 uses
  %i.cx = trunc nuw i64 %i.cv to i1
  br i1 %i.cx, label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit, label %bb.aa

bb.z:                                             ; preds = %bb.s
  %i.cy = call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef 2, ptr noundef nonnull @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52), !noalias !1682
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit

bb.aa:                                            ; preds = %bb.y
  %i.cz = ptrtoint ptr %i.cw to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit27.i: ; preds = %bb.x
  %i.da = call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef 3, ptr noundef nonnull @67, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52), !noalias !1682
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit

_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit: ; preds = %bb.w, %bb.y, %bb.r, %bb.u, %bb.n, %bb.p, %bb.i, %bb.l, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.z, %bb.aa, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit27.i
  %.sroa.13.0 = phi i8 [ undef, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit.i ], [ undef, %bb.i ], [ undef, %bb.n ], [ undef, %bb.r ], [ %i.cl, %bb.aa ], [ undef, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit27.i ], [ undef, %bb.z ], [ undef, %bb.l ], [ undef, %bb.p ], [ undef, %bb.u ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.1251.0 = phi i64 [ undef, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit.i ], [ undef, %bb.i ], [ undef, %bb.n ], [ undef, %bb.r ], [ %i.cz, %bb.aa ], [ undef, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit27.i ], [ undef, %bb.z ], [ undef, %bb.l ], [ undef, %bb.p ], [ undef, %bb.u ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.050.0.in = phi ptr [ %i.cj, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.az, %bb.i ], [ %i.bo, %bb.n ], [ %i.ca, %bb.r ], [ %i.bv, %bb.aa ], [ %i.da, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit27.i ], [ %i.cy, %bb.z ], [ %i.bh, %bb.l ], [ %i.bv, %bb.p ], [ %i.ci, %bb.u ], [ %i.cw, %bb.y ], [ %i.cp, %bb.w ] ; 5 uses
  %.sink.i = phi i8 [ 2, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 2, %bb.i ], [ 2, %bb.n ], [ 2, %bb.r ], [ %i.bk, %bb.aa ], [ 2, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9SeqAccess12next_elementjECs2JiOgHzbbc7_10tokenizers.exit27.i ], [ 2, %bb.z ], [ 2, %bb.l ], [ 2, %bb.p ], [ 2, %bb.u ], [ 2, %bb.y ], [ 2, %bb.w ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.db = load i8, ptr %i.al, align 8, !noundef !3
  %i.dc = add i8 %i.db, 1
  store i8 %i.dc, ptr %i.al, align 8
  %i.dd = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %1)
          to label %bb.ac unwind label %bb.ab     ; 9 uses

bb.ab:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation16TruncationParamsNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB13_(ptr %.sroa.050.0.in, i8 %.sink.i) #24
          to label %common.resume unwind label %bb.af

bb.ac:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB36_4read7StrReadEEBf_.exit
  %i.df = icmp eq i8 %.sink.i, 2
  br i1 %i.df, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not35 = icmp eq ptr %i.dd, null
  br i1 %.not35, label %select.unfold, label %.thread

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.050.0.in) ]
  %.not105 = icmp eq ptr %i.dd, null
  br i1 %.not105, label %.thread, label %bb.ag

bb.af:                                            ; preds = %bb.ab, %bb.cr
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  %i.dh = load i64, ptr %i.dd, align 8, !range !12, !alias.scope !1692, !noalias !1693, !noundef !3
  switch i64 %i.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.ah
    i64 1, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.di, align 8, !alias.scope !1692, !noalias !1693, !noundef !3 ; 2 uses
  %i.dj = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.dj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !1692, !noalias !1693, !nonnull !3, !noundef !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i, i64 noundef 1) #26, !noalias !1694
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.aj:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !1692, !noalias !1693, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ak, !noalias !1693

common.resume.sink.split:                         ; preds = %bb.ak, %bb.cz
  %.sink = phi ptr [ %i.ky, %bb.cz ], [ %i.dd, %bb.ak ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.lj, %bb.cz ], [ %i.dm, %bb.ak ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 40, i64 noundef 8) #26, !noalias !3
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.cr, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.kz, %bb.cr ], [ %i.de, %bb.ab ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.ak:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef 40, i64 noundef 8) #26, !noalias !1693
  br label %.thread

bb.al:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 24, ptr %i.w, align 8
  %i.dn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store ptr %i.dn, ptr %0, align 8
  br label %bb.da

bb.am:                                            ; preds = %bb.f
  %i.do = add i64 %i.af, 1
  store i64 %i.do, ptr %i.z, align 8, !alias.scope !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %1, ptr %i.o, align 8, !noalias !1696
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 1, ptr %i.dp, align 8, !noalias !1696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1697
  call fastcc void @_RINvNvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB8_9MapAccesspENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o), !noalias !1698
  %i.dq = load i8, ptr %i.k, align 8, !range !24, !noalias !1697, !noundef !3
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %._crit_edge.i, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  br label %bb.an

._crit_edge.i:                                    ; preds = %bb.bo, %bb.am
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1699, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1699
  br label %bb.bb

bb.an:                                            ; preds = %bb.bo, %.lr.ph.i40
  %.sroa.04.0202.i = phi i8 [ 2, %.lr.ph.i40 ], [ %.sroa.04.1.i, %bb.bo ] ; 7 uses
  %.sroa.09.0201.i = phi i64 [ 0, %.lr.ph.i40 ], [ %.sroa.09.1.i, %bb.bo ] ; 6 uses
  %.sroa.4.0200.i = phi i64 [ undef, %.lr.ph.i40 ], [ %.sroa.4.1.i, %bb.bo ] ; 5 uses
  %.sroa.018.0199.i = phi i8 [ -1, %.lr.ph.i40 ], [ %.sroa.018.1.i, %bb.bo ] ; 7 uses
  %.sroa.025.0198.i = phi i64 [ 0, %.lr.ph.i40 ], [ %.sroa.025.1.i, %bb.bo ] ; 6 uses
  %.sroa.427.0197.i = phi i64 [ undef, %.lr.ph.i40 ], [ %.sroa.427.1.i, %bb.bo ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.ea = load i8, ptr %i.ds, align 1, !range !24, !noalias !1699, !noundef !3
  %i.eb = trunc nuw i8 %i.ea to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1699
  br i1 %i.eb, label %bb.ao, label %bb.bc

bb.ao:                                            ; preds = %bb.an
  %i.ec = load ptr, ptr %i.o, align 8, !alias.scope !1702, !noalias !1703, !nonnull !3, !align !5, !noundef !3 ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 14 uses
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !1708, !noalias !1709, !noundef !3
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !alias.scope !1708, !noalias !1709
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 0, ptr %i.eh, align 8, !alias.scope !1710, !noalias !1709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1711
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ec), !noalias !1709
  %i.ei = load i64, ptr %i.j, align 8, !range !10, !noalias !1711, !noundef !3 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 2
  %i.ek = load ptr, ptr %i.dt, align 8, !noalias !1711 ; 17 uses
  br i1 %i.ej, label %bb.ba, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1711 ; 2 uses
  %i.el = trunc nuw i64 %i.ei to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  br i1 %i.el, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bh [
    i64 9, label %bb.ar
    i64 10, label %bb.as
    i64 8, label %bb.at
    i64 6, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.em = load i64, ptr %i.ek, align 1
  %i.en = xor i64 %i.em, 8028075781017200996
  %i.eo = getelementptr i8, ptr %i.ek, i64 8
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i64
  %i.er = xor i64 %i.eq, 110
  %i.es = or i64 %i.en, %i.er
  %i.et = icmp ne i64 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.bd, label %bb.bh

bb.as:                                            ; preds = %bb.aq
  %i.ew = load i64, ptr %i.ek, align 1
  %i.ex = xor i64 %i.ew, 7453005949477347693
  %i.ey = getelementptr i8, ptr %i.ek, i64 8
  %i.ez = load i16, ptr %i.ey, align 1
  %i.fa = zext i16 %i.ez to i64
  %i.fb = xor i64 %i.fa, 26740
  %i.fc = or i64 %i.ex, %i.fb
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = zext i1 %i.fd to i32
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.be, label %bb.bh

bb.at:                                            ; preds = %bb.aq
  %i.fg = load i64, ptr %i.ek, align 1
  %i.fh = icmp ne i64 %i.fg, 8748072351715980403
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bf, label %bb.bh

bb.au:                                            ; preds = %bb.aq
  %i.fk = load i32, ptr %i.ek, align 1
  %i.fl = xor i32 %i.fk, 1769108595
  %i.fm = getelementptr i8, ptr %i.ek, i64 4
  %i.fn = load i16, ptr %i.fm, align 1
  %i.fo = zext i16 %i.fn to i32
  %i.fp = xor i32 %i.fo, 25956
  %i.fq = or i32 %i.fl, %i.fp
  %i.fr = icmp ne i32 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bg, label %bb.bh

bb.av:                                            ; preds = %bb.ap
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bh [
    i64 9, label %bb.aw
    i64 10, label %bb.ax
    i64 8, label %bb.ay
    i64 6, label %bb.az
  ]

bb.aw:                                            ; preds = %bb.av
  %i.fu = load i64, ptr %i.ek, align 1
  %i.fv = xor i64 %i.fu, 8028075781017200996
  %i.fw = getelementptr i8, ptr %i.ek, i64 8
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fy, 110
  %i.ga = or i64 %i.fv, %i.fz
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bd, label %bb.bh

bb.ax:                                            ; preds = %bb.av
  %i.ge = load i64, ptr %i.ek, align 1
  %i.gf = xor i64 %i.ge, 7453005949477347693
  %i.gg = getelementptr i8, ptr %i.ek, i64 8
  %i.gh = load i16, ptr %i.gg, align 1
  %i.gi = zext i16 %i.gh to i64
  %i.gj = xor i64 %i.gi, 26740
  %i.gk = or i64 %i.gf, %i.gj
  %i.gl = icmp ne i64 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.be, label %bb.bh

bb.ay:                                            ; preds = %bb.av
  %i.go = load i64, ptr %i.ek, align 1
  %i.gp = icmp ne i64 %i.go, 8748072351715980403
  %i.gq = zext i1 %i.gp to i32
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.bf, label %bb.bh

bb.az:                                            ; preds = %bb.av
  %i.gs = load i32, ptr %i.ek, align 1
  %i.gt = xor i32 %i.gs, 1769108595
  %i.gu = getelementptr i8, ptr %i.ek, i64 4
  %i.gv = load i16, ptr %i.gu, align 1
  %i.gw = zext i16 %i.gv to i32
  %i.gx = xor i32 %i.gw, 25956
  %i.gy = or i32 %i.gt, %i.gx
  %i.gz = icmp ne i32 %i.gy, 0
  %i.ha = zext i1 %i.gz to i32
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.bg, label %bb.bh

bb.ba:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1711
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i
  %.sroa.1190.0.ph.i = phi ptr [ %i.ek, %bb.ba ], [ %i.dz, %._crit_edge.i ]
  %i.hc = ptrtoint ptr %.sroa.1190.0.ph.i to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.bc:                                            ; preds = %bb.an
  %.not64.i = icmp eq i8 %.sroa.04.0202.i, 2
  %..sroa.04.0.i = select i1 %.not64.i, i8 1, i8 %.sroa.04.0202.i ; 2 uses
  %i.hd = trunc nuw i64 %.sroa.09.0201.i to i1
  br i1 %i.hd, label %bb.cl, label %bb.ck

bb.bd:                                            ; preds = %bb.aw, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1711
  %.not68.i = icmp eq i8 %.sroa.04.0202.i, 2
  br i1 %.not68.i, label %bb.bj, label %bb.bi, !prof !25

bb.be:                                            ; preds = %bb.ax, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1711
  %i.he = icmp eq i64 %.sroa.09.0201.i, 1
  br i1 %i.he, label %bb.bp, label %bb.bq, !prof !23

bb.bf:                                            ; preds = %bb.ay, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1711
  %.not67.i = icmp eq i8 %.sroa.018.0199.i, -1
  br i1 %.not67.i, label %bb.bx, label %bb.bw, !prof !25

bb.bg:                                            ; preds = %bb.az, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1711
  %i.hf = icmp eq i64 %.sroa.025.0198.i, 1
  br i1 %i.hf, label %bb.cc, label %bb.cd, !prof !23

bb.bh:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1711
  %i.hg = call fastcc noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers(ptr nonnull %i.ec), !noalias !1712 ; 2 uses
  %.not66.i = icmp eq ptr %i.hg, null
  br i1 %.not66.i, label %bb.bo, label %bb.cj

bb.bi:                                            ; preds = %bb.bd
  %i.hh = call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 9), !noalias !1712
  %i.hi = ptrtoint ptr %i.hh to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.bj:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1696
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !1715, !noalias !1716, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ee, align 8, !alias.scope !1717, !noalias !1718 ; 2 uses
  %i.hl = icmp ult i64 %.promoted.i.i.i.i.i, %i.hk
  br i1 %i.hl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bj
  %i.hm = load ptr, ptr %i.ed, align 8, !alias.scope !1715, !noalias !1716, !nonnull !3, !noundef !3
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %.lr.ph.i.i.i.i.i
  %i.hn = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.hq, %bb.bl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !1721, !noundef !3
  switch i8 %i.hp, label %bb.bm [
    i8 32, label %bb.bl
    i8 10, label %bb.bl
    i8 9, label %bb.bl
    i8 13, label %bb.bl
    i8 58, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation19TruncationDirectionEB25_.exit.i
  ], !prof !35

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk, %bb.bk
  %i.hq = add i64 %i.hn, 1                        ; 3 uses
  store i64 %i.hq, ptr %i.ee, align 8, !alias.scope !1722, !noalias !1718
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.hq, %i.hk
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bk

.loopexit.i.i.i.i:                                ; preds = %bb.bj, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1723
  store i64 3, ptr %i.h, align 8, !noalias !1723
  %i.hr = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !1724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1723
  br label %.loopexit302.i

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1723
  store i64 6, ptr %i.i, align 8, !noalias !1723
  %i.hs = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !1724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1723
  br label %.loopexit302.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation19TruncationDirectionEB25_.exit.i: ; preds = %bb.bk
  %i.ht = add i64 %i.hn, 1
  store i64 %i.ht, ptr %i.ee, align 8, !alias.scope !1725, !noalias !1724
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations_1__NtB5_19TruncationDirectionNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2p_4read7StrReadEEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ec), !noalias !1712
  %.pre290.i = load i8, ptr %i.n, align 8, !range !24, !noalias !1696
  %i.hu = trunc nuw i8 %.pre290.i to i1
  br i1 %i.hu, label %.loopexit302.i.loopexit, label %bb.bn

.loopexit302.i.loopexit:                          ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation19TruncationDirectionEB25_.exit.i
  %.pre403 = load ptr, ptr %i.dw, align 8, !noalias !1696
  br label %.loopexit302.i

.loopexit302.i:                                   ; preds = %.loopexit.i.i.i.i, %bb.bm, %.loopexit302.i.loopexit
  %i.hv = phi ptr [ %.pre403, %.loopexit302.i.loopexit ], [ %i.hr, %.loopexit.i.i.i.i ], [ %i.hs, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1696
  %i.hw = ptrtoint ptr %i.hv to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.bn:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation19TruncationDirectionEB25_.exit.i
  %i.hx = load i8, ptr %i.dx, align 1, !range !24, !noalias !1696, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1696
  br label %bb.bo

bb.bo:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.cb, %bb.bn, %bb.bh
  %.sroa.427.1.i = phi i64 [ %.sroa.427.0197.i, %bb.bn ], [ %.sroa.427.0197.i, %bb.bh ], [ %.sroa.427.0197.i, %bb.cb ], [ %.sroa.427.0197.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.kc, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ]
  %.sroa.025.1.i = phi i64 [ %.sroa.025.0198.i, %bb.bn ], [ %.sroa.025.0198.i, %bb.bh ], [ %.sroa.025.0198.i, %bb.cb ], [ %.sroa.025.0198.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 1, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ]
  %.sroa.018.1.i = phi i8 [ %.sroa.018.0199.i, %bb.bn ], [ %.sroa.018.0199.i, %bb.bh ], [ %i.jj, %bb.cb ], [ %.sroa.018.0199.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.018.0199.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ]
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0200.i, %bb.bn ], [ %.sroa.4.0200.i, %bb.bh ], [ %.sroa.4.0200.i, %bb.cb ], [ %i.is, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.4.0200.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ]
  %.sroa.09.1.i = phi i64 [ %.sroa.09.0201.i, %bb.bn ], [ %.sroa.09.0201.i, %bb.bh ], [ %.sroa.09.0201.i, %bb.cb ], [ 1, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.09.0201.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ]
  %.sroa.04.1.i = phi i8 [ %i.hx, %bb.bn ], [ %.sroa.04.0202.i, %bb.bh ], [ %.sroa.04.0202.i, %bb.cb ], [ %.sroa.04.0202.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.04.0202.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1726
  call fastcc void @_RINvNvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB8_9MapAccesspENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o), !noalias !1698
  %i.hy = load i8, ptr %i.k, align 8, !range !24, !noalias !1726, !noundef !3
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %._crit_edge.i, label %bb.an

bb.bp:                                            ; preds = %bb.be
  %i.ia = call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 10), !noalias !1712
  %i.ib = ptrtoint ptr %i.ia to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.bq:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !1729, !noalias !1730, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i73.i = load i64, ptr %i.ee, align 8, !alias.scope !1731, !noalias !1732 ; 2 uses
  %i.ie = icmp ult i64 %.promoted.i.i.i.i73.i, %i.id
  br i1 %i.ie, label %.lr.ph.i.i.i.i76.i, label %.loopexit.i.i.i74.i

.lr.ph.i.i.i.i76.i:                               ; preds = %bb.bq
  %i.if = load ptr, ptr %i.ed, align 8, !alias.scope !1729, !noalias !1730, !nonnull !3, !noundef !3
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %.lr.ph.i.i.i.i76.i
  %i.ig = phi i64 [ %.promoted.i.i.i.i73.i, %.lr.ph.i.i.i.i76.i ], [ %i.ij, %bb.bs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !noalias !1735, !noundef !3
  switch i8 %i.ii, label %bb.bt [
    i8 32, label %bb.bs
    i8 10, label %bb.bs
    i8 9, label %bb.bs
    i8 13, label %bb.bs
    i8 58, label %bb.bv
  ], !prof !35

bb.bs:                                            ; preds = %bb.br, %bb.br, %bb.br, %bb.br
  %i.ij = add i64 %i.ig, 1                        ; 3 uses
  store i64 %i.ij, ptr %i.ee, align 8, !alias.scope !1736, !noalias !1732
  %exitcond.not.i.i.i.i77.i = icmp eq i64 %i.ij, %i.id
  br i1 %exitcond.not.i.i.i.i77.i, label %.loopexit.i.i.i74.i, label %bb.br

.loopexit.i.i.i74.i:                              ; preds = %bb.bs, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1737
  store i64 3, ptr %i.f, align 8, !noalias !1737
  %i.ik = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1737
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1737
  store i64 6, ptr %i.g, align 8, !noalias !1737
  %i.il = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1737
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.loopexit.i.i.i74.i
  %.sroa.0.0.i.ph.i.i75.i = phi ptr [ %i.ik, %.loopexit.i.i.i74.i ], [ %i.il, %bb.bt ]
  %i.im = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i75.i, 1
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i

bb.bv:                                            ; preds = %bb.br
  %i.in = add i64 %i.ig, 1
  store i64 %i.in, ptr %i.ee, align 8, !alias.scope !1738, !noalias !1712
  %i.io = call { i64, ptr } @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_u64NtNvXs1a_NtB1j_5implsjNtB1j_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ec), !noalias !1712
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bv, %bb.bu
  %.merged.i.i.i = phi { i64, ptr } [ %i.im, %bb.bu ], [ %i.io, %bb.bv ] ; 2 uses
  %i.ip = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.iq = extractvalue { i64, ptr } %.merged.i.i.i, 1
  %i.ir = trunc nuw i64 %i.ip to i1
  %i.is = ptrtoint ptr %i.iq to i64               ; 2 uses
  br i1 %i.ir, label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit, label %bb.bo

bb.bw:                                            ; preds = %bb.bf
end_hunk_7
begin_hunk_8_@_RINvXse_NtCs5PtHgSLqj5O_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB37_15PaddingStrategyNtB1n_11Deserialize11deserialize7___FieldEEB3b_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2827
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB1q_15PaddingStrategyNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2827
  call void @_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB8_15PaddingStrategyNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %.sroa.4.0.copyload.i.i.i.i), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2827
  %i.x = load i8, ptr %i.c, align 8, !range !24, !noalias !2827, !noundef !3
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %._crit_edge.i.i.i.i, label %bb.h, !prof !23

._crit_edge.i.i.i.i:                              ; preds = %bb.g
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !2827
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB1q_15PaddingStrategyNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB1q_15PaddingStrategyNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6: ; preds = %bb.e, %._crit_edge.i.i.i.i
  %i.z = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.w, %bb.e ]
  %i.aa = call noundef nonnull align 8 ptr @_RINvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !2828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2827
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB1q_15PaddingStrategyNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB1q_15PaddingStrategyNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread: ; preds = %.loopexit.i.i.i.i, %bb.f, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB1q_15PaddingStrategyNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6
  %.sroa.91.15 = phi ptr [ %i.aa, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB1q_15PaddingStrategyNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6 ], [ %i.p, %.loopexit.i.i.i.i ], [ %i.v, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.91.15, ptr %i.ab, align 8
  store i8 2, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !24, !noalias !2827, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2827
  store i8 %i.ad, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ae, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB1q_15PaddingStrategyNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs5PtHgSLqj5O_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB37_16PaddingDirectionNtB1n_11Deserialize11deserialize7___FieldEEB3b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2861, !noalias !2862, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !2863, !noalias !2864 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i.i.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2861, !noalias !2862, !nonnull !3, !noundef !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.k = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !2867, !noundef !3 ; 2 uses
  switch i8 %i.m, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !2868, !noalias !2864
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.b

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2869
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !25

.loopexit.i.i.i.i:                                ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2869
  store i64 5, ptr %i.d, align 8, !noalias !2869
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2869
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread

bb.d:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !2871, !noalias !2870
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.r, align 8, !alias.scope !2872, !noalias !2870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2869
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !2870
  %i.s = load i64, ptr %i.b, align 8, !range !10, !noalias !2869, !noundef !3
  %i.t = icmp eq i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2869, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87), !noalias !2870
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2869
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2869
  call void @_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB8_16PaddingDirectionNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %.sroa.4.0.copyload.i.i.i.i), !noalias !2870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2869
  %i.x = load i8, ptr %i.c, align 8, !range !24, !noalias !2869, !noundef !3
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %._crit_edge.i.i.i.i, label %bb.h, !prof !23

._crit_edge.i.i.i.i:                              ; preds = %bb.g
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !2869
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6: ; preds = %bb.e, %._crit_edge.i.i.i.i
  %i.z = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.w, %bb.e ]
  %i.aa = call noundef nonnull align 8 ptr @_RINvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !2870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2869
  br label %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread

_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread: ; preds = %.loopexit.i.i.i.i, %bb.f, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6
  %.sroa.91.15 = phi ptr [ %i.aa, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread6 ], [ %i.p, %.loopexit.i.i.i.i ], [ %i.v, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.91.15, ptr %i.ab, align 8
  store i8 2, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !24, !noalias !2869, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2869
  store i8 %i.ad, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ae, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvXsf_NtCs5PtHgSLqj5O_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatajEECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @101, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.b, 1
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2883, !noalias !2881, !noundef !3
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !2883, !noalias !2881
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !2882, !noalias !2881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2884
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !2881
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noalias !2884, !noundef !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !2884 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !2881, !noalias !2882
  store i8 -1, ptr %0, align 8, !alias.scope !2881, !noalias !2882
  br label %_RINvXsh_NtCs5PtHgSLqj5O_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2884 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentNtB6_14ContentVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCs5PtHgSLqj5O_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !2885, !noalias !2886
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !2885, !noalias !2886
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2885, !noalias !2886
  br label %_RINvXsh_NtCs5PtHgSLqj5O_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXsh_NtCs5PtHgSLqj5O_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3018, !noalias !3019, !noundef !3 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !3020, !noalias !3021 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3018, !noalias !3019, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !3024, !noundef !3
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !35

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !3025, !noalias !3021
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3016
  store i64 3, ptr %i.o, align 8, !noalias !3016
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3016
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3016
  store i64 6, ptr %i.p, align 8, !noalias !3016
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3016
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !3026
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !3031
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i171.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i171.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !3033, !noundef !3 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !3034, !noalias !3035
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3031
  store i64 5, ptr %i.n, align 8, !noalias !3031
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !28

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3040, !noundef !3
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !3041, !noalias !3042
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit233.i.i.i.i.i, !prof !29

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3045, !noundef !3
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !3046, !noalias !3042
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit233.i.i.i.i.i, !prof !29

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3048)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3049, !noundef !3
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !3050, !noalias !3042
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %.loopexit233.i.i.i.i.i, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3051
  store i64 5, ptr %i.f, align 8, !noalias !3051
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3051
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit
end_hunk_8
begin_hunk_9_@_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers:bb.a

.critedge.i.i.i.i.i:                              ; preds = %bb.as, %bb.ap, %.loopexit.i.i.i.i.i
  %.promoted.i80.i.i.i.i.i = phi i64 [ %i.cu, %bb.ap ], [ %i.cu, %.loopexit.i.i.i.i.i ], [ %i.db, %bb.as ] ; 3 uses
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.dc, label %bb.aw, label %bb.bf

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.dd = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.dd, ptr %i.q, align 8, !alias.scope !3104
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !3031, !noundef !3 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dg = add i64 %i.de, -1                       ; 3 uses
  store i64 %i.dg, ptr %i.ad, align 8, !alias.scope !3031
  %i.dh = load i64, ptr %.0.val, align 8, !range !6, !alias.scope !3031, !noundef !3
  %i.di = icmp ult i64 %i.dg, %i.dh
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = load ptr, ptr %i.af, align 8, !alias.scope !3031, !nonnull !3, !noundef !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !noundef !3 ; 2 uses
  %i.dm = icmp ult i64 %i.dd, %i.cj
  br i1 %i.dm, label %.lr.ph.i75.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3031
  switch i8 %.sroa.027.2163.i.i.i.i.i, label %bb.bg [
    i8 91, label %bb.bi
    i8 123, label %bb.bh
  ]

bb.aw:                                            ; preds = %.critedge.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  %i.dn = icmp ult i64 %.promoted.i80.i.i.i.i.i, %i.cj
  br i1 %i.dn, label %.lr.ph.i82.i.i.i.i.i, label %.loopexit125.i.i.i.i.i

.lr.ph.i82.i.i.i.i.i:                             ; preds = %bb.aw, %bb.ax
  %i.do = phi i64 [ %i.dr, %bb.ax ], [ %.promoted.i80.i.i.i.i.i, %bb.aw ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !3106, !noundef !3
  switch i8 %i.dq, label %bb.az [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 34, label %bb.ay
  ], !prof !35

bb.ax:                                            ; preds = %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i
  %i.dr = add i64 %i.do, 1                        ; 3 uses
  store i64 %i.dr, ptr %i.q, align 8, !alias.scope !3107, !noalias !3108
  %exitcond.not.i83.i.i.i.i.i = icmp eq i64 %i.dr, %i.cj
  br i1 %exitcond.not.i83.i.i.i.i.i, label %.loopexit125.i.i.i.i.i, label %.lr.ph.i82.i.i.i.i.i

.loopexit125.i.i.i.i.i:                           ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3031
  store i64 3, ptr %i.i, align 8, !noalias !3031
  %i.ds = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.ay:                                            ; preds = %.lr.ph.i82.i.i.i.i.i
  %i.dt = add i64 %i.do, 1
  store i64 %i.dt, ptr %i.q, align 8, !alias.scope !3109
  %i.du = tail call noundef align 8 ptr @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not50.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not50.i.i.i.i.i, label %bb.ba, label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.az:                                            ; preds = %.lr.ph.i82.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3031
  store i64 17, ptr %i.j, align 8, !noalias !3031
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.ba:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3110)
  %i.dw = load i64, ptr %i.r, align 8, !alias.scope !3111, !noalias !3112, !noundef !3 ; 3 uses
  %.promoted.i87.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !3113, !noalias !3114 ; 2 uses
  %i.dx = icmp ult i64 %.promoted.i87.i.i.i.i.i, %i.dw
  br i1 %i.dx, label %.lr.ph.i89.i.i.i.i.i, label %.loopexit124.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i:                             ; preds = %bb.ba
  %i.dy = load ptr, ptr %i.u, align 8, !alias.scope !3111, !noalias !3112, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i89.i.i.i.i.i
  %i.dz = phi i64 [ %.promoted.i87.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i ], [ %i.ec, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3116)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !3117, !noundef !3
  switch i8 %i.eb, label %bb.be [
    i8 32, label %bb.bc
    i8 10, label %bb.bc
    i8 9, label %bb.bc
    i8 13, label %bb.bc
    i8 58, label %bb.bd
  ], !prof !35

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.ec = add i64 %i.dz, 1                        ; 3 uses
  store i64 %i.ec, ptr %i.q, align 8, !alias.scope !3118, !noalias !3114
  %exitcond.not.i90.i.i.i.i.i = icmp eq i64 %i.ec, %i.dw
  br i1 %exitcond.not.i90.i.i.i.i.i, label %.loopexit124.i.i.i.i.i, label %bb.bb

.loopexit124.i.i.i.i.i:                           ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3031
  store i64 3, ptr %i.g, align 8, !noalias !3031
  %i.ed = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ee = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.q, align 8, !alias.scope !3119
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3031
  store i64 6, ptr %i.h, align 8, !noalias !3031
  %i.ef = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.bf:                                            ; preds = %bb.bd, %.critedge.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i80.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.ee, %bb.bd ] ; 2 uses
  %i.eg = phi i64 [ %i.cj, %.critedge.i.i.i.i.i ], [ %i.dw, %bb.bd ] ; 2 uses
  %i.eh = phi ptr [ %i.cl, %.critedge.i.i.i.i.i ], [ %i.dy, %bb.bd ]
  %i.ei = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.eg
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

bb.bg:                                            ; preds = %bb.av
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #27
  unreachable

bb.bh:                                            ; preds = %bb.av
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.av
  %storemerge51.i.i.i.i.i = phi i64 [ 8, %bb.bh ], [ 7, %bb.av ]
  store i64 %storemerge51.i.i.i.i.i, ptr %i.l, align 8, !noalias !3031
  %i.ej = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ai, %bb.ay, %bb.at, %.loopexit.i.i, %bb.d, %.loopexit130.i.i.i.i.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, %.loopexit233.i.i.i.i.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, %.loopexit226.i.i.i.i.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, %.loopexit219.i.i.i.i.i, %bb.ah, %bb.ao, %.loopexit125.i.i.i.i.i, %bb.az, %.loopexit124.i.i.i.i.i, %bb.be, %bb.bi
  %.sroa.0.0.i = phi ptr [ null, %bb.at ], [ %i.ca, %.loopexit219.i.i.i.i.i ], [ %i.am, %.loopexit130.i.i.i.i.i ], [ %i.ej, %bb.bi ], [ %i.ay, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i ], [ %i.ed, %.loopexit124.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.ds, %.loopexit125.i.i.i.i.i ], [ %i.cy, %bb.ao ], [ %i.bl, %.loopexit226.i.i.i.i.i ], [ %i.az, %.loopexit233.i.i.i.i.i ], [ %i.ef, %bb.be ], [ %i.cm, %bb.ah ], [ %i.bz, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i ], [ %i.bk, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i ], [ %i.dv, %bb.az ], [ %i.aa, %.loopexit.i.i ], [ %i.cc, %bb.ac ], [ %i.cn, %bb.ai ], [ %i.du, %bb.ay ], [ %i.ce, %bb.ad ], [ null, %bb.af ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_entryeIBN_TNtNtBR_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3193)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !3193, !noalias !3194, !nonnull !3, !align !5, !noundef !3 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !37, !alias.scope !3193, !noalias !3194, !noundef !3
  %i.f = icmp eq i8 %i.e, 1
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !3195, !nonnull !3, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  br i1 %i.f, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !3197
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3197
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3196, !noalias !3195, !noundef !3 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !3196, !noalias !3195, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3196, !noalias !3195, !noundef !3
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.l = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.k), !noalias !3197
  %exitcond.not.i.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.d, align 8, !alias.scope !3193, !noalias !3194
  %.val8.i = load ptr, ptr %i.b, align 8, !noalias !3195, !nonnull !3, !align !5, !noundef !3
  tail call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val8.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val3 = load ptr, ptr %i.m, align 8            ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val4 = load i64, ptr %i.n, align 8            ; 2 uses
  %.val.i5 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef range(i64 0, -9223372036854775808) 2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  %.idx.i.i.i = shl nuw nsw i64 %.val4, 5
  %i.o = getelementptr inbounds nuw i8, ptr %.val3, i64 %.idx.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !3201, !noalias !3202, !nonnull !3, !align !5, !noundef !3 ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3203)
  %i.p = load i64, ptr %i.g, align 8, !alias.scope !3204, !noalias !3202, !noundef !3 ; 8 uses
  %i.q = add i64 %i.p, 1                          ; 5 uses
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !3204, !noalias !3202
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  store i8 0, ptr %i.r, align 8, !alias.scope !3204, !noalias !3202
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3205
  %cond.i.i.i = icmp eq i64 %.val4, 0
  br i1 %cond.i.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3206)
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !3207, !noalias !3202
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3209)
  br label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueIBT_TNtNtBX_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0   ; 2 uses
  %i.s = add i64 %i.p, 2                          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0 ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !alias.scope !3198, !nonnull !3 ; 5 uses
  %i.u = load i64, ptr %i.j, align 8, !alias.scope !3198 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRTNtNtCscdodAO9FK5_5alloc6string6StringdEINtNtBe_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENCINvYQINtNtB2q_3ser10SerializerQINtNtB1q_3vec3VechENtB3d_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.v = phi i1 [ true, %.lr.ph.i.i.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRTNtNtCscdodAO9FK5_5alloc6string6StringdEINtNtBe_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENCINvYQINtNtB2q_3ser10SerializerQINtNtB1q_3vec3VechENtB3d_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i ]
  %i.w = phi ptr [ %.val3, %.lr.ph.i.i.i.i.i ], [ %i.x, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRTNtNtCscdodAO9FK5_5alloc6string6StringdEINtNtBe_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENCINvYQINtNtB2q_3ser10SerializerQINtNtB1q_3vec3VechENtB3d_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3210)
  call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  br i1 %i.v, label %.split.i.i.i.i.i.i.i.i.i, label %.split8.i.i.i.i.i.i.i.i.i

.split8.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.c
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !3212
  br label %bb.d

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.c
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3212
  br label %bb.d

bb.d:                                             ; preds = %.split.i.i.i.i.i.i.i.i.i, %.split8.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.05.01.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.y = add nuw i64 %.sroa.05.01.i.i.i.i.i.i.i.i.i, 1
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !3212
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.05.01.i.i.i.i.i.i.i.i.i, %i.p
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  call void @llvm.experimental.noalias.scope.decl(metadata !3214)
  call void @llvm.experimental.noalias.scope.decl(metadata !3215)
  call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  call void @llvm.experimental.noalias.scope.decl(metadata !3217)
  call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !3219, !noalias !3220
  store i8 0, ptr %i.r, align 8, !alias.scope !3219, !noalias !3220
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3221
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !3222, !noalias !3223 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val7.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !3222, !noalias !3223
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3224
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit27.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.01.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = add nuw i64 %.sroa.05.01.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !3224
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.05.01.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit27.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit27.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i) ]
  call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val7.i.i.i.i.i.i.i.i.i.i)
  store i8 1, ptr %i.r, align 8, !alias.scope !3225, !noalias !3226
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.val8.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.ac, align 8, !alias.scope !3222, !noalias !3223 ; 2 uses
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !3227
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i13.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i13.i.i.i.i.i.i.i.i.i.i:               ; preds = %.loopexit27.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i13.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.01.i.i.i14.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i13.i.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit27.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ad = add nuw i64 %.sroa.05.01.i.i.i14.i.i.i.i.i.i.i.i.i.i, 1
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !3227
  %exitcond.not.i.i.i15.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.05.01.i.i.i14.i.i.i.i.i.i.i.i.i.i, %i.q
  br i1 %exitcond.not.i.i.i15.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i13.i.i.i.i.i.i.i.i.i.i

_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i13.i.i.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i.i.i
  %i.ae = call double @llvm.fabs.f64(double %.val8.i.i.i.i.i.i.i.i.i.i)
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = fcmp ueq double %i.ae, +inf
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !3228
  br label %bb.g

bb.f:                                             ; preds = %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3228
  %i.af = call { ptr, i64 } @_RINvMs6_Cs4esjXB1jo8e_4zmijNtB6_6Buffer13format_finitedECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull dereferenceable(24) %i.a, double noundef %.val8.i.i.i.i.i.i.i.i.i.i), !noalias !3228 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.ah), !noalias !3228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3228
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 1, ptr %i.r, align 8, !alias.scope !3229, !noalias !3230
  call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !3234, !noalias !3235
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3236
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRTNtNtCscdodAO9FK5_5alloc6string6StringdEINtNtBe_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENCINvYQINtNtB2q_3ser10SerializerQINtNtB1q_3vec3VechENtB3d_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %.lr.ph.i.i.i19.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i19.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.g, %.lr.ph.i.i.i19.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.01.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i19.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ai = add nuw i64 %.sroa.06.01.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !3236
  %exitcond.not.i.i.i20.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.06.01.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.p
  br i1 %exitcond.not.i.i.i20.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRTNtNtCscdodAO9FK5_5alloc6string6StringdEINtNtBe_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENCINvYQINtNtB2q_3ser10SerializerQINtNtB1q_3vec3VechENtB3d_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %.lr.ph.i.i.i19.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRTNtNtCscdodAO9FK5_5alloc6string6StringdEINtNtBe_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENCINvYQINtNtB2q_3ser10SerializerQINtNtB1q_3vec3VechENtB3d_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i19.i.i.i.i.i.i.i.i.i.i, %bb.g
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3236
  store i8 1, ptr %i.r, align 8, !alias.scope !3237, !noalias !3238
  %i.aj = icmp eq ptr %i.x, %i.o
  br i1 %i.aj, label %bb.h, label %bb.c

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRTNtNtCscdodAO9FK5_5alloc6string6StringdEINtNtBe_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENCINvYQINtNtB2q_3ser10SerializerQINtNtB1q_3vec3VechENtB3d_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !3240
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3240
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i14.i.i.i, label %.lr.ph.i.i15.i.i.i

.lr.ph.i.i15.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i15.i.i.i
  %.sroa.06.01.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i15.i.i.i ], [ 0, %bb.h ]
  %i.ak = add nuw i64 %.sroa.06.01.i.i.i.i.i, 1   ; 2 uses
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !3240
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ak, %i.p
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i14.i.i.i, label %.lr.ph.i.i15.i.i.i

_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i14.i.i.i: ; preds = %.lr.ph.i.i15.i.i.i, %bb.h
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3240
  br label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueIBT_TNtNtBX_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueIBT_TNtNtBX_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i14.i.i.i
  store i8 1, ptr %i.r, align 8, !alias.scope !3241
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3249)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !3249, !noalias !3250, !nonnull !3, !align !5, !noundef !3 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !37, !alias.scope !3249, !noalias !3250, !noundef !3
  %i.f = icmp eq i8 %i.e, 1
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !3251, !nonnull !3, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3252)
  br i1 %i.f, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !3253
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3253
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3252, !noalias !3251, !noundef !3 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !3252, !noalias !3251, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3252, !noalias !3251, !noundef !3
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.l = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.k), !noalias !3253
  %exitcond.not.i.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.d, align 8, !alias.scope !3249, !noalias !3250
  %.val8.i = load ptr, ptr %i.b, align 8, !noalias !3251, !nonnull !3, !align !5, !noundef !3
  tail call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val8.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %.val3 = load i64, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load i64, ptr %i.m, align 8
  %.val.i5 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef range(i64 0, -9223372036854775808) 2)
  %.val10.i = load ptr, ptr %i.b, align 8         ; 4 uses
  %i.n = trunc nuw i64 %.val3 to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = call noundef i64 @_RNvXsu_CscOYT7KBnvIh_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val4, ptr noalias noundef nonnull dereferenceable(20) %i.a) ; 2 uses
  %4 = sub nuw i64 20, %i.o
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.p, align 8, !alias.scope !3254
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_entryebECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3262)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3262, !noalias !3263, !nonnull !3, !align !5, !noundef !3 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !37, !alias.scope !3262, !noalias !3263, !noundef !3
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !3264, !nonnull !3, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !3266
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3266
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3265, !noalias !3264, !noundef !3 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !3265, !noalias !3264, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3265, !noalias !3264, !noundef !3
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.k = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !3266
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !3262, !noalias !3263
  %.val8.i = load ptr, ptr %i.a, align 8, !noalias !3264, !nonnull !3, !align !5, !noundef !3
  tail call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val8.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %.val3 = load i8, ptr %3, align 1
  %.val.i4 = load ptr, ptr %i.a, align 8, !nonnull !3, !align !5, !noundef !3
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef range(i64 0, -9223372036854775808) 2)
  %.val9.i = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = trunc nuw i8 %.val3 to i1
  br i1 %i.l, label %.split.i.i.i.i, label %.split2.i.i.i.i

.split2.i.i.i.i:                                  ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valuebECs2JiOgHzbbc7_10tokenizers.exit

.split.i.i.i.i:                                   ; preds = %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valuebECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_valuebECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.split2.i.i.i.i, %.split.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.m, align 8, !alias.scope !3267
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap15serialize_entryeeECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3277)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3277, !noalias !3278, !nonnull !3, !align !5, !noundef !3 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !37, !alias.scope !3277, !noalias !3278, !noundef !3
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !3279, !nonnull !3, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3280)
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !3281
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3281
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3280, !noalias !3279, !noundef !3 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !3280, !noalias !3279, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3280, !noalias !3279, !noundef !3
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.05.01.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ 0, %bb.b ]
  %i.k = add nuw i64 %.sroa.05.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !3281
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

_RINvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap13serialize_keyeECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i, %bb.b
  store i8 2, ptr %i.c, align 8, !alias.scope !3277, !noalias !3278
  %.val8.i = load ptr, ptr %i.a, align 8, !noalias !3279, !nonnull !3, !align !5, !noundef !3
  tail call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val8.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !3282, !nonnull !3, !align !5, !noundef !3
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !3282
  %.val8.i4 = load ptr, ptr %i.a, align 8, !noalias !3282, !nonnull !3, !align !5, !noundef !3
  tail call fastcc void @_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_strCs2JiOgHzbbc7_10tokenizers(ptr %.val8.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.l, align 8, !alias.scope !3283, !noalias !3282
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsgbNVBrIJ05E_5rayon3vec13DrainProducerRjENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtBS_8flat_map13FlatMapFolderINtNtNtBS_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB31_10BpeTrainer8do_trains_0INtB23_13CollectResultB2I_EEEB37_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  call void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderINtNtNtB8_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1Y_10BpeTrainer8do_trains_0INtB10_13CollectResultB1F_EEINtNtB8_8plumbing6FolderRjE12consume_iterINtNtBa_3vec10SliceDrainB47_EEB24_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsgbNVBrIJ05E_5rayon3vec13DrainProducerRjENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtBS_8flat_map13FlatMapFolderNtNtBS_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2D_10BpeTrainer8do_trains_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB43_3vec3VecTTTmmElEjEEEEEB2J_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  call void @_RINvYINtNtNtCsgbNVBrIJ05E_5rayon4iter8flat_map13FlatMapFolderNtNtB8_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1A_10BpeTrainer8do_trains_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB30_3vec3VecTTTmmElEjEEEEINtNtB8_8plumbing6FolderRjE12consume_iterINtNtBa_3vec10SliceDrainB4N_EEB1G_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsgbNVBrIJ05E_5rayon3vec13DrainProducerTTTmmElEjEENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB10_6extend13ListVecFolderBL_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  call void @_RINvXs0_NtNtCsgbNVBrIJ05E_5rayon4iter6extendINtB6_13ListVecFolderTTTmmElEjEEINtNtB8_8plumbing6FolderB11_E12consume_iterINtNtBa_3vec10SliceDrainB11_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsgbNVBrIJ05E_5rayon3vec13DrainProducerTTTmmElEjEENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtNtB10_7collect8consumer13CollectResultBL_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  call void @_RINvYINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEINtNtBa_8plumbing6FolderB17_E12consume_iterINtNtBc_3vec10SliceDrainB17_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtBa_11SequenceDef11deserialize14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor14visit_byte_bufNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3288)
  %i.e = icmp eq i64 %i.d, 10
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !alias.scope !3288, !noalias !3287, !noundef !3
  %i.g = icmp eq i8 %i.f, 112
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !3288, !noalias !3287, !noundef !3
  %i.j = icmp eq i8 %i.i, 114
  br i1 %i.j, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
end_hunk_9
begin_hunk_10_@_RINvYQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers:bb.a

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3455
  store i64 9, ptr %i.c, align 8, !noalias !3455
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3455
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !3457, !noalias !3411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3458)
  %umax.i49.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.u) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  %exitcond.not.i51.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i51.not.i, label %bb.t, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !3461, !noundef !3
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !3462, !noalias !3463
  %.not.i52.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i52.i, label %bb.u, label %bb.aa, !prof !29

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3465)
  %exitcond.not.i51.1.i = icmp eq i64 %i.bg, %umax.i49.i
  br i1 %exitcond.not.i51.1.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !3466, !noundef !3
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !3467, !noalias !3463
  %.not.i52.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i52.1.i, label %bb.w, label %bb.aa, !prof !29

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  %exitcond.not.i51.2.i = icmp eq i64 %i.bj, %umax.i49.i
  br i1 %exitcond.not.i51.2.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !3470, !noundef !3
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !3471, !noalias !3463
  %.not.i52.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i52.2.i, label %bb.y, label %bb.aa, !prof !29

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  %exitcond.not.i51.3.i = icmp eq i64 %i.bm, %umax.i49.i
  br i1 %exitcond.not.i51.3.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !3474, !noundef !3
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !3475, !noalias !3463
  %.not.i52.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i52.3.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit56.i, label %bb.aa, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3476
  store i64 5, ptr %i.b, align 8, !noalias !3476
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3476
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3476
  store i64 9, ptr %i.a, align 8, !noalias !3476
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3476
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !3478, !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3422
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !3411
  %i.bt = load i64, ptr %i.p, align 8, !range !13, !noalias !3422, !noundef !3 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !3479, !noalias !3411
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !3412, !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3422
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !3411
  %i.by = load i64, ptr %i.n, align 8, !range !10, !noalias !3422, !noundef !3 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !3422 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !3412, !noalias !3411, !noundef !3
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !3412, !noalias !3411
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !23

bb.ae:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !3412, !noalias !3411, !noundef !3
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !3412, !noalias !3411
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.bd, label %bb.be, !prof !23

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %bb.ah

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !3480, !noalias !3422
  br label %.thread.i

bb.ag:                                            ; preds = %.thread92.i, %.thread89.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !3422
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !3481

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !3422
  br label %bb.br

bb.ah:                                            ; preds = %bb.bs, %bb.bd, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3422
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46.i
  %.sroa.0.1.i45.ph.i = phi ptr [ %i.bb, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i45.ph.i, ptr %i.cm, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %bb.ah

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit47.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !3482, !noalias !3422
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !3482, !noalias !3422
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i
  %.sroa.0.1.i54.ph.i = phi ptr [ %i.bq, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i54.ph.i, ptr %i.cn, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %bb.ah

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit56.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !3483, !noalias !3422
  %.sroa.4.0..sroa_idx.i57.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i57.i, align 1, !alias.scope !3483, !noalias !3422
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !3422, !nonnull !3, !align !5, !noundef !3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3422
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !3422
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !3484, !noalias !3485
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !3484, !noalias !3485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3422
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3422
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3422 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentNtB6_14ContentVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !3411
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !3486, !noalias !3487
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !3486, !noalias !3487
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3486, !noalias !3487
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3422
  br label %bb.ag

bb.aq:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3422
  store i64 24, ptr %i.m, align 8, !noalias !3422
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !3411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3422
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ad
  %i.cu = add i64 %i.y, 1
  store i64 %i.cu, ptr %i.s, align 8, !alias.scope !3488, !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3422
  call void @_RINvXsj_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentNtB6_14ContentVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB24_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !3411
  %i.cv = load i8, ptr %i.cc, align 8, !alias.scope !3412, !noalias !3411, !noundef !3
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cc, align 8, !alias.scope !3412, !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3422
  %i.cx = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.at unwind label %bb.as, !noalias !3411 ; 10 uses

bb.as:                                            ; preds = %bb.ar
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.k) #24
          to label %common.resume.i unwind label %bb.ax, !noalias !3411

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !3422
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.cx, ptr %i.cz, align 8, !noalias !3422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3422
  %i.da = load i8, ptr %i.l, align 8, !range !11, !noalias !3422, !noundef !3
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not31.i = icmp eq ptr %i.cx, null
  br i1 %.not31.i, label %.thread116.i, label %bb.aw

.thread116.i:                                     ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !3422
  br label %.thread89.i

bb.av:                                            ; preds = %bb.at
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !3422, !nonnull !3, !align !5, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !3422
  store i8 -1, ptr %i.q, align 8, !noalias !3422
  %.not96.i = icmp eq ptr %i.cx, null
  br i1 %.not96.i, label %.thread89.i, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !noalias !3422
  store i8 -1, ptr %i.q, align 8, !noalias !3422
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.l), !noalias !3411
  br label %.thread89.i

bb.ax:                                            ; preds = %bb.bf, %bb.as
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !3411
  unreachable

.thread89.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.aw, %bb.av, %.thread116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3422
  br label %bb.ag

bb.ay:                                            ; preds = %bb.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3490)
  %i.dh = load i64, ptr %i.cx, align 8, !range !12, !alias.scope !3491, !noalias !3492, !noundef !3
  switch i64 %i.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i [
    i64 0, label %bb.az
    i64 1, label %bb.bb
  ]

bb.az:                                            ; preds = %bb.ay
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.di, align 8, !alias.scope !3491, !noalias !3492, !noundef !3 ; 2 uses
  %i.dj = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.dj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !3491, !noalias !3492, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i.i, i64 noundef 1) #26, !noalias !3493
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i

bb.bb:                                            ; preds = %bb.ay
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !3491, !noalias !3492, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bc, !noalias !3492

common.resume.sink.split.i:                       ; preds = %bb.bo, %bb.bc
  %.sink123.i = phi ptr [ %i.ds, %bb.bo ], [ %i.cx, %bb.bc ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.eg, %bb.bo ], [ %i.dm, %bb.bc ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink123.i, i64 noundef 40, i64 noundef 8) #26, !noalias !3411
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.bf, %common.resume.sink.split.i, %bb.as
  %common.resume.op.i = phi { ptr, i32 } [ %i.dt, %bb.bf ], [ %i.cy, %bb.as ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.bc:                                            ; preds = %bb.bb
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef 40, i64 noundef 8) #26, !noalias !3492
  br label %.thread89.i

bb.bd:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3422
  store i64 24, ptr %i.j, align 8, !noalias !3422
  %i.dn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !3411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3422
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %bb.ah

bb.be:                                            ; preds = %bb.ae
  %i.dp = add i64 %i.y, 1
  store i64 %i.dp, ptr %i.s, align 8, !alias.scope !3494, !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3422
  call void @_RINvXsj_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentNtB6_14ContentVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB24_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !noalias !3411
  %i.dq = load i8, ptr %i.cg, align 8, !alias.scope !3412, !noalias !3411, !noundef !3
  %i.dr = add i8 %i.dq, 1
  store i8 %i.dr, ptr %i.cg, align 8, !alias.scope !3412, !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3422
  %i.ds = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bg unwind label %bb.bf, !noalias !3411 ; 10 uses

bb.bf:                                            ; preds = %bb.be
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.h) #24
          to label %common.resume.i unwind label %bb.ax, !noalias !3411

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !3422
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.ds, ptr %i.du, align 8, !noalias !3422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3422
  %i.dv = load i8, ptr %i.i, align 8, !range !11, !noalias !3422, !noundef !3
  %i.dw = icmp eq i8 %i.dv, -1
  br i1 %i.dw, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not.i = icmp eq ptr %i.ds, null
  br i1 %.not.i, label %.thread118.i, label %bb.bj

.thread118.i:                                     ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !3422
  br label %.thread92.i

bb.bi:                                            ; preds = %bb.bg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !3422, !nonnull !3, !align !5, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !noalias !3422
  store i8 -1, ptr %i.q, align 8, !noalias !3422
  %.not95.i = icmp eq ptr %i.ds, null
  br i1 %.not95.i, label %.thread92.i, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ds, ptr %i.ea, align 8, !noalias !3422
  store i8 -1, ptr %i.q, align 8, !noalias !3422
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.i), !noalias !3411
  br label %.thread92.i

.thread92.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit62.i, %bb.bj, %bb.bi, %.thread118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3422
  br label %bb.ag

end_hunk_10
