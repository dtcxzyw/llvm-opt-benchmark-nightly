Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0
@12 = private unnamed_addr constant [4 x i8] c"type", align 1
@13 = private unnamed_addr constant [6 x i8] c"unk_id", align 1
@14 = private unnamed_addr constant [5 x i8] c"vocab", align 1
@15 = private unnamed_addr constant [13 x i8] c"byte_fallback", align 1
@16 = private unnamed_addr constant [8 x i8] c"Sequence", align 1
@17 = private unnamed_addr constant [11 x i8] c"normalizers", align 1
@18 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @17, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@19 = private unnamed_addr constant [13 x i8] c"LowercaseType", align 1
@20 = private unnamed_addr constant [9 x i8] c"Lowercase", align 1
@21 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @20, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@22 = private unnamed_addr constant [13 x i8] c"ByteLevelType", align 1
@23 = private unnamed_addr constant [9 x i8] c"ByteLevel", align 1
@24 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @23, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@25 = private unnamed_addr constant [10 x i8] c"BPEDecoder", align 1
@26 = private unnamed_addr constant [6 x i8] c"suffix", align 1
@27 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @26, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@28 = private unnamed_addr constant [12 x i8] c"SequenceType", align 1
@29 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @16, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@30 = private unnamed_addr constant [59 x i8] c"data did not match any variant of untagged enum ModelHelper", align 1
@31 = private unnamed_addr constant [61 x i8] c"data did not match any variant of untagged enum ModelUntagged", align 1
@32 = private unnamed_addr constant [8 x i8] c"EnumType", align 1
@33 = private unnamed_addr constant [3 x i8] c"BPE", align 1
@34 = private unnamed_addr constant [9 x i8] c"WordPiece", align 1
@35 = private unnamed_addr constant [9 x i8] c"WordLevel", align 1
@36 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @33, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @34, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @35, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @11, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@37 = private unnamed_addr constant [16 x i8] c"BertPreTokenizer", align 1
@38 = private unnamed_addr constant [9 x i8] c"Delimiter", align 1
@39 = private unnamed_addr constant [9 x i8] c"Metaspace", align 1
@40 = private unnamed_addr constant [10 x i8] c"Whitespace", align 1
@41 = private unnamed_addr constant [5 x i8] c"Split", align 1
@42 = private unnamed_addr constant [11 x i8] c"Punctuation", align 1
@43 = private unnamed_addr constant [15 x i8] c"WhitespaceSplit", align 1
@44 = private unnamed_addr constant [6 x i8] c"Digits", align 1
@45 = private unnamed_addr constant [14 x i8] c"UnicodeScripts", align 1
@46 = private unnamed_addr constant [11 x i8] c"FixedLength", align 1
@47 = private unnamed_addr constant [66 x i8] c"data did not match any variant of untagged enum PreTokenizerHelper", align 1
@48 = private unnamed_addr constant [68 x i8] c"data did not match any variant of untagged enum PreTokenizerUntagged", align 1
@49 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @37, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @23, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @38, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @39, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @40, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @16, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @41, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @42, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @43, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @44, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @45, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @46, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@50 = private unnamed_addr constant [24 x i8] c"variant index 0 <= i < 1", align 1
@51 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @50, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsboAIIHEtPkY_10serde_core2deReNtB5_8Expected3fmt }>, align 8
@53 = private unnamed_addr constant [24 x i8] c"variant index 0 <= i < 4", align 1
@54 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @53, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@55 = private unnamed_addr constant [25 x i8] c"variant index 0 <= i < 12", align 1
@56 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @55, [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@57 = private unnamed_addr constant [13 x i8] c"string or map", align 1
@58 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @57, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@59 = private unnamed_addr constant [117 x i8] c"LThe OrderedVocab you are attempting to serialize contains holes for indices \C0%, your vocabulary could be corrupted!\00", align 1
@60 = private unnamed_addr constant [18 x i8] c"src/models/mod.rs\00", align 1
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @60, [16 x i8] c"\11\00\00\00\00\00\00\006\00\00\00\0D\00\00\00" }>, align 8
@62 = private unnamed_addr constant [18 x i8] c"tokenizers::models", align 1
@63 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @14, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @13, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @15, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@64 = private unnamed_addr constant [15 x i8] c"LowercaseHelper", align 1
@65 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @12, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@66 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@67 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @66, [24 x i8] zeroinitializer }>, align 8
@68 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@69 = private unnamed_addr constant [1 x i8] c"}", align 1
@70 = private unnamed_addr constant [1 x i8] c"{", align 1
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\001\00\00\00" }>, align 8
@72 = private unnamed_addr constant [1 x i8] c" ", align 1
@73 = private unnamed_addr constant [22 x i8] c"no entry found for key", align 1
@74 = private unnamed_addr constant [33 x i8] c"src/pre_tokenizers/byte_level.rs\00", align 1
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c" \00\00\00\00\00\00\00\CE\00\00\00-\00\00\00" }>, align 8
@76 = private unnamed_addr constant [26 x i8] c"src/tokenizer/encoding.rs\00", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00\07\01\00\00'\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00\07\01\00\00>\00\00\00" }>, align 8
@79 = private unnamed_addr constant [31 x i8] c"src/tokenizer/pre_tokenizer.rs\00", align 1
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @79, [16 x i8] c"\1E\00\00\00\00\00\00\00\EC\00\00\00\22\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @79, [16 x i8] c"\1E\00\00\00\00\00\00\00\D9\00\00\00*\00\00\00" }>, align 8
@82 = private unnamed_addr constant [74 x i8] c"'s|'t|'re|'ve|'m|'ll|'d| ?\\p{L}+| ?\\p{N}+| ?[^\\s\\p{L}\\p{N}]+|\\s+(?!\\S)|\\s+", align 1
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @74, [16 x i8] c" \00\00\00\00\00\00\00-\00\00\00\0A\00\00\00" }>, align 8
@84 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1m_NtCscdodAO9FK5_5alloc6stringNtB6_13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@85 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@86 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@87 = private unnamed_addr constant [180 x i8] c"-`stride` must be strictly less than `max_len=\C0\80\81\00` (note that `max_len` may be shorter than the max length of the original model, as it subtracts the number of special characters\00", align 1
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00?\01\00\00\09\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00d\01\00\00)\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00g\01\00\00$\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00h\01\00\00 \00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00i\01\00\00\1E\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00j\01\00\00\22\00\00\00" }>, align 8
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00k\01\00\00:\00\00\00" }>, align 8
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00l\01\00\000\00\00\00" }>, align 8
@96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00v\01\00\00-\00\00\00" }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00y\01\00\00(\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00z\01\00\00$\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00{\01\00\00\22\00\00\00" }>, align 8
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00|\01\00\00&\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00}\01\00\00>\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00~\01\00\004\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00x\01\00\00\1E\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\19\00\00\00\00\00\00\00f\01\00\00\1A\00\00\00" }>, align 8
@_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE = external global { { { { ptr } } }, {} }
@_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS = external global { { { { ptr } } }, {} }
@105 = private unnamed_addr constant [28 x i8] c"src/models/unigram/model.rs\00", align 1
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\B1\00\00\00)\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\B4\00\00\00\12\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\BE\00\00\004\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\BF\00\00\007\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\C1\00\00\00'\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\C2\00\00\00\11\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00D\01\00\00*\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00E\01\00\00,\00\00\00" }>, align 8
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00N\01\00\00&\00\00\00" }>, align 8
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00G\01\00\00$\00\00\00" }>, align 8
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\1A\01\00\00>\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\1C\01\00\00!\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\004\01\00\009\00\00\00" }>, align 8
@119 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@120 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @119, ptr @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model12UnigramErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceBa_, ptr @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model12UnigramErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idBa_, ptr @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model12UnigramErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionBa_, ptr @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model12UnigramErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeBa_, ptr @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model12UnigramErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideBa_ }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00\22\01\00\00B\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00#\01\00\009\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00%\01\00\008\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00&\01\00\00:\00\00\00" }>, align 8
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00f\01\00\000\00\00\00" }>, align 8
@126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00g\01\00\00\19\00\00\00" }>, align 8
@127 = private unnamed_addr constant [25 x i8] c"\16Reseeding RNG failed: \C0\00", align 1
@128 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.9.5/src/rngs/reseeding.rs\00", align 1
@129 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @128, [16 x i8] c"e\00\00\00\00\00\00\00\D9\00\00\00\0D\00\00\00" }>, align 8
@_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR = hidden global <{ ptr, [56 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char, [56 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10CHAR_BYTES = hidden local_unnamed_addr global <{ ptr, [56 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10CHAR_BYTES0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBa_, [56 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE = internal global <{ ptr, [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBa_, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@130 = private unnamed_addr constant [80 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/slice/index.rs\00", align 1
@131 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @130, [16 x i8] c"O\00\00\00\00\00\00\00\FC\03\00\003\00\00\00" }>, align 8
@132 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @130, [16 x i8] c"O\00\00\00\00\00\00\00\07\04\00\007\00\00\00" }>, align 8
@_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5inner7COUNTER = external global { { { i64 } } }
@133 = private unnamed_addr constant [43 x i8] c"regex: thread ID allocation space exhausted", align 1
@134 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.18/src/util/pool.rs\00", align 1
@135 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @134, [16 x i8] c"k\00\00\00\00\00\00\00\90\01\00\00\11\00\00\00" }>, align 8
@_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism16USED_PARALLELISM = external local_unnamed_addr global { { { i8 } } }
@136 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@137 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@138 = private unnamed_addr constant [18 x i8] c"variant identifier", align 1
@139 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@140 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@141 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt }>, align 8
@142 = private unnamed_addr constant [16 x i8] c"struct ByteLevel", align 1
@143 = private unnamed_addr constant [15 x i8] c"struct Sequence", align 1
@144 = private unnamed_addr constant [19 x i8] c"enum TrainerWrapper", align 1
@145 = private unnamed_addr constant [18 x i8] c"enum LowercaseType", align 1
@146 = private unnamed_addr constant [22 x i8] c"struct LowercaseHelper", align 1
@147 = private unnamed_addr constant [18 x i8] c"enum ByteLevelType", align 1
@148 = private unnamed_addr constant [28 x i8] c"struct ByteLevelDeserializer", align 1
@149 = private unnamed_addr constant [17 x i8] c"struct BPEDecoder", align 1
@150 = private unnamed_addr constant [17 x i8] c"enum SequenceType", align 1
@151 = private unnamed_addr constant [27 x i8] c"struct SequenceDeserializer", align 1
@152 = private unnamed_addr constant [15 x i8] c"struct Encoding", align 1
@153 = private unnamed_addr constant [13 x i8] c"struct Tagged", align 1
@154 = private unnamed_addr constant [13 x i8] c"enum EnumType", align 1
@155 = private unnamed_addr constant [5 x i8] c"<unk>", align 1
@156 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @105, [16 x i8] c"\1B\00\00\00\00\00\00\00]\00\00\00+\00\00\00" }>, align 8
@157 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@158 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@159 = private unnamed_addr constant [13 x i8] c"FromUtf8Error", align 1
@160 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@161 = private unnamed_addr constant [5 x i8] c"error", align 1
@162 = private unnamed_addr constant [31 x i8] c"BpeTrainer can only train a BPE", align 1
@163 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1Q_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB10_3fmt7Display3fmt }>, align 8
@164 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1Q_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBd_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB11_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB10_3fmt7Display3fmt, ptr @163, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_6sourceCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7type_idCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_11descriptionCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_5causeCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7provideCs2JiOgHzbbc7_10tokenizers }>, align 8
@165 = private unnamed_addr constant [43 x i8] c"WordPieceTrainer can only train a WordPiece", align 1
@166 = private unnamed_addr constant [43 x i8] c"WordLevelTrainer can only train a WordLevel", align 1
@167 = private unnamed_addr constant [39 x i8] c"UnigramTrainer can only train a Unigram", align 1
@168 = private unnamed_addr constant [12 x i8] c"unigram.json", align 1
@169 = private unnamed_addr constant [16 x i8] c"\C0\0D-unigram.json\00", align 1
@170 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@171 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @170, ptr @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2JiOgHzbbc7_10tokenizers, ptr @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5cause, ptr @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2JiOgHzbbc7_10tokenizers }>, align 8
@172 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt }>, align 8
@173 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs3_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr @172, ptr @_RNvXs2_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source, ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2JiOgHzbbc7_10tokenizers, ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2JiOgHzbbc7_10tokenizers }>, align 8
@174 = private unnamed_addr constant [52 x i8] c"The vocabulary is empty but at least <unk> is needed", align 1
@175 = private unnamed_addr constant [43 x i8] c"The `unk_id` is larger than vocabulary size", align 1
@176 = private unnamed_addr constant [52 x i8] c"Encountered an unknown token but `unk_id` is missing", align 1
@177 = private unnamed_addr constant [15 x i8] c"EmptyVocabulary", align 1
@178 = private unnamed_addr constant [20 x i8] c"UnkIdNotInVocabulary", align 1
@179 = private unnamed_addr constant [12 x i8] c"MissingUnkId", align 1
@180 = private unnamed_addr constant [4 x i8] c"None", align 1
@181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@182 = private unnamed_addr constant [4 x i8] c"Some", align 1
@183 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@184 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5049808798962425253 to ptr), ptr inttoptr (i64 6049897488304498251 to ptr) }>, align 8
@185 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7080536387315632578 to ptr), ptr inttoptr (i64 5296459061437125857 to ptr) }>, align 8
@186 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4058988971217413493 to ptr), ptr inttoptr (i64 -4059058212563530226 to ptr) }>, align 8
@187 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4262278487820037578 to ptr), ptr inttoptr (i64 7306954111906887224 to ptr) }>, align 8
@switch.table._RNvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\0F\14\0C", align 8
@switch.table._RNvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.153 = private unnamed_addr constant [3 x ptr] [ptr @177, ptr @178, ptr @179], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences0_1__NtB5_11SequenceDef11deserializeINtNtNtCsctIyQp3ax5j_5serde7private2de19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs6_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences0_1__NtB2Z_11SequenceDef11deserialize9___VisitorEB33_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @2, i64 noundef 1)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs2JiOgHzbbc7_10tokenizers(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %trunc = trunc nuw i8 %i.b to i1
  br i1 %trunc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa.0.0.1.sroa_idx, align 8
  %.sroa.6.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.c = trunc nuw i64 %.sroa.04.0.copyload to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys() ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1Q_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEuE16get_or_init_slowNvNvNtB3h_5model15BPE_LOCAL_CACHE27___rust_std_internal_init_fnEB3l_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(80) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !range !6, !noundef !5
  switch i8 %i.d, label %default.unreachable11 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.c
  ]

default.unreachable11:                            ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %.sroa.03.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.e = trunc nuw i64 %.sroa.03.0.copyload to i1
  br i1 %i.e, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %.sroa.5.sroa.4.0..sroa.5.0..sroa.0.0.1.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.sroa.4.0..sroa.5.0..sroa.0.0.1.sroa_idx.sroa_idx, i64 64, i1 false)
  store i8 1, ptr %i.c, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.f = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE), !noalias !45 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !45, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !45, !nonnull !5, !align !7, !noundef !5
  %i.j = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !45 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !noalias !45, !nonnull !5
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull %i.g), !noalias !45, !inline_history !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, i64 noundef %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @67, i64 32, i1 false)
  %.pre = load i8, ptr %i.c, align 8, !range !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  store i8 1, ptr %i.c, align 8
  switch i8 %.pre, label %default.unreachable11 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ], !prof !8

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1G_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEEB3b_)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2g_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.p)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.c, %bb.i
  %.sroa.02.0 = phi ptr [ %0, %bb.i ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !5
  switch i8 %i.b, label %default.unreachable6 [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleECs2JiOgHzbbc7_10tokenizers.exit
    i8 2, label %bb.c
  ]

default.unreachable6:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !range !9, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  store i64 0, ptr %1, align 8
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr %i.e, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.g = tail call noundef nonnull align 8 ptr @_RNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default9collector()
  %i.h = tail call noundef ptr @_RNvMs1_NtCs1D9TkrBnOxz_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  %.pre = load i8, ptr %i.a, align 8, !range !6
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.h, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  switch i8 %.pre, label %default.unreachable6 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.i
  ], !prof !8

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazy7destroyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleECs2JiOgHzbbc7_10tokenizers)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleECs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2072
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 2080 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.l, align 8
  %i.o = icmp eq i64 %i.k, 0
  %i.p = icmp eq i64 %i.m, 1
  %or.cond.i.i.i = and i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleECs2JiOgHzbbc7_10tokenizers.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs6_NtCs1D9TkrBnOxz_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleECs2JiOgHzbbc7_10tokenizers.exit

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.a, %bb.c
  %.sroa.02.0 = phi ptr [ %0, %bb.a ], [ null, %bb.c ], [ %0, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ]
  ret ptr %.sroa.02.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs2JiOgHzbbc7_10tokenizers(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %trunc = trunc nuw i8 %i.b to i1
  br i1 %trunc, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !range !9, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  store i64 0, ptr %1, align 8
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = atomicrmw add ptr @_RNvNtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5inner7COUNTER, i64 1 monotonic, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @133, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #25
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sroa.03.0 = phi i64 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  store i64 %.sroa.03.0, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2k_13pre_tokenizerNtB3d_18PreTokenizedString13into_encodings0_00EEEB2m_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1Y_13pre_tokenizerNtB2R_18PreTokenizedString13into_encodings0_00EEB20_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1Y_13pre_tokenizerNtB2R_18PreTokenizedString13into_encodings0_00EEB20_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtBL_18PreTokenizedString13into_encodings0_00EBP_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtBL_18PreTokenizedString13into_encodings0_00EBP_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1Y_13pre_tokenizerNtB2R_18PreTokenizedString13into_encodings0_00EEB20_.exit: ; preds = %bb.c
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEINtNtB4_6option6OptionmEmEECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEINtNtB4_6option6OptionmEmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEINtNtB4_6option6OptionmEmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs0_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB15_12ModelWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize11ModelHelperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB17_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !52, !noundef !5
  %.not = icmp eq i8 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !53, !nonnull !5, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.c = load i64, ptr %.val.i, align 8, !range !13, !alias.scope !56, !noalias !53, !noundef !5
  switch i64 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !56, !noalias !53, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !56, !noalias !53, !nonnull !5, !noundef !5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #27, !noalias !57
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g, !noalias !53

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #27, !noalias !53
  resume { ptr, i32 } %i.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #27, !noalias !53
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs0_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB15_12ModelWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize13ModelUntaggedNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB17_(ptr noalias noundef nonnull align 8 dereferenceable(328) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !74, !noundef !5 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %i.a, -2
  %i.c = icmp samesign ugt i64 %i.a, 1
  %i.d = select i1 %i.c, i64 %i.b, i64 3
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram14populate_nodes:bb.a
bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !980
  store i64 %.sroa.075.0.copyload, ptr %i.b, align 8, !noalias !981
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x i64> %i.cr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !981
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #25
          to label %bb.af unwind label %bb.ac, !noalias !982

bb.ac:                                            ; preds = %bb.ab
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i48 unwind label %bb.ad, !noalias !982

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body49 unwind label %bb.ae, !noalias !982

bb.ae:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !982
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i48: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body unwind label %bb.ag

bb.af:                                            ; preds = %bb.ab
  unreachable

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i48
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body49

.body49:                                          ; preds = %bb.ad, %bb.ag
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !982
  unreachable

bb.ah:                                            ; preds = %bb.aa, %.thread85
  %.sroa.6.sroa.6.0 = phi i64 [ %i.cs, %bb.aa ], [ %i.cc, %.thread85 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !alias.scope !982
  store i64 %.sroa.6.sroa.6.0, ptr %i.x, align 8, !alias.scope !982
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  %i.cx = load i64, ptr %i.s, align 8, !alias.scope !983, !noundef !5
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %select.unfold, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc54.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54.a:                                       ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.da = lshr i64 %i.cz, 57
  %i.db = trunc nuw nsw i64 %i.da to i8
  %i.dc = load i64, ptr %i.u, align 8, !alias.scope !986, !noundef !5 ; 2 uses
  %i.dd = load ptr, ptr %i.r, align 8, !alias.scope !986, !nonnull !5, !noundef !5 ; 2 uses
  %i.de = insertelement <16 x i8> poison, i8 %i.db, i64 0
  %i.df = shufflevector <16 x i8> %i.de, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.noexc54.a
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc54.a ], [ %i.dw, %bb.al ]
  %.pn.i.i.i = phi i64 [ %i.cz, %.noexc54.a ], [ %i.dx, %bb.al ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.dc   ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.dg, align 1, !noalias !987 ; 2 uses
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.df
  %i.di = bitcast <16 x i1> %i.dh to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.di, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %bb.ak
  %.sroa.06.0.i33.i.i = phi i16 [ %i.dv, %bb.ak ], [ %i.di, %bb.aj ] ; 3 uses
  %i.dj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = add i64 %.sroa.01.0.i.i.i, %i.dk
  %i.dm = and i64 %i.dl, %i.dc
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [32 x i8], ptr %i.dd, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -32
  %i.dq = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dp)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.lr.ph.i.i
  br i1 %i.dq, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ak, !prof !30

._crit_edge.i.i:                                  ; preds = %bb.ak, %bb.aj
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ds = bitcast <16 x i1> %i.dr to i16
  %i.dt = icmp eq i16 %i.ds, 0
  br i1 %i.dt, label %bb.al, label %select.unfold, !prof !11

bb.ak:                                            ; preds = %.noexc55
  %i.du = add i16 %.sroa.06.0.i33.i.i, -1
  %i.dv = and i16 %i.du, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dv, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.dw = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dx = add i64 %.sroa.01.0.i.i.i, %i.dw
  br label %bb.aj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.ai, %bb.at, %bb.as, %bb.aq, %select.unfold
  %lpad.loopexit.split-lp363 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i57 unwind label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body39 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i57: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ax

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc55
  %i.ea = getelementptr inbounds i8, ptr %i.do, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !noundef !5
  %i.ec = zext i32 %i.eb to i64                   ; 4 uses
  %i.ed = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.ee = icmp ugt i64 %i.ed, %i.ec
  br i1 %i.ee, label %bb.ap, label %bb.aq

select.unfold:                                    ; preds = %bb.ah, %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #25
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.as, %bb.aq, %select.unfold
  unreachable

bb.ap:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  %i.ef = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.ec ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !5 ; 2 uses
  %i.ej = load i64, ptr %i.x, align 8, !noundef !5
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ar, label %bb.as, !prof !30

bb.aq:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ec, i64 noundef %i.ed, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #25
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ap
  %i.el = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !5, !noundef !5
  %bcmp = call i32 @bcmp(ptr nonnull %i.en, ptr nonnull %i.el, i64 %i.ei)
  %i.eo = icmp eq i32 %bcmp, 0
  br i1 %i.eo, label %bb.at, label %bb.as, !prof !30

bb.as:                                            ; preds = %bb.ap, %bb.ar
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCscdodAO9FK5_5alloc6string6StringBM_ECs2JiOgHzbbc7_10tokenizers(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #25
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.ar
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.eq = load double, ptr %i.ep, align 8, !noundef !5
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice6insert(ptr noalias noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %.sroa.0.0154, i64 noundef %i.cc, double noundef %i.eq, i64 noundef %i.ec)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i62 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i62: ; preds = %bb.au
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit66 unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit66: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i62
  %2 = icmp ne i64 %i.cc, %.sroa.07.0
  %3 = trunc nuw i8 %.sroa.011.0 to i1
  %or.cond.not = or i1 %2, %3
  %spec.store.select = select i1 %or.cond.not, i8 %.sroa.011.0, i8 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i57, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body39

.body39:                                          ; preds = %bb.ax, %bb.am, %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram18encode_unoptimized(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 17 uses
  %i.h = alloca [24 x i8], align 8                ; 18 uses
  %i.i = alloca [24 x i8], align 8                ; 15 uses
  %i.j = alloca [112 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  call void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice4from(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.l, i64 noundef %i.n)
  invoke void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram14populate_nodes(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.j)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.ag, %bb.m, %bb.b, %.body60
  %.pn39 = phi { ptr, i32 } [ %.pn36.pn, %.body60 ], [ %i.at, %bb.m ], [ %i.o, %bb.b ], [ %i.cg, %bb.ag ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice7LatticeEBJ_(ptr noalias noundef align 8 dereferenceable(112) %i.j) #28
          to label %bb.bg unwind label %bb.ai

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.g, %bb.e, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !range !9, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !9, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load double, ptr %i.v, align 8           ; 2 uses
  %i.x = and i64 %i.u, %i.q
  %or.cond.not120 = icmp eq i64 %i.x, 0
  %.not = icmp eq i64 %i.s, 0
  %or.cond41 = select i1 %or.cond.not120, i1 true, i1 %.not
  br i1 %or.cond41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = trunc nuw i64 %i.u to i1
  br i1 %i.y, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice12sample_nbest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.j, i64 noundef %i.s, double noundef %i.w)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aa = load i8, ptr %i.z, align 8, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice6sample(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j, double noundef %i.w)
          to label %bb.f unwind label %bb.b

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.j)
          to label %bb.f unwind label %bb.b

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  store ptr %i.ad, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.ai, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterINtNtB8_2rc2RcINtNtB21_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENCNvMs2_NtB3L_5modelNtB4S_7Unigram18encode_unoptimized0EE9from_iterB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.k unwind label %.body50

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %.not121133 = icmp eq i64 %i.ao, 0
  br i1 %.not121133, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.o

.body60:                                          ; preds = %bb.az, %bb.ad, %.body50, %.body50.thread112
  %.pn36.pn = phi { ptr, i32 } [ %.pn36111, %.body50.thread112 ], [ %i.cd, %.body50 ], [ %i.dl, %bb.az ], [ %i.ce, %bb.ad ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #28
          to label %.body unwind label %bb.ai

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit85, %bb.k
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtBX_3ops4drop4Drop4dropB1B_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.invoke unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.o:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit79
  %.sroa.07.0134 = phi ptr [ %i.am, %.lr.ph ], [ %i.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit79 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.07.0134, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aw = load ptr, ptr %.sroa.07.0134, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 12 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !1003, !noundef !5 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 9223372036854775807
  br i1 %i.az, label %bb.r, label %bb.p, !prof !30

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit79
  %.pre147 = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.ba = icmp sgt i64 %.pre147, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %.pre147, 0
  br i1 %i.bb, label %._crit_edge.thread, label %bb.bb

bb.q:                                             ; preds = %.thread100
  br i1 %.sroa.018.398, label %.body50.thread, label %.body50.thread112

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i75, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.p
  %lpad.loopexit.split-lp176 = landingpad { ptr, i32 }
          cleanup
  br label %.body50.thread

bb.r:                                             ; preds = %bb.o
  %i.bc = add nuw nsw i64 %i.ay, 1
  store i64 %i.bc, ptr %i.ax, align 8, !noalias !1003
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice5piece(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bd)
          to label %bb.s unwind label %.thread

.thread:                                          ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load i64, ptr %i.ax, align 8, !noundef !5
  %i.bg = add i64 %i.bf, -1
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram6encode:bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #25
          to label %bb.ec unwind label %bb.dz, !noalias !1129

bb.dz:                                            ; preds = %bb.dy
  %i.mo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i180.i unwind label %bb.ea, !noalias !1129

bb.ea:                                            ; preds = %bb.dz
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.body181.i unwind label %bb.eb, !noalias !1129

bb.eb:                                            ; preds = %bb.ea
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1129
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i180.i: ; preds = %bb.dz
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.body.i unwind label %bb.ed, !noalias !1091

bb.ec:                                            ; preds = %bb.dy
  unreachable

bb.ed:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i180.i
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body181.i

.body181.i:                                       ; preds = %bb.ed, %bb.ea
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1129
  unreachable

bb.ee:                                            ; preds = %bb.dx, %.thread233.i
  %.sroa.6.sroa.6.0.i = phi i64 [ %i.mn, %bb.dx ], [ %i.le, %.thread233.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, i64 16, i1 false), !alias.scope !1130, !noalias !1084
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.6.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1130, !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i)
  %i.ms = load i64, ptr %i.cx, align 8, !noalias !1084, !noundef !5 ; 2 uses
  %i.mt = icmp ult i64 %i.lg, %i.ms
  br i1 %i.mt, label %bb.ef, label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  %i.mu = load ptr, ptr %i.cw, align 8, !noalias !1084, !nonnull !5, !noundef !5
  %i.mv = getelementptr inbounds nuw [32 x i8], ptr %i.mu, i64 %i.lg ; 6 uses
  %i.mw = load i64, ptr %i.de, align 8, !alias.scope !1131, !noalias !1084, !noundef !5
  %i.mx = icmp eq i64 %i.mw, 0
  br i1 %i.mx, label %.invoke608.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.my = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %.noexc186.i.a unwind label %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1091 ; 2 uses

.noexc186.i.a:                                    ; preds = %bb.eg
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.mz = lshr i64 %i.my, 57
  %i.na = trunc nuw nsw i64 %i.mz to i8
  %i.nb = load i64, ptr %i.dg, align 8, !alias.scope !1134, !noalias !1084, !noundef !5 ; 2 uses
  %i.nc = load ptr, ptr %i.dd, align 8, !alias.scope !1134, !noalias !1084, !nonnull !5, !noundef !5 ; 2 uses
  %i.nd = insertelement <16 x i8> poison, i8 %i.na, i64 0
  %i.ne = shufflevector <16 x i8> %i.nd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ej, %.noexc186.i.a
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc186.i.a ], [ %i.nv, %bb.ej ]
  %.pn.i.i.i.i = phi i64 [ %i.my, %.noexc186.i.a ], [ %i.nw, %bb.ej ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.nb ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.nf, align 1, !noalias !1135 ; 2 uses
  %i.ng = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.ne
  %i.nh = bitcast <16 x i1> %i.ng to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.nh, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.eh, %bb.ei
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.nu, %bb.ei ], [ %i.nh, %bb.eh ] ; 3 uses
  %i.ni = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.nj = zext nneg i16 %i.ni to i64
  %i.nk = add i64 %.sroa.01.0.i.i.i.i, %i.nj
  %i.nl = and i64 %i.nk, %i.nb
  %i.nm = sub nsw i64 0, %i.nl
  %i.nn = getelementptr inbounds [32 x i8], ptr %i.nc, i64 %i.nm ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -32
  %i.np = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.no)
          to label %.noexc187.i unwind label %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1091

.noexc187.i:                                      ; preds = %.lr.ph.i.i.i
  br i1 %i.np, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.ei, !prof !30

._crit_edge.i.i.i:                                ; preds = %bb.ei, %bb.eh
  %i.nq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.nr = bitcast <16 x i1> %i.nq to i16
  %i.ns = icmp eq i16 %i.nr, 0
  br i1 %i.ns, label %bb.ej, label %.invoke608.i, !prof !11

bb.ei:                                            ; preds = %.noexc187.i
  %i.nt = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.nu = and i16 %i.nt, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.nu, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ej:                                            ; preds = %._crit_edge.i.i.i
  %i.nv = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.nw = add i64 %.sroa.01.0.i.i.i.i, %i.nv
  br label %bb.eh

bb.ek:                                            ; preds = %bb.ee
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.lg, i64 noundef %i.ms, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #25
          to label %bb.as unwind label %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1091

.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.eg, %.invoke608.i, %bb.ek
  %lpad.loopexit.split-lp470 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i unwind label %bb.el, !noalias !1091

bb.el:                                            ; preds = %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body160.i unwind label %bb.em, !noalias !1091

bb.em:                                            ; preds = %bb.el
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1091
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i: ; preds = %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.cp, !noalias !1091

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc187.i
  %i.nz = getelementptr inbounds i8, ptr %i.nn, i64 -8
  %i.oa = load i64, ptr %i.dh, align 8, !noalias !1084, !noundef !5
  %i.ob = load i32, ptr %i.nz, align 4, !noalias !1091, !noundef !5
  %i.oc = zext i32 %i.ob to i64                   ; 3 uses
  %i.od = icmp ugt i64 %i.oa, %i.oc
  br i1 %i.od, label %bb.en, label %.invoke608.i, !prof !30

.invoke608.i:                                     ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ef, %._crit_edge.i.i.i
  %i.oe = phi ptr [ @123, %._crit_edge.i.i.i ], [ @123, %bb.ef ], [ @124, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oe) #25
          to label %.cont609.i unwind label %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1091

.cont609.i:                                       ; preds = %.invoke608.i
  unreachable

bb.en:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.of = load ptr, ptr %i.di, align 8, !noalias !1084, !nonnull !5, !noundef !5
  %i.og = getelementptr inbounds nuw [32 x i8], ptr %i.of, i64 %i.oc
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load double, ptr %i.oh, align 8, !noalias !1091, !noundef !5
  %i.oj = fadd double %i.ji, %i.oi                ; 2 uses
  %i.ok = load i64, ptr %i.mv, align 8, !range !9, !noalias !1091, !noundef !5
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %.not103.i = icmp eq i64 %i.ok, 0
  br i1 %.not103.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.om = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.on = load double, ptr %i.om, align 8, !noalias !1091, !noundef !5
  %i.oo = fcmp ogt double %i.oj, %i.on
  br i1 %i.oo, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.op = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  store double %i.oj, ptr %i.op, align 8, !noalias !1091
  store i64 1, ptr %i.mv, align 8, !noalias !1091
  store i64 %.sroa.011.0355.i, ptr %i.ol, align 8, !noalias !1091
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store i64 %i.oc, ptr %i.oq, align 8, !noalias !1091
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i unwind label %bb.er, !noalias !1091

bb.er:                                            ; preds = %bb.eq
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.es, !noalias !1091

bb.es:                                            ; preds = %bb.er
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1091
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i: ; preds = %bb.eq
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i unwind label %bb.de, !noalias !1091

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i
  %4 = icmp ne i64 %i.le, %.sroa.023.0.i
  %5 = trunc nuw i8 %.sroa.021.0.i to i1
  %or.cond.not.i = or i1 %4, %5
  %spec.store.select.i = select i1 %or.cond.not.i, i8 %.sroa.021.0.i, i8 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1084
  br label %bb.db

_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBT_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1084
  %i.ot = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.ot, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %bb.v, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.ca, %bb.v ]
  %.sroa.6.0.copyload.sink = phi ptr [ %.sroa.6.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.cd, %bb.v ]
  %.sroa.9.0.copyload.sink = phi ptr [ %.sroa.9.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.cf, %bb.v ]
  store i64 %.sroa.0.0.copyload.sink, ptr %i.ad, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.6.0.copyload.sink, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.9.0.copyload.sink, ptr %.sroa.59.0..sroa_idx, align 8
  %i.ou = icmp ult i64 %3, 256
  br i1 %i.ou, label %bb.ex, label %bb.ew

bb.eu:                                            ; preds = %bb.v, %bb.ev
  %.sroa.6.054.sink = phi ptr [ %.sroa.6.054, %bb.ev ], [ %i.cd, %bb.v ]
  %.sroa.9.053.sink = phi ptr [ %.sroa.9.053, %bb.ev ], [ %i.cf, %bb.v ]
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.054.sink, ptr %i.ov, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.053.sink, ptr %i.ow, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.d

bb.ev:                                            ; preds = %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit
  %.sroa.6.054 = phi ptr [ %i.mi, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread ], [ %.sroa.6.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ] ; 2 uses
  %.sroa.9.053 = phi ptr [ @120, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread ], [ %.sroa.9.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.054) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.053) ]
  br label %bb.eu

bb.ew:                                            ; preds = %bb.fe, %bb.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.t

bb.ex:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ez unwind label %bb.fc

bb.ey:                                            ; preds = %bb.fc, %bb.ff
  %.pn = phi { ptr, i32 } [ %i.pf, %bb.fc ], [ %i.ph, %bb.ff ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #28
          to label %common.resume unwind label %bb.u

bb.ez:                                            ; preds = %bb.ex
  %i.ox = load i64, ptr %i.y, align 8, !range !9, !noundef !5
  %i.oy = trunc nuw i64 %i.ox to i1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !range !21, !noundef !5 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.oy, label %bb.fa, label %bb.fb, !prof !11

bb.fa:                                            ; preds = %bb.ez
  %i.pc = load i64, ptr %i.pb, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.pa, i64 %i.pc) #25
          to label %bb.fg unwind label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %i.pd = load ptr, ptr %i.pb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.pe = icmp samesign ule i64 %3, %i.pa
  call void @llvm.assume(i1 %i.pe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pd, ptr nonnull align 1 %2, i64 %3, i1 false)
  store i64 %i.pa, ptr %i.ab, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.pd, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %3, ptr %.sroa.639.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.fd unwind label %bb.ff

bb.fc:                                            ; preds = %bb.ex, %bb.fa, %bb.fd
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB6_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EE10set_valuesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTBY_B1z_EEEBa_(ptr noundef nonnull align 8 %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.x)
          to label %bb.fe unwind label %bb.fc

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ew

bb.ff:                                            ; preds = %bb.fb
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #28
          to label %bb.ey unwind label %bb.u

bb.fg:                                            ; preds = %bb.fa
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs3_NtNtCseKCDlm5CXZl_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngE19reseed_and_generateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 16 dereferenceable(64) %0, ptr noalias noundef align 4 dereferenceable(256) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1141
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_RINvYNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtCshIVG2s6J0nm_9rand_core11SeedableRng12try_from_rngNtNtBV_2os5OsRngECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull %i.d)
  %i.e = load i32, ptr %i.a, align 16, !range !20, !noalias !1141, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !1142, !noalias !1141, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.h, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtCshIVG2s6J0nm_9rand_core2osNtB2_7OsErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.k, i64 48, i1 false)
  %i.l = load i64, ptr %i.j, align 16, !alias.scope !1141, !noalias !1143, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1141
  %i.m = add i64 %i.l, -256
  store i64 %i.m, ptr %i.i, align 8
  tail call void @_RNvNtCse8lV02w4rfA_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %0, i32 noundef 6, ptr noalias noundef nonnull align 4 dereferenceable(256) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB4_9ByteLevel8alphabet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, i64 64) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, i64 64), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1150
  call void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1150
  %i.h = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE), !noalias !1151 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1151, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1151, !nonnull !5, !align !7, !noundef !5
  %i.l = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !1151 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !5, !noalias !1151, !nonnull !5
  %i.p = call noundef i64 %i.o(ptr noundef nonnull %i.i), !noalias !1151, !inline_history !1149
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, i64 noundef %i.p), !noalias !1150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @67, i64 32, i1 false), !noalias !1150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !1150
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtB1M_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetcEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBZ_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c, !noalias !1150

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
end_hunk_2
begin_hunk_3_@_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets:bb.a

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets00B9_.exit.i.i.i.i.i.i.i.i.i, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3gethECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i.i.i.i
  %i.dn = add i64 %.sroa.01.024.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.ad
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3e_5count0EB20_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3e_5count0EB20_.exit.i.i.i.i.i: ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i.i, %_RNCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets00B9_.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.k, %bb.b
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.sroa.01.024.i.i.i.i.i.i.i.i, %bb.k ], [ %i.dn, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.01.024.i.i.i.i.i.i.i.i, %_RNCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets00B9_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.024.i.i.i.i.i.i.i.i, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1210
  store ptr %i.aa, ptr %i.c, align 8, !noalias !1210
  store ptr %i.ad, ptr %i.s, align 8, !noalias !1210
  store i8 0, ptr %i.t, align 8, !noalias !1210
  %i.do = call { i64, i64 } @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtB7_10take_whileINtB2e_9TakeWhileppEB1l_8try_fold5checkcjINtNtNtBb_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0NCINvMB3d_B3a_10wrap_mut_2jcNCNvYIB2w_BM_B3T_EB1l_5count0E0E0INtNtB3f_12control_flow11ControlFlowB3a_jEEB43_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, ptr noalias noundef nonnull %i.u, ptr noalias noundef nonnull dereferenceable(1) %i.t), !noalias !1210
  %i.dp = extractvalue { i64, i64 } %i.do, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1210
  %.not9.i.i.i.i.i = icmp eq i64 %i.dp, 0
  %i.dq = or i64 %i.dp, %.sroa.0.1.i.i.i.i.i.i.i
  %or.cond.not.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %or.cond.not.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTRNtNtCscdodAO9FK5_5alloc6string6StringQTjjEEuNCINvNvB1e_8for_each4callTjB21_ENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0E0E0B3p_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3e_5count0EB20_.exit.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = icmp eq i64 %.sroa.0.015.i.i, 0
  %.pre.pre.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1203, !noalias !1204 ; 2 uses
  %i.ds = icmp eq i64 %.pre.pre.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.dr, i1 true, i1 %i.ds
  %i.dt = icmp eq i64 %.sroa.0.1.i.i.i.i.i.i.i, 1
  %or.cond2.i.i.i.i.i = and i1 %1, %i.dt
  %i.du = select i1 %or.cond.i.i.i.i.i, i1 %or.cond2.i.i.i.i.i, i1 false
  %.sroa.0.0.i.i.i.i.i = select i1 %i.du, i64 0, i64 %.sroa.0.1.i.i.i.i.i.i.i
  %i.dv = add i64 %.sroa.0.0.i.i.i.i.i, %.pre.pre.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !1203, !noalias !1204, !noundef !5
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dv)
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.y, align 8, !alias.scope !1203, !noalias !1204
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not9.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTRNtNtCscdodAO9FK5_5alloc6string6StringQTjjEEuNCINvNvB1e_8for_each4callTjB21_ENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0E0E0B3p_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1203, !noalias !1204, !noundef !5 ; 2 uses
  %.not10.i.i.i.i.i = icmp ult i64 %i.dz, %i.dp
  br i1 %.not10.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTRNtNtCscdodAO9FK5_5alloc6string6StringQTjjEEuNCINvNvB1e_8for_each4callTjB21_ENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0E0E0B3p_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = sub nuw i64 %i.dz, %i.dp
  %i.eb = load i64, ptr %i.y, align 8, !alias.scope !1203, !noalias !1204, !noundef !5
  %.sroa.0.0.i12.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.eb, i64 %i.ea)
  store i64 %.sroa.0.0.i12.i.i.i.i.i, ptr %i.dy, align 8, !alias.scope !1203, !noalias !1204
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTRNtNtCscdodAO9FK5_5alloc6string6StringQTjjEEuNCINvNvB1e_8for_each4callTjB21_ENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0E0E0B3p_.exit.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTRNtNtCscdodAO9FK5_5alloc6string6StringQTjjEEuNCINvNvB1e_8for_each4callTjB21_ENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0E0E0B3p_.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0s_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3e_5count0EB20_.exit.i.i.i.i.i
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.q
  br i1 %exitcond.not.i.i, label %_RINvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB3_8Encoding31process_tokens_with_offsets_mutNCNvNtNtB7_14pre_tokenizers10byte_level15process_offsets0EB7_.exit, label %bb.b

_RINvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB3_8Encoding31process_tokens_with_offsets_mutNCNvNtNtB7_14pre_tokenizers10byte_level15process_offsets0EB7_.exit: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTRNtNtCscdodAO9FK5_5alloc6string6StringQTjjEEuNCINvNvB1e_8for_each4callTjB21_ENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets0E0E0B3p_.exit.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB2_19PreTokenizerWrapperNtNtB4_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !1214, !noundef !5 ; 3 uses
  %i.f = icmp ne i64 %i.e, 8
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %i.h = icmp samesign ugt i64 %i.e, 1
  %i.i = select i1 %i.h, i64 %i.g, i64 6
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
    i64 11, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = tail call { ptr, ptr } @_RNvXNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4bertNtB2_16BertPreTokenizerNtNtB6_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.k, ptr %i.d, align 8, !noalias !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1215
  %i.l = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE, i64 8) acquire, align 8, !noalias !1215
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit.i, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1215
  store ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE, ptr %i.b, align 8, !noalias !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1215
  store ptr %i.b, ptr %i.a, align 8, !noalias !1215
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1215
  br label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit.i

_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit.i: ; preds = %bb.e, %bb.d
  store ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE, ptr %i.c, align 8, !noalias !1215
  %i.n = call { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs0_NtNtBa_14pre_tokenizers10byte_levelNtB1C_9ByteLevelNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3v_EBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB5_9ByteLevelNtNtB9_9tokenizer12PreTokenizer12pre_tokenize.exit

bb.f:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit.i
  %i.p = call { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString9normalizeNCNvXs0_NtNtBa_14pre_tokenizers10byte_levelNtB1G_9ByteLevelNtB8_12PreTokenizer12pre_tokenizes_0EBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB5_9ByteLevelNtNtB9_9tokenizer12PreTokenizer12pre_tokenize.exit

_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB5_9ByteLevelNtNtB9_9tokenizer12PreTokenizer12pre_tokenize.exit: ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit.i, %bb.f
  %.merged.i = phi { ptr, ptr } [ %i.p, %bb.f ], [ %i.n, %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = tail call { ptr, ptr } @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiterNtB4_18CharDelimiterSplitNtNtB8_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = tail call { ptr, ptr } @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.u = tail call { ptr, ptr } @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB4_10WhitespaceNtNtB8_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = tail call { ptr, ptr } @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequenceNtB5_8SequenceNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.x = tail call { ptr, ptr } @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB5_5SplitNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = tail call { ptr, ptr } @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuationNtB5_11PunctuationNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.aa = tail call { ptr, ptr } @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB5_15WhitespaceSplitNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = tail call { ptr, ptr } @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers6digitsNtB5_6DigitsNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.o:                                             ; preds = %bb.a
  %i.ad = tail call { ptr, ptr } @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB5_14UnicodeScriptsNtNtBb_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = tail call { ptr, ptr } @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengthNtB4_11FixedLengthNtNtB8_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB5_9ByteLevelNtNtB9_9tokenizer12PreTokenizer12pre_tokenize.exit, %bb.c
  %.pn = phi { ptr, ptr } [ %i.j, %bb.c ], [ %.merged.i, %_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB5_9ByteLevelNtNtB9_9tokenizer12PreTokenizer12pre_tokenize.exit ], [ %i.r, %bb.g ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.w, %bb.j ], [ %i.x, %bb.k ], [ %i.z, %bb.l ], [ %i.aa, %bb.m ], [ %i.ac, %bb.n ], [ %i.ad, %bb.o ], [ %i.af, %bb.p ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCshIVG2s6J0nm_9rand_core2osNtB2_7OsErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtCs92LSZ8LqIn5_9getrandom5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB2_7UnigramNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = trunc nuw i64 %i.a to i1
  %i.d = load i64, ptr %1, align 8, !range !9, !noundef !5
  %2 = trunc nuw i64 %i.d to i1                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %.split, label %bb.j

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.j, label %bb.d

.split:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.b, align 8, !noundef !5
  %i.g = load i64, ptr %i.e, align 8, !noundef !5
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.split, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpTNtNtCscdodAO9FK5_5alloc6string6StringdEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !9, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = trunc nuw i64 %i.t to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !noundef !5
  %3 = trunc nuw i64 %i.x to i1                   ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %3, label %.split3, label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %3, label %bb.j, label %bb.i

.split3:                                          ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load double, ptr %i.u, align 8, !noundef !5
  %i.aa = load double, ptr %i.y, align 8, !noundef !5
  %i.ab = fcmp oeq double %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split3, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !range !9, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = trunc nuw i64 %i.ad to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !range !9, !noundef !5
  %4 = trunc nuw i64 %i.ah to i1                  ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.j:                                             ; preds = %.split3, %.split, %bb.k, %bb.c, %bb.e, %bb.h, %bb.b, %bb.d, %bb.g, %bb.l, %bb.m
  %.sroa.0.0 = phi i1 [ %i.al, %bb.m ], [ false, %bb.c ], [ %5, %bb.l ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.k ], [ false, %.split ], [ false, %.split3 ]
  ret i1 %.sroa.0.0

bb.k:                                             ; preds = %bb.i
  br i1 %4, label %bb.m, label %bb.j

bb.l:                                             ; preds = %bb.i
  %5 = xor i1 %4, true
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i64, ptr %i.ae, align 8, !noundef !5
  %i.ak = load i64, ptr %i.ai, align 8, !noundef !5
  %i.al = icmp eq i64 %i.aj, %i.ak
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB7_12ByteLevelDef11deserializeNtB2_14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvMNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences0_1__NtB7_11SequenceDef11deserializeNtB2_14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop() unnamed_addr #8 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.a, ptr noundef nonnull @137, ptr noundef nonnull inttoptr (i64 123 to ptr))
  store ptr %i.c, ptr %i.b, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs2AWtUsOyxgP_3std7process5abort() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs2JiOgHzbbc7_10tokenizers6modelss0_1__NtB7_14TrainerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB19_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils1__NtB7_8SequenceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1d_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtB7_13LowercaseTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1m_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss3_1__NtB7_15LowercaseHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1o_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels1_1__NtB7_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1v_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels2_1__NtB7_21ByteLevelDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1D_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpe1__NtB7_10BPEDecoderNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1a_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences1_1__NtB7_12SequenceTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1k_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences2_1__NtB7_20SequenceDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1s_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodings_1__NtB7_8EncodingNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1f_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNvXs0_NtCs2JiOgHzbbc7_10tokenizers6modelsNtBd_12ModelWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtB7_6TaggedB15_11deserializeNtB2_14___FieldVisitorNtB17_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNvXs0_NtCs2JiOgHzbbc7_10tokenizers6modelsNtBd_12ModelWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtB7_8EnumTypeB15_11deserializeNtB2_14___FieldVisitorNtB17_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtBc_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtB7_6TaggedB1k_11deserializeNtB2_14___FieldVisitorNtB1m_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtBc_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtB7_8EnumTypeB1k_11deserializeNtB2_14___FieldVisitorNtB1m_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB5_9ByteLevelNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(3) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE, i64 8) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit

_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit: ; preds = %bb.a, %bb.b
  store ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level2RE, ptr %i.c, align 8
  %i.g = call { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs0_NtNtBa_14pre_tokenizers10byte_levelNtB1C_9ByteLevelNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3v_EBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit
  %i.i = call { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString9normalizeNCNvXs0_NtNtBa_14pre_tokenizers10byte_levelNtB1G_9ByteLevelNtB8_12PreTokenizer12pre_tokenizes_0EBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.d

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit, %bb.c
  %.merged = phi { ptr, ptr } [ %i.i, %bb.c ], [ %i.g, %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0EB1J_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelismSNtNtNtB9_9tokenizer8encoding8EncodingINtB5_27MaybeParallelRefMutIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutBT_EINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutBT_EE18maybe_par_iter_mutB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 36028797018963968) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism15get_parallelism(), !noalias !1220 ; 2 uses
  br i1 %i.a, label %bb.b, label %_RNvXNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelismQSNtNtNtB6_9tokenizer8encoding8EncodingINtB2_21MaybeParallelIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutBR_EINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutBR_EE19into_maybe_par_iterB6_.exit

bb.b:                                             ; preds = %bb.a
  store atomic i8 1, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism16USED_PARALLELISM seq_cst, align 1, !noalias !1220
  br label %_RNvXNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelismQSNtNtNtB6_9tokenizer8encoding8EncodingINtB2_21MaybeParallelIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutBR_EINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutBR_EE19into_maybe_par_iterB6_.exit

_RNvXNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelismQSNtNtNtB6_9tokenizer8encoding8EncodingINtB2_21MaybeParallelIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutBR_EINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutBR_EE19into_maybe_par_iterB6_.exit: ; preds = %bb.a, %bb.b
  tail call void @_RINvMCskqoA5J4kFRc_10rayon_condINtB3_12CondIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutB1q_EE3newQSB1q_EB1w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 36028797018963968) %2, i1 noundef zeroext %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB5_10BPEDecoderNtNtB9_9tokenizer7Decoder12decode_chain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 13 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_3
