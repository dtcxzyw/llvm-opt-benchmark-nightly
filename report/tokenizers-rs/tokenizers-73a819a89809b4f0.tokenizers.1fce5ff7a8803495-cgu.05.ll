Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.05?download=true
inline.NumInlined: 400
inline.NumDeleted: 249
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [11 x i8] c"SequenceDef", align 1
@1 = private unnamed_addr constant [13 x i8] c"pretokenizers", align 1
@2 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtB6_5Debug3fmtBC_ }>, align 8
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolNtB6_5Debug3fmtBE_ }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenNtB6_5Debug3fmtBC_ }>, align 8
@10 = private unnamed_addr constant [92 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/collections/btree/node.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"[\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@12 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"[\00\00\00\00\00\00\00\03\04\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"[\00\00\00\00\00\00\00\13\05\00\00$\00\00\00" }>, align 8
@15 = private unnamed_addr constant [96 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/collections/btree/navigate.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"_\00\00\00\00\00\00\00\C6\00\00\00'\00\00\00" }>, align 8
@17 = private unnamed_addr constant [35 x i8] c"decoded length calculation overflow", align 1
@18 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/base64-0.13.1/src/decode.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00r\00\00\00\0A\00\00\00" }>, align 8
@20 = private unnamed_addr constant [46 x i8] c"Overflow when calculating output buffer length", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\9D\00\00\00\0A\00\00\00" }>, align 8
@22 = private unnamed_addr constant [73 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/str.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"H\00\00\00\00\00\00\00\C8\00\00\00\16\00\00\00" }>, align 8
@24 = private unnamed_addr constant [53 x i8] c"attempt to join into collection with len > usize::MAX", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"H\00\00\00\00\00\00\00\AF\00\00\00\0A\00\00\00" }>, align 8
@26 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"[\00\00\00\00\00\00\00T\07\00\00\05\00\00\00" }>, align 8
@28 = private unnamed_addr constant [12 x i8] c"SequenceType", align 1
@29 = private unnamed_addr constant [8 x i8] c"Sequence", align 1
@30 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @29, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@31 = private unnamed_addr constant [13 x i8] c"PaddingParams", align 1
@32 = private unnamed_addr constant [8 x i8] c"strategy", align 1
@33 = private unnamed_addr constant [9 x i8] c"direction", align 1
@34 = private unnamed_addr constant [18 x i8] c"pad_to_multiple_of", align 1
@35 = private unnamed_addr constant [6 x i8] c"pad_id", align 1
@36 = private unnamed_addr constant [11 x i8] c"pad_type_id", align 1
@37 = private unnamed_addr constant [9 x i8] c"pad_token", align 1
@38 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @32, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @33, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @34, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @35, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @36, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @37, [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@39 = private unnamed_addr constant [12 x i8] c"BatchLongest", align 1
@40 = private unnamed_addr constant [5 x i8] c"Fixed", align 1
@41 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @39, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @40, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@42 = private unnamed_addr constant [4 x i8] c"Left", align 1
@43 = private unnamed_addr constant [5 x i8] c"Right", align 1
@44 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @42, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @43, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@45 = private unnamed_addr constant [18 x i8] c"UnicodeScriptsType", align 1
@46 = private unnamed_addr constant [14 x i8] c"UnicodeScripts", align 1
@47 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @46, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@48 = private unnamed_addr constant [24 x i8] c"variant index 0 <= i < 1", align 1
@49 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @48, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsboAIIHEtPkY_10serde_core2deReNtB5_8Expected3fmt }>, align 8
@51 = private unnamed_addr constant [4 x i8] c"type", align 1
@52 = private unnamed_addr constant [13 x i8] c"string or map", align 1
@53 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @52, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@54 = private unnamed_addr constant [3 x i8] c"ull", align 1
@55 = private unnamed_addr constant [20 x i8] c"UnicodeScriptsHelper", align 1
@56 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @51, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"_\00\00\00\00\00\00\00X\02\00\000\00\00\00" }>, align 8
@58 = private unnamed_addr constant [97 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"`\00\00\00\00\00\00\00\8F\01\00\00.\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"_\00\00\00\00\00\00\00\16\02\00\00/\00\00\00" }>, align 8
@61 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"[\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@63 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"[\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@65 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"[\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\D9\01\00\00\1F\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\DF\01\00\00\1F\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\E8\01\00\00\1F\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\F1\01\00\00\1F\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\FA\01\00\00\1F\00\00\00" }>, align 8
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\03\02\00\00\1F\00\00\00" }>, align 8
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\0C\02\00\00\1F\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\15\02\00\00\1F\00\00\00" }>, align 8
@76 = private unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@77 = private unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF?\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@78 = private unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\FF\FF\FF\FF\FF\FF\FF\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%\FF\FF\FF\FF\FF\FF&'()*+,-./0123456789:;<=>?\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@79 = private unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\016789:;<=>?\FF\FF\FF\FF\FF\FF\FF\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\FF\FF\FF\FF\FF\FF\1C\1D\1E\1F !\22#$%&'()*+,-./012345\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@80 = private unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>?\FF\FF\FF456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@81 = private unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\FF\FF\0D\0E\0F\10\11\12\13\14\15\16\FF\FF\FF\FF\FF\FF\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%\FF&'()*+,\FF-./0\FF\FF\FF\FF123456\FF\FF789:;<\FF\FF=>?\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\0B\01\00\00/\00\00\00" }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\005\01\00\00\19\00\00\00" }>, align 8
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\B8\01\00\00\09\00\00\00" }>, align 8
@85 = private unnamed_addr constant [84 x i8] c"Impossible: must only have 0 to 8 input bytes in last chunk, with no invalid lengths", align 1
@86 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @85, [8 x i8] c"T\00\00\00\00\00\00\00" }>, align 8
@87 = private unnamed_addr constant [45 x i8] c"*internal error: entered unreachable code: \C0\00", align 1
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\A4\01\00\00\0E\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00_\01\00\00\18\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00K\01\00\00\18\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00H\01\00\00\13\00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\005\02\00\00\12\00\00\00" }>, align 8
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"`\00\00\00\00\00\00\00\C3\01\00\00\11\00\00\00" }>, align 8
@94 = private unnamed_addr constant [21 x i8] c"src/utils/padding.rs\00", align 1
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @94, [16 x i8] c"\14\00\00\00\00\00\00\00=\00\00\00\0E\00\00\00" }>, align 8
@96 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@97 = private unnamed_addr constant [18 x i8] c"variant identifier", align 1
@98 = private unnamed_addr constant [15 x i8] c"struct Sequence", align 1
@99 = private unnamed_addr constant [17 x i8] c"enum SequenceType", align 1
@100 = private unnamed_addr constant [27 x i8] c"struct SequenceDeserializer", align 1
@101 = private unnamed_addr constant [20 x i8] c"struct PaddingParams", align 1
@102 = private unnamed_addr constant [20 x i8] c"enum PaddingStrategy", align 1
@103 = private unnamed_addr constant [21 x i8] c"enum PaddingDirection", align 1
@104 = private unnamed_addr constant [27 x i8] c"struct UnicodeScriptsHelper", align 1
@105 = private unnamed_addr constant [23 x i8] c"enum UnicodeScriptsType", align 1
@106 = private unnamed_addr constant [4 x i8] c"None", align 1
@107 = private unnamed_addr constant [4 x i8] c"Some", align 1
@108 = private unnamed_addr constant [5 x i8] c"[PAD]", align 1
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"_\00\00\00\00\00\00\00\A1\00\00\00$\00\00\00" }>, align 8
@switch.table._RINvNtCs5OnaahQymqO_6base646decode13decode_configReECs2JiOgHzbbc7_10tokenizers = private unnamed_addr constant [6 x ptr] [ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences0_1__NtB5_11SequenceDef11deserializeINtNtNtCsctIyQp3ax5j_5serde7private2de19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs6_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences0_1__NtB2Z_11SequenceDef11deserialize9___VisitorEB33_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @2, i64 noundef 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugSet7entriesRNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB13_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.c = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.h, %.lr.ph ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB19_6string6StringEINtNtNtBa_5slice4iter4IterB14_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtBa_5slice4iter4IterB14_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolINtNtNtBa_5slice4iter4IterB14_EEB1c_(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCscdodAO9FK5_5alloc6string6StringRmINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB13_mEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.d = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ]
  %i.g = phi { ptr, ptr } [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %i.h = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_0
begin_hunk_1_@_RINvNtCs5OnaahQymqO_6base646decode13decode_configReECs2JiOgHzbbc7_10tokenizers:bb.a
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 50 uses
  %i.af = and i64 %2, 7                           ; 2 uses
  switch i64 %i.af, label %bb.l [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 5, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.g:                                             ; preds = %switch.lookup
  br label %bb.l

bb.h:                                             ; preds = %switch.lookup, %switch.lookup
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.loopexit56, label %bb.m

bb.i:                                             ; preds = %switch.lookup
  br label %bb.l

bb.j:                                             ; preds = %switch.lookup
  br label %bb.l

bb.k:                                             ; preds = %switch.lookup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %switch.lookup
  %.sroa.013.0.i.i = phi i64 [ %i.af, %switch.lookup ], [ 8, %bb.g ], [ 10, %bb.i ], [ 11, %bb.j ], [ 12, %bb.k ]
  %i.ag = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 %.sroa.013.0.i.i) ; 4 uses
  %i.ah = icmp samesign ult i64 %i.ag, 32
  br i1 %i.ah, label %.loopexit396.i.i, label %.split.i.i

bb.m:                                             ; preds = %bb.h
  %i.ai = add nsw i64 %2, -1                      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !397, !noalias !398, !noundef !3 ; 3 uses
  %i.al = icmp eq i8 %i.ak, 61
  br i1 %i.al, label %.loopexit56, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = zext i8 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !399, !noundef !3
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %bb.o, label %.loopexit56

bb.o:                                             ; preds = %bb.n
  br label %.loopexit56

.split.i.i:                                       ; preds = %bb.l
  %i.aq = add nsw i64 %i.ag, -32
  br label %bb.p

bb.p:                                             ; preds = %.noexc15, %.split.i.i
  %.sroa.0.01377.i.i = phi i64 [ %i.z, %.split.i.i ], [ %i.ng, %.noexc15 ]
  %.sroa.020.01376.i.i = phi i64 [ 0, %.split.i.i ], [ %i.ar, %.noexc15 ] ; 34 uses
  %.sroa.044.01375.i.i = phi i64 [ 0, %.split.i.i ], [ %i.nf, %.noexc15 ] ; 4 uses
  %i.ar = add nuw nsw i64 %.sroa.020.01376.i.i, 32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.01376.i.i ; 32 uses
  %i.at = add nuw i64 %.sroa.044.01375.i.i, 26    ; 2 uses
  %.not121.i.i = icmp ugt i64 %i.at, %i.ad
  br i1 %.not121.i.i, label %.invoke, label %bb.q, !prof !13

.loopexit396.i.i:                                 ; preds = %.noexc15, %bb.l
  %.sroa.044.1.i.i = phi i64 [ 0, %bb.l ], [ %i.nf, %.noexc15 ] ; 3 uses
  %.sroa.020.1.i.i = phi i64 [ 0, %bb.l ], [ %i.ar, %.noexc15 ] ; 4 uses
  %.sroa.0.1.i.i = phi i64 [ %i.z, %bb.l ], [ %i.ng, %.noexc15 ] ; 3 uses
  %i.au = icmp samesign ult i64 %i.ag, 8
  br i1 %i.au, label %.loopexit394.i.i, label %.split1378.i.i

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.044.01375.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.aw = load i8, ptr %i.as, align 1, !alias.scope !402, !noalias !403, !noundef !3 ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !401, !noalias !404, !noundef !3 ; 2 uses
  %i.ba = icmp eq i8 %i.az, -1
  br i1 %i.ba, label %.loopexit56, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !402, !noalias !403, !noundef !3 ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !401, !noalias !404, !noundef !3 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, -1
  br i1 %i.bg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !402, !noalias !403, !noundef !3 ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !401, !noalias !404, !noundef !3 ; 2 uses
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bn = or disjoint i64 %.sroa.020.01376.i.i, 1
  br label %.loopexit56

bb.u:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !402, !noalias !403, !noundef !3 ; 2 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !401, !noalias !404, !noundef !3 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bu = or disjoint i64 %.sroa.020.01376.i.i, 2
  br label %.loopexit56

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !402, !noalias !403, !noundef !3 ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !401, !noalias !404, !noundef !3 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, -1
  br i1 %i.ca, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.cb = or disjoint i64 %.sroa.020.01376.i.i, 3
  br label %.loopexit56

bb.y:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !402, !noalias !403, !noundef !3 ; 2 uses
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !401, !noalias !404, !noundef !3 ; 2 uses
  %i.ch = icmp eq i8 %i.cg, -1
  br i1 %i.ch, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.ci = or disjoint i64 %.sroa.020.01376.i.i, 4
  br label %.loopexit56

bb.aa:                                            ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !402, !noalias !403, !noundef !3 ; 2 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !401, !noalias !404, !noundef !3 ; 2 uses
  %i.co = icmp eq i8 %i.cn, -1
  br i1 %i.co, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.cp = or disjoint i64 %.sroa.020.01376.i.i, 5
  br label %.loopexit56

bb.ac:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.as, i64 7
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !402, !noalias !403, !noundef !3 ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !401, !noalias !404, !noundef !3 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.cw = or disjoint i64 %.sroa.020.01376.i.i, 6
  br label %.loopexit56

bb.ae:                                            ; preds = %bb.ac
  %i.cx = or disjoint i64 %.sroa.020.01376.i.i, 7
  br label %.loopexit56

bb.af:                                            ; preds = %bb.ac
  %i.cy = zext i8 %i.az to i64
  %i.cz = shl i64 %i.cy, 58
  %i.da = zext i8 %i.bf to i64
  %i.db = shl nuw nsw i64 %i.da, 52
  %i.dc = or i64 %i.db, %i.cz
  %i.dd = zext i8 %i.bl to i64
  %i.de = shl nuw nsw i64 %i.dd, 46
  %i.df = or i64 %i.dc, %i.de
  %i.dg = zext i8 %i.bs to i64
  %i.dh = shl nuw nsw i64 %i.dg, 40
  %i.di = or i64 %i.df, %i.dh
  %i.dj = zext i8 %i.bz to i64
  %i.dk = shl nuw nsw i64 %i.dj, 34
  %i.dl = or i64 %i.di, %i.dk
  %i.dm = zext i8 %i.cg to i64
  %i.dn = shl nuw nsw i64 %i.dm, 28
  %i.do = or i64 %i.dl, %i.dn
  %i.dp = zext i8 %i.cn to i64
  %i.dq = shl nuw nsw i64 %i.dp, 22
  %i.dr = or i64 %i.do, %i.dq
  %i.ds = zext i8 %i.cu to i64
  %i.dt = shl nuw nsw i64 %i.ds, 16
  %i.du = or i64 %i.dr, %i.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !405
  %i.dv = call i64 @llvm.bswap.i64(i64 %i.du)
  store i64 %i.dv, ptr %i.g, align 8, !noalias !405
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.av, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !405
  %i.dw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.dy = load i8, ptr %i.dw, align 1, !alias.scope !408, !noalias !409, !noundef !3 ; 2 uses
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !407, !noalias !410, !noundef !3 ; 2 uses
  %i.ec = icmp eq i8 %i.eb, -1
  br i1 %i.ec, label %.loopexit398.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !408, !noalias !409, !noundef !3 ; 2 uses
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !407, !noalias !410, !noundef !3 ; 2 uses
  %i.ei = icmp eq i8 %i.eh, -1
  br i1 %i.ei, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !408, !noalias !409, !noundef !3 ; 2 uses
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !407, !noalias !410, !noundef !3 ; 2 uses
  %i.eo = icmp eq i8 %i.en, -1
  br i1 %i.eo, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ep = or disjoint i64 %.sroa.020.01376.i.i, 9
  br label %.loopexit56

bb.aj:                                            ; preds = %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %i.as, i64 11
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !408, !noalias !409, !noundef !3 ; 2 uses
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !407, !noalias !410, !noundef !3 ; 2 uses
  %i.ev = icmp eq i8 %i.eu, -1
  br i1 %i.ev, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.ew = or disjoint i64 %.sroa.020.01376.i.i, 10
  br label %.loopexit56

bb.al:                                            ; preds = %bb.aj
  %i.ex = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !408, !noalias !409, !noundef !3 ; 2 uses
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !alias.scope !407, !noalias !410, !noundef !3 ; 2 uses
  %i.fc = icmp eq i8 %i.fb, -1
  br i1 %i.fc, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.fd = or disjoint i64 %.sroa.020.01376.i.i, 11
  br label %.loopexit56

bb.an:                                            ; preds = %bb.al
  %i.fe = getelementptr inbounds nuw i8, ptr %i.as, i64 13
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !408, !noalias !409, !noundef !3 ; 2 uses
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !407, !noalias !410, !noundef !3 ; 2 uses
  %i.fj = icmp eq i8 %i.fi, -1
  br i1 %i.fj, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.fk = or disjoint i64 %.sroa.020.01376.i.i, 12
  br label %.loopexit56

bb.ap:                                            ; preds = %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %i.as, i64 14
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !408, !noalias !409, !noundef !3 ; 2 uses
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !407, !noalias !410, !noundef !3 ; 2 uses
  %i.fq = icmp eq i8 %i.fp, -1
  br i1 %i.fq, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.fr = or disjoint i64 %.sroa.020.01376.i.i, 13
  br label %.loopexit56

bb.ar:                                            ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %i.as, i64 15
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !408, !noalias !409, !noundef !3 ; 2 uses
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !407, !noalias !410, !noundef !3 ; 2 uses
  %i.fx = icmp eq i8 %i.fw, -1
  br i1 %i.fx, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.fy = or disjoint i64 %.sroa.020.01376.i.i, 14
  br label %.loopexit56

bb.at:                                            ; preds = %bb.ar
  %i.fz = or disjoint i64 %.sroa.020.01376.i.i, 15
  br label %.loopexit56

.loopexit398.i.i:                                 ; preds = %.noexc12
  %i.ga = or disjoint i64 %.sroa.020.01376.i.i, 8
  br label %.loopexit56

bb.au:                                            ; preds = %bb.ar
  %i.gb = zext i8 %i.eb to i64
  %i.gc = shl i64 %i.gb, 58
  %i.gd = zext i8 %i.eh to i64
  %i.ge = shl nuw nsw i64 %i.gd, 52
  %i.gf = or i64 %i.ge, %i.gc
  %i.gg = zext i8 %i.en to i64
  %i.gh = shl nuw nsw i64 %i.gg, 46
  %i.gi = or i64 %i.gf, %i.gh
  %i.gj = zext i8 %i.eu to i64
  %i.gk = shl nuw nsw i64 %i.gj, 40
  %i.gl = or i64 %i.gi, %i.gk
  %i.gm = zext i8 %i.fb to i64
  %i.gn = shl nuw nsw i64 %i.gm, 34
  %i.go = or i64 %i.gl, %i.gn
  %i.gp = zext i8 %i.fi to i64
  %i.gq = shl nuw nsw i64 %i.gp, 28
  %i.gr = or i64 %i.go, %i.gq
  %i.gs = zext i8 %i.fp to i64
  %i.gt = shl nuw nsw i64 %i.gs, 22
  %i.gu = or i64 %i.gr, %i.gt
  %i.gv = zext i8 %i.fw to i64
  %i.gw = shl nuw nsw i64 %i.gv, 16
  %i.gx = or i64 %i.gu, %i.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !411
  %i.gy = call i64 @llvm.bswap.i64(i64 %i.gx)
  store i64 %i.gy, ptr %i.f, align 8, !noalias !411
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.dx, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !411
  %i.gz = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.hb = load i8, ptr %i.gz, align 1, !alias.scope !414, !noalias !415, !noundef !3 ; 2 uses
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !413, !noalias !416, !noundef !3 ; 2 uses
  %i.hf = icmp eq i8 %i.he, -1
  br i1 %i.hf, label %.loopexit399.i.i, label %bb.av

bb.av:                                            ; preds = %.noexc13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !414, !noalias !415, !noundef !3 ; 2 uses
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !413, !noalias !416, !noundef !3 ; 2 uses
  %i.hl = icmp eq i8 %i.hk, -1
  br i1 %i.hl, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hm = getelementptr inbounds nuw i8, ptr %i.as, i64 18
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !414, !noalias !415, !noundef !3 ; 2 uses
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !413, !noalias !416, !noundef !3 ; 2 uses
  %i.hr = icmp eq i8 %i.hq, -1
  br i1 %i.hr, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.hs = or disjoint i64 %.sroa.020.01376.i.i, 17
  br label %.loopexit56

bb.ay:                                            ; preds = %bb.aw
  %i.ht = getelementptr inbounds nuw i8, ptr %i.as, i64 19
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !414, !noalias !415, !noundef !3 ; 2 uses
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !413, !noalias !416, !noundef !3 ; 2 uses
  %i.hy = icmp eq i8 %i.hx, -1
  br i1 %i.hy, label %bb.bb, label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.hz = or disjoint i64 %.sroa.020.01376.i.i, 18
  br label %.loopexit56

bb.ba:                                            ; preds = %bb.ay
  %i.ia = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !414, !noalias !415, !noundef !3 ; 2 uses
  %i.ic = zext i8 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !413, !noalias !416, !noundef !3 ; 2 uses
  %i.if = icmp eq i8 %i.ie, -1
  br i1 %i.if, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.ig = or disjoint i64 %.sroa.020.01376.i.i, 19
  br label %.loopexit56

bb.bc:                                            ; preds = %bb.ba
  %i.ih = getelementptr inbounds nuw i8, ptr %i.as, i64 21
  %i.ii = load i8, ptr %i.ih, align 1, !alias.scope !414, !noalias !415, !noundef !3 ; 2 uses
  %i.ij = zext i8 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !413, !noalias !416, !noundef !3 ; 2 uses
  %i.im = icmp eq i8 %i.il, -1
  br i1 %i.im, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.in = or disjoint i64 %.sroa.020.01376.i.i, 20
  br label %.loopexit56

bb.be:                                            ; preds = %bb.bc
  %i.io = getelementptr inbounds nuw i8, ptr %i.as, i64 22
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !414, !noalias !415, !noundef !3 ; 2 uses
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !413, !noalias !416, !noundef !3 ; 2 uses
  %i.it = icmp eq i8 %i.is, -1
  br i1 %i.it, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.iu = or disjoint i64 %.sroa.020.01376.i.i, 21
  br label %.loopexit56

bb.bg:                                            ; preds = %bb.be
  %i.iv = getelementptr inbounds nuw i8, ptr %i.as, i64 23
  %i.iw = load i8, ptr %i.iv, align 1, !alias.scope !414, !noalias !415, !noundef !3 ; 2 uses
  %i.ix = zext i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !alias.scope !413, !noalias !416, !noundef !3 ; 2 uses
  %i.ja = icmp eq i8 %i.iz, -1
  br i1 %i.ja, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %bb.be
  %i.jb = or disjoint i64 %.sroa.020.01376.i.i, 22
  br label %.loopexit56

bb.bi:                                            ; preds = %bb.bg
  %i.jc = or disjoint i64 %.sroa.020.01376.i.i, 23
  br label %.loopexit56

.loopexit399.i.i:                                 ; preds = %.noexc13
  %i.jd = or disjoint i64 %.sroa.020.01376.i.i, 16
  br label %.loopexit56

bb.bj:                                            ; preds = %bb.bg
  %i.je = zext i8 %i.he to i64
  %i.jf = shl i64 %i.je, 58
  %i.jg = zext i8 %i.hk to i64
  %i.jh = shl nuw nsw i64 %i.jg, 52
  %i.ji = or i64 %i.jh, %i.jf
  %i.jj = zext i8 %i.hq to i64
  %i.jk = shl nuw nsw i64 %i.jj, 46
  %i.jl = or i64 %i.ji, %i.jk
  %i.jm = zext i8 %i.hx to i64
  %i.jn = shl nuw nsw i64 %i.jm, 40
  %i.jo = or i64 %i.jl, %i.jn
  %i.jp = zext i8 %i.ie to i64
  %i.jq = shl nuw nsw i64 %i.jp, 34
  %i.jr = or i64 %i.jo, %i.jq
  %i.js = zext i8 %i.il to i64
  %i.jt = shl nuw nsw i64 %i.js, 28
  %i.ju = or i64 %i.jr, %i.jt
  %i.jv = zext i8 %i.is to i64
  %i.jw = shl nuw nsw i64 %i.jv, 22
  %i.jx = or i64 %i.ju, %i.jw
  %i.jy = zext i8 %i.iz to i64
  %i.jz = shl nuw nsw i64 %i.jy, 16
  %i.ka = or i64 %i.jx, %i.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !417
  %i.kb = call i64 @llvm.bswap.i64(i64 %i.ka)
  store i64 %i.kb, ptr %i.e, align 8, !noalias !417
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.ha, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !417
  %i.kc = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %i.av, i64 18
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.ke = load i8, ptr %i.kc, align 1, !alias.scope !420, !noalias !421, !noundef !3 ; 2 uses
  %i.kf = zext i8 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !alias.scope !419, !noalias !422, !noundef !3 ; 2 uses
  %i.ki = icmp eq i8 %i.kh, -1
  br i1 %i.ki, label %.loopexit400.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc14
  %i.kj = getelementptr inbounds nuw i8, ptr %i.as, i64 25
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !420, !noalias !421, !noundef !3 ; 2 uses
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !alias.scope !419, !noalias !422, !noundef !3 ; 2 uses
  %i.ko = icmp eq i8 %i.kn, -1
  br i1 %i.ko, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kp = getelementptr inbounds nuw i8, ptr %i.as, i64 26
  %i.kq = load i8, ptr %i.kp, align 1, !alias.scope !420, !noalias !421, !noundef !3 ; 2 uses
  %i.kr = zext i8 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !alias.scope !419, !noalias !422, !noundef !3 ; 2 uses
  %i.ku = icmp eq i8 %i.kt, -1
  br i1 %i.ku, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.kv = or disjoint i64 %.sroa.020.01376.i.i, 25
  br label %.loopexit56

bb.bn:                                            ; preds = %bb.bl
  %i.kw = getelementptr inbounds nuw i8, ptr %i.as, i64 27
  %i.kx = load i8, ptr %i.kw, align 1, !alias.scope !420, !noalias !421, !noundef !3 ; 2 uses
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !alias.scope !419, !noalias !422, !noundef !3 ; 2 uses
  %i.lb = icmp eq i8 %i.la, -1
  br i1 %i.lb, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.lc = or disjoint i64 %.sroa.020.01376.i.i, 26
  br label %.loopexit56

bb.bp:                                            ; preds = %bb.bn
  %i.ld = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.le = load i8, ptr %i.ld, align 1, !alias.scope !420, !noalias !421, !noundef !3 ; 2 uses
  %i.lf = zext i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !alias.scope !419, !noalias !422, !noundef !3 ; 2 uses
  %i.li = icmp eq i8 %i.lh, -1
  br i1 %i.li, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.lj = or disjoint i64 %.sroa.020.01376.i.i, 27
  br label %.loopexit56

bb.br:                                            ; preds = %bb.bp
  %i.lk = getelementptr inbounds nuw i8, ptr %i.as, i64 29
  %i.ll = load i8, ptr %i.lk, align 1, !alias.scope !420, !noalias !421, !noundef !3 ; 2 uses
  %i.lm = zext i8 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !alias.scope !419, !noalias !422, !noundef !3 ; 2 uses
  %i.lp = icmp eq i8 %i.lo, -1
  br i1 %i.lp, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.bp
  %i.lq = or disjoint i64 %.sroa.020.01376.i.i, 28
  br label %.loopexit56

bb.bt:                                            ; preds = %bb.br
  %i.lr = getelementptr inbounds nuw i8, ptr %i.as, i64 30
  %i.ls = load i8, ptr %i.lr, align 1, !alias.scope !420, !noalias !421, !noundef !3 ; 2 uses
  %i.lt = zext i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !alias.scope !419, !noalias !422, !noundef !3 ; 2 uses
  %i.lw = icmp eq i8 %i.lv, -1
  br i1 %i.lw, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.lx = or disjoint i64 %.sroa.020.01376.i.i, 29
  br label %.loopexit56

bb.bv:                                            ; preds = %bb.bt
  %i.ly = getelementptr inbounds nuw i8, ptr %i.as, i64 31
  %i.lz = load i8, ptr %i.ly, align 1, !alias.scope !420, !noalias !421, !noundef !3 ; 2 uses
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !alias.scope !419, !noalias !422, !noundef !3 ; 2 uses
  %i.md = icmp eq i8 %i.mc, -1
  br i1 %i.md, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.bt
  %i.me = or disjoint i64 %.sroa.020.01376.i.i, 30
  br label %.loopexit56

bb.bx:                                            ; preds = %bb.bv
  %i.mf = or disjoint i64 %.sroa.020.01376.i.i, 31
  br label %.loopexit56

.loopexit400.i.i:                                 ; preds = %.noexc14
  %i.mg = or disjoint i64 %.sroa.020.01376.i.i, 24
  br label %.loopexit56

bb.by:                                            ; preds = %bb.bv
  %i.mh = zext i8 %i.kh to i64
  %i.mi = shl i64 %i.mh, 58
  %i.mj = zext i8 %i.kn to i64
  %i.mk = shl nuw nsw i64 %i.mj, 52
  %i.ml = or i64 %i.mk, %i.mi
  %i.mm = zext i8 %i.kt to i64
  %i.mn = shl nuw nsw i64 %i.mm, 46
  %i.mo = or i64 %i.ml, %i.mn
  %i.mp = zext i8 %i.la to i64
  %i.mq = shl nuw nsw i64 %i.mp, 40
  %i.mr = or i64 %i.mo, %i.mq
  %i.ms = zext i8 %i.lh to i64
  %i.mt = shl nuw nsw i64 %i.ms, 34
  %i.mu = or i64 %i.mr, %i.mt
  %i.mv = zext i8 %i.lo to i64
  %i.mw = shl nuw nsw i64 %i.mv, 28
  %i.mx = or i64 %i.mu, %i.mw
  %i.my = zext i8 %i.lv to i64
  %i.mz = shl nuw nsw i64 %i.my, 22
  %i.na = or i64 %i.mx, %i.mz
  %i.nb = zext i8 %i.mc to i64
  %i.nc = shl nuw nsw i64 %i.nb, 16
  %i.nd = or i64 %i.na, %i.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !423
  %i.ne = call i64 @llvm.bswap.i64(i64 %i.nd)
  store i64 %i.ne, ptr %i.d, align 8, !noalias !423
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.kd, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !423
  %i.nf = add nuw i64 %.sroa.044.01375.i.i, 24    ; 2 uses
  %i.ng = add i64 %.sroa.0.01377.i.i, -4          ; 2 uses
  %.not119.i.i = icmp ugt i64 %i.ar, %i.aq
  br i1 %.not119.i.i, label %.loopexit396.i.i, label %bb.p

.split1378.i.i:                                   ; preds = %.loopexit396.i.i
  %i.nh = add nsw i64 %i.ag, -8                   ; 2 uses
  %i.ni = icmp ult i64 %.sroa.020.1.i.i, %i.nh
  br i1 %i.ni, label %.lr.ph.i.i, label %.loopexit394.i.i

.lr.ph.i.i:                                       ; preds = %.split1378.i.i, %.noexc17
  %.sroa.0.21381.i.i = phi i64 [ %i.qq, %.noexc17 ], [ %.sroa.0.1.i.i, %.split1378.i.i ]
  %.sroa.020.21380.i.i = phi i64 [ %i.nj, %.noexc17 ], [ %.sroa.020.1.i.i, %.split1378.i.i ] ; 10 uses
  %.sroa.044.21379.i.i = phi i64 [ %i.nl, %.noexc17 ], [ %.sroa.044.1.i.i, %.split1378.i.i ] ; 5 uses
  %i.nj = add nuw nsw i64 %.sroa.020.21380.i.i, 8 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.21380.i.i ; 8 uses
  %i.nl = add i64 %.sroa.044.21379.i.i, 6         ; 2 uses
  %i.nm = add nuw i64 %.sroa.044.21379.i.i, 8     ; 2 uses
  %i.nn = icmp ugt i64 %.sroa.044.21379.i.i, -9
  %.not127.i.i = icmp ugt i64 %i.nm, %i.ad
  %or.cond134.i.i = or i1 %i.nn, %.not127.i.i
  br i1 %or.cond134.i.i, label %.invoke, label %bb.bz, !prof !13

.loopexit394.i.i:                                 ; preds = %.noexc17, %.split1378.i.i, %.loopexit396.i.i
  %.sroa.044.3.i.i = phi i64 [ %.sroa.044.1.i.i, %.loopexit396.i.i ], [ %.sroa.044.1.i.i, %.split1378.i.i ], [ %i.nl, %.noexc17 ] ; 2 uses
  %.sroa.020.3.i.i = phi i64 [ %.sroa.020.1.i.i, %.loopexit396.i.i ], [ %.sroa.020.1.i.i, %.split1378.i.i ], [ %i.nj, %.noexc17 ] ; 2 uses
  %.sroa.0.3.i.i = phi i64 [ %.sroa.0.1.i.i, %.loopexit396.i.i ], [ %.sroa.0.1.i.i, %.split1378.i.i ], [ %i.qq, %.noexc17 ] ; 2 uses
  %i.no = icmp ugt i64 %.sroa.0.3.i.i, 1
  br i1 %i.no, label %.lr.ph1387.i.i, label %._crit_edge.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.044.21379.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.nq = load i8, ptr %i.nk, align 1, !alias.scope !426, !noalias !427, !noundef !3 ; 2 uses
  %i.nr = zext i8 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !alias.scope !425, !noalias !428, !noundef !3 ; 2 uses
  %i.nu = icmp eq i8 %i.nt, -1
  br i1 %i.nu, label %.loopexit56, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nk, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !alias.scope !426, !noalias !427, !noundef !3 ; 2 uses
  %i.nx = zext i8 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !alias.scope !425, !noalias !428, !noundef !3 ; 2 uses
  %i.oa = icmp eq i8 %i.nz, -1
  br i1 %i.oa, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nk, i64 2
  %i.oc = load i8, ptr %i.ob, align 1, !alias.scope !426, !noalias !427, !noundef !3 ; 2 uses
  %i.od = zext i8 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !alias.scope !425, !noalias !428, !noundef !3 ; 2 uses
  %i.og = icmp eq i8 %i.of, -1
  br i1 %i.og, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.oh = or disjoint i64 %.sroa.020.21380.i.i, 1
  br label %.loopexit56

bb.cd:                                            ; preds = %bb.cb
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nk, i64 3
  %i.oj = load i8, ptr %i.oi, align 1, !alias.scope !426, !noalias !427, !noundef !3 ; 2 uses
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !alias.scope !425, !noalias !428, !noundef !3 ; 2 uses
  %i.on = icmp eq i8 %i.om, -1
  br i1 %i.on, label %bb.cg, label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  %i.oo = or disjoint i64 %.sroa.020.21380.i.i, 2
  br label %.loopexit56

bb.cf:                                            ; preds = %bb.cd
  %i.op = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.oq = load i8, ptr %i.op, align 1, !alias.scope !426, !noalias !427, !noundef !3 ; 2 uses
  %i.or = zext i8 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !alias.scope !425, !noalias !428, !noundef !3 ; 2 uses
  %i.ou = icmp eq i8 %i.ot, -1
  br i1 %i.ou, label %bb.ci, label %bb.ch

bb.cg:                                            ; preds = %bb.cd
  %i.ov = or disjoint i64 %.sroa.020.21380.i.i, 3
  br label %.loopexit56

bb.ch:                                            ; preds = %bb.cf
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nk, i64 5
  %i.ox = load i8, ptr %i.ow, align 1, !alias.scope !426, !noalias !427, !noundef !3 ; 2 uses
  %i.oy = zext i8 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !alias.scope !425, !noalias !428, !noundef !3 ; 2 uses
  %i.pb = icmp eq i8 %i.pa, -1
  br i1 %i.pb, label %bb.ck, label %bb.cj

bb.ci:                                            ; preds = %bb.cf
  %i.pc = or disjoint i64 %.sroa.020.21380.i.i, 4
  br label %.loopexit56

bb.cj:                                            ; preds = %bb.ch
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nk, i64 6
  %i.pe = load i8, ptr %i.pd, align 1, !alias.scope !426, !noalias !427, !noundef !3 ; 2 uses
  %i.pf = zext i8 %i.pe to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !alias.scope !425, !noalias !428, !noundef !3 ; 2 uses
  %i.pi = icmp eq i8 %i.ph, -1
  br i1 %i.pi, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.ch
  %i.pj = or disjoint i64 %.sroa.020.21380.i.i, 5
  br label %.loopexit56

bb.cl:                                            ; preds = %bb.cj
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nk, i64 7
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !426, !noalias !427, !noundef !3 ; 2 uses
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !alias.scope !425, !noalias !428, !noundef !3 ; 2 uses
  %i.pp = icmp eq i8 %i.po, -1
  br i1 %i.pp, label %bb.cn, label %bb.co

bb.cm:                                            ; preds = %bb.cj
  %i.pq = or disjoint i64 %.sroa.020.21380.i.i, 6
  br label %.loopexit56

bb.cn:                                            ; preds = %bb.cl
  %i.pr = or disjoint i64 %.sroa.020.21380.i.i, 7
  br label %.loopexit56

bb.co:                                            ; preds = %bb.cl
  %i.ps = zext i8 %i.nt to i64
  %i.pt = shl i64 %i.ps, 58
  %i.pu = zext i8 %i.nz to i64
  %i.pv = shl nuw nsw i64 %i.pu, 52
  %i.pw = or i64 %i.pv, %i.pt
  %i.px = zext i8 %i.of to i64
  %i.py = shl nuw nsw i64 %i.px, 46
  %i.pz = or i64 %i.pw, %i.py
  %i.qa = zext i8 %i.om to i64
  %i.qb = shl nuw nsw i64 %i.qa, 40
  %i.qc = or i64 %i.pz, %i.qb
  %i.qd = zext i8 %i.ot to i64
  %i.qe = shl nuw nsw i64 %i.qd, 34
  %i.qf = or i64 %i.qc, %i.qe
  %i.qg = zext i8 %i.pa to i64
  %i.qh = shl nuw nsw i64 %i.qg, 28
  %i.qi = or i64 %i.qf, %i.qh
  %i.qj = zext i8 %i.ph to i64
  %i.qk = shl nuw nsw i64 %i.qj, 22
  %i.ql = or i64 %i.qi, %i.qk
  %i.qm = zext i8 %i.po to i64
  %i.qn = shl nuw nsw i64 %i.qm, 16
  %i.qo = or i64 %i.ql, %i.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !429
  %i.qp = call i64 @llvm.bswap.i64(i64 %i.qo)
  store i64 %i.qp, ptr %i.c, align 8, !noalias !429
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.np, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !429
  %i.qq = add i64 %.sroa.0.21381.i.i, -1          ; 2 uses
  %i.qr = icmp ult i64 %i.nj, %i.nh
  br i1 %i.qr, label %.lr.ph.i.i, label %.loopexit394.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32, %.loopexit394.i.i
  %.sroa.044.4.lcssa.i.i = phi i64 [ %.sroa.044.3.i.i, %.loopexit394.i.i ], [ %i.sk, %.noexc32 ] ; 3 uses
  %.sroa.020.4.lcssa.i.i = phi i64 [ %.sroa.020.3.i.i, %.loopexit394.i.i ], [ %i.vp, %.noexc32 ] ; 8 uses
  %i.qs = icmp ugt i64 %.sroa.020.4.lcssa.i.i, %2
  br i1 %i.qs, label %.invoke, label %bb.cp, !prof !5

.lr.ph1387.i.i:                                   ; preds = %.loopexit394.i.i, %.noexc32
  %.sroa.0104.01386.i.i = phi i64 [ %i.qt, %.noexc32 ], [ 1, %.loopexit394.i.i ]
  %.sroa.020.41385.i.i = phi i64 [ %i.vp, %.noexc32 ], [ %.sroa.020.3.i.i, %.loopexit394.i.i ] ; 14 uses
  %.sroa.044.41384.i.i = phi i64 [ %i.sk, %.noexc32 ], [ %.sroa.044.3.i.i, %.loopexit394.i.i ] ; 4 uses
  %i.qt = add nuw nsw i64 %.sroa.0104.01386.i.i, 1 ; 2 uses
  %i.qu = icmp ugt i64 %.sroa.020.41385.i.i, %2
  br i1 %i.qu, label %.invoke, label %bb.di, !prof !5

bb.cp:                                            ; preds = %._crit_edge.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.qw = icmp samesign eq i64 %.sroa.020.4.lcssa.i.i, %2
  br i1 %i.qw, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i: ; preds = %bb.cp
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.4.lcssa.i.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i.i: ; preds = %.outer.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i
  %.sroa.073.0.ph1406.i.i = phi i8 [ %i.ra, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i ]
  %.sroa.071.0.ph1405.i.i = phi i64 [ %.sroa.071.01393.i.i, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i ]
  %.sroa.067.0.ph1404.i.i = phi i32 [ %.sroa.067.01392.i.i, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i ]
  %.sroa.063.0.ph1403.i.i = phi i64 [ %i.sc, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.060.0.ph1402.i.i = phi i64 [ %i.sg, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.0225.0.ph1401.i.i = phi ptr [ %i.qy, %.outer.i.i ], [ %i.qx, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i ]
  %.sroa.8226.0.ph1400.i.i = phi i64 [ %i.qz, %.outer.i.i ], [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.preheader.i.i ]
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.dd, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i.i
  %.sroa.071.01393.i.i = phi i64 [ %.sroa.071.0.ph1405.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i.i ], [ %spec.select.i.i, %bb.dd ] ; 4 uses
  %.sroa.067.01392.i.i = phi i32 [ %.sroa.067.0.ph1404.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i.i ], [ %i.rs, %bb.dd ] ; 5 uses
  %.sroa.0225.01391.i.i = phi ptr [ %.sroa.0225.0.ph1401.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i.i ], [ %i.qy, %bb.dd ] ; 2 uses
  %.sroa.8226.01390.i.i = phi i64 [ %.sroa.8226.0.ph1400.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i.i ], [ %i.qz, %bb.dd ] ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0225.01391.i.i, i64 1 ; 4 uses
  %i.qz = add i64 %.sroa.8226.01390.i.i, 1        ; 2 uses
  %i.ra = load i8, ptr %.sroa.0225.01391.i.i, align 1, !alias.scope !397, !noalias !398, !noundef !3 ; 5 uses
  %i.rb = icmp eq i8 %i.ra, 61
  br i1 %i.rb, label %bb.db, label %bb.dc

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i: ; preds = %.outer.i.i, %bb.dd
  %.sroa.060.0.ph.lcssa424.i.i = phi i64 [ %.sroa.060.0.ph1402.i.i, %bb.dd ], [ %i.sg, %.outer.i.i ] ; 7 uses
  %.sroa.063.0.ph.lcssa421.i.i = phi i64 [ %.sroa.063.0.ph1403.i.i, %bb.dd ], [ %i.sc, %.outer.i.i ] ; 9 uses
  %.sroa.073.0.ph.lcssa418.i.i = phi i8 [ %.sroa.073.0.ph1406.i.i, %bb.dd ], [ %i.ra, %.outer.i.i ] ; 7 uses
  switch i64 %.sroa.063.0.ph.lcssa421.i.i, label %bb.cq [
    i64 0, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i
    i64 2, label %bb.cr
    i64 3, label %bb.cs
    i64 4, label %bb.ct
    i64 6, label %bb.cu
    i64 7, label %bb.cv
    i64 8, label %bb.cw
  ], !prof !430

bb.cq:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !399
  store ptr @86, ptr %i.h, align 8, !noalias !399
  %.sroa.4103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.4103.0..sroa_idx.i.i, align 8, !noalias !399
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #19
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i

bb.cs:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i

bb.ct:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i

bb.cu:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i

bb.cv:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i

bb.cw:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i: ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i, %bb.cp
  %.sroa.073.0.ph.lcssa4182441.i.i = phi i8 [ %.sroa.073.0.ph.lcssa418.i.i, %bb.cw ], [ %.sroa.073.0.ph.lcssa418.i.i, %bb.cr ], [ %.sroa.073.0.ph.lcssa418.i.i, %bb.cs ], [ %.sroa.073.0.ph.lcssa418.i.i, %bb.ct ], [ %.sroa.073.0.ph.lcssa418.i.i, %bb.cu ], [ %.sroa.073.0.ph.lcssa418.i.i, %bb.cv ], [ %.sroa.073.0.ph.lcssa418.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ 0, %bb.cp ]
  %.sroa.063.0.ph.lcssa4212440.i.i = phi i64 [ %.sroa.063.0.ph.lcssa421.i.i, %bb.cw ], [ %.sroa.063.0.ph.lcssa421.i.i, %bb.cr ], [ %.sroa.063.0.ph.lcssa421.i.i, %bb.cs ], [ %.sroa.063.0.ph.lcssa421.i.i, %bb.ct ], [ %.sroa.063.0.ph.lcssa421.i.i, %bb.cu ], [ %.sroa.063.0.ph.lcssa421.i.i, %bb.cv ], [ %.sroa.063.0.ph.lcssa421.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ 0, %bb.cp ]
  %.sroa.060.0.ph.lcssa4242439.i.i = phi i64 [ %.sroa.060.0.ph.lcssa424.i.i, %bb.cw ], [ %.sroa.060.0.ph.lcssa424.i.i, %bb.cr ], [ %.sroa.060.0.ph.lcssa424.i.i, %bb.cs ], [ %.sroa.060.0.ph.lcssa424.i.i, %bb.ct ], [ %.sroa.060.0.ph.lcssa424.i.i, %bb.cu ], [ %.sroa.060.0.ph.lcssa424.i.i, %bb.cv ], [ %.sroa.060.0.ph.lcssa424.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ 0, %bb.cp ] ; 2 uses
  %i.rc = phi i1 [ true, %bb.cw ], [ true, %bb.cr ], [ true, %bb.cs ], [ true, %bb.ct ], [ true, %bb.cu ], [ true, %bb.cv ], [ false, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ false, %bb.cp ]
  %.sroa.091.0.i.i = phi i64 [ 48, %bb.cw ], [ 8, %bb.cr ], [ 16, %bb.cs ], [ 24, %bb.ct ], [ 32, %bb.cu ], [ 40, %bb.cv ], [ %.sroa.063.0.ph.lcssa421.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ 0, %bb.cp ] ; 2 uses
  %i.rd = and i24 %3, 256
  %.not130.i.i = icmp eq i24 %i.rd, 0
  br i1 %.not130.i.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i
  %i.re = lshr i64 -1, %.sroa.091.0.i.i
  %i.rf = and i64 %i.re, %.sroa.060.0.ph.lcssa4242439.i.i
  %i.rg = icmp eq i64 %i.rf, 0
  br i1 %i.rg, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.thread.i.i
  br i1 %i.rc, label %.lr.ph1413.preheader.i.i, label %_RNvNtCs5OnaahQymqO_6base646decode13decode_helper.exit.i

.lr.ph1413.preheader.i.i:                         ; preds = %bb.cy
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.044.4.lcssa.i.i, i64 range(i64 0, -9223372036854775808) %i.ad) ; 2 uses
  br label %.lr.ph1413.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.rh = add nsw i64 %.sroa.020.4.lcssa.i.i, -1
  %i.ri = add i64 %i.rh, %.sroa.063.0.ph.lcssa4212440.i.i
  br label %.loopexit56

.lr.ph1413.i.i:                                   ; preds = %bb.da, %.lr.ph1413.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph1413.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.da ] ; 2 uses
  %.sroa.044.51410.i.i = phi i64 [ %.sroa.044.4.lcssa.i.i, %.lr.ph1413.preheader.i.i ], [ %i.rn, %bb.da ] ; 3 uses
  %exitcond2370.not.i.i = icmp eq i64 %.sroa.044.51410.i.i, %umax.i.i
  br i1 %exitcond2370.not.i.i, label %.invoke3092, label %bb.da

bb.da:                                            ; preds = %.lr.ph1413.i.i
  %i.rj = sub nuw nsw i64 56, %indvars.iv.i.i
  %i.rk = lshr i64 %.sroa.060.0.ph.lcssa4242439.i.i, %i.rj
  %i.rl = trunc i64 %i.rk to i8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.044.51410.i.i
  store i8 %i.rl, ptr %i.rm, align 1, !alias.scope !396, !noalias !431
  %i.rn = add i64 %.sroa.044.51410.i.i, 1         ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.ro = icmp samesign ult i64 %indvars.iv.next.i.i, %.sroa.091.0.i.i
  br i1 %i.ro, label %.lr.ph1413.i.i, label %_RNvNtCs5OnaahQymqO_6base646decode13decode_helper.exit.i

bb.db:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.rp = and i64 %.sroa.8226.01390.i.i, 2
  %.not131.not.i.i = icmp eq i64 %i.rp, 0
  br i1 %.not131.not.i.i, label %bb.de, label %bb.dd

bb.dc:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.rq = icmp sgt i32 %.sroa.067.01392.i.i, 0
  br i1 %i.rq, label %bb.dg, label %bb.df

bb.dd:                                            ; preds = %bb.db
  %i.rr = icmp eq i32 %.sroa.067.01392.i.i, 0
  %spec.select.i.i = select i1 %i.rr, i64 %.sroa.8226.01390.i.i, i64 %.sroa.071.01393.i.i
  %i.rs = add i32 %.sroa.067.01392.i.i, 1
  %i.rt = icmp eq ptr %i.qy, %i.qv
  br i1 %i.rt, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.de:                                            ; preds = %bb.db
  %i.ru = icmp sgt i32 %.sroa.067.01392.i.i, 0
  %spec.select135.i.i = select i1 %i.ru, i64 %.sroa.071.01393.i.i, i64 %.sroa.8226.01390.i.i
  %i.rv = add i64 %spec.select135.i.i, %.sroa.020.4.lcssa.i.i
  br label %.loopexit56

bb.df:                                            ; preds = %bb.dc
  %i.rw = zext i8 %i.ra to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !399, !noundef !3 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, -1
  br i1 %i.rz, label %bb.dh, label %.outer.i.i

bb.dg:                                            ; preds = %bb.dc
  %i.sa = add i64 %.sroa.071.01393.i.i, %.sroa.020.4.lcssa.i.i
  br label %.loopexit56

bb.dh:                                            ; preds = %bb.df
  %i.sb = add i64 %.sroa.8226.01390.i.i, %.sroa.020.4.lcssa.i.i
  br label %.loopexit56

.outer.i.i:                                       ; preds = %bb.df
  %i.sc = add i64 %.sroa.063.0.ph1403.i.i, 1      ; 3 uses
  %.neg.i.i = mul i64 %i.sc, 58
  %i.sd = zext i8 %i.ry to i64
  %i.se = and i64 %.neg.i.i, 62
  %i.sf = shl i64 %i.sd, %i.se
  %i.sg = or i64 %i.sf, %.sroa.060.0.ph1402.i.i   ; 2 uses
  %i.sh = icmp eq ptr %i.qy, %i.qv
  br i1 %i.sh, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph.i.i

bb.di:                                            ; preds = %.lr.ph1387.i.i
  %i.si = sub nuw nsw i64 %2, %.sroa.020.41385.i.i ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.41385.i.i ; 8 uses
  %i.sk = add i64 %.sroa.044.41384.i.i, 6         ; 4 uses
  %i.sl = icmp ugt i64 %.sroa.044.41384.i.i, -7
  %.not132.i.i = icmp ugt i64 %i.sk, %i.ad
  %or.cond136.i.i = or i1 %i.sl, %.not132.i.i
  br i1 %or.cond136.i.i, label %.invoke, label %bb.dj, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.044.41384.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !434
  store i64 0, ptr %i.b, align 8, !noalias !434
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %.not.i.i.i.i = icmp eq i64 %2, %.sroa.020.41385.i.i
  br i1 %.not.i.i.i.i, label %.invoke3092, label %4

4:                                                ; preds = %bb.dj
  %5 = load i8, ptr %i.sj, align 1, !alias.scope !437, !noalias !438, !noundef !3 ; 2 uses
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %switch.load, i64 %6
  %8 = load i8, ptr %7, align 1, !alias.scope !439, !noalias !440, !noundef !3 ; 2 uses
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %.loopexit.i.i, label %bb.dk

bb.dk:                                            ; preds = %4
  %i.sn = zext i8 %8 to i64
  %i.so = shl i64 %i.sn, 58
  %.not46.i.i.i.i = icmp eq i64 %i.si, 1
  br i1 %.not46.i.i.i.i, label %.invoke3092, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  %i.sq = load i8, ptr %i.sp, align 1, !alias.scope !437, !noalias !438, !noundef !3 ; 2 uses
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !alias.scope !439, !noalias !440, !noundef !3 ; 2 uses
  %i.su = icmp eq i8 %i.st, -1
  br i1 %i.su, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sv = zext i8 %i.st to i64
  %i.sw = shl nuw nsw i64 %i.sv, 52
  %i.sx = or i64 %i.sw, %i.so
  %i.sy = icmp samesign ugt i64 %i.si, 2
  br i1 %i.sy, label %bb.do, label %.invoke3092

bb.dn:                                            ; preds = %bb.dl
  %i.sz = add nuw i64 %.sroa.020.41385.i.i, 1
  br label %.loopexit.i.i

bb.do:                                            ; preds = %bb.dm
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sj, i64 2
  %i.tb = load i8, ptr %i.ta, align 1, !alias.scope !437, !noalias !438, !noundef !3 ; 2 uses
  %i.tc = zext i8 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !alias.scope !439, !noalias !440, !noundef !3 ; 2 uses
  %i.tf = icmp eq i8 %i.te, -1
  br i1 %i.tf, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.tg = zext i8 %i.te to i64
  %i.th = shl nuw nsw i64 %i.tg, 46
  %i.ti = or i64 %i.sx, %i.th
  %.not47.i.i.i.i = icmp eq i64 %i.si, 3
  br i1 %.not47.i.i.i.i, label %.invoke3092, label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.tj = add nuw i64 %.sroa.020.41385.i.i, 2
  br label %.loopexit.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sj, i64 3
  %i.tl = load i8, ptr %i.tk, align 1, !alias.scope !437, !noalias !438, !noundef !3 ; 2 uses
  %i.tm = zext i8 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !alias.scope !439, !noalias !440, !noundef !3 ; 2 uses
  %i.tp = icmp eq i8 %i.to, -1
  br i1 %i.tp, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.tq = zext i8 %i.to to i64
  %i.tr = shl nuw nsw i64 %i.tq, 40
  %i.ts = or i64 %i.ti, %i.tr
  %i.tt = icmp samesign ugt i64 %i.si, 4
  br i1 %i.tt, label %bb.du, label %.invoke3092

bb.dt:                                            ; preds = %bb.dr
  %i.tu = add nuw i64 %.sroa.020.41385.i.i, 3
  br label %.loopexit.i.i

bb.du:                                            ; preds = %bb.ds
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.tw = load i8, ptr %i.tv, align 1, !alias.scope !437, !noalias !438, !noundef !3 ; 2 uses
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !alias.scope !439, !noalias !440, !noundef !3 ; 2 uses
  %i.ua = icmp eq i8 %i.tz, -1
  br i1 %i.ua, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ub = zext i8 %i.tz to i64
  %i.uc = shl nuw nsw i64 %i.ub, 34
  %i.ud = or i64 %i.ts, %i.uc
  %.not48.i.i.i.i = icmp eq i64 %i.si, 5
  br i1 %.not48.i.i.i.i, label %.invoke3092, label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.ue = add nuw i64 %.sroa.020.41385.i.i, 4
  br label %.loopexit.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sj, i64 5
  %i.ug = load i8, ptr %i.uf, align 1, !alias.scope !437, !noalias !438, !noundef !3 ; 2 uses
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !alias.scope !439, !noalias !440, !noundef !3 ; 2 uses
  %i.uk = icmp eq i8 %i.uj, -1
  br i1 %i.uk, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ul = zext i8 %i.uj to i64
  %i.um = shl nuw nsw i64 %i.ul, 28
  %i.un = or i64 %i.ud, %i.um
  %i.uo = icmp samesign ugt i64 %i.si, 6
  br i1 %i.uo, label %bb.ea, label %.invoke3092

bb.dz:                                            ; preds = %bb.dx
  %i.up = add nuw i64 %.sroa.020.41385.i.i, 5
  br label %.loopexit.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.uq = getelementptr inbounds nuw i8, ptr %i.sj, i64 6
  %i.ur = load i8, ptr %i.uq, align 1, !alias.scope !437, !noalias !438, !noundef !3 ; 2 uses
  %i.us = zext i8 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !alias.scope !439, !noalias !440, !noundef !3 ; 2 uses
  %i.uv = icmp eq i8 %i.uu, -1
  br i1 %i.uv, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.uw = zext i8 %i.uu to i64
  %i.ux = shl nuw nsw i64 %i.uw, 22
  %i.uy = or i64 %i.un, %i.ux
  %.not49.i.i.i.i = icmp eq i64 %i.si, 7
  br i1 %.not49.i.i.i.i, label %.invoke3092, label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.uz = add nuw i64 %.sroa.020.41385.i.i, 6
  br label %.loopexit.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.va = getelementptr inbounds nuw i8, ptr %i.sj, i64 7
  %i.vb = load i8, ptr %i.va, align 1, !alias.scope !437, !noalias !438, !noundef !3 ; 2 uses
  %i.vc = zext i8 %i.vb to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !alias.scope !439, !noalias !440, !noundef !3 ; 2 uses
  %i.vf = icmp eq i8 %i.ve, -1
  br i1 %i.vf, label %bb.ee, label %bb.ef

.invoke3092:                                      ; preds = %bb.eb, %bb.dy, %bb.dv, %bb.ds, %bb.dp, %bb.dm, %bb.dk, %bb.dj, %.lr.ph1413.i.i
  %10 = phi i64 [ %umax.i.i, %.lr.ph1413.i.i ], [ 5, %bb.dv ], [ 4, %bb.ds ], [ 3, %bb.dp ], [ 2, %bb.dm ], [ 1, %bb.dk ], [ 0, %bb.dj ], [ 7, %bb.eb ], [ 6, %bb.dy ]
  %11 = phi i64 [ %i.ad, %.lr.ph1413.i.i ], [ 5, %bb.dv ], [ 4, %bb.ds ], [ 3, %bb.dp ], [ 2, %bb.dm ], [ 1, %bb.dk ], [ 0, %bb.dj ], [ 7, %bb.eb ], [ 6, %bb.dy ]
  %12 = phi ptr [ @84, %.lr.ph1413.i.i ], [ @73, %bb.dv ], [ @72, %bb.ds ], [ @71, %bb.dp ], [ @70, %bb.dm ], [ @69, %bb.dk ], [ @68, %bb.dj ], [ @75, %bb.eb ], [ @74, %bb.dy ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %10, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #19
          to label %.cont3093 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont3093:                                        ; preds = %.invoke3092
  unreachable

bb.ee:                                            ; preds = %bb.ed
  %i.vg = add nuw i64 %.sroa.020.41385.i.i, 7
  br label %.loopexit.i.i

.invoke:                                          ; preds = %bb.p, %.lr.ph.i.i, %bb.di, %.lr.ph1387.i.i, %._crit_edge.i.i
  %i.vh = phi i64 [ %.sroa.020.41385.i.i, %.lr.ph1387.i.i ], [ %.sroa.020.4.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.044.21379.i.i, %.lr.ph.i.i ], [ %.sroa.044.41384.i.i, %bb.di ], [ %.sroa.044.01375.i.i, %bb.p ]
  %i.vi = phi i64 [ %2, %.lr.ph1387.i.i ], [ %2, %._crit_edge.i.i ], [ %i.nm, %.lr.ph.i.i ], [ %i.sk, %bb.di ], [ %i.at, %bb.p ]
  %i.vj = phi i64 [ %2, %.lr.ph1387.i.i ], [ %2, %._crit_edge.i.i ], [ %i.ad, %.lr.ph.i.i ], [ %i.ad, %bb.di ], [ %i.ad, %bb.p ]
  %i.vk = phi ptr [ @91, %.lr.ph1387.i.i ], [ @89, %._crit_edge.i.i ], [ @83, %.lr.ph.i.i ], [ @90, %bb.di ], [ @82, %bb.p ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.vh, i64 noundef %i.vi, i64 noundef range(i64 0, -9223372036854775808) %i.vj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vk) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit.i.i:                                    ; preds = %4, %bb.ee, %bb.ec, %bb.dz, %bb.dw, %bb.dt, %bb.dq, %bb.dn
  %.sroa.8224.0.ph.i.i = phi i64 [ %i.sz, %bb.dn ], [ %i.tj, %bb.dq ], [ %i.tu, %bb.dt ], [ %i.ue, %bb.dw ], [ %i.up, %bb.dz ], [ %i.uz, %bb.ec ], [ %i.vg, %bb.ee ], [ %.sroa.020.41385.i.i, %4 ]
  %.sroa.7.0.ph.i.i = phi i8 [ %i.sq, %bb.dn ], [ %i.tb, %bb.dq ], [ %i.tl, %bb.dt ], [ %i.tw, %bb.dw ], [ %i.ug, %bb.dz ], [ %i.ur, %bb.ec ], [ %i.vb, %bb.ee ], [ %5, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !434
  br label %.loopexit56

bb.ef:                                            ; preds = %bb.ed
  %i.vl = zext i8 %i.ve to i64
  %i.vm = shl nuw nsw i64 %i.vl, 16
  %i.vn = or i64 %i.uy, %i.vm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !441
  %i.vo = call i64 @llvm.bswap.i64(i64 %i.vn)
  store i64 %i.vo, ptr %i.a, align 8, !noalias !441
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.b, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %.noexc31.a unwind label %.loopexit

.noexc31.a:                                       ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !441
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.sm, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %.noexc31.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !434
  %i.vp = add nuw i64 %.sroa.020.41385.i.i, 8     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qt, %.sroa.0.3.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph1387.i.i

_RNvNtCs5OnaahQymqO_6base646decode13decode_helper.exit.i: ; preds = %bb.da, %bb.cy
  %.sroa.3033.0.i = phi i64 [ %.sroa.044.4.lcssa.i.i, %bb.cy ], [ %i.rn, %bb.da ]
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE8truncateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.sroa.3033.0.i)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %.noexc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.eg
  unreachable

.loopexit56:                                      ; preds = %bb.q, %bb.bz, %bb.ce, %bb.cg, %bb.ci, %bb.ck, %bb.cm, %bb.cn, %bb.cc, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.bx, %bb.bm, %bb.az, %bb.bb, %bb.bd, %bb.bf, %bb.bh, %bb.bi, %bb.ax, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.at, %bb.ai, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.ae, %bb.t, %bb.m, %bb.n, %bb.o, %.loopexit399.i.i, %.loopexit398.i.i, %bb.h, %.loopexit400.i.i, %bb.dh, %bb.dg, %bb.de, %bb.cz, %.loopexit.i.i
  %.sroa.037.0.ph = phi i8 [ 0, %.loopexit.i.i ], [ 2, %bb.cz ], [ 0, %bb.de ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ 0, %.loopexit400.i.i ], [ 1, %bb.h ], [ 0, %bb.bz ], [ 0, %.loopexit398.i.i ], [ 0, %.loopexit399.i.i ], [ 0, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 0, %bb.t ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.ai ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.ax ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bf ], [ 0, %bb.bd ], [ 0, %bb.bb ], [ 0, %bb.az ], [ 0, %bb.bm ], [ 0, %bb.bx ], [ 0, %bb.bw ], [ 0, %bb.bu ], [ 0, %bb.bs ], [ 0, %bb.bq ], [ 0, %bb.bo ], [ 0, %bb.cc ], [ 0, %bb.cn ], [ 0, %bb.cm ], [ 0, %bb.ck ], [ 0, %bb.ci ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 0, %bb.q ]
  %.sroa.6.0.ph = phi i8 [ %.sroa.7.0.ph.i.i, %.loopexit.i.i ], [ %.sroa.073.0.ph.lcssa4182441.i.i, %bb.cz ], [ 61, %bb.de ], [ 61, %bb.dg ], [ %i.ra, %bb.dh ], [ %i.ke, %.loopexit400.i.i ], [ undef, %bb.h ], [ %i.nq, %bb.bz ], [ %i.dy, %.loopexit398.i.i ], [ %i.hb, %.loopexit399.i.i ], [ %i.ak, %bb.o ], [ undef, %bb.n ], [ undef, %bb.m ], [ %i.bc, %bb.t ], [ %i.cr, %bb.ae ], [ %i.ck, %bb.ad ], [ %i.cd, %bb.ab ], [ %i.bw, %bb.z ], [ %i.bp, %bb.x ], [ %i.bi, %bb.v ], [ %i.ee, %bb.ai ], [ %i.ft, %bb.at ], [ %i.fm, %bb.as ], [ %i.ff, %bb.aq ], [ %i.ey, %bb.ao ], [ %i.er, %bb.am ], [ %i.ek, %bb.ak ], [ %i.hh, %bb.ax ], [ %i.iw, %bb.bi ], [ %i.ip, %bb.bh ], [ %i.ii, %bb.bf ], [ %i.ib, %bb.bd ], [ %i.hu, %bb.bb ], [ %i.hn, %bb.az ], [ %i.kk, %bb.bm ], [ %i.lz, %bb.bx ], [ %i.ls, %bb.bw ], [ %i.ll, %bb.bu ], [ %i.le, %bb.bs ], [ %i.kx, %bb.bq ], [ %i.kq, %bb.bo ], [ %i.nw, %bb.cc ], [ %i.pl, %bb.cn ], [ %i.pe, %bb.cm ], [ %i.ox, %bb.ck ], [ %i.oq, %bb.ci ], [ %i.oj, %bb.cg ], [ %i.oc, %bb.ce ], [ %i.aw, %bb.q ]
  %.sroa.738.0.ph = phi i64 [ %.sroa.8224.0.ph.i.i, %.loopexit.i.i ], [ %i.ri, %bb.cz ], [ %i.rv, %bb.de ], [ %i.sa, %bb.dg ], [ %i.sb, %bb.dh ], [ %i.mg, %.loopexit400.i.i ], [ undef, %bb.h ], [ %.sroa.020.21380.i.i, %bb.bz ], [ %i.ga, %.loopexit398.i.i ], [ %i.jd, %.loopexit399.i.i ], [ %i.ai, %bb.o ], [ undef, %bb.n ], [ undef, %bb.m ], [ %i.bn, %bb.t ], [ %i.cx, %bb.ae ], [ %i.cw, %bb.ad ], [ %i.cp, %bb.ab ], [ %i.ci, %bb.z ], [ %i.cb, %bb.x ], [ %i.bu, %bb.v ], [ %i.ep, %bb.ai ], [ %i.fz, %bb.at ], [ %i.fy, %bb.as ], [ %i.fr, %bb.aq ], [ %i.fk, %bb.ao ], [ %i.fd, %bb.am ], [ %i.ew, %bb.ak ], [ %i.hs, %bb.ax ], [ %i.jc, %bb.bi ], [ %i.jb, %bb.bh ], [ %i.iu, %bb.bf ], [ %i.in, %bb.bd ], [ %i.ig, %bb.bb ], [ %i.hz, %bb.az ], [ %i.kv, %bb.bm ], [ %i.mf, %bb.bx ], [ %i.me, %bb.bw ], [ %i.lx, %bb.bu ], [ %i.lq, %bb.bs ], [ %i.lj, %bb.bq ], [ %i.lc, %bb.bo ], [ %i.oh, %bb.cc ], [ %i.pr, %bb.cn ], [ %i.pq, %bb.cm ], [ %i.pj, %bb.ck ], [ %i.pc, %bb.ci ], [ %i.ov, %bb.cg ], [ %i.oo, %bb.ce ], [ %.sroa.020.01376.i.i, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.037.0.ph, ptr %i.vq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.6.0.ph, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.738.0.ph, ptr %.sroa.640.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.eh

bb.eh:                                            ; preds = %.loopexit56
  %i.vr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.thread unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.vs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.loopexit56
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5OnaahQymqO_6base646decode13decode_configReE0ECs2JiOgHzbbc7_10tokenizers.exit

bb.ej:                                            ; preds = %_RNvNtCs5OnaahQymqO_6base646decode13decode_helper.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5OnaahQymqO_6base646decode13decode_configReE0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5OnaahQymqO_6base646decode13decode_configReE0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.loopexit:                                        ; preds = %.noexc31.a, %bb.ef
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.co
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.by, %bb.bj, %bb.au, %bb.af
  %lpad.loopexit61 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke3092, %.invoke, %_RNvNtCs5OnaahQymqO_6base646decode13decode_helper.exit.i, %bb.cq, %bb.f, %bb.e, %bb.eg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.k) #20
          to label %.body.thread unwind label %bb.ek

bb.ek:                                            ; preds = %.loopexit.split-lp
  %i.vt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

.body.thread:                                     ; preds = %bb.eh, %.loopexit.split-lp
  %eh.lpad-body43 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.vr, %bb.eh ]
  resume { ptr, i32 } %eh.lpad-body43
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val82 = load i64, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %gepdiff = add nsw i64 %.idx, -24
  %i.h = udiv exact i64 %gepdiff, 24
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = add i64 %.val82, %i.k                    ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %or.cond = or i1 %i.j, %i.m
  br i1 %or.cond, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECs2JiOgHzbbc7_10tokenizers.exit, label %.preheader220.preheader, !prof !13

.preheader220.preheader:                          ; preds = %bb.b
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %.preheader220._crit_edge, label %.lr.ph

.preheader220:                                    ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %.preheader220._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader220.preheader, %.preheader220
  %.sroa.01.0.i317 = phi i64 [ %i.s, %.preheader220 ], [ %i.l, %.preheader220.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.o, %.preheader220 ], [ %i.e, %.preheader220.preheader ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val9.i = load i64, ptr %i.r, align 8, !noalias !444, !noundef !3
  %i.s = add i64 %.val9.i, %.sroa.01.0.i317       ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sroa.01.0.i317
  br i1 %i.t, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECs2JiOgHzbbc7_10tokenizers.exit, label %.preheader220

.preheader220._crit_edge:                         ; preds = %.preheader220, %.preheader220.preheader
  %.sroa.01.0.i.lcssa = phi i64 [ %i.l, %.preheader220.preheader ], [ %i.s, %.preheader220 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.01.0.i.lcssa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.u = load i64, ptr %i.a, align 8, !range !11, !noundef !3
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !12, !noundef !3 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.v, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.c:                                             ; preds = %.preheader220._crit_edge
  %i.z = load i64, ptr %i.y, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #19
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.preheader220._crit_edge
  %i.aa = load ptr, ptr %i.y, align 8, !nonnull !3, !noundef !3
  %i.ab = icmp ule i64 %.sroa.01.0.i.lcssa, %i.x
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.x, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %.val82
  invoke void @_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.val, ptr noundef nonnull %i.ae)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2U_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable

.loopexit196:                                     ; preds = %bb.s, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.f, %.lr.ph341
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.g, %bb.i
  %lpad.loopexit204 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.l, %bb.j
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.m, %bb.o
  %lpad.loopexit213 = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterhmE10dying_nextCs2JiOgHzbbc7_10tokenizers:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyinghmNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph.i.i

_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyinghmNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.3.0.lcssa.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.c ], [ %i.h, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.e, %bb.c ], [ %i.g, %.lr.ph.i.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 72, i64 168
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef range(i64 72, 729) %..i3.i.i, i64 noundef 8) #22, !noalias !804
  br label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyinghmE16deallocating_endNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyinghmE16deallocating_endNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyinghmNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !802
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %i.c, -1
  store i64 %i.j, ptr %i.b, align 8
  %i.k = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyinghmE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !805 ; 5 uses
  %.not.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i1, label %bb.k, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.k, align 8, !alias.scope !806, !noalias !807, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.48.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !806, !noalias !807 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !806, !noalias !807 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 54
  %i.m = load i16, ptr %i.l, align 2, !noalias !808, !noundef !3
  %i.n = zext i16 %i.m to i64
  %i.o = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.n
  br i1 %i.o, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.h
  %.sroa.0.042.i.i.i.i = phi ptr [ %i.p, %bb.h ], [ %.sroa.07.0.copyload.i.i, %bb.e ] ; 4 uses
  %.sroa.5.041.i.i.i.i = phi i64 [ %i.ah, %bb.h ], [ %.sroa.48.0.copyload.i.i, %bb.e ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.0.042.i.i.i.i, align 8, !noalias !809, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %i.q = zext i16 %i.aj to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.e
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %bb.e ], [ %i.q, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %bb.e ], [ %i.ah, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %bb.e ], [ %i.p, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.r = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyinghmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 80
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.w, %.prol.preheader ], [ %i.v, %bb.g ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.g ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !810, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !801

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.v, %bb.g ], [ %i.w, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.g ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.x = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.x, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyinghmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.ag, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !810, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 72
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.y, align 8, !noalias !810, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 72
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.z, align 8, !noalias !810, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 72
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.aa, align 8, !noalias !810, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 72
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.ab, align 8, !noalias !810, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 72
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.ac, align 8, !noalias !810, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 72
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.ad, align 8, !noalias !810, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 72
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.ae, align 8, !noalias !810, !nonnull !3, !noundef !3 ; 2 uses
  %i.af = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 72
  br i1 %i.af, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyinghmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = add i64 %.sroa.5.041.i.i.i.i, 1         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i.i, i64 52
  %i.aj = load i16, ptr %i.ai, align 4, !noalias !809 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 72, i64 168
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef range(i64 72, 729) %..i.i.i.i.i, i64 noundef 8) #22, !noalias !811
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 54
  %i.al = load i16, ptr %i.ak, align 2, !noalias !808, !noundef !3
  %i.am = icmp ult i16 %i.aj, %i.al
  br i1 %i.am, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i36.i.i.i.i = icmp eq i64 %.sroa.5.041.i.i.i.i, 0
  %..i37.i.i.i.i = select i1 %.not.i36.i.i.i.i, i64 72, i64 168
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.042.i.i.i.i, i64 noundef range(i64 72, 729) %..i37.i.i.i.i, i64 noundef 8) #22, !noalias !811
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #19
          to label %.noexc.i.i unwind label %bb.j, !noalias !812

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !805
  unreachable

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyinghmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.s, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.f ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.k, align 8, !alias.scope !806, !noalias !807
  store i64 0, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !806, !noalias !807
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !806, !noalias !807
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyinghmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit, %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyinghmE16deallocating_endNtNtBc_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodings(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 36028797018963968) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load i64, ptr %2, align 8, !range !11, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.j
  ret { ptr, ptr } { ptr null, ptr undef }

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelismSNtNtNtB8_9tokenizer8encoding8EncodingINtB4_24MaybeParallelRefIteratorINtNtCsgbNVBrIJ05E_5rayon5slice4IterBS_EINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBS_EE14maybe_par_iterB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1)
  call void @_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtCsgbNVBrIJ05E_5rayon5slice4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB1q_EE3mapNCNvNtNtB1w_5utils7padding13pad_encodings0jEB1w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = call { i64, i64 } @_RNvMs0_CskqoA5J4kFRc_10rayon_condINtB5_12CondIteratorINtNtNtCsgbNVBrIJ05E_5rayon4iter3map3MapINtNtBW_5slice4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1S_5utils7padding13pad_encodings0EINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB3B_5slice4iter4IterB1M_EB2L_EE3maxB1S_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.n = extractvalue { i64, i64 } %i.k, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #19
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.o = phi i64 [ %i.n, %bb.f ], [ %i.j, %bb.d ] ; 3 uses
  store i64 %i.o, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !11, !noundef !3
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 3 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i, %bb.l, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelismSNtNtNtB9_9tokenizer8encoding8EncodingINtB5_27MaybeParallelRefMutIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutBT_EINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutBT_EE18maybe_par_iter_mutB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  call void @_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutB1t_EE8for_eachNCNvNtNtB1z_5utils7padding13pad_encodingss_0EB1z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.k:                                             ; preds = %bb.i
  %i.u = urem i64 %i.o, %i.t                      ; 2 uses
  %.not5 = icmp eq i64 %i.u, 0
  br i1 %.not5, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = add i64 %i.t, %i.o
  %i.w = sub i64 %i.v, %i.u
  store i64 %i.w, ptr %i.d, align 8
  br label %bb.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, -118) i8 @_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts7scripts10get_script(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 32
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.c [
    i32 32, label %switch.lookup
    i32 36, label %switch.lookup
    i32 40, label %switch.lookup
    i32 41, label %switch.lookup
    i32 42, label %switch.lookup
    i32 43, label %switch.lookup
    i32 44, label %switch.lookup
    i32 45, label %switch.lookup
    i32 91, label %switch.lookup
    i32 92, label %switch.lookup
    i32 93, label %switch.lookup
    i32 94, label %switch.lookup
    i32 95, label %switch.lookup
    i32 96, label %switch.lookup
    i32 123, label %switch.lookup
    i32 124, label %switch.lookup
    i32 125, label %switch.lookup
    i32 126, label %switch.lookup
    i32 160, label %switch.lookup
    i32 161, label %switch.lookup
    i32 166, label %switch.lookup
    i32 167, label %switch.lookup
    i32 168, label %switch.lookup
    i32 169, label %switch.lookup
    i32 171, label %switch.lookup
    i32 172, label %switch.lookup
    i32 173, label %switch.lookup
    i32 174, label %switch.lookup
    i32 175, label %switch.lookup
    i32 176, label %switch.lookup
    i32 177, label %switch.lookup
    i32 180, label %switch.lookup
    i32 181, label %switch.lookup
    i32 184, label %switch.lookup
    i32 185, label %switch.lookup
    i32 187, label %switch.lookup
    i32 191, label %switch.lookup
    i32 215, label %switch.lookup
    i32 247, label %switch.lookup
    i32 748, label %switch.lookup
    i32 749, label %switch.lookup
    i32 750, label %switch.lookup
    i32 884, label %switch.lookup
    i32 894, label %switch.lookup
    i32 901, label %switch.lookup
    i32 903, label %switch.lookup
    i32 1417, label %switch.lookup
    i32 1541, label %switch.lookup
    i32 1548, label %switch.lookup
    i32 1563, label %switch.lookup
    i32 1564, label %switch.lookup
    i32 1567, label %switch.lookup
    i32 1600, label %switch.lookup
    i32 1757, label %switch.lookup
    i32 2274, label %switch.lookup
    i32 3647, label %switch.lookup
    i32 4347, label %switch.lookup
    i32 6149, label %switch.lookup
    i32 7379, label %switch.lookup
    i32 7393, label %switch.lookup
    i32 8203, label %switch.lookup
    i32 8216, label %switch.lookup
    i32 8217, label %switch.lookup
    i32 8218, label %switch.lookup
    i32 8221, label %switch.lookup
    i32 8222, label %switch.lookup
    i32 8223, label %switch.lookup
    i32 8232, label %switch.lookup
    i32 8233, label %switch.lookup
    i32 8239, label %switch.lookup
    i32 8249, label %switch.lookup
    i32 8250, label %switch.lookup
    i32 8260, label %switch.lookup
    i32 8261, label %switch.lookup
    i32 8262, label %switch.lookup
    i32 8274, label %switch.lookup
    i32 8275, label %switch.lookup
    i32 8276, label %switch.lookup
    i32 8287, label %switch.lookup
    i32 8304, label %switch.lookup
    i32 8317, label %switch.lookup
    i32 8318, label %switch.lookup
    i32 8333, label %switch.lookup
    i32 8334, label %switch.lookup
    i32 8450, label %switch.lookup
    i32 8455, label %switch.lookup
    i32 8468, label %switch.lookup
    i32 8469, label %switch.lookup
    i32 8472, label %switch.lookup
    i32 8484, label %switch.lookup
    i32 8485, label %switch.lookup
    i32 8487, label %switch.lookup
    i32 8488, label %switch.lookup
    i32 8489, label %switch.lookup
    i32 8494, label %switch.lookup
    i32 8505, label %switch.lookup
    i32 8522, label %switch.lookup
    i32 8523, label %switch.lookup
    i32 8527, label %switch.lookup
    i32 8585, label %switch.lookup
    i32 8608, label %switch.lookup
    i32 8611, label %switch.lookup
    i32 8614, label %switch.lookup
    i32 8622, label %switch.lookup
    i32 8658, label %switch.lookup
    i32 8659, label %switch.lookup
    i32 8660, label %switch.lookup
    i32 8968, label %switch.lookup
    i32 8969, label %switch.lookup
    i32 8970, label %switch.lookup
    i32 8971, label %switch.lookup
    i32 9001, label %switch.lookup
    i32 9002, label %switch.lookup
    i32 9084, label %switch.lookup
    i32 9655, label %switch.lookup
    i32 9665, label %switch.lookup
    i32 9839, label %switch.lookup
    i32 10088, label %switch.lookup
    i32 10089, label %switch.lookup
    i32 10090, label %switch.lookup
    i32 10091, label %switch.lookup
    i32 10092, label %switch.lookup
    i32 10093, label %switch.lookup
    i32 10094, label %switch.lookup
    i32 10095, label %switch.lookup
    i32 10096, label %switch.lookup
    i32 10097, label %switch.lookup
    i32 10098, label %switch.lookup
    i32 10099, label %switch.lookup
    i32 10100, label %switch.lookup
    i32 10101, label %switch.lookup
    i32 10181, label %switch.lookup
    i32 10182, label %switch.lookup
    i32 10214, label %switch.lookup
    i32 10215, label %switch.lookup
    i32 10216, label %switch.lookup
    i32 10217, label %switch.lookup
    i32 10218, label %switch.lookup
    i32 10219, label %switch.lookup
    i32 10220, label %switch.lookup
    i32 10221, label %switch.lookup
    i32 10222, label %switch.lookup
    i32 10223, label %switch.lookup
    i32 10627, label %switch.lookup
    i32 10628, label %switch.lookup
    i32 10629, label %switch.lookup
    i32 10630, label %switch.lookup
    i32 10631, label %switch.lookup
    i32 10632, label %switch.lookup
    i32 10633, label %switch.lookup
    i32 10634, label %switch.lookup
    i32 10635, label %switch.lookup
    i32 10636, label %switch.lookup
    i32 10637, label %switch.lookup
    i32 10638, label %switch.lookup
    i32 10639, label %switch.lookup
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts7scripts10get_script:bb.a
  %i.yu = bitcast <4 x i1> %i.yt to i4
  %.not2539 = icmp eq i4 %i.yu, 0
  br i1 %.not2539, label %bb.hl, label %switch.lookup

bb.hl:                                            ; preds = %bb.hk
  %i.yv = and i32 %0, 2097087
  %i.yw = add nsw i32 %i.yv, -68736
  %or.cond2277 = icmp ult i32 %i.yw, 51
  %i.yx = add nsw i32 %0, -68858
  %or.cond1185 = icmp ult i32 %i.yx, 6
  %or.cond2278 = select i1 %or.cond2277, i1 true, i1 %or.cond1185
  br i1 %or.cond2278, label %switch.lookup, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.yy = and i32 %0, 2096640
  %or.cond1186 = icmp eq i32 %i.yy, 120832
  %i.yz = add nsw <8 x i32> %i.dp, <i32 -121344, i32 -121399, i32 -121403, i32 -121453, i32 -121462, i32 -121477, i32 -121479, i32 -121499>
  %i.za = icmp ult <8 x i32> %i.yz, <i32 55, i32 4, i32 50, i32 8, i32 14, i32 2, i32 5, i32 5>
  %i.zb = add nsw i32 %0, -121505
  %or.cond1195 = icmp ult i32 %i.zb, 15
  %i.zc = bitcast <8 x i1> %i.za to i8
  %i.zd = icmp ne i8 %i.zc, 0
  %i.ze = select i1 %or.cond1186, i1 true, i1 %i.zd
  %op.rdx2341 = select i1 %i.ze, i1 true, i1 %or.cond1195
  br i1 %op.rdx2341, label %switch.lookup, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.zf = add nsw i32 %0, -125184
  %or.cond2288 = icmp ult i32 %i.zf, 75
  %i.zg = add nsw i32 %0, -125264
  %or.cond1198 = icmp ult i32 %i.zg, 10
  %or.cond2289 = select i1 %or.cond2288, i1 true, i1 %or.cond1198
  %or.cond1199 = icmp eq i32 %i.i, 125278
  %or.cond2290 = or i1 %or.cond1199, %or.cond2289
  br i1 %or.cond2290, label %switch.lookup, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.zh = add nsw <4 x i32> %i.g, <i32 -72704, i32 -72714, i32 -72752, i32 -72760>
  %i.zi = icmp ult <4 x i32> %i.zh, <i32 9, i32 37, i32 7, i32 6>
  %i.zj = add nsw i32 %0, -72769
  %or.cond1204 = icmp ult i32 %i.zj, 5
  %i.zk = bitcast <4 x i1> %i.zi to i4
  %i.zl = icmp ne i4 %i.zk, 0
  %op.rdx2337 = select i1 %i.zl, i1 true, i1 %or.cond1204
  %i.zm = add nsw i32 %0, -72784
  %op.rdx2338 = icmp ult i32 %i.zm, 29
  %i.zn = freeze i1 %op.rdx2337
  %op.rdx2339 = select i1 %i.zn, i1 true, i1 %op.rdx2338
  br i1 %op.rdx2339, label %switch.lookup, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.zo = add nsw <4 x i32> %i.g, <i32 -72818, i32 -72850, i32 -72874, i32 -72885>
  %i.zp = icmp ult <4 x i32> %i.zo, <i32 30, i32 22, i32 7, i32 2>
  %i.zq = bitcast <4 x i1> %i.zp to i4
  %i.zr = icmp ne i4 %i.zq, 0
  %i.zs = freeze i1 %i.zr
  br i1 %i.zs, label %switch.lookup, label %switch.early.test2551

switch.early.test2551:                            ; preds = %bb.hp
  switch i32 %i.i, label %bb.hq [
    i32 72882, label %switch.lookup
    i32 72816, label %switch.lookup
  ]

bb.hq:                                            ; preds = %switch.early.test2551
  %i.zt = add nsw <4 x i32> %i.g, <i32 -70656, i32 -70722, i32 -70727, i32 -70731>
  %or.cond1215 = icmp eq i32 %i.ak, 70712
  %or.cond1216 = icmp eq i32 %i.i, 70720
  %i.zu = icmp ult <4 x i32> %i.zt, <i32 56, i32 3, i32 4, i32 5>
  %i.zv = add nsw i32 %0, -70736
  %or.cond1220 = icmp ult i32 %i.zv, 10
  %i.zw = bitcast <4 x i1> %i.zu to i4
  %i.zx = icmp ne i4 %i.zw, 0
  %op.rdx = select i1 %i.zx, i1 true, i1 %or.cond1220
  %op.rdx2333 = or i1 %or.cond1215, %or.cond1216
  %i.zy = freeze i1 %op.rdx
  %op.rdx2334 = or i1 %i.zy, %op.rdx2333
  br i1 %op.rdx2334, label %switch.lookup, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.zz = add nsw i32 %0, -66736
  %or.cond1221 = icmp ult i32 %i.zz, 36
  %i.aaa = add nsw i32 %0, -66776
  %or.cond1222 = icmp ult i32 %i.aaa, 36
  %or.cond2309 = select i1 %or.cond1221, i1 true, i1 %or.cond1222
  br i1 %or.cond2309, label %switch.lookup, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.aab = add nsw i32 %0, -94208
  %or.cond1223 = icmp ult i32 %i.aab, 6125
  br i1 %or.cond1223, label %switch.lookup, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aac = add nsw i32 %0, -100352
  %or.cond1224 = icmp ult i32 %i.aac, 755
  %. = select i1 %or.cond1224, i8 127, i8 0
  br label %switch.lookup
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.c, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMaphmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !817
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterhmE10dying_nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !817, !noundef !3
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterhmEECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !817
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterhmE10dying_nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.f = load ptr, ptr %i.a, align 8, !noalias !817, !noundef !3
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterhmEECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterhmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences0_1__NtB7_11SequenceDef11deserializeNtB2_14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences1_1__NtB7_12SequenceTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1r_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences2_1__NtB7_20SequenceDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1z_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtB7_13PaddingParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1h_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtB7_15PaddingStrategyNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1j_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB7_16PaddingDirectionNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1j_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers1_1__NtB7_20UnicodeScriptsHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1Y_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtB7_18UnicodeScriptsTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1V_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSINtNtCs4NRVxsYgnAr_4core6option6OptionmEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRSINtNtBb_6option6OptionmEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1n_8adapters3map8map_foldRBQ_jjNCNvXs0_NtCscdodAO9FK5_5alloc5sliceSBQ_INtB2P_6ConcatBS_E6concat0NCINvXsK_NtB1l_5accumjNtB3T_3Sum3sumINtB27_3MapBF_B2H_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.e = and i64 %2, 3                            ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.f, i64 4, i64 %i.e
  %n.vec = sub nsw i64 %2, %i.g                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = getelementptr i8, ptr %i.i, i64 40
  %wide.vec = load <4 x i64>, ptr %i.j, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec9 = load <4 x i64>, ptr %i.k, align 8
  %strided.vec10 = shufflevector <4 x i64> %wide.vec9, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.l = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.m = add <2 x i64> %strided.vec10, %vec.phi8  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !818

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader11

.preheader.preheader11:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.o, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader11, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.s, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader11 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader11 ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val13.i = load i64, ptr %i.q, align 8, !noundef !3
  %i.r = add i64 %.val13.i, %.sroa.02.0.i         ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.t = icmp eq i64 %i.s, %2
  br i1 %i.t, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRSINtNtBb_6option6OptionmEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1n_8adapters3map8map_foldRBQ_jjNCNvXs0_NtCscdodAO9FK5_5alloc5sliceSBQ_INtB2P_6ConcatBS_E6concat0NCINvXsK_NtB1l_5accumjNtB3T_3Sum3sumINtB27_3MapBF_B2H_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.preheader, !llvm.loop !819

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRSINtNtBb_6option6OptionmEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1n_8adapters3map8map_foldRBQ_jjNCNvXs0_NtCscdodAO9FK5_5alloc5sliceSBQ_INtB2P_6ConcatBS_E6concat0NCINvXsK_NtB1l_5accumjNtB3T_3Sum3sumINtB27_3MapBF_B2H_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.r, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
  %i.u = load i64, ptr %i.a, align 8, !range !11, !noundef !3
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !12, !noundef !3 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.v, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRSINtNtBb_6option6OptionmEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1n_8adapters3map8map_foldRBQ_jjNCNvXs0_NtCscdodAO9FK5_5alloc5sliceSBQ_INtB2P_6ConcatBS_E6concat0NCINvXsK_NtB1l_5accumjNtB3T_3Sum3sumINtB27_3MapBF_B2H_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit
  %i.z = load i64, ptr %i.y, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #19
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRSINtNtBb_6option6OptionmEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1n_8adapters3map8map_foldRBQ_jjNCNvXs0_NtCscdodAO9FK5_5alloc5sliceSBQ_INtB2P_6ConcatBS_E6concat0NCINvXsK_NtB1l_5accumjNtB3T_3Sum3sumINtB27_3MapBF_B2H_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit
  %i.aa = load ptr, ptr %i.y, align 8, !nonnull !3, !noundef !3
  %i.ab = icmp ule i64 %.sroa.0.0.i, %i.x
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.x, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aa, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ad, align 8
  %i.ae = icmp eq i64 %2, 0
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.f unwind label %bb.e

.lr.ph:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  %.sroa.0.07 = phi ptr [ %i.af, %bb.c ], [ %1, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit ] ; 3 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.07, align 8, !nonnull !3, !align !822, !noundef !3 ; 2 uses
  %i.ai = getelementptr i8, ptr %.sroa.0.07, i64 8
  %.sroa.0.0.val6 = load i64, ptr %i.ai, align 8, !noundef !3
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.val, i64 %.sroa.0.0.val6
  invoke void @_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEEINtB5_10SpecExtendRBT_INtNtNtBY_5slice4iter4IterBT_EE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %.sroa.0.0.val, ptr noundef nonnull %i.aj)
          to label %bb.c unwind label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ah

._crit_edge:                                      ; preds = %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB5_14UnicodeScriptsNtNtBb_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs0_NtNtNtBa_14pre_tokenizers15unicode_scripts13pre_tokenizerNtB1C_14UnicodeScriptsNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3X_EBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences0_1__NtBa_11SequenceDef11deserializeNtB5_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences1_1__NtBa_12SequenceTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1u_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 17)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences2_1__NtBa_20SequenceDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1C_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 27)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtBa_13PaddingParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1k_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 20)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtBa_15PaddingStrategyNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1m_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 20)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtBa_16PaddingDirectionNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1m_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 21)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers1_1__NtBa_20UnicodeScriptsHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB21_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 27)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtBa_18UnicodeScriptsTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1Y_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 23)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtBY_14UnicodeScriptsNtNtB14_9tokenizer12PreTokenizer12pre_tokenize00INtB7_5FnMutTcEE8call_mutB14_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 10 uses
  switch i32 %1, label %bb.b [
    i32 12540, label %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i
    i32 32, label %.thread19.i
  ]

.thread19.i:                                      ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.c = load i64, ptr %.val1, align 8, !noundef !3
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %.val1, align 8
  br label %_RNCNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB9_14UnicodeScriptsNtNtBf_9tokenizer12PreTokenizer12pre_tokenize00Bf_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i8 @_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts7scripts10get_script(i32 noundef range(i32 0, 1114112) %1) ; 3 uses
  switch i8 %i.e, label %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.fold.split.i [
    i8 47, label %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i
    i8 55, label %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i
    i8 0, label %bb.d
  ]

_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.fold.split.i: ; preds = %bb.b
  br label %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i

_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i: ; preds = %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.fold.split.i, %bb.b, %bb.b, %bb.a
  %.sroa.0.0.i3.i = phi i8 [ 42, %bb.b ], [ 42, %bb.a ], [ 42, %bb.b ], [ %i.e, %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.fold.split.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = load i8, ptr %.val, align 1, !range !823, !noundef !3 ; 2 uses
  %cond.i = icmp eq i8 %i.f, 0
  %.not5.i = icmp eq i8 %i.f, %.sroa.0.0.i3.i
  %or.cond.i = or i1 %cond.i, %.not5.i
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.g = load i64, ptr %.val1, align 8, !noundef !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i, %bb.b
  %.not7.i = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ false, %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i ] ; 2 uses
  %.sroa.0.0.i4.i = phi i8 [ %.sroa.0.0.i3.i, %bb.c ], [ %i.e, %bb.b ], [ %.sroa.0.0.i3.i, %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i ]
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.c ], [ undef, %bb.b ], [ undef, %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizer12fixed_script.exit.thread.i ] ; 3 uses
  %i.h = icmp samesign ult i32 %1, 128
  br i1 %i.h, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i64, ptr %.val1, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i32 %1, 2048
  %.pre30.i = load i64, ptr %.val1, align 8       ; 2 uses
  br i1 %i.i, label %bb.f, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.j = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.j, i64 3, i64 4
  %i.k = add i64 %.pre30.i, %..i
  store i64 %i.k, ptr %.val1, align 8
  br i1 %.not7.i, label %_RNCNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB9_14UnicodeScriptsNtNtBf_9tokenizer12PreTokenizer12pre_tokenize00Bf_.exit, label %bb.g

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.l = phi i64 [ %.pre30.i, %bb.e ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.01.0.i = phi i64 [ 2, %bb.e ], [ 1, %._crit_edge.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.m = add i64 %.sroa.01.0.i, %i.l
  store i64 %i.m, ptr %.val1, align 8
  br i1 %.not7.i, label %_RNCNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB9_14UnicodeScriptsNtNtBf_9tokenizer12PreTokenizer12pre_tokenize00Bf_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  store i8 %.sroa.0.0.i4.i, ptr %.val, align 1
  br label %_RNCNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB9_14UnicodeScriptsNtNtBf_9tokenizer12PreTokenizer12pre_tokenize00Bf_.exit

_RNCNCNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB9_14UnicodeScriptsNtNtBf_9tokenizer12PreTokenizer12pre_tokenize00Bf_.exit: ; preds = %.thread19.i, %.split.i, %bb.f, %bb.g
  %.sroa.3.01726.i = phi i64 [ undef, %.thread19.i ], [ %.sroa.3.0.i, %bb.g ], [ %.sroa.3.0.i, %bb.f ], [ %.sroa.3.0.i, %.split.i ]
  %.sroa.0.01825.i = phi i64 [ 0, %.thread19.i ], [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.0.i, %bb.f ], [ %.sroa.0.0.i, %.split.i ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.01825.i, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.3.01726.i, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.c = load i8, ptr %i.b, align 1, !range !16, !alias.scope !827, !noalias !828, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !829
  store ptr %i.e, ptr %i.a, align 8, !noalias !829
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !829
  br label %_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 4), !noalias !827
  br label %_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers.exit

_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequenceNtB5_8SequenceNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = tail call { ptr, ptr } @_RNvXNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB2_19PreTokenizerWrapperNtNtB4_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.01.09, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.k, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsA_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10dying_nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(72) %1)
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.42.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.42.0.copyload
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsF_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !846, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterhmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !846
  %i.e = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmuthmE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.j, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.e, align 8, !alias.scope !847, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.48.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !847 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !847 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 54
  %i.g = load i16, ptr %i.f, align 2, !noalias !848, !noundef !3
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.h
  br i1 %i.i, label %bb.f, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %.sroa.07.0.copyload.i.i, %bb.c ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.48.0.copyload.i.i, %bb.c ]
  %i.j = load ptr, ptr %.sroa.0.022.i.i.i.i, align 8, !noalias !849, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.d
  %i.k = zext i16 %i.n to i64
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = add i64 %.sroa.5.021.i.i.i.i, 1          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 52
  %i.n = load i16, ptr %i.m, align 4, !noalias !849 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 54
  %i.p = load i16, ptr %i.o, align 2, !noalias !848, !noundef !3
  %i.q = icmp ult i16 %i.n, %i.p
  br i1 %i.q, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19
          to label %.noexc.i.i unwind label %bb.i, !noalias !847

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.k, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %bb.c ] ; 5 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.l, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %bb.c ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.j, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %bb.c ] ; 3 uses
  %i.r = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit.i

bb.h:                                             ; preds = %bb.f
  %i.t = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 80
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter = and i64 %.sroa.7.0.ph.i.i.i, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.w, %.prol.preheader ], [ %i.v, %bb.h ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i, %bb.h ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.h ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !850, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !845

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.v, %bb.h ], [ %i.w, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.h ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.x = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.x, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.ag, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !850, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 72
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.y, align 8, !noalias !850, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 72
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.z, align 8, !noalias !850, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 72
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.aa, align 8, !noalias !850, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 72
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.ab, align 8, !noalias !850, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 72
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.ac, align 8, !noalias !850, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 72
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.ad, align 8, !noalias !850, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 72
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.ae, align 8, !noalias !850, !nonnull !3, !noundef !3 ; 2 uses
  %i.af = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 72
  br i1 %i.af, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %.new

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.prol.loopexit, %.new, %bb.g
  %.sroa.78.0.i.i.i = phi i64 [ %i.s, %bb.g ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.g ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 56
  %i.aj = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.10.0.ph.i.i.i
  store ptr %.sroa.07.0.i.i.i, ptr %i.e, align 8, !alias.scope !847
  store i64 0, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !847
  store i64 %.sroa.78.0.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !847
  br label %_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterhmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit

bb.j:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #19
  unreachable

_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterhmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ak, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences0_1__NtBG_11SequenceDef11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences1_1__NtBG_12SequenceTypeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences2_1__NtBG_20SequenceDeserializerNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences2_1__NtBG_20SequenceDeserializerNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 27)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtBG_13PaddingParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 20)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings3_1__NtBG_15PaddingStrategyNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtBG_16PaddingDirectionNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers1_1__NtBG_20UnicodeScriptsHelperNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBM_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers1_1__NtBG_20UnicodeScriptsHelperNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBM_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 27)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtBG_18UnicodeScriptsTypeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBM_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers5utils7paddingNtB4_13PaddingParamsNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !12, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @108, i64 5, i1 false)
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 5, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodings0INtB6_5FnMutTRNtNtNtBV_9tokenizer8encoding8EncodingEE8call_mutBV_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(256) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !3
  ret i64 %.val
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodingss_0INtB6_5FnMutTQNtNtNtBV_9tokenizer8encoding8EncodingEE8call_mutBV_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(256) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !align !9, !noundef !3
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !9, !noundef !3
  %i.c = load i64, ptr %.val, align 8, !noalias !853, !noundef !3
  %i.d = load ptr, ptr %.val1, align 8, !noalias !853, !nonnull !3, !align !9, !noundef !3 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i32, ptr %i.e, align 8, !noalias !853, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.h = load i32, ptr %i.g, align 4, !noalias !853, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !853, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noalias !853, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.n = load i8, ptr %i.m, align 8, !range !16, !noalias !853, !noundef !3
  %i.o = trunc nuw i8 %i.n to i1
  tail call void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding3pad(ptr noalias noundef nonnull align 8 dereferenceable(256) %1, i64 noundef %i.c, i32 noundef %i.f, i32 noundef %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i1 noundef zeroext %i.o)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8
  %i.e = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.k, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1w_4LeafENtB1w_4EdgeETRB1O_RB29_ENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.3.0 = phi ptr [ %i.ao, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1w_4LeafENtB1w_4EdgeETRB1O_RB29_ENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.an, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1w_4LeafENtB1w_4EdgeETRB1O_RB29_ENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %.sroa.07.0.copyload.i = load ptr, ptr %i.e, align 8, !alias.scope !868, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.48.0.copyload.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !868 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !868 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 626
  %i.i = load i16, ptr %i.h, align 2, !noalias !869, !noundef !3
  %i.j = zext i16 %i.i to i64
  %i.k = icmp ult i64 %.sroa.59.0.copyload.i, %i.j
  br i1 %i.k, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.0.022.i.i.i = phi ptr [ %i.m, %bb.e ], [ %.sroa.07.0.copyload.i, %bb.d ] ; 2 uses
  %.sroa.5.021.i.i.i = phi i64 [ %i.o, %bb.e ], [ %.sroa.48.0.copyload.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 352
  %i.m = load ptr, ptr %i.l, align 8, !noalias !870, !noundef !3 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %i.n = zext i16 %i.q to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.o = add i64 %.sroa.5.021.i.i.i, 1            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 624
  %i.q = load i16, ptr %i.p, align 8, !noalias !870 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 626
  %i.s = load i16, ptr %i.r, align 2, !noalias !869, !noundef !3
  %i.t = icmp ult i16 %i.q, %i.s
  br i1 %i.t, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19
          to label %.noexc.i unwind label %bb.j, !noalias !868

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.sroa.10.0.ph.i.i = phi i64 [ %i.n, %._crit_edge.loopexit.i.i.i ], [ %.sroa.59.0.copyload.i, %bb.d ] ; 6 uses
  %.sroa.7.0.ph.i.i = phi i64 [ %i.o, %._crit_edge.loopexit.i.i.i ], [ %.sroa.48.0.copyload.i, %bb.d ] ; 5 uses
  %.sroa.06.0.ph.i.i = phi ptr [ %i.m, %._crit_edge.loopexit.i.i.i ], [ %.sroa.07.0.copyload.i, %bb.d ] ; 4 uses
  %i.u = icmp eq i64 %.sroa.7.0.ph.i.i, 0
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = add nuw nsw i64 %.sroa.10.0.ph.i.i, 1
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1w_4LeafENtB1w_4EdgeETRB1O_RB29_ENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit

bb.i:                                             ; preds = %bb.g
  %i.w = icmp samesign ult i64 %.sroa.10.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr i8, ptr %.sroa.06.0.ph.i.i, i64 640
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %.sroa.10.0.ph.i.i ; 2 uses
  %xtraiter = and i64 %.sroa.7.0.ph.i.i, 7        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.prol = phi ptr [ %i.z, %.prol.preheader ], [ %i.y, %bb.i ]
  %.sroa.019.0.in.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i, %bb.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.prol, align 8, !noalias !871, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !867

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.unr = phi ptr [ %i.y, %bb.i ], [ %i.z, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.prol, %.prol.preheader ]
  %i.aa = icmp ult i64 %.sroa.7.0.ph.i.i, 8
  br i1 %i.aa, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1w_4LeafENtB1w_4EdgeETRB1O_RB29_ENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i = phi ptr [ %i.aj, %.new ], [ %.sroa.017.0.in.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i, align 8, !noalias !871, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i, i64 632
  %.sroa.017.0.i.i.i.1 = load ptr, ptr %i.ab, align 8, !noalias !871, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.1, i64 632
  %.sroa.017.0.i.i.i.2 = load ptr, ptr %i.ac, align 8, !noalias !871, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.2, i64 632
  %.sroa.017.0.i.i.i.3 = load ptr, ptr %i.ad, align 8, !noalias !871, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.3, i64 632
  %.sroa.017.0.i.i.i.4 = load ptr, ptr %i.ae, align 8, !noalias !871, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.4, i64 632
  %.sroa.017.0.i.i.i.5 = load ptr, ptr %i.af, align 8, !noalias !871, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.5, i64 632
  %.sroa.017.0.i.i.i.6 = load ptr, ptr %i.ag, align 8, !noalias !871, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.6, i64 632
  %.sroa.019.0.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.7 = load ptr, ptr %i.ah, align 8, !noalias !871, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.019.0.i.i.i.7, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.7, i64 632
  br i1 %i.ai, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1w_4LeafENtB1w_4EdgeETRB1O_RB29_ENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit, label %.new

bb.j:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmutNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1w_4LeafENtB1w_4EdgeETRB1O_RB29_ENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.78.0.i.i = phi i64 [ %i.v, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i = phi ptr [ %.sroa.06.0.ph.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.7, %.new ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i, i64 360
  %i.am = icmp samesign ult i64 %.sroa.10.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.10.0.ph.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.0.ph.i.i, i64 %.sroa.10.0.ph.i.i
  store ptr %.sroa.07.0.i.i, ptr %i.e, align 8, !alias.scope !868
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !868
  store i64 %.sroa.78.0.i.i, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !868
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterhmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8
  %i.e = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmuthmE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.k, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.3.0 = phi ptr [ %i.ao, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.am, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit ], [ null, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %.sroa.07.0.copyload.i = load ptr, ptr %i.e, align 8, !alias.scope !886, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.48.0.copyload.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !886 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !886 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 54
  %i.i = load i16, ptr %i.h, align 2, !noalias !887, !noundef !3
  %i.j = zext i16 %i.i to i64
  %i.k = icmp ult i64 %.sroa.59.0.copyload.i, %i.j
  br i1 %i.k, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.0.022.i.i.i = phi ptr [ %i.l, %bb.e ], [ %.sroa.07.0.copyload.i, %bb.d ] ; 2 uses
  %.sroa.5.021.i.i.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.48.0.copyload.i, %bb.d ]
  %i.l = load ptr, ptr %.sroa.0.022.i.i.i, align 8, !noalias !888, !noundef !3 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %i.m = zext i16 %i.p to i64
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = add i64 %.sroa.5.021.i.i.i, 1            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 52
  %i.p = load i16, ptr %i.o, align 4, !noalias !888 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 54
  %i.r = load i16, ptr %i.q, align 2, !noalias !887, !noundef !3
  %i.s = icmp ult i16 %i.p, %i.r
  br i1 %i.s, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #19
          to label %.noexc.i unwind label %bb.j, !noalias !886

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.sroa.10.0.ph.i.i = phi i64 [ %i.m, %._crit_edge.loopexit.i.i.i ], [ %.sroa.59.0.copyload.i, %bb.d ] ; 6 uses
  %.sroa.7.0.ph.i.i = phi i64 [ %i.n, %._crit_edge.loopexit.i.i.i ], [ %.sroa.48.0.copyload.i, %bb.d ] ; 5 uses
  %.sroa.06.0.ph.i.i = phi ptr [ %i.l, %._crit_edge.loopexit.i.i.i ], [ %.sroa.07.0.copyload.i, %bb.d ] ; 4 uses
  %i.t = icmp eq i64 %.sroa.7.0.ph.i.i, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i64 %.sroa.10.0.ph.i.i, 1
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit

bb.i:                                             ; preds = %bb.g
  %i.v = icmp samesign ult i64 %.sroa.10.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr i8, ptr %.sroa.06.0.ph.i.i, i64 80
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.10.0.ph.i.i ; 2 uses
  %xtraiter = and i64 %.sroa.7.0.ph.i.i, 7        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.prol = phi ptr [ %i.y, %.prol.preheader ], [ %i.x, %bb.i ]
  %.sroa.019.0.in.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i, %bb.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.prol, align 8, !noalias !889, !nonnull !3, !noundef !3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.prol, i64 72 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !885

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.unr = phi ptr [ %i.x, %bb.i ], [ %i.y, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.prol, %.prol.preheader ]
  %i.z = icmp ult i64 %.sroa.7.0.ph.i.i, 8
  br i1 %i.z, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i = phi ptr [ %i.ai, %.new ], [ %.sroa.017.0.in.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i, align 8, !noalias !889, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i, i64 72
  %.sroa.017.0.i.i.i.1 = load ptr, ptr %i.aa, align 8, !noalias !889, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.1, i64 72
  %.sroa.017.0.i.i.i.2 = load ptr, ptr %i.ab, align 8, !noalias !889, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.2, i64 72
  %.sroa.017.0.i.i.i.3 = load ptr, ptr %i.ac, align 8, !noalias !889, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.3, i64 72
  %.sroa.017.0.i.i.i.4 = load ptr, ptr %i.ad, align 8, !noalias !889, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.4, i64 72
  %.sroa.017.0.i.i.i.5 = load ptr, ptr %i.ae, align 8, !noalias !889, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.5, i64 72
  %.sroa.017.0.i.i.i.6 = load ptr, ptr %i.af, align 8, !noalias !889, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.6, i64 72
  %.sroa.019.0.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.7 = load ptr, ptr %i.ag, align 8, !noalias !889, !nonnull !3, !noundef !3 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.019.0.i.i.i.7, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.7, i64 72
  br i1 %i.ah, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit, label %.new

bb.j:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker5ImmuthmNtB1w_4LeafENtB1w_4EdgeETRhRmENCNvMsk_NtB4_8navigateBW_14next_unchecked0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.78.0.i.i = phi i64 [ %i.u, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i = phi ptr [ %.sroa.06.0.ph.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.7, %.new ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i, i64 56
  %i.al = icmp samesign ult i64 %.sroa.10.0.ph.i.i, 11
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.10.0.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i, i64 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.10.0.ph.i.i
  store ptr %.sroa.07.0.i.i, ptr %i.e, align 8, !alias.scope !886
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !886
  store i64 %.sroa.78.0.i.i, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !886
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10dying_nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(72) %0)
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs2JiOgHzbbc7_10tokenizers.exit
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.m, %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs2JiOgHzbbc7_10tokenizers.exit ] ; 2 uses
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.42.0.copyload ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.42.0.copyload ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.c, !inline_history !890

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.d, !inline_history !890

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !inline_history !890
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.e, !inline_history !890

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body unwind label %bb.f, !inline_history !891

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g, !inline_history !890

bb.f:                                             ; preds = %.body.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !inline_history !890
  unreachable

._crit_edge:                                      ; preds = %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBQ_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtNtBQ_5alloc6GlobalEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(8) %i.a) #20
          to label %bb.i unwind label %bb.h

_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10dying_nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(72) %0)
  %i.m = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences0_1__NtB2Z_11SequenceDef11deserialize9___VisitorEB33_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolNtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodehmEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodehmEE13new_uninit_inCs2JiOgHzbbc7_10tokenizers() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10take_frontCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyinghmE10take_frontCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyinghmE10init_frontCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_3
